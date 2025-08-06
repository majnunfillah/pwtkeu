unit FrmMesin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  StdCtrls, ExtCtrls, Menus, dxGridMenus,ShellApi;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrMesin = class(TForm)
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
    Sp_Merk: TADOStoredProc;
    ToolButton8: TToolButton;
    dxDBGrid1KodeMesin: TdxDBGridMaskColumn;
    dxDBGrid1NamaMesin: TdxDBGridMaskColumn;
    QuViewKodeMsn: TStringField;
    QuViewKet: TStringField;
    QuViewKodePrs: TStringField;
    QuViewKapasitas: TBCDField;
    QuViewKetProses: TStringField;
    dxDBGrid1Column3: TdxDBGridColumn;
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
    procedure ppReport1PreviewFormCreate(Sender: TObject);
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

  private
    { Private declarations }
  public
    { Public declarations }
    mPosisi,KeyCOde : string;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel : boolean;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrMesin: TFrMesin;
  S: array[0..255] of char;
  BM: TBookmark;

implementation
uses myModul,Myprocedure,MyGlobal,FrmMenu, FrmSubMesin ;
{$R *.dfm}

procedure TFrMesin.AmbilData;
begin
   with FrSubMesin do
   begin
      KodeMsn.Text:=QuViewKodeMsn.AsString;
      Ket.Text:=QuViewKet.AsString;
      KodePRs.Text:=QuViewKodePrs.AsString;
      Kapasitas.Value:=QuViewKapasitas.AsFloat;
      NmProses.Caption:=QuViewKetProses.AsString;
   end;
end;

procedure TFrMesin.SimpanData(Mode:Char);
begin
  With Sp_Merk do
  begin
    BM:=QuView.GetBookmark;
    Prepared;
    Parameters.Refresh;
    Parameters[1].Value := Mode;
    if Mode='D' then
       Parameters[2].Value := QuView.FieldbyName('KodeMsn').asstring
    else

    begin
      Parameters[2].Value := FrSubMesin.KodeMsn.Text;
      Parameters[3].Value := FrSubMesin.Ket.Text;
      Parameters[4].Value := FrSubMesin.KodePRs.Text;
      Parameters[5].Value := FrSubMesin.Kapasitas.Value;
    end;
    try
      execproc;
      if Mode='I' then
      begin
        QuView.Requery;
        QuView.Locate('KodeMsn',FrSubMesin.KodeMsn.Text,[LOP,LOC]);
        LoggingData(IDUser,Mode,'Mesin','','Kode Mesin = '+FrSubMesin.KodeMsn.Text+
                    ' , Nama Mesin = '+FrSubMesin.Ket.Text);
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
        LoggingData(IDUser,Mode,'Mesin','','Kode Mesin = '+FrSubMesin.KodeMsn.Text+
                    ' , Nama Mesin = '+FrSubMesin.Ket.Text);
      end
      Else if Mode='D' then
      begin
        LoggingData(IDUser,Mode,'Mesin','','Kode Mesin = '+KeyCOde+
                    ' , Nama Mesin = '+QuViewKodeMsn.AsString);
        QuView.Requery;
      end;
    except
      If (Mode='I') Or (Mode='U') then
         showmessage('Proses Gagal !, Data Sudah Ada')
      else If (Mode='D') then
         showmessage('Proses Gagal !, Bagian berkaitan dengan transaksi');
    end;
  end;
end;

procedure TFrMesin.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrMesin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
    begin
        Action:=caFree;
    end
    else
        Action:=caNone;
end;

procedure TFrMesin.FormDestroy(Sender: TObject);
begin
  FrMesin:=nil;
end;

procedure TFrMesin.FormShow(Sender: TObject);
begin
 with QuView do
 begin
  close;
  open;
 end;
end;

procedure TFrMesin.ToolButton10Click(Sender: TObject);
begin
 QuView.Requery;
end;

procedure TFrMesin.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrMesin.ExportExcel1Click(Sender: TObject);
begin
  if (IsExcel) then
  begin
      Save('xls', 'Microsoft Excel (*.xls)|*.xls', FrMesin.Caption, dxDBGrid1.SaveToXLS);
      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
      //LoggingData(Caption,'User '+IdUser+' Export Data '+ SaveDialog.FileName,dm.qucari);
  end else
  begin
      ShowMessage('Anda tidak berhak Mengekspor Excel');
  end;

end;

procedure TFrMesin.AutoFilter1Click(Sender: TObject);
begin
    if dxDBGrid1.Filter.Active=false then
    dxDBGrid1.Filter.Active:=true
    else
    dxDBGrid1.Filter.Active:=false;

end;

procedure TFrMesin.ShowGrid1Click(Sender: TObject);
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

procedure TFrMesin.ShowHeader1Click(Sender: TObject);
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

procedure TFrMesin.Show1Click(Sender: TObject);
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

procedure TFrMesin.ToolButton1Click(Sender: TObject);
begin
  if IsTambah then
  begin
    Application.CreateForm(TFrSubMesin, FrSubMesin);
    FrSubMesin.IsSimpan:=True;
    FrSubMesin.ShowModal;
  end
  else
  begin
      ShowMessage('Anda tidak berhak Menambah Data');
  end;

end;

procedure TFrMesin.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrMesin.ToolButton2Click(Sender: TObject);
begin
  if IsKoreksi then
  begin
    Application.CreateForm(TFrSubMesin, FrSubMesin);
    FrSubMesin.IsSimpan:=false;
    AmbilData;
    FrSubMesin.ShowModal;
    if FrSubMesin.ModalResult=mrOK then
    begin
      With QuView do
      begin
        Locate('KodeMsn',mPosisi,[LOC, LOP]);
      end;
    end;
    ActiveControl:=dxDBGrid1;
  end else
  begin
     ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
  end;

end;

procedure TFrMesin.ToolButton3Click(Sender: TObject);
begin
  KeyCode:=QuViewKodeMsn.AsString;
  if IsHapus then
  begin
   if Quview.IsEmpty=true then
   begin
      Application.MessageBox('Tabel Kosong','Informasi'
      ,MB_OK Or MB_ICONWARNING);
   end
   else
   begin
      StrPCopy(S,Format('Anda yakin Kode %s dan Nama %s dihapus ?',
           [QuView.Fields[0].asstring,
            QuView.Fields[1].asstring]));
      if (Application.MessageBox(S,'Peringatan',
          MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
      begin
           SimpanData('D');
      end;
   end;
  end else
  begin
     ShowMessage('Anda Tidak Berhak Menghapus Data');
  end;
end;

procedure TFrMesin.MultiSelect1Click(Sender: TObject);
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

procedure TFrMesin.ppReport1PreviewFormCreate(Sender: TObject);
begin
//  TppReport(Sender).PreviewForm.WindowState:=wsMaximized;
//  TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zs100Percent;

end;

procedure TFrMesin.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

procedure TFrMesin.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrMesin.dxDBGrid1CustomDrawFooter(Sender: TObject;
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

end.
