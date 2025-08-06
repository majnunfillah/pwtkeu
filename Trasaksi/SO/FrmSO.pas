unit FrmSO;

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
  TFrSO = class(TForm)
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
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Harga: TPBNumEdit;
    KodeBrg: TEdit;
    DiscP: TPBNumEdit;
    DiscRp: TPBNumEdit;
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
    Qnt3: TPBNumEdit;
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
    cb: TCheckBox;
    QuBeliIsLengkap: TBooleanField;
    NoSat: TPBNumEdit;
    Qnt1: TPBNumEdit;
    LSatuan1: TLabel;
    Label3: TLabel;
    QuBeliNoPesanan: TStringField;
    QuBeliTglKirim: TDateTimeField;
    Label15: TLabel;
    Label16: TLabel;
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
    DiscPDet2: TPBNumEdit;
    Label41: TLabel;
    DiscPDet3: TPBNumEdit;
    Label40: TLabel;
    DIscPDet4: TPBNumEdit;
    Label39: TLabel;
    DiscPDet5: TPBNumEdit;
    Label18: TLabel;
    QuBeliDiscp2: TBCDField;
    QuBeliDiscp3: TBCDField;
    QuBeliDiscp4: TBCDField;
    QuBeliDiscp5: TBCDField;
    QuLastPricesDiscp1: TBCDField;
    QuLastPricesDiscp2: TBCDField;
    QuLastPricesDiscp3: TBCDField;
    QuLastPricesDiscp4: TBCDField;
    QuLastPricesDiscp5: TBCDField;
    tvPricesDBBandedColumn1: TcxGridDBBandedColumn;
    tvPricesDBBandedColumn2: TcxGridDBBandedColumn;
    tvPricesDBBandedColumn3: TcxGridDBBandedColumn;
    tvPricesDBBandedColumn4: TcxGridDBBandedColumn;
    tvPricesDBBandedColumn5: TcxGridDBBandedColumn;
    tvPricesDBBandedColumn6: TcxGridDBBandedColumn;
    QuLastPricesDiscTOt: TBCDField;
    Tanggal: TDateEdit;
    TglKirim: TDateEdit;
    MasaBerlaku: TDateEdit;
    LNamaBrg: TRxLabel;
    LNamaSat: TRxLabel;
    Numerator: TCheckBox;
    BhnKertas: TMemo;
    Label21: TLabel;
    TCetak: TMemo;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Verifikasi: TMemo;
    Sekuriti: TMemo;
    HargaFix: TPBNumEdit;
    QuBelinumerator: TBooleanField;
    QuBeliBahanKertas: TStringField;
    QuBeliTeknikCetak: TStringField;
    QuBeliSekuriti: TStringField;
    QuBeliFinsihing: TStringField;
    BPrev: TSpeedButton;
    BNext: TSpeedButton;
    CBFix: TCheckBox;
    QuBeliiscetakkitir: TBooleanField;
    Pemungut: TCheckBox;
    Logo: TCheckBox;
    QuBelilogo: TBooleanField;
    Urut1: TEdit;
    Urut2: TEdit;
    Label33: TLabel;
    Label35: TLabel;
    QuBeliurutnumerator1: TStringField;
    QuBeliurutnumerator2: TStringField;
    RxLabel1: TRxLabel;
    Label31: TLabel;
    KodeSubCust: TEdit;
    QuBelikodesubcustomer: TStringField;
    QuBelinamasubcustomer: TStringField;
    LNamaSubCustomer: TLabel;
    RxLabel2: TRxLabel;
    Qnt2: TPBNumEdit;
    Label34: TLabel;
    UkuranKertas: TMemo;
    Norkap: TEdit;
    Label36: TLabel;
    QuBeliUkuranKertas: TStringField;
    QuBeliNoBukti: TStringField;
    Label43: TLabel;
    NoDesain: TEdit;
    Label44: TLabel;
    Jenis: TComboBox;
    QuBelijenisso: TWordField;
    QuBelinodesain: TStringField;
    Orientasi: TComboBox;
    Label45: TLabel;
    QuBeliOrientasi: TWordField;
    Ppnp: TPBNumEdit;
    Label46: TLabel;
    QuBelippnp: TBCDField;
    CPpnP: TComboBox;
    islengkap: TCheckBox;
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
    procedure Qnt3Enter(Sender: TObject);
    procedure Qnt3Change(Sender: TObject);
    procedure QntChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure NoSatEnter(Sender: TObject);
    procedure NoSatExit(Sender: TObject);
    procedure cbClick(Sender: TObject);
    procedure PPNClick(Sender: TObject);
    procedure ValasEnter(Sender: TObject);
    procedure ValasExit(Sender: TObject);
    procedure frxReport1AfterPrintReport(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure DiscPEnter(Sender: TObject);
    procedure tvPricesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeSlsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NumeratorExit(Sender: TObject);
    procedure BhnKertasExit(Sender: TObject);
    procedure TCetakExit(Sender: TObject);
    procedure SekuritiExit(Sender: TObject);
    procedure VerifikasiExit(Sender: TObject);
    procedure CatatanExit(Sender: TObject);
    procedure KodeSubCustExit(Sender: TObject);
    procedure UkuranKertasexit(Sender: TObject);
    procedure BhnKertasChange(Sender: TObject);
    procedure JenisEnter(Sender: TObject);
    procedure islengkapExit(Sender: TObject);
    procedure CPpnPExit(Sender: TObject);

  private
    { Private declarations }
    mSat_1, mSat_2, mStrMsg: String;
    mUrutSPB, mTipeDisc: Integer;
    mNilaiEnter, mIsiBrg: Real;
    mUbahHd, mUbahHdDet, nFix: Boolean;
    mValidQnt2: Boolean;
    mNamaSatuan: TNamaSatuanBrg;
    mIsiSatuan: TIsiSatuanBrg;
    mHargaBrg : THargaBrg;
    xbhnkertas : string;
    function  CekAdaSuratJln(pNOSO: String): Boolean;
    function  CekNobuktiSo(pNOSO: String): Boolean;
    function  CekHargaSo(pNOSO: String): Boolean;
    procedure UpdateDiskon;
    procedure TampilIsiCustomer;
    procedure TampilIsiAlamatKirim;
    procedure TampilIsiNoSPB;
    procedure TampilIsiSales;
    procedure TampilIsiEkspedisi;
    procedure TampilIsiGudang;
    procedure TampilIsiBarang;
    procedure TampilSubCustomer;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure IsiNoBuktiBaru;
    procedure TampilDataUpdateDiskon(No_Bukti:String);
    procedure TampilanQntSatuan(pNilai: Boolean);
    procedure IsiSatuan;
    procedure TampilIsiValas;
  public
    { Public declarations }
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel,    xModalKoreksi,CRNomor : Boolean;
    mINSGdgSO, mINSBrgSO: String;
    tmpBukti,xKodeBonus:string;
    mNilaiDiscEnter: Real;
    DiskonTotal:real;
    sishal, tothal : integer ;
  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrSO: TFrSO;
  mValid,mExit,xIsPpn: Boolean;
  Sat:String;
  mUrut,mUrutSO,IsTutup,mNosat,mPosisi,IsPPN :Integer;
  TipeTrans,PlusPPN,Nomor,Model,XCUstSupp:String;
  mBulan,mTahun:string;
  Biaya,IsiBrg,potongan,NDiskon,NSubTotal,NDPP,NPPN,NNet:Real;
  YY,MM,DD : Word;
  S:array[0..255]of char;
  bm,GBM : TBookmark;

implementation
uses FrmBrows, MyProcedure, MyModul, FrmMainSO;
{$R *.DFM}

function  TFrSO.CekAdaSuratJln(pNOSO: String): Boolean;
var xNoSuratJln: String;
    i: Integer;
 xStrMsg, xStrMsgDet: String;
begin
{  xNoSuratJln:='';
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
    MessageDlg('Sales Order (SO) tidak dapat dihapus, sudah ada SPK'+chr(13)+xNoSuratJln,
    mtInformation,[mbOK],0);
  end;   }
  //Result := False;
  xStrMsg:='';
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select  Noso from dbSPK ');
    SQL.Add('where  Noso='+QuotedStr(QuBeliNoBukti.AsString));
    Open;
    xStrMsgDet:='';
    if not IsEmpty then
    begin
      while not Eof do
      begin
        if xStrMsgDet='' then xStrMsgDet:=FieldByName('noso').AsString
          else xStrMsgDet:=xStrMsgDet+', '+FieldByName('noso').AsString;
        Next;
      end;
      if xStrMsg='' then
        xStrMsg:=xStrMsg+' No. Bukti RPP : '+xStrMsgDet
      else xStrMsg:=xStrMsg+chr(13)+'Retur Barang No. Bukti : '+xStrMsgDet;
    end;
  end;
  mStrMsg:=xStrMsg;
  if xStrMsg='' then
  begin
    Result:=False
  end else
  begin
    Result:=True;
  end;
end;

function  TFrSO.CekHargaSo(pNOSO: String): Boolean;
var xNoSuratJln: String;
    i: Integer;
 xStrMsg, xStrMsgDet: String;
begin
  xStrMsg:='';
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select KODEBRG , MAX(HARGA ) Harga from dbsodet a ');
    SQL.Add       (' left outer join DBSO b on b.NOBUKTI =a.NOBUKTI  ');
    SQL.Add('where  tanggal='+QuotedStr(QuBeliNoBukti.AsString));
    SQL.Add('group by KODEBRG ');
    Open;
    xStrMsgDet:='';
    if not IsEmpty then
    begin
      while not Eof do
      begin
        if xStrMsgDet='' then xStrMsgDet:=FieldByName('noso').AsString
          else xStrMsgDet:=xStrMsgDet+', '+FieldByName('noso').AsString;
        Next;
      end;
      if xStrMsg='' then
        xStrMsg:=xStrMsg+' No. Bukti RPP : '+xStrMsgDet
      else xStrMsg:=xStrMsg+chr(13)+'Retur Barang No. Bukti : '+xStrMsgDet;
    end;
  end;
  mStrMsg:=xStrMsg;
  if xStrMsg='' then
  begin
    Result:=False
  end else
  begin
    Result:=True;
  end;
end;


function  TFrSO.CekNobuktiso(pNOSO: String): Boolean;
var xNoSuratJln: String;
    i: Integer;
 xStrMsg, xStrMsgDet: String;
begin
  xStrMsg:='';
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    sql.add( 'select top 1 dbo.ceknomorso(right('+quotedstr(nobukti.text)+',6)) nilai from DBSO order by TANGGAL desc');
    Open;
    if fieldbyname('nilai').AsBoolean then   //
    begin
      Result:=False
    end else
    begin
      Result:=True;
    end;

  end;
end;

procedure TFrSO.TampilIsiCustomer;
begin
  KodeBrows:=1107019;
  Application.CreateForm(TFrBrows, FrBrows);

  FrBrows.Nokira:=KodeSls.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    with FrBrows.QuBrows do
    begin
       KodeCust.Text:=fieldbyname('KodecustSupp').AsString;
       LnamaSupp.Caption:=fieldbyname('NamaCustSupp').AsString;
       LAlamatSupp.Caption:=fieldbyname('Alamat').AsString;
       Hari.AsInteger:=FieldByName('DueDate').AsInteger;
       IsPPN:=fieldbyname('PPN').AsInteger;
       XCUstSupp:=fieldbyname('KodeCustSupp').Asstring;
       CRNomor:=True;
       {
       NoAlamatKirim.Text :='0';
       mValid := True;
       NoAlamatKirimExit(NoAlamatKirim);
       mValid:=false;
       }
    end;
  end
  else
    ActiveControl:=KodeCust;
end;

procedure TFrSO.TampilIsiAlamatKirim;
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

procedure TFrSO.TampilIsiNoSPB;
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

procedure TFrSO.TampilIsiSales;
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

procedure TFrSO.TampilIsiEkspedisi;
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

procedure TFrSO.TampilIsiGudang;
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

procedure TFrSO.TampilIsiBarang;
begin
  KodeBrows:=9131;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:='%'+KodeBrg.Text+'%';
  FrBrows.EditFilter.Text:= KodeBrg.Text;
  FrBrows.NoKira := copy(KodeCust.Text,4,10);
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

procedure TFrSO.TampilSubCustomer;
begin
  KodeBrows:=918;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:='%'+KodeSubCust.Text+'%';
  FrBrows.EditFilter.Text:= KodeSubCust.Text;
  FrBrows.NoKira := copy(KodeSubCust.Text,4,10);
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.IsEmpty=False) then
  begin
    with FrBrows.QuBrows do
    begin
      KodeSubCust.Text:=fieldbyname('KodeSubCustomer').AsString;
      LNamaSubCustomer.Caption:='[ '+fieldbyname('Namasubcustomer').AsString+' ]';
      //ActiveControl:=Q;
    end;
  end
  else
    ActiveControl:=KodeSubCust;
end;


procedure TFrSO.TampilTombolDetail(pNilai: Boolean);
begin
  //PanelShow1.Visible:=not pNilai;
  //PanelShow2.Visible:=not pNilai;
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  Panel3.Enabled:=pNilai;
end;

procedure TFrSO.UpdateDiskon;
begin
    if (not QuBeli.IsEmpty) then
    begin
      with QuUpdatedbBeli do
      begin
         Close;
         Sql.Clear;
         SQL.Add('Update dbSO');
         SQL.Add('set TIPEDISC=:0, DISC=:1, DISCRP=:2,kodesubcustomer=:3,NoDesain=:4,JenisSO=:5 ');
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
         Parameters[3].Value:=KodeSubCust.Text;
         Parameters[4].Value:=KodeSubCust.Text;
         Parameters[5].Value:=Jenis.ItemIndex;

         ExecSQL;
         Close;
         SQL.Clear;
         SQL.Add('exec sp_UpdateSO '+QuotedStr(NoBukti.Text));
         ExecSQL;
      end;
      TampilData(NoBukti.Text);
    end;
end;

Procedure TFrSO.HitungRincian;
begin
  DiskonP.Value:=QuBeliDisc.AsFloat;
  DiskonRp.Value:=QuBeliDiskon.AsFloat;
  DPP.Value:=QuBeliTotalDPP.AsFloat;
  Pajak.Value:=QuBeliTotalPPn.AsFloat;
  GrandTotal.Value:=QuBeliTotalNetto.AsFloat;
end;

procedure TFrSO.TampilData(No_Bukti:String);
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

procedure TFrSO.TampilDataUpdateDiskon(No_Bukti:String);
begin
  mNilaiEnter:=DiskonRp.Value;
  TampilData(NOBUKTI.Text);
  if mTipeDisc=1 then
  begin
    DiskonRp.Value:=mNilaiEnter;
    UpdateDiskon;
  end;
end;

procedure TFrSO.IsiNoBuktiBaru;
begin
 // NoUrut.Enabled:=True;
  DecodeDate(Date,YY,MM,DD);
  If DayOfTheMonth(Date)<=DD then
     DD:=DayOfTheMonth(date);
  Try
    TANGGAL.Date := EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),DD);
  Except
    TANGGAL.Date := EndOfAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln))
  end;
  TglKirim.Date := Tanggal.Date;
  MasaBerlaku.Date := Tanggal.Date+90;
  if IsPPN=0 then
  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal.Date,Xcustsupp,False)
  else if IsPPN=1 then
  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal.Date);
  NoUrut.Text := NomorBukti;
  NOBUKTI.Text := Nomor;
end;

// PROCEDURE DAN FUNCTION PRIBADI

function TFrSO.prosesdiskon(Sender:TObject): real;
var price,disc1,disc2,disc3,disc4,disc5:real;
begin
   {xPrice:=Harga.AsFloat;
   xDiscP1:=0;
   if xPrice<>0 then
   begin
      if Sender<>DiscRp then
      begin
         if DiscP.AsFloat<>0 then
         begin
            xDiscP1:=xPrice*(DiscP.AsFloat/100);
            DiscRp.Value:=xDiscP1;
         end else
            DiscRp.Value:=0;
      end else
      begin
         if DiscRp.AsFloat<>0 then
         begin
            xDiscP1:=DiscRp.AsFloat;
            DiscP.Value:=(DiscRp.AsFloat/xPrice)*100;
         end else
            DiscP.Value:=0;
      end;
      xPrice:=xPrice-xDiscP1;
   end;
   Result:=Harga.AsFloat-xPrice;    }
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

procedure TFrSO.BatalTransaksi;
begin
  ActiveControl:=NoBukti;
  if FrMainSO.ModalKoreksi = False then IsiNoBuktiBaru else
  Begin
    NOBUKTI.Text := FrMainSO.QuMaster.FieldByname('Nobukti').AsString;
    IsiNoBuktiBaru;
    Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,isMax);
    TampilData(NOBUKTI.Text);
    AmBilDataBeli;
    NoUrut.Text := NomorBukti;
  end;
end;

Function TFrSO.CheckFormMaster:boolean;
begin
  Result := False;
  if ((Length(KodeCust.Text)<>0)) and ( (Length(Valas.Text)<>0)) And
     ( (Length(KodeSls.Text)<>0))  then //and (Length(NoAlamatKirim.Text)<>0)
      Result := True
  else
      Result := False;
end;

procedure TFrSO.UpdatedbBeli;
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
       SQL.Add('NoPesanan=:15, TglKirim=:16, MasaBerlaku=:17,numerator=:18, BahanKertas=:19,TeknikCetak=:20,Sekuriti=:21,Finsihing=:22 ');
       SQL.Add(',logo=:23 ,UrutNumerator1=:24,UrutNumerator2=:25,kodesubcustomer=:26,UkuranKertas=:27,nodesain=:28,Jenisso=:29,Orientasi=:30 ');
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
       {if IsPPN=1 then
       Parameters[8].Value := PPN.ItemIndex+1
       Else if IsPPN=0 then
       Parameters[8].Value := PPN.ItemIndex;}
       Parameters[8].Value := 2;
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
       if numerator.Checked  then
          Parameters[18].Value:=1
       else
          Parameters[18].Value:=0;
       Parameters[19].Value:=BhnKertas.Text;
       Parameters[20].Value:=TCetak.Text;
       Parameters[21].Value:=Sekuriti.Text;
       Parameters[22].Value:=Verifikasi.Text;
       if numerator.Checked  then
          Parameters[23].Value:=1
       else
          Parameters[23].Value:=0;
       Parameters[24].Value:=Urut1.Text;
       Parameters[25].Value:=Urut2.Text;
       Parameters[26].Value:=kodesubcust.Text;
       Parameters[27].Value:=UkuranKertas.Text;
       Parameters[28].Value:=Nodesain.Text;
       Parameters[29].Value:=jenis.ItemIndex;
       Parameters[30].Value:=orientasi.ItemIndex;
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

  begin
     with dm.QuCari do
     begin
       Close;
       Sql.Clear;
       SQL.Add('Update dbSOdet');
       SQL.Add('Set isupdate=1, ppnp=:0 ');
       sql.add (' Where NoBukti='+QuotedStr(NoBukti.Text));
       Prepared;
       //Parameters[0].Value:=mTipeDisc;
       if islengkap.Checked then
          Parameters[0].Value:=12
        else
      Parameters[0].Value:=PpnP.Value;
      // parameters[1].Value:=islengkap.Checked;
       ExecSQL;

     end;
     with dm.QuCari do
     begin
       Close;
       Sql.Clear;
       SQL.Add('Update dbSO');
       SQL.Add('Set islengkap =:0 ');
       sql.add (' Where NoBukti='+QuotedStr(NoBukti.Text));
       Prepared;
       parameters[0].Value:=islengkap.Checked;
       ExecSQL;

     end;
  end;

end;

procedure TFrSO.ClearPanelDetail;
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
   DiscPDet2.Value:=0;
   DiscPDet3.Value:=0;
   DIscPDet4.Value:=0;
   DiscPDet5.Value:=0;
   DiscRp.Value:=0;
   Qnt2.Enabled:=True;
   Qnt.Enabled:=True;
   Qnt2.MaxValue:=0;
   Qnt.MaxValue:=0;
   CBFix.Checked :=false;
end;

procedure TFrSO.RefreshAll;
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
   PPN.ItemIndex:=2;
   TIPE.ItemIndex:=0;
   Hari.Value:=0;
   mTipeDisc:=0;
   ClearPanelDetail;
   mUbahHd:=False; mUbahHdDet:=False;
   TampilLabelDiskon(mTipeDisc,LDiskonP,LDiskonRp);
end;

procedure TFrSO.UpdateDataBeli(Choice:Char;Kodet:String);
begin
  BM:=QuBeli.GetBookmark;
  //mINSGdgSO:=KodeGdg.Text ;
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
    Parameters[14].Value:=2;
    {if ISppn=0 then
     Parameters[14].Value:=PPN.ItemIndex
     else if IsPPN=1 then
     begin
       Parameters[14].Value:=PPN.ItemIndex+1;
     End;}
    if pemungut.Checked  then
      Parameters[15].Value:=1
    else
      Parameters[15].Value:=0;
    //Parameters[15].Value:=TIPE.ItemIndex;
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
      if Choice='D' then  Parameters[25].Value:=0
      else
      Parameters[25].Value:=Qnt1.AsFloat/mIsiBrg;
    end
    else if Nosat.Value=2 then
    begin
      Parameters[24].Value:=Qnt.AsFloat*mIsiBrg;
      Parameters[25].Value:=Qnt1.AsFloat;
    end;
    Parameters[26].Value:=NoSat.AsInteger;
    Parameters[27].Value:=mIsiBrg;
    Parameters[28].Value:=Harga.AsFloat;
    Parameters[29].Value:=DiscP.AsFloat;
    Parameters[30].Value:=DiscRp.AsFloat;
    Parameters[31].Value:=KodeGdg.Text;
    Parameters[32].Value:=KodeExp.Text;
    Parameters[33].Value:=Qnt2.Value;
    Parameters[34].Value:=KodeGdg.text;//mINSGdgSO;
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
    Parameters[47].Value := IsPPN;
    if numerator.Checked  then
       Parameters[48].Value  := 1
    else
       Parameters[48].Value  := 0;
    Parameters[49].Value  := bhnkertas.Text;
    Parameters[50].Value  := Tcetak.Text;
    Parameters[51].Value  := sekuriti.Text;
    Parameters[52].Value  := verifikasi.Text;
    if CBFix.Checked then
      Parameters[53].Value  := 1
    else
      Parameters[53].Value  := 0;
    if Logo.Checked  then
       Parameters[54].Value  := 1
    else
       Parameters[54].Value  := 0;
    Parameters[55].Value  := Urut1.Text;
    Parameters[56].Value  := Urut2.Text;
    Parameters[57].Value  := KodeSubCust.Text;
    Parameters[58].Value  := UkuranKertas.Text;
    Parameters[59].Value  := nodesain.Text;
    Parameters[60].Value  := jenis.ItemIndex;
    Parameters[61].Value  := Orientasi.ItemIndex;
    Parameters[62].Value  := ppnp.Value;

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

Procedure TFrSO.AmBilDataBeli;
begin
   if not QuBeli.IsEmpty then
   begin
     if QuBeliPPnP.AsFloat=10 then
         CPpnP.ItemIndex:=0
     else
     if QuBeliPPnP.AsFloat=11 then
          CPpnP.ItemIndex:=2
           else
     if QuBeliPPnP.AsFloat=12 then

       CPpnP.ItemIndex:=2
       ;

      Tanggal.Date:=QuBeliTanggal.AsDateTime;
      KodeCust.Text:=QuBeliKodeCUST.AsString;
      LnamaSupp.Caption:=QuBeliNamaCUST.AsString;
      LAlamatSupp.Caption:=QuBeliAlamat.AsString;
      NoPesanan.Text:=QuBeliNoPesanan.AsString;
      TglKirim.Date := QuBeliTglKirim.AsDateTime;
      KodeSls.Text:=QuBeliKodeSls.AsString;
      LNamaSls.Caption:='[ '+QuBeliNamaSLS.AsString+' ]';
      LNamaSubCustomer.Caption :='[ '+QuBelinamasubcustomer.AsString+' ]';
      LAlamatKirim.Caption:=QuBeliAlamatKirim.AsString;
      KodeGdg.Text:=QuBeliKodeGdg.AsString;
      Keterangan.Text:=QuBeliKeterangan.AsString;
      Valas.Text:=QuBeliKodeVls.AsString;
      Kurs.Value:=QuBeliKurs.AsCurrency;
      {if IsPPN=1 then
      PPN.ItemIndex:=QuBeliPPN.AsInteger-1
      Else if Isppn=0 then
         PPN.ItemIndex:=QuBeliPPN.AsInteger;}
      //Tipe.ItemIndex:=QuBeliTipeBayar.AsInteger;
      PPN.ItemIndex:=QuBeliPPN.AsInteger;
      if QuBeliTipeBayar.AsInteger=1 then
        Pemungut.Checked:=True
      else
        Pemungut.Checked:=False;
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
      DiscPDet2.Value:=QuBeliDiscp2.AsFloat;
      DiscPDet3.Value:=QuBeliDiscp3.AsFloat;
      DiscPDet4.Value:=QuBeliDiscp4.AsFloat;
      DiscPDet5.Value:=QuBeliDiscp5.AsFloat;
      if QuBelinumerator.AsBoolean then
        Numerator.Checked :=true
      else
        Numerator.Checked :=false;
      if QuBelilogo.AsBoolean then
        logo.Checked :=true
      else
        logo.Checked :=false;
      BhnKertas.Text := QuBeliBahanKertas.AsString;
      //Security2.Text := QuBeliBahanKertas.AsString;
      TCetak .Text := QuBeliTeknikCetak.AsString;
      Sekuriti.Text := QuBeliSekuriti.AsString;
      Verifikasi.Text := QuBeliFinsihing.AsString;
      kodegdg.Text := QuBeliInsGdg.AsString;
      urut1.Text:=QuBeliurutnumerator1.AsString;
      urut2.Text:=QuBeliurutnumerator2.AsString;
      KodeSubCust.Text:=QuBelikodesubcustomer.AsString;
      UkuranKertas.Text:=QuBeliUkuranKertas.AsString;
      Jenis.ItemIndex:=QuBelijenisso.Value;
      NOdesain.Text:=QuBelinodesain.AsString;
      Orientasi.ItemIndex:=QuBeliOrientasi.AsInteger;
      ppnp.Value:=QuBelippnp.AsFloat;
   end;
   TampilLabelDiskon(mTipeDisc,LDiskonP,LDiskonRp);
end;

// PROCEDURE DAN FUNCTION MILIK DELPHI

procedure TFrSO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if mExit=true then
  begin
     FrMainSO.ToolButton10.Click;
     Hapus_Daftar_Nomor_User('SO',IDUser);
     Action:=cafree;
  end
  else
  begin
     Action:=caNone;
  end;
end;

procedure TFrSO.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrSO.FormShow(Sender: TObject);
begin
  mValid:=False;
  xModalKoreksi:=FrMainSO.ModalKoreksi;
   {CPpnP.Clear;
   with Dm.QuCari do
   begin
     Close;
     sql.Clear;
     sql.Add(' select urut, persen,pilihan from DbMasterPPn');
     Open;
      if not IsEmpty then
      begin
        while not Eof do
        begin
           CPpnP.Items.Add(FieldByName('persen').AsString );
           Next;
           if FieldByName('pilihan').AsBoolean =true then
             //CPpnP.itemindex:= FieldByName('urut').AsInteger;
             CPpnP.ItemIndex:= CPpnP.Items.IndexOf(FieldByName('persen').AsVariant);

        end;
      end;
      //CPpnP.ItemIndex:= CPpnP.Items.IndexOf(QuBeliPPnP.AsString);
   end; }
  If xModalKoreksi = False then
  begin
    //IsiNoBuktiBaru;
    TampilData(NoBukti.Text);
    //NoUrut.Enabled:=True;
    ActiveControl:=KodeSls;
  end
  else
  Begin                   begin

  end;
    //NoUrut.Text:=FrMainSO.QuMasterNoUrut.AsString;
    NOBUKTI.Text := gTempNoBuktiSO;
    Hapus_Daftar_Nomor_User ('SO',IDUser);
    //AmbilUrut(NOBUKTI.Text,NomorBukti);
    Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,isMax);
    TampilData(NOBUKTI.Text);
//    PPN.Items.Clear;
    IsPPN:=FrMainSO.QuMasterTipePPN.AsInteger;
{    if IsPPN=0 then
    begin
    PPN.Items.Add('None') ;
    End
    Else  if IsppN=1 then
    Begin
    PPN.Items.Add('Exclude') ;
    PPN.Items.Add('Include') ;
    End;
    ppn.ItemIndex:=1;}
    ppn.ItemIndex:=2;
    AmBilDataBeli;
    NoUrut.Text:=QuBeliNOURUT.AsString;
    //NoUrut.Enabled:=False;
    KodeSls.enabled:=False;
    if CekPeriode(IDUser,Tanggal.Date)=True then
    begin
      //Panel1.Enabled:=True;
      Tanggal.Enabled:=True;
      ActiveControl:=Tanggal;
    end
    else
    begin
      //Panel1.Enabled:=False;
      //Tanggal.Enabled:=False;
      ActiveControl:=dxDBGrid1;
    end;
  end;
end;

procedure TFrSO.FormCreate(Sender: TObject);
begin
  LnamaSupp.Caption:='';
  LAlamatSupp.Caption:='';
  LAlamatKirim.Caption:='';
  Hapus_Daftar_Nomor_User('SO',IDUser);
  dxDBGrid1Qnt.Caption:='Qnt ';
  dxDBGrid1Qnt2.Caption:='Qnt 2';
  //TipeTrans := 'SO';
end;

procedure TFrSO.TambahBtnClick(Sender: TObject);
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

procedure TFrSO.KodeBrgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=Vk_Escape then
  begin
    SpeedButton1.Click;
  end;
end;

procedure TFrSO.QntKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrSO.TANGGALKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
  begin
    if (CekPeriode(IDUser,TANGGAL.Date)=False) then
      Abort;
    UpdatedbBeli;
  end
  else if Key=Vk_Escape then
  begin
    mValid:=False;
//    RefreshAll;
    If FrMainSO.ModalKoreksi = False then
    begin
      Hapus_Daftar_Nomor_User('SO',IDUser);
      Keterangan.Text :='';
      TampilData(NOBUKTI.Text);

      ActiveControl := KodeSls;
    end
    else
    begin
      mExit := True;
      Close;
    end;
  end;
end;

procedure TFrSO.KoreksiBtnClick(Sender: TObject);
begin
  if CheckFormMaster=True then
  begin
     mValid:=False;
     model:='koreksi';
     // data yang di update
     if QuBeli.IsEmpty=False then
     begin
       //if CekAdaSuratJln(NoBukti.Text)=False then
       begin
          TampilTombolDetail(True);
          KodeBrg.Enabled:=False;
          mUrut :=QuBeliUrut.AsInteger;
          mUrutSPB:=QuBeliUrutSPB.AsInteger;
          KodeBrg.Text:=QuBeliKodeBrg.AsString;
          LNamaBrg.Caption:='[ '+QuBeliNamaBrg.AsString+' ]';
          LSatuan2.Caption:='[ '+QuBeliSatuanRoll.AsString+' ]';
          LSatuan.Caption:='[ '+QuBeliSatuan.AsString+' ]';
          mIsiBrg:=QuBeliIsi.AsFloat;
          if CekAdaSuratJln(NoBukti.Text)=true then
          begin
             Qnt.Enabled:=False
          end
             else
          Begin
             qnt.Enabled :=true;
          end;
          Qnt1.Value:=QuBeliQnt2.AsFloat;
          Qnt.Value:=QuBeliQnt.AsFloat;
          Qnt2.Value:=QuBeliQnt3.AsFloat;
          Harga.Value:=QuBeliHarga.AsFloat;
          DiscP.Value:=QuBeliDiscP1.AsFloat;
          DiscRp.Value:=QuBeliDiscTot.AsFloat;
          DiscPDet2.Value:=QuBeliDiscp2.AsFloat;
          DiscPDet3.Value:=QuBeliDiscp3.AsFloat;
          DiscPDet4.Value:=QuBeliDiscp4.AsFloat;
          DiscPDet5.Value:=QuBeliDiscp5.AsFloat;
          IsiSatuan;
          if QuBeliiscetakkitir.AsBoolean then
             CBFix.Checked :=true
          else
             CBFix.Checked :=false;
         // ActiveControl:=Qnt;
       end  ;
       {else
       begin

          MessageDlg('Data tidak dapat di Ubah, sudah ada transaksi'+chr(13)+mStrMsg, mtInformation,[mbOK],0);
          ActiveControl:=dxDBGrid1;

       end;}

     end
     else
     begin
        ShowMessage('Tidak ada transaksi yang dikoreksi !');
        ActiveControl:=dxDBGrid1;
     end;
  end;
end;

procedure TFrSO.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Escape then
  begin
    Hapus_Daftar_Nomor_User('SO',IDUser);
//    RefreshAll;
    if xModalKoreksi then
    begin
      mExit := True;
      Close;
    end
    else
    begin
      //IsiNoBuktiBaru;
      TampilData(NOBUKTI.Text);
      ActiveControl:=KodeSls;
    end;
  end
  else if key=VK_return then
  begin
   if Frmainso.ModalKoreksi then
    KoreksiBtn.Click
   else TambahBtn.Click;
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

procedure TFrSO.HapusBtnClick(Sender: TObject);
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
      end
      else
      begin
          MessageDlg('Data tidak dapat dihapus, sudah ada transaksi'+chr(13)+mStrMsg, mtInformation,[mbOK],0);
          ActiveControl:=dxDBGrid1;
      end;
    end;
  end
  else
  begin
    ShowMessage('Periode Sudah Di Kunci !');
    ActiveControl:=dxDBGrid1;
  end;
end;

procedure TFrSO.wwDBGrid1Enter(Sender: TObject);
begin
  FrSO.KeyPreview:=false;
  CheckFormMaster;
end;

procedure TFrSO.wwDBGrid1Exit(Sender: TObject);
begin
  FrSO.KeyPreview:=true;
end;

procedure TFrSO.wwDBGrid1DblClick(Sender: TObject);
begin
  KoreksiBtn.Click;
end;

procedure TFrSO.NoUrutKeyDown(Sender: TObject; var Key: Word;
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
      If Not Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,isMax) then
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

procedure TFrSO.TANGGALExit(Sender: TObject);
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

procedure TFrSO.KodeCustEnter(Sender: TObject);
begin
  mValid:=true;
mUbahHd:=true;  
end;

procedure TFrSO.KodeCustExit(Sender: TObject);
begin
  if mValid Then
  begin
     CRNomor:=False;
    Hapus_Daftar_Nomor_User ('SO',IDUser);
    if length(KodeCust.Text)=0
    then TampilIsiCustomer else
    begin
      if DataBersyarat(' declare @namaCustSupp varchar(30),@KOdeSls Integer  '+
                         ' select @KOdeSls='+KodeSls.text+' '+
                         ' set @namaCustSupp=(select Top 1 Count(*)   '+
                         '                                 from DBSALESCUSTOMER A    '+
                         '                                 Left Outer Join DBCUSTSUPP B on A.KodeCustSupp=B.KODECUSTSUPP '+
                         '                                 where KeyNik=@KOdeSls group by A.KodeCustSupp)  '+
                         ' if isnull(@namaCustSupp,0)=0 '+
                         ' begin     '+
                         '         select A.KodeCust KodeCustSupp, A.NAMACUST namaCustSUPP,A.PPN,Alamat,A.Hari DueDate'+
                         '         from vwBrowsCustomer A   '+
                         '         Where (A.KodeCust like :0 or A.NamaCust like :1) '+
                         ' End      '+
                         ' else    '+
                         ' Begin    '+
                         '         select A.KodeCustSupp, B.NAMACUSTSUPP,Isnull(B.PPN,0) PPN    '+
                         ' , ltrim(B.ALAMAT1+case when ltrim(B.ALAMAT2)<>'''' then char(13)+B.ALAMAT2 else '''' end+  '+
                         ' case when ltrim(isnull(B.KOTA,''''))<>'''' then char(13)+isnull(B.KOTA,'''')+'' ''+B.KodePos else '''' end) ALAMAT    '+
                         ' ,B.hari DueDate '+
                         '         from DBSALESCUSTOMER A '+
                         '         Left Outer Join DBCUSTSUPP B on A.KodeCustSupp=B.KODECUSTSUPP   '+
                         '         where KeyNik=@KOdeSls   '+
                         ' and (A.KodeCustSupp like :2 or B.NamaCustSupp like :3) '+
                         ' End   ',['%'+KodeCust.Text+'%','%'+KodeCust.Text+'%','%'+KodeCust.Text+'%','%'+KodeCust.Text+'%'],Dm.Qucari)=true then
      begin
        with DM.QuCari do
        begin
           KodeCust.Text:=fieldbyname('KodecustSupp').AsString;
           LnamaSupp.Caption:=fieldbyname('NamaCustSupp').AsString;
           LAlamatSupp.Caption:=fieldbyname('Alamat').AsString;
           Hari.AsInteger:=FieldByName('DueDate').AsInteger;
           IsPPN:=fieldbyname('PPN').AsInteger;
           XCUstSupp:=fieldbyname('KodeCustSupp').Asstring;
           CRNomor:=True;
        end;
      end
      else TampilIsiCustomer;
    end;
  end;

  if CRNomor then
  Begin
      if XCUstSupp='PD.PROFF' then
           TipeTrans:='SOI'
        else
          TipeTrans:='SO';
      IsiNoBuktiBaru;
      Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,isMax);
      if CekNobuktiso(NoBukti.Text)=false then
          MessageDlg('No SO Salah Periode',mtInformation,[mbOK],0);
//      PPN.Items.Clear;
      {if IsPPN=0 then
      begin
      PPN.Items.Add('None') ;
      End
      Else  if IsppN=1 then
      Begin
      PPN.Items.Add('Exclude') ;
      PPN.Items.Add('Include') ;
      End;
      PPN.ItemIndex:=1;}
      PPN.ItemIndex:=2;
  End
  Else ActiveControl:=KodeCUst;
end;

procedure TFrSO.CetakClick(Sender: TObject);
begin
  frxDBDataset1.DataSet.Close;
  frxDBDataset1.DataSet := Qudetail;
  Qudetail.Close;
  Qudetail.SQL.Clear;
  Qudetail.SQL.Add('exec sp_CetakSO1 '+QuotedStr(NoBukti.Text));
  Qudetail.Open;
  //frxDBDataset1.Close;
  //frxDBDataset1.Open;
  //frxDBCetak.Close;
  //frxDBCetak.Open;
  frxReport1.LoadFromFile(currDir+'Nota\NotaMarketingSO.fr3');
  frxReport1.ShowReport;
  ActiveControl:=dxDBGrid1;
end;

procedure TFrSO.BitBtn1Click(Sender: TObject);
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

procedure TFrSO.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
  ClearPanelDetail;
end;

procedure TFrSO.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
   QuBeli.Sort:=AFieldName;
end;

procedure TFrSO.FormDestroy(Sender: TObject);
begin
  FrSO:=nil;
end;

procedure TFrSO.BPrevClick(Sender: TObject);
begin
  Hapus_Daftar_Nomor_User('SO',IDUser);
  ActiveControl:=TANGGAL;
  FrMainSO.QuNavigator.Locate('nobukti',FrMainSO.QuMaster.fieldbyname('nobukti').AsString,[LOC,LOP]);
  FrMainSO.QuNavigator.Prior;
  FrMainSO.QuMaster.Locate('nobukti',FrMainSO.QuNavigator.fieldbyname('nobukti').AsString,[LOC,LOP]);

  FormShow(self);
end;

procedure TFrSO.BNextClick(Sender: TObject);
begin
  Hapus_Daftar_Nomor_User('SO',IDUser);
  ActiveControl:=Tanggal;
  FrMainSO.QuNavigator.Locate('nobukti',FrMainSO.QuMaster.fieldbyname('nobukti').AsString,[LOC,LOP]);
  FrMainSO.QuNavigator.Next;
  FrMainSO.QuMaster.Locate('nobukti',FrMainSO.QuNavigator.fieldbyname('nobukti').AsString,[LOC,LOP]);
  FormShow(self);
end;

procedure TFrSO.dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
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

procedure TFrSO.DiskonChange(Sender: TObject);
begin
   HitungRincian;
end;

procedure TFrSO.SpeedButton8Click(Sender: TObject);
begin
  frxReport1.LoadFromFile(currDir+'Nota\NotaMarketingSO.fr3');
  frxReport1.DesignReport;
end;

procedure TFrSO.frxReport1GetValue(const VarName: String;
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

procedure TFrSO.NoUrutChange(Sender: TObject);
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

procedure TFrSO.KodeSlsExit(Sender: TObject);
begin
  if mValid Then
  begin
    if length(KodeSls.Text)=0 then TampilIsiSales else
    begin
      if mUbahHd then
      begin
        if DataBersyarat('declare @namaSls varchar(30),@KOdeCUstSupp varchar(15) '+
                       '     select @KOdeCUstSupp=:0  '+
                       '     set @namaSls=(                   '+
                       '                             select  B.Nama NamaSls                 '+
                       '                 from dbSalesCustomer a                             '+
                       '                         Left Outer Join dbKaryawan b on b.KeyNik=A.KeyNik   '+
                       '                  where A.KodecustSupp=@KOdeCUstSupp               '+
                       '              )                                     '+
                       '     if isnull(@namaSls,'''')=''''                      '+
                       '     begin                                          '+
                       '     select A.Keynik KodeSls, A.Nama NamaSls        '+
                       '     from dbKaryawan A                              '+
                       '     where A.IsSales=1                              '+
                       '      order by A.Keynik                             '+
                       '     End                                            '+
                       '     else                                           '+
                       '     Begin                                          '+
                       '     select A.Keynik KodeSls, B.Nama NamaSls        '+
                       '     from dbSalesCustomer a                        '+
                       '           Left Outer Join dbKaryawan b on b.KeyNik=A.KeyNik  '+
                       '     where A.KodecustSupp=@KOdeCUstSupp             '+
                       ' and (A.keynik Like :1 or B.Nama Like :2) '+
                       '      order by A.Keynik                             '+
                       ' End ',[KodeCust.text,KodeSls.Text,KodeSls.text],Dm.Qucari)=true then
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

procedure TFrSO.QntEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrSO.TANGGALEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrSO.DiscPExit(Sender: TObject);
var xNilaiDiscExit: Real;
begin
  {if Sender=DiscRp then
    DiskonTotal:=ProsesDiskon(Sender)
  else if Sender=DiscP then
  begin
    if Model='write' then DiskonTotal:=ProsesDiskon(Sender)
    else if (Model='koreksi') and (QuBeliDiscP1.AsCurrency<>DiscP.AsCurrency) then
      DiskonTotal:=ProsesDiskon(Sender);
  end;   }
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

procedure TFrSO.KodeBrgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrSO.TampilanQntSatuan(pNilai: Boolean);
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

procedure TFrSO.IsiSatuan;
begin
  LNamaSat.Caption:=IsiSatuanBrgJual(KodeBrg.Text, Kodecust.Text, mNamaSatuan, mIsiSatuan, mHargaBrg);
end;

procedure TFrSO.KodeBrgExit(Sender: TObject);
begin
  if mValid Then
  begin
     if length(KodeBrg.Text)=0 then TampilIsiBarang else
        begin
          if DataBersyarat('select a.Kodebrg, a.NamaBrg, a.Isi2, a.nFix from Dbbarang a '+
                           ' where a.isaktif=1 and Left(Kodebrg,2)=''BJ'' and (a.kodebrg like :0 or a.Namabrg Like :1) order by a.Kodebrg',
                           ['%'+KodeBrg.Text+'%','%'+KodeBrg.Text+'%'],Dm.Qucari)=true then
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

procedure TFrSO.NoPesananExit(Sender: TObject);
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

procedure TFrSO.TanggalChange(Sender: TObject);
begin
  mUbahHd:=True;
  if Sender=Tipe then
  begin
    if TIPE.ItemIndex = 0 then Hari.Value:=0;
  end;
  if (Sender=Valas) or (Sender=Kurs) or (Sender=PPN) Or (sender=numerator) then
    mUbahHdDet:=True;
end;

procedure TFrSO.DiskonPEnter(Sender: TObject);
begin
  mNilaiEnter:=DiskonP.Value;
  FrSO.KeyPreview:=False;
end;

procedure TFrSO.DiskonPExit(Sender: TObject);
begin
  FrSO.KeyPreview:=True;
  if FormatFloat(',0.00',mNilaiEnter)<>FormatFloat(',0.00',DiskonP.Value) then
  begin
    mTipeDisc:=0;
    UpdateDiskon;
  end;
  TampilLabelDiskon(mTipeDisc,LDiskonP,LDiskonRp);
end;

procedure TFrSO.DiskonRpEnter(Sender: TObject);
begin
  FrSO.KeyPreview:=False;
end;

procedure TFrSO.DiskonRpExit(Sender: TObject);
begin
  FrSO.KeyPreview:=True;
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

procedure TFrSO.DiskonRpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Escape) or (Key=VK_Return) then
  begin
    ActiveControl:=dxDBGrid1;
  end;
end;

procedure TFrSO.NoAlamatKirimExit(Sender: TObject);
var xNoAlamatKirim: Integer;
begin
  if mValid Then
  begin
    if NoAlamatKirim.Text<>'-' then
    begin
     { try
        xNoAlamatKirim:=StrToInt(NoAlamatKirim.Text);
      except
        xNoAlamatKirim:=0;
      end;  }
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

procedure TFrSO.KodeExpExit(Sender: TObject);
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

procedure TFrSO.KodeGdgExit(Sender: TObject);
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

procedure TFrSO.NoUrutEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrSO.Qnt3Enter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrSO.Qnt3Change(Sender: TObject);
begin
  if mValid then
  begin
    Qnt1.Value:=Qnt2.Value*mIsiBrg;
  end;
end;

procedure TFrSO.QntChange(Sender: TObject);
begin
  if (Qnt.MaxValue<>0) and (Qnt.Value>Qnt.MaxValue) then
  begin
    ShowMessage('Maksimum Qnt='+FormatFloat(',0.00',Qnt.MaxValue)+' !');
    Qnt.Value:=Qnt.MaxValue;
    ActiveControl:=Qnt;
  end;
end;

procedure TFrSO.SpeedButton2Click(Sender: TObject);
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

procedure TFrSO.SpeedButton3Click(Sender: TObject);
begin
  frxReport1.LoadFromFile(currDir+'Nota\OutSOUntukSJ.fr3');
  frxReport1.DesignReport;
end;

procedure TFrSO.NoSatEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrSO.NoSatExit(Sender: TObject);
begin
  if mValid then
  begin
    IsiSatuan;
    Harga.Value := mHargaBrg[NoSat.AsInteger];
    //mIsiBrg := mIsiSatuan[NoSat.AsInteger];
  end;
end;

procedure TFrSO.cbClick(Sender: TObject);
begin
  mUbahHd:=True;
  if (CekPeriode(IDUser,TANGGAL.Date)=False) then
      Abort;
    UpdatedbBeli;
end;

procedure TFrSO.PPNClick(Sender: TObject);
var
  Idx: Integer;
  Value: integer;
begin

    if CPpnP.ItemIndex=0 then
      PPnP.Value:=10
     else
     if CPpnP.ItemIndex=1 then
       PPnP.Value:=11
            else
     //if CPpnP.ItemIndex=2 then
      // PPnP.Value:=12
           if CPpnP.ItemIndex=2 then
       Begin
          if islengkap.Checked then
                //ppnp.text:=
                //CPpnP.//CPpnP.Items.IndexOf(FieldByName('persen').AsVariant)
                PPnP.Value:=12
          else
          PPnP.Value:=11
       end;
       ;
       mvalid := true;
  if mValid then
  begin
    mUbahHd := True; mUbahHdDet := True;
    if (CekPeriode(IDUser,TANGGAL.Date)=False) then
      Abort;
    UpdatedbBeli;
  end;
  mvalid:=false;
   { if Idx <> -1 then
      begin
        //PPnP.Value := INteger(CPpnP.Items.Objects[Idx]);
        // Do something with value you retrieved
        PPnP.Value := StrToFloatDef(CPpnP.Text,value);
      end;
   UpdatedbBeli;    }
end;

procedure TFrSO.ValasEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrSO.TampilIsiValas;
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

procedure TFrSO.ValasExit(Sender: TObject);
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
  VlsIDR(Valas,Kurs);
  {if Kurs.Enabled=false then
  ActiveControl:=PPN else
  ActiveControl:=Kurs;}
end;

procedure TFrSO.frxReport1AfterPrintReport(Sender: TObject);
begin
 NilaiCetak('CetakKe','DBSO',Nobukti.Text);
end;

procedure TFrSO.SpeedButton4Click(Sender: TObject);
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
  Activecontrol:=cxGrid1;
end;

procedure TFrSO.Panel7Click(Sender: TObject);
begin
  Panel5.Visible := false;
  QuLastPrices.Close;
  ActiveControl:=BitBtn1;
end;

procedure TFrSO.DiscPEnter(Sender: TObject);
begin
  mValid:=True;
  mNilaiDiscEnter:=(Sender as TPBNumEdit).Value;
end;

procedure TFrSO.tvPricesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    Panel5.Visible := false;
  QuLastPrices.Close;
  ActiveControl:=BitBtn1;
end;

procedure TFrSO.KodeSlsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_Escape then
  begin
    If xModalKoreksi = False then
    begin
      Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
      mValid:=False;
//      RefreshAll;
      mExit:=True;
      Close;
    end
  End;
end;

procedure TFrSO.NumeratorExit(Sender: TObject);
begin
UpdatedbBeli
end;

procedure TFrSO.BhnKertasExit(Sender: TObject);
begin
  UpdatedbBeli
// bhnkertas.Text:=xbhnkertas;
{MessageDlg('Sales Order (SO) tidak dapat dihapus, sudah ada SPK'+chr(13)+xbhnkertas,
    mtInformation,[mbOK],0);}


end;

procedure TFrSO.TCetakExit(Sender: TObject);
begin
UpdatedbBeli
end;

procedure TFrSO.SekuritiExit(Sender: TObject);
begin
UpdatedbBeli;
//bhnkertas.Text:= xbhnkertas;
end;

procedure TFrSO.VerifikasiExit(Sender: TObject);
begin
UpdatedbBeli
end;

procedure TFrSO.CatatanExit(Sender: TObject);
begin
UpdatedbBeli
end;

procedure TFrSO.UkuranKertasExit(Sender: TObject);
begin
UpdatedbBeli
end;


procedure TFrSO.KodeSubCustExit(Sender: TObject);
begin
  if mValid Then
  begin
     if length(KodeSubCust.Text)=0 then TampilSubCustomer else
        begin
          if DataBersyarat('select kodesubcustomer,namasubcustomer,kodecust from Dbsubcustomer a '+
                           ' where  (a.kodesubcustomer like :0 or a.namasubcustomer Like :1) order by a.kodesubcustomer',
                           ['%'+KodeBrg.Text+'%','%'+KodeBrg.Text+'%'],Dm.Qucari)=true then
          begin
            with DM.QuCari do
            begin
             KodeSubCust.Text:=fieldbyname('kodesubcustomer').AsString;
             ActiveControl:=KodeSubCust;
            end;
          end
          else TampilSubCustomer;
        end;

  end;
end;


procedure TFrSO.BhnKertasChange(Sender: TObject);
//var xbhnkertas : string;
begin
//    xbhnkertas:=bhnkertas.Text;
// bhnkertas.Text;
UpdatedbBeli

end;

procedure TFrSO.JenisEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrSO.islengkapExit(Sender: TObject);
begin
UpdatedbBeli;
end;

procedure TFrSO.CPpnPExit(Sender: TObject);
begin
mValid:=true;
end;

end.

