unit FrmPO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, wwdblook, Wwdbigrd, Wwdbgrid,
  DBCtrls, ppBands, ppCtrls, ppDB, jpeg, ppPrnabl, ppClass, ppCache,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, ImgList, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ppVar,variants, dxEditor,
  dxExEdtr, dxEdLib, ppStrtch, ppMemo,Dateutils, ppModule, raCodMod,
  frxClass, frxDMPExport, frxDBSet, frxDesgn, MyGlobal, Menus,StrUtils,
  dxPageControl, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxGridBandedTableView, cxGridDBBandedTableView, frxExportRTF,
  frxExportBIFF, frxExportCSV;

type
  TFrPO = class(TForm)
    Panel1: TPanel;
    NoUrut: TEdit;
    Tanggal: TDateEdit;
    Hari: TPBNumEdit;
    Diskon: TPBNumEdit;
    Panel3: TPanel;
    QuBeli: TADOQuery;
    Sp_Beli: TADOStoredProc;
    DsQuBeli: TDataSource;
    QuUpdatedbbeli: TADOQuery;
    Label10: TLabel;
    Valas: TEdit;
    Kurs: TPBNumEdit;
    DataSource1: TDataSource;
    QuReport: TADOQuery;
    NoBukti: TEdit;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    Handling: TPBNumEdit;
    PanelShow2: TPanel;
    BPrev: TSpeedButton;
    BNext: TSpeedButton;
    PanelShow1: TPanel;
    Cetak: TSpeedButton;
    HapusBtn: TSpeedButton;
    KoreksiBtn: TSpeedButton;
    TambahBtn: TSpeedButton;
    Ltanggal: TLabel;
    PPN: TComboBox;
    TIPE: TComboBox;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label42: TLabel;
    Shape4: TShape;
    Label14: TLabel;
    FakturSupp: TEdit;
    Label17: TLabel;
    Label12: TLabel;
    frxDataPerusahaan: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    DsgCetakBtn: TSpeedButton;
    frxDesigner1: TfrxDesigner;
    KodeExp: TEdit;
    Label2: TLabel;
    NamaExp: TRxLabel;
    QuByAngkut: TADOQuery;
    frxReport1: TfrxReport;
    Label8: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label19: TLabel;
    LNamaSat: TRxLabel;
    LNamaBrg: TRxLabel;
    KodeBrg: TEdit;
    Qnt: TPBNumEdit;
    Harga: TPBNumEdit;
    DiscP: TPBNumEdit;
    DiscRp: TPBNumEdit;
    NoSat: TPBNumEdit;
    Shape6: TShape;
    LnamaSupp: TLabel;
    LAlamatSupp: TLabel;
    KodeSupp: TEdit;
    PanelShowTotal: TPanel;
    LDiskonP: TLabel;
    Label25: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    LDiskonRp: TLabel;
    DiskonP: TPBNumEdit;
    GrandTotal: TPBNumEdit;
    Pajak: TPBNumEdit;
    DPP: TPBNumEdit;
    Label3: TLabel;
    NoPPL: TEdit;
    CB1: TCheckBox;
    CB2: TCheckBox;
    CB3: TCheckBox;
    Panel5: TPanel;
    SpeedButton2: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Label16: TLabel;
    NmSatuanX: TRxLabel;
    NamaBrgX: TRxLabel;
    Label18: TLabel;
    BitBtn2: TBitBtn;
    KodebrgX: TEdit;
    QntX: TPBNumEdit;
    Satx: TPBNumEdit;
    NoBuktiX: TEdit;
    Label6: TLabel;
    TglX: TDateEdit;
    PopupMenu1: TPopupMenu;
    tambah: TMenuItem;
    Koreksi: TMenuItem;
    Hapus: TMenuItem;
    sp_kiriman: TADOStoredProc;
    dxPageControl1: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    dxTabSheet2: TdxTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Urut: TdxDBGridMaskColumn;
    dxDBGrid1KodeBrg: TdxDBGridMaskColumn;
    dxDBGrid1NamaBrg: TdxDBGridMaskColumn;
    dxDBGrid1Qnt: TdxDBGridMaskColumn;
    dxDBGrid1Satuan: TdxDBGridMaskColumn;
    dxDBGrid1DISCTOT: TdxDBGridMaskColumn;
    dxDBGrid1TotalUSD: TdxDBGridMaskColumn;
    dxDBGrid1TotalIDR: TdxDBGridMaskColumn;
    dxDBGrid1Beban: TdxDBGridMaskColumn;
    dxDBGrid1Total: TdxDBGridMaskColumn;
    dxTabSheet3: TdxTabSheet;
    dxDBGrid2: TdxDBGrid;
    dsKirim: TDataSource;
    Qukirim: TADOQuery;
    dsBayarPO: TDataSource;
    QubayarPO: TADOQuery;
    QubayarPONoBukti: TStringField;
    QubayarPOKeterangan: TStringField;
    QubayarPODP: TBooleanField;
    QubayarPOPersentase: TBCDField;
    QubayarPOKodeVls: TStringField;
    QubayarPONilai: TBCDField;
    dxDBGrid3: TdxDBGrid;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridColumn2: TdxDBGridCheckColumn;
    dxDBGrid3Column3: TdxDBGridColumn;
    dxDBGrid3Column4: TdxDBGridColumn;
    dxDBGrid3Column5: TdxDBGridColumn;
    Panel6: TPanel;
    SpeedButton3: TSpeedButton;
    Label13: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label24: TLabel;
    BitBtn3: TBitBtn;
    Nilai: TPBNumEdit;
    Persen: TPBNumEdit;
    KetPemb: TEdit;
    Vls: TEdit;
    CB4: TCheckBox;
    sp_pembayaranPO: TADOStoredProc;
    Label15: TLabel;
    Tlt: TPBNumEdit;
    CBALL: TCheckBox;
    QuOSPR: TADOQuery;
    Panel7: TPanel;
    XKirim: TPBNumEdit;
    Label23: TLabel;
    Button1: TButton;
    QuBeliNoBukti: TStringField;
    QuBeliNoUrut: TStringField;
    QuBeliTanggal: TDateTimeField;
    QuBeliTglJatuhTempo: TDateTimeField;
    QuBeliKodeSupp: TStringField;
    QuBeliNamaCustSupp: TStringField;
    QuBeliAlamat1: TStringField;
    QuBeliAlamat2: TStringField;
    QuBeliKota: TStringField;
    QuBeliAlamat: TStringField;
    QuBeliHandling: TBCDField;
    QuBeliKeterangan: TStringField;
    QuBeliFakturSupp: TStringField;
    QuBeliIsExp: TBooleanField;
    QuBeliTglKirim: TDateTimeField;
    QuBeliKodeVls: TStringField;
    QuBeliNamaVls: TStringField;
    QuBeliKurs: TBCDField;
    QuBeliPPN: TWordField;
    QuBeliTipeBayar: TWordField;
    QuBeliHari: TIntegerField;
    QuBeliDisc: TFloatField;
    QuBeliUrut: TIntegerField;
    QuBeliKodeBrg: TStringField;
    QuBeliNamaBrg: TStringField;
    QuBeliSatuan: TStringField;
    QuBeliQnt: TBCDField;
    QuBeliNosat: TWordField;
    QuBeliIsi: TBCDField;
    QuBeliDISCP: TBCDField;
    QuBeliDISCTOT: TBCDField;
    QuBeliNoPPL: TStringField;
    QuBeliIsClose: TBooleanField;
    QuBeliIsCloseD: TBooleanField;
    QuBeliTotalUSD: TBCDField;
    QuBeliKodeExp: TStringField;
    QuBeliNamaExp: TStringField;
    QuBeliTotalIDR: TBCDField;
    QuBeliNDPP: TFloatField;
    QuBeliNPPN: TFloatField;
    QuBeliTolerate: TBCDField;
    QuBeliBeban: TBCDField;
    QuBeliTotal: TBCDField;
    QuBeliTotDiskon: TFloatField;
    QuBeliTotDPP: TFloatField;
    QuBeliTotPPN: TFloatField;
    QuBeliTotNet: TFloatField;
    QuBeliUrutPPL: TIntegerField;
    QukirimNoBukti: TStringField;
    QukirimKodeBrg: TStringField;
    QukirimNamaBrg: TStringField;
    QukirimNoSat: TWordField;
    QukirimSatuan: TStringField;
    QukirimQnt: TBCDField;
    QukirimKeyKodeBrg: TStringField;
    TglKirimBtn: TSpeedButton;
    QukirimTanggal1: TDateTimeField;
    QukirimQnt1: TBCDField;
    QukirimTanggal2: TDateTimeField;
    QukirimQnt2: TBCDField;
    QukirimTanggal3: TDateTimeField;
    QukirimQnt3: TBCDField;
    QukirimTanggal4: TDateTimeField;
    QukirimQnt4: TBCDField;
    QukirimTanggal5: TDateTimeField;
    QukirimQnt5: TBCDField;
    QukirimTanggal6: TDateTimeField;
    QukirimQnt6: TBCDField;
    QukirimTanggal7: TDateTimeField;
    QukirimQnt7: TBCDField;
    QukirimTanggal8: TDateTimeField;
    QukirimQnt8: TBCDField;
    QukirimSumQntKirim: TBCDField;
    dxDBGrid2KeyKodeBrg: TdxDBGridMaskColumn;
    dxDBGrid2NoBukti: TdxDBGridMaskColumn;
    dxDBGrid2KodeBrg: TdxDBGridMaskColumn;
    dxDBGrid2NamaBrg: TdxDBGridMaskColumn;
    dxDBGrid2NoSat: TdxDBGridMaskColumn;
    dxDBGrid2Satuan: TdxDBGridMaskColumn;
    dxDBGrid2Qnt: TdxDBGridMaskColumn;
    dxDBGrid2Tanggal1: TdxDBGridDateColumn;
    dxDBGrid2Qnt1: TdxDBGridMaskColumn;
    dxDBGrid2Tanggal2: TdxDBGridDateColumn;
    dxDBGrid2Qnt2: TdxDBGridMaskColumn;
    dxDBGrid2Tanggal3: TdxDBGridDateColumn;
    dxDBGrid2Qnt3: TdxDBGridMaskColumn;
    dxDBGrid2Tanggal4: TdxDBGridDateColumn;
    dxDBGrid2Qnt4: TdxDBGridMaskColumn;
    dxDBGrid2Tanggal5: TdxDBGridDateColumn;
    dxDBGrid2Qnt5: TdxDBGridMaskColumn;
    dxDBGrid2Tanggal6: TdxDBGridDateColumn;
    dxDBGrid2Qnt6: TdxDBGridMaskColumn;
    dxDBGrid2Tanggal7: TdxDBGridDateColumn;
    dxDBGrid2Qnt7: TdxDBGridMaskColumn;
    dxDBGrid2Tanggal8: TdxDBGridDateColumn;
    dxDBGrid2Qnt8: TdxDBGridMaskColumn;
    dxDBGrid2SumQntKirim: TdxDBGridMaskColumn;
    Label22: TLabel;
    KodeGdg: TEdit;
    QuBeliKodegdg: TStringField;
    QuBeliNamaGDG: TStringField;
    QuBeliALamatGdg: TStringField;
    LAlamatGudang: TLabel;
    QuBeliTotalX: TBCDField;
    QuBeliTerbilang: TStringField;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Panel8: TPanel;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QuLastPrices: TADOQuery;
    DSLastPrices: TDataSource;
    tvPrices: TcxGridDBBandedTableView;
    QuLastPricesKODEBRG: TStringField;
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
    tvPricesKODECUSTSUPP: TcxGridDBBandedColumn;
    tvPricesNAMACUSTSUPP: TcxGridDBBandedColumn;
    tvPricesTANGGAL: TcxGridDBBandedColumn;
    tvPricesQnt: TcxGridDBBandedColumn;
    tvPricesSatuan: TcxGridDBBandedColumn;
    tvPricesKODEVLS: TcxGridDBBandedColumn;
    tvPricesKURS: TcxGridDBBandedColumn;
    tvPricesprice: TcxGridDBBandedColumn;
    SpeedButton6: TSpeedButton;
    Panel9: TPanel;
    QuLastPricesLineNum: TLargeintField;
    tvPricesLineNum: TcxGridDBBandedColumn;
    Keterangan: TMemo;
    DiscPDet3: TPBNumEdit;
    Label41: TLabel;
    DiscPDet2: TPBNumEdit;
    Label34: TLabel;
    DiscPDet5: TPBNumEdit;
    Label39: TLabel;
    DIscPDet4: TPBNumEdit;
    Label40: TLabel;
    QuBeliDiscp2: TBCDField;
    QuBeliDiscp3: TBCDField;
    QuBeliDiscp4: TBCDField;
    QuBeliDiscp5: TBCDField;
    QuBeliPPNTrans: TWordField;
    QuBeliToleratePO: TBCDField;
    PPh: TPBNumEdit;
    Label44: TLabel;
    CheckBox1: TCheckBox;
    QuBeliispph: TBooleanField;
    QuBelipphp: TBCDField;
    dxDBGrid1Harga: TdxDBGridMaskColumn;
    dxDBGrid1ToleratePO: TdxDBGridMaskColumn;
    dxDBGrid1NoPPL: TdxDBGridColumn;
    QuBeliHarga: TFloatField;
    NPPH: TPBNumEdit;
    Label43: TLabel;
    QuBeliTotPPHRp: TFloatField;
    QuBeliKetBrg: TStringField;
    KetBrg: TEdit;
    QuBeliproses: TIntegerField;
    QuBeliTipeDisc: TWordField;
    QuBelidiscrp: TBCDField;
    DiskonRp: TPBNumEdit;
    QuBelindiskon: TFloatField;
    frxRTFExport1: TfrxRTFExport;
    Keteranganx: TEdit;
    Label45: TLabel;
    frxBIFFExport1: TfrxBIFFExport;
    frxCSVExport1: TfrxCSVExport;
    PpnP: TPBNumEdit;
    Label46: TLabel;
    QuBeliPPnP: TBCDField;
    CPpnP: TComboBox;
    CB: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure TampilData(No_Bukti:String);
    procedure TampilDataKirim (No_Bukti,Kodebrg:String);
    procedure TampilDataBayarPO(No_Bukti:String);
    Procedure Hitung;
    procedure UpdateDataBeli(Choice:Char;Kodet:String);
    procedure FormCreate(Sender: TObject);
    procedure TambahBtnClick(Sender: TObject);
    procedure ClearPanelDetail;
    procedure RefreshAll;
    procedure QntKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TanggalKeyDown(Sender: TObject; var Key: Word;
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
    procedure TanggalEnter(Sender: TObject);
    procedure TanggalExit(Sender: TObject);
    procedure KodeSuppEnter(Sender: TObject);
    procedure KodeSuppExit(Sender: TObject);
    procedure CetakClick(Sender: TObject);
    procedure ValasExit(Sender: TObject);
    procedure ValasEnter(Sender: TObject);
    Function CheckFormMaster:boolean;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure UpdateValas;
    procedure KursExit(Sender: TObject);
    procedure NoDOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure BPrevClick(Sender: TObject);
    procedure BNextClick(Sender: TObject);
    procedure HariExit(Sender: TObject);
    procedure KodeBrgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DsgCetakBtnClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure NoUrutChange(Sender: TObject);
    procedure KodeExpExit(Sender: TObject);
    procedure DiscPEnter(Sender: TObject);
    procedure DiscPExit(Sender: TObject);
    procedure KodeBrgEnter(Sender: TObject);
    procedure KodeBrgExit(Sender: TObject);
    procedure TanggalChange(Sender: TObject);
    procedure NoPPLExit(Sender: TObject);
    procedure CB1Click(Sender: TObject);
    procedure tambahClick(Sender: TObject);
    procedure KoreksiClick(Sender: TObject);
    procedure HapusClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dxPageControl1Change(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure VlsExit(Sender: TObject);
    procedure KetPembKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dxDBGrid2DblClick(Sender: TObject);
    procedure dxDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DiskonPEnter(Sender: TObject);
    procedure DiskonPExit(Sender: TObject);
    procedure PPNClick(Sender: TObject);
    procedure PPNEnter(Sender: TObject);
    procedure TglKirimBtnClick(Sender: TObject);
    procedure dxPageControl1Enter(Sender: TObject);
    procedure KodeGdgExit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure frxReport1AfterPrintReport(Sender: TObject);
    procedure NoUrutExit(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Panel9Click(Sender: TObject);
    procedure KeteranganxEnter(Sender: TObject);
    procedure QntExit(Sender: TObject);
    procedure KodeSuppKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CheckBox1Click(Sender: TObject);
    procedure KetBrgExit(Sender: TObject);
    procedure DiskonPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DiskonRpEnter(Sender: TObject);
    procedure DiskonRpExit(Sender: TObject);
    procedure DiskonRpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    mNamaSatuan: TNamaSatuanBrg;
    mIsiSatuan: TIsiSatuanBrg;
    mUbahHd, mUbahHdDet: Boolean;
    mNilaiDiscEnter: Real;
    XChoice:Char;
    perkiraan:string;
    mUrutPPL, XOSPPL:integer;
    Xdisc,XdiscRp,Xdisc2,XdiscRp2:Double;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure TampilIsiSupplier;
    procedure TampilIsiEkspedisi;
    procedure TampilIsiValas;
    procedure TampilIsiValasX;
    procedure IsiSatuan;
    procedure TampilIsiBarang;
    procedure IsiNoBuktiBaru;
    procedure TampilIsiPPL;
    function  ProsesDiskon(Sender:TObject): Real;
    procedure GetBarangdrSupp;
    Function  GetHargaBeli(KodeBrg:string):Double;
    procedure updateDiskon;
    procedure TampilDataUpdateDiskon(No_Bukti:String);
    procedure TampilIsiGudang;
    Procedure NamaBrg(XNama:string);
  public
    { Public declarations }
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel,xmodalkoreksi,Tunai: Boolean;
    NDiskon,NSubTotal,NDPP,NPPN,NNet,DiskonTotal,mNilaiEnter:real;
    yy,mm,dd : word;
    sishal, tothal, mTipeDisc,IsPPN : integer ;
    sisapr:Real;
    XCUstSupp,XBM:String   ;
    Procedure AmBilDataBeli;

  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrPO: TFrPO;
  mValid,mExit,mMasterKoreksi: Boolean;
  mUrut,MurutPO,IsTutup,mNosat,mPosisi:Integer;
  TipeTrans,PlusPPN,Nomor,Model:String;
  mBulan,mTahun:string;
  Biaya,IsiBrg,potongan:Real;
  S:array[0..255]of char;
  BM : TBookmark;

implementation
uses FrmBrows,MyProcedure, MyModul, FrmMainPO, FrmTglKirimPO;
{$R *.DFM}

// PROCEDURE DAN FUNCTION PRIBADI

procedure TFrPO.TampilIsiGudang;
begin
  KodeBrows:=11002;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeGdg.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    KodeGdg.Text:=FrBrows.QuBrows.FieldByName('KodeGdg').AsString;
    LAlamatGudang.Caption := '[ '+FrBrows.QuBrows.fieldbyname('Alamat').AsString+' ]';
  end
  else
    ActiveControl:=KodeGdg;
end;

procedure TFrPO.TampilTombolDetail(pNilai: Boolean);
begin
if dxPageControl1.ActivePageIndex=0 Then
Begin
  Panel6.Visible:=False;
  PanelShow1.Enabled:=not pNilai;
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  Panel3.Enabled:=pNilai;
  TambahBtn.Enabled:=not pNilai;
  KoreksiBtn.Enabled:=not pNilai;
  HapusBtn.Enabled:=not pNilai;
  Cetak.Enabled:=not pNilai;
  DsgCetakBtn.Enabled:=not pNilai;
  CB3.Enabled:=model='koreksi';
end
else  if dxPageControl1.ActivePageIndex=2 Then
Begin
  PanelShow1.Enabled:=not pNilai;
  Panel3.Enabled:=pNilai;
  Panel3.Visible:=pNilai;
  Panel6.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  Panel6.Enabled:=pNilai;
  TambahBtn.Enabled:=not pNilai;
  KoreksiBtn.Enabled:=not pNilai;
  HapusBtn.Enabled:=not pNilai;
  Cetak.Enabled:=not pNilai;
  DsgCetakBtn.Enabled:=not pNilai;
end;
end;

procedure TFrPO.TampilIsiSupplier;
begin
  KodeBrows:=110701;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeSupp.Text;
  FrBrows.NoKira:='HT';
  FrBrows.EditFilter.Text:=KodeSupp.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    with FrBrows.QuBrows do
    begin
      KodeSupp.Text:=fieldbyname('KodeCustSupp').AsString;
      perkiraan:=fieldbyname('perkiraan').AsString;
      LnamaSupp.Caption:=fieldbyname('NamaCustSupp').AsString;
      LAlamatSupp.Caption:=fieldbyname('Alamat').AsString;
      //PPN.ItemIndex:=fieldbyname('PPN').AsInteger;
      Hari.AsInteger:=FieldByName('HARI').AsInteger;
      IsPPN:= fieldbyname('PPN').AsINteger;
      Tunai:= FrBrows.QuBrows.fieldbyname('isppn').AsVariant;
      XCUstSupp:=fieldbyname('KodeCustSupp').AsString;
      IsiNoBuktiBaru;
      Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,isMax);
      GetBarangdrSupp;
      CBALL.Enabled:=XOSPPL>0;
      Ltanggal.Caption:='Jatuh Tempo : '+FormatDateTime('dd/mm/yyyy',Tanggal.Date+Hari.AsInteger);
      PPN.Items.Clear;
      if IsPPN=0 then
      //if PPN.ItemIndex=0 then
      begin
      PPN.Items.Add('None') ;
      End
      Else  if IsppN=1 then
      //if (ppN.ItemIndex=1) OR (PPN.ItemIndex=0) then
      Begin
      PPN.Items.Add('Exclude') ;
      PPN.Items.Add('Include') ;
      End;
      PPN.ItemIndex:=0;
    end;
  end else
    ActiveControl:=KodeSupp;
end;

procedure TFrPO.TampilIsiValas;
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

procedure TFrPO.TampilIsiValasX;
begin
  KodeBrows:=11001;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    with FrBrows.QuBrows do
    begin
       Vls.Text:=fieldbyname('KodeVls').AsString;
    end;
  end
  else
    ActiveControl:=Vls;
end;

procedure TFrPO.IsiSatuan;
begin
  LNamaSat.Caption:=IsiSatuanBrg(KodeBrg.Text, mNamaSatuan, mIsiSatuan);
end;

procedure TFrPO.TampilIsiBarang;
begin
  KodeBrows:=242015;
  Application.CreateForm(TFrBrows, FrBrows);
  //FrBrows.IsiData:=NoPPL.Text;
  FrBrows.IsiData:=perkiraan;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    with FrBrows.QuBrows do
    begin
      KodeBrg.Text:=FieldByName('KodeBrg').AsString;
      LNamaBrg.Caption:='[ '+FieldByName('NamaBrg').AsString+' ]';
      Qnt.Value:= FieldByName('SisaPPL').AsFloat;
      sisapr:= FieldByName('SisaPPL').AsInteger;
      NoSat.Value:=FieldByName('NoSat').AsInteger;
      NoPPL.Text:=FieldByName('NoBukti').AsString;
      mUrutPPL:=FieldByName('Urut').AsInteger;
      Tlt.Value :=FieldByName('Tolerate').AsFloat;
      if FieldByName('isjasa').AsInteger=1 then
      begin
      ketbrg.Text :=FieldByName('NamaBarang').AsString;
      LNamaBrg.Caption:='Jasa '+Ketbrg.Text;
      NamaBrg(LNamaBrg.Caption);
      end;
      //perkiraan:=FieldByName('perkiraan').AsInteger;
    end;
    IsiSatuan;
  end
   else
    ActiveControl:=KodeBrg;
end;

procedure TFrPO.TampilIsiPPL;
begin
  KodeBrows:=242014;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    with FrBrows.QuBrows do
    begin
      NoPPL.Text:=FieldByName('NoBukti').AsString;
    end;
  end
   else
    ActiveControl:=NoPPL;
end;

procedure TFrPO.TampilIsiEkspedisi;
begin
  KodeBrows:=1250;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeExp.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    with FrBrows.QuBrows do
    begin
      KodeExp.Text:=FieldByName('KodeExp').AsString;
      NamaExp.Caption:='[ '+FieldByName('NamaExp').AsString+' ]';
    end;
  end
end;

procedure TFrPO.IsiNoBuktiBaru;
begin
  DecodeDate(Date,YY,MM,DD);
  If DayOfTheMonth(Date)<=DD then
     DD:=DayOfTheMonth(date);
  Try
    TANGGAL.Date := EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),DD);
  Except
    TANGGAL.Date := EndOfAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln))
  end;
  if IsPPN=0 then


//  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal.Date,Xcustsupp,False)
 //18-4-2016 Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal.Date,Xcustsupp,False)
  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,
    NomorBukti,Tanggal.Date)
  //Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,
    //NomorBukti,Tanggal.Date,Xcustsupp,False)
  else
    if IsPPN=1 then

  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal.Date);
  //Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,
   // NomorBukti,Tanggal.Date,Xcustsupp,False);
  NoUrut.Text := NomorBukti;
  NOBUKTI.Text := Nomor;
  XBM:=Nomor;
end;

Procedure TFrPO.Hitung;
begin
   DiskonRp.Value:=QuBeliTotDiskon.AsFloat;
   Dpp.Value:=QuBeliTotDPP.AsFloat;
   Pajak.Value:=QuBeliTotPPN.AsFloat;
   GrandTotal.Value:=QuBeliTotNet.AsFloat;
   Npph.Value:=  QuBeliTotPPHRp.AsFloat;
   diskonp.Value:=QuBeliDisc.AsFloat;
end;

procedure TFrPO.TampilData(No_Bukti:String);
begin
   QuBeli.Close;
   QuBeli.SQL.Strings[2]:='select @NoBukti='+QuotedStr(No_Bukti);
   QuBeli.Open;

   Qukirim.Close;
   Qukirim.SQL.Strings[2]:='select @NoBukti='+QuotedStr(No_Bukti);
   Qukirim.Open;

   KodeSupp.Enabled:=QuBeli.IsEmpty;
   dxDBGrid1TotalUSD.Visible := (QuBeliKodeVls.Value<>'IDR');
   dxDBGrid1TotalIDR.Visible := Not (QuBeliKodeVls.Value<>'IDR');
   if QuBeli.IsEmpty=false then
   begin
      dxDBGrid1.OptionsDB:=[edgoCanNavigation,edgoLoadAllRecords,edgoUseBookmarks]
   end
   else
   begin
      dxDBGrid1.OptionsDB:=[edgoCanNavigation,edgoUseBookmarks];
   end;
   Hitung;
end;

procedure TFrPO.TampilDataKirim(No_Bukti,Kodebrg:String);
begin
   //Qukirim.Close;
   //Qukirim.SQL.Strings[2]:='select @NoBukti='+QuotedStr(No_Bukti)+',@kodeBrg='+QuotedStr(Kodebrg);
   //Qukirim.Open;
end;

procedure TFrPO.TampilDataBayarPO(No_Bukti:String);
begin
   QubayarPO.Close;
   QubayarPO.SQL.Strings[2]:='select @NoBukti='+QuotedStr(No_Bukti);
   QubayarPO.Open;
end;

function TFrPO.ProsesDiskon(Sender:TObject): Real;
var price,disc1,disc2,disc3,disc4,disc5:real;
begin
   {Price:=Harga.AsFloat*qnt.AsFloat;
    Disc1:=0; Disc2:=0; Disc3:=0; Disc4:=0; Disc5:=0;
    if Price<>0 then
    begin
      if DiscP.AsFloat<>0 then
         Disc1:=Price*(DiscP.AsFloat/100);
      Price:=Price-Disc1;
      {if DiscPDet2.AsFloat<>0 then
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
    Result:=Harga.AsFloat-Price;   }
    //Result:=Price-DiscRp.AsFloat;
       price:=Harga.AsFloat;
   disc1:=0;disc2:=0;disc3:=0;disc4:=0;
   if price<>0 then
   begin
      //if DiscP1.AsFloat<>0 then
      //   disc1:=price*(DiscP1.AsFloat/100);
      //price:=price-disc1;
      //if DiscP2.AsFloat<>0 then
      //   disc2:=price*(DiscP2.AsFloat/100);
      //price:=price-disc2;
      //if DiscP3.AsFloat<>0 then
      //   disc3:=price*(DiscP3.AsFloat/100);
      //price:=price-disc3;

      if Sender<>DiscRp then
      begin
         if DiscP.AsFloat<>0 then
         begin
            disc4:=price*(DiscP.AsFloat/100);
            DiscRp.Value:=disc4;
         end else
            DiscRp.Value:=0;
      end else
      begin
         if DiscRp.AsFloat<>0 then
         begin
            disc4:=DiscRp.AsFloat;
            DiscP.Value:=(DiscRp.AsFloat/price)*100;
         end else
            DiscP.Value:=0;
      end;
      price:=price-disc4;
   end;
   Result:=Harga.AsFloat-price;
end;

Function TFrPO.CheckFormMaster:boolean;
begin
   if (length(KodeSupp.Text)=0)or(length(Valas.Text)=0) then
   CheckFormMaster:=false
   else
   CheckFormMaster:=true;
end;

procedure TFrPO.UpdatedbBeli;
begin
  if xmodalkoreksi Then
   Begin
   if CheckBox1.Checked Then
    Begin
    {With QuUpdatedbbeli do
     Begin
      Close;
      SQL.Clear;
      SQL.Add('Exec [sp_PORev] '+QuotedStr(NoBukti.Text)+',0,0,''PO NoBukti=>'+NoBukti.Text+' Close '',2');
      ExecSQL;
     end;}


    end
    else
    begin
           With QuUpdatedbbeli do
     Begin
      Close;
      SQL.Clear;
      SQL.Add('Update dbPOdet set PphP=0 where noBukti='+QuotedStr(NoBukti.Text));
      //Prepared;
      //Parameters[0].Value:=pph.Value;
      //Parameters[0].Value:=Pppn.Value;
      ExecSQL;
     end;
    end;
  with QuUpdatedbBeli do
  begin
     Close;
     Sql.Clear;
     SQL.Add('Update dbPO');
     SQL.Add('Set Tanggal=:0, KodeSupp=:1, Keterangan=:2, KodeVls=:3, Kurs=:4, PPN=:5, ');
     SQL.Add('TipeBayar=:6, Hari=:7, TglJatuhTempo=:8, Disc=:9,IsClose=:10,IsExp=:11, kodegdg=:12,kodeExp=:13 ');
     SQL.Add('Where NoBukti='+QuotedStr(NoBukti.Text));
     Prepared;
     Parameters[0].Value := TANGGAL.Date;
     Parameters[1].Value := KodeSupp.Text;
     Parameters[2].Value := Keterangan.Text;
     Parameters[3].Value := Valas.Text;
     Parameters[4].Value := Kurs.Value;
     if IsPPN=1 then
     Parameters[5].Value := PPN.ItemIndex+1
     Else if IsPPN=0 then
     Parameters[5].Value := PPN.ItemIndex;
     Parameters[6].Value := TIPE.ItemIndex;
     Parameters[7].Value := Hari.AsInteger;
     Parameters[8].Value := TANGGAL.Date+Hari.AsInteger;
     Parameters[9].Value := DiskonP.AsFloat;
     Parameters[10].Value :=CB2.Checked;
     Parameters[11].Value :=CB.Checked;
     Parameters[12].Value := KodeGdg.Text;
     Parameters[13].Value := Keteranganx.Text;
     ExecSQL;
     if mUbahHdDet=True then
     begin
         Close;
         SQL.Clear;
         SQL.Add('exec sp_UpdatePO '+QuotedStr(NoBukti.Text));
         ExecSQL;
         TampilData(NoBukti.Text);
     end;
   end;
  end;
       With QuUpdatedbbeli do
     Begin


      Close;
      SQL.Clear;
      SQL.Add('Update dbPOdet set PphP=:0,PPnP=:1 where noBukti='+QuotedStr(NoBukti.Text));
      Prepared;
      Parameters[0].Value:=pph.Value;
      if CB.Checked then
          Parameters[1].Value:=12
        else
      Parameters[1].Value:=PpnP.Value;
      ExecSQL;
     end;
end;

procedure TFrPO.UpdateValas;
begin
{      with QuUpdatedbBeli do
      begin
         Close;
         Sql.Clear;
         SQL.Add('Update dbValas');
         SQL.Add('Set Kurs=:0');
         SQL.Add('Where KOdeVls=:1');
         Prepared;
         Parameters[0].Value:=Kurs.Value;
         Parameters[1].Value:=Valas.Text;
         ExecSQL;
      end;
}
end;


procedure TFrPO.ClearPanelDetail;
begin
if dxPageControl1.ActivePageIndex=0 Then
 Begin
   NoPPL.Text:='';
   KodeBrg.Text:='';
   LNamaBrg.Caption:='[ . . . ]';
   Qnt.Value:=1;
   NoSat.Value:=1;
   Harga.Value:=0;
   DiscP.Value:=0;
   DiscRp.Value:=0;
   LNamaSat.Caption:='[ . . . ]';
   KetBrg.Clear;
 end
else  if dxPageControl1.ActivePageIndex=2 Then
begin
  KetPemb.Text:='';
  CB4.Checked:=False;
  Vls.Text:='IDR';
  Persen.AsFloat:=0;
  Nilai.AsFloat:=0;
end;
end;

procedure TFrPO.RefreshAll;
var i:integer;
begin
   mValid:=False;
   KodeSupp.Enabled:=true;
   mUbahHd:=False; mUbahHdDet:=False;
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
   LnamaSupp.Caption:='';
   LAlamatSupp.Caption:='';
   NamaExp.Caption:='[ . . . ]';
   Valas.Text:='IDR';
   Kurs.Value:=1;
   TIPE.ItemIndex:=0;
   Hari.Value:=0;
   CB2.Enabled:=FrMainPO.ModalKoreksi;
   dxPageControl1.ActivePageIndex:=0;
   ClearPanelDetail;
end;

procedure TFrPO.UpdateDataBeli(Choice:Char;Kodet:String);
begin
   if Choice='I' then mUrut:=1
     else mUrut:=QuBeliUrut.AsInteger;

   BM:=QuBeli.GetBookmark;
   With Sp_Beli do
   begin
       Parameters.Refresh;
       Parameters[1].Value:=Choice;
       Parameters[2].Value:=NoBukti.Text;
       Parameters[3].Value:=NoUrut.Text;
       Parameters[4].Value:=TANGGAL.Date;
       Parameters[5].Value:=TANGGAL.Date+Hari.AsInteger;
       Parameters[6].Value:=KodeSupp.Text;
       Parameters[7].Value:=Handling.AsFloat;
       Parameters[8].Value:=KodeExp.Text;
       Parameters[9].Value:=Keterangan.Text;
       Parameters[10].Value:=FakturSupp.Text;
       Parameters[11].Value:=Valas.Text;
       Parameters[12].Value:=Kurs.AsFloat;
       if ISppn=0 then
       Parameters[13].Value:=PPN.ItemIndex
       else if IsPPN=1 then
       begin
         Parameters[13].Value:=PPN.ItemIndex+1;
       End;
       Parameters[14].Value:=TIPE.ItemIndex;
       Parameters[15].Value:=Hari.AsInteger;
       Parameters[16].Value:=0;
       Parameters[17].Value:=Diskon.AsFloat;
       Parameters[18].Value:=0;
       Parameters[19].Value:=mUrut;
       Parameters[20].Value:=KodeBrg.Text;
       Parameters[21].Value:=Qnt.AsFloat;
       Parameters[22].Value:=NoSat.AsInteger;
       Parameters[23].Value:=mNamaSatuan[NoSat.AsInteger];
       Parameters[24].Value:=mIsiSatuan[NoSat.AsInteger];
       Parameters[25].Value:=Harga.AsFloat;
       Parameters[26].Value:=DiscP.AsFloat;
       Parameters[27].Value:=DiscRp.AsFloat;
       if Choice='D' then
         Parameters[28].Value:=QuBeliNoPPL.AsString
       else Parameters[28].Value:=NoPPL.Text;
       Parameters[29].Value:=CB2.Checked;
       Parameters[30].Value:=CB3.Checked;
       Parameters[31].Value:='Ubah Data';
       Parameters[32].Value:=CB.Checked;
       Parameters[33].Value:=Tlt.AsFloat;
       if Choice='D' then
         Parameters[34].Value:=QuBeliUrutPPL.AsInteger
       else Parameters[34].Value:=mUrutPPL;
       Parameters[35].Value := KodeGdg.Text;
       Parameters[36].Value := DiscPDet2.Value;
       Parameters[37].Value := DiscPDet3.Value;
       Parameters[38].Value := DiscPDet4.Value;
       Parameters[39].Value := DiscPDet5.Value;
       if Tunai=true then
          Parameters[40].Value := 1
       else
        Parameters[40].Value := 0
       ;
       Parameters[41].Value := CheckBox1.Checked;
       Parameters[42].Value := PPH.Value;
       Parameters[43].Value:=KetBrg.Text;
       Parameters[44].Value:=PpnP.Value;

       try
          ExecProc;
          if Choice='I' then
          begin
            TampilData(NOBUKTI.Text);
            QuBeli.Locate('KodeBrg',KodeBrg.Text,[LOP,LOC]);
            LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                    'Kode Brg = '+KodeBrg.Text+' , Qnt = '+Qnt.Text+' '+mNamaSatuan[NoSat.AsInteger]+
                    ' , Harga = '+Harga.Text);
           ////
           { With sp_kiriman do
              begin
               Parameters.Refresh;
               Parameters[1].Value:='I';
               Parameters[2].Value:=NoBukti.Text;
               Parameters[3].Value:=KodeBrg.Text;
               Parameters[4].Value:=TglKirim.Date;
               Parameters[5].Value:=Qnt.AsFloat;
              try
               ExecProc;
              Except
               ShowMessage('Gagal Input');
              end;
              end;
              }
           ////
          end else if Choice='U' then
          begin
            TampilData(NOBUKTI.Text);
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
              //QuBeli.Last;
              //QuBeli.Locate('Urut', mUrut, []);
            end;
            //QuBeli.Locate('Urut', mUrut, []);
            LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                    'Kode Brg = '+KodeBrg.Text+' , Qnt = '+Qnt.Text+' '+mNamaSatuan[NoSat.AsInteger]+
                    ' , Harga = '+Harga.Text);
          end
          Else if Choice='D' then
          begin
            LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                    'Kode Brg = '+QuBeliKodeBrg.AsString+' , Qnt = '+QuBeliQnt.DisplayText+' '+QuBeliSatuan.AsString+
                    ' , Harga = '+QuBeliHarga.DisplayText);
            TampilData(NOBUKTI.Text);
          end;
          Hitung;
          QuBeli.Locate('Urut', mUrut, []);
       except
          If (Choice='I') Or (Choice='U') then
             showmessage('Proses Gagal !                   ')
          else If (Choice='D') then
             showmessage('Proses Gagal !, Barang berkaitan dengan transaksi lain.');
       end;

   end;
   FrMainPO.ToolButton10.Click;
   TampilData(NObukti.Text);
end;

Procedure TFrPO.AmBilDataBeli;
begin
   if not QuBeli.IsEmpty then
   begin
      if QuBeliPPnP.AsFloat=10 then
         CPpnP.ItemIndex:=0
     else
     if QuBeliPPnP.AsFloat=11 then
       CPpnP.ItemIndex:=1
       else
     if QuBeliPPnP.AsFloat=12 then

          CPpnP.ItemIndex:=2;




      Tanggal.Date:=QuBeli.fieldbyname('Tanggal').AsDateTime;
      KodeSupp.Text:=QuBeli.fieldbyname('KodeSupp').AsString;
      FakturSupp.Text:=QuBeli.fieldbyname('FakturSupp').AsString;
      Handling.AsFloat :=QuBeli.fieldbyname('Handling').AsFloat;
      CB2.Checked:=QuBeliIsClose.AsBoolean;
      KodeExp.Text:=QuBeliKodeExp.AsString;
      NamaExp.Caption:='[ '+QuBeliNamaExp.AsString+' ]';
      LnamaSupp.Caption:=QuBeli.fieldbyname('NamaCustSupp').AsString;
      LAlamatSupp.Caption:=QuBeli.fieldbyname('Alamat').AsString;
      Tipe.ItemIndex:=QuBeli.fieldbyname('tipeBayar').AsInteger;
      hari.AsInteger:=QuBeli.fieldbyname('Hari').AsInteger;
      DiskonP.AsCurrency:=QuBeli.fieldbyname('Disc').AsCurrency;
      Keterangan.Text:=QuBeli.fieldbyname('keterangan').AsString;
      Keteranganx.Text:=QuBeli.fieldbyname('Kodeexp').AsString;
      //Ppn.ItemIndex:=QuBeli.fieldbyname('PpnTrans').AsInteger-1;
      if IsPPN=1 then
      PPN.ItemIndex:=QuBeliPPNTrans.AsInteger-1
      Else if Isppn=0 then
         PPN.ItemIndex:=QuBeliPPNTrans.AsInteger;
      Valas.Text:=QuBeli.fieldbyname('KodeVls').AsString;
      Kurs.Value:=QuBeli.fieldbyname('Kurs').AsCurrency;
      Ltanggal.Caption := 'Jatuh Tempo : '+FormatDateTime('DD/MM/YYYY',QuBeli.fieldbyname('TglJatuhTempo').AsDateTime);
      CB.Checked:=QuBeliIsExp.AsBoolean;
      KodeGdg.Text := QuBeliKodegdg.AsString;
      LAlamatGudang.Caption := '[ '+QuBeliALamatGdg.AsString+' ]';
      DiscPDet2.Value:=QuBeliDiscp2.AsFloat;
      DiscPDet3.Value:=QuBeliDiscp3.AsFloat;
      DiscPDet4.Value:=QuBeliDiscp4.AsFloat;
      DiscPDet5.Value:=QuBeliDiscp5.AsFloat;
      CheckBox1.Checked:=QuBeliispph.AsBoolean;
      pph.Value:= QuBelipphp.AsFloat;
      Ketbrg.Text:=QuBeliKetBrg.AsString;
      Ppnp.Value:=QuBeliPPnP.AsFloat;

      //TglKirim.Date:=QuBeliTglKirim.AsDateTime;
   end;
end;



// PROCEDURE DAN FUNCTION MILIK DELPHI

procedure TFrPO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if mExit=true then
  begin
     Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,IDUser);
     Action:=cafree;
     FrmainPO.dxPageControl1.ActivePageIndex:=1;
     FrmainPO.Qumaster.Locate('NObukti',FrPO.XBM,[LOP,LOC]);

  end
  else
  begin
     Action:=caNone;
  end;
end;

procedure TFrPO.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrPO.FormShow(Sender: TObject);
begin
  mValid:=False;
  xModalKoreksi:=FrMainPO.ModalKoreksi;
   CPpnP.Clear;
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
   end;

  If xModalKoreksi=False then
  begin
    RefreshAll;
    //IsiNoBuktiBaru;
    TampilData(NoBukti.Text);
    ActiveControl:=KodeSupp;
    //NoUrut.Enabled:=false;
    //TglKirim.Date:=Date;
  end
  else
  Begin
    NOBUKTI.Text:=FrMainPO.QuMasterNoBukti.AsString;
    Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,isMax);
    TampilData(NOBUKTI.Text);
    PPN.Items.Clear;
    IsPPN:=FrMainPO.QuMasterFlagTipe.AsInteger;
    if IsPPN=0 then
    begin
    PPN.Items.Add('None') ;
    PPN.Items.Add('Exclude') ;
    PPN.Items.Add('Include') ;
    PPN.ItemIndex:=0
    End
    Else  if IsppN=1 then
    Begin
    PPN.Items.Add('Exclude') ;
    PPN.Items.Add('Include') ;
    End;
    //PPN.ItemIndex:=0;
    AmBilDataBeli;
    NoUrut.Text:=QuBeliNoUrut.AsString;
    NoUrut.Enabled:=False;
    //CB.Checked:=(Handling.AsFloat>0.0) and ((Trim(KodeExp.Text)<>'') or (Trim(KodeExp.Text)<>'-'));
    ActiveControl:=Tanggal;
    CBALL.Enabled:=False;
    NoUrut.Enabled:=false;
    {mvalid:=true;
    KodeSuppExit(kodesupp);
    mvalid:=false;}
    with dm.QuCari do
    begin
      SQL.Clear;
      sql.Add(' select perkiraan from DBPERKCUSTSUPP where kodecustsupp =:0 and urut=1' );
      Parameters[0].Value:=KodeSupp.Text;
      Open;
      perkiraan:=fieldbyname('perkiraan').AsString
    end;


  end;
end;

procedure TFrPO.FormCreate(Sender: TObject);
begin
  TipeTrans:='PO';
  LnamaSupp.Caption:='';
  LAlamatSupp.Caption:='';
  Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
  mUbahHd:=False;
  mUbahHdDet:=False;
end;

procedure TFrPO.TambahBtnClick(Sender: TObject);
begin
  if CheckFormMaster=true then
  begin
    if dxPageControl1.ActivePageIndex=0 Then
    Begin
      Model:='write';
      TampilTombolDetail(True);
      KodeBrg.Enabled:=True;
      ActiveControl:=KodeBrg;
    end
    else if dxPageControl1.ActivePageIndex=2 Then
    begin
     Model:='write';
     TampilTombolDetail(True);
     ActiveControl:=KetPemb;
     XChoice:='I';
    end;
  end;
end;

procedure TFrPO.QntKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key=VK_Escape then
   begin
      mValid:=false;
      KodeBrg.Enabled:=true;
      Panel2.Enabled:=true;
      ClearPanelDetail;
      if model='write' then
         ActiveControl:=KodeBrg
      else
      begin
         SpeedButton1.Click;
      end;
   end;
end;

procedure TFrPO.TanggalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
  begin
      if  (CekPeriode(IDUser,TANGGAL.Date)=False) then
        Abort;
      UpdatedbBeli;
  end
  else if Key=Vk_Escape then
  begin
    If xModalKoreksi = False then
    begin

      Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
      mValid:=False;
      RefreshAll;
      //IsiNoBuktiBaru;
      TampilData(NOBUKTI.Text);
      ActiveControl:=KodeSupp;

      mExit:=True;
      //Close;
    end
    else
    begin
      mExit:=True;
      Close;
    end;
  end;
end;

procedure TFrPO.KoreksiBtnClick(Sender: TObject);
begin
  if CheckFormMaster=true then
  begin
    mValid:=False;
    if dxPageControl1.ActivePageIndex=0 Then
    begin
      Model:='koreksi';
      // data yang di update
      //DataBersyarat('select Sum(SisaPPL) SisaPPL,Kodebrg,Nobukti from vwoutPPL where nobukti =:0 and KOdebrg =:1 group by NObukti,KOdebrg',[QuBeliNoPPL.asstring,KOdebrg.text],DM.Qucari) ;
      Begin
          if QuBeli.IsEmpty=false then
          begin
            TampilTombolDetail(True);
            KodeBrg.Enabled:=False;
            mUrut:=QuBeliUrut.AsInteger;
            KodeBrg.Text:=QuBeliKodeBrg.AsString;
            LNamaBrg.Caption:='[ '+QuBeliNamaBrg.AsString+' ]';
            Qnt.AsFloat:=QuBeliQnt.AsFloat;
            NoSat.Value:=QuBeliNosat.AsInteger;
            Harga.Value:=QuBeliHarga.AsFloat;
            DiscP.Value:=QuBeliDISCP.AsFloat;
            DiscRp.Value:=QuBeliDISCTOT.AsFloat;
            NoPPL.Text:=QuBeliNoPPL.AsString;
            mPosisi:=QuBeliUrut.AsInteger;
            CB3.Checked:=QuBeliIsCloseD.AsBoolean;
            Tlt.AsFloat:=QuBeliTolerate.AsFloat;
            DiscPDet2.Value:=QuBeliDiscp2.AsFloat;
            DiscPDet3.Value:=QuBeliDiscp3.AsFloat;
            DiscPDet4.Value:=QuBeliDiscp4.AsFloat;
            DiscPDet5.Value:=QuBeliDiscp5.AsFloat;
            Tlt.Value:=QuBeliToleratePO.AsFloat;
            IsiSatuan;
            if QuBeliproses.AsInteger=1 then
            begin
              LNamaBrg.Caption:='Jasa '+QuotedStr(QuBeliKetBrg.AsString);
              NamaBrg(LNamaBrg.Caption);
              Ketbrg.Text:=lnamabrg.Caption;
            end;
            DataBersyarat('select Sum(SisaPPL) SisaPPL,Kodebrg,Nobukti from vwoutPPL where nobukti =:0 and KOdebrg =:1 group by NObukti,KOdebrg',[QuBeliNoPPL.asstring,KOdebrg.text],DM.Qucari) ;
            sisapr:=Dm.QuCari.FieldByname('SisaPPL').AsFloat;
            ActiveControl:=Qnt;

          end
          else
          begin
            MsgKoreksiDataKosong;
            ActiveControl:=dxDBGrid1;
          end;
      end;
    end
     else  if dxPageControl1.ActivePageIndex=2 Then
      Begin
       if QubayarPO.IsEmpty=false then
        begin
          XChoice:='U';
          TampilTombolDetail(True);
          KetPemb.Text:=QubayarPOKeterangan.AsString;
          CB4.Checked:=QubayarPODP.AsBoolean;
          Vls.Text:=QubayarPOKodeVls.AsString;
          Persen.AsFloat:=QubayarPOPersentase.AsFloat;
          Nilai.AsFloat:=QubayarPONilai.AsFloat;
          ActiveControl:=KetPemb;
        end
       else
       begin
        ShowMessage('Tidak ada transaksi yang dikoreksi !');
        ActiveControl:=dxDBGrid3;
     end;
      end;
  end;
end;

procedure TFrPO.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
    if xModalKoreksi then
    begin
      mExit := True;
      Close;
    end
    else
    begin
      RefreshAll;
      //IsiNoBuktiBaru;
      TampilData(NOBUKTI.Text);
      ActiveControl:=KodeSupp;
    end;
  end
  else if key=VK_return then
  begin
    if QuBeli.IsEmpty then
      TambahBtn.Click
    else KoreksiBtn.Click;
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

procedure TFrPO.HapusBtnClick(Sender: TObject);
begin
  if CekPeriode(IdUser,TANGGAL.Date)=true then
  begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
     if dxPageControl1.ActivePageIndex=0 Then
      Begin
       if QuBeli.IsEmpty=true then
       begin
          MsgHapusDataKosong;
       end
       else
       begin
          StrPCopy(S,Format('Anda yakin Kode %s dan Nama Barang %s dihapus ?',
          [QuBeliKodeBrg.asstring, QuBeliNamaBrg.asstring]));
          if (Application.MessageBox(S,'Hapus Data',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
          begin
           with DM.QuCari do
           Begin
            Close;
            SQL.Clear;
            SQL.Add('Select KodeBrg from dbBeliDet a Left Outer Join dbBeli b on a.NoBukti=b.NoBukti  where KodeBrg=:0 and NoPO=:1 and urutpo=:2 ');
            Parameters[0].Value:=QuBeliKodeBrg.AsString;
            Parameters[1].Value:=NoBukti.Text;
            Parameters[2].Value:=QuBeliUrut.AsInteger;
            Open;
           end;
           if DM.QuCari.RecordCount>0 Then
             MessageDlg('NoBukti='+NoBukti.Text+' dan Kodebrg='+QuBeliKodeBrg.AsString+' Sudah Ada Transaksi di Pembelian !',mtError,[mbOK],0)
           else
             UpdateDataBeli('D','BL');
         end;
       end;
    end
    else if dxPageControl1.ActivePageIndex=2 Then
    Begin
      XChoice:='D';
      BitBtn3.Click;
    end;
    end
    else
    begin
       MsgPeriodeSudahDikunci;
       ActiveControl:=dxDBGrid1;
    end;
  end else
    MsgTanggalTidakSesuaiPeriode;
end;

procedure TFrPO.wwDBGrid1Enter(Sender: TObject);
begin
  FrPO.KeyPreview:=false;
  CheckFormMaster;
end;

procedure TFrPO.wwDBGrid1Exit(Sender: TObject);
begin
  FrPO.KeyPreview:=true;
end;

procedure TFrPO.wwDBGrid1DblClick(Sender: TObject);
begin
  KoreksiBtn.Click;
end;

procedure TFrPO.NoUrutKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{  if Key=Vk_Return then
  begin
    If Length(NoUrut.Text)<4 then
    begin
      MessageDlg('Nomor urut kurang '+InttoStr(4-Length(NoUrut.Text))+' digit.',mtWarning,[MbOk],0);
      ActiveControl := NoUrut;
    end
    else
    begin
      TampilData(NoBukti.Text);
      if not QuBeli.IsEmpty then
      Begin
         AmBilDataBeli;
      end
      else
      Begin
        if FrMainPO.ModalKoreksi then
        begin
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
  else} if Key=Vk_Escape then
  begin
    mExit := True;
    Close;
  end;
end;

procedure TFrPO.TanggalEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrPO.TanggalExit(Sender: TObject);
begin
  if mValid then
  begin
     if CekPeriode(IdUser,TANGGAL.Date)=false then
     begin
        MsgTanggalTidakSesuaiPeriode;
        ActiveControl:=tanggal;
     end;
  end;
end;

procedure TFrPO.KodeSuppEnter(Sender: TObject);
begin
  mValid:=true;
end;

Procedure TFrPO.GetBarangdrSupp;
Begin
With QuOSPR do
 begin
  Close;
  {SQL.Clear;
  SQL.Add('select a.NoBukti,a.kodebrg,c.NAMABRG,SUM(a.Qnt*isi)QntPPL,a.Nosat,a.Sat Satuan,a.Isi,Isnull(b.Qnt,0) QntPO,SUM(a.Qnt*isi)-Isnull(b.Qnt,0)sisa from DBPPLDET a ');
  SQL.Add('Left Outer Join (select NoPPL,Kodebrg,SUM(Qnt*isi)Qnt from DBPODET  group by NoPPL,Kodebrg)b On a.Nobukti=b.NoPPL and a.kodebrg=b.KODEBRG ');
  SQL.Add('left Outer Join DBBARANG c On c.KODEBRG=a.kodebrg ');
  SQL.Add('Left Outer Join dbPPL A1 On A1.NoBukti=A.NoBukti ');
  SQL.Add('where c.KodeSupp='+QuotedStr(KodeSupp.Text)+' and Case when Isnull(A1.IsClose,0)=0 Then Isnull(A.IsClose,0)else Isnull(A1.IsClose,0) end=0 ');
  SQL.Add('group by a.NoBukti,a.kodebrg,b.Qnt,c.NAMABRG,a.Nosat,a.Sat,a.Isi ');
  SQL.Add('having SUM(a.Qnt*isi)-Isnull(b.Qnt,0)<>0');}
  Prepared;
  Parameters[0].Value:=KodeSupp.Text;
  Open;
  XOSPPL:=RecordCount;
end;
end;

Function  TFrPO.GetHargaBeli(KodeBrg:string):Double;
Begin
 With DM.QuCari do
 begin
  Close;
  SQL.Clear;
  SQL.Add('Select Top 1 Isnull(Harga,0)Harga,DiscP,DiscTot From dbBelidet a Left Outer Join dbBeli b On a.NoBukti=b.noBukti where Kodebrg='+QuotedStr(KodeBrg)+' Order By Tanggal Desc ');
  Open;
  If RecordCount=0 Then
  Begin
   Result:=0.0;
   Xdisc:=0;
   XdiscRp:=0;
   Xdisc2:=0;
   XdiscRp2:=0;
  end
  else
   Begin
    Result:=FieldByName('Harga').AsFloat;
    Xdisc:=FieldByName('DiscP').AsFloat;;
    XdiscRp:=FieldByName('DiscTot').AsFloat;;
    //Xdisc2:=FieldByName('DiscP2').AsFloat;;
    //XdiscRp2:=FieldByName('DiscTot2').AsFloat;;
   end
 end;
end;


procedure TFrPO.KodeSuppExit(Sender: TObject);
begin
  if mValid Then
  begin
    Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,IDUser);
    if length(KodeSupp.Text)=0
    then TampilIsiSupplier else
    begin
      if (DataBersyarat('select X.KodeCustSupp ,x.perkiraan, Y.NamaCustSupp, '+
                        ' rtrim(ltrim(isnull(Y.Alamat1,'''')+case when isnull(Y.Alamat2,'''')='''' then '''' else '' ''+Y.Alamat2 end)) Alamat, '+
                        ' Y.Kota,PPN,Hari '+
                        ' from '+
                        '  (select A.KodeCustSupp,a.Perkiraan  from DBPERKCUSTSUPP A, DBPOSTHUTPIUT B '+
                        '   where B.Perkiraan=A.Perkiraan and B.Kode=''HT'' '+
                        '   group by A.KodeCustSupp,a.Perkiraan  '+
                        '  ) X, DBCUSTSUPP Y '+
                        ' where X.KodeCustSupp=Y.KodeCustSupp '+
                        ' and (Y.KodeCustSupp like :0 or Y.NamaCustSupp like :1) '+
                        ' order by X.KodeCustSupp',['%'+KOdeSupp.Text+'%','%'+KOdeSupp.Text+'%'],Dm.Qucari)=true
                        )//and (length(perkiraan)=0)

                        then
      begin
        with DM.QuCari do
        begin
           KodeSupp.Text:=fieldbyname('KodeCustSupp').AsString;
           perkiraan:=fieldbyname('perkiraan').asstring;
           LnamaSupp.Caption:=fieldbyname('NamaCustSupp').AsString;
           LAlamatSupp.Caption:=fieldbyname('Alamat').AsString;
          // PPN.ItemIndex:=fieldbyname('PPN').AsInteger;
           Hari.AsInteger:=FieldByName('Hari').AsInteger;
           IsPPN:=fieldbyname('PPN').AsInteger;
            XCUstSupp:=fieldbyname('KodeCustSupp').Asstring;
            IsiNoBuktiBaru;
            Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,isMax);
            GetBarangdrSupp;
            CBALL.Enabled:=XOSPPL>0;
            Ltanggal.Caption:='Jatuh Tempo : '+FormatDateTime('dd/mm/yyyy',Tanggal.Date+Hari.AsInteger);
            PPN.Items.Clear;
            if IsPPN=0 then
            begin
            PPN.Items.Add('None') ;
            End
            Else  if IsppN=1 then
            Begin
            PPN.Items.Add('Exclude') ;
            PPN.Items.Add('Include') ;
            End;
            PPN.ItemIndex:=0;

        end;
      end
      else TampilIsiSupplier;
    end;

  end;
end;

procedure TFrPO.CetakClick(Sender: TObject);
var N1, N2, N3 : string;
    T1, T2 : Real;
    Tot : byte;
    H1  : real;
begin
  tothal :=(QuBeli.RecordCount div 10);
  sishal :=(QuBeli.RecordCount mod 10);
  if sishal>0 then tothal :=tothal+1;
  N3  := FloatToStr(GrandTotal.Value+Handling.AsFloat);
  Tot := CariKoma(N3);
  if Tot <> 0 then
  begin
    N1  := copy(N3, 1, Tot-1);
    N2  := copy(N3, Tot+1, 2);
  end else
  begin
    N1  := N3;
    N2  := '0';
  end;
  //H1  := (GrandTotal.Value+HandlingFee.AsFloat);
  T1  := StrToFloat(N1);
  T2  := StrToFloat(N2);
  N1  := KonversiKeTeks(T1);
  if T2 <> 0 then
  begin
    if T2 < 10 then
       N2 := KonversiKeTeks(T2)
    else
       N2 := KonversiKeTeks(T2);
    if N1 = '' then
       TempCode:=N2+'Sen'
    else
       TempCode:=N1+'Rupiah '+N2+'Sen';
  end
  else
    TempCode:=N1+'Rupiah ';

  With QuUpdatedbbeli do
  begin
    close;
    sql.clear;
    sql.add('Select * From vwPerusahaan ');
    Open;
  end;

//  frxReport1.LoadFromFile(currDir+'Nota\NotaBELI01.fr3');
  frxDBDataset1.Close;
  frxDBDataset1.Open;
  frxDBDataset1.DataSet:=QuReport;
  QuReport.close;
  QuReport.SQL.Clear;
  Qureport.SQL.Add('Exec sp_CetakPO :0,:1');
  Qureport.Parameters[0].Value:=Nobukti.Text;
  Qureport.Parameters[1].Value:=0;
  QuReport.open;

  frxReport1.LoadFromFile(currDir+'Nota\NotaPO1.fr3');
  frxReport1.ShowReport;

end;

procedure TFrPO.ValasExit(Sender: TObject);
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

  if Kurs.Enabled=false then ActiveControl:=PPN else ActiveControl:=Kurs;

end;

Procedure TFrPO.NamaBrg(XNama:string);
Begin
  KetBrg.Visible:= POS('Jasa',XNama)>0;
  if Trim(QuBeliKetBrg.AsString)='' Then
  Begin
  KetBrg.Text:=KetBrg.Text;
  if  KetBrg.Visible Then activeControl:=KetBrg;
  end
  //else
  //KetBrg.Text:=QuBeliKetBrg.AsString;
  //KetBrg.Text:=
end;

procedure TFrPO.ValasEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrPO.BitBtn1Click(Sender: TObject);
begin
  mValid:=False;
  if CekPeriode(IDUser, Tanggal.Date)=True then
  begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      if Model='write' then
      begin
        if length(Kodebrg.Text)>0 then
        begin
          UpdateDataBeli('I','BL');
          if DataBersyarat('Select * from DbKirimDet where Nobukti=:0 and KOdeBrg=:1', [Nobukti.Text,Kodebrg.text], DM.QuCari)=False then
           begin
             with dm.QuCari do
             begin
              Sql.Clear;
              Sql.add('Insert into DbKirimDet (Nobukti,kodebrg,nosat,Urut,Tanggal,Qnt)');
              Sql.Add('Values (:0,:1,:2,1,:3,:4)');
              Parameters[0].Value:=NoBukti.Text;
              Parameters[1].value:=KodeBrg.Text;
              Parameters[2].Value:=NoSat.Text;
              Parameters[3].Value:=Tanggal.Date;
              Parameters[4].Value:=Qnt.Value;
              ExecSQL;
             end;
           end;
          Qukirim.Close;
         Qukirim.SQL.Strings[2]:='select @NoBukti='+QuotedStr(Nobukti.Text);
         Qukirim.Open; 
          ClearPanelDetail;
          ActiveControl:=KodeBrg;

        end
        else
        begin
          MsgDataTidakBolehKosong('Kode Barang');
          ActiveControl:=KodeBrg;
        end;
      end
      else if model='koreksi' then
      begin
        UpdateDataBeli('U','BL');
        if DataBersyarat('Select * from DbKirimDet where Nobukti=:0 and KOdeBrg=:1', [Nobukti.Text,Kodebrg.text], DM.QuCari)=False then
           begin
             with dm.QuCari do
             begin
              close;
              Sql.Clear;
              Sql.add('Insert into DbKirimDet (Nobukti,kodebrg,nosat,Urut,Tanggal,Qnt)');
              Sql.Add('Values (:0,:1,:2,1,:3,:4)');
              Parameters[0].Value:=NoBukti.Text;
              Parameters[1].value:=KodeBrg.Text;
              Parameters[2].Value:=NoSat.Text;
              Parameters[3].Value:=Tanggal.Date;
              Parameters[4].Value:=Qnt.Value;
              ExecSQL;
             end;
           end;
        SpeedButton1.Click;
        Qukirim.Close;
         Qukirim.SQL.Strings[2]:='select @NoBukti='+QuotedStr(Nobukti.Text);
         Qukirim.Open;
      end;

    end else
    begin
      MsgPeriodeSudahDikunci;
      if Qnt.CanFocus then
        ActiveControl:=Qnt;
    end;
  end
  else
    MsgTanggalTidakSesuaiPeriode;
end;

procedure TFrPO.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  ClearPanelDetail;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
  xmodalkoreksi:=false;
end;

procedure TFrPO.KursExit(Sender: TObject);
begin
   if UpperCase(Valas.Text)='IDR' then
      //UpdateValas
   else
   begin
      if Kurs.Value<=0 then
      begin
         ShowMessage('Nilai harus lebih besar dari 0');
         Kurs.SetFocus;
      end else
         //UpdateValas;
   end;
end;

procedure TFrPO.NoDOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Escape then
  begin
     mValid :=false;
     SpeedButton1.Click;
  end;
end;

procedure TFrPO.FormDestroy(Sender: TObject);
begin
  FrPO:=nil;
end;

procedure TFrPO.dxDBGrid1CustomDrawCell(Sender: TObject;
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
         AColor:=clWhite
      else
         AColor:=$00E1FFFF;
    end;
end;

procedure TFrPO.BPrevClick(Sender: TObject);
begin
  Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,IDUser);
  FrMainPO.QuNavigator.Locate('NoBukti',NoBukti.Text,[LOC,LOP]);
  FrMainPO.QuNavigator.Prior;
  FrMainPO.QuMaster.Locate('NoBukti',FrMainPO.QuNavigatorNoBukti.AsString,[LOC,LOP]);
  FormShow(Self);
end;

procedure TFrPO.BNextClick(Sender: TObject);
begin
  Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,IDUser);
  FrMainPO.QuNavigator.Locate('NoBukti',NoBukti.Text,[LOC,LOP]);
  FrMainPO.QuNavigator.Next;
  FrMainPO.QuMaster.Locate('NoBukti',FrMainPO.QuNavigatorNoBukti.AsString,[LOC,LOP]);
  FormShow(Self);
end;

procedure TFrPO.HariExit(Sender: TObject);
begin
  Ltanggal.Caption:='Jatuh Tempo : '+FormatDateTime('dd/mm/yyyy',TANGGAL.Date+Hari.AsInteger);
end;

procedure TFrPO.KodeBrgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    SpeedButton1.Click;
  end;
end;

procedure TFrPO.DsgCetakBtnClick(Sender: TObject);
begin
  frxReport1.LoadFromFile(currDir+'Nota\NotaPO1.fr3');
  frxReport1.DesignReport;
end;

procedure TFrPO.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
  if comparetext(varname,'Terbilang')=0 then
  value := '# '+TempCode+' #';
  if comparetext(varname,'Total')=0 then
     value := GrandTotal.Value+Handling.AsFloat;
  if comparetext(varname,'Tothal')=0 then
      value := tothal;
  if CompareText(varName,'iduser')=0 then
        value:=IDUser;
end;

procedure TFrPO.NoUrutChange(Sender: TObject);
begin
  if mValid then
  begin
    if Length(NoUrut.Text)=5 then
    begin
      if isppn=1 then

      Konfig(TipeTrans,Nourut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,
        Tanggal.Date,true)
      else
       Konfig(TipeTrans,Nourut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,
        Tanggal.Date,False);
      NOBUKTI.Text:=MyNoBukti;

    end
    else
      ActiveControl := NoUrut;
  end;
end;

procedure TFrPO.KodeExpExit(Sender: TObject);
begin
  if mValid Then
  begin
    if Length(KodeExp.Text)=0 then TampilIsiEkspedisi else
    begin
      if DataBersyarat('Select * from dbExpedisi where KodeExp=:0', [KodeExp.Text], DM.QuCari)=True then
      begin
        with DM.QuCari do
        begin
          KodeExp.Text:=FieldByName('KodeExp').AsString;
          NamaExp.Caption:='[ '+FieldByName('NamaExp').AsString+' ]';
        end;
      end
      else TampilIsiEkspedisi;
    end;
  end;
end;

procedure TFrPO.DiscPEnter(Sender: TObject);
begin
  mValid:=True;
  mNilaiDiscEnter:=(Sender as TPBNumEdit).Value;
end;

procedure TFrPO.DiscPExit(Sender: TObject);
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
    //DiskonTotal:=ProsesDiskon(Sender);
  end;
end;

procedure TFrPO.KodeBrgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrPO.KodeBrgExit(Sender: TObject);
begin
  if mValid=True then
  begin
      if Length(KodeBrg.Text)=0 then TampilIsiBarang else
      begin
          if DataBersyarat('select a.NoBukti,a.kodebrg,c.NAMABRG,SUM(a.Qnt*isi)QntPPL,Isnull(b.Qnt,0) QntPO,SUM(a.Qnt*isi)-Isnull(b.Qnt,0)sisa from DBPPLDET a  '+
                      'Left Outer Join (select NoPPL,Kodebrg,SUM(Qnt*isi)Qnt from DBPODET group by NoPPL,Kodebrg)b On a.Nobukti=b.NoPPL and a.kodebrg=b.KODEBRG  '+
                      'left Outer Join DBBARANG c On c.KODEBRG=a.kodebrg where a.KodeBrg=:0 and isnull(a.isbatal,0)=0 '+
                      'group by a.NoBukti,a.kodebrg,b.Qnt,c.NAMABRG  ' +
                      'having SUM(a.Qnt*isi)-Isnull(b.Qnt,0)<>0 ',
                     [KodeBrg.Text], DM.QuCari)=True then
        begin
             KodeBrg.Text:=DM.QuCari.FieldByName('KodeBrg').AsString;
             LNamaBrg.Caption:='[ '+DM.QuCari.FieldByName('NamaBrg').AsString+' ]';
             Qnt.AsFloat:=DM.QuCari.FieldByName('Sisa').AsFloat;
             NoPPL.Text:=DM.QuCari.FieldByName('NoBukti').AsString;
             //
             IsiSatuan;
        end else
             TampilIsiBarang;
      end;
    Harga.AsFloat:=GetHargaBeli(KodeBrg.Text);
    DiscP.AsFloat:=Xdisc;
    //DiscP.AsFloat:=XdiscRp;
  end;
end;

procedure TFrPO.TanggalChange(Sender: TObject);
begin
  mUbahHd:=True;
  if Sender=Tipe then
  begin
    if TIPE.ItemIndex = 0 then Hari.Value:=0;
    Ltanggal.Caption:='Jatuh Tempo : '+FormatDateTime('dd/mm/yyyy',TANGGAL.Date+Hari.AsInteger);
  end;
  if (Sender=Diskon) or (Sender=PPN) then
    mUbahHdDet:=True;
  if (Sender=PPN) Then
        UpdatedbBeli;

end;

procedure TFrPO.NoPPLExit(Sender: TObject);
begin
 if mValid=True then
  begin
      if Length(KodeBrg.Text)=0 then TampilIsiPPL else
      begin
          if DataBersyarat('select a.NoBukti from DBPPLDET a  '+
                      'Left Outer Join (select NoPPL,Kodebrg,SUM(Qnt*isi)Qnt from DBPODET group by NoPPL,Kodebrg)b On a.Nobukti=b.NoPPL and a.kodebrg=b.KODEBRG  '+
                      'left Outer Join DBBARANG c On c.KODEBRG=a.kodebrg '+
                      'group by a.NoBukti,b.Qnt  ' +
                      'having SUM(a.Qnt*isi)-Isnull(b.Qnt,0)<>0 and a.Nobukti=:0 ',
                     [NoPPL.Text], DM.QuCari)=True then
        begin
             NoPPL.Text:=DM.QuCari.FieldByName('NoBukti').AsString;
        end else
             TampilIsiPPL;
      end;
  end;
end;

procedure TFrPO.CB1Click(Sender: TObject);
begin
if CB.Checked Then
begin
 Handling.Enabled:=True;
 KodeExp.Enabled:=True;
end
else
Begin
 Handling.Enabled:=False;
 KodeExp.Enabled:=False;
end;
end;

procedure TFrPO.tambahClick(Sender: TObject);
begin
 NoBuktiX.Text:='';
 KodebrgX.Text:='';
 NamaBrgX.Caption:='[    ]';
 Panel5.Visible:=True;
 NoBuktiX.Text:=NoBukti.Text;
 KodebrgX.Text:=QuBeliKodeBrg.AsString;
 NamaBrgX.Caption:='[ '+QuBeliNamaBrg.AsString+' ]';
 TglX.Date:=Date;
 XChoice:='I';
 ActiveControl:=TglX;
 //
end;

procedure TFrPO.KoreksiClick(Sender: TObject);
begin
{ //
 //TampilDataKirim(NoBukti.Text,QuBeliKodeBrg.AsString);
 Panel5.Visible:=True;
 NoBuktiX.Text:=QukirimNoBukti.AsString;
 KodebrgX.Text:=QukirimKodeBrg.AsString;
 NamaBrgX.Caption:='[ '+QuBeliNamaBrg.AsString+' ]';
 TglX.Date:=QukirimTanggal.AsDateTime;
 QntX.AsFloat:=QukirimQnt.AsFloat;
 XChoice:='U';
 ActiveControl:=TglX; }
end;

procedure TFrPO.HapusClick(Sender: TObject);
begin
//
 XChoice:='D';
 BitBtn2.Click;
end;

procedure TFrPO.SpeedButton2Click(Sender: TObject);
begin
Panel5.Visible:=False;
end;

procedure TFrPO.BitBtn2Click(Sender: TObject);
var XQntTot,FKirim,QPO:Double;
begin
{
if XChoice<>'D' Then
Begin
  With DM.QuCari do
  Begin
   Close;
   SQL.Clear;
   SQL.Add('Select Sum(Qnt)Qnt From dbKirimDet where Tanggal<>:0 and Kodebrg=:1 and NoBukti=:2');
   if TglX.Date<>QukirimTanggal.AsDateTime Then
   Parameters[0].Value:=QukirimTanggal.AsDateTime
   else
   Parameters[0].Value:=TglX.Date;
   Parameters[1].Value:=KodebrgX.Text;
   Parameters[2].Value:=NoBuktiX.Text;
   Open;
   FKirim:=FieldByName('Qnt').AsFloat;
  end;
  XQntTot:=FKirim+QntX.AsFloat;
  With DM.QuCari do
  Begin
   Close;
   SQL.Clear;
   SQL.Add('Select Sum(Qnt)Qnt From dbPODet where  Kodebrg=:0 and NoBukti=:1');
   Parameters[0].Value:=KodebrgX.Text;
   Parameters[1].Value:=NoBuktiX.Text;
   Open;
   QPO:=FieldByName('Qnt').AsFloat;
  end;
 end;
  if (XQntTot>QPO) and (XChoice<>'D') Then
  Begin
   ShowMessage('Qnt Kirim melebihi Qnt PO');
   ActiveControl:=QntX;
  end
  else
  Begin
  With sp_kiriman do
   begin
       Parameters.Refresh;
       Parameters[1].Value:=XChoice;
       if XChoice='D' Then  Parameters[2].Value:=QukirimNoBukti.AsString
       else Parameters[2].Value:=NoBuktiX.Text;
       if XChoice='D' Then Parameters[3].Value:=QukirimKodeBrg.AsString
       else Parameters[3].Value:=KodebrgX.Text;
       Parameters[4].Value:=TglX.Date;
       Parameters[5].Value:=QntX.AsFloat;
       if  XChoice <>'I' then
       Parameters[6].Value:=QukirimTanggal.AsDateTime;
    try
          ExecProc;
    Finally
       TampilDataKirim(NoBukti.Text,QuBeliKodeBrg.AsString);
    end;
  end;
  Panel5.Visible:=False;
  end;}
end;

procedure TFrPO.dxPageControl1Change(Sender: TObject);
begin
{PanelShow1.Enabled:=(dxPageControl1.ActivePageIndex=0)or(dxPageControl1.ActivePageIndex=2);
PanelShowTotal.Enabled:=(dxPageControl1.ActivePageIndex=0)or(dxPageControl1.ActivePageIndex=2);
Tlt.Visible:=dxPageControl1.ActivePageIndex=0;
if dxPageControl1.ActivePageIndex=0 Then
Begin
 TampilData(NoBukti.Text);
end
else if dxPageControl1.ActivePageIndex=1 Then
Begin
 TampilDataKirim(NoBukti.Text,QuBeliKodeBrg.AsString);
end
else if dxPageControl1.ActivePageIndex=2 Then
Begin
 TampilDataBayarPO(NoBukti.Text);
end; }
end;

procedure TFrPO.PopupMenu1Popup(Sender: TObject);
begin
if dxPageControl1.ActivePageIndex=0 Then
Begin
 Koreksi.Enabled:=(Not QuBeli.IsEmpty) and (Not Qukirim.IsEmpty);    
 tambah.Enabled:=Not QuBeli.IsEmpty;
 Hapus.Visible:=False;
 Tambah.Visible:=True;
end
else if dxPageControl1.ActivePageIndex=1 Then
Begin
 Hapus.Visible:=True;
 Tambah.Visible:=False;
 Koreksi.Enabled:=Not Qukirim.IsEmpty;
 Hapus.Enabled:=Not Qukirim.IsEmpty;
end;
end;

procedure TFrPO.BitBtn3Click(Sender: TObject);
begin
 With sp_pembayaranPO do
   begin
       Parameters.Refresh;
       Parameters[1].Value:=XChoice;
       Parameters[2].Value:=NoBukti.Text;
       Parameters[3].Value:=KetPemb.Text;
       Parameters[4].Value:=Vls.Text;
       Parameters[5].Value:=CB4.Checked;
       Parameters[6].Value:=Persen.AsFloat;
       Parameters[7].Value:=Nilai.AsFloat;
       if XChoice<>'I' Then
       Parameters[8].Value:=QubayarPOKeterangan.AsString;
    try
          ExecProc;
    Finally
       TampilDataBayarPO(NoBukti.Text);
      if XChoice='U' Then SpeedButton3.Click;
      if XChoice='I' Then ClearPanelDetail;
      if XChoice='I' Then ActiveControl:=KetPemb;
    end;
  end;
end;

procedure TFrPO.VlsExit(Sender: TObject);
begin
 if mValid Then
  begin
    if length(Vls.Text)=0 then TampilIsiValasX else
    begin
      if MyFindField('dbValas','KodeVls',Vls.Text)=true then
      begin
        with DM.QuCari do
        begin
           Vls.Text:=fieldbyname('KodeVls').AsString;
        end;
      end
      else TampilIsiValasX;
    end;
  end;
end;

procedure TFrPO.KetPembKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=VK_Escape Then
Begin
 SpeedButton3.Click;
end;
end;

procedure TFrPO.SpeedButton3Click(Sender: TObject);
begin
  mValid:=false;
  ClearPanelDetail;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid3;
end;

procedure TFrPO.Button1Click(Sender: TObject);
Var i:Integer;
begin
{i:=1;
for i:=1 to XKirim.AsInteger-1 Do
Begin
 With sp_kiriman do
   begin
       Parameters.Refresh;
       Parameters[1].Value:='I';
       Parameters[2].Value:=NoBukti.Text;
       Parameters[3].Value:=QukirimKodeBrg.AsString;
       Parameters[4].Value:=QukirimTanggal.AsDateTime+i;
       Parameters[5].Value:=0;
    try
          ExecProc;
    Except
       ShowMessage('Gagal');
    end;
  end;
end;
TampilDataKirim(NoBukti.Text,QukirimKodeBrg.AsString);
Panel7.Visible:=False;}
end;

procedure TFrPO.dxDBGrid2DblClick(Sender: TObject);
begin
Panel7.Visible:=True;
ActiveControl:=XKirim;
end;

procedure TFrPO.dxDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=VK_Escape Then
Begin
  mExit := True;
  Close;
end;
end;

procedure TFrPO.DiskonPEnter(Sender: TObject);
begin
  mNilaiEnter:=DiskonP.Value;
  //mValid := True;
  Frpo.KeyPreview:=False;
  //KeyPreview:=False;
end;


procedure TFrPO.updateDiskon;
begin
  if (not QuBeli.IsEmpty) then
  begin
    with QuUpdatedbBeli do
    begin
       Close;
       Sql.Clear;
       SQL.Add('Update dbPO');
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
         if QuBeliTotalIDR.AsFloat=0 then Parameters[1].Value:=0
           //else Parameters[1].Value := (DiskonRp.AsFloat*100)/QuBeliTotalIDR.AsFloat;
         else Parameters[1].Value := (DiskonRp.AsFloat*100)/
           DPP.Value;
         Parameters[2].Value:= DiskonRp.AsFloat;
       end;
       ExecSQL;
       Close;
       SQL.Clear;
       SQL.Add('exec sp_UpdatePO '+QuotedStr(NoBukti.Text));
       ExecSQL;
    end;
    TampilData(NoBukti.Text);
  end;
end;

procedure TFrPO.TampilDataUpdateDiskon(No_Bukti:String);
begin
  mNilaiEnter:=DiskonRp.Value;
  TampilData(NOBUKTI.Text);
  if mTipeDisc=1 then
  begin
    DiskonRp.Value:=mNilaiEnter;
    UpdateDiskon;
  end;
end;

procedure TFrPO.DiskonPExit(Sender: TObject);
begin
  KeyPreview:=True;
  if FormatFloat(',0.00',mNilaiEnter)<>FormatFloat(',0.00',DiskonP.Value) then
  begin
    mTipeDisc:=0;
    UpdateDiskon;
  end;
  TampilLabelDiskon(mTipeDisc,LDiskonP,LDiskonRp);
end;

procedure TFrPO.PPNClick(Sender: TObject);
var
  Idx: Integer;
  Value: integer;
begin
  if mValid then
  begin
    mUbahHd := True; mUbahHdDet := True;
    if (CekPeriode(IDUser,TANGGAL.Date)=False) then
      Abort;
    UpdatedbBeli;
    TampilData(NoBukti.Text);
  end;
  if CPpnP.ItemIndex=0 then
      PPnP.Value:=10
     else
     if CPpnP.ItemIndex=1 then
       PPnP.Value:=11
       else
     if CPpnP.ItemIndex=2 then
       Begin
          if CB.Checked then
                //ppnp.text:=
                //CPpnP.//CPpnP.Items.IndexOf(FieldByName('persen').AsVariant)
                PPnP.Value:=12
          else
          PPnP.Value:=11
       end;

   { Idx := CPpnP.ItemIndex;
  if Idx <> -1 then
  begin
    //PPnP.Value := INteger(CPpnP.Items.Objects[Idx]);
    // Do something with value you retrieved
    PPnP.Value := StrToFloatDef(CPpnP.Text,value);
  end;         }

end;

procedure TFrPO.PPNEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrPO.TglKirimBtnClick(Sender: TObject);
begin
  if dxPageControl1.ActivePageIndex=1 then
  begin
    if not Qukirim.IsEmpty then
    begin
      Application.CreateForm(TFrTglKirimPO, FrTglKirimPO);
      FrTglKirimPO.mNoBukti_TglKirimPO:=QukirimNoBukti.AsString;
      FrTglKirimPO.mKodeBrg_TglKirimPO:=QukirimKodeBrg.AsString;
      FrTglKirimPO.mNoSat_TglKirimPO:=QukirimNoSat.AsInteger;
      //FrTglKirimPO.Tanggal1.Date:=Qukirim
      DataBersyarat('Select Nobukti,Kodebrg,sum(Qnt) Qnt from DBPODET where '+
                     ' Nobukti=:0 and KOdeBrg=:1 Group By Nobukti,KOdebrg', [Nobukti.Text,QukirimKodeBrg.Asstring], DM.QuCari);
      FrTglKirimPO.TotalPO := Dm.Qucari.Fieldbyname('Qnt').Value;
      FrTglKirimPO.ShowModal;
      if FrTglKirimPO.ModalResult=mrOK then
      begin
        Qukirim.Close;
        Qukirim.Open;
      end;
    end;
  end;
end;

procedure TFrPO.dxPageControl1Enter(Sender: TObject);
begin
  if dxPageControl1.ActivePageIndex=0 then
    ActiveControl:=dxDBGrid1
  else if dxPageControl1.ActivePageIndex=1 then
    ActiveControl:=dxDBGrid2;
end;

procedure TFrPO.KodeGdgExit(Sender: TObject);
begin
  if mValid Then
  begin
     if Length(KodeGdg.Text)=0 then TampilIsiGudang else
     begin
        if DataBersyarat('select * from dbGudang where KodeGdg=:0',[KodeGdg.Text], DM.QuCari)=True then
        begin
          KodeGdg.Text:=DM.QuCari.fieldbyname('KodeGdg').AsString;
          LAlamatGudang.Caption := '[ '+DM.QuCari.fieldbyname('Alamat').AsString+' ]';
        end
        else TampilIsiGudang;
     end;
  end;
end;

procedure TFrPO.SpeedButton4Click(Sender: TObject);
var N1, N2, N3 : string;
    T1, T2 : Real;
    Tot : byte;
    H1  : real;
begin
tothal :=(QuBeli.RecordCount div 10);
  sishal :=(QuBeli.RecordCount mod 10);
  if sishal>0 then tothal :=tothal+1;
  N3  := FloatToStr(GrandTotal.Value+Handling.AsFloat);
  Tot := CariKoma(N3);
  if Tot <> 0 then
  begin
    N1  := copy(N3, 1, Tot-1);
    N2  := copy(N3, Tot+1, 2);
  end else
  begin
    N1  := N3;
    N2  := '0';
  end;
  //H1  := (GrandTotal.Value+HandlingFee.AsFloat);
  T1  := StrToFloat(N1);
  T2  := StrToFloat(N2);
  N1  := KonversiKeTeks(T1);
  if T2 <> 0 then
  begin
    if T2 < 10 then
       N2 := KonversiKeTeks(T2)
    else
       N2 := KonversiKeTeks(T2);
    if N1 = '' then
       TempCode:=N2+'Sen'
    else
       TempCode:=N1+'Rupiah '+N2+'Sen';
  end
  else
    TempCode:=N1+'Rupiah ';

  With QuUpdatedbbeli do
  begin
    close;
    sql.clear;
    sql.add('Select * From vwPerusahaan ');
    Open;
  end;

//  frxReport1.LoadFromFile(currDir+'Nota\NotaBELI01.fr3');
  frxDBDataset1.Close;
  frxDBDataset1.Open;
  frxDBDataset1.DataSet:=QuReport;
  QuReport.close;
  QuReport.SQL.Clear;
  Qureport.SQL.Add('Exec sp_CetakPO :0,:1');
  Qureport.Parameters[0].Value:=Nobukti.Text;
  Qureport.Parameters[1].Value:=1;
  QuReport.open;

  frxReport1.LoadFromFile(currDir+'Nota\NotaPO1TanpaH.fr3');
  frxReport1.ShowReport;
end;

procedure TFrPO.SpeedButton5Click(Sender: TObject);
begin
 frxReport1.LoadFromFile(currDir+'Nota\NotaPO1TanpaH.fr3');
 frxReport1.DesignReport;
end;

procedure TFrPO.frxReport1AfterPrintReport(Sender: TObject);
var cetakke :Integer;
begin
 DataBersyarat('Select Isnull(NilaiCetak,0)+1 cetakke from DbPO where nobukti=:0',[Nobukti.text], Dm.Qucari);
 cetakke:=Dm.Qucari.Fieldbyname('Cetakke').AsInteger;
 with dm.qucari do
  begin
    close;
    sql.Clear;
    Sql.add('Update DBPO set NilaiCetak=:0 where Nobukti='+Quotedstr(nobukti.text));
    Parameters[0].Value:=cetakke;
    Prepared;
    ExecSql;
  end;
end;

procedure TFrPO.NoUrutExit(Sender: TObject);
var myTempNoUrut: String;
begin
  if mValid then
  begin
    myTempNoUrut:=NoUrut.Text;
    NoUrut.Text:=RightStr('00000'+myTempNoUrut,5);
    Konfig(TipeTrans,NoUrut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date);
    NOBUKTI.Text:=MyNoBukti;
    TampilData(NoBukti.Text);
    If Length(NoUrut.Text)<4 then
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
      If Not Daftar_Nomor(TipeTrans,NoUrut.Text, NOBUKTI.Text,isMax) then
      begin
        MessageDlg('Nomor : '+NOBUKTI.Text+' telah digunakan oleh '+MyUser+'.',mtWarning,[MbOk],0);
        ActiveControl := NoUrut;
      end;
    end;
  end;

end;

procedure TFrPO.SpeedButton6Click(Sender: TObject);
begin
  Panel8.Visible := True;
  with QuLastPrices do
  begin
    close;
    Prepared;
    Parameters[0].Value := KodeBrg.Text;
    Open;
  end;
end;

procedure TFrPO.Panel9Click(Sender: TObject);
begin
  Panel8.Visible := false;
  QuLastPrices.Close;
end;

procedure TFrPO.KeteranganxEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrPO.QntExit(Sender: TObject);
begin
if Model='koreksi' then
 begin
   if qnt.Value >(sisapr+QuBeliQnt.AsFloat) then
    Begin
       ShowMessage('Qnt PO Lebih besar dari qnt PR');
       ActiveControl:=Qnt;
    end;
 End
Else
 Begin
 End;
end;

procedure TFrPO.KodeSuppKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=Vk_Escape then
  begin
    If xModalKoreksi = False then
    begin
      Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
      mValid:=False;
      RefreshAll;
      mExit:=True;
      Close;
    end
  End;
end;

procedure TFrPO.CheckBox1Click(Sender: TObject);
begin

if CheckBox1.Checked Then
Begin
 Pph.Enabled:=true;
 With DM.QuCari do
 Begin
  Close;
  SQL.Clear;
  SQL.Add('Update dbPO set IsPph=1 where noBukti='+QuotedStr(NoBukti.Text));
  ExecSQL;

 end;
end
else
 Begin
 pph.Value:=0;
 Pph.Enabled:=False;

  With DM.QuCari do
  Begin
   Close;
   SQL.Clear;
   SQL.Add('Update dbPO set IsPph=0 where noBukti='+QuotedStr(NoBukti.Text));
   ExecSQL;
   Close;
   SQL.Clear;
   SQL.Add('Update dbPOdet set PPhP=0 where noBukti='+QuotedStr(NoBukti.Text));
   ExecSQL;
 end;
 end;
 TampilData(NoBukti.Text);
end;

procedure TFrPO.KetBrgExit(Sender: TObject);
begin
ActiveControl:=qnt;
end;

procedure TFrPO.DiskonPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Escape) or (Key=VK_Return) then
  begin
    ActiveControl:=dxDBGrid1;
  end;
end;

procedure TFrPO.DiskonRpEnter(Sender: TObject);
begin
  FrPO.KeyPreview:=False;
end;

procedure TFrPO.DiskonRpExit(Sender: TObject);
begin
 FrPO.KeyPreview:=True;
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

procedure TFrPO.DiskonRpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Escape) or (Key=VK_Return) then
  begin
    ActiveControl:=dxDBGrid1;
  end;
end;

End.







