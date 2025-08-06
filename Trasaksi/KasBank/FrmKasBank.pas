unit FrmKasBank;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, DBCtrls, jpeg, RxNotify, DateUtils,
  frxClass, frxDBSet, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid,Variants, dxmdaset, Math;

type
  TFrKasBank = class(TForm)
    Panel1: TPanel;
    NOBUKTI: TEdit;
    TANGGAL: TDateEdit;
    Label1: TLabel;
    Label11: TLabel;
    Panel3: TPanel;
    QuTransaksi: TADOQuery;
    Sp_Transaksi: TADOStoredProc;
    DsQuBeli: TDataSource;
    Shape4: TShape;
    QuUpdatedbbeli: TADOQuery;
    Label10: TLabel;
    NoUrut: TEdit;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Panel4: TPanel;
    TambahBtn: TSpeedButton;
    KoreksiBtn: TSpeedButton;
    HapusBtn: TSpeedButton;
    Cetak: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Terima: TEdit;
    Label4: TLabel;
    Lawan: TEdit;
    LabelLawan: TLabel;
    Label6: TLabel;
    Jumlah: TPBNumEdit;
    Kurs: TPBNumEdit;
    Valas: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    NamaLawan: TLabel;
    QuUpdateGiro: TADOQuery;
    Label14: TLabel;
    NoBon: TEdit;
    ADOQuery1: TADOQuery;
    Mode: TComboBox;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    LabelPerkiraan: TLabel;
    Perkiraan: TEdit;
    NamaPerkiraan: TLabel;
    tvMaster: TcxGridDBTableView;
    GridMaster: TcxGridLevel;
    cxGrid1: TcxGrid;
    THPC: TComboBox;
    Label3: TLabel;
    tvMasterPerkiraan: TcxGridDBColumn;
    tvMasterLawan: TcxGridDBColumn;
    tvMasterKeterangan: TcxGridDBColumn;
    tvMasterValas: TcxGridDBColumn;
    tvMasterKurs: TcxGridDBColumn;
    tvMasterTPHC: TcxGridDBColumn;
    tvMasterNobon: TcxGridDBColumn;
    tvMasternamaPerkiraan: TcxGridDBColumn;
    tvMasterNamaLawan: TcxGridDBColumn;
    tvMasterJumlah: TcxGridDBColumn;
    tvMasterJumlahRp: TcxGridDBColumn;
    Label12: TLabel;
    Devisi: TEdit;
    LDevisi: TLabel;
    lCustSuppP: TLabel;
    lCustSuppL: TLabel;
    KodeCustSuppP: TEdit;
    KodeCustSuppL: TEdit;
    lNamaCustSuppP: TLabel;
    lNamaCustSuppL: TLabel;
    DsGiro: TDataSource;
    QuGiro: TADOQuery;
    Label19: TLabel;
    Label20: TLabel;
    KodeBag: TEdit;
    Label21: TLabel;
    LNamaBag: TLabel;
    QuTransaksiNoBukti: TStringField;
    QuTransaksiTanggal: TDateTimeField;
    QuTransaksiDevisi: TStringField;
    QuTransaksiNote: TStringField;
    QuTransaksiLampiran: TBCDField;
    QuTransaksiPerkiraan: TStringField;
    QuTransaksiLawan: TStringField;
    QuTransaksiKeterangan: TStringField;
    QuTransaksiKeterangan2: TStringField;
    QuTransaksiDebet: TBCDField;
    QuTransaksiKredit: TBCDField;
    QuTransaksiValas: TStringField;
    QuTransaksiKurs: TBCDField;
    QuTransaksiDebetRp: TBCDField;
    QuTransaksiKreditRp: TBCDField;
    QuTransaksiTipeTrans: TStringField;
    QuTransaksiTPHC: TStringField;
    QuTransaksiCustSuppP: TStringField;
    QuTransaksiCustSuppL: TStringField;
    QuTransaksiUrut: TIntegerField;
    QuTransaksiNoAktivaP: TStringField;
    QuTransaksiNoAktivaL: TStringField;
    QuTransaksiStatusAktivaP: TStringField;
    QuTransaksiStatusAktivaL: TStringField;
    QuTransaksiNobon: TStringField;
    QuTransaksinamaPerkiraan: TStringField;
    QuTransaksiNamaLawan: TStringField;
    QuTransaksiJumlah: TBCDField;
    QuTransaksiJumlahRp: TBCDField;
    QuTransaksiNamaDevisi: TStringField;
    QuTransaksiMyTPHC: TStringField;
    QuTransaksiNamaBag: TStringField;
    lValas: TLabel;
    QuTransaksinourut: TStringField;
    QuTransaksiKodeP: TStringField;
    QuTransaksiKodeL: TStringField;
    SpeedButton2: TSpeedButton;
    QuGiroBank: TStringField;
    QuGiroNogiro: TStringField;
    QuGiroTglGiro: TDateTimeField;
    QuGiroDebet: TBCDField;
    QuGiroKredit: TBCDField;
    QuGiroDebetRp: TBCDField;
    QuGiroKreditRp: TBCDField;
    QuGiroJumlah: TBCDField;
    QuGiroJumlahRP: TBCDField;
    QuGiroKodevls: TStringField;
    QuGiroKurs: TBCDField;
    QuGiroBuktiBuka: TStringField;
    QuGiroTglBuka: TDateTimeField;
    QuGiroUrutBuktiBuka: TIntegerField;
    QuGiroBuktiCair: TStringField;
    QuGiroTglCair: TDateTimeField;
    QuGiroUrutBuktiCair: TIntegerField;
    dxGiro: TdxMemData;
    QuGiroTipe: TStringField;
    QuGiroKeterangan: TStringField;
    QuGiroKeteranganCair: TStringField;
    QuTransaksiStatusGiro: TStringField;
    dxAktiva: TdxMemData;
    QuAktiva: TADOQuery;
    dsAktiva: TDataSource;
    QuHutPiut: TADOQuery;
    DSHutPiut: TDataSource;
    dxHutPiut: TdxMemData;
    QuHutPiutNoFaktur: TStringField;
    QuHutPiutNoRetur: TStringField;
    QuHutPiutTipeTrans: TStringField;
    QuHutPiutKodeCustSupp: TStringField;
    QuHutPiutNoBukti: TStringField;
    QuHutPiutNoMsk: TIntegerField;
    QuHutPiutUrut: TIntegerField;
    QuHutPiutTanggal: TDateTimeField;
    QuHutPiutJatuhTempo: TDateTimeField;
    QuHutPiutDebet: TBCDField;
    QuHutPiutKredit: TBCDField;
    QuHutPiutSaldo: TBCDField;
    QuHutPiutValas: TStringField;
    QuHutPiutKurs: TBCDField;
    QuHutPiutDebetD: TBCDField;
    QuHutPiutKreditD: TBCDField;
    QuHutPiutSaldoD: TBCDField;
    QuHutPiutKodeSales: TStringField;
    QuHutPiutTipe: TStringField;
    QuHutPiutPerkiraan: TStringField;
    QuHutPiutSaldoRp: TBCDField;
    QuHutPiutSaldoVls: TBCDField;
    QuHutPiutCatatan: TStringField;
    QuHutPiutMyKey: TStringField;
    QuHutPiutP: TADOQuery;
    QuHutPiutL: TADOQuery;
    QuHutPiutPNoFaktur: TStringField;
    QuHutPiutPNoRetur: TStringField;
    QuHutPiutPTipeTrans: TStringField;
    QuHutPiutPKodeCustSupp: TStringField;
    QuHutPiutPNoBukti: TStringField;
    QuHutPiutPNoMsk: TIntegerField;
    QuHutPiutPUrut: TIntegerField;
    QuHutPiutPTanggal: TDateTimeField;
    QuHutPiutPJatuhTempo: TDateTimeField;
    QuHutPiutPDebet: TBCDField;
    QuHutPiutPKredit: TBCDField;
    QuHutPiutPSaldo: TBCDField;
    QuHutPiutPValas: TStringField;
    QuHutPiutPKurs: TBCDField;
    QuHutPiutPDebetD: TBCDField;
    QuHutPiutPKreditD: TBCDField;
    QuHutPiutPSaldoD: TBCDField;
    QuHutPiutPKodeSales: TStringField;
    QuHutPiutPTipe: TStringField;
    QuHutPiutPPerkiraan: TStringField;
    QuHutPiutPCatatan: TStringField;
    QuHutPiutLNoFaktur: TStringField;
    QuHutPiutLNoRetur: TStringField;
    QuHutPiutLTipeTrans: TStringField;
    QuHutPiutLKodeCustSupp: TStringField;
    QuHutPiutLNoBukti: TStringField;
    QuHutPiutLNoMsk: TIntegerField;
    QuHutPiutLUrut: TIntegerField;
    QuHutPiutLTanggal: TDateTimeField;
    QuHutPiutLJatuhTempo: TDateTimeField;
    QuHutPiutLDebet: TBCDField;
    QuHutPiutLKredit: TBCDField;
    QuHutPiutLSaldo: TBCDField;
    QuHutPiutLValas: TStringField;
    QuHutPiutLKurs: TBCDField;
    QuHutPiutLDebetD: TBCDField;
    QuHutPiutLKreditD: TBCDField;
    QuHutPiutLSaldoD: TBCDField;
    QuHutPiutLKodeSales: TStringField;
    QuHutPiutLTipe: TStringField;
    QuHutPiutLPerkiraan: TStringField;
    QuHutPiutLCatatan: TStringField;
    QuHutPiutPSaldoRp: TBCDField;
    QuHutPiutPSaldoVls: TBCDField;
    QuHutPiutPMyKey: TStringField;
    QuHutPiutLSaldoRp: TBCDField;
    QuHutPiutLSaldoVls: TBCDField;
    QuHutPiutLMyKey: TStringField;
    Label13: TLabel;
    JumlahGiro: TPBNumEdit;
    QuHutPiutMyNobuktiKas: TStringField;
    QuHutPiutPMyNobuktiKas: TStringField;
    QuHutPiutLMyNobuktiKas: TStringField;
    QuDeposito: TADOQuery;
    dsDeposito: TDataSource;
    dxDeposito: TdxMemData;
    QuDepositoBank: TStringField;
    QuDepositoNoDeposito: TStringField;
    QuDepositoTanggal: TDateTimeField;
    QuDepositoTglJatuhTempo: TDateTimeField;
    QuDepositoDebet: TBCDField;
    QuDepositoKredit: TBCDField;
    QuDepositoDebetRp: TBCDField;
    QuDepositoKreditRp: TBCDField;
    QuDepositoJumlah: TBCDField;
    QuDepositoJumlahRP: TBCDField;
    QuDepositoKodevls: TStringField;
    QuDepositoKurs: TBCDField;
    QuDepositoBuktiBuka: TStringField;
    QuDepositoTglBuka: TDateTimeField;
    QuDepositoUrutBuktiBuka: TIntegerField;
    QuDepositoBuktiCair: TStringField;
    QuDepositoTglCair: TDateTimeField;
    QuDepositoUrutBuktiCair: TIntegerField;
    QuDepositoTipe: TStringField;
    QuDepositoKeterangan: TStringField;
    QuDepositoKeteranganCair: TStringField;
    QuDepositoNamaPerkiraan: TStringField;
    QuTempHutPiut: TADOQuery;
    QuTempHutPiutNoFaktur: TStringField;
    QuTempHutPiutNoRetur: TStringField;
    QuTempHutPiutTipeTrans: TStringField;
    QuTempHutPiutKodeCustSupp: TStringField;
    QuTempHutPiutNoBukti: TStringField;
    QuTempHutPiutNoMsk: TIntegerField;
    QuTempHutPiutUrut: TIntegerField;
    QuTempHutPiutTanggal: TDateTimeField;
    QuTempHutPiutJatuhTempo: TDateTimeField;
    QuTempHutPiutDebet: TBCDField;
    QuTempHutPiutKredit: TBCDField;
    QuTempHutPiutSaldo: TBCDField;
    QuTempHutPiutValas: TStringField;
    QuTempHutPiutKurs: TBCDField;
    QuTempHutPiutDebetD: TBCDField;
    QuTempHutPiutKreditD: TBCDField;
    QuTempHutPiutSaldoD: TBCDField;
    QuTempHutPiutKodeSales: TStringField;
    QuTempHutPiutTipe: TStringField;
    QuTempHutPiutPerkiraan: TStringField;
    QuTempHutPiutCatatan: TStringField;
    QuTempHutPiutMyID: TBytesField;
    QuTempHutPiutIDUser: TStringField;
    sp_TempHutPiut: TADOStoredProc;
    QuTempHutPiutStatusUID: TStringField;
    QuTempHutPiutJumlahSaldo: TBCDField;
    QuTempHutPiutJumlahSaldoD: TBCDField;
    QuTempHutPiutMyKey: TStringField;
    QuTempHutPiutTipeDK: TStringField;
    frxDBDataset2: TfrxDBDataset;
    QuPerhn: TADOQuery;
    QuTransaksiMyID: TBytesField;
    QuTransaksiMyPerkiraan: TStringField;
    QuTransaksiMyLawan: TStringField;
    QuTransaksiMyNamaLawan: TStringField;
    QuTransaksiMyDebet: TBCDField;
    QuTransaksiMyJumlah: TBCDField;
    QuTransaksiNamaVls: TStringField;
    Label15: TLabel;
    mPerkiraan: TEdit;
    LNamaPerkiraan: TLabel;
    QuTransaksimPerkiraan: TStringField;
    QuTransaksimNamaPerkiraan: TStringField;
    Keterangan: TEdit;
    Simbol: TEdit;
    QuTransaksiSimbol: TStringField;
    QuTransaksiTipeTransHD: TStringField;
    QuTransaksiJumlahGiro: TBCDField;
    QuTransaksiJumlahGiroRp: TBCDField;
    tvMasterJumlahGiroRp: TcxGridDBColumn;
    QuTempHutPiutNoInvoice: TStringField;
    QuTempHutPiutValas_: TStringField;
    QuTempHutPiutKurs_: TBCDField;
    QuGiroKas: TStringField;
    QuTransaksiKodeBag: TStringField;
    QuTempHutPiutNOSO: TStringField;
    QuTempHutPiutNOSPB: TStringField;
    QuTempHutPiutKodeBrgCust: TStringField;
    ADOQuery2: TADOQuery;
    QuAktivaDevisi: TStringField;
    QuAktivaPerkiraan: TStringField;
    QuAktivaKeterangan: TStringField;
    QuAktivaQuantity: TBCDField;
    QuAktivaPersen: TBCDField;
    QuAktivaTanggal: TDateTimeField;
    QuAktivaTipe: TStringField;
    QuAktivaKodebag: TStringField;
    QuAktivaAkumulasi: TStringField;
    QuAktivaNoMuka: TStringField;
    QuAktivaNoBelakang: TStringField;
    QuAktivaBiaya: TStringField;
    QuAktivaPersenBiaya1: TBCDField;
    QuAktivaBiaya2: TStringField;
    QuAktivaPersenBiaya2: TBCDField;
    QuAktivabiaya3: TStringField;
    QuAktivapersenbiaya3: TBCDField;
    QuAktivabiaya4: TStringField;
    QuAktivapersenbiaya4: TBCDField;
    QuAktivaTipeAktiva: TWordField;
    QuAktivaNoBelakang2: TStringField;
    QuAktivaNoAktivaHd: TStringField;
    QuAktivaKelompok: TWordField;
    QuAktivaGroupAktiva: TStringField;
    QuAktivaStatus: TStringField;
    QuAktivaxsusut: TIntegerField;
    QuAktivaPerlakuanAktiva: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure PerkiraanEnter(Sender: TObject);
    procedure TANGGALKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RefreshAll;
    procedure ModeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TampilData(No_bukti:string);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure TambahBtnClick(Sender: TObject);
    procedure KoreksiBtnClick(Sender: TObject);
    procedure HapusBtnClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ClearDetailPanel;
    procedure LawanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KeteranganKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TANGGALExit(Sender: TObject);
    procedure TANGGALEnter(Sender: TObject);
    procedure ValasExit(Sender: TObject);

    procedure BitBtn1Click(Sender: TObject);

    procedure ModeEnter(Sender: TObject);
    procedure CetakClick(Sender: TObject);
    procedure DevisiExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure NoUrutEnter(Sender: TObject);
    procedure NoUrutChange(Sender: TObject);
    procedure tvMasterKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ModeChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure THPCChange(Sender: TObject);
    procedure PerkiraanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NoUrutKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LawanExit(Sender: TObject);
    procedure PerkiraanExit(Sender: TObject);
    procedure NoUrutExit(Sender: TObject);
    procedure SimbolExit(Sender: TObject);
    procedure ValasEnter(Sender: TObject);
    procedure KodeBagExit(Sender: TObject);
    procedure KeteranganKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    //procedure KodeBagExit(Sender: TObject);

  private
    { Private declarations }
    mNilaiStringEnter: String;
    mTampilkanHutPiut: boolean;
    procedure HapusTempHutPiut(pDK: String);
    procedure TampilIsiNoSPK   ;
    procedure IsiTempHutPiut(pDK, pKode, pNoBukti, pUrut, pValas, pKodeCustSupp, pPerkiraan: String);
  public
     mBukti,KodeRelasi,KodeCust,NoAktivaP,NoAktivaL,Model,StatusAktivaP,StatusAktivaL,StatusGiro,xLawan,xPerkiraan,
     xKodeP,xKodeL,xStatusAktivaP,xStatusAktivaL,xNoAktivaP,xNoAktivaL,isOpenP,isOpenL:string;
     mUrut, StatusDK,XSusut,PerlakuanAktiva: integer;
     XLebihBayar:Boolean ;
     AdaSelisih : boolean;
     mSelisih, mKetKurangLebihBayar,tipetrans: String;
     mSisaPiutang,mLebihBayar,JumlahNilaiGiro,JumlahHutPiut:real;
     IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel,xmodalkoreksi : Boolean;
     BM : TBookMark;
     procedure TampilanStatusDK;
     procedure TampilTombolDetail(pNilai: Boolean);
     function  CariJumlahPembayaranHutPiut(pStatusHutPiut, pValas: String): Real;
     procedure IsiNoBuktiBaru;
     procedure UpdateTransaksi;
     procedure TampilDataGiro(pTHPC, pNoBukti,pStatusGiro: String; pUrut: Integer);
     procedure SimpanDataGiro(pChoice: String);
     function TransaksiSudahCair(mHP, mNoBukti: String; mUrut: Integer): Boolean;
     function CekLawanDiPosting(mLawan,DK : String;var Kode:String):Boolean;
     procedure Aktiva(xStatus,mPerkiraan:String; Var xNoAktiva:String);
     Function KursValas(Tgl1,tgl2:Tdatetime;Valas:String):Real;
     procedure TampilAktiva(Var xNoAktiva,xStatus:string;xGroupaktiva:String);
     procedure AmbilDataAktiva(NoPerkiraan,Devisi:String);
     procedure SimpanData(Choice: String);
     procedure SimpanDataAktiva(pChoice: String);
     procedure TampilDataAktiva(mNoAktivaP,mNoAktivaL,mGroupaktivaP,mGroupAktivaL,mDevisi,mBagian:String);
     procedure TampilIsiPerkiraan(xkodebrows:Integer;xPerkiraan, xMode:String; Var xEdit : TEdit; Var xLabel:TLabel);
     procedure TampilHutPiut(xkode,xStatus,xPerkiraan,DK:String;Var xKodeCustSupp:TEdit);
     procedure SimpanDataHutPiut;
     procedure TampilDeposito(pNobukti,xStatus,xPerkiraan:String;pUrut :integer);
     procedure Deposito(pNobukti,xStatus,xPerkiraan:String;pUrut :integer);
     procedure SimpanDataDeposito(pChoice: String);
     procedure CloseQuerry;

     //Property XKurangBayar:Boolean Read FKurangBayar Write FKurangBayar;

    { Public declarations }
  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrKasBank: TFrKasBank;
  mValid,mExit,StatusSimpan,IsGL: Boolean;
  Sat:String;
  IsTutup,mNosat:Integer;
  TipeTrans,PlusPPN,Nomor:String;
  mBulan,mTahun:string;
  Biaya,BiayaRp,IsiBrg,potongan,mKurs:Real;
  S:array [0..255] of Char;
  YY,MM,DD : Word;
  IsGiroCair : Boolean;
  TipeGiro,JenisTransGiro,mValas : String;
  KodeTrans,KodeByr,Jenis :string;
  KodeP,KodeL,xTHPC: String;
  mPosisi,mNomor : Integer;


implementation
uses FrmBrows,MyProcedure,MyGlobal,MyModul, FrmMainKasBank,ATTerbilang, FrmKasBankGiro,
  FrmKasBankAktiva, FrmKasBankHutPiut, FrmKasBankDeposito;// AutoCompleteText,
  //AutoEdit;
{$R *.DFM}

procedure TFrKasBank.TampilanStatusDK;
begin
  if Mode.Text='BKK' then
  begin
    StatusDK:=1;
    Label4.Caption:='Kepada';
    Label15.Caption:='Kas';
  end else
  if Mode.Text='BKM' then
  begin
    StatusDK:=0;
    Label4.Caption:='Terima Dari';
    Label15.Caption:='Kas';
  end else
  if Mode.Text='BBM' then
  begin
    StatusDK:=0;
    Label4.Caption:='Terima Dari';
    Label15.Caption:='Bank';
  end else
  if Mode.Text='BBK' then
  begin
    Label4.Caption:='Kepada';
    Label15.Caption:='Bank';
    StatusDK:=1;
  end
  else
  begin
    Mode.ItemIndex:=0;
    Mode.Text:='BKK';
    Label4.Caption:='Kepada';
    Label15.Caption:='Kas';
    StatusDK:=1;
  end;
end;

procedure TFrKasBank.TampilTombolDetail(pNilai: Boolean);
begin
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  Panel3.Enabled:=pNilai;
  if pNilai=True then
  begin
    Perkiraan.Visible:=((Mode.Text='BKK') or (Mode.Text='BBK'));
    Lawan.Visible:=((Mode.Text='BKM') or (Mode.Text='BBM'));
    LabelPerkiraan.Visible:=Perkiraan.Visible;
    NamaPerkiraan.Visible:=Perkiraan.Visible;
    LabelLawan.Visible:=Lawan.Visible;
    NamaLawan.Visible:=Lawan.Visible;
    {
    if ((Mode.Text='BKK') or (Mode.Text='BBK')) then
    begin
      Lawan.Top:=89;
      Perkiraan.Top:=117;
      NamaLawan.Top:=LabelPerkiraan.Top;
      NamaPerkiraan.Top:=LabelLawan.Top;
    end else
    if ((Mode.Text='BKM') or (Mode.Text='BBM')) then
    begin
      Lawan.Top:=117;
      Perkiraan.Top:=89;
      NamaLawan.Top:=LabelLawan.Top;
      NamaPerkiraan.Top:=LabelPerkiraan.Top;
    end;
    }

        if (mPerkiraan.Text<>'') then
        begin
          if (Mode.Text='BKM') or (Mode.Text='BBM')then
            Perkiraan.Text:=mPerkiraan.Text
          else
          if (Mode.Text='BKK') or (Mode.Text='BBK') then
            Lawan.Text:=mPerkiraan.Text;
        end;
        

  end;
end;

procedure TFrKasBank.HapusTempHutPiut(pDK: String);
begin
   with DM.QuCari do
   begin
     Close;
     SQL.Clear;
     SQL.Add('delete dbTempHutPiut where ((IDUser='+QuotedStr(IDUser)+') and (TipeDK='+QuotedStr(pDK)+'))');
     SQL.Add('or ((NoBukti='+QuotedStr(NOBUKTI.Text)+') and (IDUser<>'+QuotedStr(IDUser)+'))');
     ExecSQL;
   end;
end;

procedure TFrKasBank.IsiTempHutPiut(pDK, pKode, pNoBukti, pUrut, pValas, pKodeCustSupp, pPerkiraan: String);
begin
  if (pKode='HT') or (pKode='PT') or (pKode='UHT') or (pKode='UPT')  then
  begin
    with DM.QuCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add('delete dbTempHutPiut where IDUser='+QuotedStr(IDUser)+' and isnull(StatusUID,'''')='''' ');
      ExecSQL;
      SQL.Clear;
      SQL.Add('insert into dbTempHutPiut (NoFaktur, NoRetur, TipeTrans, KodeCustSupp, NoBukti, NoMsk, Urut, Tanggal, JatuhTempo, ');
      SQL.Add('Debet, Kredit, Valas, Kurs, DebetD, KreditD, KodeSales, Tipe, Perkiraan, Catatan, IDUser, TipeDK,');
      SQL.Add('NoInvoice, Valas_, Kurs_,noso,nospb,kodebrgcust) ');
      SQL.Add('select Y.NoFaktur, Y.NoRetur, Y.TipeTrans, Y.KodeCustSupp, Y.NoBukti, Y.NoMsk, Y.Urut, Y.Tanggal, Y.JatuhTempo, ');
      SQL.Add('Y.Debet, Y.Kredit, Y.Valas, Y.Kurs, Y.DebetD, Y.KreditD, Y.KodeSales, Y.Tipe, Y.Perkiraan, Y.Catatan,'+QuotedStr(IDUser)+' IDUser, '+QuotedStr(pDK)+',');
      SQL.Add('Y.NoInvoice, Y.KodeVls_, Y.Kurs_ ,noso,nospb,kodebrgcust');
      SQL.Add('from ');
      SQL.Add('  (select NoFaktur, KodeCustSupp, Perkiraan ');
      SQL.Add('  from vwHutPiut ');
      SQL.Add('  where KodeCustSupp='+QuotedStr(pKodeCustSupp)+' and Perkiraan='+QuotedStr(pPerkiraan));
      //SQL.Add('  where KodeCustSupp in (select KodeCustSupp from dbCustSupp where KodeCustSupp='+QuotedStr(pKodeCustSupp)+' or Agent='+QuotedStr(pKodeCustSupp)+')');
      //SQL.Add('  and Perkiraan='+QuotedStr(pPerkiraan));
      SQL.Add('  and NoBukti+right(''0000''+cast(NoMsk as varchar(4)),4)<>'+QuotedStr(pNoBukti+FormatFloat('0000',StrToInt(pUrut))));
      SQL.Add('  group by NoFaktur, KodeCustSupp, Perkiraan ');
      if ((pKode='HT') or (pKode='UPT')) and (pValas='IDR') then
        SQL.Add('  having sum(Kredit-Debet)>0')
      else if ((pKode='HT') or (pKode='UPT')) and (pValas<>'IDR') then
        SQL.Add('  having sum(KreditD-DebetD)>0')
      else if ((pKode='PT') or (pKode='UHT')) and (pValas='IDR') then
        SQL.Add('  having sum(Debet-Kredit)>0')
      else if ((pKode='PT') or (pKode='UHT')) and (pValas<>'IDR') then
        SQL.Add('  having sum(DebetD-KreditD)>0');
      SQL.Add('  ) X ');
      SQL.Add('left outer join vwHutPiut Y on Y.NoFaktur=X.NoFaktur and Y.KodeCustSupp=X.KodeCustSupp and Y.Perkiraan=X.Perkiraan ');
      SQL.Add('where Y.KodeCustSupp='+QuotedStr(pKodeCustSupp));
      //SQL.Add('where Y.KodeCustSupp in (select KodeCustSupp from dbCustSupp where KodeCustSupp='+QuotedStr(pKodeCustSupp)+' or Agent='+QuotedStr(pKodeCustSupp)+')');
      //SQL.Add('and Y.Perkiraan='+QuotedStr(pPerkiraan));
      SQL.Add('and Y.NoBukti+right(''0000''+cast(Y.NoMsk as varchar(4)),4)<>'+QuotedStr(pNoBukti+FormatFloat('0000',StrToInt(pUrut))));
      ExecSQL;
      if (Model='koreksi') and (((pDK='D') and (pPerkiraan=QuTransaksiPerkiraan.AsString)) or ((pDK='K') and (pPerkiraan=QuTransaksiLawan.AsString))) then
      begin
        SQL.Clear;
        SQL.Add('insert into dbTempHutPiut (NoFaktur, NoRetur, TipeTrans, KodeCustSupp, NoBukti, NoMsk, Urut, Tanggal, JatuhTempo, ');
        SQL.Add('Debet, Kredit, Valas, Kurs, DebetD, KreditD, KodeSales, Tipe, Perkiraan, Catatan, IDUser, StatusUID, TipeDK,');
        SQL.Add('NoInvoice, Valas_, Kurs_,noso,nospb,kodebrgcust) ');
        SQL.Add('select Y.NoFaktur, Y.NoRetur, Y.TipeTrans, Y.KodeCustSupp, Y.NoBukti, Y.NoMsk, Y.Urut, Y.Tanggal, Y.JatuhTempo, ');
        SQL.Add('Y.Debet, Y.Kredit, Y.Valas, Y.Kurs, Y.DebetD, Y.KreditD, Y.KodeSales, Y.Tipe, Y.Perkiraan, Y.Catatan,'+QuotedStr(IDUser)+' IDUser, ');
        SQL.Add(' ''N'' StatusUID ');
        SQL.Add(', '+QuotedStr(pDK)+',');
        SQL.Add('Y.NoInvoice, Y.KodeVls_, Y.Kurs_ ,noso,nospb,kodebrgcust');
        SQL.Add('from vwHutPiut Y ');
        SQL.Add('where Y.NoBukti+right(''0000''+cast(Y.NoMsk as varchar(4)),4)='+QuotedStr(pNoBukti+FormatFloat('0000',StrToInt(pUrut))));
        SQL.Add('and Perkiraan='+QuotedStr(pPerkiraan)+' and KodeCustSupp='+QuotedStr(pKodeCustSupp));
        //SQL.Add('and Perkiraan='+QuotedStr(pPerkiraan));
        //SQL.Add('and KodeCustSupp in (select KodeCustSupp from dbCustSupp where KodeCustSupp='+QuotedStr(pKodeCustSupp)+' or Agent='+QuotedStr(pKodeCustSupp)+')');
        ExecSQL;
      end;
    end;
  end;
end;

function TFrKasBank.CariJumlahPembayaranHutPiut(pStatusHutPiut, pValas: String): Real;
begin
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    if pValas='IDR' then
    begin
      if (pStatusHutPiut='HT+') or (pStatusHutPiut='PT-') or (pStatusHutPiut='UHT-') or (pStatusHutPiut='UPT+') then
        SQL.Add('select sum(Kredit) Bayar from dbTempHutPiut')
      else
        SQL.Add('select sum(Debet) Bayar from dbTempHutPiut');
    end else
    begin
      //if (pStatusHutPiut='HT+') or (pStatusHutPiut='PT-') or (pStatusHutPiut='UHT+') or (pStatusHutPiut='UPT-')  then
      if (pStatusHutPiut='HT+') or (pStatusHutPiut='PT-') or (pStatusHutPiut='UHT-') or (pStatusHutPiut='UPT+')  then
        SQL.Add('select sum(KreditD) Bayar from dbTempHutPiut')
      else
        SQL.Add('select sum(DebetD) Bayar from dbTempHutPiut');
    end;
    SQL.Add('where IDUser='+QuotedStr(IDUser)+' and StatusUID in (''N'',''I'',''U'') ');
    Open;
  end;
  if DM.QuCari.IsEmpty then
    Result:=0
  else
    Result:=DM.QuCari.FieldByName('Bayar').AsFloat;
end;

procedure TFrKasBank.SimpanDataDeposito(pChoice: String);
begin
  if ((pChoice = 'I') or (pChoice = 'U')) and ((dxDeposito.Active = True) and (not dxDeposito.IsEmpty)) then
    begin
      if StatusAktivaP = 'DP+' then
      begin
        dxDeposito.First;
        while not dxDeposito.Eof do
        begin
          if QuDeposito.Locate('Bank;NoDeposito',VarArrayOf([dxDeposito.Fieldbyname('Bank').Value,dxDeposito.Fieldbyname('NoDeposito').Value]),[]) then
             QuDeposito.Edit
          else
          QuDeposito.Append;
          QuDepositoTipe.Value:= 'DP';
          QuDepositoBank.Value:= dxDeposito.Fieldbyname('Bank').AsString;
          QuDepositoNoDeposito.Value:= dxDeposito.Fieldbyname('NoDeposito').AsString;
          QuDepositoTanggal.Value:= dxDeposito.Fieldbyname('Tanggal').AsDateTime;
          QuDepositoTglJatuhTempo.Value:= dxDeposito.Fieldbyname('TglJatuhTempo').AsDateTime;
          QuDepositoBuktiBuka.Value := NOBUKTI.Text;
          QuDepositoUrutBuktiBuka.Value := mUrut;
          QuDepositoTglBuka.Value := TANGGAL.Date;
          QuDepositoKodeVls.Value := dxDeposito.Fieldbyname('kodeVls').Value;
          QuDepositokurs.Value := dxDeposito.Fieldbyname('Kurs').Value;
          QuDepositoDebetRp.Value := dxDeposito.Fieldbyname('JumlahRp').Value;
          QuDepositoKreditRp.Value := 0.00;
          if Valas.Text='IDR' then
          begin
            QuDepositoDebet.Value := 0.00;
            QuDepositoKredit.Value := 0.00;
          end
          else
          begin
            QuDepositoDebet.Value := dxDeposito.Fieldbyname('Jumlah').Value;
            QuDepositoKredit.Value := 0.00;
          end;
          QuDepositoKeterangan.Value:=dxDeposito.Fieldbyname('Keterangan').Value;
          QuDeposito.Post;
          dxDeposito.Next;
        end;
        QuDeposito.UpdateBatch(arAll);
        dxDeposito.Close;
      end
      else  if StatusAktivaL='DP-' then
      begin
        dxDeposito.First;
        while not dxDeposito.Eof do
        begin
          with DM.QuCari do
          begin
            Close;
            SQL.Clear;
            SQL.Add(' update dbDeposito set TglCair=:0, kredit=:1,kreditRp=:2, BuktiCair=:3, UrutBuktiCair=:4, KeteranganCair=:5 ');
            SQL.Add(' where NoDeposito=' + QuotedStr(dxDeposito.Fieldbyname('NoDeposito').AsString) + ' and Bank=' + QuotedStr(dxDeposito.FieldByName('Bank').AsString));
            sql.Add('And Tanggal='+QuotedStr(FormatDateTime('MM-DD-YYYY',dxDeposito.FieldByName('Tanggal').asDatetime)));
            Prepared := True;
            Parameters[0].Value := TANGGAL.Date;
            if dxDeposito.FieldByName('Kodevls').AsString='IDR' then
               Parameters[1].Value := 0.00
            else
               Parameters[1].Value := dxDeposito.Fieldbyname('Jumlah').Value;
            Parameters[2].Value := dxDeposito.Fieldbyname('JumlahRp').Value;
            Parameters[3].Value := NOBUKTI.Text;
            Parameters[4].Value := mUrut;
            Parameters[5].Value := dxDeposito.Fieldbyname('KeteranganCair').Value;
            ExecSQL;
          end;
          dxDeposito.Next;
        end;
        dxDeposito.Close;
      end;
    end;
end;

procedure TFrKasBank.Deposito(pNobukti,xStatus,xPerkiraan:String;pUrut :integer);
begin
  if xStatus<>'' then
  begin
    Application.CreateForm(TFrKasBankDeposito,FrKasBankDeposito);
    if xStatus='DP+' then
       FrKasBankDeposito.Caption := 'Buka Rekening Deposito'
    else
    if xStatus='DP-' then
       FrKasBankDeposito.Caption := 'Pencairan Deposito';
    FrKasBankDeposito.xPerkiraan := xPerkiraan;
    FrKasBankDeposito.xStatus := xStatus;
    FrKasBankDeposito.Showmodal;
  end;
end;

procedure TFrKasBank.TampilDeposito(pNobukti,xStatus,xPerkiraan:String;pUrut :integer);
var nRecNoGiro: Integer;
begin
  if not dxDeposito.Active then
  begin
    with FrKasBank.QuDeposito do
    begin
      close;
      sql.Clear;
      Sql.Add('Declare @Tipe varchar(2),@Nobukti varchar(30),@urut int, @Statusgiro varchar(5)');
      Sql.Add('Select @Nobukti=:0,@urut=:1,@StatusGiro=:2');
      SQL.Add('Select Bank,NoDeposito,Tanggal,TgljatuhTempo,Debet,Kredit,DebetRp,KreditRp,');
      sql.Add('Debet-Kredit Jumlah,');
      sql.Add('DebetRp-KreditRp JumlahRp,');
      Sql.add('Kodevls,Kurs,BuktiBuka,TglBuka,UrutBuktiBuka,BuktiCair,TglCair,UrutBuktiCair,Tipe,Keterangan,KeteranganCair,');
      Sql.add('b.NamaPerkiraan ');
      Sql.add('from dbDeposito a ');
      Sql.add('left outer join (Select x.perkiraan,x.keterangan namaperkiraan ');
      Sql.add('                from dbperkiraan x');
      Sql.add('                left outer join dbposthutpiut y on y.perkiraan=x.perkiraan');
      Sql.add('                where y.kode=''DP'') b on b.perkiraan=a.bank');
      sql.add('where Case when @StatusGiro=''DP+'' then BuktiBuka+Cast(urutbuktiBuka as varchar(4)) ');
      sql.add('           when @StatusGiro=''DP-'' then BuktiCair+Cast(urutBuktiCair as varchar(4)) ');
      sql.add('      end=@nobukti+Cast(@urut as varchar(4))');
      sql.Add('Order by  Bank,NoDeposito,Tanggal');
      Prepared;
      Parameters[0].Value:= pNobukti;
      Parameters[1].Value:= pUrut;
      Parameters[2].Value:= xStatus;
      Open;
    end;
    JumlahNilaiGiro := 0;
    with FrKasBank.dxDeposito do
    begin
      Close;
      CreateFieldsFromDataSet(FrKasBank.QuDeposito);
      LoadFromDataSet(FrKasBank.QuDeposito);
      Open;
      DisableControls;
      (FieldByName('Debet') as TNumericField).DisplayFormat :=',0.00';
      (FieldByName('kredit') as TNumericField).DisplayFormat :=',0.00';
      (FieldByName('Kurs') as TNumericField).DisplayFormat :=',0.00';
      (FieldByName('DebetRp') as TNumericField).DisplayFormat :=',0.00';
      (FieldByName('KreditRp') as TNumericField).DisplayFormat :=',0.00';
      (FieldByName('jumlah') as TNumericField).DisplayFormat :=',0.00';
      (FieldByName('jumlahRp') as TNumericField).DisplayFormat :=',0.00';
      EnableControls;
    end;
    nRecNoGiro := dxDeposito.RecNo;
    dxDeposito.First;
    dxDeposito.DisableControls;
    while not dxDeposito.Eof do
    begin
      JumlahNilaiGiro := JumlahNilaiGiro + dxDeposito.FieldByname('Jumlah').AsCurrency;
      dxDeposito.Next;
    end;
    dxDeposito.EnableControls;
    dxDeposito.RecNo := nRecNoGiro;
  end;
end;
procedure TFrKasBank.CloseQuerry;
begin
  QuAktiva.Close;
  QuHutPiut.Close;
  QuHutPiutP.Close;
  QuHutPiutL.Close;
  QuGiro.Close;
  dxAktiva.Close;
  dxGiro.Close;
  dxHutPiut.Close;
  dxDeposito.Close;
end;

procedure TFrKasBank.SimpanDataHutPiut;
begin
  if not QuHutPiutP.IsEmpty then
  begin
    {QuHutPiutP.Filtered := false;
    QuHutPiutP.Filter :='TipeTrans=''L'' and Nobukti='+QuotedStr(NOBUKTI.Text)+' and nomsk='+IntToStr(mUrut);
    QuHutPiutP.Filtered := True;}
    with dm.QuCari do
    begin
      close;
      sql.Clear;
      sql.Add('Delete dbhutpiut where nobukti=:0 and nomsk=:1 ');
      Prepared;
      Parameters[0].Value :=nobukti.text;
      Parameters[1].Value :=mUrut;
      ExecSQL;
    end;
    QuHutPiutP.First;
    while not QuHutPiutP.Eof do
    begin
      if DataBersyarat('Select * from dbhutpiut where nobukti=:0 and nomsk=:1 and Urut=:2 and Nofaktur=:3',
         [QuHutPiutP.FieldByname('Nobukti').AsString,QuHutPiutP.FieldByname('NoMSK').Asinteger,
          QuHutPiutP.FieldByname('urut').AsInteger,QuHutPiutP.FieldByname('NoFaktur').AsString],DM.Qucari) then
         DM.QuCari.Edit
      else
         DM.QuCari.Append;
      with DM.QuCari do
      begin
        Fieldbyname('NoFaktur').Value:=QuHutPiutP.FieldByname('NoFaktur').Value;
        Fieldbyname('NoRetur').Value:=QuHutPiutP.Fieldbyname('NoRetur').Value;
        Fieldbyname('TipeTrans').Value:=QuHutPiutP.Fieldbyname('TipeTrans').Value;
        Fieldbyname('kodeCustSupp').Value:=QuHutPiutP.Fieldbyname('kodeCustSupp').AsString;
        Fieldbyname('Nobukti').Value:=QuHutPiutP.Fieldbyname('Nobukti').Value;
        Fieldbyname('NoMSK').Value:=QuHutPiutP.Fieldbyname('NoMSK').Value;
        Fieldbyname('Urut').Value:=QuHutPiutP.FieldByname('Urut').Value;
        Fieldbyname('Tanggal').Value:=QuHutPiutP.Fieldbyname('Tanggal').Value;
        Fieldbyname('JatuhTempo').Value:=QuHutPiutP.Fieldbyname('JatuhTempo').Value;
        Fieldbyname('Debet').Value:=QuHutPiutP.Fieldbyname('Debet').Value;
        Fieldbyname('Kredit').Value:=QuHutPiutP.Fieldbyname('Kredit').Value;
        Fieldbyname('Valas').Value:=QuHutPiutP.Fieldbyname('Valas').Value;
        Fieldbyname('kurs').Value:=QuHutPiutP.Fieldbyname('Kurs').Value;
        Fieldbyname('DebetD').Value:=QuHutPiutP.Fieldbyname('DebetD').Value;
        Fieldbyname('KreditD').Value:=QuHutPiutP.Fieldbyname('KreditD').Value;
        Fieldbyname('KodeSales').Value:=QuHutPiutP.Fieldbyname('KodeSales').Value;
        Fieldbyname('Tipe').Value:=QuHutPiutP.Fieldbyname('Tipe').Value;
        Fieldbyname('Perkiraan').Value:=QuHutPiutP.Fieldbyname('Perkiraan').Value;
        Fieldbyname('Catatan').Value:=QuHutPiutP.Fieldbyname('Catatan').Value;
        Post;
      end;
      QuHutPiutP.Next;
    end;
    QuHutPiutP.Filtered := False;
  end;
end;

procedure TFrKasBank.TampilHutPiut(xkode,xStatus,xPerkiraan,DK:String;Var xKodeCustSupp: TEdit);
var xResult,IsLanjut : Boolean;
begin
  xResult := False;
  IsLanjut := True;
  if (xStatus='PT+') or (xStatus='PT-') or (xStatus='HT+') or (xStatus='HT-') or
     (xStatus='UPT+') or (xStatus='UPT-') or (xStatus='UHT+') or (xStatus='UHT-') then
  begin
    if IsLanjut then
    begin

              if Model='koreksi' then
              begin
                if ((DK='D') and (QuTransaksiPerkiraan.AsString=xPerkiraan)) or ((DK='K') and (QuTransaksiLawan.AsString=xPerkiraan)) then
                begin
                  if (DataBersyarat('Select a.* from dbCustSupp a left outer join dbperkcustsupp b on b.kodecustsupp=a.kodecustsupp '+
                                    'where a.KodeCustSupp=:0 and b.Perkiraan=:1 and a.isaktif=1 ',
                    [xKodecustSupp.text,xPerkiraan],dm.qucari)) then
                    xResult:=True;
                  HapusTempHutPiut(DK);
                end;
              end;
              if xResult=False then
              begin
                if (xStatus='PT+') or (xStatus='PT-') or (xStatus='HT+') or (xStatus='HT-') or
                   (xStatus='UPT+') or (xStatus='UPT-') or (xStatus='UHT+') or (xStatus='UHT-') then
                   KodeBrows := 1014;
                Application.CreateForm(TFrBrows,FrBrows);
                if DK='D' then
                FrBrows.IsiData :=KodeCustSuppP.Text
                else if DK='K' then
                FrBrows.IsiData :=KodeCustSuppL.Text;

                if (xStatus='PT+') or (xStatus='PT-') or (xStatus='HT+') or (xStatus='HT-') or
                   (xStatus='UPT+') or (xStatus='UPT-') or (xStatus='UHT+') or (xStatus='UHT-') then
                   FrBrows.NoKira := xPerkiraan;
                FrBrows.NoKira2 := xkode;
                FrBrows.ShowModal;
                if FrBrows.ModalResult=mrok then
                begin
                  if not FrBrows.QuBrows.IsEmpty then
                  begin
                    xKodeCustSupp.Text := FrBrows.QuBrows.FieldByname('KodeCustSupp').AsString;
                    xResult := True;
                  end
                  else
                  begin
                    xKodeCustSupp.Text :='';
                    //xResult := False;
                  end;
                end
                else
                begin
                  xKodeCustSupp.Text :='';
                  //xResult := False;
                end;
              end;

              if xResult then
              begin
                Application.CreateForm(TfrKasbankHutPiut, FrKasBankHutPiut);
                FrKasBankHutPiut.TambahBtn.Enabled := ((xStatus='PT-') or (xStatus='HT-') or (xStatus='UPT-') or (xStatus='UHT-'));
                FrKasBankHutPiut.SpeedButton2.Enabled := ((xStatus='PT+') or (xStatus='HT+') or (xStatus='UPT+') or (xStatus='UHT+'));
                //FrKasBankHutPiut.Caption :='';
                if xkode='HT' then
                begin
                  if xStatus='HT-' then
                     FrKasBankHutPiut.Caption := 'Pelunasan Hutang '+xPerkiraan
                  else
                  if xStatus='HT+' then
                     FrKasBankHutPiut.Caption := 'Penambahan Hutang '+xPerkiraan;
                end
                else if xkode='PT' then
                begin
                  if xStatus='PT-' then
                     FrKasBankHutPiut.Caption := 'Pelunasan Piutang '+xPerkiraan
                  else
                  if xStatus='PT+' then
                     FrKasBankHutPiut.Caption := 'Penambahan Piutang '+xPerkiraan;
                end
                else if xkode='UHT' then
                begin
                  if xStatus='UHT-' then
                     FrKasBankHutPiut.Caption := 'Pelunasan Uang Muka Hutang '+xPerkiraan
                  else
                  if xStatus='UHT+' then
                     FrKasBankHutPiut.Caption := 'Penambahan Uang Muka Hutang '+xPerkiraan;
                end
                else if xkode='UPT' then
                begin
                  if xStatus='UPT-' then
                     FrKasBankHutPiut.Caption := 'Pelunasan Uang Muka Piutang '+xPerkiraan
                  else
                  if xStatus='UPT+' then
                     FrKasBankHutPiut.Caption := 'Penambahan Uang Muka Piutang '+xPerkiraan;
                end;
                FrKasBankHutPiut.StatusHutPiut := xStatus;
                FrKasBankHutPiut.Kurs.Value := Kurs.Value;
                FrKasBankHutPiut.Valas.Text := Valas.Text;
                FrKasBankHutPiut.Total.Value := Jumlah.Value;
                FrKasBankHutPiut.StatusHutPiut := xStatus;
                FrKasBankHutPiut.PerkiraanhutPiut := xPerkiraan;
                FrKasBankHutPiut.Label1.Caption := xKodeCustSupp.Text;
                FrKasBankHutPiut.Tipe := xkode;
                FrKasBankHutPiut.DK := DK;
                if MyFindField('dbCustSupp','KodeCustSupp',xKodeCustSupp.Text)=true then
                    FrKasBankHutPiut.Label2.Caption:='[ '+dm.QuCari.fieldbyname('NamaCustSupp').AsString+' ]';
                FrKasBankHutPiut.Label3.Caption:=FrKasBank.NOBUKTI.Text;
                IsiTempHutPiut(DK,xkode,NOBUKTI.Text,IntToStr(mUrut),Valas.Text,xKodeCustSupp.Text,xPerkiraan);
                FrKasBankHutPiut.ShowModal;
              end;
    end;

  end;
end;

procedure TFrKasBank.TampilIsiPerkiraan(xkodebrows:Integer;xPerkiraan, xMode:String; Var xEdit : TEdit; Var xLabel:TLabel);
begin
  KodeBrows:=xkodebrows;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=xedit.Text;
  FrBrows.NoKira :=xPerkiraan;
  FrBrows.NoKira2:=xMode;
  frbrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    if not FrBrows.QuBrows.IsEmpty then
    begin
      xedit.Text:=FrBrows.QuBrows.fieldbyname('Perkiraan').AsString;
      xLabel.Caption:='[ '+FrBrows.QuBrows.fieldbyname('Keterangan').AsString+' ]';
    end
    else
      FrKasBank.ActiveControl := xedit;
  end
  else
    FrKasBank.ActiveControl := xedit;
end;

procedure TFrKasBank.TampilDataAktiva(mNoAktivaP,mNoAktivaL,mGroupaktivaP,mGroupAktivaL,mDevisi,mBagian:String);
begin
  if not dxAktiva.Active then
  begin
    with QuAktiva do
    begin
      close;
      sql.Clear;
      Sql.Add('Select *,'''' Status,1 Xsusut,0 PerlakuanAktiva  from dbAktiva ');
      SQL.Add('where Perkiraan in (:0,:1) and Devisi=:2 ');
      Prepared;
      Parameters[0].Value := mNoAktivaP;
      Parameters[1].Value := mNoAktivaL;
      Parameters[2].Value := mDevisi;
      Open;
    end;
    with FrKasBank.dxAktiva do
    begin
      Close;
      CreateFieldsFromDataSet(QuAktiva);
      LoadFromDataSet(FrKasBank.QuAktiva);
      Open;
      (FieldByName('Quantity') as TNumericField).DisplayFormat :=',0.00';
      (FieldByName('Persen') as TNumericField).DisplayFormat :=',0.00';
      (FieldByName('Persenbiaya1') as TNumericField).DisplayFormat :=',0.00';
      (FieldByName('PersenBiaya2') as TNumericField).DisplayFormat :=',0.00';
      (FieldByName('PersenBiaya2') as TNumericField).DisplayFormat :=',0.00';
      (FieldByName('Xsusut') as TNumericField).DisplayFormat :=',0.00';
    end;
  end;
end;

procedure TFrKasBank.SimpanDataAktiva(pChoice: String);
begin
  if ((pChoice = 'I') or (pChoice = 'U')) and ((dxAktiva.Active = True) ) then
  begin
    dxAktiva.First;
    while not dxAktiva.Eof do
    begin
      if QuAktiva.Locate('Devisi;Perkiraan',VarArrayOf([dxAktiva.Fieldbyname('Devisi').Value,dxAktiva.Fieldbyname('Perkiraan').Value]),[]) then
         QuAktiva.Edit
      else
         QuAktiva.Append;
      if dxAktiva.FieldByName('Perkiraan').AsString<>'' then
      begin
        QuAktivaDevisi.Value := dxAktiva.Fieldbyname('Devisi').Value;
        QuAktivaPerkiraan.Value := dxAktiva.Fieldbyname('Perkiraan').Value;
        QuAktivaKeterangan.Value := dxAktiva.Fieldbyname('Keterangan').Value;
        QuAktivaQuantity.Value := dxAktiva.Fieldbyname('Quantity').Value;
        QuAktivaPersen.Value := dxAktiva.Fieldbyname('Persen').Value;
        QuAktivaTanggal.Value := dxAktiva.Fieldbyname('Tanggal').Value;
        QuAktivaTipe.Value := dxAktiva.Fieldbyname('Tipe').Value;
        QuAktivaKodebag.Value := dxAktiva.Fieldbyname('kodebag').Value;
        QuAktivaAkumulasi.Value := dxAktiva.Fieldbyname('Akumulasi').Value;
        QuAktivaNoMuka.Value := dxAktiva.Fieldbyname('NoMuka').Value;
        QuAktivaNoBelakang.Value := dxAktiva.Fieldbyname('Nobelakang').Value;
        QuAktivaNoBelakang2.Value:=dxAktiva.FieldByname('NoBelakang2').Value;
        QuAktivaBiaya.Value := dxAktiva.Fieldbyname('Biaya').Value;
        QuAktivaPersenBiaya1.Value := dxAktiva.Fieldbyname('PersenBiaya1').Value;
        QuAktivaBiaya2.Value := dxAktiva.Fieldbyname('Biaya2').Value;
        QuAktivaPersenBiaya2.Value := dxAktiva.Fieldbyname('PersenBiaya2').Value;
        QuAktivaBiaya3.Value := dxAktiva.Fieldbyname('Biaya3').Value;
        QuAktivaPersenBiaya3.Value := dxAktiva.Fieldbyname('PersenBiaya3').Value;
        QuAktivaBiaya4.Value := dxAktiva.Fieldbyname('Biaya4').Value;
        QuAktivaPersenBiaya4.Value := dxAktiva.Fieldbyname('PersenBiaya4').Value;
        QuAktivaTipeAktiva.Value := dxAktiva.Fieldbyname('TipeAktiva').Value;
        if dxAktiva.FieldByName('Kelompok').AsInteger>0 then
           QuAktivaNoAktivaHd.Value :=  dxAktiva.Fieldbyname('nomuka').Value+'.'+ dxAktiva.Fieldbyname('NoBelakang').Value
        else
           QuAktivaNoAktivaHd.Value  :='';
        QuAktivaKelompok.Value := dxAktiva.Fieldbyname('Kelompok').Value;
        //QuAktiva.fieldbyname('xsusut').Value:=2;
        QuAktivaxsusut.Value:=dxAktiva.fieldbyname('xsusut').Value;
        xsusut:=dxAktiva.fieldbyname('xsusut').Value;
        QuAktivaPerlakuanAktiva.Value:=dxAktiva.FieldByName('PerlakuanAktiva').Value;
        PerlakuanAktiva:=dxAktiva.FieldByName('PerlakuanAktiva').Value;

        QuAktiva.Post;

      end;
      dxAktiva.Next;
    end;
    QuAktiva.UpdateBatch(arAll);
    dxAktiva.Close;
  end;
end;

procedure TFrKasBank.TampilAktiva(Var xNoAktiva,xStatus:string;xGroupaktiva:String);
begin
  DataBersyarat('Select A.*,B.Keterangan NamaGroupAktiva,'+
                '       C.Keterangan NamaAkumulasi, '+
                '       Case when A.Tipe=''L'' then ''[L]urus'' '+
                '            when A.Tipe=''M'' then ''[M]enurun'' '+
                '            when A.Tipe=''P'' then ''[P]ajak'' '+
                '            else '''' '+
                '       end Metode,d.Namabag,e.NamaDevisi '+
                'from dbaktiva a '+
                'left Outer join dbPerkiraan b on b.perkiraan=a.Nomuka '+
                'left Outer join dbperkiraan c on c.perkiraan=a.Akumulasi '+
                'Left Outer Join dbBagian d on d.kodebag=a.kodebag '+
                'left outer join dbDevisi e on e.devisi=a.devisi '+
                'where a.Perkiraan=:0 and a.Devisi=:1 and a.Nomuka=:2',[xNoAktiva,Devisi.text,xGroupAktiva],dm.quCari);
  if not dm.QuCari.IsEmpty then
  begin
    Application.CreateForm(TfrKasBankAktiva, FrKasBankAktiva);
    with frKasBankAktiva,DM.QuCari do
    begin
      IsSimpan := False;
      Perkiraan.Text := FieldByname('Perkiraan').AsString;
      Nourut.Text := Fieldbyname('NoBelakang').AsString;
      NoUrut2.Text := Fieldbyname('NoBelakang2').AsString;
      Keterangan.Lines.Text := FieldByname('Keterangan').AsString;
      TglPengakuan.Date := FieldByname('Tanggal').AsDateTime;
      Kuantum.Value :=FieldByname('Quantity').Value;
      Label26.Caption :='[ '+FieldByname('NamaGroupAktiva').AsString+' ]';
      KodeAktiva.Text := FieldByname('Perkiraan').AsString;
      Devisi.Text := FieldByname('devisi').AsString;
      Label32.Caption := '[ '+FieldByname('NamaDevisi').AsString+' ]';
      Bagian.Text := FieldByname('kodebag').AsString;
      Label30.Caption := '[ '+FieldByname('Namabag').AsString+' ]';
      TipeAktiva.ItemIndex :=FieldByname('TipeAktiva').AsInteger;
      AkSusut.Text := FieldByname('Akumulasi').AsString;
      Label2.Caption :='[ '+FieldByname('NamaAkumulasi').AsString+' ]';
      BiayaSusut.Text := FieldByname('Biaya').AsString;
      BiayaSusut2.Text := FieldByname('Biaya2').AsString;
      Susut.Value := FieldByname('persen').Value;
      PersenSusut1.Value := FieldByname('persenBiaya1').Value;
      PersenSusut2.Value := FieldByname('persenBiaya2').Value;
      LM.ItemIndex := LM.Items.IndexOf(FieldByname('Metode').AsString);
      isHeader.ItemIndex := FieldByname('Kelompok').Value;
      NoUrut2.Visible := (isHeader.ItemIndex<>0);
      if NoUrut2.CanFocus then
         ActiveControl := NoUrut2;
      StatusAktiva := xStatus;
      StsKasBank :='U';
      frKasBankAktiva.ShowModal;
      if frKasBankAktiva.ModalResult=mrok then
         xNoAktiva := frKasBankAktiva.KodeAktiva.Text;
    end;
  end
  else
  begin
    KodeBrows:=100407;
    Application.CreateForm(TFrBrows,FrBrows);
    FrBrows.TambahBtn.Visible := (xStatus='AKV+');
    FrBrows.IsiData := xNoAktiva;
    FrBrows.NoKira  := xGroupaktiva;
    FrBrows.ShowModal;
    xStatusBrows := FrBrows.ModalResult;
    if (frbrows.ModalResult=MrOk)  then
    begin
      with FrBrows.QuBrows do
      begin
        if not IsEmpty then
        begin
          Application.CreateForm(TfrKasBankAktiva, FrKasBankAktiva);
          with frKasBankAktiva do
          begin
            IsSimpan := True;
            Perkiraan.Text := FieldByname('Perkiraan').AsString;
            Nourut.Text := Fieldbyname('NoBelakang').AsString;
            NoUrut2.Text := Fieldbyname('NoBelakang2').AsString;
            Keterangan.Lines.Text := FieldByname('Keterangan').AsString;
            TglPengakuan.Date := FieldByname('Tanggal').AsDateTime;
            Kuantum.Value :=FieldByname('Quantity').Value;
            Label26.Caption :='[ '+FieldByname('NamaGroupAktiva').AsString+' ]';
            KodeAktiva.Text := FieldByname('Perkiraan').AsString;
            Devisi.Text := FieldByname('devisi').AsString;
            Label32.Caption := '[ '+FieldByname('NamaDevisi').AsString+' ]';
            Bagian.Text := FieldByname('kodebag').AsString;
            Label30.Caption := '[ '+FieldByname('Namabag').AsString+' ]';
            TipeAktiva.ItemIndex :=FieldByname('TipeAktiva').AsInteger;
            AkSusut.Text := FieldByname('Akumulasi').AsString;
            Label2.Caption :='[ '+FieldByname('NamaAkumulasi').AsString+' ]';
            BiayaSusut.Text := FieldByname('Biaya').AsString;
            BiayaSusut2.Text := FieldByname('Biaya2').AsString;
            Susut.Value := FieldByname('persen').Value;
            PersenSusut1.Value := FieldByname('persenBiaya1').Value;
            PersenSusut2.Value := FieldByname('persenBiaya2').Value;
            LM.ItemIndex := LM.Items.IndexOf(FieldByname('Metode').AsString);
            StatusAktiva := xStatus;
            isHeader.ItemIndex := FieldByname('Kelompok').Value;
            NoUrut2.Visible := (isHeader.ItemIndex<>0);
            if NoUrut2.CanFocus then
               ActiveControl := NoUrut2;
            xNoAktiva := KodeAktiva.Text;
            StsKasBank :='I';
            frKasBankAktiva.ShowModal;
            if frKasBankAktiva.ModalResult=mrok then
               xNoAktiva := frKasBankAktiva.KodeAktiva.Text;
          end;
        end
        else
        begin
          FrBrows.ModalResult := mrNo;
          DataBersyarat('select A.*,B.Keterangan NamaGroupAktiva,'+
                        '       C.Keterangan NamaAkumulasi, '+
                        '       Case when A.Tipe=''L'' then ''[L]urus'' '+
                        '            when A.Tipe=''M'' then ''[M]enurun'' '+
                        '            when A.Tipe=''P'' then ''[P]ajak'' '+
                        '            else '''' '+
                        '       end Metode '+
                        'from DBPOSTHUTPIUT A '+
                        '     left outer join DBPERKIRAAN B on B.Perkiraan=A.Perkiraan '+
                        '     left outer join DBPERKIRAAN C on C.Perkiraan=A.Akumulasi '+
                        'where a.Perkiraan=:0 and Kode=''AKV'' ',[xGroupAktiva],Dm.Qucari);
          Application.CreateForm(TfrKasBankAktiva, FrKasBankAktiva);
          with frKasBankAktiva,DM.QuCari do
          begin
            IsSimpan := False;
            Perkiraan.Text := FieldByname('Perkiraan').Value;
            Label26.Caption :='[ '+FieldByname('NamaGroupAktiva').Value+' ]';
            Devisi.Text := Frkasbank.Devisi.Text;
            Label32.Caption := FrKasBank.LDevisi.Caption;
            Bagian.Text := KodeBag.Text;
            Label2.Caption := LNamaBag.Caption;
            //TipeAktiva.ItemIndex := FieldByname('TipeAktiva').Value;
            AkSusut.Text := FieldByname('Akumulasi').Value;
            Label2.Caption :='[ '+FieldByname('NamaAkumulasi').Value+' ]';
            BiayaSusut.Text := FieldByname('Biaya1').Value;
            BiayaSusut2.Text := FieldByname('Biaya2').Value;
            Susut.Value := FieldByname('persen').Value;
            PersenSusut1.Value := FieldByname('persenBiaya1').Value;
            PersenSusut2.Value := FieldByname('persenBiaya2').Value;
            LM.ItemIndex := LM.Items.IndexOf(FieldByname('Metode').Value);
            StatusAktiva := xStatus;
            StsKasBank :='I';
            frKasBankAktiva.ShowModal;
            if frKasBankAktiva.ModalResult=mrok then
               xNoAktiva := frKasBankAktiva.KodeAktiva.Text;
          end;
        end;
      end;
    end
    else if (frbrows.ModalResult=Mrno) and (xAktiva='OK')  then
    begin
      DataBersyarat('select A.*,B.Keterangan NamaGroupAktiva,'+
                    '       C.Keterangan NamaAkumulasi, '+
                    '       Case when A.Tipe=''L'' then ''[L]urus'' '+
                    '            when A.Tipe=''M'' then ''[M]enurun'' '+
                    '            when A.Tipe=''P'' then ''[P]ajak'' '+
                    '            else '''' '+
                    '       end Metode '+
                    'from DBPOSTHUTPIUT A '+
                    '     left outer join DBPERKIRAAN B on B.Perkiraan=A.Perkiraan '+
                    '     left outer join DBPERKIRAAN C on C.Perkiraan=A.Akumulasi '+
                    'where a.Perkiraan=:0 and Kode=''AKV'' ',[xGroupAktiva],Dm.Qucari);
      Application.CreateForm(TfrKasBankAktiva, FrKasBankAktiva);
      with frKasBankAktiva,DM.QuCari do
      begin
        IsSimpan := False;
        Perkiraan.Text := FieldByname('Perkiraan').Value;
        TglPengakuan.Date := TANGGAL.Date;
        Label26.Caption :='[ '+FieldByname('NamaGroupAktiva').Value+' ]';
        KodeAktiva.Text := FieldByname('Perkiraan').Value;
        frKasBankAktiva.Devisi.Text := FrKasBank.Devisi.Text;
        Label32.Caption := LDevisi.Caption;
        Bagian.Text := KodeBag.Text;
        Label30.Caption := LNamaBag.Caption;
        AkSusut.Text := FieldByname('Akumulasi').Value;
        Label2.Caption :='[ '+FieldByname('NamaAkumulasi').Value+' ]';
        BiayaSusut.Text := FieldByname('Biaya1').Value;
        BiayaSusut2.Text := FieldByname('Biaya2').Value;
        Susut.Value := FieldByname('persen').Value;
        PersenSusut1.Value := FieldByname('persenBiaya1').Value;
        PersenSusut2.Value := FieldByname('persenBiaya2').Value;
        LM.ItemIndex := LM.Items.IndexOf(FieldByname('Metode').Value);
        StatusAktiva := xStatus;
        StsKasBank :='I';
        frKasBankAktiva.ShowModal;
        if frKasBankAktiva.ModalResult=mrok then
           xNoAktiva := frKasBankAktiva.KodeAktiva.Text;
      end;
    end;
  end;
end;

procedure TFrKasBank.Aktiva(xStatus,mPerkiraan:String; Var xNoAktiva:String);
begin
  if (xStatus='AKV+') or (xStatus='AKM+') or (xStatus='AKV-') or (xStatus='AKM-')then
     TampilAktiva(xNoAktiva,xStatus,mPerkiraan);
end;

function TFrKasBank.TransaksiSudahCair(mHP, mNoBukti: String; mUrut: Integer): Boolean;
begin
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select * from dbGiro where BuktiBuka=:0 and UrutBuktiBuka=:1 and tglcair is not null and Tipe=:2 ');
    Parameters[0].Value:=mNoBukti;
    Parameters[1].Value:=mUrut;
    Parameters[2].Value:=mHP+'T';
    Open;
  end;
  if DM.QuCari.RecordCount>0 then
     Result := True
  else
     Result := False;
end;

procedure TFrKasBank.SimpanDataGiro(pChoice: String);
begin
  if ((pChoice = 'I') or (pChoice = 'U')) and ((dxGiro.Active = True) and (not dxGiro.IsEmpty)) then
    begin
      //if (Copy(THPC.Text,2,1) = 'H') and (Mode.Text = 'BKK')then
      if StatusGiro='H+' then
      begin
        dxGiro.First;
        while not dxGiro.Eof do
        begin
          if QuGiro.Locate('Bank;Nogiro',VarArrayOf([dxGiro.Fieldbyname('Bank').Value,dxGiro.Fieldbyname('Nogiro').Value]),[]) then
             QuGiro.Edit
          else
          QuGiro.Append;
          QuGiroTipe.Value:= 'HT';
          QuGiroBank.Value:= dxGiro.Fieldbyname('Bank').AsString;
          QuGiroNogiro.Value:= dxGiro.Fieldbyname('Nogiro').AsString;
          QuGiroTglGiro.Value:= dxGiro.Fieldbyname('Tglgiro').AsDateTime;
          QuGiroBuktiBuka.Value := NOBUKTI.Text;
          QuGiroUrutBuktiBuka.Value := mUrut;
          QuGiroTglBuka.Value := TANGGAL.Date;
          QuGiroKodeVls.Value := dxGiro.Fieldbyname('kodeVls').Value;
          QuGirokurs.Value := dxGiro.Fieldbyname('Kurs').Value;
          QuGiroDebetRp.Value := 0.00;
          QuGiroKreditRp.Value := dxGiro.Fieldbyname('JumlahRp').Value;
          QuGiroKas.Value:=mperkiraan.Text;//dxGiro.Fieldbyname('Kas').Value;
          if Valas.Text='IDR' then
          begin
            QuGiroDebet.Value := 0.00;
            QuGiroKredit.Value := 0.00;
          end
          else
          begin
            QuGiroDebet.Value := 0.00;
            QuGiroKredit.Value := dxGiro.Fieldbyname('Jumlah').Value;
          end;
          QuGiroKeterangan.Value:=dxGiro.Fieldbyname('Keterangan').AsString;
          quGiro.Post;
          dxGiro.Next;
        end;
        quGiro.UpdateBatch(arAll);
        dxGiro.Close;
      end
      else if StatusGiro='H-' then
      begin
        dxGiro.First;
        while not dxGiro.Eof do
        begin
          with DM.QuCari do
          begin
            Close;
            SQL.Clear;
            SQL.Add(' update dbGiro set TglCair=:0, Debet=:1, DebetRp=:2, BuktiCair=:3, UrutBuktiCair=:4, KeteranganCair=:5 ');
            SQL.Add(' where NoGiro=' + QuotedStr(dxGiro.Fieldbyname('NoGiro').AsString) + ' and Bank=' + QuotedStr(dxGiro.FieldByName('Bank').AsString));
            sql.Add(' And TglGiro='+QuotedStr(FormatDateTime('MM-DD-YYYY',dxGiro.FieldByName('TglGiro').asDatetime))+' and Tipe=''HT'' ');
            Prepared := True;
            Parameters[0].Value := TANGGAL.Date;
            if dxGiro.FieldByName('Kodevls').AsString='IDR' then
               Parameters[1].Value := 0.00
            else
               Parameters[1].Value := dxGiro.Fieldbyname('Jumlah').Value;
            Parameters[2].Value := dxGiro.Fieldbyname('JumlahRp').Value;
            Parameters[3].Value := NOBUKTI.Text;
            Parameters[4].Value := mUrut;
            Parameters[5].Value := dxGiro.Fieldbyname('KeteranganCair').Value;
            ExecSQL;
          end;
          dxGiro.Next;
        end;
        dxGiro.Close;
      end
      {else  if (Copy(THPC.Text,2,1) = 'H') and (Mode.Text = 'BBK') then
      begin
        dxGiro.First;
        while not dxGiro.Eof do
        begin
          with DM.QuCari do
          begin
            Close;
            SQL.Clear;
            SQL.Add(' update dbGiro set TglCair=:0, Debet=:1,DebetRp=:2, BuktiCair=:3, UrutBuktiCair=:4, KeteranganCair=:5 ');
            SQL.Add(' where NoGiro=' + QuotedStr(dxGiro.Fieldbyname('NoGiro').AsString) + ' and Bank=' + QuotedStr(dxGiro.FieldByName('Bank').AsString));
            sql.Add('And TglGiro='+QuotedStr(FormatDateTime('MM-DD-YYYY',dxGiro.FieldByName('TglGiro').asDatetime))+' and Tipe=''HT'' ');
            Prepared := True;
            Parameters[0].Value := TANGGAL.Date;
            if dxGiro.FieldByName('Kodevls').AsString='IDR' then
               Parameters[1].Value := 0.00
            else
               Parameters[1].Value := dxGiro.Fieldbyname('Jumlah').Value;
            Parameters[2].Value := dxGiro.Fieldbyname('JumlahRp').Value;
            Parameters[3].Value := NOBUKTI.Text;
            Parameters[4].Value := mUrut;
            Parameters[5].Value := dxGiro.Fieldbyname('KeteranganCair').Value;
            ExecSQL;
          end;
          dxGiro.Next;
        end;
        dxGiro.Close;
      end}
      //else if (Copy(THPC.Text,2,1) = 'P') and (Mode.Text = 'BKM')  then
      else if StatusGiro='P+'  then
      begin
        dxGiro.First;
        while not dxGiro.Eof do
        begin
          if QuGiro.Locate('Bank;Nogiro',VarArrayOf([dxGiro.Fieldbyname('Bank').Value,dxGiro.Fieldbyname('Nogiro').Value]),[]) then
             QuGiro.Edit
          else
             QuGiro.Append;
          QuGiroTipe.Value:= 'PT';
          QuGiroBank.Value:= dxGiro.Fieldbyname('Bank').AsString;
          QuGiroNogiro.Value:= dxGiro.Fieldbyname('Nogiro').AsString;
          QuGiroTglGiro.Value:= dxGiro.Fieldbyname('Tglgiro').AsDateTime;
          QuGiroBuktiBuka.Value := NOBUKTI.Text;
          QuGiroUrutBuktiBuka.Value := mUrut;
          QuGiroTglBuka.Value := TANGGAL.Date;
          QuGiroKodeVls.Value := dxGiro.Fieldbyname('kodeVls').Value;
          QuGirokurs.Value := dxGiro.Fieldbyname('Kurs').Value;
          QuGiroDebetRp.Value := dxGiro.Fieldbyname('JumlahRp').Value;
          QuGiroKreditRp.Value := 0.00;
          if Valas.Text='IDR' then
          begin
            QuGiroDebet.Value := 0.00;
            QuGiroKredit.Value := 0.00;
          end
          else
          begin
            QuGiroDebet.Value := dxGiro.Fieldbyname('Jumlah').Value;
            QuGiroKredit.Value := 0.00;
          end;
          QuGiroKeterangan.Value:=dxGiro.Fieldbyname('Keterangan').Value;
          QuGiroKas.Value:=mperkiraan.Text;//dxGiro.Fieldbyname('Kas').Value;
          quGiro.Post;
          dxGiro.Next;
        end;
        quGiro.UpdateBatch(arAll);
        dxGiro.Close;
      end
      //else if (Copy(THPC.Text,2,1) = 'P') and ((Mode.Text = 'BKK') or (Mode.Text = 'BBM'))then
      else if StatusGiro='P-' then
      begin
        dxGiro.First;
        while not dxGiro.Eof do
        begin
          with DM.QuCari do
          begin
            Close;
            SQL.Clear;
            SQL.Add(' update dbGiro set TglCair=:0, kredit=:1,KreditRp=:2, BuktiCair=:3, UrutBuktiCair=:4, KeteranganCair=:5 ');
            SQL.Add(' where NoGiro=' + QuotedStr(dxGiro.Fieldbyname('NoGiro').AsString) + ' and Bank=' + QuotedStr(dxGiro.FieldByName('Bank').AsString));
            sql.Add('And TglGiro='+QuotedStr(FormatDateTime('MM-DD-YYYY',dxGiro.FieldByName('TglGiro').asDatetime))+' and Tipe=''PT'' ');
            Prepared := True;
            Parameters[0].Value := TANGGAL.Date;
            if dxGiro.FieldByName('Kodevls').AsString='IDR' then
               Parameters[1].Value := 0.00
            else
               Parameters[1].Value := dxGiro.Fieldbyname('Jumlah').Value;
            Parameters[2].Value := dxGiro.Fieldbyname('JumlahRp').Value;
            Parameters[3].Value := NOBUKTI.Text;
            Parameters[4].Value := mUrut;
            Parameters[5].Value := dxGiro.Fieldbyname('KeteranganCair').Value;
            ExecSQL;
          end;
          dxGiro.Next;
        end;
        dxGiro.Close;
      end;
    end;
end;

procedure TFrKasBank.TampilDataGiro(pTHPC, pNoBukti,pStatusGiro: String; pUrut: Integer);
var nRecNoGiro: Integer;
begin
  if not dxGiro.Active then
  begin
    with FrKasBank.QuGiro do
    begin
      close;
      sql.Clear;
      Sql.Add('Declare @Tipe varchar(2),@Nobukti varchar(30),@urut int, @Statusgiro varchar(2)');
      Sql.Add('Select @Tipe=:0,@Nobukti=:1,@urut=:2,@StatusGiro=:3');
      SQL.Add('Select Bank,Nogiro,TglGiro,Debet,Kredit,DebetRp,KreditRp,');
      sql.Add('Case when Tipe=''HT'' then Kredit-Debet');
      sql.Add('     when Tipe=''PT'' then Debet-Kredit');
      SQl.Add('     else 0 end Jumlah,');
      sql.Add('Case when Tipe=''HT'' then KreditRp-DebetRp');
      sql.Add('     when Tipe=''PT'' then DebetRp-KreditRp');
      SQl.Add('     else 0 end JumlahRp,');
      Sql.add('Kodevls,Kurs,BuktiBuka,TglBuka,UrutBuktiBuka,BuktiCair,TglCair,UrutBuktiCair,Tipe,Keterangan,KeteranganCair,Kas');
      sql.Add('from dbGiro');
      sql.add('where Tipe=@Tipe and ');
      sql.add('Case when @StatusGiro=''P+'' then BuktiBuka+Cast(urutbuktiBuka as varchar(4)) ');
      sql.add('     when @StatusGiro=''P-'' then BuktiCair+Cast(urutBuktiCair as varchar(4)) ');
      sql.add('     when @StatusGiro=''H+'' then BuktiBuka+Cast(urutBuktiBuka as varchar(4)) ');
      sql.add('     when @StatusGiro=''H-'' then BuktiCair+Cast(urutbukticair as varchar(4)) ');
      sql.add('end=@nobukti+Cast(@urut as varchar(4))');
      sql.Add('Order by  Bank,Nogiro,TglGiro');
      Prepared;
      Parameters[0].Value:= pTHPC;
      Parameters[1].Value:= pNoBukti;
      Parameters[2].Value:= pUrut;
      Parameters[3].Value:= pStatusGiro;
      Open;
    end;
    JumlahNilaiGiro := 0;
    with FrKasBank.dxGiro do
    begin
      Close;
      CreateFieldsFromDataSet(FrKasBank.QuGiro);
      LoadFromDataSet(FrKasBank.QuGiro);
      Open;
      DisableControls;
      (FieldByName('Debet') as TNumericField).DisplayFormat :=',0.00';
      (FieldByName('kredit') as TNumericField).DisplayFormat :=',0.00';
      (FieldByName('Kurs') as TNumericField).DisplayFormat :=',0.00';
      (FieldByName('DebetRp') as TNumericField).DisplayFormat :=',0.00';
      (FieldByName('KreditRp') as TNumericField).DisplayFormat :=',0.00';
      (FieldByName('jumlah') as TNumericField).DisplayFormat :=',0.00';
      (FieldByName('jumlahRp') as TNumericField).DisplayFormat :=',0.00';
      EnableControls;
    end;
    nRecNoGiro := dxGiro.RecNo;
    dxGiro.First;
    dxGiro.DisableControls;
    while not dxGiro.Eof do
    begin
      JumlahNilaiGiro := JumlahNilaiGiro + dxGiro.FieldByname('Jumlah').AsCurrency;
      dxGiro.Next;
    end;
    dxGiro.EnableControls;
    dxGiro.RecNo := nRecNoGiro;
  end;
end;

procedure TFrKasBank.IsiNoBuktiBaru;
begin
  DecodeDate(Date,YY,MM,DD);
  If DayOfTheMonth(Date)<=DD then
     DD:=DayOfTheMonth(date);
  Try
    TANGGAL.Date := EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),DD);
  Except
    TANGGAL.Date := EndOfAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln))
  end;
  Check_NomorKasBank(StrToInt(PeriodBln),StrToInt(PeriodThn),Mode.Text,Nomor,NomorBukti,Tanggal.Date,Simbol.Text,False);
  NoUrut.Text:=NomorBukti;
  NOBUKTI.Text:=Nomor;
end;

procedure TFrKasBank.UpdateTransaksi;
begin
   with QuUpdatedbbeli do
   begin
      close;
      SQL.Clear;
      SQL.Add('Update dbtrans set Note=:0, Tanggal=:1 ');
      SQL.Add('where nobukti='+QuotedStr(NOBUKTI.Text));
      Prepared;
      Parameters[0].Value:=Terima.Text;
      Parameters[1].Value:=TANGGAL.Date;
      ExecSQL;
      close;
      SQL.Clear;
      SQL.Add('Update dbtransaksi set Note=:0, Tanggal=:1');
      SQL.Add('where nobukti='+QuotedStr(NOBUKTI.Text));
      Prepared;
      Parameters[0].Value:=Terima.Text;
      Parameters[1].Value:=TANGGAL.Date;
      ExecSQL;
      close;
      sql.Clear;
      sql.add('update dbtransaksi ');
      if (Mode.Text='BKK') or (Mode.Text='BBK') then
         sql.add('Set Lawan=:0 ')
      else if (Mode.Text='BKM') or (Mode.Text='BBM') then
         Sql.add('Set Perkiraan=:0');
      SQL.Add('where nobukti='+QuotedStr(NOBUKTI.Text));
      Prepared;
      Parameters[0].Value:=mPerkiraan.Text;
      ExecSQL;
   end;
end;

Function TFrKasBank.KursValas(Tgl1,tgl2:Tdatetime;Valas:String):Real;
begin
    Result :=0;
    with DM.Qucari do
    begin
       Close;
       SQL.Clear;
       SQL.Add('Select isnull(max(kurs),1) as kurs from dbvalasdet where kodevls=:0 and awal<=:1 and akhir>=:2');
       Parameters[0].Value:=Valas;
       Parameters[1].Value:=Tgl1;
       Parameters[2].Value:=tgl2;
       Open;
    end;
    if not DM.Qucari.IsEmpty then
    Result:=DM.Qucari.fieldbyname('kurs').Value;
end;


procedure TFrKasBank.AmbilDataAktiva(NoPerkiraan,Devisi:String);
begin
   with DM.QuCari do
   begin
      close;
      SQL.Clear;
      SQL.Add('Select * from dbAktiva where devisi=:0 and Perkiraan=:1');
      Parameters[0].Value:=Devisi;
      Parameters[1].Value:=NoPerkiraan;
      Open;
   end;
   with FrKasBankAktiva do
   begin
      FrKasBankAktiva.Perkiraan.Text:=DM.QuCari.fieldbyname('Perkiraan').AsString;
      FrKasBankAktiva.Keterangan.Text:=DM.QuCari.fieldbyname('Keterangan').AsString;
      FrKasBankAktiva.Kuantum.Value:=DM.QuCari.fieldbyname('Quantity').AsFloat;
      FrKasBankAktiva.Susut.Value:=DM.QuCari.fieldbyname('Persen').AsFloat;
      FrKasBankAktiva.TglPengakuan.Date:=DM.QuCari.fieldbyname('Tanggal').AsDateTime;
      FrKasBankAktiva.TipeAktiva.ItemIndex:=DM.QuCari.fieldbyname('TipeAktiva').Value;
      FrKasBankAktiva.AkSusut.Text:=DM.QuCari.fieldbyname('Akumulasi').AsString;
      FrKasBankAktiva.BiayaSusut.Text:=DM.QuCari.fieldbyname('biaya').AsString;
      FrKasBankAktiva.BiayaSusut2.Text:=DM.QuCari.fieldbyname('biaya2').AsString;
      FrKasBankAktiva.PersenSusut1.Value:=DM.QuCari.fieldbyname('Persenbiaya1').AsFloat;
      FrKasBankAktiva.PersenSusut2.Value:=DM.QuCari.fieldbyname('Persenbiaya2').AsFloat;
      FrKasBankAktiva.Perkiraan.Enabled:=false;
      FrKasBankAktiva.Keterangan.Enabled:=false;
      FrKasBankAktiva.Kuantum.Enabled:=false;
      FrKasBankAktiva.Susut.Enabled:=false;
      FrKasBankAktiva.TglPengakuan.Enabled:=false;
      FrKasBankAktiva.TipeAktiva.Enabled:=false;
      FrKasBankAktiva.AkSusut.Enabled:=false;
      FrKasBankAktiva.BiayaSusut.Enabled:=false;
      FrKasBankAktiva.ActiveControl:=BitBtn1;
   end;

end;

procedure TFrKasBank.SimpanData(Choice: String);
begin
  BM := QuTransaksi.GetBookmark;
  with Sp_Transaksi do
  begin
     Parameters[1].Value := Choice;
     if (Choice='I') or (Choice='U') then
     begin
        Parameters[2].Value := NOBUKTI.Text;
        Parameters[3].Value := NoUrut.Text;
        Parameters[4].Value := TANGGAL.date;
        Parameters[5].Value := Terima.Text;
        Parameters[6].Value := 0;
        Parameters[7].Value := Devisi.Text;
        Parameters[8].Value := Perkiraan.Text;
        Parameters[9].Value := Lawan.Text;
        Parameters[10].Value:= KETERANGAN.Text;
        Parameters[11].Value:= '';
        Parameters[12].Value:= Jumlah.Value;
        Parameters[13].Value:= 0;
        Parameters[16].Value:= Jumlah.Value*Kurs.Value;
        Parameters[17].Value:= 0;
        Parameters[14].Value:= Valas.Text;
        Parameters[15].Value:= Kurs.Value;
        Parameters[18].Value:= Mode.Text;
        Parameters[19].Value:= Copy(THPC.Text,2,1);
        Parameters[20].Value:= kodeCustSuppP.Text;
        Parameters[21].Value:= kodeCustSuppL.Text;
        Parameters[22].Value:= mUrut;
        Parameters[23].Value:= NoAktivaP;
        Parameters[24].Value:= NoAktivaL;
        Parameters[25].Value:= StatusAktivaP;
        Parameters[26].Value:= StatusAktivaL;
        Parameters[27].Value:= NoBon.Text;
        Parameters[28].Value:= KodeBag.Text;
        Parameters[29].Value:= KodeP;
        Parameters[30].Value:= KodeL;
        Parameters[31].Value:= StatusGiro;
        Parameters[32].Value:= Simbol.Text;
        Parameters[33].Value:= mPerkiraan.Text;
        Parameters[34].Value:= XSusut;
        Parameters[35].Value:= PerlakuanAktiva;
     end
     Else
     begin
       Parameters[2].Value := QuTransaksiNoBukti.AsString;
       Parameters[22].Value:= QuTransaksiUrut.AsInteger;
     end;
     try
       SimpanDataAktiva(Choice);
       ExecProc;
       SimpanDataGiro(Choice);
       //SimpanDataHutPiut;
       //SimpanDataDeposito(Choice);
       if Choice='I' then
       begin
         mUrut:=mUrut+1;
         LoggingData(IDUser,Choice,Mode.Text,NOBUKTI.Text,
                    ' No. Bukti = '+QuotedStr(Nobukti.Text)+
                    ' Tanggal = '+QuotedStr(Tanggal.Text)+
                    ' Note = '+QuotedStr(Terima.Text)+
                    ' Debet = '+QuotedStr(Perkiraan.Text)+
                    ' Kredit = '+QuotedStr(Lawan.Text)+
                    ' Sumber = '+QuotedStr(THPC.Text)+
                    ' Jumlah = '+QuotedStr(Jumlah.Text)+
                    ' JumlahRp = '+QuotedStr(FormatFloat(',0.00',Jumlah.Value*Kurs.Value)));
         TampilData(NOBUKTI.Text);
         QuTransaksi.Locate('NoBukti;urut',VarArrayOf([Nobukti.Text,mUrut]),[]);
       end else if Choice='U' then
       begin
         QuTransaksi.Requery;
         if QuTransaksi.BookmarkValid(BM) then
         begin
           try
             QuTransaksi.GotoBookmark(BM);
          finally
             QuTransaksi.FreeBookmark(BM);
          end
        end else
        begin
          QuTransaksi.FreeBookmark(BM);
          QuTransaksi.Last;
        end;
        LoggingData(IDUser,Choice,Mode.Text,NOBUKTI.Text,
                    ' No. Bukti = '+QuotedStr(Nobukti.Text)+
                    ' Tanggal = '+QuotedStr(Tanggal.Text)+
                    ' Note = '+QuotedStr(Terima.Text)+
                    ' Debet = '+QuotedStr(Perkiraan.Text)+
                    ' Kredit = '+QuotedStr(Lawan.Text)+
                    ' Sumber = '+QuotedStr(THPC.Text)+
                    ' Jumlah = '+QuotedStr(Jumlah.Text)+
                    ' JumlahRp = '+QuotedStr(FormatFloat(',0.00',Jumlah.Value*Kurs.Value)));
      end
      else if Choice='D' then
      begin
        LoggingData(IDUser,Choice,Mode.Text,NOBUKTI.Text,
                    ' No. Bukti = '+QuotedStr(QuTransaksiNoBukti.Value)+
                    ' Tanggal = '+QuotedStr(QuTransaksiTanggal.AsString)+
                    ' Note = '+QuotedStr(QuTransaksiNoBukti.Value)+
                    ' Debet = '+QuotedStr(QuTransaksiPerkiraan.Value)+
                    ' Kredit = '+QuotedStr(QuTransaksiLawan.Value)+
                    ' Sumber = '+QuotedStr(QuTransaksiMyTPHC.Value)+
                    ' Jumlah = '+QuotedStr(QuTransaksiDebet.Text)+
                    ' JumlahRp = '+QuotedStr(FormatFloat(',0.00',QuTransaksiDebetRp.Value)));
        QuTransaksi.Requery;
      end;
      except
      on E: Exception do
           begin
               Application.MessageBox(StrPCopy(S,E.Message),'Peringatan',MB_OK or MB_ICONSTOP);
           end;
     end;
  end;
end;

function TFrKasBank.CekLawanDiPosting(mLawan,DK : String;var Kode:String):Boolean;
begin
   Result := False;
   if DK='D' then
     StatusAktivaP:=''
   else if DK='K' then
     StatusAktivaL:='';
   Kode:='';
   with DM.QuCari do
   begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from dbPostHutPiut where perkiraan=:0 ');
      Parameters[0].Value:=mLawan;
      Open;
      IsGL:=Dm.QuCari.FieldByName('IsLokalORexim').AsBoolean;
   end;
   if not DM.QuCari.IsEmpty then
   begin
     Kode := DM.QuCari.FieldByname('kode').AsString;
     if (DM.QuCari.FieldByName('Kode').AsString='DP') and (DK='D')then
     begin
       StatusAktivaP := 'DP+';
     end
     else if (DM.QuCari.FieldByName('Kode').AsString='DP') and (DK='K')then
     begin
       StatusAktivaL := 'DP-';
     end
     else
     if (DM.QuCari.FieldByName('Kode').AsString='AKV') and (DK='D')then
     begin
       StatusAktivaP := 'AKV+';
     end
     else if (DM.QuCari.FieldByName('Kode').AsString='AKV') and (DK='K')then
     begin
       StatusAktivaL := 'AKV-';
     end
     else
     if (DM.QuCari.FieldByName('Kode').AsString='AKM') and (DK='D')then
     begin
       StatusAktivaP := 'AKM+';
     end
     else if (DM.QuCari.FieldByName('Kode').AsString='AKM') and (DK='K')then
     begin
       StatusAktivaL := 'AKM-';
     end
     else
     if (DM.QuCari.FieldByName('Kode').AsString='PT') and (DK='D')then
     begin
       StatusAktivaP := 'PT+';
     end
     else if (DM.QuCari.FieldByName('Kode').AsString='PT') and (DK='K')then
     begin
       StatusAktivaL := 'PT-';
     end
     else
     if (DM.QuCari.FieldByName('Kode').AsString='HT') and (DK='D')then
     begin
       StatusAktivaP := 'HT-';
     end
     else if (DM.QuCari.FieldByName('Kode').AsString='HT') and (DK='K')then
     begin
       StatusAktivaL := 'HT+';
     end

     else
     if (DM.QuCari.FieldByName('Kode').AsString='UPT') and (DK='D')then
     begin
       StatusAktivaP := 'UPT-';
     end
     else if (DM.QuCari.FieldByName('Kode').AsString='UPT') and (DK='K')then
     begin
       StatusAktivaL := 'UPT+';
     end
     else
     if (DM.QuCari.FieldByName('Kode').AsString='UHT') and (DK='D')then
     begin
       StatusAktivaP := 'UHT+';
     end
     else if (DM.QuCari.FieldByName('Kode').AsString='UHT') and (DK='K')then
     begin
       StatusAktivaL := 'UHT-';
     end;
     Result := True;
   end
end;

procedure TFrKasBank.RefreshAll;
var I : integer;
begin
   for i:= 0 to Panel3.ControlCount-1 do
   begin
      if (Panel3.Controls[i] is TEdit) then
         (Panel3.Controls[i] as TEdit).Clear;
      if (Panel3.Controls[i] is TPBNumEdit) then
         (Panel3.Controls[i] as TPBNumEdit).Value:=0;
   end;
   Terima.Text:='';
   NamaPerkiraan.Caption:='[ . . . ]';
   NOBUKTI.Text:='';
   NoUrut.Text:='';
   Simbol.Text:='';
   NamaLawan.Caption:='[ . . . ]';
   THPC.ItemIndex:=0;
end;

procedure TFrKasBank.ClearDetailPanel;
begin
  Devisi.Text:='01';
  LDevisi.Caption := '[ . . . ]';
  KodeBag.Text:='';
  LNamaBag.Caption:= '[ . . . ]';
  KodeCustSuppP.Text:='';
  KodeCustSuppL.Text:='';
  NoBon.Text:='';
  Valas.Text:='IDR';
  Kurs.Value:=1;
  Kurs.Enabled:=True;
  Jumlah.Value:=0;
  THPC.ItemIndex:=0;
  JumlahGiro.Value:=0;
  Keterangan.Text:=Terima.Text;
  StatusSimpan:=False;
  Lawan.Enabled:=True;
  if (Mode.Text='BKM') or (Mode.Text='BBM') then
  begin
    Lawan.Text:='';
    NamaLawan.Caption:='[ . . . ]';
  end else
  begin
    Perkiraan.Text:='';
    NamaPerkiraan.Caption:='[ . . . ]';
  end;
  isOpenP:='';
  isOpenL:='';
  KodeP:='';
  xKodeP:=KodeP;
  KodeL:='';
  xKodeL:=KodeL;
  NoAktivaP:='';
  xNoAktivaP:=NoAktivaP;
  NoAktivaL:='';
  xNoAktivaL:=NoAktivaL;
  StatusAktivaP:='';
  xStatusAktivaP:=StatusAktivaP;
  StatusAktivaL:='';
  xStatusAktivaL:=StatusAktivaL;
  THPC.Enabled:=True;
end;


procedure TFrKasBank.FormClose(Sender: TObject; var Action: TCloseAction);
var iJmlMode: Integer;
begin
  if FrMainKasBank.Acetak then  Action:=cafree
  else
  if mExit=true then
  begin
    FrMainKasBank.mPosisi:=mBukti;
    FrMainKasBank.xStatus := 'M';
    try
      for iJmlMode := 0 to Mode.Items.Count-1 do
        Hapus_Daftar_Nomor_User(copy(Mode.Items.Strings[iJmlMode],1,2),IDUser);
    except
      Hapus_Daftar_Nomor_User(Copy(Mode.Text,1,2),IDUser);
    end;
    BM := FrMainKasBank.QuMaster.GetBookmark;
    FrMainKasBank.GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
    if FrMainKasBank.QuMaster.BookmarkValid(BM) then
    begin
      try
       FrMainKasBank.QuMaster.GotoBookmark(BM);
      finally
       FrMainKasBank.QuMaster.FreeBookmark(BM);
      end
    end else
    begin
      FrMainKasBank.QuMaster.FreeBookmark(BM);
      //FrMainKasBank.QuMaster.First;
      FrMainKasBank.QuMaster.Last;
    end;
    Action:=cafree;
  end
  else
  begin
    Action:=caNone;
  end;
end;

procedure TFrKasBank.TampilData(No_bukti:string);
begin
   with QuTransaksi do
   begin
      Close;
      SQL.Strings[2]:='select @NoBukti='+QuotedStr(No_bukti);
      Open;
      BiayaRp :=0;
      while not Eof do
      begin
        BiayaRp := BiayaRp + QuTransaksiJumlahRp.AsCurrency;
        next;
      end;
      if IsEmpty then
      begin
         mUrut := 1;
         Mode.Enabled := True;
      end
      else
         Mode.Enabled := False
   end;
end;

procedure TFrKasBank.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then SendMessage(Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrKasBank.FormShow(Sender: TObject);
begin
  xModalKoreksi := FrMainKasBank.ModalKoreksi;
  mValid:=False;
  IsTambah:=FrMainKasBank.IsTambah;
  IsKoreksi:=FrMainKasBank.IsKoreksi;
  IsHapus:=FrMainKasBank.IsHapus;
  IsCetak:=FrMainKasBank.IsCetak;
  If xModalKoreksi = False then
  begin
    RefreshAll;
    IsiNoBuktiBaru;
    TampilData(NoBukti.Text);
    TampilanStatusDK;
    NoUrut.Enabled:=True;
    Simbol.Enabled:=True;
  end
  else
  Begin
    NOBUKTI.Text:=FrMainKasBank.QuMasterNoBukti.AsString;
    Hapus_Daftar_Nomor_User (Copy(Mode.Text,1,2),IDUser);
    Daftar_Nomor(Copy(Mode.Text,1,2),NoUrut.Text,NOBUKTI.Text,IsMax);
    TampilData(NOBUKTI.Text);
    NoUrut.Text:=QuTransaksinourut.AsString;
    TANGGAL.Date:=QuTransaksiTanggal.AsDateTime;
    Terima.Text:=QuTransaksiNote.AsString;
    mPerkiraan.Text:=QuTransaksimPerkiraan.AsString;
    Simbol.Text:=QuTransaksiSimbol.AsString;
    LNamaPerkiraan.Caption := '[ '+QuTransaksimNamaPerkiraan.AsString+' ]';
    //mValid:=True;
    //mPerkiraanExit(mPerkiraan);
    //mValid := False;
    Mode.ItemIndex:=Mode.Items.IndexOf(QuTransaksiTipeTrans.AsString);
    {
    if Mode.Text='BKK' then
    begin
      statusDK:=1;
      Label4.Caption:='Kepada';
    end else
    if Mode.Text='BKM' then
    begin
      statusDK:=0;
      Label4.Caption:='Terima Dari';
    end else
    if Mode.Text='BBM' then
    begin
      statusDK:=0;
      Label4.Caption:='Terima Dari';
    end else
    if mode.Text='BBK' then
    begin
      Label4.Caption:='Kepada';
      statusDK:=1;
    end;
    }
    TampilanStatusDK;
    NoUrut.Enabled:=False;
    Mode.Enabled := False;
    Simbol.Enabled:=False;
    Tanggal.Enabled:=CekPeriode(IDUser,TANGGAL.Date);
  end;
end;

procedure TFrKasBank.PerkiraanEnter(Sender: TObject);
begin
  mValid:=True;
  mNilaiStringEnter:=(Sender as TEdit).Text;
  mTampilkanHutPiut:=False;
end;

procedure TFrKasBank.TANGGALKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_Escape then
begin
   mValid:=false;
   Hapus_Daftar_Nomor(Copy(Mode.Text,1,2),NOBUKTI.Text,IDUser);
   if xModalKoreksi then
   begin
      mExit:=true;
      Close;
   end
   else
   begin
    RefreshAll;
    ActiveControl:=Mode;
    TampilData(NOBUKTI.Text);
   end;
end
else if key=vk_return then
begin
  UpdateTransaksi;
end;
end;

procedure TFrKasBank.ModeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    Close;
  end;
end;

procedure TFrKasBank.wwDBGrid1Exit(Sender: TObject);
begin
FrKasBank.KeyPreview:=true;
TambahBtn.Visible:=false;
HapusBtn.Visible:=false;
KoreksiBtn.Visible:=false;
Cetak.Visible:=false;
end;

procedure TFrKasBank.TambahBtnClick(Sender: TObject);
begin
  if IsTambah then
  begin
    Model:='write';
    TampilTombolDetail(True);
    Lawan.Enabled:=True;
    Perkiraan.Enabled:=True;
    THPC.Enabled:=True;
    with DM.QuCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select top 1 Urut from dbTransaksi where NoBukti='+QuotedStr(NOBUKTI.Text));
      SQL.Add('order by Urut desc ');
      Open;
      if IsEmpty then
        mUrut:=1
      else
        mUrut:=FieldByName('Urut').AsInteger+1;
    end;
    Valas.Text := 'IDR';
    isOpenP:='';
    isOpenL:='';
    kodeCustSuppP.Text:='';
    kodeCustSuppL.Text:='';
    KodeP := '';
    xKodeP := KodeP;
    KodeL := '';
    xKodeL := KodeL;
    NoAktivaP := '';
    xNoAktivaP := NoAktivaP;
    NoAktivaL := '';
    xNoAktivaL := NoAktivaL;
    StatusAktivaP := '';
    xStatusAktivaP := StatusAktivaP;
    StatusAktivaL := '';
    xStatusAktivaL := StatusAktivaL;
    HapusTempHutPiut('D');
    HapusTempHutPiut('K');
    if ((Mode.Text='BKK') or (Mode.Text='BBK')) then
    begin
      Lawan.Text:=mPerkiraan.Text;
      NamaLawan.Caption:=LNamaPerkiraan.Caption;
    end else
    if ((Mode.Text='BKM') or (Mode.Text='BBM')) then
    begin
      Perkiraan.Text:=mPerkiraan.Text;
      NamaPerkiraan.Caption:=LNamaPerkiraan.Caption;
    end;

    DataBersyarat('Select *,:1 from dbDevisi',[''],dm.Qucari);
    if (dm.QuCari.RecordCount>1) and (not dm.QuCari.IsEmpty) then
    begin
      if Devisi.CanFocus then
         ActiveControl:=Devisi;
    end
    else if (dm.QuCari.RecordCount=1) and (not dm.QuCari.IsEmpty) then
    begin
      ActiveControl := Valas;
      Devisi.Text := dm.QuCari.FieldByname('devisi').AsString;
      LDevisi.Caption := '[ '+dm.QuCari.FieldByname('Namadevisi').AsString+' ]';
      Devisi.Enabled := false;
    end;
  end
  else
  begin
     ShowMessage('Anda tidak berhak Menambah Data');
  end;
end;

procedure TFrKasBank.KoreksiBtnClick(Sender: TObject);
begin
  if IsKoreksi then
  begin
    mValid:=false;
    model:='koreksi';
    if QuTransaksi.IsEmpty=false then
    begin
      TampilTombolDetail(True);
      THPC.Enabled:=False;
      mUrut:=QuTransaksiUrut.AsInteger;
      Lawan.Text:=QuTransaksiLawan.AsString;
      xLawan:=Lawan.Text;
      NamaLawan.Caption:='[ '+QuTransaksiNamaLawan.AsString+' ]';
      Perkiraan.Text:=QuTransaksiPerkiraan.AsString;
      xPerkiraan:=Perkiraan.Text;
      NamaPerkiraan.Caption:='[ '+QuTransaksinamaPerkiraan.AsString+' ]';
      Devisi.Text:=QuTransaksiDevisi.AsString;
      LDevisi.Caption:='[ '+QuTransaksiNamaDevisi.AsString+' ]';
      KodeBag.Text:=QuTransaksiKodeBag.AsString;
      LNamaBag.Caption:='[ '+QuTransaksiNamaBag.AsString+' ]';
      Keterangan.Text:=QuTransaksi.fieldbyname('Keterangan').AsString;
      Valas.Text:=QuTransaksi.fieldbyname('Valas').AsString;
      Kurs.Value:=QuTransaksi.fieldbyname('Kurs').Value;
      Jumlah.Value:=QuTransaksi.fieldbyname('Debet').Value+QuTransaksi.fieldbyname('Kredit').Value;
      StatusGiro := QuTransaksiStatusGiro.AsString;
      THPC.ItemIndex:=THPC.Items.IndexOf(QuTransaksi.fieldbyname('myTPHC').AsString);
      xTHPC := THPC.Items.Strings[THPC.itemIndex];
      KodeCustSuppP.Text:=QuTransaksiCustSuppP.AsString;
      KodeCustSuppL.Text:=QuTransaksiCustSuppL.AsString;
      KodeP:=QuTransaksiKodeP.AsString;
      xKodeP:=KodeP;
      KodeL:=QuTransaksiKodeL.AsString;
      xKodeL:=KodeL;
      NoAktivaP:=QuTransaksiNoAktivaP.AsString;
      xNoAktivaP:=NoAktivaP;
      NoAktivaL:=QuTransaksiNoAktivaL.AsString;
      xNoAktivaL:=NoAktivaL;
      StatusAktivaP:=QuTransaksiStatusAktivaP.AsString;
      xStatusAktivaP:=StatusAktivaP;
      if (KodeP='HT') or (KodeP='PT') then
      begin
        HapusTempHutPiut('D');
        IsiTempHutPiut('D',xKodeP,NOBUKTI.Text,IntToStr(mUrut),Valas.Text,KodeCustSuppP.Text,Perkiraan.Text);
      end;
      StatusAktivaL:=QuTransaksiStatusAktivaL.AsString;
      xStatusAktivaL:=StatusAktivaL;
      if (KodeL='HT') or (KodeL='PT') then
      begin
        HapusTempHutPiut('K');
        IsiTempHutPiut('K',xKodeL,NOBUKTI.Text,IntToStr(mUrut),Valas.Text,KodeCustSuppL.Text,Lawan.Text);
      end;
      NoBon.Text:=QuTransaksiNobon.AsString;
      StatusGiro:=QuTransaksiStatusGiro.AsString;
      isOpenP:='';
      isOpenL:='';
      {if (Copy(THPC.Text,2,1)='P') or (Copy(THPC.Text,2,1)='H') then
      begin
        if StatusGiro<>'' then
        begin
          Application.CreateForm(TFrKasBankGiro,FrKasBankGiro);
          FrKasBankGiro.Showmodal;
        end;
      end
      else
      begin
        Jumlah.Enabled := True;
        ActiveControl:=Valas;
      end;
      if (StatusAktivaP='PT+') or (StatusAktivaP='HT-') then
      begin

      end;
      }
      {if ((Copy(THPC.Text,2,1)='P') or (Copy(THPC.Text,2,1)='H')) and (StatusGiro<>'') then
      begin
        TampilDataGiro(Copy(THPC.Text,2,1)+'T',NOBUKTI.Text,StatusGiro,mUrut);
        JumlahGiro.Value:=JumlahNilaiGiro;
      end;
      }
      if (Copy(THPC.Text,2,1)='P') or (Copy(THPC.Text,2,1)='H') or (Copy(THPC.Text,2,1)='R') then
      begin
        if StatusGiro<>'' then
        begin
          Application.CreateForm(TFrKasBankGiro,FrKasBankGiro);
          FrKasBankGiro.Showmodal;
        end;
      end;
      ActiveControl:=Jumlah;
    end else
    begin
      MsgKoreksiDataKosong;
      ActiveControl:=cxGrid1;
    end;
  end
  else
  begin
    MsgTidakBerhakKoreksiData;
    ActiveControl:=cxGrid1;
  end;
end;

procedure TFrKasBank.HapusBtnClick(Sender: TObject);
var CanDelete : Boolean;
    xS : String;
begin
 if IsHapus then
 begin
    CanDelete := IsHapus;
    if CekPeriode(IdUser,TANGGAL.Date)=true then
    begin
      if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
      begin
         if QuTransaksi.IsEmpty=true then
         begin
            Application.MessageBox('Tabel Kosong','Informasi'
            ,MB_OK Or MB_ICONWARNING);
         end
         else
         begin
            mPosisi:=QuTransaksi.FieldbyName('Urut').asinteger;
            mUrut:=QuTransaksi.FieldbyName('Urut').asinteger;
            xS:=Format('Anda yakin No %s - %s dihapus ? '+#13+'Awas !,transaksi di Kartu juga terhapus',
            [QuTransaksi.FieldbyName('Lawan').asstring,
            QuTransaksi.Fieldbyname('Keterangan').asstring]);
            if (Application.MessageBox(Pchar(xS),'Hapus Data',
               MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
            begin
              {if QuTransaksi.Fieldbyname('CustSuppP').AsString<>'' then
              begin
                with QuUpdateGiro do
                begin
                   close;
                   SQL.Clear;
                   SQL.Add('delete dbHutPiut ');
                   SQL.Add('where nobukti=:0 and KodeCustSupp=:1 and nomsk=:2');
                   Parameters[0].Value:=QuTransaksi.Fieldbyname('Nobukti').AsString;
                   Parameters[1].Value:=QuTransaksi.Fieldbyname('CustSuppP').AsString;
                   Parameters[2].Value:=QuTransaksi.Fieldbyname('urut').AsInteger;
                   ExecSQL;
                end;
              end;
              if QuTransaksi.Fieldbyname('CustSuppL').AsString<>'' then
              begin
                with QuUpdateGiro do
                begin
                   close;
                   SQL.Clear;
                   SQL.Add('delete dbHutPiut ');
                   SQL.Add('where nobukti=:0 and KodeCustSupp=:1 and nomsk=:2');
                   Parameters[0].Value:=QuTransaksi.Fieldbyname('Nobukti').AsString;
                   Parameters[1].Value:=QuTransaksi.Fieldbyname('CustSuppL').AsString;
                   Parameters[2].Value:=QuTransaksi.Fieldbyname('urut').AsInteger;
                   ExecSQL;
                end;
              end;
              }
              if  (QuTransaksi.Fieldbyname('StatusAktivaP').AsString='DP+') then
              begin
                if DataBersyarat('Select Bank,NoDeposito,Tanggal,BuktiCair,TglCair '+
                                    'From dbDeposito where buktibuka=:0 and urutbuktibuka=:1 and TglCair is not null',
                 [QuTransaksi.Fieldbyname('Nobukti').AsString,QuTransaksi.Fieldbyname('urut').AsInteger],dm.Qucari) then
                begin
                  StrPCopy(S,Format('Bank %s No. Deposito %s Tgl Deposito %s'+#13+
                                    'Telah ada Pencairan pada No Transaksi : %s Tanggal %s',
                  [DM.Qucari.FieldbyName('Bank').asstring,DM.Qucari.Fieldbyname('NoDeposito').asstring,
                   Formatdatetime('DD-MM-YYYY',DM.Qucari.FieldbyName('Tanggal').AsDateTime),
                   DM.Qucari.FieldbyName('BuktiCair').asstring,Formatdatetime('DD-MM-YYYY',DM.Qucari.FieldbyName('TglCair').AsDateTime)]));
                  Application.MessageBox(S,'Informasi',MB_OK or MB_ICONINFORMATION + MB_DEFBUTTON1);
                  CanDelete := False;
                end;

                with QuUpdateGiro do
                begin
                  close;
                  SQL.Clear;
                  SQL.Add('Delete dbDeposito ');
                  SQL.Add('where buktiBuka=:0 and urutbuktiBuka=:1 and TglCair is null ');
                  Parameters[0].Value:=QuTransaksi.Fieldbyname('Nobukti').AsString;
                  Parameters[1].Value:=QuTransaksi.Fieldbyname('urut').AsInteger;
                  ExecSQL;
                end;
              end
              else
              if (QuTransaksi.Fieldbyname('StatusAktivaL').AsString='DP-')then
              begin
                with QuUpdateGiro do
                begin
                  close;
                  SQL.Clear;
                  SQL.Add('update dbDeposito set kredit=0,KreditRp=0,bukticair='''', tglcair=null, keteranganCair='''' ');
                  SQL.Add('where bukticair=:0 and urutbukticair=:1 ');
                  Parameters[0].Value:=QuTransaksi.Fieldbyname('Nobukti').AsString;
                  Parameters[1].Value:=QuTransaksi.Fieldbyname('urut').AsInteger;
                  ExecSQL;
                end;
              end;

              if (QuTransaksi.Fieldbyname('TPHC').AsString='P') and (QuTransaksi.Fieldbyname('StatusGiro').AsString='P-')then
              begin
                with QuUpdateGiro do
                begin
                  close;
                  SQL.Clear;
                  SQL.Add('update dbGiro set kredit=0,KreditRp=0,bukticair='''', tglcair=null, keteranganCair='''' ');
                  SQL.Add('where bukticair=:0 and urutbukticair=:1 and Tipe=''PT'' ');
                  Parameters[0].Value:=QuTransaksi.Fieldbyname('Nobukti').AsString;
                  Parameters[1].Value:=QuTransaksi.Fieldbyname('urut').AsInteger;
                  ExecSQL;
                end;
              end
              else
              if (QuTransaksi.Fieldbyname('TPHC').AsString='H') and (QuTransaksi.Fieldbyname('StatusGiro').AsString='H-') then
              begin
                with QuUpdateGiro do
                begin
                  close;
                  SQL.Clear;
                  SQL.Add('update dbGiro set Debet=0,DebetRp=0,bukticair='''', tglcair=null, keteranganCair='''' ');
                  SQL.Add('where bukticair=:0 and urutbukticair=:1 and Tipe=''HT'' ');
                  Parameters[0].Value:=QuTransaksi.Fieldbyname('Nobukti').AsString;
                  Parameters[1].Value:=QuTransaksi.Fieldbyname('urut').AsInteger;
                  ExecSQL;
                end;
              end
              else
              if (QuTransaksi.Fieldbyname('TPHC').AsString='P') and (QuTransaksi.Fieldbyname('StatusGiro').AsString='P+') and
                 (not TransaksiSudahCair(copy(THPC.Text,2,1),QuTransaksiNoBukti.AsString,QuTransaksiUrut.AsInteger))then
              begin
                with QuUpdateGiro do
                begin
                  close;
                  SQL.Clear;
                  SQL.Add('Delete DbGiro');
                  SQL.Add('where buktibuka=:0 and urutbuktibuka=:1 and Tipe=''PT'' and Tglcair is null');
                  Parameters[0].Value:=QuTransaksi.Fieldbyname('Nobukti').AsString;
                  Parameters[1].Value:=QuTransaksi.Fieldbyname('urut').AsInteger;
                  ExecSQL;
                end;
              end else
              if (QuTransaksi.Fieldbyname('TPHC').AsString='H') and (QuTransaksi.Fieldbyname('StatusGiro').AsString='H+') and
                 (not TransaksiSudahCair(copy(THPC.Text,2,1),QuTransaksiNoBukti.AsString,QuTransaksiUrut.AsInteger)) then
              begin
                with QuUpdateGiro do
                begin
                  close;
                  SQL.Clear;
                  SQL.Add('Delete DbGiro');
                  SQL.Add('where buktibuka=:0 and urutbuktibuka=:1 and Tipe=''HT'' and Tglcair is null');
                  Parameters[0].Value:=QuTransaksi.Fieldbyname('Nobukti').AsString;
                  Parameters[1].Value:=QuTransaksi.Fieldbyname('urut').AsInteger;
                  ExecSQL;
                end;
              end
              else if DataBersyarat('Select Bank,Nogiro,TglGiro,BuktiCair,TglCair '+
                                    'From dbgiro where buktibuka=:0 and urutbuktibuka=:1 and TglCair is not null',
                 [QuTransaksi.Fieldbyname('Nobukti').AsString,QuTransaksi.Fieldbyname('urut').AsInteger],dm.Qucari) then
              begin
                StrPCopy(S,Format('Bank %s No. Giro %s Tgl Giro %s'+#13+
                                  'Telah ada Pencairan pada No Transaksi : %s Tanggal %s',
                [DM.Qucari.FieldbyName('Bank').asstring,DM.Qucari.Fieldbyname('NoGiro').asstring,
                 Formatdatetime('DD-MM-YYYY',DM.Qucari.FieldbyName('Tglgiro').AsDateTime),
                 DM.Qucari.FieldbyName('BuktiCair').asstring,Formatdatetime('DD-MM-YYYY',DM.Qucari.FieldbyName('TglCair').AsDateTime)]));
                Application.MessageBox(S,'Informasi',MB_OK or MB_ICONINFORMATION + MB_DEFBUTTON1);
                CanDelete := False;
              end;
              if CanDelete then
                 SimpanData('D');
            end;
         end;
      end
      else
      begin
         ShowMessage('Periode Sudah Di Kunci !');
         //ActiveControl:=KodeBrg;
      end;
    end
    else
      ShowMessage('Tanggal Periode Tidak Sesuai !');
 end else
 begin
     ShowMessage('Anda tidak berhak Hapus Data');
 end;
end;

procedure TFrKasBank.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  Panel1.Enabled:=true;
  Panel2.Enabled:=true;
  Panel3.Enabled:=false;
  Panel3.Visible:=false;
  HapusTempHutPiut('D');
  HapusTempHutPiut('K');
  ActiveControl:=cxGrid1;
  ClearDetailPanel;
  CloseQuerry;
end;

procedure TFrKasBank.LawanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Escape then
  begin
    mValid:=false;
    Lawan.Enabled:=true;
    Panel2.Enabled:=true;
    ClearDetailPanel;
    if model='write' then
    begin
       if Devisi.CanFocus then
          ActiveControl:=Devisi
       else
          SpeedButton1.Click
    end
    else
    begin
       SpeedButton1.Click;
    end;
    CloseQuerry;
  end else
  if (Key=VK_Return) or (Key=VK_Tab) then
  begin
    if ((KodeL='HT') or (KodeL='PT')) or ((KodeL='UHT') or (KodeL='UPT')) then
    begin
      if KodeL='HT' Then
       Begin
       With DM.QuCari2 do
       Begin
        Close;
        SQL.Clear;
        SQL.Add('select ISNULL(IsLokalorExim,0)IsLokalorExim from DBPOSTHUTPIUT where Kode='+QuotedStr(KodeL)+' and Perkiraan='+QuotedStr(Lawan.Text));
        Open;
       end;
        if DM.QuCari2.FieldByName('IsLokalorExim').AsBoolean then
        TampilHutPiut(KodeL,StatusAktivaL,Lawan.Text,'K',kodeCustSuppL);
      end
     else if KodeP='PT'Then
      Begin
      With DM.QuCari2 do
       Begin
        Close;
        SQL.Clear;
        SQL.Add('select ISNULL(IsLokalorExim,0)IsLokalorExim from DBPOSTHUTPIUT where Kode='+QuotedStr(KodeL)+' and Perkiraan='+QuotedStr(Lawan.Text));
        Open;
       end;
        if DM.QuCari2.FieldByName('IsLokalorExim').AsBoolean then
        TampilHutPiut(KodeL,StatusAktivaL,Lawan.Text,'K',kodeCustSuppL);
      end
      else
      begin
        With DM.QuCari2 do
       Begin
        Close;
        SQL.Clear;
        SQL.Add('select ISNULL(IsLokalorExim,0)IsLokalorExim from DBPOSTHUTPIUT where Kode='+QuotedStr(KodeL)+' and Perkiraan='+QuotedStr(Lawan.Text));
        Open;
       end;
        if DM.QuCari2.FieldByName('IsLokalorExim').AsBoolean then
        TampilHutPiut(KodeL,StatusAktivaL,Lawan.Text,'K',kodeCustSuppL);
      End;
    end;
  end;
end;

procedure TFrKasBank.KeteranganKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_Escape then
   begin
      mValid:=false;
      Lawan.Enabled:=true;
      Panel2.Enabled:=true;
      ClearDetailPanel;
      if model='write' then
      begin
         if Devisi.CanFocus then
            ActiveControl:=Devisi
         else
            SpeedButton1.Click
      end
      else
      begin
         SpeedButton1.Click;
      end;
   end;
end;

procedure TFrKasBank.TANGGALExit(Sender: TObject);
begin
if mValid then
begin
   if CekPeriode(IdUser,TANGGAL.Date)=false then
   begin
      ShowMessage('Periode Tidak Sesuai !');
      ActiveControl:=tanggal;
   end;
end;

end;

procedure TFrKasBank.TANGGALEnter(Sender: TObject);
begin
mValid:=true;
end;

procedure TFrKasBank.ValasExit(Sender: TObject);
var i : Integer;
begin
  if mValid Then
  begin
    SetLength(xValue,3);
    if DataBersyarat('select kodevls,namavls,kurs from dbValas where kodevls=:0',[Valas.text],DM.Qucari) then
    begin
      Valas.Text :=DM.QuCari.FieldByname('Kodevls').AsString;
      if Model='write' then
         kurs.Value :=DM.QuCari.FieldByname('kurs').Value;
    end
    else
    begin
      TampilIsiData(FrKasBank,Valas,LValas,1006,'kodevls','Namavls');
      for I := LOW(xValue) to High(xValue) do
      begin
        if I= High(xValue) then
           Kurs.Value:=xValue[i];
      end;
    end;
    if Valas.Text='IDR' then
    begin
       Kurs.Enabled:=false;
       ActiveControl:=Jumlah;
    end
    else
    begin
       Kurs.Enabled:=true;
       ActiveControl:=Kurs;
    end;
    xValue := nil;
  end;
end;

procedure TFrKasBank.BitBtn1Click(Sender: TObject);
var xJumlahHutPiut: Real;
    xResult : Integer;
    xS: string;
begin
   if CekPeriode(IdUser,TANGGAL.Date)=true then
   begin
      if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
      begin
        if (Jumlah.Value<>0) and (Kurs.Value<>0) and (Perkiraan.Text<>'') and (Lawan.Text<>'') then
        begin
          if Model='write' then
          begin
            xJumlahHutPiut:=Jumlah.Value;
            if (KodeP='HT') or (KodeP='PT') or (KodeP='UHT') or (KodeP='UPT') then
            begin
              xJumlahHutPiut:=CariJumlahPembayaranHutPiut(StatusAktivaP,Valas.Text);
              {if xJumlahHutPiut=0 then
              Begin
                      ShowMessage('Kartu Belum Dimasukkan !');
//                ActiveControl :=
              end;}

            end
            else if (KodeL='HT') or (KodeL='PT') or (KodeL='UHT') or (KodeL='UPT') then
              xJumlahHutPiut:=CariJumlahPembayaranHutPiut(StatusAktivaL,Valas.Text);
            {if (Copy(Perkiraan.Text,1,3)='214') or (Copy(Lawan.Text,1,3)='214') then
                xJumlahHutPiut:=Jumlah.Value;}

            if RoundTo(xJumlahHutPiut,-2)<>RoundTo(Jumlah.Value,-2) then
            begin
              if (KodeP='HT') or (KodeL='HT')  then
                 xS:=Format('Jumlah hutang yang dijurnal %s tidak sama dengan di kartu hutang %s '+#13+
                                   'Samakan jumlah hutang yang dijurnal dengan  di kartu hutang ? Tekan Tombol Yes'+#13+
                                   'Samakan jumlah hutang yang dikartu hutang dengan  yang dijurnal ? Tekan Tombol NO'+#13+
                                   'Batal ? Tekan Tombol Cancel',[FormatFloat(',0.00',Jumlah.value),FormatFloat(',0.00',xJumlahHutPiut)])
              else if (KodeP='PT') or (KodeL='PT')  then
                 xS:=Format('Jumlah piutang yang dijurnal %s tidak sama dengan di kartu piutang %s '+#13+
                                   'Samakan jumlah piutang yang dijurnal dengan  di kartu piutang ? Tekan Tombol Yes'+#13+
                                   'Samakan jumlah piutang yang dikartu piutang dengan  yang dijurnal ? Tekan Tombol NO'+#13+
                                   'Batal ? Tekan Tombol Cancel',[FormatFloat(',0.00',Jumlah.value),FormatFloat(',0.00',xJumlahHutPiut)])
              else if (KodeP='UHT') or (KodeL='UHT') then
                 xS:=Format('Jumlah uang muka hutang yang dijurnal %s tidak sama dengan di kartu uang muka hutang %s '+#13+
                                   'Samakan jumlah uang muka hutang yang dijurnal dengan  di kartu uang muka hutang ? Tekan Tombol Yes'+#13+
                                   'Samakan jumlah uang muka hutang yang dikartu uang muka hutang dengan  yang dijurnal ? Tekan Tombol NO'+#13+
                                   'Batal ? Tekan Tombol Cancel',[FormatFloat(',0.00',Jumlah.value),FormatFloat(',0.00',xJumlahHutPiut)])
              else if (KodeP='UPT') or (KodeL='UPT') then
                 xS:=Format('Jumlah uang muka piutang yang dijurnal %s tidak sama dengan di uang muka kartu piutang %s '+#13+
                                   'Samakan jumlah uang muka piutang yang dijurnal dengan  di kartu uang muka piutang ? Tekan Tombol Yes'+#13+
                                   'Samakan jumlah uang muka piutang yang dikartu uang muka piutang dengan  yang dijurnal ? Tekan Tombol NO'+#13+
                                   'Batal ? Tekan Tombol Cancel',[FormatFloat(',0.00',Jumlah.value),FormatFloat(',0.00',xJumlahHutPiut)]);
              xResult:=(Application.MessageBox(Pchar(xS),'Peringatan Kartu TIdak Tersimpan !!!',MB_YESNOCANCEL or MB_ICONSTOP + MB_DEFBUTTON1));
              {if (xResult=IDYES)then
              begin
                Jumlah.Value := xJumlahHutPiut;
                SimpanData('I');
                ClearDetailPanel;
                HapusTempHutPiut('D');
                HapusTempHutPiut('K');
                if Devisi.CanFocus then
                   ActiveControl:= Devisi
                else
                   ActiveControl:= Valas;
              end
              else} if (xResult=IDNO) then
              begin
                if ((KodeL='HT') or (KodeL='PT')) or ((KodeL='UHT') or (KodeL='UPT')) then
                begin
                  TampilHutPiut(KodeL,StatusAktivaL,Lawan.Text,'K',kodeCustSuppL);
                end
                else
                if ((KodeP='HT') or (KodeP='PT')) or ((KodeP='UHT') or (KodeP='UPT')) then
                begin
                  TampilHutPiut(KodeP, StatusAktivaP,Perkiraan.Text,'D',kodeCustSuppP);
                end;
              end
              else SpeedButton1.Click;
            end
            else

            begin
              SimpanData('I');
              ClearDetailPanel;
              HapusTempHutPiut('D');
              HapusTempHutPiut('K');
              if Devisi.CanFocus then
                 ActiveControl:= Devisi
              else
                 ActiveControl:= Valas;
            end;
          end
          else if model='koreksi' then
          begin
            if xPerkiraan<>Perkiraan.Text then
            begin
              if (xKodeP='PT') Or (xKodeP='HT') then
              begin
                {with DM.QuCari do
                begin
                  close;
                  sql.Clear;
                  Sql.Add('delete dbhutPiut where Tipe=:0 and NoBukti=:1 and urut=:2');
                  Prepared;
                  Parameters[0].Value :=xKodeP;
                  Parameters[1].Value :=NOBUKTI.Text;
                  Parameters[2].Value :=mUrut;
                  ExecSQL;
                end;
                }
              end
              else if (xKodeP='AKV') or (xKodeP='AKM')  then
              begin
                with DM.QuCari do
                begin
                  close;
                  sql.Clear;
                  Sql.Add('Update dbAktivadet Set ');
                  if xStatusAktivaP='AKV+'  then
                     Sql.Add('MD=0 ')
                  else if xStatusAktivaP='AKV-'  then
                     Sql.Add('MK=0 ')
                  else
                  if xStatusAktivaP='AKM+'  then
                     Sql.Add('SK=0 ')
                  else if xStatusAktivaP='AKM-'  then
                     Sql.Add('SD=0 ');
                  sql.add('where Perkiraan=:0 and Bulan=:1 and Tahun=:2 and Devisi=:3 ');
                  Prepared;
                  Parameters[0].Value :=xNoAktivaP;
                  Parameters[1].Value :=MonthOf(TANGGAL.Date);
                  Parameters[2].Value :=YearOf(TANGGAL.Date);
                  Parameters[3].Value :=Devisi.Text;
                  ExecSQL;
                end;
              end;
            end;

            if xLawan<>Lawan.Text then
            begin
              if (xKodeL='PT') Or (xKodeL='HT') then
              begin
                {with DM.QuCari do
                begin
                  close;
                  sql.Clear;
                  Sql.Add('delete dbhutPiut where Tipe=:0 and NoBukti=:1 and urut=:2');
                  Prepared;
                  Parameters[0].Value :=xKodeL;
                  Parameters[1].Value :=NOBUKTI.Text;
                  Parameters[2].Value :=mUrut;
                  ExecSQL;
                end;
                }
              end
              else if (xKodeL='AKV') or (xKodeL='AKM')  then
              begin
                with DM.QuCari do
                begin
                  close;
                  sql.Clear;
                  Sql.Add('Update dbAktivadet Set ');
                  if xStatusAktivaL='AKV+'  then
                     Sql.Add('MD=0 ')
                  else if xStatusAktivaL='AKV-'  then
                     Sql.Add('MK=0 ')
                  else
                  if xStatusAktivaL='AKM+'  then
                     Sql.Add('SK=0 ')
                  else if xStatusAktivaL='AKM-'  then
                     Sql.Add('SD=0 ');
                  sql.add('where Perkiraan=:0 and Bulan=:1 and Tahun=:2 and Devisi=:3 ');
                  Prepared;
                  Parameters[0].Value :=xNoAktivaL;
                  Parameters[1].Value :=MonthOf(TANGGAL.Date);
                  Parameters[2].Value :=YearOf(TANGGAL.Date);
                  Parameters[3].Value :=Devisi.Text;
                  ExecSQL;
                end;
              end;
            end;

            xJumlahHutPiut:=Jumlah.Value;

            if (KodeP='HT') or (KodeP='PT') or (KodeP='UHT') or (KodeP='UPT') then
              xJumlahHutPiut:=CariJumlahPembayaranHutPiut(StatusAktivaP,Valas.Text)
            else if (KodeL='HT') or (KodeL='PT') or (KodeL='UHT') or (KodeL='UPT') then
              xJumlahHutPiut:=CariJumlahPembayaranHutPiut(StatusAktivaL,Valas.Text);

            if RoundTo(xJumlahHutPiut,-2)<>RoundTo(Jumlah.Value,-2) then
            {
            begin
              if (KodeP='HT') or (KodeL='HT')  then
                 xS:=Format('Jumlah hutang yang dijurnal %s tidak sama dengan di kartu hutang %s '+#13+
                                   'Samakan jumlah hutang yang dijurnal dengan  di kartu hutang ? Tekan Tombol Yes'+#13+
                                   'Samakan jumlah hutang yang dikartu hutang dengan  yang dijurnal ? Tekan Tombol NO'+#13+
                                   'Batal ? Tekan Tombol Cancel',[FormatFloat(',0.00',Jumlah.value),FormatFloat(',0.00',xJumlahHutPiut)])
              else if (KodeP='PT') or (KodeL='PT')  then
                 xS:=Format('Jumlah piutang yang dijurnal %s tidak sama dengan di kartu piutang %s '+#13+
                                   'Samakan jumlah piutang yang dijurnal dengan  di kartu piutang ? Tekan Tombol Yes'+#13+
                                   'Samakan jumlah piutang yang dikartu piutang dengan  yang dijurnal ? Tekan Tombol NO'+#13+
                                   'Batal ? Tekan Tombol Cancel',[FormatFloat(',0.00',Jumlah.value),FormatFloat(',0.00',xJumlahHutPiut)])
              else if (KodeP='UHT') or (KodeL='UHT') then
                 xS:=Format('Jumlah uang muka hutang yang dijurnal %s tidak sama dengan di kartu uang muka hutang %s '+#13+
                                   'Samakan jumlah uang muka hutang yang dijurnal dengan  di kartu uang muka hutang ? Tekan Tombol Yes'+#13+
                                   'Samakan jumlah uang muka hutang yang dikartu uang muka hutang dengan  yang dijurnal ? Tekan Tombol NO'+#13+
                                   'Batal ? Tekan Tombol Cancel',[FormatFloat(',0.00',Jumlah.value),FormatFloat(',0.00',xJumlahHutPiut)])
              else if (KodeP='UPT') or (KodeL='UPT') then
                 xS:=Format('Jumlah uang muka piutang yang dijurnal %s tidak sama dengan di uang muka kartu piutang %s '+#13+
                                   'Samakan jumlah uang muka piutang yang dijurnal dengan  di kartu uang muka piutang ? Tekan Tombol Yes'+#13+
                                   'Samakan jumlah uang muka piutang yang dikartu uang muka piutang dengan  yang dijurnal ? Tekan Tombol NO'+#13+
                                   'Batal ? Tekan Tombol Cancel',[FormatFloat(',0.00',Jumlah.value),FormatFloat(',0.00',xJumlahHutPiut)]);
              xResult:=(Application.MessageBox(Pchar(xS),'Peringatan',MB_YESNOCANCEL or MB_ICONSTOP + MB_DEFBUTTON1));
              if ( xResult=IDYES)then
              begin
                Jumlah.Value := xJumlahHutPiut;
                SimpanData('I');
                ClearDetailPanel;
                HapusTempHutPiut('D');
                HapusTempHutPiut('K');
                if Devisi.CanFocus then
                   ActiveControl:= Devisi
                else
                   ActiveControl:= Valas;
              end
              else if (xResult=IDNO) then
              begin
                if ((KodeL='HT') or (KodeL='PT')) or ((KodeL='UHT') or (KodeL='UPT')) then
                begin
                  TampilHutPiut(KodeL,StatusAktivaL,Lawan.Text,'K',kodeCustSuppL);
                end
                else
                if ((KodeP='HT') or (KodeP='PT')) or ((KodeP='UHT') or (KodeP='UPT')) then
                begin
                  TampilHutPiut(KodeP, StatusAktivaP,Perkiraan.Text,'D',kodeCustSuppP);
                end;
              end
              else SpeedButton1.Click;
            end else
            }
            begin
              SimpanData('U');
              Panel1.Enabled:=true;
              Panel2.Enabled:=true;
              Panel3.Enabled:=false;
              Panel3.Visible:=false;
              ClearDetailPanel;
              HapusTempHutPiut('D');
              HapusTempHutPiut('K');
              ActiveControl:=cxGrid1;
            end
            else ///januari
            begin
              SimpanData('U');
              Panel1.Enabled:=true;
              Panel2.Enabled:=true;
              Panel3.Enabled:=false;
              Panel3.Visible:=false;
              ClearDetailPanel;
              HapusTempHutPiut('D');
              HapusTempHutPiut('K');
              ActiveControl:=cxGrid1;
            end;

          end;
          CloseQuerry;
        end;
      end
      else
      begin
         ShowMessage('Periode Sudah Di Kunci !');
         if model='Koreksi' then
            ActiveControl:=Keterangan
         else
            ActiveControl:=Lawan;
      end;
   end
   else
     ShowMessage('Tanggal Periode Tidak Sesuai !');
end;

procedure TFrKasBank.ModeEnter(Sender: TObject);
begin
  mValid:=True;
  mExit:=True;
end;

procedure TFrKasBank.CetakClick(Sender: TObject);
var N1, N2, N3 : string;
    T2 : int64;
    Tot : byte;
    TempCode, mValas : String;
    xTerbilang : TATTerbilang;
begin
 if IsCetak then
 begin
  TampilData(NOBUKTI.Text);
  mValas := ' Rupiah ';

  N3  := FormatFloat('0.00',abs(BiayaRp));
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
  xTerbilang := TATTerbilang.Create(Self);

  T2  := StrToint(N2);
  xTerbilang.Number := N1;
  N1  := xTerbilang.Terbilang;

  if T2 <> 0 then
  begin
    if T2 < 10 then
    begin
       N3 := ' Nol ';
       xTerbilang.Number := inttostr(T2);
       N2 := xTerbilang.Terbilang;
    end
    else
    begin
       xTerbilang.Number := inttostr(T2);
       N2 := xTerbilang.Terbilang;
    end;
    if T2<10 then
       N2 := N3+ N2;
    if N1 = '' then
       TempCode:=N2+' Sen'
    else
       TempCode:=N1+mValas+N2+' Sen';
  end
  else
    TempCode:=N1+mValas;


  if  BiayaRp>0 then
      myTerbilang := 'Terbilang : '+TempCode
  else
      myTerbilang := 'Terbilang : Minus '+TempCode;
  myTerbilang := UpperCase(myTerbilang);
  tipetrans:= frkasbank.QuTransaksi.fieldbyname('TipeTrans').AsString ;
         if tipetrans='BKM' then
         begin
            FrKasBank.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Nota\BuktiKasMasuk.fr3');
            FrKasBank.frxReport1.ShowReport;
            //FrKasBank.Destroy;
         end
         else
         if tipetrans='BKK' then
         begin
            FrKasBank.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Nota\BuktiKasKeluar.fr3');
            FrKasBank.frxReport1.ShowReport;
            //FrKasBank.Free;
         end
         else
         if tipetrans='BBM' then
         begin
            FrKasBank.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Nota\BuktiBankMasuk.fr3');
            FrKasBank.frxReport1.ShowReport;
            //FrKasBank.Free;
         end
         else
         if tipetrans='BBK' then
         begin
            FrKasBank.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Nota\BuktiBankKeluar.fr3');
            FrKasBank.frxReport1.ShowReport;
            //FrKasBank.Free;
         end
  //frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Nota\BuktiKasBank.fr3');
  //frxReport1.ShowReport;

 end
 else
 begin
     ShowMessage('Anda tidak berhak Cetak Data');
 end;
end;

procedure TFrKasBank.DevisiExit(Sender: TObject);
begin
  if mValid then
  begin
    SetLength(xValue,2);
    if DataBersyarat('select * from dbDevisi where Devisi=:0',[Devisi.text],DM.Qucari) then
    begin
      Devisi.Text :=DM.QuCari.FieldByname('Devisi').AsString;
      LDevisi.Caption:='[ '+DM.QuCari.FieldByname('NamaDevisi').AsString+' ]';
    end
    else
      TampilIsiData(FrKasBank,Devisi ,LDevisi,1004,'Devisi','NamaDevisi');
  end;
end;

procedure TFrKasBank.FormDestroy(Sender: TObject);
begin
  FrKasBank:=nil;
end;

procedure TFrKasBank.FormCreate(Sender: TObject);
begin
  Hapus_Daftar_Nomor_User(Mode.Text,IDUser);
  StatusAktivaP:='';
  StatusAktivaL:='';
  KodeP := '';
  KodeL := '';
  StatusGiro :='';
  isOpenP:='';
  isOpenL:='';
  statusDK :=1;
  LabelLawan.Left:=LabelPerkiraan.Left;
  Lawan.Left:=Perkiraan.Left;
  NamaLawan.Left:=NamaPerkiraan.Left;
end;

procedure TFrKasBank.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
  if VarName='xFilename' then
     if FileExists(ExtractFilePath(Application.ExeName)+'TTD\TTD1.ICO') then
        value := ExtractFilePath(Application.ExeName)+'TTD\TTD1.ICO'
     else
        Value :='';
  if VarName='Terbilang' then
     value := myTerbilang;
end;

procedure TFrKasBank.NoUrutEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrKasBank.NoUrutChange(Sender: TObject);
begin
  if mValid then
  begin
    if Length(NoUrut.Text)=5 then
    begin
      Konfig(Mode.Text,NoUrut.Text+Simbol.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date,False);
      NOBUKTI.Text := F1+Separator+F2+Separator+F3+Separator+F4;
    end;
    //else
    //  ActiveControl := NoUrut;
  end;
end;

procedure TFrKasBank.tvMasterKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    if (QuTransaksi.IsEmpty=False) then
    begin
      Hapus_Daftar_Nomor(Copy(Mode.Text,1,2),NOBUKTI.Text,IDUser);
    end
    else
      Hapus_Daftar_Nomor(Copy(Mode.Text,1,2),NOBUKTI.Text,IDUser);
    if xModalKoreksi then
    begin
      mExit:=True;
      Close;
    end
    else
    begin
      RefreshAll;
      TampilData(NOBUKTI.Text);
      ActiveControl:=Mode;
    end;
  end
  else if Key=VK_Return then
  begin
    if QuTransaksi.IsEmpty then
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

procedure TFrKasBank.ModeChange(Sender: TObject);
begin
  if mValid then
  begin
    TampilanStatusDK;
    Simbol.Text:='';
    NoUrut.Text:='';
    NOBUKTI.Text:='';
  end;
end;

procedure TFrKasBank.SpeedButton2Click(Sender: TObject);
var N1, N2, N3 : string;
    T2 : int64;
    Tot : byte;
    TempCode, mValas : String;
    xTerbilang : TATTerbilang;
begin
 if IsCetak then
 begin
  TampilData(NOBUKTI.Text);
  mValas := ' Rupiah ';

  N3  := FormatFloat('0.00',abs(BiayaRp));
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
  xTerbilang := TATTerbilang.Create(Self);

  T2  := StrToint(N2);
  xTerbilang.Number := N1;
  N1  := xTerbilang.Terbilang;

  if T2 <> 0 then
  begin
    if T2 < 10 then
    begin
       N3 := ' Nol ';
       xTerbilang.Number := inttostr(T2);
       N2 := xTerbilang.Terbilang;
    end
    else
    begin
       xTerbilang.Number := inttostr(T2);
       N2 := xTerbilang.Terbilang;
    end;
    if T2<10 then
       N2 := N3+ N2;
    if N1 = '' then
       TempCode:=N2+' Sen'
    else
       TempCode:=N1+mValas+N2+' Sen';
  end
  else
    TempCode:=N1+mValas;


  if  BiayaRp>0 then
      myTerbilang := 'Terbilang : '+TempCode
  else
      myTerbilang := 'Terbilang : Minus '+TempCode;
  myTerbilang := UpperCase(myTerbilang);
  tipetrans:= frkasbank.QuTransaksi.fieldbyname('TipeTrans').AsString ;
         if tipetrans='BKM' then
         begin
            FrKasBank.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Nota\BuktiKasMasuk.fr3');
         end
         else
         if tipetrans='BKK' then
         begin
            FrKasBank.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Nota\BuktiKasKeluar.fr3');
            
         end
         else
         if tipetrans='BBM' then
         begin
            FrKasBank.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Nota\BuktiBankMasuk.fr3');

         end
         else
         if tipetrans='BBK' then
         begin
            FrKasBank.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Nota\BuktiBankKeluar.fr3');

         end;
         FrKasBank.frxReport1.DesignReport;

 end
 else
 begin
     ShowMessage('Anda tidak berhak Cetak Data');
 end;
end;

procedure TFrKasBank.THPCChange(Sender: TObject);
begin
  if mValid=True then
  begin
    if (THPC.ItemIndex=3) and ((Mode.Text='BKM'))then
       StatusGiro := 'P+'
    else
    if (THPC.ItemIndex=3) and ((Mode.Text='BKK') or (Mode.Text='BBM'))then
       StatusGiro := 'P-'
    else
    if (THPC.ItemIndex=2) and ((Mode.Text='BKM'))then
    //if (THPC.ItemIndex=2) and ((Mode.Text='BBK'))then
       StatusGiro := 'H+'
    else
    if (THPC.ItemIndex=2) and ((Mode.Text='BKK'))then
       StatusGiro := 'H-'
    //else
    //if (THPC.ItemIndex=4) and ((Mode.Text='BBM'))then
    //   StatusGiro := 'H-'
    else
       StatusGiro :='';
    if StatusGiro<>'' then
    begin
      Application.CreateForm(TFrKasBankGiro,FrKasBankGiro);
      if StatusGiro='P+' then
         FrKasBankGiro.Caption := 'Terima Giro'
      else
      if StatusGiro='P-' then
         FrKasBankGiro.Caption := 'Pencairan Terima Giro'
      else
      if StatusGiro='H+' then
         FrKasBankGiro.Caption := 'Buka Giro'
      else
      if StatusGiro='H-' then
         FrKasBankGiro.Caption := 'Pencairan Buka Giro';
      FrKasBankGiro.Showmodal;
    end;
  end;
end;

procedure TFrKasBank.PerkiraanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Escape then
  begin
    mValid:=false;
    Lawan.Enabled:=true;
    Panel2.Enabled:=true;
    ClearDetailPanel;
    if model='write' then
    begin
       if Devisi.CanFocus then
          ActiveControl:=Devisi
       else
          SpeedButton1.Click
    end
    else
    begin
       SpeedButton1.Click;
    end;
  end
  else
  if Key=VK_Return then
  begin
    if ((KodeP='HT') or (KodeP='PT')) or ((KodeP='UHT') or (KodeP='UPT')) then
    begin
    if KodeP='HT' Then
    Begin
     With DM.QuCari2 do
     Begin
      Close;
      SQL.Clear;
      SQL.Add('select ISNULL(IsLokalorExim,0)IsLokalorExim from DBPOSTHUTPIUT where Kode='+QuotedStr(KodeP)+' and Perkiraan='+QuotedStr(Perkiraan.Text));
      Open;
     end;
      if DM.QuCari2.FieldByName('IsLokalorExim').AsBoolean then
      TampilHutPiut(KodeP, StatusAktivaP,Perkiraan.Text,'D',kodeCustSuppP);
    end
    else if KodeP='PT'Then
    Begin
    With DM.QuCari2 do
     Begin
      Close;
      SQL.Clear;
      SQL.Add('select ISNULL(IsLokalorExim,0)IsLokalorExim from DBPOSTHUTPIUT where Kode='+QuotedStr(KodeP)+' and Perkiraan='+QuotedStr(Perkiraan.Text));
      Open;
     end;
      if DM.QuCari2.FieldByName('IsLokalorExim').AsBoolean then
      TampilHutPiut(KodeP, StatusAktivaP,Perkiraan.Text,'D',kodeCustSuppP);
    end
    else
    With DM.QuCari2 do
     Begin
      Close;
      SQL.Clear;
      SQL.Add('select ISNULL(IsLokalorExim,0)IsLokalorExim from DBPOSTHUTPIUT where Kode='+QuotedStr(KodeP)+' and Perkiraan='+QuotedStr(Perkiraan.Text));
      Open;
      if DM.QuCari2.FieldByName('IsLokalorExim').AsBoolean then
     TampilHutPiut(KodeP, StatusAktivaP,Perkiraan.Text,'D',kodeCustSuppP);

     end;
//      if DM.QuCari2.FieldByName('IsLokalorExim').AsBoolean then
//     TampilHutPiut(KodeP, StatusAktivaP,Perkiraan.Text,'D',kodeCustSuppP);
   end;
  end;
end;

procedure TFrKasBank.NoUrutKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    mExit:=True;
    Close;
  end;
end;

procedure TFrKasBank.LawanExit(Sender: TObject);
begin
  if mValid then
  begin
    if DataBersyarat('select * from dbPerkiraan where Perkiraan=:0 and Tipe=1 and Perkiraan<>:1 ',[Lawan.Text,Perkiraan.Text],DM.Qucari) then
    begin
      Lawan.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      NamaLawan.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
      CekLawanDiPosting(Lawan.Text,'K',KodeL);
      Aktiva(StatusAktivaL,Lawan.Text,NoAktivaL);
    end
    else
    begin
      if (Mode.Text='BKK') then
         TampilIsiPerkiraan(10051, Perkiraan.Text, 'KAS', Lawan, namaLawan)
      else
      if (Mode.Text='BBK') then
         TampilIsiPerkiraan(10051, Perkiraan.Text, 'BANK', Lawan, namaLawan);
      if (Mode.Text='BKM') then
         TampilIsiPerkiraan(10051,Perkiraan.Text,'KAS' ,Lawan,namaLawan)
      else if (Mode.Text='BBM') then
         TampilIsiPerkiraan(10051,Perkiraan.Text,'BANK' ,Lawan,namaLawan);
      CekLawanDiPosting(Lawan.Text,'K',KodeL);
      Aktiva(StatusAktivaL,Lawan.Text,NoAktivaL);
    end;
    // Hutang Piutang
    if mNilaiStringEnter<>Lawan.Text then
    begin
      with DM.QuCari do
      begin
        Close;
        SQL.Clear;
        SQL.Add('update dbTempHutPiut set StatusUID=''D'' ');
        SQL.Add('where IDUser='+QuotedStr(IDUser)+' and NoBukti='+QuotedStr(NOBUKTI.Text));
        SQL.Add('  and TipeDK=''K'' and isnull(StatusUID,'''')<>'''' ');
        ExecSQL;
      end;
    end;
  end;
end;

procedure TFrKasBank.PerkiraanExit(Sender: TObject);
begin
  if mValid then
  begin
    if DataBersyarat('select * from dbPerkiraan '+
                     'where Perkiraan=:0 and Tipe=''1'' and perkiraan<>:1 ',[Perkiraan.text,Lawan.Text],DM.Qucari) then
    begin
      Perkiraan.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      NamaPerkiraan.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
      CekLawanDiPosting(Perkiraan.Text,'D',KodeP);
      Aktiva(StatusAktivaP,Perkiraan.Text,NoAktivaP);
    end
    else
    begin
      if (Mode.Text='BKM') then
         TampilIsiPerkiraan(10051, Lawan.Text, 'KAS', Perkiraan, namaPerkiraan)
      else if  (Mode.Text='BBM') then
         TampilIsiPerkiraan(10051, Lawan.Text, 'BANK', Perkiraan, namaPerkiraan);
      if (Mode.Text='BKK') then
         TampilIsiPerkiraan(10051, Lawan.Text, 'KAS', Perkiraan, namaPerkiraan)
      else if  (Mode.Text='BBK') then
         TampilIsiPerkiraan(10051, Lawan.Text, 'BANK', Perkiraan, namaPerkiraan);
      CekLawanDiPosting(Perkiraan.Text,'D',KodeP);
      Aktiva(StatusAktivaP,Perkiraan.Text,NoAktivaP);
    end;
    if mNilaiStringEnter<>Perkiraan.Text then
    begin
      with DM.QuCari do
      begin
        Close;
        SQL.Clear;
        SQL.Add('update dbTempHutPiut set StatusUID=''D'' ');
        SQL.Add('where IDUser='+QuotedStr(IDUser)+' and NoBukti='+QuotedStr(NOBUKTI.Text));
        SQL.Add('  and TipeDK=''D'' and isnull(StatusUID,'''')<>'''' ');
        ExecSQL;
      end;
    end;
  end;
end;

procedure TFrKasBank.NoUrutExit(Sender: TObject);
begin
  if mValid then
  begin
    If Length(NoUrut.Text)<5 then
    begin
      MessageDlg('Nomor urut kurang '+InttoStr(5-Length(NoUrut.Text))+' digit.',mtWarning,[MbOk],0);
      ActiveControl := NoUrut;
    end
    else
    begin
      TampilData(NOBUKTI.Text);
      if not QuTransaksi.IsEmpty then
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
      If Not Daftar_Nomor(Copy(Mode.Text,1,2),Nourut.Text,NoBukti.Text,IsMax) then
      begin
        MessageDlg('Nomor : '+NOBUKTI.Text+' telah digunakan oleh '+MyUser+'.',mtWarning,[MbOk],0);
        ActiveControl := NoUrut;
      end;

    end;
  end;
end;

procedure TFrKasBank.SimbolExit(Sender: TObject);
begin
  if mValid Then
  begin
    if length(Simbol.Text)=0 then
    begin
      KodeBrows:=20011;
      Application.CreateForm(TFrBrows, FrBrows);
      if (Mode.Text='BKK') or (Mode.Text='BKM') then
        FrBrows.NoKira1:='KAS'
      else if (Mode.Text='BBK') or (Mode.Text='BBM') then
        FrBrows.NoKira1:='BANK';
      FrBrows.ShowModal;
      if FrBrows.ModalResult=mrOk then
      begin
        Simbol.Text:=FrBrows.QuBrows.FieldByName('Simbol').AsString;
        mPerkiraan.Text:=FrBrows.QuBrows.FieldByName('Perkiraan').AsString;
        LNamaPerkiraan.Caption:='[ '+FrBrows.QuBrows.FieldByName('Keterangan').AsString+' ]';
        {
        if (mPerkiraan.Text<>'') then
        begin
          if (Mode.Text='BKM') or (Mode.Text='BBM')then
            Perkiraan.Text:=mPerkiraan.Text
          else
          if (Mode.Text='BKK') or (Mode.Text='BBK') then
            Lawan.Text:=mPerkiraan.Text;
        end;
        }
      end
      else
        ActiveControl:=Simbol;
    end;
    IsiNoBuktiBaru;
  end;
end;

procedure TFrKasBank.ValasEnter(Sender: TObject);
begin
  mValid:=True;
end;



procedure TFrKasBank.TampilIsiNoSPK;
begin
  KodeBrows:=91117;//101412;//101411;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:='%'+KOdebag.Text+'%';
  FrBrows.NoKira1:=KOdebag.Text;

  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.IsEmpty=False) then
  begin
    with FrBrows.QuBrows do
    begin
      kodebag.text:=FieldByName('NoBukti').AsString;
      {Kodebrg.Text:=FieldByName('BrgJ').AsString;
      LNamaBrg.Caption:='[ '+FieldByName('NamaBrgJ').AsString+' ]';
      Qnt.AsFloat:=FieldByName('QntJ').AsFloat;
      NoSat.AsInteger:=FieldByName('NosatJ').AsInteger;
      LNamaSat.Caption:='[ '+FieldByName('Satj').AsString+' ]'; }
    end;
  end
   else
    ActiveControl:=KOdebag;
end;


procedure TFrKasBank.KodeBagExit(Sender: TObject);
begin
 if mValid Then
  begin
    if Kodebag.Text<>'-' then
    begin
      if length(Kodebag.Text)=0 then TampilIsiNoSPK
    end
  end
end;

procedure TFrKasBank.KeteranganKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        with adoquery1 do
        begin
          Close;
          sql.Clear;
          sql.Add('select keterangan from dbtransaksi where note like ''%'+keterangan.Text+'%'' ');
          open;
     //   GetDataAutoComplete(adoquery1);

     //   EditComplete(key,keterangan,listValues);

        end;
end;

end.
