unit FrmFinishing;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, wwdblook, Wwdbigrd, Wwdbgrid,
  DBCtrls, ppBands, ppCtrls, ppDB, jpeg, ppPrnabl, ppClass, ppCache,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, ImgList, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ppVar,variants, dxEditor,
  dxExEdtr, dxEdLib, ppStrtch, ppMemo,Dateutils, ppModule, raCodMod,
  frxClass, frxDMPExport, frxDBSet, frxDesgn, MyGlobal, dxmdaset, strutils,
  dxPageControl;

type
  TFrFinishing = class(TForm)
    Panel1: TPanel;
    NoUrut: TEdit;
    Tanggal: TDateEdit;
    QuBeli: TADOQuery;
    Sp_Beli: TADOStoredProc;
    DsQuBeli: TDataSource;
    QuUpdatedbbeli: TADOQuery;
    Label10: TLabel;
    DataSource1: TDataSource;
    QuReport: TADOQuery;
    NoBukti: TEdit;
    Panel2: TPanel;
    Panel4: TPanel;
    PanelShow2: TPanel;
    BPrev: TSpeedButton;
    BNext: TSpeedButton;
    PanelShow1: TPanel;
    Cetak: TSpeedButton;
    HapusBtn: TSpeedButton;
    KoreksiBtn: TSpeedButton;
    TambahBtn: TSpeedButton;
    Label26: TLabel;
    Label42: TLabel;
    Shape4: TShape;
    Label12: TLabel;
    frxDataPerusahaan: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    DsgCetakBtn: TSpeedButton;
    frxDesigner1: TfrxDesigner;
    frxReport1: TfrxReport;
    Label7: TLabel;
    QuTenaker: TADOQuery;
    Sp_BeliTenaker: TADOStoredProc;
    DSTenaker: TDataSource;
    QuTenakerNobukti: TStringField;
    QuTenakerUrut: TIntegerField;
    QuTenakerNik: TStringField;
    QuTenakerUrutNiK: TIntegerField;
    QuTenakerJam: TBCDField;
    QuTenakerTrfTenaker: TBCDField;
    QuTenakerJmLTrfTenaker: TBCDField;
    QuTenakerKeyNIK: TIntegerField;
    QuTenakerTipeTrans: TStringField;
    QuTenakerNoBukti_1: TStringField;
    QuTenakerNIK_1: TStringField;
    QuTenakerNama: TStringField;
    QuTenakerNamaPanggilan: TStringField;
    QuTenakerKelamin: TStringField;
    QuTenakerTmpLahir: TStringField;
    QuTenakerTglLahir: TDateTimeField;
    QuTenakerAgama: TStringField;
    QuTenakerTinggi: TBCDField;
    QuTenakerBerat: TBCDField;
    QuTenakerBerkacaMata: TWordField;
    QuTenakerDarah: TStringField;
    QuTenakerNomorKTP: TStringField;
    QuTenakerAlamatKTP: TStringField;
    QuTenakerKecamatanKTP: TStringField;
    QuTenakerKabupatenKTP: TStringField;
    QuTenakerPropinsiKTP: TStringField;
    QuTenakerKodePosKTP: TStringField;
    QuTenakerAlamatRmh: TStringField;
    QuTenakerKecamatanRmh: TStringField;
    QuTenakerKabupatenRmh: TStringField;
    QuTenakerPropinsiRmh: TStringField;
    QuTenakerKodePosRmh: TStringField;
    QuTenakerTeleponHP: TStringField;
    QuTenakerKodePendAkhir: TStringField;
    QuTenakerKetPendAkhir: TStringField;
    QuTenakerStatusTempTinggal: TStringField;
    QuTenakerHubungan: TWordField;
    QuTenakerReferensi: TStringField;
    QuTenakerRekomendasi: TWordField;
    QuTenakerNamaR: TStringField;
    QuTenakerJabatanR: TStringField;
    QuTenakerNamaInstR: TStringField;
    QuTenakerAlamatR: TStringField;
    QuTenakerTglMasuk: TDateTimeField;
    QuTenakerTglKeluar: TDateTimeField;
    QuTenakerBankAccount: TStringField;
    QuTenakerNomorAstek: TStringField;
    QuTenakerTglAstek: TDateTimeField;
    QuTenakerKodeShf: TStringField;
    QuTenakerKodeJab: TStringField;
    QuTenakerKodeDept: TStringField;
    QuTenakerKodeESL: TStringField;
    QuTenakerKodeGrade: TStringField;
    QuTenakerGajiPokok: TBCDField;
    QuTenakerTnjJabatan: TBCDField;
    QuTenakerTnjKehadiran: TBCDField;
    QuTenakerTnjTransport: TBCDField;
    QuTenakerTnjMakan: TBCDField;
    QuTenakerTnjLain2: TBCDField;
    QuTenakerTnjHaid: TBCDField;
    QuTenakerJKK: TBCDField;
    QuTenakerJHT: TBCDField;
    QuTenakerJPK: TBCDField;
    QuTenakerJKM: TBCDField;
    QuTenakerPrima: TBCDField;
    QuTenakerTnjPajak: TBooleanField;
    QuTenakerStsPJK: TStringField;
    QuTenakerStsAST: TStringField;
    QuTenakerTanggung: TBCDField;
    QuTenakerNPWP: TStringField;
    QuTenakerAktif: TWordField;
    QuTenakerLamaKontrak: TIntegerField;
    QuTenakerTglAkhirKontrak: TDateTimeField;
    QuTenakerIDUserInput: TStringField;
    QuTenakerTglInput: TDateTimeField;
    QuTenakerIsSales: TBooleanField;
    QuTenakerProduksi: TWordField;
    Shift: TEdit;
    Label38: TLabel;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1namabrg: TdxDBGridMaskColumn;
    dxDBGrid1KODEBRG: TdxDBGridMaskColumn;
    dxDBGrid1QNT: TdxDBGridMaskColumn;
    QuBeliNOBUKTI: TStringField;
    QuBeliNOURUT: TStringField;
    QuBeliTANGGAL: TDateTimeField;
    QuBeliKETERANGAN: TStringField;
    QuBeliNIK: TStringField;
    QuBelinamabrg: TStringField;
    QuBelishift: TWordField;
    QuBeliNOBUKTI_1: TStringField;
    QuBeliURUT: TIntegerField;
    QuBeliKODEBRG: TStringField;
    QuBeliQNT: TBCDField;
    QuBeliNOSAT: TWordField;
    QuBeliSATUAN: TStringField;
    QuBeliISI: TBCDField;
    QuBeliNoSPK: TStringField;
    QuBeliHPP: TBCDField;
    QuBeliJenisKerja: TIntegerField;
    QuBeliKertas: TBCDField;
    QuBeliWaktu: TBCDField;
    QuBeliKetDetail: TStringField;
    QuBeliC1: TBCDField;
    QuBeliC2: TBCDField;
    QuBeliC3: TBCDField;
    QuBeliC4: TBCDField;
    QuBeliC5: TBCDField;
    QuBeliC6: TBCDField;
    QuBeliI1: TBCDField;
    QuBeliI2: TBCDField;
    QuBeliI3: TBCDField;
    QuBeliH1: TBCDField;
    QuBeliH2: TBCDField;
    QuBeliH3: TBCDField;
    QuBeliH4: TBCDField;
    QuBeliH5: TBCDField;
    QuBeliH6: TBCDField;
    QuBeliE1: TBCDField;
    QuBeliE2: TBCDField;
    QuBeliE3: TBCDField;
    QuBeliN1: TBCDField;
    QuBeliN2: TBCDField;
    QuBeliCSI: TBCDField;
    QuBeliL1: TBCDField;
    QuBeliL2: TBCDField;
    QuBeliL3: TBCDField;
    QuBeliL4: TBCDField;
    QuBeliL5: TBCDField;
    QuBeliL6: TBCDField;
    QuBeliL7: TBCDField;
    QuBeliL8: TBCDField;
    QuBeliL9: TBCDField;
    QuBeliHasilBaik: TBCDField;
    QuBeliHasilRusak: TBCDField;
    QuBeliKertasReject: TBCDField;
    QuBeliK1: TBCDField;
    QuBeliP1: TBCDField;
    QuBeliNIK_1: TStringField;
    QuBeliJml1: TBCDField;
    QuBeliJml2: TBCDField;
    QuBeliJml3: TBCDField;
    QuBeliJml4: TBCDField;
    QuBeliJml5: TBCDField;
    QuBeliJml6: TBCDField;
    QuBeliJml7: TBCDField;
    QuBeliJml8: TBCDField;
    QuBeliJml9: TBCDField;
    QuBeliJml10: TBCDField;
    QuBeliJml11: TBCDField;
    QuBeliJml12: TBCDField;
    QuBeliJml13: TBCDField;
    QuBeliJml14: TBCDField;
    QuBeliJml15: TBCDField;
    QuBeliJml16: TBCDField;
    QuBeliJml17: TBCDField;
    QuBeliJml18: TBCDField;
    QuBeliKetR1: TStringField;
    QuBeliKetR2: TStringField;
    QuBeliKetR3: TStringField;
    QuBeliKetR4: TStringField;
    QuBeliKetR5: TStringField;
    QuBeliKetR6: TStringField;
    QuBeliKetR7: TStringField;
    QuBeliKetR8: TStringField;
    QuBeliKetR9: TStringField;
    QuBeliKetR10: TStringField;
    QuBeliKetR11: TStringField;
    QuBeliKetR12: TStringField;
    QuBeliKetR13: TStringField;
    QuBeliKetR14: TStringField;
    QuBeliKetR15: TStringField;
    QuBeliKetR16: TStringField;
    QuBeliKetR17: TStringField;
    QuBeliKetR18: TStringField;
    QuBeliQntCetak: TBCDField;
    QuBeliQntTambahan: TBCDField;
    QuBeliQntSpesimen: TBCDField;
    QuBeliJmlKR1: TBCDField;
    QuBeliJmlKR2: TBCDField;
    QuBeliKetKRL1: TStringField;
    QuBeliKetKRL2: TStringField;
    QuBeliKetKRL3: TStringField;
    QuBeliPR1: TStringField;
    QuBeliPR2: TStringField;
    QuBeliPR3: TStringField;
    QuBeliPR4: TStringField;
    QuBeliPR5: TStringField;
    QuBeliPR6: TStringField;
    QuBeliPR7: TStringField;
    QuBeliPR8: TStringField;
    QuBeliPR9: TStringField;
    QuBeliPR10: TStringField;
    QuBeliPR11: TStringField;
    QuBeliPR12: TStringField;
    QuBeliPR13: TStringField;
    QuBeliPR14: TStringField;
    QuBeliPR15: TStringField;
    QuBeliPR16: TStringField;
    QuBeliPR17: TStringField;
    QuBeliPR18: TStringField;
    QuBeliNamaKerjaan: TStringField;
    QuBeliKetKR1: TStringField;
    QuBeliKetKR2: TStringField;
    QuBelinamacustsupp: TStringField;
    dxDBGrid1Column4: TdxDBGridColumn;
    QuBeliqntspk: TBCDField;
    dxPageControl1: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label4: TLabel;
    Label19: TLabel;
    LNamaSat: TRxLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label20: TLabel;
    Label39: TLabel;
    NamaGdg: TRxLabel;
    LNamaBrg: TRxLabel;
    LTK1: TRxLabel;
    Label6: TLabel;
    Label45: TLabel;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label46: TLabel;
    Label18: TLabel;
    C2: TPBNumEdit;
    C5: TPBNumEdit;
    C1: TPBNumEdit;
    C4: TPBNumEdit;
    C3: TPBNumEdit;
    C6: TPBNumEdit;
    BitBtn1: TBitBtn;
    KodeBrg: TEdit;
    Qnt: TPBNumEdit;
    NoSat: TPBNumEdit;
    NoSPK: TEdit;
    HPP: TPBNumEdit;
    TarifMesin: TPBNumEdit;
    UrutMesin: TPBNumEdit;
    Spesimen: TPBNumEdit;
    Keterangan: TEdit;
    JenisKerja: TComboBox;
    HasilBaik: TPBNumEdit;
    HasilRusak: TPBNumEdit;
    Realisasi: TPBNumEdit;
    GroupBox3: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    H2: TPBNumEdit;
    h5: TPBNumEdit;
    H1: TPBNumEdit;
    H4: TPBNumEdit;
    H3: TPBNumEdit;
    H6: TPBNumEdit;
    GroupBox4: TGroupBox;
    Label28: TLabel;
    Label30: TLabel;
    E2: TPBNumEdit;
    E1: TPBNumEdit;
    GroupBox5: TGroupBox;
    Label29: TLabel;
    Label31: TLabel;
    N2: TPBNumEdit;
    N1: TPBNumEdit;
    GroupBox6: TGroupBox;
    Label32: TLabel;
    CSI: TPBNumEdit;
    GroupBox7: TGroupBox;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    I2: TPBNumEdit;
    I1: TPBNumEdit;
    I3: TPBNumEdit;
    KertasTambahan: TPBNumEdit;
    KodeGdg: TEdit;
    TK1: TEdit;
    QntPesan: TPBNumEdit;
    QntCetak: TPBNumEdit;
    GroupBox9: TGroupBox;
    Label44: TLabel;
    P1: TPBNumEdit;
    SisaBaik: TPBNumEdit;
    dxTabSheet2: TdxTabSheet;
    GroupBox10: TGroupBox;
    Label49: TLabel;
    Label50: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    NmMsn1: TRxLabel;
    NmMsn2: TRxLabel;
    NmMsn3: TRxLabel;
    NmMsn4: TRxLabel;
    NmMsn5: TRxLabel;
    Label60: TLabel;
    NmMsn6: TRxLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    NmMsn7: TRxLabel;
    NmMsn8: TRxLabel;
    NmMsn9: TRxLabel;
    NmMsn10: TRxLabel;
    NmMsn11: TRxLabel;
    NmMsn12: TRxLabel;
    NmMsn13: TRxLabel;
    NmMsn14: TRxLabel;
    NmMsn15: TRxLabel;
    NmMsn16: TRxLabel;
    NmMsn17: TRxLabel;
    NmMsn18: TRxLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    PR1: TEdit;
    QR1: TPBNumEdit;
    KetR1: TEdit;
    PR2: TEdit;
    QR2: TPBNumEdit;
    KetR2: TEdit;
    PR3: TEdit;
    QR3: TPBNumEdit;
    KetR3: TEdit;
    PR4: TEdit;
    QR4: TPBNumEdit;
    KetR4: TEdit;
    PR5: TEdit;
    QR5: TPBNumEdit;
    KetR5: TEdit;
    PR7: TEdit;
    QR7: TPBNumEdit;
    KetR7: TEdit;
    PR8: TEdit;
    QR8: TPBNumEdit;
    KetR8: TEdit;
    PR9: TEdit;
    QR9: TPBNumEdit;
    KetR9: TEdit;
    PR10: TEdit;
    QR10: TPBNumEdit;
    KetR10: TEdit;
    PR11: TEdit;
    QR11: TPBNumEdit;
    KetR11: TEdit;
    PR12: TEdit;
    QR12: TPBNumEdit;
    KetR12: TEdit;
    PR13: TEdit;
    QR13: TPBNumEdit;
    KetR13: TEdit;
    PR14: TEdit;
    QR14: TPBNumEdit;
    KetR14: TEdit;
    PR15: TEdit;
    QR15: TPBNumEdit;
    KetR15: TEdit;
    PR16: TEdit;
    QR16: TPBNumEdit;
    KetR16: TEdit;
    PR17: TEdit;
    QR17: TPBNumEdit;
    KetR17: TEdit;
    PR18: TEdit;
    QR18: TPBNumEdit;
    KetR18: TEdit;
    PR6: TEdit;
    QR6: TPBNumEdit;
    KetR6: TEdit;
    dxTabSheet3: TdxTabSheet;
    GroupBox11: TGroupBox;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    JmlKR1: TPBNumEdit;
    KetKR1: TEdit;
    JmlKR2: TPBNumEdit;
    KetKR2: TEdit;
    L1: TPBNumEdit;
    KetKRL1: TEdit;
    L2: TPBNumEdit;
    KetKRL2: TEdit;
    L3: TPBNumEdit;
    KetKRL3: TEdit;
    Label17: TLabel;
    KontrolRusak: TPBNumEdit;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure TampilData(No_Bukti:String);
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
    procedure Dx(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure NoUrutKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TanggalEnter(Sender: TObject);
    procedure TanggalExit(Sender: TObject);
    procedure KodeSuppEnter(Sender: TObject);
    procedure KodeSuppExit(Sender: TObject);
    procedure CetakClick(Sender: TObject);
    Function CheckFormMaster:boolean;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure KodeGdgExit(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DsgCetakBtnClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure NoUrutChange(Sender: TObject);
    procedure KodeBrgExit(Sender: TObject);
    procedure KodeBrgEnter(Sender: TObject);
    procedure NoPOEnter(Sender: TObject);
    procedure NoPOExit(Sender: TObject);
    procedure TanggalChange(Sender: TObject);
    procedure NoSatChange(Sender: TObject);
    procedure NoSPKExit(Sender: TObject);
    procedure frxReport1AfterPrintReport(Sender: TObject);
    procedure NoUrutExit(Sender: TObject);
    procedure KodeMesinExit(Sender: TObject);
    procedure L7Exit(Sender: TObject);
    procedure UpdateDataBeliTenaker(Choice:Char;Kodet:String);
    procedure ShiftKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TK1Exit(Sender: TObject);
    procedure HasilRusakChange(Sender: TObject);

    procedure SisaBaikChange(Sender: TObject);
    procedure PR1Exit(Sender: TObject);
    procedure PR2Exit(Sender: TObject);
    procedure PR3Exit(Sender: TObject);
    procedure PR4Exit(Sender: TObject);
    procedure PR5Exit(Sender: TObject);
    procedure PR6Exit(Sender: TObject);
    procedure PR7Exit(Sender: TObject);
    procedure PR8Exit(Sender: TObject);
    procedure PR9Exit(Sender: TObject);
    procedure PR10Exit(Sender: TObject);
    procedure PR11Exit(Sender: TObject);
    procedure PR12Exit(Sender: TObject);
    procedure PR13Exit(Sender: TObject);
    procedure PR14Exit(Sender: TObject);
    procedure PR15Exit(Sender: TObject);
    procedure PR16Exit(Sender: TObject);
    procedure PR17Exit(Sender: TObject);
    procedure PR18Exit(Sender: TObject);


  private
    { Private declarations }
    mNamaSatuan: TNamaSatuanBrg;
    mIsiSatuan: TIsiSatuanBrg;
    mUbahHd, mUbahHdDet: Boolean;
    mNilaiDiscEnter: Real;
    IsTampil1:Boolean;
    Keynik:integer;
    IsTampil:Boolean;
    mNFixBarang: Boolean;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure TampilIsiSupplier;
    procedure TampilIsiEkspedisi;
    procedure TampilIsiGudang;
    procedure IsiSatuan;
    procedure TampilIsiBarang;
    procedure IsiNoBuktiBaru;
    procedure TampilIsiNoSPK;
    procedure TampilIsiBarangPO;
    procedure IsiHargaBrg;
    procedure TampilanQnt1Qnt2;
    procedure TampilISiKaryawan;
    procedure TampilISiKaryawan1;
    procedure TampilISiKaryawan2;
    procedure TampilISiKaryawan3;
    procedure TampilISiKaryawan4;
    procedure TampilISiKaryawan5;
    procedure TampilISiKaryawan6;
    procedure IsiTenaker (Choice:Char);
{    procedure TampilIsiMesin1;
    procedure TampilIsiMesin2;
    procedure TampilIsiMesin3;
    procedure TampilIsiMesin4;
    procedure TampilIsiMesin5;
    procedure TampilIsiMesin6;
    procedure TampilIsiMesin7;
    procedure TampilIsiMesin8;
    procedure TampilIsiMesin9;
    procedure TampilIsiMesin10;
    procedure TampilIsiMesin11;
    procedure TampilIsiMesin12;
    procedure TampilIsiMesin13;
    procedure TampilIsiMesin14;
    procedure TampilIsiMesin15;
    procedure TampilIsiMesin16;
    procedure TampilIsiMesin17;
    procedure TampilIsiMesin18;}

  public
    { Public declarations }
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel,xmodalkoreksi: Boolean;
    yy,mm,dd : word;
    sishal, tothal : integer ;
    Procedure AmBilDataBeli;

  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrFinishing: TFrFinishing;
  mValid,mExit,mMasterKoreksi: Boolean;
  mUrut,Durut,mUrutPO,IsTutup,mNosat,mPosisi:Integer;
  TipeTrans,PlusPPN,Nomor,Model:String;
  mBulan,mTahun:string;
  Biaya,IsiBrg,potongan:Real;
  S:array[0..255]of char;
  BM : TBookmark;
  mDiskon, mDiskon2 : currency;

implementation
uses FrmBrows,MyProcedure, MyModul, FrmMainFinishing;
{$R *.DFM}

// PROCEDURE DAN FUNCTION PRIBADI

procedure TFrFinishing.TampilTombolDetail(pNilai: Boolean);
begin
  PanelShow1.Enabled:=not pNilai;
  //Panel3.Visible:=pNilai;
  dxPageControl1.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  //Panel3.Enabled:=pNilai;
  TambahBtn.Enabled:=not pNilai;
  KoreksiBtn.Enabled:=not pNilai;
  HapusBtn.Enabled:=not pNilai;
  Cetak.Enabled:=not pNilai;
  DsgCetakBtn.Enabled:=not pNilai;

end;

procedure TFrFinishing.TampilIsiSupplier;
begin

end;

procedure TFrFinishing.TampilIsiGudang;
begin
  KodeBrows:=11002;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeGdg.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    KodeGdg.Text:=FrBrows.QuBrows.FieldByName('KodeGdg').AsString;
    NamaGdg.Caption:='[ '+FrBrows.QuBrows.FieldByName('Nama').AsString+' ]';

  end
  else
    ActiveControl:=KodeGdg;
end;

{procedure TFrFinishing.TampilIsiMesin;
begin
  //KodeBrows:=91118;
{  KodeBrows:=91114;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=nospk.Text;
  FrBrows.JnsPakai:=UrutMesin.AsInteger;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    kodemesin.text:=FrBrows.QuBrows.FieldByName('KOdemsn').AsString;
    Namamesin.Caption:='[ '+FrBrows.QuBrows.FieldByName('Ket').AsString+' ]';
    //TglSpkMsn.Date :=FrBrows.QuBrows.FieldByName('Tanggal').AsDateTime ;
    Tarifmesin.Value := FrBrows.QuBrows.FieldByName('Tarif').AsFloat ;
    //Urutmesin.Value :=      FrBrows.QuBrows.FieldByName('Urut').AsInteger ;
  end
  else
    ActiveControl:=Kodemesin;}
//end;

procedure TFrFinishing.IsiSatuan;
begin
  LNamaSat.Caption:=IsiSatuanBrg(KodeBrg.Text, mNamaSatuan, mIsiSatuan);
end;

procedure TFrFinishing.TampilIsiBarang;
begin
//  KodeBrows:=23101;
  KodeBrows:=24201;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:='%'+KodeBrg.Text+'%';
  FrBrows.NoKira1:=KodeGdg.Text;
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.IsEmpty=False) then
  begin
    with FrBrows.QuBrows do
    begin
      KodeBrg.Text:=FieldByName('KodeBrg').AsString;
      LNamaBrg.Caption:='[ '+FieldByName('NamaBrg').AsString+' ]';
    end;
    mUrutPO:=0;
    IsiSatuan;
  end
   else
    ActiveControl:=KodeBrg;
end;

procedure TFrFinishing.TampilIsiBarangPO;
begin

end;

procedure TFrFinishing.TampilIsiEkspedisi;
begin

end;

procedure TFrFinishing.IsiNoBuktiBaru;
begin
  DecodeDate(Date,YY,MM,DD);
  If DayOfTheMonth(Date)<=DD then
     DD:=DayOfTheMonth(date);
  Try
    TANGGAL.Date := EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),DD);
  Except
    TANGGAL.Date := EndOfAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln))
  end;
  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal.Date);
  NoUrut.Text := NomorBukti;
  NOBUKTI.Text := Nomor;
end;

procedure TFrFinishing.TampilIsiNoSPK;
begin
  //KodeBrows:=1014121;
  KodeBrows:=1014122;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:='%'+NoSPK.Text+'%';
  FrBrows.NoKira1:=NoSPK.Text;
  FrBrows.TglAwal:=tanggal.Date;
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.IsEmpty=False) then
  begin
    with FrBrows.QuBrows do
    begin
      NoSPK.Text:=FieldByName('NoBukti').AsString;
      Kodebrg.Text:=FieldByName('BrgJ').AsString;
      LNamaBrg.Caption:='[ '+FieldByName('NamaBrgJ').AsString+' ]';
      QntPesan.AsFloat:=FieldByName('QntJ').AsFloat;
      {QntCetak.AsFloat:=FieldByName('Qntcetak').AsFloat;
      NoSat.AsInteger:=FieldByName('NosatJ').AsInteger;
      LNamaSat.Caption:='[ '+FieldByName('Satj').AsString+' ]';
      ActiveControl:=KertasTambahan;}
    end;
  end
   else
    ActiveControl:=NoSPK;
end;

procedure TFrFinishing.TampilData(No_Bukti:String);
begin
   QuBeli.Close;
   QuBeli.SQL.Strings[2]:='select @NoBukti='+QuotedStr(No_Bukti);
   QuBeli.Open;
   if QuBeli.IsEmpty=false then
   begin
      dxDBGrid1.OptionsDB:=[edgoCanNavigation,edgoLoadAllRecords,edgoUseBookmarks]
   end
   else
   begin
      dxDBGrid1.OptionsDB:=[edgoCanNavigation,edgoUseBookmarks];
   end;
   //Hitung;
   QuTenaker.Close;
   //QuBeli.SQL.Strings[2]:='select @NoBukti='+QuotedStr(No_Bukti);
   QuTenaker.Open;
end;

Function TFrFinishing.CheckFormMaster:boolean;
begin
   CheckFormMaster:=True;
end;

procedure TFrFinishing.UpdatedbBeli;
begin
  if (not QuBeli.IsEmpty) and (mUbahHd=True) then
  begin
    with QuUpdatedbBeli do
    begin
       Close;
       Sql.Clear;
       SQL.Add('Update dbproduksi');
       SQL.Add('Set Tanggal=:0');
       SQL.Add('Where NoBukti='+QuotedStr(NoBukti.Text));
       Prepared;
       Parameters[0].Value:=TANGGAL.Date;
       ExecSQL;
       mUbahHd:=False; mUbahHdDet:=False;
    end;

  end;
end;

procedure TFrFinishing.ClearPanelDetail;
begin
   KodeBrg.Text:='';
   NoSPK.Text:='';
   NoSat.Value:=1;
   LNamaBrg.Caption:='[ . . . ]';
   LNamaSat.Caption:='[ . . . ]';
   LTK1.Caption:= '[ . . . ]' ;
   c1.Value :=0;
   c2.Value :=0;
   c3.Value :=0;
   c4.Value :=0;
   c5.Value :=0;
   c6.Value :=0;
   i1.Value:=0;
   i2.Value:=0;
   i3.Value:=0;
   H1.Value:=0;
   H2.Value:=0;
   H3.Value:=0;
   H4.Value:=0;
   H5.Value:=0;
   H6.Value:=0;
   E1.Value:=0;
   E2.Value:=0;
   N1.Value:=0;
   N2.Value:=0;
   CSI.Value:=0;
   L1.Value:=0;
   L2.Value:=0;
   L3.Value:=0;
   Shift.Text:='';
   HasilBaik.Value:=0;
   HasilRusak.Value:=0;
   //waktu.Value:=0;
   Tk1.text:='';
   keterangan.Text:='';
   P1.Value :=0;
//   K1.Value:=0;
   Pr1.Text:='';Pr2.Text:='';Pr3.Text:='';Pr4.Text:='';Pr5.Text:='';
   Pr6.Text:='';Pr7.Text:='';Pr8.Text:='';Pr9.Text:='';Pr10.Text:='';
   Pr11.Text:='';Pr12.Text:='';Pr13.Text:='';Pr14.Text:='';Pr15.Text:='';
   Pr16.Text:='';Pr17.Text:='';Pr18.Text:='';

   NmMsn1.Caption:='';NmMsn2.Caption:='';NmMsn3.Caption:='';NmMsn4.Caption:='';NmMsn5.Caption:='';
   NmMsn6.Caption:='';NmMsn7.Caption:='';NmMsn8.Caption:='';NmMsn9.Caption:='';NmMsn10.Caption:='';
   NmMsn11.Caption:='';NmMsn12.Caption:='';NmMsn13.Caption:='';NmMsn14.Caption:='';NmMsn15.Caption:='';
   NmMsn16.Caption:='';NmMsn17.Caption:='';NmMsn18.Caption:='';

   Qr1.Value:=0;Qr2.Value:=0;Qr3.Value:=0;Qr4.Value:=0;Qr5.Value:=0;
   Qr6.Value:=0;Qr7.Value:=0;Qr8.Value:=0;Qr9.Value:=0;Qr10.Value:=0;
   Qr11.Value:=0;Qr12.Value:=0;Qr13.Value:=0;Qr14.Value:=0;Qr15.Value:=0;
   Qr16.Value:=0;Qr17.Value:=0;Qr18.Value:=0;

   KetR1.Text:='';KetR2.Text:='';KetR3.Text:='';KetR4.Text:='';KetR5.Text:='';
   KetR6.Text:='';KetR7.Text:='';KetR8.Text:='';KetR9.Text:='';KetR10.Text:='';
   KetR11.Text:='';KetR12.Text:='';KetR13.Text:='';KetR14.Text:='';KetR15.Text:='';
   KetR16.Text:='';KetR17.Text:='';KetR18.Text:='';

   JmlKR1.Value:=0;JmlKR2.Value:=0;L1.Value:=0;L2.Value:=0;L3.Value:=0;
   KetKR1.Text:='';KetKR2.Text:='';KetKRL1.Text:='';KetKRL2.Text:='';KetKRL3.Text:='';

   QntPesan.value:=0;QntCetak.value:=0;KertasTambahan.value:=0; Spesimen.value:=0;
   Keterangan.text:='';

   Pr1.Text:='';Pr2.Text:='';Pr3.Text:='';Pr4.Text:='';Pr5.Text:='';
   Pr6.Text:='';Pr7.Text:='';Pr8.Text:='';Pr9.Text:='';Pr10.Text:='';
   Pr11.Text:='';Pr12.Text:='';Pr13.Text:='';Pr14.Text:='';Pr15.Text:='';
   Pr16.Text:='';Pr17.Text:='';Pr18.Text:='';
end;

procedure TFrFinishing.IsiTenaker(choice:char);
begin
 { with QuBeli do
    begin
      //Close;
      //Parameters[0].Value :=nobukti.Text;
      //Parameters[1].Value := KodePrs1.Text;
      //Open;
      //First;

      while not Eof do
        begin

          Next;
        end;
    end; }
         UpdateDataBeliTenaker(choice,'BL');
  {with QuBeli do
    begin
      Close;
     sql.Strings[2] := NoBukti.Text;
      Open;
    end;}

end;

procedure TFrFinishing.RefreshAll;
var i:integer;
begin
   mValid:=False;
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
   ClearPanelDetail;
end;

procedure TFrFinishing.IsiHargaBrg;
begin
end;

procedure TFrFinishing.TampilanQnt1Qnt2;
begin

end;

procedure TFrFinishing.UpdateDataBeliTenaker(Choice:Char;Kodet:String);
begin
  { if Choice='I' then mUrut:=1
     else mUrut:=QuBeliUrut.AsInteger;}

   BM:=QuBeli.GetBookmark;
   With Sp_BeliTenaker do
   begin
       Parameters.Refresh;
       Parameters[1].Value:=Choice;
       if Choice = 'D' then
         begin
           Parameters[2].Value:=NOBUKTI.Text ;
           Parameters[3].Value:=durut;
           //Parameters[11].Value:=Tanggal.Date;
         end
       else
         begin
           Parameters[2].Value:=NoBukti.Text;
           Parameters[3].Value:=durut;
           {Parameters[4].Value:=TK1.Text;
           Parameters[5].Value:=jamtk1.value;
           Parameters[6].Value:=QuMesinJAMAWAL.AsDateTime;
           Parameters[7].Value:=QuMesinJAMAKHIR.AsDateTime;
           Parameters[8].Value:=QuMesinQNTSPK.AsCurrency;
           Parameters[9].Value:=NoUrut.Text;
           Parameters[10].Value:=Tanggal.Date;
           Parameters[11].Value:=NoSPK.Text;
           Parameters[12].Value:=KodePrs1.Text;}
         end;
         try
          ExecProc;
                except
          MsgProsesGagal(Choice);
         end;
   end;
end;

procedure TFrFinishing.UpdateDataBeli(Choice:Char;Kodet:String);
begin
   if Choice='I' then
        begin
        mUrut:=1;
        Durut:=murut;
        end
     else
        begin
          mUrut:=QuBeliUrut.AsInteger;
          Durut:=QuBeliUrut.AsInteger
        end;
   BM:=QuBeli.GetBookmark;
   With Sp_Beli do
   begin
       Parameters.Refresh;
       Parameters[1].Value:=Choice;
       Parameters[2].Value:=NoBukti.Text;
       Parameters[3].Value:=NoUrut.Text;
       Parameters[4].Value:=TANGGAL.Date;
       Parameters[5].Value:=KodeGdg.Text;
       Parameters[6].Value:='' ;
       Parameters[7].Value:=TK1.Text;
       Parameters[8].Value:=mUrut;
       Parameters[9].Value:=KodeBrg.Text;
       Parameters[10].Value:=Qnt.AsFloat;
       Parameters[11].Value:=1;
       Parameters[12].Value:=mNamaSatuan[NoSat.AsInteger];
       Parameters[13].Value:=1;
       Parameters[14].Value:=NoSPK.Text;
       Parameters[15].Value:=0;
       Parameters[16].Value:='';
       Parameters[17].Value:= 1;
       Parameters[18].Value:= JenisKerja.ItemIndex ;
       Parameters[19].Value:= 0;//kertas.Value ;
       Parameters[20].Value:= 0;//Waktu.Value ;
       Parameters[21].Value:= Keterangan.Text ;
{       Parameters[22].Value:= C1.Value ;
       Parameters[23].Value:= C2.Value ;
       Parameters[24].Value:= C3.Value ;
       Parameters[25].Value:= C4.Value ;
       Parameters[26].Value:= C5.Value ;
       Parameters[27].Value:= C6.Value ;
       Parameters[28].Value:= I1.Value ;
       Parameters[29].Value:= I2.Value  ;
       Parameters[30].Value:= I3.Value;
       Parameters[31].Value:= H1.Value;
       Parameters[32].Value:= H2.Value;
       Parameters[33].Value:= H3.Value;
       Parameters[34].Value:= H4.Value;
       Parameters[35].Value:= H5.Value;
       Parameters[36].Value:= H6.Value;
       Parameters[37].Value:= E1.Value;
       Parameters[38].Value:= E2.Value;
       Parameters[39].Value:= 0;
       Parameters[40].Value:= N1.Value;
       Parameters[41].Value:= N2.Value;
       Parameters[42].Value:= CSI.Value;}
{       Parameters[46].Value:= 0;//L4.Value;
       Parameters[47].Value:= 0;//L5.Value;
       Parameters[48].Value:= 0;//L6.Value;
       Parameters[49].Value:= 0;//L7.Value;
       Parameters[50].Value:= 0;//L8.Value;
       Parameters[51].Value:= 0;//L9.Value;}
       Parameters[22].Value:= HasilBaik.value;
       Parameters[23].Value:= Hasilrusak.value ;
       {Parameters[54].Value:= 0;//KertasReject.Value;
       Parameters[55].Value:= 0;//k1.Value;
       Parameters[56].Value:= P1.Value;}

       Parameters[24].Value:= PR1.Text;
       Parameters[25].Value:= PR2.Text;
       Parameters[26].Value:= PR3.Text;
       Parameters[27].Value:= PR4.Text;
       Parameters[28].Value:= PR5.Text;
       Parameters[29].Value:= PR6.Text;
       Parameters[30].Value:= PR7.Text;
       Parameters[31].Value:= PR8.Text;
       Parameters[32].Value:= PR9.Text;
       Parameters[33].Value:= PR10.Text;
       Parameters[34].Value:= PR11.Text;
       Parameters[35].Value:= PR12.Text;
       Parameters[36].Value:= PR13.Text;
       Parameters[37].Value:= PR14.Text;
       Parameters[38].Value:= PR15.Text;
       Parameters[39].Value:= PR16.Text;
       Parameters[40].Value:= PR17.Text;
       Parameters[41].Value:= PR18.Text;

       Parameters[42].Value:= KetR1.Text;
       Parameters[43].Value:= KetR2.Text;
       Parameters[44].Value:= KetR3.Text;
       Parameters[45].Value:= KetR4.Text;
       Parameters[46].Value:= KetR5.Text;
       Parameters[47].Value:= KetR6.Text;
       Parameters[48].Value:= KetR7.Text;
       Parameters[49].Value:= KetR8.Text;
       Parameters[50].Value:= KetR9.Text;
       Parameters[51].Value:= KetR10.Text;
       Parameters[52].Value:= KetR11.Text;
       Parameters[53].Value:= KetR12.Text;
       Parameters[54].Value:= KetR13.Text;
       Parameters[55].Value:= KetR14.Text;
       Parameters[56].Value:= KetR15.Text;
       Parameters[57].Value:= KetR16.Text;
       Parameters[58].Value:= KetR17.Text;
       Parameters[59].Value:= KetR18.Text;

       Parameters[60].Value:= QR1.Value;
       Parameters[61].Value:= QR2.Value;
       Parameters[62].Value:= QR3.Value;
       Parameters[63].Value:= QR4.Value;
       Parameters[64].Value:= QR5.Value;
       Parameters[65].Value:= QR6.Value;
       Parameters[66].Value:= QR7.Value;;
       Parameters[67].Value:= QR8.Value;
       Parameters[68].Value:= QR9.Value;
       Parameters[69].Value:= QR10.Value;
       Parameters[70].Value:= QR11.Value;
       Parameters[71].Value:= QR12.Value;
       Parameters[72].Value:= QR13.Value;
       Parameters[73].Value:= QR14.Value;
       Parameters[74].Value:= QR15.Value;
       Parameters[75].Value:= QR16.Value;
       Parameters[76].Value:= QR17.Value;
       Parameters[77].Value:= QR18.Value;

       Parameters[78].Value:= QntCetak.Value;
       Parameters[79].Value:= KertasTambahan.Value;
       Parameters[80].Value:= Spesimen.Value;


       Parameters[81].Value:= JmlKR1.Value;
       Parameters[82].Value:= JmlKR2.Value;


       Parameters[83].Value:= KetKR1.Text;
       Parameters[84].Value:= KetKR2.Text;

       Parameters[85].Value:= L1.Value;
       Parameters[86].Value:= L2.Value;
       Parameters[87].Value:= L3.Value;

       Parameters[88].Value:= KetKRL1.Text;
       Parameters[89].Value:= KetKRL2.Text;
       Parameters[90].Value:= KetKRL3.Text;


       try
          ExecProc;

          //if Handling.Value<>0 then
          //begin
          //  QuUpdatedbbeli.Close;
          //  QuUpdatedbbeli.SQL.Clear;
          //  QuUpdatedbbeli.SQL.Add('exec sp_UpdateBeli '+QuotedStr(NoBukti.Text));
          //  QuUpdatedbbeli.ExecSQL;
          //end;
          if Choice='I' then
          begin
            TampilData(NOBUKTI.Text);
            QuBeli.Locate('KodeBrg',KodeBrg.Text,[LOP,LOC]);
            LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                    'Nobukti = '+nobukti.Text);
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
                    'Nobukti = '+nobukti.Text);
          end
          Else if Choice='D' then
          begin
            LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                    'Nobukti = '+nobukti.Text);
            TampilData(NOBUKTI.Text);
          end;
          //Hitung;
          QuBeli.Locate('Urut', mUrut, []);
       except
          MsgProsesGagal(Choice);
       end;


   end;
end;

Procedure TFrFinishing.AmBilDataBeli;
begin
      if Not QuBeli.IsEmpty Then
      Begin
        Tanggal.Date:=QuBeliTANGGAL.AsDateTime;
           Shift.Text := QuBelishift.AsVariant ;
      //  KodeGdg.Text:=QuBeliKodeGdg.AsString;
      //  Namagdg.Caption:=QuBeliNama.AsString;
         c1.Value:=QuBeliC1.AsFloat;
         c2.Value:=QuBeliC2.AsFloat;
         c3.Value:=QuBeliC3.AsFloat;
         c4.Value:=QuBeliC4.AsFloat;
         c5.Value:=QuBeliC5.AsFloat;
         c6.Value:=QuBeliC6.AsFloat;
         I1.Value:=QuBeliI1.AsFloat;
         I2.Value:=QuBeliI2.AsFloat;
         I3.Value:=QuBeliI3.AsFloat;
         H1.Value:=QuBeliH1.AsFloat;
         H2.Value:=QuBeliH2.AsFloat;
         H3.Value:=QuBeliH3.AsFloat;
         H4.Value:=QuBeliH4.AsFloat;
         H5.Value:=QuBeliH5.AsFloat;
         H6.Value:=QuBeliH6.AsFloat;
         E1.Value:=QuBeliE1.AsFloat;
         E2.Value:=QuBeliE2.AsFloat;
         N1.Value:=QuBeliN1.AsFloat;
         N2.Value:=QuBeliN2.AsFloat;
         CSI.Value:=QuBeliCSI.AsFloat;
         L1.Value:=QuBeliL1.AsFloat;
         L2.Value:=QuBeliL2.AsFloat;
         L3.Value:=QuBeliL3.AsFloat;
         //K1.Value:=QuBelik1.AsFloat;
         P1.Value:=QuBelip1.AsFloat;
         Keterangan.Text:=QuBeliKetDetail.AsString;
         JenisKerja.ItemIndex:=QuBeliJenisKerja.AsInteger ;
         //kertas.Value:=QuBeliKertas.AsFloat;
         HasilBaik.Value:=QuBeliHasilBaik.AsFloat;
         HasilRusak.Value:=QuBeliHasilRusak.AsFloat;
         KodeBrg.Text:=QuBeliKODEBRG.AsString;
         NoSPK.Text:=QuBeliNoSPK.AsString;
         Tk1.Text:=QuBeliNIK.AsString;
         Spesimen.Value:=QuBeliQntSpesimen.Value;
         KertasTambahan.Value:=QuBeliQntTambahan.Value;
         QntCetak.Value:=QuBeliQntCetak.Value;
         mValid:=true;
         PR1.Text:=QuBeliPR1.AsString;
         if PR1.Text<>'' then
         PR1Exit(Pr1);
         PR2.Text:=QuBeliPR2.AsString;
         mvalid:=true;
         if PR2.Text<>'' then
         PR2Exit(Pr2);
         mvalid:=true;
         PR3.Text:=QuBeliPR3.AsString;
         if PR3.Text<>'' then
         PR3Exit(Pr3);
         mvalid:=true;
         PR4.Text:=QuBeliPR4.AsString;
         if PR4.Text<>'' then
         PR4Exit(Pr4);
         mvalid:=true;
         PR5.Text:=QuBeliPR5.AsString;
         if PR5.Text<>'' then
         PR5Exit(Pr5);
         mvalid:=true;
         PR6.Text:=QuBeliPR6.AsString;
         if PR6.Text<>'' then
         PR6Exit(Pr5);
         mvalid:=true;
         PR7.Text:=QuBeliPR7.AsString;
         if PR7.Text<>'' then
         PR7Exit(Pr7);
         mvalid:=true;
         PR8.Text:=QuBeliPR8.AsString;
         if PR8.Text<>'' then
         PR8Exit(Pr8);
         mvalid:=true;
         PR9.Text:=QuBeliPR9.AsString;
         if PR9.Text<>'' then
         PR9Exit(Pr9);
         mvalid:=true;
         PR10.Text:=QuBeliPR10.AsString;
         if PR10.Text<>'' then
         PR10Exit(Pr10);
         mvalid:=true;
         PR11.Text:=QuBeliPR11.AsString;
         if PR11.Text<>'' then
         PR11Exit(Pr11);
         mvalid:=true;
         PR12.Text:=QuBeliPR12.AsString;
         if PR12.Text<>'' then
         PR12Exit(Pr12);
         mvalid:=true;
         PR13.Text:=QuBeliPR13.AsString;
         if PR13.Text<>'' then
         PR13Exit(Pr13);
         mvalid:=true;
         PR14.Text:=QuBeliPR14.AsString;
         if PR14.Text<>'' then
         PR14Exit(Pr14);
         mvalid:=true;
         PR15.Text:=QuBeliPR15.AsString;
         if PR15.Text<>'' then
         PR15Exit(Pr15);
         mvalid:=true;
         PR16.Text:=QuBeliPR16.AsString;
         if PR16.Text<>'' then
         PR16Exit(Pr16);
         mvalid:=true;
         PR17.Text:=QuBeliPR17.AsString;
         if PR17.Text<>'' then
         PR17Exit(Pr17);
         mvalid:=true;
         PR18.Text:=QuBeliPR18.AsString;
         if PR18.Text<>'' then
         PR18Exit(Pr18);
         mvalid:=False;
         QR1.Value:=QuBeliJml1.AsFloat;
         QR2.Value:=QuBeliJml2.AsFloat;
         QR3.Value:=QuBeliJml3.AsFloat;
         QR4.Value:=QuBeliJml4.AsFloat;
         QR5.Value:=QuBeliJml5.AsFloat;
         QR6.Value:=QuBeliJml6.AsFloat;
         QR7.Value:=QuBeliJml7.AsFloat;
         QR8.Value:=QuBeliJml8.AsFloat;
         QR9.Value:=QuBeliJml9.AsFloat;
         QR10.Value:=QuBeliJml10.AsFloat;
         QR11.Value:=QuBeliJml11.AsFloat;
         QR12.Value:=QuBeliJml12.AsFloat;
         QR13.Value:=QuBeliJml13.AsFloat;
         QR14.Value:=QuBeliJml14.AsFloat;
         QR15.Value:=QuBeliJml15.AsFloat;
         QR16.Value:=QuBeliJml16.AsFloat;
         QR17.Value:=QuBeliJml17.AsFloat;
         QR18.Value:=QuBeliJml18.AsFloat;
         KetR1.Text:=QuBeliKetR1.AsString;
         KetR2.Text:=QuBeliKetR2.AsString;
         KetR3.Text:=QuBeliKetR3.AsString;
         KetR4.Text:=QuBeliKetR4.AsString;
         KetR5.Text:=QuBeliKetR5.AsString;
         KetR6.Text:=QuBeliKetR6.AsString;
         KetR7.Text:=QuBeliKetR7.AsString;
         KetR8.Text:=QuBeliKetR8.AsString;
         KetR9.Text:=QuBeliKetR9.AsString;
         KetR10.Text:=QuBeliKetR10.AsString;
         KetR11.Text:=QuBeliKetR11.AsString;
         KetR12.Text:=QuBeliKetR12.AsString;
         KetR13.Text:=QuBeliKetR13.AsString;
         KetR14.Text:=QuBeliKetR14.AsString;
         KetR15.Text:=QuBeliKetR15.AsString;
         KetR16.Text:=QuBeliKetR16.AsString;
         KetR17.Text:=QuBeliKetR17.AsString;
         KetR18.Text:=QuBeliKetR18.AsString;
         JmlKR1.Value:=QuBeliJmlKR1.AsFloat;
         JmlKR2.Value:=QuBeliJmlKR2.AsFloat;
         L1.Value:=QuBeliL1.AsFloat;
         L2.Value:=QuBeliL2.AsFloat;
         l3.Value:=QuBeliL3.AsFloat;
         KetKRL1.Text:=QuBeliKetKRL1.AsString;
         KetKRL2.Text:=QuBeliKetKRL2.AsString;
         KetKRL3.Text:=QuBeliKetKRL3.AsString;
         KetKR1.Text:=qubeliKetkr1.asstring;//QuBeliKetKR1.AsString;
         KetKR2.Text:=qubeliKetkr2.asstring;//QuBeliKetKR2.AsString;



         mvalid:=true;
//         TK1Exit(TK1);
         mvalid:=false;
      end;
end;



// PROCEDURE DAN FUNCTION MILIK DELPHI

procedure TFrFinishing.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if mExit=true then
  begin
     Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,IDUser);
     Action:=cafree;
  end
  else
  begin
     Action:=caNone;
  end;
end;

procedure TFrFinishing.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrFinishing.FormShow(Sender: TObject);
begin
  mValid:=False;
  xModalKoreksi:=FrMainfinishing.ModalKoreksi;
  IsTampil:=False;
  If xModalKoreksi=False then
  begin
    RefreshAll;
    IsiNoBuktiBaru;
    TampilData(NoBukti.Text);
    NoUrut.Enabled:=False;
  end
  else
  Begin
    NOBUKTI.Text:=FrMainfinishing.QuMasterNoBukti.AsString;
    Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,IsMax);
    TampilData(NOBUKTI.Text);

    NoUrut.Text:=QuBeliNoUrut.AsString;
    tanggal.Date:=QuBeliTANGGAL.AsDateTime ;
    //NoUrut.Enabled:=False;
    ActiveControl:=Tanggal;
  end;
  //AmBilDataBeli;

end;

procedure TFrFinishing.FormCreate(Sender: TObject);
begin
  mValid:=False;
  TipeTrans:='FNS';
  Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
  mUbahHd:=False;
  mUbahHdDet:=False;
end;

procedure TFrFinishing.TambahBtnClick(Sender: TObject);
begin
  if CheckFormMaster=True then
  begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      Model:='write';
       ClearPanelDetail;
      TampilTombolDetail(True);
      dxPageControl1.ActivePageIndex:=0;

      ActiveControl:=NoSPK;
    end else
    begin
      MsgPeriodeSudahDikunci;
      ActiveControl:=dxDBGrid1;
    end;
  end;
end;

procedure TFrFinishing.QntKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key=VK_Escape then
   begin
      mValid:=False;
      ClearPanelDetail;
      SpeedButton1.Click;
   end;
end;

procedure TFrFinishing.TanggalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
  begin
      if (Sender=Tanggal) and (CekPeriode(IDUser,TANGGAL.Date)=False) then
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
      IsiNoBuktiBaru;
      TampilData(NOBUKTI.Text);
      //ActiveControl:=NoUrut;
      ActiveControl:=dxDBGrid1;
    end
    else
    begin
      mExit:=True;
      Close;
    end;
  end;
end;

procedure TFrFinishing.KoreksiBtnClick(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    mValid:=False;
    Model:='koreksi';
    // data yang di update
    if QuBeli.IsEmpty=False then
    begin
      TampilTombolDetail(True);
      murut:=QuBeliURUT.AsInteger ;
      NoSPK.Text:=QuBeliNoSPK.AsString;
      mValid:=True;
      dxPageControl1.ActivePageIndex:=0;
      NoSPKExit(nospk);
      Mvalid:=false;
      KodeBrg.Enabled:=False;
      HPP.Value := QuBeliHPP.AsInteger ;
      KodeBrg.Text:=QuBeliKodeBrg.AsString;
      IsiSatuan;
      AmBilDataBeli;
     //ctiveControl:=Qnt;
    end
    else
    begin
      MsgKoreksiDataKosong;
      ActiveControl:=dxDBGrid1;
    end;
  end else
  begin
    MsgPeriodeSudahDikunci;
    ActiveControl:=dxDBGrid1;
  end;
end;

procedure TFrFinishing.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {if key=VK_Escape then
  begin
    Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
    if xmodalkoreksi then
    begin
      mExit := True;
      Close;
    end
    else
    begin
      Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
      RefreshAll;
      IsiNoBuktiBaru;
      TampilData(NOBUKTI.Text);
      //ActiveControl:=Shift;
      //TambahBtn.Show
    end;
  end
  else if key=VK_return then
  begin
   if FrMainfinishing.ModalKoreksi Then
    KoreksiBtn.Click
   else
    TambahBtn.Click;
  end
  else if key=VK_delete then
  begin
    HapusBtn.Click;
  end
  else if key=VK_insert then
  begin
    TambahBtn.Click;
  end;}
  if key=VK_Escape then
  begin
    Hapus_Daftar_Nomor_User(TipeTrans ,IDUser);
    mExit := True;
      Close;
  end
  else if key=VK_return then
  begin
  if FrMainfinishing.ModalKoreksi Then
    KoreksiBtn.Click
  else
    TambahBtn.Click;
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

procedure TFrFinishing.HapusBtnClick(Sender: TObject);
begin
//  if CekPeriode(IdUser,TANGGAL.Date)=true then
//  begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
       if QuBeli.IsEmpty=True then
       begin
          MsgHapusDataKosong;
          ActiveControl:=dxDBGrid1;
       end
       else
       begin
          StrPCopy(S,Format('Anda yakin Kode %s dan Nama %s dihapus ?',
          [QuBeliKodeBrg.AsString, QuBeliNamabrg.AsString]));
          if (Application.MessageBox(S,'Hapus Data',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
          begin
             UpdateDataBeli('D','BL');
             //IsiTenaker('D');
          end;
       end;
    end
    else
    begin
         MsgPeriodeSudahDikunci;
         ActiveControl:=dxDBGrid1;
    end;
  //end
  //else
  //    MsgTanggalTidakSesuaiPeriode;
end;

procedure TFrFinishing.wwDBGrid1Enter(Sender: TObject);
begin
  Frfinishing.KeyPreview:=false;
  CheckFormMaster;
end;

procedure TFrFinishing.Dx(Sender: TObject);
begin
  Frfinishing.KeyPreview:=true;
end;

procedure TFrFinishing.wwDBGrid1DblClick(Sender: TObject);
begin
  KoreksiBtn.Click;
end;

procedure TFrFinishing.NoUrutKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  {if Key=Vk_Return then
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
        if FrMainHasilP.ModalKoreksi then
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

procedure TFrFinishing.TanggalEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrFinishing.TanggalExit(Sender: TObject);
begin
  if mValid then
  begin
     if CekPeriode(IdUser,TANGGAL.Date)=false then
     begin
        MsgTanggalTidakSesuaiPeriode;
        ActiveControl:=tanggal;
     end
     else
     begin
        If Length(NoUrut.Text)<5 then
        begin
          MessageDlg('Nomor urut kurang '+InttoStr(5-Length(NoUrut.Text))+' digit.',mtWarning,[MbOk],0);
          ActiveControl := NoUrut;
        end
        else
        begin
          ///TampilData(NOBUKTI.Text);
          if not QuBeli.IsEmpty then
          Begin
             //AmBilDataBeli;
          end
          else
          Begin
            if xModalKoreksi then
            begin
              ActiveControl := NoUrut;
            end;
          end;

          {If Not Daftar_Nomor('PRD',Nourut.Text,NoBukti.Text,IsMax) then
          begin
            MessageDlg('Nomor : '+NOBUKTI.Text+' telah digunakan oleh '+MyUser+'. Gunakan Nomor Lain',mtWarning,[MbOk],0);
            ActiveControl := Shift;
          end;  }

        end;

     end;
     ;
  end;
end;

procedure TFrFinishing.KodeSuppEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrFinishing.KodeSuppExit(Sender: TObject);
begin
  //
end;

procedure TFrFinishing.CetakClick(Sender: TObject);
var N1, N2, N3 : string;
    T1, T2 : Real;
    Tot : byte;
    H1  : real;
begin
  QuReport.Close;
  QuReport.SQL.Strings[2]:='select @NoBukti='+QuotedStr(NoBukti.Text);
  QuReport.Open;
  tothal :=(QuBeli.RecordCount div 10);
  sishal :=(QuBeli.RecordCount mod 10);
  if sishal>0 then tothal :=tothal+1;

  With QuUpdatedbbeli do
  begin
    close;
    sql.clear;
    sql.add('Select * From vwPerusahaan ');
    Open;
  end;

  if Iscetak then
    MainCetak1(frxDBDataset1,frxDataPerusahaan,DM.QuCari,Dm.QuCari2,'CetaKFinishing','VwCetakFinishing',Nobukti.text,'Nota\NotaFinishing.fr3',frxReport1)
else
   MsgTidakBerhakCetakData

end;

procedure TFrFinishing.BitBtn1Click(Sender: TObject);
begin
  mValid:=False;
  //if CekPeriode(IDUser, Tanggal.Date)=True then
  //begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      if Model='write' then
      begin
        if (length(Kodebrg.Text)>0) or (length(KodeGdg.Text)>0) then
        begin
          UpdateDataBeli('I','BL');
          //IsiTenaker('I');
          ClearPanelDetail;
          dxPageControl1.ActivePageIndex:=0;
          ActiveControl:=NoSPK;
          // SpeedButton1.Click;
        end
        else
        begin
          MsgDataTidakBolehKosong('Kode Barang atau Gudang');
          ActiveControl:=Qnt;
        end;
      end
      else if model='koreksi' then
      begin
        UpdateDataBeli('U','BL');
        //IsiTenaker('U');
        SpeedButton1.Click;
      end
    end else
    begin
      MsgPeriodeSudahDikunci;
      if Qnt.CanFocus then
        ActiveControl:=Qnt;
    end;
    ClearPanelDetail;
  //end
  //else
  //  MsgTanggalTidakSesuaiPeriode;
end;

procedure TFrFinishing.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  ClearPanelDetail;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
end;

procedure TFrFinishing.FormDestroy(Sender: TObject);
begin
  Frfinishing:=nil;
end;

procedure TFrFinishing.KodeGdgExit(Sender: TObject);
begin
  if mValid Then
  begin
     if Length(KodeGdg.Text)=0 then TampilIsiGudang else
     begin
        if DataBersyarat('select KodeGdg,Nama from dbGudang where KodeGdg=:0',[KodeGdg.Text], DM.QuCari)=True then
        begin
          KodeGdg.Text:=DM.QuCari.fieldbyname('KodeGdg').AsString;
          NamaGdg.Caption:='[ '+DM.QuCari.FieldByName('Nama').AsString+' ]';
        end
        else TampilIsiGudang;
     end;
  end;
end;

procedure TFrFinishing.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrFinishing.DsgCetakBtnClick(Sender: TObject);
begin
{  With QuUpdatedbbeli do
  begin
    close;
    sql.clear;
    sql.add('Select * From vwPerusahaan ');
    Open;
  end;    }

  frxReport1.LoadFromFile(currDir+'Nota\NotaFinishing.fr3');
  frxReport1.DesignReport;
end;

procedure TFrFinishing.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
{  if comparetext(varname,'Terbilang')=0 then
  value := '# '+TempCode+' #';
  if comparetext(varname,'Total')=0 then
     value := GrandTotal.Value+Handling.AsFloat;
  if comparetext(varname,'Tothal')=0 then
      value := tothal;}
  if CompareText(varName,'iduser')=0 then
        value:=IDUser;
end;

procedure TFrFinishing.NoUrutChange(Sender: TObject);
begin
  if mValid then
  begin
    if Length(NoUrut.Text)=4 then
    begin
      Konfig(TipeTrans,Nourut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date);
      NOBUKTI.Text:=MyNoBukti;
    end
    else
      ActiveControl := NoUrut;
  end;
end;

procedure TFrFinishing.KodeBrgExit(Sender: TObject);
begin
{  if mValid then
  begin
      if Length(TK1.Text)=0 then TampilIsiKaryawan else
      begin
          if DataBersyarat('Select a.nik, b.nama  from dbhasilprdtenaker a      '+
                           'Left Outer Join dbkaryawan b on b.nik =a.nik '+
                           //'on a.NoBuKti=b.NoPo left Outer Join dbBarang c on a.Kodebrg=c.Kodebrg ' +
                           'where A.Nik=:0 ',
                     [TK1.Text], DM.QuCari)=True then
        begin
             TK1.Text:=DM.QuCari.FieldByName('Nik').AsString;
             LTK1.Caption:='[ '+DM.QuCari.FieldByName('nama').AsString+' ]';
             {Qnt.MaxValue:=DM.QuCari.FieldByName('QntSisa').AsFloat+0.01;
             Qnt.AsFloat:=DM.QuCari.FieldByName('QntSisa').AsFloat;
             Harga.AsFloat:=DM.QuCari.FieldByName('Harga').AsFloat;
             IsiSatuan;
        end
        else
             TampilIsiKaryawan;
      end;
  end;}
end;


procedure TFrFinishing.TampilISiKaryawan4;
begin
end;

procedure TFrFinishing.TampilISiKaryawan5;
begin
end;

procedure TFrFinishing.TampilISiKaryawan6;
begin
end;


procedure TFrFinishing.TampilISiKaryawan2;
begin
end;

procedure TFrFinishing.TampilISiKaryawan3;
begin
end;

procedure TFrFinishing.TampilISiKaryawan1;
begin
end;

procedure TFrFinishing.KodeBrgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrFinishing.NoPOEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrFinishing.NoPOExit(Sender: TObject);
begin
  {if mValid Then
  begin
    if NoPO.Text<>'-' then
    begin
      if length(NoPO.Text)=0 then TampilIsiPO else
      begin
        if DataBersyarat('Select distinct A.NoBukti, A.Tanggal from dbPO A, vwOutstandingPO B '+
                         'where A.NoBukti=B.NoBukti and A.NoBukti=:0',[NoPO.text],Dm.Qucari)=true then
        begin
             NoPO.Text:=DM.QuCari.fieldbyname('NoBukti').AsString;
        end
        else TampilIsiPO;
      end;
    end
  end;}
end;

procedure TFrFinishing.TanggalChange(Sender: TObject);
begin
  mUbahHd:=True;
end;

procedure TFrFinishing.NoSatChange(Sender: TObject);
begin
 { if mValid then
  begin
    if NoSat.AsInteger=1 then
    begin
        Qnt.Value:=Qnt.AsFloat/mIsiSatuan[2];
    end else
    begin
        Qnt.Value:=Qnt.AsFloat*mIsiSatuan[2];
    end;
  end;}
end;

procedure TFrFinishing.NoSPKExit(Sender: TObject);
begin
 if mValid Then
  begin
    if NoSPK.Text<>'-' then
    begin
      if length(NoSPK.Text)=0
         then TampilIsiNoSPK
      else
      begin
             if (length(NoSPK.Text)>0) and
      (DataBersyarat('Select NoBukti,noso,a.kodebrg,qnt,namabrg,isnull(qntcetak,0)qntcetak from dbSPK  a'+
      ' left outer join dbbarang b on b.kodebrg=a.kodebrg '+
      ' where NoBukti=:0 order by NoBukti',[NoSPK.Text],DM.Qucari)=True) then
    begin
      NoSPK.Text:=DM.QuCari.FieldByName('NoBukti').AsString;
      LNamaBrg.Caption :=DM.QuCari.FieldByName('namabrg').AsString;
      //kodebrgjd:=DM.QuCari.FieldByName('kodebrg').AsString;
      kodebrg.Text:=DM.QuCari.FieldByName('Kodebrg').AsString;
      qntpesan.Value :=dm.QuCari.FieldByName('qnt').AsVariant;
      QntCetak.Value:=dm.QuCari.FieldByName('qntcetak').AsVariant;
      dxPageControl1.Tabs[0].SetFocus;
      ActiveControl :=KertasTambahan;

    end
      end;
    end;
    //IsiSatuan;
  end;
end;

procedure TFrFinishing.frxReport1AfterPrintReport(Sender: TObject);
begin
NilaiCetak('CetakKe','DBproduksi',Nobukti.Text);
end;

procedure TFrFinishing.NoUrutExit(Sender: TObject);
var myTempNoUrut: String;
begin
  if mValid then
  begin
    myTempNoUrut:=NoUrut.Text;
    NoUrut.Text:=RightStr('00000'+myTempNoUrut,4);
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

procedure TFrFinishing.KodeMesinExit(Sender: TObject);
begin

  if mValid Then
  begin
{     if Length(Kodemesin.Text)=0 then TampilIsiMesin else
     begin
        {if DataBersyarat('select KodeMsn,ket from dbMesin where KodeMsn=:0',[KodeMesin.Text], DM.QuCari)=True then
        begin
          KodeMesin.Text:=DM.QuCari.fieldbyname('KodeMsn').AsString;
          NamaMesin.Caption:='[ '+DM.QuCari.FieldByName('Ket').AsString+' ]';
        end
        else TampilIsiMesin;
     end;                      }
  end;

end;

procedure TFrFinishing.L7Exit(Sender: TObject);
begin
//ActiveControl:=TK1;
end;


procedure TFrFinishing.ShiftKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key=VK_Escape then
     begin
      mExit := True;
      Close;
     end;
end;

procedure TFrFinishing.TK1Exit(Sender: TObject);
begin
  if mValid then
  begin
      if Length(TK1.Text)=0 then TampilIsiKaryawan else
      begin
          if DataBersyarat('Select a.nik, b.nama  from dbfinishingdet a '+
                           'Left Outer Join dbkaryawan b on b.nik =a.nik '+
                           //'on a.NoBuKti=b.NoPo left Outer Join dbBarang c on a.Kodebrg=c.Kodebrg ' +
                           'where a.Nik=:0 ',
                     [TK1.Text], DM.QuCari)=True then
        begin
             TK1.Text:=DM.QuCari.FieldByName('Nik').AsString;
             LTK1.Caption:='[ '+DM.QuCari.FieldByName('nama').AsString+' ]';
             //TftTenaker1.Value := DM.QuCari.FieldByName('Nik').AsString;
             {Qnt.MaxValue:=DM.QuCari.FieldByName('QntSisa').AsFloat+0.01;
             Qnt.AsFloat:=DM.QuCari.FieldByName('QntSisa').AsFloat;
             Harga.AsFloat:=DM.QuCari.FieldByName('Harga').AsFloat;
             IsiSatuan;}
        end
        {else
             TampilIsiKaryawan;}
      end;
  end;
  mvalid:=false;

end;

procedure TFrFinishing.TampilISiKaryawan;
begin
 KodeBrows:=15780;
 Application.CreateForm(TFrBrows, FrBrows);
 FrBrows.ShowModal;
 if FrBrows.ModalResult=mrOk then
 begin
     //NIk.Text:=IntToStr(FrBrows.QuBrows.FieldByName('NIK').as);
     TK1.Text:=FrBrows.QuBrows.FieldByName('NIK').AsString;
     Ltk1.Caption:='[ '+FrBrows.QuBrows.FieldByName('Nama').AsString+' ]';
//     TarifTenaker1.Value :=FrBrows.QuBrows.FieldByName('Tarif').AsInteger;
     Keynik:= FrBrows.QuBrows.FieldByName('Keynik').AsInteger;
 end
 else
    ActiveControl:=TK1;
end;

procedure TFrFinishing.HasilRusakChange(Sender: TObject);
begin
       //kertas.Value:=Hasilbaik.Value+HasilRusak.Value;
       {Hasilrusak.Value:=
       //KertasReject.Value+
       c1.Value+c2.Value+c3.Value+c4.Value+c5.Value+c6.Value+
       i1.Value+i2.Value+i3.Value+
       H1.Value+H2.Value+H3.Value+H4.Value+H5.Value+H6.Value+
       E1.Value+e1.Value+
       N1.Value+n2.Value+
       CsI.Value+
       K1.Value+
       P1.Value+
       L1.Value+L2.Value+L3.Value//+L4.Value+L5.Value+L6.Value+L7.Value+L8.Value+L9.Value  }
       Realisasi.Value:=QntCetak.Value+KertasTambahan.Value;

       HasilRusak.Value:=qr1.Value+qr2.Value+qr3.Value+qr4.Value+qr5.Value+qr6.Value+qr7.Value+
       qr8.Value+qr9.Value+qr10.Value+qr11.Value+qr12.Value+qr13.Value+qr14.Value+qr15.Value+qr16.Value+qr17.Value+
       qr18.Value+JmlKR1.Value+JmlKR2.Value+L1.Value+l2.Value+l3.Value;
       KontrolRusak.Value:=Realisasi.Value-HasilBaik.Value-HasilRusak.Value;
       SisaBaik.Value:=HasilBaik.Value-QntPesan.Value-Spesimen.Value;//HasilRusak.Value-

end;

procedure TFrFinishing.SisaBaikChange(Sender: TObject);
begin
            //SisaBaik.Value:=Realisasi.Value-HasilRusak.Value-HasilBaik.Value-Spesimen.Value;
end;

procedure TFrFinishing.PR1Exit(Sender: TObject);
begin
  if mValid Then
  begin
     if Length(Pr1.Text)=0 then
     Begin
         KodeBrows:=91114;
          Application.CreateForm(TFrBrows, FrBrows);
          FrBrows.IsiData:=pr1.Text;
          FrBrows.ShowModal;
          if FrBrows.ModalResult=mrOk then
          begin
            PR1.Text:=FrBrows.QuBrows.FieldByName('KodeMsn').AsString;
            NmMsn1.Caption:='[ '+FrBrows.QuBrows.FieldByName('Ket').AsString+' ]';
            //trfmsn := FrBrows.QuBrows.FieldByName('Tarif').AsInteger;
          end
        else
        ActiveControl:=PR1;
     end
     else
     begin
        if DataBersyarat('select KodeMsn,ket from dbMesin where KodeMsn=:0',[Pr1.Text], DM.QuCari)=True then
        begin
          //KodeMesin.Text:=DM.QuCari.fieldbyname('KodeMsn').AsString;
          NmMsn1.Caption:='[ '+DM.QuCari.FieldByName('Ket').AsString+' ]';
        end
        //else TampilIsiMesin;

     end;
  end;

end;

{procedure TFrFinishing.TampilIsiMesin1;
begin
  KodeBrows:=91114;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=kodemsn.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    PR1.Text:=FrBrows.QuBrows.FieldByName('KodeMsn').AsString;
    //NmMsn.Caption:='[ '+FrBrows.QuBrows.FieldByName('Ket').AsString+' ]';
    //trfmsn := FrBrows.QuBrows.FieldByName('Tarif').AsInteger;
  end
  else
    ActiveControl:=PR1;
end;}


procedure TFrFinishing.PR2Exit(Sender: TObject);
begin
  if mValid then
  begin
      if Length(Pr2.Text)=0 then
      begin
          KodeBrows:=91114;
          Application.CreateForm(TFrBrows, FrBrows);
          FrBrows.IsiData:=pr2.Text;
          FrBrows.ShowModal;
          if FrBrows.ModalResult=mrOk then
          begin
            PR2.Text:=FrBrows.QuBrows.FieldByName('KodeMsn').AsString;
            NmMsn2.Caption:='[ '+FrBrows.QuBrows.FieldByName('Ket').AsString+' ]';
            //trfmsn := FrBrows.QuBrows.FieldByName('Tarif').AsInteger;
          end
        else
        ActiveControl:=PR2;
      end
       else
      begin
          if DataBersyarat('select KodeMsn,ket from dbMesin where KodeMsn=:0 ',
                     [PR2.Text], DM.QuCari)=True then
        begin
             PR2.Text:=DM.QuCari.FieldByName('KodeMsn').AsString;
             NmMsn2.Caption:='[ '+DM.QuCari.FieldByName('ket').AsString+' ]';
             //TftTenaker1.Value := DM.QuCari.FieldByName('Nik').AsString;
             {Qnt.MaxValue:=DM.QuCari.FieldByName('QntSisa').AsFloat+0.01;
             Qnt.AsFloat:=DM.QuCari.FieldByName('QntSisa').AsFloat;
             Harga.AsFloat:=DM.QuCari.FieldByName('Harga').AsFloat;
             IsiSatuan;}
        end
        {else
             TampilIsiKaryawan;}
      end;
  end;
  mvalid:=false;

{  if mValid Then
  begin
     if Length(Pr2.Text)=0 then
     Begin
         KodeBrows:=91114;
          Application.CreateForm(TFrBrows, FrBrows);
          FrBrows.IsiData:=pr1.Text;
          FrBrows.ShowModal;
          if FrBrows.ModalResult=mrOk then
          begin
            PR2.Text:=FrBrows.QuBrows.FieldByName('KodeMsn').AsString;
            NmMsn2.Caption:='[ '+FrBrows.QuBrows.FieldByName('Ket').AsString+' ]';
          end
     else
     ActiveControl:=PR2;
     end
     else
     begin
        if DataBersyarat('select KodeMsn,ket from dbMesin where KodeMsn=:0',[Pr2.Text], DM.QuCari)=True then
        begin
          //KodeMesin.Text:=DM.QuCari.fieldbyname('KodeMsn').AsString;
          NmMsn2.Caption:='[ '+DM.QuCari.FieldByName('Ket').AsString+' ]';
        end
        //else TampilIsiMesin;

     end;

  end;}

end;

procedure TFrFinishing.PR3Exit(Sender: TObject);
begin
  if mValid then
  begin
      if Length(Pr3.Text)=0 then
      begin
          KodeBrows:=91114;
          Application.CreateForm(TFrBrows, FrBrows);
          FrBrows.IsiData:=pr3.Text;
          FrBrows.ShowModal;
          if FrBrows.ModalResult=mrOk then
          begin
            PR3.Text:=FrBrows.QuBrows.FieldByName('KodeMsn').AsString;
            NmMsn3.Caption:='[ '+FrBrows.QuBrows.FieldByName('Ket').AsString+' ]';
            //trfmsn := FrBrows.QuBrows.FieldByName('Tarif').AsInteger;
          end
        else
        ActiveControl:=PR3;
      end
       else
      begin
          if DataBersyarat('select KodeMsn,ket from dbMesin where KodeMsn=:0 ',
                     [PR3.Text], DM.QuCari)=True then
        begin
             PR3.Text:=DM.QuCari.FieldByName('KodeMsn').AsString;
             NmMsn3.Caption:='[ '+DM.QuCari.FieldByName('ket').AsString+' ]';
             //TftTenaker1.Value := DM.QuCari.FieldByName('Nik').AsString;
             {Qnt.MaxValue:=DM.QuCari.FieldByName('QntSisa').AsFloat+0.01;
             Qnt.AsFloat:=DM.QuCari.FieldByName('QntSisa').AsFloat;
             Harga.AsFloat:=DM.QuCari.FieldByName('Harga').AsFloat;
             IsiSatuan;}
        end
        {else
             TampilIsiKaryawan;}
      end;
  end;
  mvalid:=false;


end;

procedure TFrFinishing.PR4Exit(Sender: TObject);
begin
  if mValid then
  begin
      if Length(Pr4.Text)=0 then
      begin
          KodeBrows:=91114;
          Application.CreateForm(TFrBrows, FrBrows);
          FrBrows.IsiData:=pr4.Text;
          FrBrows.ShowModal;
          if FrBrows.ModalResult=mrOk then
          begin
            PR4.Text:=FrBrows.QuBrows.FieldByName('KodeMsn').AsString;
            NmMsn4.Caption:='[ '+FrBrows.QuBrows.FieldByName('Ket').AsString+' ]';
            //trfmsn := FrBrows.QuBrows.FieldByName('Tarif').AsInteger;
          end
        else
        ActiveControl:=PR4;
      end
       else
      begin
          if DataBersyarat('select KodeMsn,ket from dbMesin where KodeMsn=:0 ',
                     [PR4.Text], DM.QuCari)=True then
        begin
             PR4.Text:=DM.QuCari.FieldByName('KodeMsn').AsString;
             NmMsn4.Caption:='[ '+DM.QuCari.FieldByName('ket').AsString+' ]';
             //TftTenaker1.Value := DM.QuCari.FieldByName('Nik').AsString;
             {Qnt.MaxValue:=DM.QuCari.FieldByName('QntSisa').AsFloat+0.01;
             Qnt.AsFloat:=DM.QuCari.FieldByName('QntSisa').AsFloat;
             Harga.AsFloat:=DM.QuCari.FieldByName('Harga').AsFloat;
             IsiSatuan;}
        end
        {else
             TampilIsiKaryawan;}
      end;
  end;
  mvalid:=false;
end;

procedure TFrFinishing.PR5Exit(Sender: TObject);
begin
  if mValid then
  begin
      if Length(Pr5.Text)=0 then
      begin
          KodeBrows:=91114;
          Application.CreateForm(TFrBrows, FrBrows);
          FrBrows.IsiData:=pr5.Text;
          FrBrows.ShowModal;
          if FrBrows.ModalResult=mrOk then
          begin
            PR5.Text:=FrBrows.QuBrows.FieldByName('KodeMsn').AsString;
            NmMsn5.Caption:='[ '+FrBrows.QuBrows.FieldByName('Ket').AsString+' ]';
            //trfmsn := FrBrows.QuBrows.FieldByName('Tarif').AsInteger;
          end
        else
        ActiveControl:=PR5;
      end
       else
      begin
          if DataBersyarat('select KodeMsn,ket from dbMesin where KodeMsn=:0 ',
                     [PR5.Text], DM.QuCari)=True then
        begin
             PR5.Text:=DM.QuCari.FieldByName('KodeMsn').AsString;
             NmMsn5.Caption:='[ '+DM.QuCari.FieldByName('ket').AsString+' ]';
             //TftTenaker1.Value := DM.QuCari.FieldByName('Nik').AsString;
             {Qnt.MaxValue:=DM.QuCari.FieldByName('QntSisa').AsFloat+0.01;
             Qnt.AsFloat:=DM.QuCari.FieldByName('QntSisa').AsFloat;
             Harga.AsFloat:=DM.QuCari.FieldByName('Harga').AsFloat;
             IsiSatuan;}
        end
        {else
             TampilIsiKaryawan;}
      end;
  end;
  mvalid:=false;

end;

procedure TFrFinishing.PR6Exit(Sender: TObject);
begin
  if mValid then
  begin
      if Length(Pr6.Text)=0 then
      begin
          KodeBrows:=91114;
          Application.CreateForm(TFrBrows, FrBrows);
          FrBrows.IsiData:=pr6.Text;
          FrBrows.ShowModal;
          if FrBrows.ModalResult=mrOk then
          begin
            PR6.Text:=FrBrows.QuBrows.FieldByName('KodeMsn').AsString;
            NmMsn6.Caption:='[ '+FrBrows.QuBrows.FieldByName('Ket').AsString+' ]';
            //trfmsn := FrBrows.QuBrows.FieldByName('Tarif').AsInteger;
          end
        else
        ActiveControl:=PR6;
      end
       else
      begin
          if DataBersyarat('select KodeMsn,ket from dbMesin where KodeMsn=:0 ',
                     [PR6.Text], DM.QuCari)=True then
        begin
             PR6.Text:=DM.QuCari.FieldByName('KodeMsn').AsString;
             NmMsn6.Caption:='[ '+DM.QuCari.FieldByName('ket').AsString+' ]';
             //TftTenaker1.Value := DM.QuCari.FieldByName('Nik').AsString;
             {Qnt.MaxValue:=DM.QuCari.FieldByName('QntSisa').AsFloat+0.01;
             Qnt.AsFloat:=DM.QuCari.FieldByName('QntSisa').AsFloat;
             Harga.AsFloat:=DM.QuCari.FieldByName('Harga').AsFloat;
             IsiSatuan;}
        end
        {else
             TampilIsiKaryawan;}
      end;
  end;
  mvalid:=false;
end;

procedure TFrFinishing.PR7Exit(Sender: TObject);
begin
  if mValid then
  begin
      if Length(Pr7.Text)=0 then
      begin
          KodeBrows:=91114;
          Application.CreateForm(TFrBrows, FrBrows);
          FrBrows.IsiData:=pr7.Text;
          FrBrows.ShowModal;
          if FrBrows.ModalResult=mrOk then
          begin
            PR7.Text:=FrBrows.QuBrows.FieldByName('KodeMsn').AsString;
            NmMsn7.Caption:='[ '+FrBrows.QuBrows.FieldByName('Ket').AsString+' ]';
            //trfmsn := FrBrows.QuBrows.FieldByName('Tarif').AsInteger;
          end
        else
        ActiveControl:=PR7;
      end
       else
      begin
          if DataBersyarat('select KodeMsn,ket from dbMesin where KodeMsn=:0 ',
                     [PR7.Text], DM.QuCari)=True then
        begin
             PR7.Text:=DM.QuCari.FieldByName('KodeMsn').AsString;
             NmMsn7.Caption:='[ '+DM.QuCari.FieldByName('ket').AsString+' ]';
             //TftTenaker1.Value := DM.QuCari.FieldByName('Nik').AsString;
             {Qnt.MaxValue:=DM.QuCari.FieldByName('QntSisa').AsFloat+0.01;
             Qnt.AsFloat:=DM.QuCari.FieldByName('QntSisa').AsFloat;
             Harga.AsFloat:=DM.QuCari.FieldByName('Harga').AsFloat;
             IsiSatuan;}
        end
        {else
             TampilIsiKaryawan;}
      end;
  end;
  mvalid:=false;
end;

procedure TFrFinishing.PR8Exit(Sender: TObject);
begin
  if mValid then
  begin
      if Length(Pr8.Text)=0 then
      begin
          KodeBrows:=91114;
          Application.CreateForm(TFrBrows, FrBrows);
          FrBrows.IsiData:=pr8.Text;
          FrBrows.ShowModal;
          if FrBrows.ModalResult=mrOk then
          begin
            PR8.Text:=FrBrows.QuBrows.FieldByName('KodeMsn').AsString;
            NmMsn8.Caption:='[ '+FrBrows.QuBrows.FieldByName('Ket').AsString+' ]';
            //trfmsn := FrBrows.QuBrows.FieldByName('Tarif').AsInteger;
          end
        else
        ActiveControl:=PR8;
      end
       else
      begin
          if DataBersyarat('select KodeMsn,ket from dbMesin where KodeMsn=:0 ',
                     [PR8.Text], DM.QuCari)=True then
        begin
             PR8.Text:=DM.QuCari.FieldByName('KodeMsn').AsString;
             NmMsn8.Caption:='[ '+DM.QuCari.FieldByName('ket').AsString+' ]';
             //TftTenaker1.Value := DM.QuCari.FieldByName('Nik').AsString;
             {Qnt.MaxValue:=DM.QuCari.FieldByName('QntSisa').AsFloat+0.01;
             Qnt.AsFloat:=DM.QuCari.FieldByName('QntSisa').AsFloat;
             Harga.AsFloat:=DM.QuCari.FieldByName('Harga').AsFloat;
             IsiSatuan;}
        end
        {else
             TampilIsiKaryawan;}
      end;
  end;
  mvalid:=false;
end;

procedure TFrFinishing.PR9Exit(Sender: TObject);
begin
  if mValid then
  begin
      if Length(Pr9.Text)=0 then
      begin
          KodeBrows:=91114;
          Application.CreateForm(TFrBrows, FrBrows);
          FrBrows.IsiData:=pr9.Text;
          FrBrows.ShowModal;
          if FrBrows.ModalResult=mrOk then
          begin
            PR9.Text:=FrBrows.QuBrows.FieldByName('KodeMsn').AsString;
            NmMsn9.Caption:='[ '+FrBrows.QuBrows.FieldByName('Ket').AsString+' ]';
            //trfmsn := FrBrows.QuBrows.FieldByName('Tarif').AsInteger;
          end
        else
        ActiveControl:=PR9;
      end
       else
      begin
          if DataBersyarat('select KodeMsn,ket from dbMesin where KodeMsn=:0 ',
                     [PR9.Text], DM.QuCari)=True then
        begin
             PR9.Text:=DM.QuCari.FieldByName('KodeMsn').AsString;
             NmMsn9.Caption:='[ '+DM.QuCari.FieldByName('ket').AsString+' ]';
             //TftTenaker1.Value := DM.QuCari.FieldByName('Nik').AsString;
             {Qnt.MaxValue:=DM.QuCari.FieldByName('QntSisa').AsFloat+0.01;
             Qnt.AsFloat:=DM.QuCari.FieldByName('QntSisa').AsFloat;
             Harga.AsFloat:=DM.QuCari.FieldByName('Harga').AsFloat;
             IsiSatuan;}
        end
        {else
             TampilIsiKaryawan;}
      end;
  end;
  mvalid:=false;
end;

procedure TFrFinishing.PR10Exit(Sender: TObject);
begin
  if mValid then
  begin
      if Length(Pr10.Text)=0 then
      begin
          KodeBrows:=91114;
          Application.CreateForm(TFrBrows, FrBrows);
          FrBrows.IsiData:=pr10.Text;
          FrBrows.ShowModal;
          if FrBrows.ModalResult=mrOk then
          begin
            PR10.Text:=FrBrows.QuBrows.FieldByName('KodeMsn').AsString;
            NmMsn10.Caption:='[ '+FrBrows.QuBrows.FieldByName('Ket').AsString+' ]';
            //trfmsn := FrBrows.QuBrows.FieldByName('Tarif').AsInteger;
          end
        else
        ActiveControl:=PR10;
      end
       else
      begin
          if DataBersyarat('select KodeMsn,ket from dbMesin where KodeMsn=:0 ',
                     [PR10.Text], DM.QuCari)=True then
        begin
             PR10.Text:=DM.QuCari.FieldByName('KodeMsn').AsString;
             NmMsn10.Caption:='[ '+DM.QuCari.FieldByName('ket').AsString+' ]';
             //TftTenaker1.Value := DM.QuCari.FieldByName('Nik').AsString;
             {Qnt.MaxValue:=DM.QuCari.FieldByName('QntSisa').AsFloat+0.01;
             Qnt.AsFloat:=DM.QuCari.FieldByName('QntSisa').AsFloat;
             Harga.AsFloat:=DM.QuCari.FieldByName('Harga').AsFloat;
             IsiSatuan;}
        end
        {else
             TampilIsiKaryawan;}
      end;
  end;
  mvalid:=false;
end;

procedure TFrFinishing.PR11Exit(Sender: TObject);
begin
  if mValid then
  begin
      if Length(Pr11.Text)=0 then
      begin
          KodeBrows:=91114;
          Application.CreateForm(TFrBrows, FrBrows);
          FrBrows.IsiData:=pr11.Text;
          FrBrows.ShowModal;
          if FrBrows.ModalResult=mrOk then
          begin
            PR11.Text:=FrBrows.QuBrows.FieldByName('KodeMsn').AsString;
            NmMsn11.Caption:='[ '+FrBrows.QuBrows.FieldByName('Ket').AsString+' ]';
            //trfmsn := FrBrows.QuBrows.FieldByName('Tarif').AsInteger;
          end
        else
        ActiveControl:=PR11;
      end
       else
      begin
          if DataBersyarat('select KodeMsn,ket from dbMesin where KodeMsn=:0 ',
                     [PR11.Text], DM.QuCari)=True then
        begin
             PR11.Text:=DM.QuCari.FieldByName('KodeMsn').AsString;
             NmMsn11.Caption:='[ '+DM.QuCari.FieldByName('ket').AsString+' ]';
             //TftTenaker1.Value := DM.QuCari.FieldByName('Nik').AsString;
             {Qnt.MaxValue:=DM.QuCari.FieldByName('QntSisa').AsFloat+0.01;
             Qnt.AsFloat:=DM.QuCari.FieldByName('QntSisa').AsFloat;
             Harga.AsFloat:=DM.QuCari.FieldByName('Harga').AsFloat;
             IsiSatuan;}
        end
        {else
             TampilIsiKaryawan;}
      end;
  end;
  mvalid:=false;
end;

procedure TFrFinishing.PR12Exit(Sender: TObject);
begin
  if mValid then
  begin
      if Length(Pr12.Text)=0 then
      begin
          KodeBrows:=91114;
          Application.CreateForm(TFrBrows, FrBrows);
          FrBrows.IsiData:=pr12.Text;
          FrBrows.ShowModal;
          if FrBrows.ModalResult=mrOk then
          begin
            PR12.Text:=FrBrows.QuBrows.FieldByName('KodeMsn').AsString;
            NmMsn12.Caption:='[ '+FrBrows.QuBrows.FieldByName('Ket').AsString+' ]';
            //trfmsn := FrBrows.QuBrows.FieldByName('Tarif').AsInteger;
          end
        else
        ActiveControl:=PR12;
      end
       else
      begin
          if DataBersyarat('select KodeMsn,ket from dbMesin where KodeMsn=:0 ',
                     [PR12.Text], DM.QuCari)=True then
        begin
             PR12.Text:=DM.QuCari.FieldByName('KodeMsn').AsString;
             NmMsn12.Caption:='[ '+DM.QuCari.FieldByName('ket').AsString+' ]';
             //TftTenaker1.Value := DM.QuCari.FieldByName('Nik').AsString;
             {Qnt.MaxValue:=DM.QuCari.FieldByName('QntSisa').AsFloat+0.01;
             Qnt.AsFloat:=DM.QuCari.FieldByName('QntSisa').AsFloat;
             Harga.AsFloat:=DM.QuCari.FieldByName('Harga').AsFloat;
             IsiSatuan;}
        end
        {else
             TampilIsiKaryawan;}
      end;
  end;
  mvalid:=false;
end;

procedure TFrFinishing.PR13Exit(Sender: TObject);
begin
  if mValid then
  begin
      if Length(Pr13.Text)=0 then
      begin
          KodeBrows:=91114;
          Application.CreateForm(TFrBrows, FrBrows);
          FrBrows.IsiData:=pr13.Text;
          FrBrows.ShowModal;
          if FrBrows.ModalResult=mrOk then
          begin
            PR13.Text:=FrBrows.QuBrows.FieldByName('KodeMsn').AsString;
            NmMsn13.Caption:='[ '+FrBrows.QuBrows.FieldByName('Ket').AsString+' ]';
            //trfmsn := FrBrows.QuBrows.FieldByName('Tarif').AsInteger;
          end
        else
        ActiveControl:=PR13;
      end
       else
      begin
          if DataBersyarat('select KodeMsn,ket from dbMesin where KodeMsn=:0 ',
                     [PR13.Text], DM.QuCari)=True then
        begin
             PR13.Text:=DM.QuCari.FieldByName('KodeMsn').AsString;
             NmMsn13.Caption:='[ '+DM.QuCari.FieldByName('ket').AsString+' ]';
             //TftTenaker1.Value := DM.QuCari.FieldByName('Nik').AsString;
             {Qnt.MaxValue:=DM.QuCari.FieldByName('QntSisa').AsFloat+0.01;
             Qnt.AsFloat:=DM.QuCari.FieldByName('QntSisa').AsFloat;
             Harga.AsFloat:=DM.QuCari.FieldByName('Harga').AsFloat;
             IsiSatuan;}
        end
        {else
             TampilIsiKaryawan;}
      end;
  end;
  mvalid:=false;
end;

procedure TFrFinishing.PR14Exit(Sender: TObject);
begin
  if mValid then
  begin
      if Length(Pr14.Text)=0 then
      begin
          KodeBrows:=91114;
          Application.CreateForm(TFrBrows, FrBrows);
          FrBrows.IsiData:=pr14.Text;
          FrBrows.ShowModal;
          if FrBrows.ModalResult=mrOk then
          begin
            PR14.Text:=FrBrows.QuBrows.FieldByName('KodeMsn').AsString;
            NmMsn14.Caption:='[ '+FrBrows.QuBrows.FieldByName('Ket').AsString+' ]';
            //trfmsn := FrBrows.QuBrows.FieldByName('Tarif').AsInteger;
          end
        else
        ActiveControl:=PR14;
      end
       else
      begin
          if DataBersyarat('select KodeMsn,ket from dbMesin where KodeMsn=:0 ',
                     [PR14.Text], DM.QuCari)=True then
        begin
             PR14.Text:=DM.QuCari.FieldByName('KodeMsn').AsString;
             NmMsn14.Caption:='[ '+DM.QuCari.FieldByName('ket').AsString+' ]';
             //TftTenaker1.Value := DM.QuCari.FieldByName('Nik').AsString;
             {Qnt.MaxValue:=DM.QuCari.FieldByName('QntSisa').AsFloat+0.01;
             Qnt.AsFloat:=DM.QuCari.FieldByName('QntSisa').AsFloat;
             Harga.AsFloat:=DM.QuCari.FieldByName('Harga').AsFloat;
             IsiSatuan;}
        end
        {else
             TampilIsiKaryawan;}
      end;
  end;
  mvalid:=false;
end;

procedure TFrFinishing.PR15Exit(Sender: TObject);
begin
  if mValid then
  begin
      if Length(Pr15.Text)=0 then
      begin
          KodeBrows:=91114;
          Application.CreateForm(TFrBrows, FrBrows);
          FrBrows.IsiData:=pr15.Text;
          FrBrows.ShowModal;
          if FrBrows.ModalResult=mrOk then
          begin
            PR15.Text:=FrBrows.QuBrows.FieldByName('KodeMsn').AsString;
            NmMsn15.Caption:='[ '+FrBrows.QuBrows.FieldByName('Ket').AsString+' ]';
            //trfmsn := FrBrows.QuBrows.FieldByName('Tarif').AsInteger;
          end
        else
        ActiveControl:=PR15;
      end
       else
      begin
          if DataBersyarat('select KodeMsn,ket from dbMesin where KodeMsn=:0 ',
                     [PR15.Text], DM.QuCari)=True then
        begin
             PR15.Text:=DM.QuCari.FieldByName('KodeMsn').AsString;
             NmMsn15.Caption:='[ '+DM.QuCari.FieldByName('ket').AsString+' ]';
             //TftTenaker1.Value := DM.QuCari.FieldByName('Nik').AsString;
             {Qnt.MaxValue:=DM.QuCari.FieldByName('QntSisa').AsFloat+0.01;
             Qnt.AsFloat:=DM.QuCari.FieldByName('QntSisa').AsFloat;
             Harga.AsFloat:=DM.QuCari.FieldByName('Harga').AsFloat;
             IsiSatuan;}
        end
        {else
             TampilIsiKaryawan;}
      end;
  end;
  mvalid:=false;
end;

procedure TFrFinishing.PR16Exit(Sender: TObject);
begin
  if mValid then
  begin
      if Length(Pr16.Text)=0 then
      begin
          KodeBrows:=91114;
          Application.CreateForm(TFrBrows, FrBrows);
          FrBrows.IsiData:=pr16.Text;
          FrBrows.ShowModal;
          if FrBrows.ModalResult=mrOk then
          begin
            PR16.Text:=FrBrows.QuBrows.FieldByName('KodeMsn').AsString;
            NmMsn16.Caption:='[ '+FrBrows.QuBrows.FieldByName('Ket').AsString+' ]';
            //trfmsn := FrBrows.QuBrows.FieldByName('Tarif').AsInteger;
          end
        else
        ActiveControl:=PR16;
      end
       else
      begin
          if DataBersyarat('select KodeMsn,ket from dbMesin where KodeMsn=:0 ',
                     [PR16.Text], DM.QuCari)=True then
        begin
             PR16.Text:=DM.QuCari.FieldByName('KodeMsn').AsString;
             NmMsn16.Caption:='[ '+DM.QuCari.FieldByName('ket').AsString+' ]';
             //TftTenaker1.Value := DM.QuCari.FieldByName('Nik').AsString;
             {Qnt.MaxValue:=DM.QuCari.FieldByName('QntSisa').AsFloat+0.01;
             Qnt.AsFloat:=DM.QuCari.FieldByName('QntSisa').AsFloat;
             Harga.AsFloat:=DM.QuCari.FieldByName('Harga').AsFloat;
             IsiSatuan;}
        end
        {else
             TampilIsiKaryawan;}
      end;
  end;
  mvalid:=false;
end;

procedure TFrFinishing.PR17Exit(Sender: TObject);
begin
  if mValid then
  begin
      if Length(Pr17.Text)=0 then
      begin
          KodeBrows:=91114;
          Application.CreateForm(TFrBrows, FrBrows);
          FrBrows.IsiData:=pr17.Text;
          FrBrows.ShowModal;
          if FrBrows.ModalResult=mrOk then
          begin
            PR17.Text:=FrBrows.QuBrows.FieldByName('KodeMsn').AsString;
            NmMsn17.Caption:='[ '+FrBrows.QuBrows.FieldByName('Ket').AsString+' ]';
            //trfmsn := FrBrows.QuBrows.FieldByName('Tarif').AsInteger;
          end
        else
        ActiveControl:=PR17;
      end
       else
      begin
          if DataBersyarat('select KodeMsn,ket from dbMesin where KodeMsn=:0 ',
                     [PR17.Text], DM.QuCari)=True then
        begin
             PR17.Text:=DM.QuCari.FieldByName('KodeMsn').AsString;
             NmMsn17.Caption:='[ '+DM.QuCari.FieldByName('ket').AsString+' ]';
             //TftTenaker1.Value := DM.QuCari.FieldByName('Nik').AsString;
             {Qnt.MaxValue:=DM.QuCari.FieldByName('QntSisa').AsFloat+0.01;
             Qnt.AsFloat:=DM.QuCari.FieldByName('QntSisa').AsFloat;
             Harga.AsFloat:=DM.QuCari.FieldByName('Harga').AsFloat;
             IsiSatuan;}
        end
        {else
             TampilIsiKaryawan;}
      end;
  end;
  mvalid:=false;
end;

procedure TFrFinishing.PR18Exit(Sender: TObject);
begin
  if mValid then
  begin
      if Length(Pr18.Text)=0 then
      begin
          KodeBrows:=91114;
          Application.CreateForm(TFrBrows, FrBrows);
          FrBrows.IsiData:=pr18.Text;
          FrBrows.ShowModal;
          if FrBrows.ModalResult=mrOk then
          begin
            PR18.Text:=FrBrows.QuBrows.FieldByName('KodeMsn').AsString;
            NmMsn18.Caption:='[ '+FrBrows.QuBrows.FieldByName('Ket').AsString+' ]';
            //trfmsn := FrBrows.QuBrows.FieldByName('Tarif').AsInteger;
          end
        else
        ActiveControl:=PR18;
      end
       else
      begin
          if DataBersyarat('select KodeMsn,ket from dbMesin where KodeMsn=:0 ',
                     [PR18.Text], DM.QuCari)=True then
        begin
             PR18.Text:=DM.QuCari.FieldByName('KodeMsn').AsString;
             NmMsn18.Caption:='[ '+DM.QuCari.FieldByName('ket').AsString+' ]';
             //TftTenaker1.Value := DM.QuCari.FieldByName('Nik').AsString;
             {Qnt.MaxValue:=DM.QuCari.FieldByName('QntSisa').AsFloat+0.01;
             Qnt.AsFloat:=DM.QuCari.FieldByName('QntSisa').AsFloat;
             Harga.AsFloat:=DM.QuCari.FieldByName('Harga').AsFloat;
             IsiSatuan;}
        end
        {else
             TampilIsiKaryawan;}
      end;
  end;
  mvalid:=false;
end;

end.
