unit FrmPerkiraan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  ImgList, StdCtrls, ExtCtrls, Menus, ppBands, ppVar, ppCtrls, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,ppviewr,
  dxGridMenus,Shellapi;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrPerkiraan = class(TForm)
    QuPerkiraan: TADOQuery;
    DsQuPerkiraan: TDataSource;
    PopupMenu1: TPopupMenu;
    ExportExcel1: TMenuItem;
    N1: TMenuItem;
    ShowGrid1: TMenuItem;
    ShowHeader1: TMenuItem;
    Show1: TMenuItem;
    N2: TMenuItem;
    AutoFilter1: TMenuItem;
    ImageList2: TImageList;
    SaveDialog: TSaveDialog;
    dxDBGrid1: TdxDBGrid;
    MultiSelect1: TMenuItem;
    Sp_Perkiraan: TADOStoredProc;
    Sp_Update: TADOStoredProc;
    QuPerkiraanPerkiraan: TStringField;
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
    dxDBGrid1Valas: TdxDBGridMaskColumn;
    dxDBGrid1mKelompok: TdxDBGridMaskColumn;
    dxDBGrid1mTipe: TdxDBGridMaskColumn;
    dxDBGrid1mDK: TdxDBGridMaskColumn;
    Sp_InsertIntoNeraca: TADOStoredProc;
    dxDBGrid1Column7: TdxDBGridColumn;
    QuPerkiraanIsPPN: TBooleanField;
    QuPerkiraanKeterangan: TStringField;
    QuPerkiraanMyID: TBytesField;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton5: TToolButton;
    ToolButton4: TToolButton;
    ToolButton10: TToolButton;
    ToolButton7: TToolButton;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    QuPerkiraanLokasi: TWordField;
    QuPerkiraanMyLokasi: TStringField;
    dxDBGrid1MyLokasi: TdxDBGridMaskColumn;
    QuPerkiraanNamaAK: TStringField;
    QuPerkiraanNamaSubAK: TStringField;
    dxDBGrid1NamaAK: TdxDBGridMaskColumn;
    dxDBGrid1NamaSubAK: TdxDBGridMaskColumn;
    QuPerkiraanKodeAK: TStringField;
    QuPerkiraanKodeSAK: TStringField;
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
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
    mPosisi : string;
    IsSimpan:Boolean;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel : Boolean;
    BM : TBookmark;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrPerkiraan: TFrPerkiraan;
  S: array[0..255] of char;
  tampil,tambah,koreksi,hapus,cetak,excel : integer;
  nama : string;
implementation
uses myModul,Myprocedure,MyGlobal, FrmSubPerkiraan, FrmSetSaldoAwal,
  FrmSetBudget, FrmSetForm;
{$R *.dfm}


procedure TFrPerkiraan.AmbilData;
begin
  with FrSubPerkiraan do
  begin
    Perkiraan.Text:=FrPerkiraan.QuPerkiraan.fieldbyname('Perkiraan').AsString;
    Keterangan.Text:=FrPerkiraan.QuPerkiraan.fieldbyname('Keterangan').AsString;
    Kelompok.ItemIndex:=FrPerkiraan.QuPerkiraan.fieldbyname('Kelompok').AsInteger;
    Tipe.ItemIndex:=FrPerkiraan.QuPerkiraan.fieldbyname('Tipe').AsInteger;
    DK.ItemIndex:=FrPerkiraan.QuPerkiraan.fieldbyname('DK').AsInteger;
    Neraca.Text:=FrPerkiraan.QuPerkiraan.fieldbyname('Neraca').AsString;
    Valas.Text:=FrPerkiraan.QuPerkiraan.fieldbyname('Valas').AsString;
    Simbol.Text:=FrPerkiraan.QuPerkiraan.fieldbyname('Simbol').AsString;
    MyFindField('dbValas','KodeVls',Valas.Text);
    Label10.Caption:=DM.QuCari.fieldbyname('NAmaVls').AsString;
    ISPpn.Checked:=FrPerkiraan.QuPerkiraanIsPPN.AsBoolean;
    Lokasi.ItemIndex := FrPerkiraan.QuPerkiraanLokasi.AsInteger;
    ArusKas.Text := QuPerkiraanKodeAK.AsString;
    if DataBersyarat('select kodeak,namaak from dbaruskas where kodeak=:0',[aruskas.text],DM.Qucari) then
    begin
      Label13.Caption := '[ '+DM.QuCari.FieldByname('Namaak').AsString+' ]';
    end;
    SubArusKas.Text := QuPerkiraanKodeSAK.AsString;
    if DataBersyarat('select kodesubak,namasubak from dbaruskasdet where kodesubak=:0',[subaruskas.text],DM.Qucari) then
    begin
      Label15.Caption := '[ '+DM.QuCari.FieldByname('Namasubak').AsString+' ]';
    end;
  end;
end;

procedure TFrPerkiraan.UpdateDataPerkiraan(Mode:Char);
begin
  BM := QuPerkiraan.GetBookmark;
  With Sp_Perkiraan do
  begin
    Prepared;
    Parameters[1].Value := Mode;
    if Mode='D' then
       Parameters[2].Value := QuPerkiraan.FieldbyName('Perkiraan').asstring
    else
    begin
      Parameters[2].Value := FrSubPerkiraan.Perkiraan.Text;
      Parameters[3].Value := FrSubPerkiraan.Keterangan.Text;
      Parameters[4].Value := FrSubPerkiraan.Kelompok.ItemIndex;
      Parameters[5].Value := FrSubPerkiraan.Tipe.ItemIndex;
      Parameters[6].Value := FrSubPerkiraan.Valas.Text;
      Parameters[7].Value := FrSubPerkiraan.DK.ItemIndex;
      Parameters[8].Value := FrSubPerkiraan.Neraca.Text;
      Parameters[9].Value := FrSubPerkiraan.Simbol.Text;
      Parameters[10].Value := FrSubPerkiraan.ISPpn.Checked;
      Parameters[11].Value := FrSubPerkiraan.Lokasi.ItemIndex;
      Parameters[12].Value := FrSubPerkiraan.ArusKas.Text;
      Parameters[13].Value := FrSubPerkiraan.SubArusKas.Text;
    end;
    try
      execproc;
      if Mode='I' then
      begin
        LoggingData(IDUser,Mode,'Perkiraan','',
                    ' Perkiraan = '+QuotedStr(FrSubPerkiraan.Perkiraan.Text)+
                    ' Keterangan = '+QuotedStr(FrSubPerkiraan.Keterangan.Text)+
                    ' Kelompok = '+QuotedStr(FrSubPerkiraan.Kelompok.Text)+
                    ' Tipe = '+QuotedStr(FrSubPerkiraan.Tipe.Text)+
                    ' Valas = '+QuotedStr(FrSubPerkiraan.Valas.Text)+
                    ' DK = '+QuotedStr(FrSubPerkiraan.DK.Text)+
                    ' Neraca = '+QuotedStr(FrSubPerkiraan.Neraca.Text)+
                    ' Simbol = '+QuotedStr(FrSubPerkiraan.Simbol.Text)+
                    ' IsPpn = '+QuotedStr(BoolToStr(FrSubPerkiraan.ISPpn.Checked,True)));
        QuPerkiraan.Requery;
        QuPerkiraan.Locate('Perkiraan',FrSubPerkiraan.Perkiraan.Text,[]);
      end else if Mode='U' then
      begin
        QuPerkiraan.Requery;
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
       LoggingData(IDUser,Mode,'Perkiraan','',
                    ' Perkiraan = '+QuotedStr(FrSubPerkiraan.Perkiraan.Text)+
                    ' Keterangan = '+QuotedStr(FrSubPerkiraan.Keterangan.Text)+
                    ' Kelompok = '+QuotedStr(FrSubPerkiraan.Kelompok.Text)+
                    ' Tipe = '+QuotedStr(FrSubPerkiraan.Tipe.Text)+
                    ' Valas = '+QuotedStr(FrSubPerkiraan.Valas.Text)+
                    ' DK = '+QuotedStr(FrSubPerkiraan.DK.Text)+
                    ' Neraca = '+QuotedStr(FrSubPerkiraan.Neraca.Text)+
                    ' Simbol = '+QuotedStr(FrSubPerkiraan.Simbol.Text)+
                    ' IsPpn = '+QuotedStr(BoolToStr(FrSubPerkiraan.ISPpn.Checked,True)));
      end
      else if Mode='D' then
      begin
        LoggingData(IDUser,Mode,'Perkiraan','',
                    ' Perkiraan = '+QuotedStr(QuPerkiraanPerkiraan.Value)+
                    ' Keterangan = '+QuotedStr(QuPerkiraanKeterangan.Value)+
                    ' Kelompok = '+QuotedStr(QuPerkiraanKelompok.AsString)+
                    ' Tipe = '+QuotedStr(QuPerkiraanTipe.AsString)+
                    ' Valas = '+QuotedStr(QuPerkiraanValas.AsString)+
                    ' DK = '+QuotedStr(QuPerkiraanDK.AsString)+
                    ' Neraca = '+QuotedStr(QuPerkiraanNeraca.Value)+
                    ' Simbol = '+QuotedStr(QuPerkiraanSimbol.Value)+
                    ' IsPpn = '+QuotedStr(BoolToStr(QuPerkiraanISPpn.Value,True)));
        QuPerkiraan.Requery;
      end;
    except
      on E: Exception do
           begin
               Application.MessageBox(StrPCopy(S,E.Message),'Peringatan',MB_OK or MB_ICONSTOP);
           end;
    end;
  end;
end;

procedure TFrPerkiraan.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrPerkiraan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
    begin
      Action:=caFree;
    end
    else
      Action:=caNone;
end;

procedure TFrPerkiraan.FormDestroy(Sender: TObject);
begin
FrPerkiraan:=nil;
end;

procedure TFrPerkiraan.FormShow(Sender: TObject);
begin
  ToolButton10.Click;
end;

procedure TFrPerkiraan.ToolButton10Click(Sender: TObject);
begin
 with QuPerkiraan do
 begin
   close;
   open;
 end;
end;

procedure TFrPerkiraan.ToolButton9Click(Sender: TObject);
begin
  with dm.QuCari  do
  begin
    Close;
    sql.Clear ;
    sql.Add('select keterangan from [dbo].[CekSetPerkiraan]()');
    Open;
        if not IsEmpty then

    ShowMessage('Perkiraan Belum Di Setting ' + (FieldByname('Keterangan').AsString));

  end;

  Close;
//  DataBersyarat('',DM.QuCari);
//  ShowMessage('Perkiraan Belum Di Setting' +quotedstr(DM.QuCari.FieldByName('perkiraan').AsString)) ;
end;

procedure TFrPerkiraan.ExportExcel1Click(Sender: TObject);
begin
  if (IsExcel) then
  begin
    Save('xls', 'Microsoft Excel (*.xls)|*.xls', FrPerkiraan.Caption, dxDBGrid1.SaveToXLS);
    ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
    LoggingData(IDUser,'Export to excel',FrPerkiraan.Caption,'','export to excel dengan nama file : '+SaveDialog.FileName);
  end else
  begin
    ShowMessage('Anda tidak berhak Mengeksport Excel');
  end;

end;

procedure TFrPerkiraan.AutoFilter1Click(Sender: TObject);
begin
    if dxDBGrid1.Filter.Active=false then
    dxDBGrid1.Filter.Active:=true
    else
    dxDBGrid1.Filter.Active:=false;

end;

procedure TFrPerkiraan.ShowGrid1Click(Sender: TObject);
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

procedure TFrPerkiraan.ShowHeader1Click(Sender: TObject);
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

procedure TFrPerkiraan.Show1Click(Sender: TObject);
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

procedure TFrPerkiraan.ToolButton1Click(Sender: TObject);
begin
  if IsTambah then
  begin
    IsSimpan:=true;
    Application.CreateForm(TFrSubPerkiraan, FrSubPerkiraan);
    FrSubPerkiraan.Caption:='Tambah Data';
    FrSubPerkiraan.Perkiraan.Enabled:=true;
    FrSubPerkiraan.ShowModal;
  end
  else
  begin
      ShowMessage('Anda tidak berhak Menambah Data');
  end;
end;

procedure TFrPerkiraan.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrPerkiraan.ToolButton2Click(Sender: TObject);
begin
  if IsKoreksi then
  begin
     Application.CreateForm(TFrSubPerkiraan, FrSubPerkiraan);
     IsSimpan:=false;
     FrSubPerkiraan.Caption:='Koreksi Data';
     FrSubPerkiraan.Perkiraan.Enabled:=false;
     AmbilData;
     FrSubPerkiraan.ShowModal;
     if FrSubPerkiraan.ModalResult=mrOK then
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

procedure TFrPerkiraan.ToolButton3Click(Sender: TObject);
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

procedure TFrPerkiraan.MultiSelect1Click(Sender: TObject);
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

procedure TFrPerkiraan.ToolButton4Click(Sender: TObject);
begin
 if IsCetak then
 begin
  
 end else
 begin
     ShowMessage('Anda tidak berhak Cetak');
 end;
end;

procedure TFrPerkiraan.ppReport1PreviewFormCreate(Sender: TObject);
begin
//  TppReport(Sender).PreviewForm.WindowState:=wsMaximized;
//  TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zs100Percent;

end;

procedure TFrPerkiraan.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

procedure TFrPerkiraan.dxDBGrid1CustomDrawFooterNode(Sender: TObject;
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

procedure TFrPerkiraan.dxDBGrid1CustomDrawCell(Sender: TObject;
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
       AColor:=FrSetForm.WarnaRowGridTrans2
    else
       AColor:=FrSetForm.WarnaRowGridTrans1;
  end;
end;

procedure TFrPerkiraan.ToolButton12Click(Sender: TObject);
begin
  if StrToInt(PeriodBln)=1 then
  begin
    if QuPerkiraan.FieldByName('Tipe').AsInteger > 0 then
    begin
       with Sp_InsertIntoNeraca do
       begin
          Parameters[1].Value:=QuPerkiraan.FieldByName('Perkiraan').AsString;
          Parameters[2].Value:=StrToInt(PeriodBln);
          Parameters[3].Value:=StrToInt(PeriodThn);
          ExecProc;
       end;
       Application.CreateForm(TFrSetSaldoAwal, FrSetSaldoAwal);
       FrSetSaldoAwal.Bulan := StrToInt(PeriodBln);
       FrSetSaldoAwal.tahun := StrToInt(PeriodThn);
       FrSetSaldoAwal.Perkiraan:=QuPerkiraan.FieldByName('Perkiraan').AsString;
       FrSetSaldoAwal.ShowModal;

    end else
    begin
      ShowMessage('Perkiraan General tidak diijinkan, Pilih Perkiraan Detail !');
    end;
  end else
  begin
     ShowMessage('Set Saldo Awal harus di bulan Januari');
  end;
end;

procedure TFrPerkiraan.ToolButton13Click(Sender: TObject);
begin
  Application.CreateForm(tfrsetBudget,frsetBudget);
  frsetbudget.showmodal;
end;

procedure TFrPerkiraan.FormCreate(Sender: TObject);
begin
  Panel1.Color:=FrSetForm.PanelMain.Color;
  ToolBar1.Color:=FrSetForm.ToolBarMain.Color;
  FrPerkiraan.Color:=FrSetForm.PanelTransaksi.Color;
  dxDBGrid1.HeaderColor:=FrSetForm.WarnaHeaderGrid;
  dxDBGrid1.HeaderFont:=FrSetForm.cxStyle1.Font;
  dxDBGrid1.Color:=FrSetForm.cxStyle2.Color;
end;

end.
