unit FrmRevSO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, DBCtrls, ImgList, RxGIF,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, frxClass,
  frxDMPExport, frxDBSet, strUtils,DateUtils, frxDesgn, frxBarcode,Variants, myGlobal,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid;

type
  TFrRevSO = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    QuBeli: TADOQuery;
    Sp_Beli: TADOStoredProc;
    DsQuBeli: TDataSource;
    QuUpdatedbbeli: TADOQuery;
    Label10: TLabel;
    Keterangan: TEdit;
    DataSource1: TDataSource;
    QuReport: TADOQuery;
    Panel2: TPanel;
    Panel4: TPanel;
    PanelShow1: TPanel;
    PanelShow2: TPanel;
    BPrev: TSpeedButton;
    BNext: TSpeedButton;
    Cetak: TSpeedButton;
    HapusBtn: TSpeedButton;
    KoreksiBtn: TSpeedButton;
    TambahBtn: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    Label26: TLabel;
    SpeedButton8: TSpeedButton;
    dxDBGrid1Kodebrg: TdxDBGridMaskColumn;
    dxDBGrid1Harga: TdxDBGridMaskColumn;
    dxDBGrid1Namabrg: TdxDBGridMaskColumn;
    dxDBGrid1Qnt: TdxDBGridMaskColumn;
    dxDBGrid1Total: TdxDBGridMaskColumn;
    LNamaSls: TLabel;
    KodeSls: TEdit;
    Label1: TLabel;
    dxDBGrid1DiscTot: TdxDBGridMaskColumn;
    Shape4: TShape;
    Label4: TLabel;
    NoUrut: TEdit;
    Label12: TLabel;
    NoBukti: TEdit;
    Label42: TLabel;
    Tanggal: TDateEdit;
    Kurs: TPBNumEdit;
    Label30: TLabel;
    Valas: TEdit;
    Label29: TLabel;
    Label5: TLabel;
    PPN: TComboBox;
    Hari: TPBNumEdit;
    Label6: TLabel;
    Tipe: TComboBox;
    Label32: TLabel;
    KodeCust: TEdit;
    Label27: TLabel;
    Shape6: TShape;
    LnamaSupp: TLabel;
    LAlamatSupp: TLabel;
    Catatan: TMemo;
    Label17: TLabel;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    Label19: TLabel;
    NoPesanan: TEdit;
    Label20: TLabel;
    LNamaBrg: TRxLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Harga: TPBNumEdit;
    KodeBrg: TEdit;
    DiscRp: TPBNumEdit;
    QuBeliNoBukti: TStringField;
    QuBeliNOURUT: TStringField;
    QuBeliTanggal: TDateTimeField;
    QuBeliTglJatuhTempo: TDateTimeField;
    QuBeliKodeCUST: TStringField;
    QuBeliNamaCUST: TStringField;
    QuBeliAlamat: TStringField;
    QuBeliAlamatKirim: TStringField;
    QuBeliHandling: TBCDField;
    QuBeliNOSPB: TStringField;
    QuBeliKodeSls: TStringField;
    QuBeliNamaSls: TStringField;
    QuBeliKeterangan: TStringField;
    QuBeliKodeVls: TStringField;
    QuBeliNamaVls: TStringField;
    QuBeliKurs: TBCDField;
    QuBeliPPN: TWordField;
    QuBeliTipeBayar: TWordField;
    QuBeliHari: TIntegerField;
    QuBeliTipeDisc: TWordField;
    QuBeliDisc: TFloatField;
    QuBeliDiscRp: TBCDField;
    QuBeliCatatan: TStringField;
    QuBeliUrut: TIntegerField;
    QuBeliUrutSPB: TIntegerField;
    QuBeliKodeBrg: TStringField;
    QuBeliNamaBrg: TStringField;
    QuBeliQnt: TBCDField;
    QuBeliNoSat: TWordField;
    QuBeliIsi: TBCDField;
    QuBeliSatuan: TStringField;
    QuBeliQnt2: TBCDField;
    QuBeliSatuanRoll: TStringField;
    QuBeliHarga: TBCDField;
    QuBeliDiscP1: TBCDField;
    QuBeliDiscRp1: TBCDField;
    QuBeliDiscTot: TBCDField;
    QuBeliTotalUSD: TBCDField;
    QuBeliTotalIDR: TBCDField;
    QuBeliNDPP: TFloatField;
    QuBeliNPPN: TFloatField;
    QuBeliBeban: TBCDField;
    QuBeliTotal: TBCDField;
    QuBeliTotSubTotal: TBCDField;
    QuBeliTotDiskon: TFloatField;
    QuBeliTotTotal: TFloatField;
    QuBeliTotDPP: TFloatField;
    QuBeliTotPPN: TFloatField;
    QuBeliTotNet: TFloatField;
    QuBeliTotSubTotalRp: TBCDField;
    QuBeliTotDiskonRp: TFloatField;
    QuBeliTotTotalRp: TFloatField;
    QuBeliTotDPPRp: TFloatField;
    QuBeliTotPPNRp: TFloatField;
    QuBeliTotNetRp: TFloatField;
    Panel6: TPanel;
    LDiskonP: TLabel;
    Label25: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    LDiskonRp: TLabel;
    DiskonP: TPBNumEdit;
    GrandTotal: TPBNumEdit;
    Pajak: TPBNumEdit;
    DPP: TPBNumEdit;
    DiskonRp: TPBNumEdit;
    Handling: TPBNumEdit;
    Label28: TLabel;
    NoAlamatKirim: TEdit;
    QuBeliNoAlamatKirim: TIntegerField;
    LAlamatKirim: TLabel;
    Shape1: TShape;
    dxDBGrid1TotalUSD: TdxDBGridMaskColumn;
    dxDBGrid1TotalIDR: TdxDBGridMaskColumn;
    dxDBGrid1Satuan: TdxDBGridMaskColumn;
    dxDBGrid1Qnt2: TdxDBGridMaskColumn;
    dxDBGrid1SatuanRoll: TdxDBGridMaskColumn;
    KodeGdg: TEdit;
    Label9: TLabel;
    QuBeliKodeGdg: TStringField;
    Qnt2: TPBNumEdit;
    LSatuan2: TLabel;
    Qnt: TPBNumEdit;
    LSatuan: TLabel;
    KodeExp: TEdit;
    Label13: TLabel;
    LNamaExp: TLabel;
    QuBeliKodeExp: TStringField;
    QuBeliNamaExp: TStringField;
    frxDBCetak: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    QuBeliQnt3: TBCDField;
    QuBeliInsGdg: TStringField;
    QuBeliInsBrg: TStringField;
    Qudetail: TADOQuery;
    frxDBDataset1: TfrxDBDataset;
    QuBeliIsPPN: TBooleanField;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    islengkap: TCheckBox;
    QuBeliIsLengkap: TBooleanField;
    NoSat: TPBNumEdit;
    LNamaSat: TRxLabel;
    Qnt1: TPBNumEdit;
    LSatuan1: TLabel;
    Label3: TLabel;
    QuBeliNoPesanan: TStringField;
    QuBeliTglKirim: TDateTimeField;
    Label15: TLabel;
    TglKirim: TDateEdit;
    Label16: TLabel;
    MasaBerlaku: TDateEdit;
    QuBeliMasaBerlaku: TDateTimeField;
    QuBeliTotalDPP: TFloatField;
    QuBeliTotalPPn: TFloatField;
    QuBeliTotalNetto: TFloatField;
    QuBeliDiskon: TFloatField;
    DSLastPrices: TDataSource;
    QuLastPrices: TADOQuery;
    Panel5: TPanel;
    cxGrid1: TcxGrid;
    tvPrices: TcxGridDBBandedTableView;
    tvPricesLineNum: TcxGridDBBandedColumn;
    tvPricesKODECUSTSUPP: TcxGridDBBandedColumn;
    tvPricesNAMACUSTSUPP: TcxGridDBBandedColumn;
    tvPricesTANGGAL: TcxGridDBBandedColumn;
    tvPricesQnt: TcxGridDBBandedColumn;
    tvPricesSatuan: TcxGridDBBandedColumn;
    tvPricesKODEVLS: TcxGridDBBandedColumn;
    tvPricesKURS: TcxGridDBBandedColumn;
    tvPricesprice: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel7: TPanel;
    SpeedButton4: TSpeedButton;
    QuLastPricesproductid: TStringField;
    QuLastPricesnamabrg: TStringField;
    QuLastPricesKODECUSTSUPP: TStringField;
    QuLastPricesNAMACUSTSUPP: TStringField;
    QuLastPricesTANGGAL: TDateTimeField;
    QuLastPricesrownum: TLargeintField;
    QuLastPricesQnt: TBCDField;
    QuLastPricesSatuan: TStringField;
    QuLastPricesKODEVLS: TStringField;
    QuLastPricesKURS: TBCDField;
    QuLastPricesprice: TBCDField;
    QuLastPricesLineNum: TLargeintField;
    DiscPDet5: TPBNumEdit;
    Label39: TLabel;
    DIscPDet4: TPBNumEdit;
    Label40: TLabel;
    DiscPDet3: TPBNumEdit;
    Label41: TLabel;
    DiscPDet2: TPBNumEdit;
    Label18: TLabel;
    DiscP: TPBNumEdit;
    QuBeliDiscp2: TBCDField;
    QuBeliDiscp3: TBCDField;
    QuBeliDiscp4: TBCDField;
    QuBeliDiscp5: TBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure TampilData(No_Bukti:String);
    Procedure HitungRincian;
    procedure UpdateDataBeli(Choice:Char;Kodet:String);
    Procedure AmBilDataBeli;
    procedure FormCreate(Sender: TObject);
    procedure TambahBtnClick(Sender: TObject);
    procedure ClearPanelDetail;
    procedure KodeBrgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RefreshAll;
    procedure QntKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TANGGALKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UpdatedbBeli;
    procedure KoreksiBtnClick(Sender: TObject);
    procedure wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure HapusBtnClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure NoUrutKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TANGGALExit(Sender: TObject);
    procedure KodeCustEnter(Sender: TObject);
    procedure KodeCustExit(Sender: TObject);
    procedure CetakClick(Sender: TObject);
    Function CheckFormMaster:boolean;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure FormDestroy(Sender: TObject);
    function prosesdiskon(Sender: TObject):real;
    procedure bataltransaksi;
    procedure BPrevClick(Sender: TObject);
    procedure BNextClick(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DiskonChange(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure NoUrutChange(Sender: TObject);
    procedure KodeSlsExit(Sender: TObject);
    procedure QntEnter(Sender: TObject);
    procedure TANGGALEnter(Sender: TObject);
    procedure DiscPExit(Sender: TObject);
    procedure KodeBrgEnter(Sender: TObject);
    procedure KodeBrgExit(Sender: TObject);
    procedure NoPesananExit(Sender: TObject);
    procedure TanggalChange(Sender: TObject);
    procedure DiskonPEnter(Sender: TObject);
    procedure DiskonPExit(Sender: TObject);
    procedure DiskonRpEnter(Sender: TObject);
    procedure DiskonRpExit(Sender: TObject);
    procedure DiskonRpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NoAlamatKirimExit(Sender: TObject);
    procedure KodeExpExit(Sender: TObject);
    procedure KodeGdgExit(Sender: TObject);
    procedure NoUrutEnter(Sender: TObject);
    procedure Qnt2Enter(Sender: TObject);
    procedure Qnt2Change(Sender: TObject);
    procedure QntChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure NoSatEnter(Sender: TObject);
    procedure NoSatExit(Sender: TObject);
    procedure islengkapClick(Sender: TObject);
    procedure PPNClick(Sender: TObject);
    procedure ValasEnter(Sender: TObject);
    procedure ValasExit(Sender: TObject);
    procedure frxReport1AfterPrintReport(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);

  private
    { Private declarations }
    mUrutSPB, mTipeDisc: Integer;
    mNilaiEnter, mIsiBrg: Real;
    mUbahHd, mUbahHdDet, nFix: Boolean;
    mValidQnt2: Boolean;
    mNamaSatuan: TNamaSatuanBrg;
    mIsiSatuan: TIsiSatuanBrg;
    mHargaBrg : THargaBrg;
    function  CekAdaSuratJln(pNOSO: String): Boolean;
    procedure UpdateDiskon;
    procedure TampilIsiCustomer;
    procedure TampilIsiAlamatKirim;
    procedure TampilIsiNoSPB;
    procedure TampilIsiSales;
    procedure TampilIsiEkspedisi;
    procedure TampilIsiGudang;
    procedure TampilIsiBarang;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure IsiNoBuktiBaru;
    procedure TampilDataUpdateDiskon(No_Bukti:String);
    procedure TampilanQntSatuan(pNilai: Boolean);
    procedure IsiSatuan;
    procedure TampilIsiValas;
  public
    { Public declarations }
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel,    xModalKoreksi : Boolean;
    mINSGdgSO, mINSBrgSO: String;
    tmpBukti,xKodeBonus:string;
    DiskonTotal:real;
    sishal, tothal : integer ;
  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrRevSO: TFrRevSO;
  mValid,mExit,xIsPpn: Boolean;
  Sat:String;
  mUrut,mUrutSO,IsTutup,mNosat,mPosisi:Integer;
  TipeTrans,PlusPPN,Nomor,Model:String;
  mBulan,mTahun:string;
  Biaya,IsiBrg,potongan,NDiskon,NSubTotal,NDPP,NPPN,NNet:Real;
  YY,MM,DD : Word;
  S:array[0..255]of char;
  bm,GBM : TBookmark;

implementation
uses FrmBrows, MyProcedure, MyModul, FrmMainSOREV;
{$R *.DFM}

function  TFrRevSO.CekAdaSuratJln(pNOSO: String): Boolean;
//var xNoSuratJln: String;
//    i: Integer;
begin
  {xNoSuratJln:='';
  i:=0;
  with DM.QueryBrow do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select distinct NoBukti from dbSuratJlnDet where NOSO='+QuotedStr(pNOSO));
    Open;
  end;
  if DM.QueryBrow.IsEmpty then CekAdaSuratJln:=False else
  begin
    CekAdaSuratJln:=True;
    DM.QueryBrow.First;
    while not DM.QueryBrow.Eof do
    begin
      if xNoSuratJln='' then
        xNoSuratJln:=xNoSuratJln+DM.QueryBrow.FieldByName('NoBukti').AsString
      else xNoSuratJln:=xNoSuratJln+chr(13)+DM.QueryBrow.FieldByName('NoBukti').AsString;
      DM.QueryBrow.Next;
    end;
    MessageDlg('Sales Order (SO) tidak dapat dihapus, sudah ada Surat Jalan'+chr(13)+xNoSuratJln,
    mtInformation,[mbOK],0);
  end; }
  Result := False;
end;

procedure TFrRevSO.TampilIsiCustomer;
begin
  KodeBrows:=1154;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeCust.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    with FrBrows.QuBrows do
    begin
       KodeCust.Text:=fieldbyname('Kodecust').AsString;
       LnamaSupp.Caption:=fieldbyname('NamaCust').AsString;
       LAlamatSupp.Caption:=fieldbyname('Alamat').AsString;
       Hari.AsInteger:=FieldByName('DueDate').AsInteger;
       NoAlamatKirim.Text :='0';
       mValid := True;
           NoAlamatKirimExit(NoAlamatKirim);
           mValid:=false;
       //KodeSls.Text :=fieldbyname('Sales').AsString;
       //LNamaSls.Caption:='[ '+fieldbyname('NamaSls').AsString+' ]';
       //CekCustomer;
       //if xModalKoreksi=False then Diskon.Value:=mDiscCust;
    end;
  end
  else
    ActiveControl:=KodeCust;
end;

procedure TFrRevSO.TampilIsiAlamatKirim;
begin
  KodeBrows:=11542;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.NoKira:=KodeCust.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    with FrBrows.QuBrows do
    begin
       NoAlamatKirim.Text:=fieldbyname('Nomor').AsString;
       LAlamatKirim.Caption:=fieldbyname('AlamatKirim').AsString;
    end;
  end
  else
    ActiveControl:=NoAlamatKirim;
end;

procedure TFrRevSO.TampilIsiNoSPB;
begin
  {KodeBrows:=26006;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=NoSPB.Text;
  FrBrows.NoKira:=KodeCust.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    NoSPB.Text:=FrBrows.QuBrows.FieldbyName('NoBukti').AsString;
  end else
    ActiveControl:=NoSPB; }
end;

procedure TFrRevSO.TampilIsiSales;
begin
  KodeBrows:=1158;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeSls.Text;
  FrBrows.NoKira := KodeCust.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    with FrBrows.QuBrows do
    begin
       KodeSls.Text:=fieldbyname('KodeSls').AsString;
       LNamaSls.Caption:='[ '+fieldbyname('NamaSls').AsString+' ]';
    end;
  end
  else
    ActiveControl:=KodeSls;
end;

procedure TFrRevSO.TampilIsiEkspedisi;
begin
  KodeBrows:=1160;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeExp.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    with FrBrows.QuBrows do
    begin
       KodeExp.Text:=fieldbyname('KodeExp').AsString;
       LNamaExp.Caption:='[ '+fieldbyname('NamaExp').AsString+' ]';
    end;
  end
  else
    ActiveControl:=KodeExp;
end;

procedure TFrRevSO.TampilIsiGudang;
begin
  KodeBrows:=11002;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeGdg.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    KodeGdg.Text:=FrBrows.QuBrows.FieldByName('KodeGdg').AsString;
  end
  else
    ActiveControl:=KodeGdg;
end;

procedure TFrRevSO.TampilIsiBarang;
begin
  KodeBrows:=913;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:='%'+KodeBrg.Text+'%';
  FrBrows.EditFilter.Text:=KodeBrg.Text;
  FrBrows.NoKira := KodeCust.Text;
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.IsEmpty=False) then
  begin
    with FrBrows.QuBrows do
    begin
      KodeBrg.Text:=fieldbyname('KodeBrg').AsString;
      LNamaBrg.Caption:='[ '+fieldbyname('NamaBrg').AsString+' ]';
      mIsiBrg := fieldbyname('Isi2').AsFloat;
      //Qnt.AsFloat:=fieldbyname('QntSaldo').AsFloat;
     // Qnt2.AsFloat:=fieldbyname('Qnt2Saldo').AsFloat;
      //Nosat2.AsInteger:=2;
      ActiveControl:=Qnt;
    end;
  end
  else
    ActiveControl:=KodeBrg;
end;

procedure TFrRevSO.TampilTombolDetail(pNilai: Boolean);
begin
  //PanelShow1.Visible:=not pNilai;
  //PanelShow2.Visible:=not pNilai;
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  Panel3.Enabled:=pNilai;
end;

procedure TFrRevSO.UpdateDiskon;
begin
    if (not QuBeli.IsEmpty) then
    begin
      with QuUpdatedbBeli do
      begin
         Close;
         Sql.Clear;
         SQL.Add('Update dbSO');
         SQL.Add('set TIPEDISC=:0, DISC=:1, DISCRP=:2 ');
         SQL.Add('Where NoBukti='+QuotedStr(NoBukti.Text));
         Prepared;
         Parameters[0].Value:=mTipeDisc;
         if mTipeDisc=0 then
         begin
           Parameters[1].Value:=DiskonP.AsFloat;
           Parameters[2].Value:= 0;
         end else
         begin
           if QuBeliTotSubTotal.AsFloat=0 then Parameters[1].Value:=0
             else Parameters[1].Value := (DiskonRp.AsFloat*100)/QuBeliTotSubTotal.AsFloat;
           Parameters[2].Value:= DiskonRp.AsFloat;
         end;
         ExecSQL;
         Close;
         SQL.Clear;
         SQL.Add('exec sp_UpdateSO '+QuotedStr(NoBukti.Text));
         ExecSQL;
      end;
      TampilData(NoBukti.Text);
    end;
end;

Procedure TFrRevSO.HitungRincian;
begin
  DiskonP.Value:=QuBeliDisc.AsFloat;
  DiskonRp.Value:=QuBeliDiskon.AsFloat;
  DPP.Value:=QuBeliTotalDPP.AsFloat;
  Pajak.Value:=QuBeliTotalPPn.AsFloat;
  GrandTotal.Value:=QuBeliTotalNetto.AsFloat;
end;

procedure TFrRevSO.TampilData(No_Bukti:String);
begin
  QuBeli.Close;
  QuBeli.SQL.Strings[2]:='select @NoBukti='+QuotedStr(No_Bukti);
  QuBeli.Open;
  KodeCust.Enabled:=QuBeli.IsEmpty;
  //NoPesanan.Enabled:=QuBeli.IsEmpty;
  KodeGdg.Enabled:=QuBeli.IsEmpty;
  xIsPpn:=QuBeliIsPPN.AsBoolean;
  if QuBeli.IsEmpty=false then
  begin
    dxDBGrid1.OptionsDB:=[edgoCanNavigation,edgoLoadAllRecords,edgoUseBookmarks]
  end
  else
  begin
    dxDBGrid1.OptionsDB:=[edgoCanNavigation,edgoUseBookmarks];
  end;
  HitungRincian;
end;

procedure TFrRevSO.TampilDataUpdateDiskon(No_Bukti:String);
begin
  mNilaiEnter:=DiskonRp.Value;
  TampilData(NOBUKTI.Text);
  if mTipeDisc=1 then
  begin
    DiskonRp.Value:=mNilaiEnter;
    UpdateDiskon;
  end;
end;

procedure TFrRevSO.IsiNoBuktiBaru;
begin
  NoUrut.Enabled:=True;
  DecodeDate(Date,YY,MM,DD);
  If DayOfTheMonth(Date)<=DD then
     DD:=DayOfTheMonth(date);
  Try
    TANGGAL.Date := EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),DD);
  Except
    TANGGAL.Date := EndOfAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln))
  end;
  TglKirim.Date := Tanggal.Date;
  MasaBerlaku.Date := Tanggal.Date+30;
  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal.Date);
  NoUrut.Text := NomorBukti;
  NOBUKTI.Text := Nomor;
end;

// PROCEDURE DAN FUNCTION PRIBADI

function TFrRevSO.prosesdiskon(Sender:TObject): real;
var price,disc1,disc2,disc3,disc4,disc5:real;
begin
  Price:=Harga.AsFloat;
    Disc1:=0; Disc2:=0; Disc3:=0; Disc4:=0; Disc5:=0;
    if Price<>0 then
    begin
      if DiscP.AsFloat<>0 then
         Disc1:=Price*(DiscP.AsFloat/100);
      Price:=Price-Disc1;
      if DiscPDet2.AsFloat<>0 then
         Disc2:=Price*(DiscPDet2.AsFloat/100);
      Price:=Price-Disc2;
      if DiscPDet3.AsFloat<>0 then
         Disc3:=Price*(DiscpDet3.AsFloat/100);
      Price:=Price-Disc3;
      if DiscPDet4.AsFloat<>0 then
         Disc4:=Price*(DiscpDet4.AsFloat/100);
      Price:=Price-Disc4;
      if DiscPDet5.AsFloat<>0 then
         Disc5:=Price*(DiscpDet5.AsFloat/100);
      Price:=Price-Disc5;
    end;
    Result:=Harga.AsFloat-Price;
end;

procedure TFrRevSO.BatalTransaksi;
begin
  ActiveControl:=NoBukti;
  if FrMainSORev.ModalKoreksi = False then IsiNoBuktiBaru else
  Begin
    NOBUKTI.Text := FrMainSORev.QuMaster.FieldByname('Nobukti').AsString;
    IsiNoBuktiBaru;
    Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,IsMax);
    TampilData(NOBUKTI.Text);
    AmBilDataBeli;
    NoUrut.Text := NomorBukti;
  end;
end;

Function TFrRevSO.CheckFormMaster:boolean;
begin
  Result := False;
  if ((Length(KodeCust.Text)<>0)) and ( (Length(Valas.Text)<>0)) And
     ( (Length(KodeSls.Text)<>0)) and (Length(NoAlamatKirim.Text)<>0) then
      Result := True
  else
      Result := False;
end;

procedure TFrRevSO.UpdatedbBeli;
begin
  if (not QuBeli.IsEmpty) and (mUbahHd=True) then
  begin
    with QuUpdatedbBeli do
    begin
       Close;
       Sql.Clear;
       SQL.Add('Update dbSO');
       SQL.Add('Set Tanggal=:0, KodeCust=:1, NOSPB=:2, KodeSls=:3, AlamatKirim=:4, Keterangan=:5, ');
       SQL.Add('KodeVls=:6, Kurs=:7, PPN=:8, TipeBayar=:9, Hari=:10, Catatan=:11, NoAlamatKirim=:12, KodeExp=:13, IsLengkap=:14, ');
       SQL.Add('NoPesanan=:15, TglKirim=:16, MasaBerlaku=:17 ');
       SQL.Add('Where NoBukti='+QuotedStr(NoBukti.Text));
       Prepared;
       Parameters[0].Value:=TANGGAL.Date;
       Parameters[1].Value:=KodeCust.Text;
       Parameters[2].Value:=NoPesanan.Text;
       Parameters[3].Value:=KodeSls.Text;
       Parameters[4].Value:='';
       Parameters[5].Value:=Keterangan.Text;
       Parameters[6].Value:=Valas.Text;
       Parameters[7].Value:=Kurs.AsFloat;
       Parameters[8].Value:=PPN.ItemIndex;
       Parameters[9].Value:=Tipe.ItemIndex;
       Parameters[10].Value:=Hari.AsInteger;
       Parameters[11].Value:=Trim(Catatan.Text);
       if NoAlamatKirim.Text='-' then Parameters[12].Value:=-1 else
        begin
          try
            Parameters[12].Value:=StrToInt(NoAlamatKirim.Text)
          except
            Parameters[12].Value:=0;
          end;
        end;
       Parameters[13].Value:=KodeExp.Text;
       Parameters[14].Value:=islengkap.Checked;
       Parameters[15].Value:=NoPesanan.Text;
       Parameters[16].Value:=TglKirim.Date;
       Parameters[17].Value:=MasaBerlaku.Date;
       ExecSQL;
       if mUbahHdDet=True then
       begin
         Close;
         SQL.Clear;
         SQL.Add('exec sp_UpdateSO '+QuotedStr(NoBukti.Text));
         ExecSQL;
       end;
       //Close;
       //SQL.Clear;
       //SQL.Add('exec sp_RefreshOutSO '+QuotedStr(NoBukti.Text));
       //ExecSQL;
       mUbahHd:=False; mUbahHdDet:=False;
    end;
    TampilData(NoBukti.Text);
  end;
end;

procedure TFrRevSO.ClearPanelDetail;
begin
   KodeBrg.Text:='';
   LNamaBrg.Caption:='[ . . . ]';
   LSatuan2.Caption:='[ . . . ]';
   LSatuan.Caption:='[ . . . ]';
   LSatuan1.Caption:='[ . . . ]';
   Qnt.Value:=0;
   Qnt1.Value:=0;
   Qnt2.Value:=0;
   Harga.Value:=0;
   DiscP.Value:=0;
   DiscRp.Value:=0;
   Qnt2.Enabled:=True;
   Qnt.Enabled:=True;
   Qnt2.MaxValue:=0;
   Qnt.MaxValue:=0;
end;

procedure TFrRevSO.RefreshAll;
var i:integer;
begin
   mValid:=False;
   for i:= 0 to Panel1.ControlCount-1 do
   begin
      if (Panel1.Controls[i] is TEdit) then
         (Panel1.Controls[i] as TEdit).Clear;
      if (Panel1.Controls[i] is TPBNumEdit) then
         (Panel1.Controls[i] as TPBNumEdit).Value:=0;
   end;
   for i:= 0 to Panel3.ControlCount-1 do
   begin
      if (Panel3.Controls[i] is TEdit) then
         (Panel3.Controls[i] as TEdit).Clear;
      if (Panel3.Controls[i] is TPBNumEdit) then
         (Panel3.Controls[i] as TPBNumEdit).Value:=0;
   end;
   KodeCust.Enabled:=true;
   LnamaSupp.caption:='';
   LAlamatSupp.caption:='';
   LNamaSls.Caption:='[ . . . ]';
   Valas.Text:='IDR';
   Kurs.Value:=1;
   PPN.ItemIndex:=0;
   TIPE.ItemIndex:=0;
   Hari.Value:=0;
   mTipeDisc:=0;
   ClearPanelDetail;
   mUbahHd:=False; mUbahHdDet:=False;
   TampilLabelDiskon(mTipeDisc,LDiskonP,LDiskonRp);
end;

procedure TFrRevSO.UpdateDataBeli(Choice:Char;Kodet:String);
begin
  BM:=QuBeli.GetBookmark;
  With Sp_Beli do
  begin
    Parameters.Refresh;
    Parameters[1].Value:=Choice;
    Parameters[2].Value:=NoBukti.Text;
    Parameters[3].Value:=NoUrut.Text;
    Parameters[4].Value:=TANGGAL.Date;
    Parameters[5].Value:=TANGGAL.Date+Hari.AsInteger;
    Parameters[6].Value:=KodeCust.Text;
    Parameters[7].Value:=NoPesanan.Text;
    Parameters[8].Value:=KodeSls.Text;
    if NoAlamatKirim.Text='' then Parameters[9].Value:=-1 else
    begin
      try
        Parameters[9].Value:=StrToInt(NoAlamatKirim.Text)
      except
        Parameters[9].Value:=0;
      end;
    end;
    Parameters[10].Value:='';
    Parameters[11].Value:=Keterangan.Text;
    Parameters[12].Value:=Valas.Text;
    Parameters[13].Value:=Kurs.AsFloat;
    Parameters[14].Value:=PPN.ItemIndex;
    Parameters[15].Value:=TIPE.ItemIndex;
    Parameters[16].Value:=Hari.AsInteger;
    Parameters[17].Value:=mTipeDisc;
    if mTipeDisc=0 then
    begin
       Parameters[18].Value:=DiskonP.Value;
       Parameters[19].Value:= 0;
    end else
    begin
       Parameters[18].Value:=0;
       Parameters[19].Value:=DiskonRp.Value;
    end;
    Parameters[20].Value:=trim(Catatan.Text);
    Parameters[21].Value:=mUrut;
    Parameters[22].Value:=mUrutSPB;
    Parameters[23].Value:=KodeBrg.Text;
    if Nosat.Value=1 then
    begin
      Parameters[24].Value:=Qnt.AsFloat;
      Parameters[25].Value:=Qnt.AsFloat;//mIsiBrg;
    end
    else if Nosat.Value=2 then
    begin
      Parameters[24].Value:=Qnt.AsFloat;//*mIsiBrg;
      Parameters[25].Value:=Qnt.AsFloat;
    end;
    Parameters[26].Value:=NoSat.AsInteger;
    Parameters[27].Value:=mIsiBrg;
    Parameters[28].Value:=Harga.AsFloat;
    Parameters[29].Value:=DiscP.AsFloat;
    Parameters[30].Value:=DiscRp.AsFloat;
    Parameters[31].Value:=KodeGdg.Text;
    Parameters[32].Value:=KodeExp.Text;
    Parameters[33].Value:=0;
    Parameters[34].Value:=mINSGdgSO;
    Parameters[35].Value:=mINSBrgSO;
    Parameters[36].Value:=islengkap.Checked;
    Parameters[37].Value:=IDUser;
    Parameters[38].Value:=Now;
    Parameters[39].Value:=mNamaSatuan[NoSat.AsInteger];
    Parameters[40].Value:=NoPesanan.Text;
    Parameters[41].Value:=TglKirim.Date;
    Parameters[42].Value:=MasaBerlaku.Date;
    Parameters[43].Value := DiscPDet2.Value;
    Parameters[44].Value := DiscPDet3.Value;
    Parameters[45].Value := DiscPDet4.Value;
    Parameters[46].Value := DiscPDet5.Value;
    try
      ExecProc;
      if Handling.Value<>0 then
      begin
        QuUpdatedbbeli.Close;
        QuUpdatedbbeli.SQL.Clear;
        QuUpdatedbbeli.SQL.Add('exec sp_UpdateSO '+QuotedStr(NoBukti.Text));
        QuUpdatedbbeli.ExecSQL;
      end;
      if Choice='I' then
      begin
        TampilDataUpdateDiskon(NOBUKTI.Text);
        mUrut:=mUrut+1;
        QuBeli.Locate('kodebrg',KodeBrg.Text,[LOP,LOC]);
        LoggingData(IDUser,Choice,'SO',NoBukti.Text,
                    ' Barang = '+QuotedStr(KodeBrg.Text)+
                    ' Qnt = '+QuotedStr(Qnt.Text)+' Harga = '+QuotedStr(Harga.Text));
      end else if Choice='U' then
      begin
        TampilDataUpdateDiskon(NOBUKTI.Text);
        if QuBeli.BookmarkValid(BM) then
        begin
          try
             QuBeli.GotoBookmark(BM);
          finally
             QuBeli.FreeBookmark(BM);
          end
        end else
        begin
          QuBeli.FreeBookmark(BM);
          QuBeli.Last;
        end;
        LoggingData(IDUser,Choice,'SO',NoBukti.Text,
                    ' Barang = '+QuotedStr(KodeBrg.Text)+
                    ' Qnt = '+QuotedStr(Qnt.Text)+' Harga = '+QuotedStr(Harga.Text));
      end
      Else if Choice='D' then
      begin
        LoggingData(IDUser,Choice,'SO',NoBukti.Text,
                    ' Barang = '+QuotedStr(QuBeliKodeBrg.AsString)+
                    ' Qnt = '+QuotedStr(QuBeliQnt.DisplayText)+' Harga = '+QuotedStr(QuBeliHarga.DisplayText));
        TampilDataUpdateDiskon(NOBUKTI.Text);
      end;
    except
      If (Choice='I') Or (Choice='U') then
         showmessage('Proses Gagal !')
      else If (Choice='D') then
         showmessage('Proses Gagal !, Barang berkaitan dengan transaksi lain.');
    end;
  end;
end;

Procedure TFrRevSO.AmBilDataBeli;
begin
   if not QuBeli.IsEmpty then
   begin
      Tanggal.Date:=QuBeliTanggal.AsDateTime;
      KodeCust.Text:=QuBeliKodeCUST.AsString;
      LnamaSupp.Caption:=QuBeliNamaCUST.AsString;
      LAlamatSupp.Caption:=QuBeliAlamat.AsString;
      NoPesanan.Text:=QuBeliNoPesanan.AsString;
      TglKirim.Date := QuBeliTglKirim.AsDateTime;
      KodeSls.Text:=QuBeliKodeSls.AsString;
      LNamaSls.Caption:='[ '+QuBeliNamaSLS.AsString+' ]';
      LAlamatKirim.Caption:=QuBeliAlamatKirim.AsString;
      KodeGdg.Text:=QuBeliKodeGdg.AsString;
      Keterangan.Text:=QuBeliKeterangan.AsString;
      Valas.Text:=QuBeliKodeVls.AsString;
      Kurs.Value:=QuBeliKurs.AsCurrency;
      PPN.ItemIndex:=QuBeliPPN.AsInteger;
      Tipe.ItemIndex:=QuBeliTipeBayar.AsInteger;
      Hari.AsInteger:=QuBeliHari.AsInteger;
      Catatan.Text:=QuBeliCatatan.AsString;
      try
        if QuBeliNoAlamatKirim.IsNull then
          NoAlamatKirim.Text:='-'
        else NoAlamatKirim.Text:=IntToStr(QuBeliNoAlamatKirim.AsInteger);
      except
        NoAlamatKirim.Text:='-';
      end;
      LAlamatKirim.Caption:=QuBeliAlamatKirim.AsString;
      KodeExp.Text:=QuBeliKodeExp.AsString;
      LNamaExp.Caption:='[ '+QuBeliNamaExp.AsString+' ]';
      mTipeDisc:=QuBeliTipeDisc.AsInteger;
      mINSGdgSO:=QuBeliInsGdg.AsString;
      mINSBrgSO:=QuBeliInsBrg.AsString;
      islengkap.Checked := QuBeliIsLengkap.AsBoolean;
      MasaBerlaku.Date := QuBeliMasaBerlaku.AsDateTime;

   end;
   TampilLabelDiskon(mTipeDisc,LDiskonP,LDiskonRp);
end;

// PROCEDURE DAN FUNCTION MILIK DELPHI

procedure TFrRevSO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if mExit=true then
  begin
     FrMainSORev.ToolButton10.Click;
     Hapus_Daftar_Nomor_User('SO',IDUser);
     Action:=cafree;
  end
  else
  begin
     Action:=caNone;
  end;
end;

procedure TFrRevSO.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrRevSO.FormShow(Sender: TObject);
begin
  mValid:=False;
  xModalKoreksi:=FrMainSORev.ModalKoreksi;
  If xModalKoreksi = False then
  begin
    NOBUKTI.Text := FrMainSORev.QuOSNoBukti.AsString;
    Hapus_Daftar_Nomor_User ('SO',IDUser);
    //AmbilUrut(NOBUKTI.Text,NomorBukti);
    Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,IsMax);
    TampilData(NOBUKTI.Text);
    AmBilDataBeli;
    NoUrut.Text:=QuBeliNOURUT.AsString;
    NoUrut.Enabled:=False;
    if CekPeriode(IDUser,Tanggal.Date)=True then
    begin
      //Panel1.Enabled:=True;
      Tanggal.Enabled:=True;
      ActiveControl:=Tanggal;
    end
    else
    begin
      //Panel1.Enabled:=False;
      Tanggal.Enabled:=False;
      ActiveControl:=dxDBGrid1;
    end;
  end
  else
  Begin
    //NoUrut.Text:=FrMainSORev.QuMasterNoUrut.AsString;
    NOBUKTI.Text := gTempNoBuktiSO;
    Hapus_Daftar_Nomor_User ('SO',IDUser);
    //AmbilUrut(NOBUKTI.Text,NomorBukti);
    Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,IsMax);
    TampilData(NOBUKTI.Text);
    AmBilDataBeli;
    NoUrut.Text:=QuBeliNOURUT.AsString;
    NoUrut.Enabled:=False;
    if CekPeriode(IDUser,Tanggal.Date)=True then
    begin
      //Panel1.Enabled:=True;
      Tanggal.Enabled:=True;
      ActiveControl:=Tanggal;
    end
    else
    begin
      //Panel1.Enabled:=False;
      Tanggal.Enabled:=False;
      ActiveControl:=dxDBGrid1;
    end;
  end;
end;

procedure TFrRevSO.FormCreate(Sender: TObject);
begin
  LnamaSupp.Caption:='';
  LAlamatSupp.Caption:='';
  LAlamatKirim.Caption:='';
  Hapus_Daftar_Nomor_User('SO',IDUser);
  dxDBGrid1Qnt.Caption:='Qnt ';
  dxDBGrid1Qnt2.Caption:='Qnt 2';
  TipeTrans := 'SO';
end;

procedure TFrRevSO.TambahBtnClick(Sender: TObject);
begin
  if CheckFormMaster=true then
  begin
    Model:='write';
    TampilTombolDetail(True);
    KodeBrg.Enabled:=True;
    with DM.QuCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select top 1 Urut from dbSODet where NoBukti='+QuotedStr(NoBukti.Text));
      SQL.Add('order by Urut desc ');
      Open;
      if IsEmpty then mUrut:=1
        else mUrut:=FieldByName('Urut').AsInteger+1;
      Close;
    end;
    ActiveControl:=KodeBrg;
  end
  else
  begin
     ShowMessage('Form Master Tidak Lengkap, Silahkan Anda Periksa !');
  end;
end;

procedure TFrRevSO.KodeBrgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=Vk_Escape then
  begin
    SpeedButton1.Click;
  end;
end;

procedure TFrRevSO.QntKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_Escape then
   begin
      mValid:=false;
      KodeBrg.Enabled:=true;
      Panel2.Enabled:=true;
      ClearPanelDetail;
      if model='write' then
         ActiveControl:=kodebrg
      else
      begin
         SpeedButton1.Click;
      end;
   end;
end;

procedure TFrRevSO.TANGGALKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
  begin
    if (CekPeriode(IDUser,TANGGAL.Date)=False) and (Sender=Tanggal) then
      Abort;
    UpdatedbBeli;
  end
  else if Key=Vk_Escape then
  begin
    mValid:=False;
    mExit := True;
    Close;
  end;
end;

procedure TFrRevSO.KoreksiBtnClick(Sender: TObject);
begin
  if CheckFormMaster=True then
  begin
     mValid:=False;
     model:='koreksi';
     // data yang di update
     if QuBeli.IsEmpty=False then
     begin
       //if CekAdaSuratJln(NoBukti.Text)=False then
       //begin
          TampilTombolDetail(True);
          //KodeBrg.Enabled:=False;
          mUrut :=QuBeliUrut.AsInteger;
          mUrutSPB:=QuBeliUrutSPB.AsInteger;
          KodeBrg.Text:=QuBeliKodeBrg.AsString;
          LNamaBrg.Caption:='[ '+QuBeliNamaBrg.AsString+' ]';
          LSatuan2.Caption:='[ '+QuBeliSatuanRoll.AsString+' ]';
          LSatuan.Caption:='[ '+QuBeliSatuan.AsString+' ]';
          mIsiBrg:=QuBeliIsi.AsFloat;
          Qnt1.Value:=QuBeliQnt.AsFloat;
          Qnt.Value:=QuBeliQnt.AsFloat;
          Qnt2.Value:=QuBeliQnt2.AsFloat;
          Harga.Value:=QuBeliHarga.AsFloat;
          DiscP.Value:=QuBeliDiscP1.AsFloat;
          DiscRp.Value:=QuBeliDiscTot.AsFloat;
          DiscPDet2.Value:=QuBeliDiscp2.AsFloat;
          DiscPDet3.Value:=QuBeliDiscp3.AsFloat;
          DiscPDet4.Value:=QuBeliDiscp4.AsFloat;
          DiscPDet5.Value:=QuBeliDiscp5.AsFloat;
          IsiSatuan;          
          ActiveControl:=Qnt;
       //end;
     end
     else
     begin
        ShowMessage('Tidak ada transaksi yang dikoreksi !');
        ActiveControl:=dxDBGrid1;
     end;
  end;
end;

procedure TFrRevSO.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Escape then
  begin
      mValid:=False;
      mExit := True;
      Close;
  end
  else if key=VK_return then
  begin
    KoreksiBtn.Click;
  end
  else if key=VK_delete then
  begin
    HapusBtn.Click;
  end
  else if key=VK_insert then
  begin
    TambahBtn.Click;
  end;
end;

procedure TFrRevSO.HapusBtnClick(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if QuBeli.IsEmpty=true then
    begin
      Application.MessageBox('Tabel Kosong','Informasi',
      MB_OK Or MB_ICONWARNING);
    end
    else
    begin
      if CekAdaSuratJln(NoBukti.Text)=False then
      begin
        StrPCopy(S,Format('Anda yakin Kode %s dan Nama %s dihapus ?',
        [QuBeliKodeBrg.AsString, QuBeliNamaBrg.AsString]));
        if (Application.MessageBox(S,'Hapus Data',
          MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
        begin
          mUrut:=QuBeliUrut.AsInteger;
          UpdateDataBeli('D','BL');
        end;
      end;
    end;
  end
  else
  begin
    ShowMessage('Periode Sudah Di Kunci !');
    ActiveControl:=dxDBGrid1;
  end;
end;

procedure TFrRevSO.wwDBGrid1Enter(Sender: TObject);
begin
  FrRevSO.KeyPreview:=false;
  CheckFormMaster;
end;

procedure TFrRevSO.wwDBGrid1Exit(Sender: TObject);
begin
  FrRevSO.KeyPreview:=true;
end;

procedure TFrRevSO.wwDBGrid1DblClick(Sender: TObject);
begin
  KoreksiBtn.Click;
end;

procedure TFrRevSO.NoUrutKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var myTempNoUrut: String;
begin
  if Key=Vk_Return then
  begin
    myTempNoUrut:=NoUrut.Text;
    NoUrut.Text:=RightStr('00000'+myTempNoUrut,5);
    Konfig(TipeTrans,NoUrut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date);
    NOBUKTI.Text:=MyNoBukti;
    TampilData(NoBukti.Text);
    If Length(NoUrut.Text)<5 then
    begin
      MessageDlg('Nomor urut kurang '+InttoStr(5-Length(NoUrut.Text))+' digit.',mtWarning,[MbOk],0);
      ActiveControl := NoUrut;
    end
    else
    begin
      if (not QuBeli.IsEmpty) then
      Begin
        if (xModalKoreksi=True)  then
           AmBilDataBeli
        else
        Begin
          TampilData('');
          MsgDataSudahADA(NoBukti.Text);
          ActiveControl := NoUrut;
        end;
      end;
      If Not Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,IsMax) then
      begin
        MessageDlg('Nomor : '+NOBUKTI.Text+' telah digunakan oleh '+MyUser+'.',mtWarning,[MbOk],0);
        ActiveControl := NoUrut;
      end;
    end;
  end
  else if Key=Vk_Escape then
  begin
    mExit := True;
    Close;
  end;
end;

procedure TFrRevSO.TANGGALExit(Sender: TObject);
begin
  if mValid then
  begin
     if CekPeriode(IDUser,TANGGAL.Date)=false then
     begin
        MessageDlg('Tanggal tidak sesuai periode transaksi.',mtWarning,[mbok],0);
        ActiveControl:=Tanggal;
     end;
  end;
end;

procedure TFrRevSO.KodeCustEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrRevSO.KodeCustExit(Sender: TObject);
begin
  if mValid Then
  begin
    if length(KodeCust.Text)=0 then TampilIsiCustomer else
    begin
      if DataBersyarat(' select KodeCust, NamaCust, Alamat, Hari DueDate, SALES, NAMASLS, KODEEXP, NAMAEXP, JENIS,IsPpn '+
              ' from vwBrowsCustomer where Kodecust=:0 order by KodeCust',[KodeCust.Text],Dm.Qucari)=true then
      begin
        with DM.QuCari do
        begin
           KodeCust.Text:=fieldbyname('Kodecust').AsString;
           LnamaSupp.Caption:=fieldbyname('NamaCust').AsString;
           LAlamatSupp.Caption:=fieldbyname('Alamat').AsString;
           Hari.AsInteger:=FieldByName('DueDate').AsInteger;
           NoAlamatKirim.Text:='0';
           mValid := True;
           NoAlamatKirimExit(NoAlamatKirim);
           mValid:=false;
           //KodeSls.Text :=fieldbyname('Sales').AsString;
           //LNamaSls.Caption :='[ '+fieldbyname('NamaSls').AsString+' ]';
           //CekCustomer;
           //if xModalKoreksi=False then Diskon.Value:=mDiscCust;
        end;
      end
      else TampilIsiCustomer;
    end;
    //If Hari.AsInteger=0 Then TIPE.ItemIndex:=0
    //  else TIPE.ItemIndex:=1;
    //Ltanggal.Caption:='Tanggal Jatuh Tempo : '+FormatDateTime('dd/mm/yyyy',TANGGAL.Date+Hari.AsInteger);
  end;
end;

procedure TFrRevSO.CetakClick(Sender: TObject);
begin
  {frxDBCetak.DataSet.Close;
  frxDBCetak.DataSet:=QuReport;
  QuReport.Close;
  QuReport.SQL.Clear;
  QuReport.SQL.Add('exec sp_CetakSO '+QuotedStr(NoBukti.Text));
  QuReport.Open;
  frxDBCetak.Close;
  frxDBCetak.Open;
  frxDBDataset1.DataSet.Close;
  frxDBDataset1.DataSet:=Qudetail;}
  frxDBDataset1.DataSet.Close;
  frxDBDataset1.DataSet := Qudetail;
  Qudetail.Close;
  Qudetail.SQL.Clear;
  Qudetail.SQL.Add('exec sp_CetakSO1Revisi '+QuotedStr(NoBukti.Text));
  Qudetail.Open;
  frxDBDataset1.Close;
  frxDBDataset1.Open;
  frxDBCetak.Close;
  frxDBCetak.Open;
  frxReport1.LoadFromFile(currDir+'Nota\NotaMarketingSO.fr3');
  frxReport1.ShowReport;
  ActiveControl:=dxDBGrid1;
end;

procedure TFrRevSO.BitBtn1Click(Sender: TObject);
begin
  if ((CekPeriode(IdUser,TANGGAL.Date)=true) and (Panel1.Enabled=True)) or (Panel1.Enabled=False) then
  begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      if length(Kodebrg.Text)>0 then
      begin
        if model='write' then
        begin
              UpdateDataBeli('I','BL');
              ClearPanelDetail;
              ActiveControl:=Kodebrg;
        end
        else if model='koreksi' then
        begin
          {with DM.QuCari do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select sum(Qnt2) Qnt2, B.Sat2, sum(Qnt) Qnt, B.Sat1 from dbSuratJlnDet A ');
            SQL.Add('left outer join dbBarang B on B.KodeBrg=A.KodeBrg ');
            SQL.Add('where A.NOSO='+QuotedStr(NoBukti.Text)+' and A.UrutSO='+IntToStr(QuBeliUrut.AsInteger));
            SQL.Add('group by B.Sat1, B.Sat2 ');
            Open;
          end;
          if not DM.QuCari.IsEmpty then
          begin
            if (DM.QuCari.FieldByName('Qnt').AsFloat)>Qnt.AsFloat then
            begin
              MessageDlg('Sudah ada Surat Jalan '+FormatFloat(',0',DM.QuCari.FieldByName('Qnt').AsFloat)+' '+DM.QuCari.FieldByName('Sat1').AsString+', Qnt SO tidak boleh kurang dari nilai tersebut',
              mtInformation,[mbOK],0);
              ActiveControl:=Qnt2;
            end
            else
            begin
              UpdateDataBeli('U','BL');
              SpeedButton1.Click;
            end;
          end else }
          begin
            UpdateDataBeli('U','BL');
            SpeedButton1.Click;
          end;
        end
      end else
      begin
        ShowMessage('Kode barang tidak boleh kosong !');
        ActiveControl:=Kodebrg;
      end;
    end
    else
    begin
      ShowMessage('Periode Sudah Di Kunci !');
      if model='Koreksi' then
         ActiveControl:=Qnt
      else
       ActiveControl:=Qnt;
    end;
  end
  else
   ShowMessage('Tanggal Periode Tidak Sesuai !');
end;

procedure TFrRevSO.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
  ClearPanelDetail;
end;

procedure TFrRevSO.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
   QuBeli.Sort:=AFieldName;
end;

procedure TFrRevSO.FormDestroy(Sender: TObject);
begin
  FrRevSO:=nil;
end;

procedure TFrRevSO.BPrevClick(Sender: TObject);
begin
  Hapus_Daftar_Nomor_User('SO',IDUser);
  ActiveControl:=TANGGAL;
  FrMainSORev.QuNavigator.Locate('nobukti',FrMainSORev.QuMaster.fieldbyname('nobukti').AsString,[LOC,LOP]);
  FrMainSORev.QuNavigator.Prior;
  FrMainSORev.QuMaster.Locate('nobukti',FrMainSORev.QuNavigator.fieldbyname('nobukti').AsString,[LOC,LOP]);

  FormShow(self);
end;

procedure TFrRevSO.BNextClick(Sender: TObject);
begin
  Hapus_Daftar_Nomor_User('SO',IDUser);
  ActiveControl:=Tanggal;
  FrMainSORev.QuNavigator.Locate('nobukti',FrMainSORev.QuMaster.fieldbyname('nobukti').AsString,[LOC,LOP]);
  FrMainSORev.QuNavigator.Next;
  FrMainSORev.QuMaster.Locate('nobukti',FrMainSORev.QuNavigator.fieldbyname('nobukti').AsString,[LOC,LOP]);
  FormShow(self);
end;

procedure TFrRevSO.dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
  ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
  var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
  var ADone: Boolean);
begin
    if ANode.HasChildren then
      Exit;

    if not AFocused then
    begin
      if ANode.Index mod 2 =0 then
       AColor:=clWhite
    else
       AColor:=$00E1FFFF;
    end;

end;

procedure TFrRevSO.DiskonChange(Sender: TObject);
begin
   HitungRincian;
end;

procedure TFrRevSO.SpeedButton8Click(Sender: TObject);
begin
  frxReport1.LoadFromFile(currDir+'Nota\NotaMarketingSO.fr3');
  frxReport1.DesignReport;
end;

procedure TFrRevSO.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
   if comparetext(varname,'Terbilang')=0 then
      value := '# '+TempCode+' #';
   if comparetext(varname,'Total')=0 then
      value := GrandTotal.AsFloat;
   if comparetext(varname,'Tothal')=0 then
      value := tothal;
   if CompareText(varName,'iduser')=0 then
        value:=IDUser;
end;

procedure TFrRevSO.NoUrutChange(Sender: TObject);
begin
  if mValid then
  begin
    if Length(NoUrut.Text)=5 then
    begin
      Konfig('SO',Nourut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date);
      NOBUKTI.Text := F1+Separator+F2+Separator+F3+Separator+F4;
    end
    else
      ActiveControl := nourut;
  end;
end;

procedure TFrRevSO.KodeSlsExit(Sender: TObject);
begin
  if mValid Then
  begin
    if length(KodeSls.Text)=0 then TampilIsiSales else
    begin
      if mUbahHd then
      begin
        if DataBersyarat('select A.KeyNik KodeSls, B.Nama NamaSls '+
              ' from dbSalesCustomer a'+
              '      Left Outer Join dbKaryawan b on b.Keynik=A.Keynik '+
              'where A.KodecustSupp='+QuotedStr(KodeCust.Text)+
              ' and (A.keynik Like :0 or B.Nama Like :1) '+
              ' order by A.KeyNik',[KodeSls.Text,KodeSls.text],Dm.Qucari)=true then
        begin
          with DM.QuCari do
          begin
             KodeSls.Text:=fieldbyname('KodeSls').AsString;
             LNamaSls.Caption:='[ '+fieldbyname('NamaSls').AsString+' ]';
          end;
        end
        else TampilIsiSales;
      end;
    end;
  end;
end;

procedure TFrRevSO.QntEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrRevSO.TANGGALEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrRevSO.DiscPExit(Sender: TObject);
var xNilaiDiscExit: Real;
begin
   if mValid then
  begin
    xNilaiDiscExit:=(Sender as TPBNumEdit).Value;
    {if FormatFloat(',0.0000',mNilaiDiscEnter)<>FormatFloat(',0.0000',xNilaiDiscExit) then
    begin
      DiscRp.Value:=ProsesDiskon(Sender);
      DiskonTotal:=ProsesDiskon(Sender);
    end;  }
    DiscRp.Value:=ProsesDiskon(Sender);
      DiskonTotal:=ProsesDiskon(Sender);
  end;
end;

procedure TFrRevSO.KodeBrgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrRevSO.TampilanQntSatuan(pNilai: Boolean);
begin
  if pNilai then
  begin
    Qnt.Visible:=True;
    Qnt2.Visible:=False;
  end else
  begin
    Qnt.Visible:=False;
    Qnt2.Visible:=True;
  end;
  Qnt2.Visible := pNilai;
  Qnt.Visible := not pNilai;
  Qnt1.Visible := pNilai;

  Nosat.Visible:=Qnt.Visible;
  LSatuan.Visible:=Qnt.Visible;
  LSatuan2.Visible:=Qnt2.Visible;
  Qnt1.Visible:=Qnt2.Visible;
  LSatuan1.Visible:=Qnt2.Visible;
end;

procedure TFrRevSO.IsiSatuan;
begin
  LNamaSat.Caption:=IsiSatuanBrgJual(KodeBrg.Text, Kodecust.Text, mNamaSatuan, mIsiSatuan, mHargaBrg);
end;

procedure TFrRevSO.KodeBrgExit(Sender: TObject);
begin
  if mValid Then
  begin
     if length(KodeBrg.Text)=0 then TampilIsiBarang else
        begin
          if DataBersyarat('select a.Kodebrg, a.NamaBrg, a.Isi2, a.nFix from Dbbarang a '+#13+
                           'where a.isaktif=1  and (a.kodebrg =:0) order by a.Kodebrg',
                           [KodeBrg.Text],Dm.Qucari)=true then
          begin
            with DM.QuCari do
            begin
             KodeBrg.Text:=fieldbyname('KodeBrg').AsString;
             LNamaBrg.Caption:='[ '+fieldbyname('NamaBrg').AsString+' ]';
             mIsiBrg := fieldbyname('Isi2').AsFloat;
             nFix := fieldbyname('nFix').AsBoolean;
             //Qnt.AsFloat:=fieldbyname('QntSaldo').AsFloat;
             //Qnt2.AsFloat:=fieldbyname('Qnt2Saldo').AsFloat;
             //Nosat2.AsInteger:=2;
             ActiveControl:=Qnt;
            end;
          end
          else TampilIsiBarang;
        end;
      IsiSatuan;  
      {TampilanQntSatuan(nFix);
      if Qnt.CanFocus then
        Qnt.SetFocus;
      if Qnt2.CanFocus then
        Qnt2.SetFocus;}
  end;
end;

procedure TFrRevSO.NoPesananExit(Sender: TObject);
begin
  {if mValid=True then
  begin
      if Length(NoSPB.Text)=0 then TampilIsiNoSPB else
      begin
        if DataBersyarat('select NoBukti from dbSPB where NoBukti=:0', [NoSPB.Text], DM.QuCari)=True then
          begin
            NoSPB.Text:=DM.QuCari.FieldByName('NoBukti').AsString;
          end else
            TampilIsiNoSPB;
      end;
  end;}
end;

procedure TFrRevSO.TanggalChange(Sender: TObject);
begin
  mUbahHd:=True;
  if Sender=Tipe then
  begin
    if TIPE.ItemIndex = 0 then Hari.Value:=0;
  end;
  if (Sender=Valas) or (Sender=Kurs) or (Sender=PPN) then
    mUbahHdDet:=True;
end;

procedure TFrRevSO.DiskonPEnter(Sender: TObject);
begin
  mNilaiEnter:=DiskonP.Value;
  FrRevSO.KeyPreview:=False;
end;

procedure TFrRevSO.DiskonPExit(Sender: TObject);
begin
  FrRevSO.KeyPreview:=True;
  if FormatFloat(',0.00',mNilaiEnter)<>FormatFloat(',0.00',DiskonP.Value) then
  begin
    mTipeDisc:=0;
    UpdateDiskon;
  end;
  TampilLabelDiskon(mTipeDisc,LDiskonP,LDiskonRp);
end;

procedure TFrRevSO.DiskonRpEnter(Sender: TObject);
begin
  FrRevSO.KeyPreview:=False;
end;

procedure TFrRevSO.DiskonRpExit(Sender: TObject);
begin
  FrRevSO.KeyPreview:=True;
  if QuBeli.IsEmpty then mNilaiEnter:=0 else
  begin
    if mTipeDisc=0 then mNilaiEnter:=QuBeliTotDiskon.AsCurrency
      else mNilaiEnter:=QuBeliDiscRp.Value;
  end;
  if mNilaiEnter<>DiskonRp.Value then
  begin
    mTipeDisc:=1;
    UpdateDiskon;
  end;
  TampilLabelDiskon(mTipeDisc,LDiskonP,LDiskonRp);
end;

procedure TFrRevSO.DiskonRpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Escape) or (Key=VK_Return) then
  begin
    ActiveControl:=dxDBGrid1;
  end;
end;

procedure TFrRevSO.NoAlamatKirimExit(Sender: TObject);
var xNoAlamatKirim: Integer;
begin
  if mValid Then
  begin
    if NoAlamatKirim.Text<>'-' then
    begin
      try
        xNoAlamatKirim:=StrToInt(NoAlamatKirim.Text);
      except
        xNoAlamatKirim:=0;
      end;
      if length(NoAlamatKirim.Text)=0 then TampilIsiAlamatKirim else
      begin
        if mUbahHd then
        begin
          if DataBersyarat('Select Nomor, Alamat AlamatKirim ' +
            'from vwAlamatCust a '+
            'where KodeCustsupp=:0 and Nomor=:1 Order by Nomor',[KodeCust.Text,xNoAlamatKirim],Dm.Qucari)=true then
          begin
            with DM.QuCari do
            begin
               NoAlamatKirim.Text:=fieldbyname('Nomor').AsString;
               LAlamatKirim.Caption:=fieldbyname('AlamatKirim').AsString;
            end;
          end
          else TampilIsiAlamatKirim;
        end;
      end;
    end;
  end;
end;

procedure TFrRevSO.KodeExpExit(Sender: TObject);
begin
  if mValid Then
  begin
    if length(KodeExp.Text)=0 then TampilIsiEkspedisi else
    begin
      if mUbahHd then
      begin
        if DataBersyarat('Select KodeExp, NamaExp from dbExpedisi '+
                        'where KodeExp=:0 Order by KodeExp',[KodeExp.Text],Dm.Qucari)=true then
        begin
          with DM.QuCari do
          begin
             KodeExp.Text:=fieldbyname('KodeExp').AsString;
             LNamaExp.Caption:='[ '+fieldbyname('NamaExp').AsString+' ]';
          end;
        end
        else TampilIsiEkspedisi;
      end;
    end;
  end;
end;

procedure TFrRevSO.KodeGdgExit(Sender: TObject);
begin
  if mValid Then
  begin
     if Length(KodeGdg.Text)=0 then TampilIsiGudang else
     begin
        if DataBersyarat('select * from dbGudang where KodeGdg=:0',[KodeGdg.Text], DM.QuCari)=True then
        begin
          KodeGdg.Text:=DM.QuCari.fieldbyname('KodeGdg').AsString;
        end
        else TampilIsiGudang;
     end;
  end;
end;

procedure TFrRevSO.NoUrutEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrRevSO.Qnt2Enter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrRevSO.Qnt2Change(Sender: TObject);
begin
  if mValid then
  begin
    Qnt1.Value:=Qnt2.Value*mIsiBrg;
  end;
end;

procedure TFrRevSO.QntChange(Sender: TObject);
begin
  if (Qnt.MaxValue<>0) and (Qnt.Value>Qnt.MaxValue) then
  begin
    ShowMessage('Maksimum Qnt='+FormatFloat(',0.00',Qnt.MaxValue)+' !');
    Qnt.Value:=Qnt.MaxValue;
    ActiveControl:=Qnt;
  end;
end;

procedure TFrRevSO.SpeedButton2Click(Sender: TObject);
begin
  frxDBCetak.DataSet.Close;
  frxDBCetak.DataSet:=Qudetail;
  with Qudetail do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select 	A.NoBukti, A.NOURUT, A.Tanggal, A.KodeCUST, C.NamaCUST, C.Alamat, J.AlamatKirim, ');
    SQL.Add('	A.NOSPB, A.KodeGdg, A.Keterangan, A.Catatan, ');
    SQL.Add('	B.Urut, B.UrutSPB, B.KodeBrg, H.NamaBrg, B.Qnt, H.Sat1 Satuan, ');
    SQL.Add('        B.Qnt2, H.Sat2 SatuanRoll, A.KodeExp, M.NamaExp, ');
    SQL.Add('	case when B.Qnt2=0 then B.Qnt else B.Qnt2 end QntTampil, ');
    SQL.Add('	case when B.Qnt2=0 then H.Sat1 else H.Sat2 end SatuanTampil, ');
    SQL.Add(' T.QntTotTampil, case when T.QntTotTampil is null then null else case when B.Qnt2=0 then H.Sat1 else H.Sat2 end end SatuanTotTampil ');
    SQL.Add('From dbSO A ');
    SQL.Add('Left Outer join dbSODet B on B.NoBukti=a.NoBukti ');
    SQL.Add('Left Outer Join vwBrowsCustomer C on c.KodeCust=a.KodeCust ');
    SQL.Add('left outer join dbSalesman F on F.KodeSls=A.KodeSls ');
    SQL.Add('Left Outer Join vwSatuanBrg H on H.KodeBrg=B.KodeBrg ');
    SQL.Add('left outer join vwAlamatCust J on J.KodeCust=A.KodeCust and J.Nomor=A.NoAlamatKirim ');
    SQL.Add('left outer join dbExpedisi M on M.KodeExp=A.KodeExp ');
    SQL.Add('left outer join (select Y.KodeBrd, Y.KodeSize, max(X.Urut) Urut, ');
    SQL.Add('sum(isnull(case when X.Qnt2=0 then X.Qnt else X.Qnt2 end,0)) QntTotTampil ');
    SQL.Add('from dbSODet X left outer join vwSatuanBrg Y on Y.KodeBrg=X.KodeBrg ');
    SQL.Add('where X.NoBukti='+QuotedStr(NoBukti.Text));
    SQL.Add('group by Y.KodeBrd, Y.KodeSize) T on T.KodeBrd=H.KodeBrd and T.KodeSize=H.KodeSize and T.Urut=B.Urut ');
    SQL.Add('where A.NoBukti='+QuotedStr(NoBukti.Text));
    SQL.Add('order by H.KodeSize, A.NoBukti, B.Urut ');
    Open;
  end;
  frxDBCetak.Close;
  frxDBCetak.Open;
  frxReport1.LoadFromFile(currDir+'Nota\OutSOUntukSJ.fr3');
  frxReport1.ShowReport;
  ActiveControl:=dxDBGrid1;
end;

procedure TFrRevSO.SpeedButton3Click(Sender: TObject);
begin
  frxReport1.LoadFromFile(currDir+'Nota\OutSOUntukSJ.fr3');
  frxReport1.DesignReport;
end;

procedure TFrRevSO.NoSatEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrRevSO.NoSatExit(Sender: TObject);
begin
  if mValid then
  begin
    IsiSatuan;
    Harga.Value := mHargaBrg[NoSat.AsInteger];
    //mIsiBrg := mIsiSatuan[NoSat.AsInteger];
  end;
end;

procedure TFrRevSO.islengkapClick(Sender: TObject);
begin
  mUbahHd:=True;
  if (CekPeriode(IDUser,TANGGAL.Date)=False) then
      Abort;
    UpdatedbBeli;
end;

procedure TFrRevSO.PPNClick(Sender: TObject);
begin
  if mValid then
  begin
    mUbahHd := True; mUbahHdDet := True;
    if (CekPeriode(IDUser,TANGGAL.Date)=False) then
      Abort;
    UpdatedbBeli;
  end;
end;

procedure TFrRevSO.ValasEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrRevSO.TampilIsiValas;
begin
  KodeBrows:=11001;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=Valas.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    with FrBrows.QuBrows do
    begin
       Valas.Text:=fieldbyname('KodeVls').AsString;
       Kurs.Value:=fieldbyname('Kurs').AsCurrency;
       if UpperCase(Valas.Text)='IDR' then
          Kurs.ReadOnly:=true
       else
          Kurs.ReadOnly:=false;
    end;
  end
  else
    ActiveControl:=Valas;
end;

procedure TFrRevSO.ValasExit(Sender: TObject);
begin
  if mValid Then
  begin
    if length(Valas.Text)=0 then TampilIsiValas else
    begin
      if MyFindField('dbValas','KodeVls',Valas.Text)=true then
      begin
        with DM.QuCari do
        begin
           Valas.Text:=fieldbyname('KodeVls').AsString;
           Kurs.Value:=fieldbyname('Kurs').AsCurrency;
           if UpperCase(Valas.Text)='IDR' then
              Kurs.ReadOnly:=true
           else
              Kurs.ReadOnly:=false;
        end;
      end
      else TampilIsiValas;
    end;
  end;
end;

procedure TFrRevSO.frxReport1AfterPrintReport(Sender: TObject);
begin
 NilaiCetak('CetakKe','DBSO',Nobukti.Text);
end;

procedure TFrRevSO.SpeedButton4Click(Sender: TObject);
begin
  Panel5.Visible := True;
  with QuLastPrices do
  begin
    close;
    Prepared;
    Parameters[0].Value := KodeBrg.Text;
    Parameters[1].Value := KodeCust.Text;
    Open;
  end;
end;

procedure TFrRevSO.Panel7Click(Sender: TObject);
begin
  Panel5.Visible := false;
  QuLastPrices.Close;
end;

end.
