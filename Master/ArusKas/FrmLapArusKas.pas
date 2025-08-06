unit FrmLapArusKas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  StdCtrls, ExtCtrls, Menus, dxGridMenus,ShellApi;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrLapArusKas = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    QuView: TADOQuery;
    DsView: TDataSource;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    PopupMenu1: TPopupMenu;
    ExportExcel1: TMenuItem;
    N1: TMenuItem;
    ShowGrid1: TMenuItem;
    ShowHeader1: TMenuItem;
    Show1: TMenuItem;
    N2: TMenuItem;
    AutoFilter1: TMenuItem;
    ToolButton4: TToolButton;
    ToolButton7: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    SaveDialog: TSaveDialog;
    dxDBGrid1: TdxDBGrid;
    MultiSelect1: TMenuItem;
    Sp_Group: TADOStoredProc;
    ToolButton8: TToolButton;
    PopupMenu2: TPopupMenu;
    ViewSubGroup1: TMenuItem;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    QuViewNomor: TStringField;
    QuViewUrutan: TStringField;
    QuViewKeterangan: TStringField;
    QuViewNamaAkt: TStringField;
    QuViewTipe: TSmallintField;
    QuViewKodeAK: TStringField;
    QuViewKodeSAK: TStringField;
    dxDBGrid1Nomor: TdxDBGridMaskColumn;
    dxDBGrid1Urutan: TdxDBGridMaskColumn;
    dxDBGrid1Keterangan: TdxDBGridMaskColumn;
    dxDBGrid1NamaAkt: TdxDBGridMaskColumn;
    dxDBGrid1KodeAK: TdxDBGridMaskColumn;
    dxDBGrid1KodeSAK: TdxDBGridMaskColumn;
    QuViewNamaAK: TStringField;
    QuViewNamaSubAK: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ExportExcel1Click(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure AutoFilter1Click(Sender: TObject);
    procedure ShowGrid1Click(Sender: TObject);
    procedure ShowHeader1Click(Sender: TObject);
    procedure Show1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure SimpanData(Mode:Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton2Click(Sender: TObject);
    procedure AmbilData;
    procedure ToolButton3Click(Sender: TObject);
    procedure MultiSelect1Click(Sender: TObject);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBGrid1CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
    procedure ToolButton12Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    mPosisi : string;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel : Boolean;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrLapArusKas: TFrLapArusKas;
  S: array[0..255] of char;
  BM: TBookmark;

implementation
uses myModul,Myprocedure,MyGlobal, FrmSubPemakai,FrmMenu, FrmSubGroup,
  FrmSubGroup_, FrmSubArusKas, FrmSubArusKas_, FrmSubLapArusKas;
{$R *.dfm}

procedure TFrLapArusKas.AmbilData;
begin
  with FrSubLapArusKas do
  begin
    KodeGrp.Text:=QuViewNomor.AsString;
    NamaGrp.Text:=QuViewUrutan.AsString;
    Keterangan.Text:=QuViewKeterangan.AsString;
    Tipe.ItemIndex:=QuViewTipe.AsInteger;
    Aktivitas.Text:=QuViewKodeAK.AsString;
    if DataBersyarat('select kodeak,namaak from dbaruskas where kodeak=:0',[aktivitas.text],DM.Qucari) then
    begin
      LAktivitas.Caption := '[ '+DM.QuCari.FieldByname('Namaak').AsString+' ]';
    end;
    SubAktivitas.Text:=QuViewKodeSAK.AsString;
    if DataBersyarat('select kodesubak,namasubak from dbaruskasdet where kodesubak=:0',[subaktivitas.text],DM.Qucari) then
    begin
      LSubaktivitas.Caption := '[ '+DM.QuCari.FieldByname('Namasubak').AsString+' ]';
    end;
  end;
end;

procedure TFrLapArusKas.SimpanData(Mode:Char);
begin
  Sp_Group.Close;
  Sp_Group.ProcedureName :='sp_MasterLapArusKas;1';
  With Sp_Group do
  begin
    BM:=QuView.GetBookmark;
    close;
    Prepared;
    Parameters.Refresh;
    Parameters[1].Value := Mode;
    if Mode='D' then
    begin
       Parameters[2].Value := QuViewNomor.asstring;
    end
    else
    begin
      Parameters[2].Value := FrSubLapArusKas.KodeGrp.Text;
      Parameters[3].Value := FrSubLapArusKas.NamaGrp.Text;
      Parameters[4].Value := FrSubLapArusKas.Keterangan.Text;
      Parameters[5].Value := FrSubLapArusKas.Tipe.ItemIndex;
      Parameters[6].Value := FrSubLapArusKas.Aktivitas.Text;
      Parameters[7].Value := FrSubLapArusKas.SubAktivitas.Text;
    end;
      try
      execproc;
      if Mode='I' then
      begin
        QuView.Requery;
        QuView.Locate('Nomor',FrSubLapArusKas.KodeGrp.Text,[LOP,LOC]);
        LoggingData(IDUser,Mode,'GRP','','Nomor = '+FrSubLapArusKas.KodeGrp.Text+
                    ' , urutan = '+FrSubLapArusKas.NamaGrp.Text);
      end else if Mode='U' then
      begin
        QuView.Requery;
        if QuView.BookmarkValid(BM) then
        begin
          try
             QuView.GotoBookmark(BM);
          finally
             QuView.FreeBookmark(BM);
          end
        end else
        begin
          QuView.FreeBookmark(BM);
          QuView.Last;
        end;
        LoggingData(IDUser,Mode,'GRP','','Nomor = '+FrSubLapArusKas.KodeGrp.Text+
                    ' , Urutan = '+FrSubLapArusKas.NamaGrp.Text);
      end
      Else if Mode='D' then
      begin
        LoggingData(IDUser,Mode,'GRP','','Kode Arus Kas = '+QuViewnomor.AsString+
                    ' , Nama Arus = '+QuViewurutan.AsString);
        QuView.Requery;
      end;
    except
      If (Mode='I') Or (Mode='U') then
         showmessage('Proses Gagal !, Data Sudah Ada')
      else If (Mode='D') then
         showmessage('Proses Gagal !, Gudang berkaitan dengan transaksi');
    end;
  end;
end;

procedure TFrLapArusKas.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do
  begin
    DefaultExt := ADefaultExt;
    Filter := AFilter;
    FileName := AFileName;
    if Execute then
      AMethod(FileName, true);
  end;
end;


procedure TFrLapArusKas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
       MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
  begin
    Action:=caFree;
  end
  else
    Action:=caNone;
end;

procedure TFrLapArusKas.FormDestroy(Sender: TObject);
begin
  FrLapArusKas:=nil;
end;

procedure TFrLapArusKas.FormShow(Sender: TObject);
begin
   with QuView do
   begin
      close;
       Open;
   end;

end;

procedure TFrLapArusKas.ToolButton10Click(Sender: TObject);
begin
   with QuView do
   begin
      close;
       Open;
   end;
end;

procedure TFrLapArusKas.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrLapArusKas.ExportExcel1Click(Sender: TObject);
begin
{
 if (IsExcel) then
  begin
      Save('xls', 'Microsoft Excel (*.xls)|*.xls', FrGroup.Caption, dxDBGrid1.SaveToXLS);
      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
      LoggingData(Caption,'User '+IdUser+' Export Data '+ SaveDialog.FileName,dm.qucari);
  end else
  begin
      ShowMessage('Anda tidak berhak Mengeksport Excel');
  end;
}
end;

procedure TFrLapArusKas.AutoFilter1Click(Sender: TObject);
begin
    if dxDBGrid1.Filter.Active=false then
    dxDBGrid1.Filter.Active:=true
    else
    dxDBGrid1.Filter.Active:=false;

end;

procedure TFrLapArusKas.ShowGrid1Click(Sender: TObject);
begin
   if ShowGrid1.Checked then
   begin
      dxDBGrid1.ShowGrid:=false;
      ShowGrid1.Checked:=false;
   end else
   begin
      dxDBGrid1.ShowGrid:=true;
      ShowGrid1.Checked:=true;
   end;
end;

procedure TFrLapArusKas.ShowHeader1Click(Sender: TObject);
begin
   if ShowHeader1.Checked then
   begin
      dxDBGrid1.ShowHeader:=false;
      ShowHeader1.Checked:=false;
   end else
   begin
      dxDBGrid1.ShowHeader:=true;
      ShowHeader1.Checked:=true;
   end;

end;

procedure TFrLapArusKas.Show1Click(Sender: TObject);
begin
   if Show1.Checked then
   begin
      dxDBGrid1.ShowSummaryFooter := false;
      Show1.Checked:=false;
   end else
   begin
      dxDBGrid1.ShowSummaryFooter := true;
      Show1.Checked:=true;
   end;

end;

procedure TFrLapArusKas.ToolButton1Click(Sender: TObject);
begin
  if IsTambah then
  begin
    Application.CreateForm(TFrSubLapArusKas, FrSubLapArusKas);
    FrSubLapArusKas.IsSimpan:=True;
    FrSubLapArusKas.ShowModal;
  end else
  begin
      ShowMessage('Anda tidak berhak Menambah Data');
  end;
 
end;

procedure TFrLapArusKas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_ESCAPE then
   begin
      Close;
   end else
   if Key=VK_RETURN then
   begin
       ToolButton2.Click;
   end
   else if key=VK_INSERT then
   begin
       ToolButton1.Click;
   end
   else if key=VK_Delete then
   begin
        ToolButton3.Click;
   end;
end;

procedure TFrLapArusKas.ToolButton2Click(Sender: TObject);
begin
  if IsKoreksi then
  begin
    Application.CreateForm(TFrSubLapArusKas, FrSubLapArusKas);
    FrSubLapArusKas.IsSimpan:=false;
    AmbilData;
    FrSubLapArusKas.ShowModal;
    if FrSubLapArusKas.ModalResult=mrOK then
    begin
    end;
    ActiveControl:=dxDBGrid1;
  end else
  begin
     ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
  end;

end;

procedure TFrLapArusKas.ToolButton3Click(Sender: TObject);
begin
  if IsHapus then
  begin
   if Quview.IsEmpty=true then
   begin
      Application.MessageBox('Tabel Kosong','Informasi'
      ,MB_OK Or MB_ICONWARNING);
   end
   else
   begin
      StrPCopy(S,Format('Anda yakin Nomor %s dan Urutan %s dihapus ?',
           [QuViewNomor.AsString, QuViewUrutan.AsString]));
      if (Application.MessageBox(S,'Peringatan',
          MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
      begin
        SimpanData('D');
      end;
   end;
  end else
  begin
     ShowMessage('Anda Tidak Berhak Menghapus Data');
  end;
end;

procedure TFrLapArusKas.MultiSelect1Click(Sender: TObject);
begin
   if MultiSelect1.Checked then
   begin
      dxDBGrid1.OptionsBehavior:=[edgoAutoSearch,edgoAutoSort,edgoDragScroll,edgoEnterShowEditor,edgoTabThrough,edgoVertThrough];
      MultiSelect1.Checked:=false;
   end else
   begin
      dxDBGrid1.OptionsBehavior:=[edgoAutoSearch,edgoAutoSort,edgoDragScroll,edgoEnterShowEditor,edgoMultiSelect,edgoTabThrough,edgoVertThrough];
      MultiSelect1.Checked:=true;
   end;
end;

procedure TFrLapArusKas.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

procedure TFrLapArusKas.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
    if ANode.HasChildren then
    Exit;

    if not AFocused then
    begin
      if ANode.Index mod 2 =0 then
         AColor:=$00ffefe1
      else
         AColor:=$00efd7c9;

    end;
end;

procedure TFrLapArusKas.dxDBGrid1CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
    if AColumn = dxDBGrid1.Columns[0] then
  begin
    AColor := $00ffefe1;
    AFont.Color:=clblack;
    AFont.Style := AFont.Style + [fsBold];
  end;
end;

procedure TFrLapArusKas.ToolButton12Click(Sender: TObject);
begin
 { if not QuView.IsEmpty then
  begin
    Application.CreateForm(TFrSubArusKas_, FrSubArusKas_);
    FrSubArusKas_.SubGroup_KodeGrp:=QuViewKODEGRP.AsString;
    FrSubArusKas_.LblKode.Caption:=QuViewKODEGRP.AsString;
    FrSubArusKas_.LblNama.Caption:=QuViewNAMA.AsString;
    FrSubArusKas_.ShowModal;
  end else
  begin
    MessageDlg('Data kosong !!!', mtError, [mbOK], 0);
    if dxDBGrid1.CanFocus then
       dxDBGrid1.SetFocus;
  end;   }
end;

end.
