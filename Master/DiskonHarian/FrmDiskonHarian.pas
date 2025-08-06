unit FrmDiskonHarian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  StdCtrls, ExtCtrls, Menus, 
  dxGridMenus, frxClass, frxDBSet, PBNumEdit, Buttons, dxDBTLCl, dxGrClms,ShellApi;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrDiskonHarian = class(TForm)
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
    QuViewHari: TIntegerField;
    QuViewDiskon: TBCDField;
    QuViewAktif: TBooleanField;
    QuViewNamaHari: TStringField;
    dxDBGrid1Diskon: TdxDBGridMaskColumn;
    dxDBGrid1Aktif: TdxDBGridCheckColumn;
    dxDBGrid1NamaHari: TdxDBGridMaskColumn;
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
  FrDiskonHarian: TFrDiskonHarian;
  S: array[0..255] of char;
  BM: TBookmark;

implementation
uses myModul,Myprocedure,MyGlobal, FrmSubDiskonHarian;
{$R *.dfm}

Procedure TFrDiskonHarian.AmbilDataFor;
begin
end;

Procedure TFrDiskonHarian.Tampildata;
begin
  with QuView do
  begin
    close;
    Prepared;
    Open;
  end;
end;

procedure TFrDiskonHarian.AmbilData;
begin
   with FrSubDiskonHarian do
   begin
     mHari:=QuView.fieldbyname('Hari').AsInteger;
     Diskon.Value:=QuView.fieldbyname('Diskon').AsFloat;
     Label11.Caption:='Diskon hari '+ QuView.fieldbyname('NamaHari').AsString;

     if QuView.fieldbyname('Aktif').AsBoolean=True then
        Aktif.ItemIndex:=1 else Aktif.ItemIndex:=0;
   end;
end;

procedure TFrDiskonHarian.SimpanData(Mode:Char);
begin
   With Sp_Barang, FrSubDiskonHarian do
   begin
     BM:=QuView.GetBookmark;
     Prepared;
     Parameters[1].Value:=Mode;
     if mode<>'D' then // Update & Insert
     begin
        Parameters[2].Value:=mHari;
        Parameters[3].Value:=Diskon.Value;
        Parameters[4].Value:=Aktif.ItemIndex;
        Parameters[5].Value:=QuView.Fieldbyname('Hari').AsInteger;
     end
     else
     begin
        Parameters[5].Value:=QuView.fieldbyname('Hari').AsInteger;
     end;

     try
      execproc;
      if Mode='I' then
      begin
        QuView.Requery;
        QuView.Locate('Hari',mHari,[LOP,LOC]);
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

procedure TFrDiskonHarian.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrDiskonHarian.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
    begin
        Action:=caFree;

    end
    else
        Action:=caNone;
end;

procedure TFrDiskonHarian.FormDestroy(Sender: TObject);
begin
 FrDiskonHarian:=nil;
end;

procedure TFrDiskonHarian.FormShow(Sender: TObject);
begin
  Tampildata;
  activeControl:=dxDBGrid1;
end;

procedure TFrDiskonHarian.ToolButton10Click(Sender: TObject);
begin
  Tampildata;
end;

procedure TFrDiskonHarian.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrDiskonHarian.ExportExcel1Click(Sender: TObject);
begin
  if (IsExcel) then
  begin
      Save('xls', 'Microsoft Excel (*.xls)|*.xls', FrDiskonHarian.Caption, dxDBGrid1.SaveToXLS);
      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
//      LoggingData(Caption,'User '+IdUser+' Export Data '+ SaveDialog.FileName,dm.qucari); 
  end else
  begin
      ShowMessage('Anda tidak berhak Mengeksport Excel');
  end;


end;

procedure TFrDiskonHarian.AutoFilter1Click(Sender: TObject);
begin
    if dxDBGrid1.Filter.Active=false then
    dxDBGrid1.Filter.Active:=true
    else
    dxDBGrid1.Filter.Active:=false;

end;

procedure TFrDiskonHarian.ShowGrid1Click(Sender: TObject);
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

procedure TFrDiskonHarian.ShowHeader1Click(Sender: TObject);
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

procedure TFrDiskonHarian.Show1Click(Sender: TObject);
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

procedure TFrDiskonHarian.ToolButton1Click(Sender: TObject);
begin
  if IsTambah then
  begin
    Application.CreateForm(TFrSubDiskonHarian, FrSubDiskonHarian);
    FrSubDiskonHarian.IsSimpan:=True;
    FrSubDiskonHarian.ShowModal;
    end
  else
  begin
      ShowMessage('Anda tidak berhak Menambah Data');
  end;

end;

procedure TFrDiskonHarian.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrDiskonHarian.ToolButton2Click(Sender: TObject);
begin
  if IsKoreksi then
  begin
    Application.CreateForm(TFrSubDiskonHarian,FrSubDiskonHarian);
    AmbilData;
    FrSubDiskonHarian.ShowModal;
  end
  else
  begin
     ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
  end;
end;

procedure TFrDiskonHarian.ToolButton3Click(Sender: TObject);
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
  ActiveControl := dxDBGrid1;
end;

procedure TFrDiskonHarian.MultiSelect1Click(Sender: TObject);
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

procedure TFrDiskonHarian.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);

end;

procedure TFrDiskonHarian.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrDiskonHarian.dxDBGrid1CustomDrawFooter(Sender: TObject;
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
