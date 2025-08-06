unit FrmPajak;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  StdCtrls, ExtCtrls, Menus, 
  dxGridMenus, frxClass, frxDBSet, PBNumEdit, Buttons, dxDBTLCl, dxGrClms,ShellApi;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrPajak = class(TForm)
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
    ToolButton7: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    SaveDialog: TSaveDialog;
    sp_cekStockAwal: TADOStoredProc;
    MultiSelect1: TMenuItem;
    ToolButton11: TToolButton;
    sp_barang: TADOStoredProc;
    dxDBGrid1: TdxDBGrid;
    PopupMenu2: TPopupMenu;
    Semua: TMenuItem;
    Aktif: TMenuItem;
    TidakAktif: TMenuItem;
    ToolButton8: TToolButton;
    QuViewBulan: TIntegerField;
    QuViewTahun: TIntegerField;
    QuViewPPn: TIntegerField;
    QuViewService: TIntegerField;
    dxDBGrid1Bulan: TdxDBGridMaskColumn;
    dxDBGrid1Tahun: TdxDBGridMaskColumn;
    dxDBGrid1PPn: TdxDBGridMaskColumn;
    dxDBGrid1Service: TdxDBGridMaskColumn;
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

  private
    { Private declarations }
  public
    { Public declarations }
    mPosisi : string;
    mHari : Integer;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel : Boolean;
    CountSelected : integer;
    ISTampil : byte;
    Procedure Tampildata;
    Procedure AmbilDataFor;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;
var
  FrPajak: TFrPajak;
  S: array[0..255] of char;
  BM: TBookmark;

implementation
uses myModul,Myprocedure,MyGlobal, FrmSubPajak;
{$R *.dfm}

Procedure TFrPajak.AmbilDataFor;
begin
end;

Procedure TFrPajak.Tampildata;
begin
  with QuView do
  begin
    close;
    Prepared;
    Open;
  end;
end;

procedure TFrPajak.AmbilData;
begin
   with FrSubPajak do
   begin
     Bulan.Value := QuViewBulan.AsInteger;
     Tahun.Value := QuViewTahun.AsInteger;
     PPn.Value   := QuViewPPn.AsInteger;
     Service.Value := QuViewService.AsInteger;
   end;
end;

procedure TFrPajak.SimpanData(Mode:Char);
begin
   With Sp_Barang, FrSubPajak do
   begin
     BM:=QuView.GetBookmark;
     Prepared;
     Parameters[1].Value:=Mode;
     if mode<>'D' then // Update & Insert
     begin
        Parameters[2].Value:=Bulan.Value;
        Parameters[3].Value:=Tahun.Value;
        Parameters[4].Value:=PPn.Value;
        Parameters[5].Value:=Service.Value;
     end
     else
     begin
        Parameters[2].Value:=QuViewBulan.AsInteger;
        Parameters[3].Value:=QuViewTahun.AsInteger;
     end;

     try
      execproc;
      if Mode='I' then
      begin
        QuView.Requery;
//        QuView.Locate('Hari',mHari,[LOP,LOC]);
{        LoggingData('Diakon Harian',
                    'User '+IDUser+' Input Barang : '+
                    'Nama : ');}
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
{        LoggingData('Diskon Harian',
                    'User '+IDUser+' Koreksi Diskon Harian : '+
                    'Nama : '+NamaBrg.Text,Dm.Qucari);}
      end
      Else if Mode='D' then
      begin
{
        LoggingData('Master Barang',
                    'User '+IDUser+' Hapus Barang : '+QuView.FieldbyName('Kodebrg').asstring+#13+
                    'Nama : '+QuView.FieldbyName('Namabrg').asstring,Dm.Qucari);
}
        QuView.Requery;
      end;
    except
      If (Mode='I') Or (Mode='U') then
         showmessage('Proses Gagal !, Data Sudah Ada')
      else If (Mode='D') then
         showmessage('Proses Gagal !, Barang berkaitan dengan transaksi');
    end;
   end;
end;

procedure TFrPajak.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrPajak.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
    begin
        Action:=caFree;

    end
    else
        Action:=caNone;
end;

procedure TFrPajak.FormDestroy(Sender: TObject);
begin
 FrPajak:=nil;
end;

procedure TFrPajak.FormShow(Sender: TObject);
begin
  Tampildata;
  activeControl:=dxDBGrid1;
end;

procedure TFrPajak.ToolButton10Click(Sender: TObject);
begin
  Tampildata;
end;

procedure TFrPajak.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrPajak.ExportExcel1Click(Sender: TObject);
begin
  if (IsExcel) then
  begin
      Save('xls', 'Microsoft Excel (*.xls)|*.xls', FrPajak.Caption, dxDBGrid1.SaveToXLS);
      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
//      LoggingData(Caption,'User '+IdUser+' Export Data '+ SaveDialog.FileName,dm.qucari); 
  end else
  begin
      ShowMessage('Anda tidak berhak Mengeksport Excel');
  end;


end;

procedure TFrPajak.AutoFilter1Click(Sender: TObject);
begin
    if dxDBGrid1.Filter.Active=false then
    dxDBGrid1.Filter.Active:=true
    else
    dxDBGrid1.Filter.Active:=false;

end;

procedure TFrPajak.ShowGrid1Click(Sender: TObject);
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

procedure TFrPajak.ShowHeader1Click(Sender: TObject);
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

procedure TFrPajak.Show1Click(Sender: TObject);
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

procedure TFrPajak.ToolButton1Click(Sender: TObject);
begin
  if IsTambah then
  begin
    Application.CreateForm(TFrSubPajak, FrSubPajak);
    FrSubPajak.IsSimpan:=True;
    FrSubPajak.ShowModal;
    end
  else
  begin
      ShowMessage('Anda tidak berhak Menambah Data');
  end;

end;

procedure TFrPajak.FormKeyDown(Sender: TObject; var Key: Word;
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
//       ToolButton1.Click;
   end
   else if key=VK_Delete then
   begin
  //      ToolButton3.Click;
   end;
end;

procedure TFrPajak.ToolButton2Click(Sender: TObject);
begin
  if IsKoreksi then
  begin
    Application.CreateForm(TFrSubPajak,FrSubPajak);
    AmbilData;
    frSubPajak.Bulan.Enabled := False;
    frSubPajak.Tahun.Enabled := False;
    FrSubPajak.ShowModal;
  end
  else
  begin
     ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
  end;
end;

procedure TFrPajak.ToolButton3Click(Sender: TObject);
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
          StrPCopy(S,Format('Anda yakin Bulan %s dan Tahun %s dihapus ?',
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
  ActiveControl := dxDBGrid1;
end;

procedure TFrPajak.MultiSelect1Click(Sender: TObject);
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

procedure TFrPajak.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);

end;

procedure TFrPajak.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;
begin
  if ANode.HasChildren then
  Exit;

  if not AFocused then
  begin
    if ANode.Index mod 2 =0 then
       AColor:=$00ffefe1
    else
       AColor:=$00efd7c9;
       AFont.Color:=clBlack;
  end;

{  Value := ANode.Values[dxDBGrid1.ColumnByFieldName('aktif').Index];
  if Value=0 then
  begin
     AFont.Color:=clRed;
  end;}
end;

procedure TFrPajak.dxDBGrid1CustomDrawFooter(Sender: TObject;
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
