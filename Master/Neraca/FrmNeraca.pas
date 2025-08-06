unit FrmNeraca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  ImgList, StdCtrls, ExtCtrls, Menus, ppBands, ppVar, ppCtrls, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,ppviewr,
  dxGridMenus,Shellapi;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrNeraca = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    QuPerkiraan: TADOQuery;
    DsQuPerkiraan: TDataSource;
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
    ImageList2: TImageList;
    ToolButton10: TToolButton;
    SaveDialog: TSaveDialog;
    dxDBGrid1: TdxDBGrid;
    MultiSelect1: TMenuItem;
    Sp_Perkiraan: TADOStoredProc;
    ToolButton8: TToolButton;
    Sp_Update: TADOStoredProc;
    QuPerkiraanPerkiraan: TStringField;
    QuPerkiraanKeterangan: TStringField;
    QuPerkiraanKelompok: TIntegerField;
    QuPerkiraanTipe: TIntegerField;
    QuPerkiraanValas: TStringField;
    QuPerkiraanDK: TIntegerField;
    QuPerkiraanNeraca: TStringField;
    QuPerkiraanFlagCashFlow: TStringField;
    QuPerkiraanSimbol: TStringField;
    QuPerkiraanmKelompok: TStringField;
    QuPerkiraanmTipe: TStringField;
    QuPerkiraanmDK: TStringField;
    dxDBGrid1Perkiraan: TdxDBGridMaskColumn;
    dxDBGrid1Keterangan: TdxDBGridMaskColumn;
    dxDBGrid1mKelompok: TdxDBGridMaskColumn;
    dxDBGrid1mTipe: TdxDBGridMaskColumn;
    Sp_InsertIntoNeraca: TADOStoredProc;
    dxDBGrid1Neraca: TdxDBGridColumn;
    QuPerkiraanIsPPN: TBooleanField;
    QuPerkiraanLokasi: TWordField;
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
    procedure UpdateDataPerkiraan(Mode:Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton2Click(Sender: TObject);
    procedure AmbilData;
    procedure ToolButton3Click(Sender: TObject);
    procedure MultiSelect1Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxDBGrid1CustomDrawFooterNode(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; AFooterIndex: Integer; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);


  private
    { Private declarations }
    BM : TBookMark;
  public
    { Public declarations }
    mPosisi : string;
    IsSimpan:Boolean;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel : Boolean;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrNeraca: TFrNeraca;
  S: array[0..255] of char;
  tampil,tambah,koreksi,hapus,cetak,excel : integer;
  nama : string;
implementation
uses myModul,Myprocedure,MyGlobal, FrmSubNeraca;
{$R *.dfm}


procedure TFrNeraca.AmbilData;
begin
  with FrSubNeraca do
  begin
    Perkiraan.Text:=FrNeraca.QuPerkiraan.fieldbyname('Perkiraan').AsString;
    Keterangan.Text:=FrNeraca.QuPerkiraan.fieldbyname('Keterangan').AsString;
    Tipe.ItemIndex:=FrNeraca.QuPerkiraan.fieldbyname('Tipe').AsInteger;
    Neraca.Text:=FrNeraca.QuPerkiraan.fieldbyname('Neraca').AsString;
  end;
end;

procedure TFrNeraca.UpdateDataPerkiraan(Mode:Char);
begin
  BM := QuPerkiraan.getBookMark;
  With Sp_Perkiraan do
  begin
    Prepared;
    Parameters[1].Value := Mode;
    if Mode='D' then
       Parameters[2].Value := QuPerkiraan.FieldbyName('Perkiraan').asstring
    else
    begin
      Parameters[2].Value := FrSubNeraca.Perkiraan.Text;
      Parameters[3].Value := FrSubNeraca.Keterangan.Text;
      Parameters[4].Value := QuPerkiraanKelompok.Value;
      Parameters[5].Value := FrSubNeraca.Tipe.ItemIndex;
      Parameters[6].Value := QuPerkiraanValas.Value;
      Parameters[7].Value := QuPerkiraanDK.Value;
      Parameters[8].Value := FrSubNeraca.Neraca.Text;
      Parameters[9].Value := QuPerkiraanSimbol.Value;
      Parameters[10].Value := QuPerkiraanIsPPN.Value;
      Parameters[11].Value := QuPerkiraanLokasi.Value;
    end;
    try
      execproc;
      QuPerkiraan.Requery;
      if Mode='I' then
      begin
         QuPerkiraan.Locate('Perkiraan',FrSubNeraca.Perkiraan.Text,[LOP,LOC]);
      end else
      begin
         if QuPerkiraan.BookmarkValid(BM) then
         begin
            try
               QuPerkiraan.GotoBookmark(BM);
            finally
               QuPerkiraan.FreeBookmark(BM);
            end
         end else
         begin
            QuPerkiraan.FreeBookmark(BM);
            QuPerkiraan.Last;
         end;
      end;
    except
      on E: Exception do
           begin
               Application.MessageBox(StrPCopy(S,E.Message),'Peringatan',MB_OK or MB_ICONSTOP);
           end;
    end;
  end;
  //QuPerkiraan.Close;
  //QuPerkiraan.Open;
end;

procedure TFrNeraca.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrNeraca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
    begin
      Action:=caFree;
    end
    else
      Action:=caNone;
end;

procedure TFrNeraca.FormDestroy(Sender: TObject);
begin
FrNeraca:=nil;
end;

procedure TFrNeraca.FormShow(Sender: TObject);
begin
  ToolButton10.Click;
end;

procedure TFrNeraca.ToolButton10Click(Sender: TObject);
begin
 with QuPerkiraan do
 begin
  close;
  open;
 end;
end;

procedure TFrNeraca.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrNeraca.ExportExcel1Click(Sender: TObject);
begin
  if (IsExcel) then
  begin
      Save('xls', 'Microsoft Excel (*.xls)|*.xls', FrNeraca.Caption, dxDBGrid1.SaveToXLS);
      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
      LoggingData(IDUser,'Export to excel',FrNeraca.Caption,'','export to excel dengan nama file : '+SaveDialog.FileName);
  end else
  begin
      ShowMessage('Anda tidak berhak Mengeksport Excel');
  end;

end;

procedure TFrNeraca.AutoFilter1Click(Sender: TObject);
begin
    if dxDBGrid1.Filter.Active=false then
    dxDBGrid1.Filter.Active:=true
    else
    dxDBGrid1.Filter.Active:=false;

end;

procedure TFrNeraca.ShowGrid1Click(Sender: TObject);
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

procedure TFrNeraca.ShowHeader1Click(Sender: TObject);
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

procedure TFrNeraca.Show1Click(Sender: TObject);
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

procedure TFrNeraca.ToolButton1Click(Sender: TObject);
begin
  if IsTambah then
  begin
    IsSimpan:=true;
    Application.CreateForm(TFrSubNeraca, FrSubNeraca);
    FrSubNeraca.Caption:='Tambah Data';
    FrSubNeraca.Perkiraan.Enabled:=true;
    FrSubNeraca.ShowModal;
  end
  else
  begin
      ShowMessage('Anda tidak berhak Menambah Data');
  end;
end;

procedure TFrNeraca.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrNeraca.ToolButton2Click(Sender: TObject);
begin
  if IsKoreksi then
  begin
     Application.CreateForm(TFrSubNeraca, FrSubNeraca);
     IsSimpan:=false;
     FrSubNeraca.Caption:='Koreksi Data';
     FrSubNeraca.Perkiraan.Enabled:=false;
     AmbilData;
     FrSubNeraca.ShowModal;
     if FrSubNeraca.ModalResult=mrOK then
     begin
       With QuPerkiraan do
       begin
        Locate('Perkiraan',mPosisi,[LOC, LOP]);
       end;
     end;
     ActiveControl:=dxDBGrid1;
  end else
  begin
     ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
  end;
end;

procedure TFrNeraca.ToolButton3Click(Sender: TObject);
begin
  if IsHapus then
  begin
     if QuPerkiraan.IsEmpty=true then
     begin
        Application.MessageBox('Tabel Kosong','Informasi'
        ,MB_OK Or MB_ICONWARNING);
     end
     else
     begin
        StrPCopy(S,Format('Anda yakin Perkiraan %s dan Keterangan %s dihapus ?',
             [QuPerkiraan.Fields[0].asstring,
              QuPerkiraan.Fields[1].asstring]));
        if (Application.MessageBox(S,'Peringatan',
            MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
        begin
           UpdateDataPerkiraan('D');
           ToolButton10.Click;
        end;
     end;
  end else
  begin
     ShowMessage('Anda Tidak Berhak Menghapus Data');
  end;
end;

procedure TFrNeraca.MultiSelect1Click(Sender: TObject);
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

procedure TFrNeraca.ToolButton4Click(Sender: TObject);
begin
 if IsCetak then
 begin

 end else
 begin
     ShowMessage('Anda tidak berhak Cetak');
 end;
end;

procedure TFrNeraca.ppReport1PreviewFormCreate(Sender: TObject);
begin
//  TppReport(Sender).PreviewForm.WindowState:=wsMaximized;
//  TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zs100Percent;

end;

procedure TFrNeraca.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

procedure TFrNeraca.dxDBGrid1CustomDrawFooterNode(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; AFooterIndex: Integer; var AText: String;
  var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
  var ADone: Boolean);
begin
    if AColumn = dxDBGrid1.Columns[0] then
  begin
    AColor := $00ffefe1;
    AFont.Color:=clblack;
    AFont.Style := AFont.Style + [fsBold];
  end;
end;

procedure TFrNeraca.dxDBGrid1CustomDrawCell(Sender: TObject;
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

end.
