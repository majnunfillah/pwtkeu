unit FrmMainLunas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  ImgList, StdCtrls, ExtCtrls, Menus, ppBands, ppVar, ppCtrls, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,ppviewr,
  dxGridMenus, dxDBTLCl, dxGrClms,shellapi, cxClasses, cxStyles,
  cxGridTableView, cxCustomData, cxGraphics, cxFilter, cxData, cxEdit,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridDBTableView,
  cxControls, cxGridCustomView, cxGrid;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrMainLunas = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;            
    ToolButton2: TToolButton;
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
    MultiSelect1: TMenuItem;
    ToolButton8: TToolButton;
    PopupMenu2: TPopupMenu;
    TampilValid: TMenuItem;
    TampilBatal: TMenuItem;
    dxDBGrid1: TdxDBGrid;
    QuMaster: TADOQuery;
    DsMaster: TDataSource;
    QuDetail1: TADOQuery;
    DsDetail1: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxGridStyleHd: TcxGridTableViewStyleSheet;
    cxGridStyleDt: TcxGridTableViewStyleSheet;
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    QuMasterNoBukti: TStringField;
    QuMasterTanggal: TDateTimeField;
    QuMasterKodeCS: TStringField;
    QuMasterNamaCS: TStringField;
    QuMasterJumlah: TBCDField;
    QuMasterNoGiro: TStringField;
    QuMasterBank: TStringField;
    QuMasterNilaiGiro: TBCDField;
    QuMasterTglGiro: TDateTimeField;
    tvMasterNoBukti: TcxGridDBColumn;
    tvMasterTanggal: TcxGridDBColumn;
    tvMasterKodeCS: TcxGridDBColumn;
    tvMasterNamaCS: TcxGridDBColumn;
    tvMasterJumlah: TcxGridDBColumn;
    tvMasterNoGiro: TcxGridDBColumn;
    tvMasterBank: TcxGridDBColumn;
    tvMasterNilaiGiro: TcxGridDBColumn;
    tvMasterTglGiro: TcxGridDBColumn;
    dxDBGrid1NoBukti: TdxDBGridMaskColumn;
    dxDBGrid1Tanggal: TdxDBGridDateColumn;
    dxDBGrid1KodeCS: TdxDBGridMaskColumn;
    dxDBGrid1NamaCS: TdxDBGridMaskColumn;
    dxDBGrid1Jumlah: TdxDBGridMaskColumn;
    dxDBGrid1NoGiro: TdxDBGridMaskColumn;
    dxDBGrid1Bank: TdxDBGridMaskColumn;
    dxDBGrid1NilaiGiro: TdxDBGridMaskColumn;
    dxDBGrid1TglGiro: TdxDBGridDateColumn;
    QuView: TADOQuery;
    StringField1: TStringField;
    DateTimeField1: TDateTimeField;
    StringField3: TStringField;
    BCDField1: TBCDField;
    StringField4: TStringField;
    StringField5: TStringField;
    DateTimeField2: TDateTimeField;
    QuViewNilaiGiro: TBCDField;
    QuDetail1NoFaktur: TStringField;
    QuDetail1NoRetur: TStringField;
    QuDetail1TipeTrans: TStringField;
    QuDetail1KodeCustSupp: TStringField;
    QuDetail1NoBukti: TStringField;
    QuDetail1NoMsk: TIntegerField;
    QuDetail1Urut: TIntegerField;
    QuDetail1Tanggal: TDateTimeField;
    QuDetail1JatuhTempo: TDateTimeField;
    QuDetail1Debet: TBCDField;
    QuDetail1Kredit: TBCDField;
    QuDetail1Saldo: TBCDField;
    QuDetail1Valas: TStringField;
    QuDetail1Kurs: TBCDField;
    QuDetail1DebetD: TBCDField;
    QuDetail1KreditD: TBCDField;
    QuDetail1SaldoD: TBCDField;
    QuDetail1KodeSales: TStringField;
    QuDetail1Tipe: TStringField;
    QuDetail1Perkiraan: TStringField;
    QuDetail1Catatan: TStringField;
    QuDetail1MyID: TBytesField;
    QuDetail1NOINVOICE: TStringField;
    QuDetail1TGLINVOICE: TDateTimeField;
    QuDetail1NOPAJAK: TStringField;
    QuDetail1TGLFPJ: TDateTimeField;
    QuDetail1KodeVls_: TStringField;
    QuDetail1Kurs_: TBCDField;
    QuDetail1KursBayar: TBCDField;
    QuDetail1FlagSimbol: TStringField;
    QuViewKodeCS: TStringField;
    QuMasterIsOtorisasi1: TBooleanField;
    QuMasterOtoUser1: TStringField;
    QuMasterTglOto1: TDateTimeField;
    QuMasterIsOtorisasi2: TBooleanField;
    QuMasterOtoUser2: TStringField;
    QuMasterTglOto2: TDateTimeField;
    QuMasterIsOtorisasi3: TBooleanField;
    QuMasterOtoUser3: TStringField;
    QuMasterTglOto3: TDateTimeField;
    QuMasterIsOtorisasi4: TBooleanField;
    QuMasterOtoUser4: TStringField;
    QuMasterTglOto4: TDateTimeField;
    QuMasterIsOtorisasi5: TBooleanField;
    QuMasterOtoUser5: TStringField;
    QuMasterTglOto5: TDateTimeField;
    QuMasterNeedOtorisasi: TBooleanField;
    ToolButton3: TToolButton;
    ToolButton11: TToolButton;
    tvMasterOtorisasi1: TcxGridDBColumn;
    tvMasterUserOto1: TcxGridDBColumn;
    tvMasterTglOto1: TcxGridDBColumn;
    tvMasterOtorisasi2: TcxGridDBColumn;
    tvMasterUserOto2: TcxGridDBColumn;
    tvMasterTglOto2: TcxGridDBColumn;
    tvMasterOto3: TcxGridDBColumn;
    tvMasterUserOto3: TcxGridDBColumn;
    tvMasterTglOto3: TcxGridDBColumn;
    tvMasterOto4: TcxGridDBColumn;
    tvMasterUserOto4: TcxGridDBColumn;
    tvMasterTglOto4: TcxGridDBColumn;
    tvMasterOto5: TcxGridDBColumn;
    tvMasterUserOto5: TcxGridDBColumn;
    tvMasterTglOto5: TcxGridDBColumn;
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
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton2Click(Sender: TObject);
    procedure MultiSelect1Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GetData(bulan,tahun:integer);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBGrid1CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure tvMasterFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPosisi,xStatus : string;
    //IsTambah,IsKoreksi,IsHapus, IsCetak, ModalKoreksi, IsExcel : Integer;
    IsTambah,IsKoreksi,IsHapus, IsCetak, ModalKoreksi, IsExcel : Boolean;
    mPerkiraanHutang, mTipeTrans,MenuLunas: String;
    LunasOL:Integer;
    BM : TBookMark;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrMainLunas: TFrMainLunas;
  S: array[0..255] of char;

implementation
uses myModul,Myprocedure,MyGlobal, FrmBrows, FrmLunas;
{$R *.dfm}

procedure TFrMainLunas.GetData(bulan,tahun:integer);
begin


  with QuView do
  begin
    Close;
    SQL.Strings[2]:='select @Bulan='+IntToStr(bulan)+', @Tahun='+IntToStr(tahun)+', @TipeTrans='+QuotedStr('%'+mTipeTrans+'%');
    Open;
  end;

  with QuMaster do
  begin
    Close;
    SQL.Strings[2]:='select @Bulan='+IntToStr(bulan)+', @Tahun='+IntToStr(tahun)+', @TipeTrans='+QuotedStr('%'+mTipeTrans+'%');
    Open;
  end;

  
end;

procedure TFrMainLunas.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrMainLunas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
           MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
  begin
    if (xStatus <> 'M') and (xStatus<>'S') then
    begin
       MessageDlg('Modul Tranksasi Jurnal Kas Bank belum ditutup !',mtWarning,[mbok],0);
       Action := caNone
    end
    else
    begin
      Action:=caFree;
    end;
  end
  else
      Action:=caNone;
end;

procedure TFrMainLunas.FormDestroy(Sender: TObject);
begin
  FrMainLunas:=nil;
end;

procedure TFrMainLunas.FormShow(Sender: TObject);
begin
//  mPerkiraanHutang:=gTempPerkiraan;
  mTipeTrans:=gTipeTrans;
  xStatus := 'S';


  if mTipeTrans='HT' then
  begin
    tvMasterNamaCS.Caption:='Supplier';
    FrMainLunas.Caption:='Pelunasan Hutang';
  end else
  begin
    tvMasterNamaCS.Caption:='Customer';
    FrMainLunas.Caption:='Pelunasan Piutang';
  end;
  ToolButton10.Click;
  //if FileExists(currDir+'inifile\'+FrMainKasBank.Caption+'_'+IDUser+'.ini') then
  //begin
  //end;

end;

procedure TFrMainLunas.ToolButton10Click(Sender: TObject);
begin
  GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
end;

procedure TFrMainLunas.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrMainLunas.ExportExcel1Click(Sender: TObject);
begin
//  if (IsExcel=1) then
//  begin
      Save('xls', 'Microsoft Excel (*.xls)|*.xls', FrMainLunas.Caption, dxDBGrid1.SaveToXLS);
      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
//      LoggingData(Caption,'User '+IdUser+' Export Data '+ SaveDialog.FileName,dm.qucari);
{  end else
  begin
      ShowMessage('Anda tidak berhak Mengeksport Excel');
  end;}
end;

procedure TFrMainLunas.AutoFilter1Click(Sender: TObject);
begin
    if dxDBGrid1.Filter.Active=false then
    dxDBGrid1.Filter.Active:=true
    else
    dxDBGrid1.Filter.Active:=false;

end;

procedure TFrMainLunas.ShowGrid1Click(Sender: TObject);
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

procedure TFrMainLunas.ShowHeader1Click(Sender: TObject);
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

procedure TFrMainLunas.Show1Click(Sender: TObject);
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

procedure TFrMainLunas.ToolButton1Click(Sender: TObject);
begin
   if ToolButton1.Enabled then
   begin
     if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
     begin
      if IsTambah=True then
      begin
        
         if Assigned(FrLunas) then
            FrLunas.Show
         else
         begin
           ModalKoreksi:=False;
           xStatus := 'H';
           Application.CreateForm(TFrLunas,FrLunas);
           CekOtoritasMenu(IDUser,tag,FrLunas.Istambah,FrLunas.Ishapus,
                       FrLunas.Iskoreksi, FrLunas.isCetak, FrLunas.isExcel);
           FrLunas.Show;
         end;
      end
      else
      begin
         ShowMessage('Anda tidak berhak Menambah Data');
      end;
     end
     else
     begin
       MessageDlg('Periode telah terkunci !',mtWarning,[mbok],0);
       ActiveControl := dxDBGrid1;
     end;
   end;

end;

procedure TFrMainLunas.FormKeyDown(Sender: TObject; var Key: Word;
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
//        ToolButton3.Click;
   end;
end;

procedure TFrMainLunas.ToolButton2Click(Sender: TObject);
begin
     if Not QuMasterNeedOtorisasi.Value then
     begin
      MsgNeedOtorisasi;
      ActiveControl:= cxGrid1;
     End
     Else
     Begin
       if ToolButton2.Enabled then
       begin
         if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
         begin
            if IsKoreksi=True then
            begin
               if QuView.IsEmpty=False then
               begin
                  if Assigned(FrLunas) then
                     FrLunas.Show
                  else
                  begin
                    ModalKoreksi:=True;
                    xStatus := 'H';
                    mPosisi:=QuView.fieldbyname('nobukti').AsString;
                    Application.CreateForm(TFrLunas,FrLunas);
                    CekOtoritasMenu(IDUser,tag,FrLunas.Istambah,FrLunas.Ishapus,
                             FrLunas.Iskoreksi, FrLunas.isCetak, FrLunas.isExcel);
                    FrLunas.xmodalkoreksi := ModalKoreksi;
                    FrLunas.Show;
                  end;
                  With QuView do
                  begin
                     Locate('nobukti',mPosisi,[LOC, LOP]);
                  end;
                  ActiveControl:=dxDBGrid1;
               end else
               begin
                  ShowMessage('Tidak ada transaksi yang dikoreksi !');
                  ActiveControl:=dxDBGrid1;
               end;
            end else
            begin
               ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
            end;
         end
         else
         begin
           MessageDlg('Periode telah terkunci !',mtWarning,[mbok],0);
           ActiveControl := dxDBGrid1;
         end;
       end;
     End;
end;

procedure TFrMainLunas.MultiSelect1Click(Sender: TObject);
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

procedure TFrMainLunas.ToolButton4Click(Sender: TObject);
begin
 { if (IsCetak=1) then
  begin
    ppLabel3.Caption:=koneksi[1];
    ppReport1.PrintReport;
  end else
  begin
      ShowMessage('Anda tidak berhak Mencetak Data');
  end; }
end;

procedure TFrMainLunas.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

procedure TFrMainLunas.dxDBGrid1CustomDrawCell(Sender: TObject;
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
         AColor:=$00d8ebeb
      else
         AColor:=$00d6f8f3;
    end;
end;

procedure TFrMainLunas.dxDBGrid1CustomDrawFooter(Sender: TObject;
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

procedure TFrMainLunas.FormActivate(Sender: TObject);
begin
 quView.Locate('Nobukti',mPosisi,[LOC, LOP]);
end;

procedure TFrMainLunas.tvMasterFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
with QuDetail1 do
  begin
    Close;
 //   SQL.Strings[2]:='select @Bulan='+IntToStr(bulan)+', @Tahun='+IntToStr(tahun)+', @TipeTrans='+QuotedStr(mTipeTrans);
    Open;
  end;
end;

procedure TFrMainLunas.ToolButton3Click(Sender: TObject);
begin
  BM := QuMaster.GetBookmark;
  begin
    Otorisasi('DBHUtPiut',MenuLunas,IDUser,'',QuMasterNoBukti.Value);
    ToolButton10.Click;
    if QuMaster.BookmarkValid(BM) then
    begin
      try
         QuMaster.GotoBookmark(BM);
      finally
         QuMaster.FreeBookmark(BM);
      end
    end else
    begin
      QuMaster.FreeBookmark(BM);
      QuMaster.Last;
    end;
  end;
end;

procedure TFrMainLunas.ToolButton11Click(Sender: TObject);
begin
BM := QuMaster.GetBookmark;
  begin
    BatalOtorisasi('DBHUTPIUT',MenuLunas,IDUser,'',QuMasterNoBukti.Value);
    Begin
      ToolButton10.Click;
      if QuMaster.BookmarkValid(BM) then
      begin
        try
           QuMaster.GotoBookmark(BM);
        finally
           QuMaster.FreeBookmark(BM);
        end
      end else
      begin
        QuMaster.FreeBookmark(BM);
        QuMaster.Last;
      end;
    end;
  end;
end;

end.
