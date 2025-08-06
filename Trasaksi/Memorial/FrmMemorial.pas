unit FrmMemorial;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db,
  DBCtrls, ppBands, ppCtrls, ppDB, jpeg, ppPrnabl, ppClass, ppCache,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, RxNotify,DateUtils,
  ppStrtch, ppRichTx,ppviewr, frxClass, frxDBSet, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid,Variants, dxmdaset, Math;

type
  TFrMemorial = class(TForm)
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
    Label5: TLabel;
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
    Label2: TLabel;
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
    QuAktivaStatus: TStringField;
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
    QuTempHutPiutStatusUID: TStringField;
    QuTempHutPiutJumlahSaldo: TBCDField;
    QuTempHutPiutJumlahSaldoD: TBCDField;
    sp_TempHutPiut: TADOStoredProc;
    QuTempHutPiutMyKey: TStringField;
    QuTempHutPiutTipeDK: TStringField;
    QuAktivaNoBelakang2: TStringField;
    QuAktivaNoAktivaHd: TStringField;
    QuAktivaKelompok: TWordField;
    Keterangan: TEdit;
    QuTempHutPiutNoInvoice: TStringField;
    QuTempHutPiutValas_: TStringField;
    QuTempHutPiutKurs_: TBCDField;
    QuTempHutPiutKursBayar: TBCDField;
    QuTempHutPiutNOSO: TStringField;
    QuTempHutPiutNOSPB: TStringField;
    QuTempHutPiutKodeBrgCust: TStringField;
    QuTransaksiKodeBag: TStringField;
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
    procedure KeteranganEnter(Sender: TObject);
    procedure KeteranganExit(Sender: TObject);
    procedure ValasExit(Sender: TObject);
    procedure ValasEnter(Sender: TObject);

    procedure BitBtn1Click(Sender: TObject);

    procedure ModeEnter(Sender: TObject);

    procedure TerimaChange(Sender: TObject);
    procedure CetakClick(Sender: TObject);
    procedure BankKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DevisiExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    procedure DevisiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure NoUrutEnter(Sender: TObject);
    procedure NoUrutChange(Sender: TObject);
    procedure KodeBagEnter(Sender: TObject);
    procedure KodeBagExit(Sender: TObject);
    procedure tvMasterKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ModeChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure THPCChange(Sender: TObject);
    procedure PerkiraanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LawanExit(Sender: TObject);
    procedure PerkiraanExit(Sender: TObject);
    procedure NoUrutKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NoUrutExit(Sender: TObject);
  private
    { Private declarations }
    mNilaiStringEnter: String;
    mTampilkanHutPiut: boolean;
    procedure HapusTempHutPiut(pDK: String);
    procedure TampilIsiNoSPK;
    procedure IsiTempHutPiut(pDK, pKode, pNoBukti, pUrut, pValas, pKodeCustSupp, pPerkiraan: String);
  public
     mBukti,KodeRelasi,KodeCust,NoAktivaP,NoAktivaL,Model,StatusAktivaP,StatusAktivaL,StatusGiro,xLawan,xPerkiraan,
     xKodeP,xKodeL,xStatusAktivaP,xStatusAktivaL,xNoAktivaP,xNoAktivaL,isOpenP,isOpenL:string;
     mUrut,statusDK,XSusut,PerlakuanAktiva : integer;

     AdaSelisih : boolean;
     mSelisih, mKetKurangLebihBayar: String;
     mSisaPiutang,mLebihBayar,JumlahNilaiGiro,JumlahHutPiut:real;
     IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel,xmodalkoreksi : Boolean;
     BM : TBookMark;
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
     procedure TampilIsiPerkiraan(xkodebrows:Integer;xPerkiraan:String;Var xEdit : TEdit; Var xLabel:TLabel);
     procedure TampilHutPiut(xkode,xStatus,xPerkiraan,DK:String;Var xKodeCustSupp:TEdit);
     procedure SimpanDataHutPiut;
     procedure CloseQuerry;
    { Public declarations }
  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrMemorial: TFrMemorial;
  mValid,mExit,StatusSimpan: Boolean;
  Sat:String;
  IsTutup,mNosat:Integer;
  TipeTrans,PlusPPN,Nomor:String;
  mBulan,mTahun:string;
  Biaya,BiayaRp,IsiBrg,potongan,mKurs:Real;
  S:array[0..255]of char;
  YY,MM,DD : Word;
  IsGiroCair : Boolean;
  TipeGiro,JenisTransGiro,mValas : String;
  KodeTrans,KodeByr,Jenis :string;
  KodeP,kodeL,xTHPC: String;
  mPosisi,mNomor : Integer;


implementation
uses FrmBrows,MyProcedure,MyGlobal,MyModul, FrmMainMemorial,ATTerbilang, FrmMemorialGiro,
  FrmMemorialAktiva, FrmMemorialHutPiut;
{$R *.DFM}


//Cari Koma

procedure TFrMemorial.HapusTempHutPiut(pDK: String);
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


procedure TFrMemorial.TampilIsiNoSPK;
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

procedure TFrMemorial.IsiTempHutPiut(pDK, pKode, pNoBukti, pUrut, pValas, pKodeCustSupp, pPerkiraan: String);
begin
  //HapusTempHutPiut(pDK);
  if (pKode='HT') or (pKode='PT') or (pKode='UHT') or (pKode='UPT') then
  begin
    with DM.QuCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add('delete dbTempHutPiut where IDUser='+QuotedStr(IDUser));//+' and isnull(StatusUID,'''')='''' ');
      ExecSQL;
      SQL.Clear;
      SQL.Add('insert into dbTempHutPiut (NoFaktur, NoRetur, TipeTrans, KodeCustSupp, NoBukti, NoMsk, Urut, Tanggal, JatuhTempo, ');
      SQL.Add('Debet, Kredit, Valas, Kurs, DebetD, KreditD, KodeSales, Tipe, Perkiraan, Catatan, IDUser, TipeDK,noso,nospb,kodebrgcust,noinvoice)');
      SQL.Add('select Y.NoFaktur, Y.NoRetur, Y.TipeTrans, Y.KodeCustSupp, Y.NoBukti, Y.NoMsk, Y.Urut, Y.Tanggal, Y.JatuhTempo, ');
      SQL.Add('Y.Debet, Y.Kredit, Y.Valas, Y.Kurs, Y.DebetD, Y.KreditD, Y.KodeSales, Y.Tipe, Y.Perkiraan, Y.Catatan,'+QuotedStr(IDUser)+' IDUser, '+QuotedStr(pDK)+' ,noso,nospb,kodebrgcust,noinvoice');
      SQL.Add('from ');
      SQL.Add('  (select NoFaktur, KodeCustSupp, Perkiraan ');
      SQL.Add('  from vwHutPiut ');
      SQL.Add('  where KodeCustSupp='+QuotedStr(pKodeCustSupp)+' and Perkiraan='+QuotedStr(pPerkiraan));
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
      SQL.Add('and Y.Perkiraan='+QuotedStr(pPerkiraan));
      SQL.Add('and Y.NoBukti+right(''0000''+cast(Y.NoMsk as varchar(4)),4)<>'+QuotedStr(pNoBukti+FormatFloat('0000',StrToInt(pUrut))));
      ExecSQL;
      if (Model='koreksi') and (((pDK='D') and (pPerkiraan=QuTransaksiPerkiraan.AsString)) or ((pDK='K') and (pPerkiraan=QuTransaksiLawan.AsString))) then
      begin
        SQL.Clear;
        SQL.Add('insert into dbTempHutPiut (NoFaktur, NoRetur, TipeTrans, KodeCustSupp, NoBukti, NoMsk, Urut, Tanggal, JatuhTempo, ');
        SQL.Add('Debet, Kredit, Valas, Kurs, DebetD, KreditD, KodeSales, Tipe, Perkiraan, Catatan, IDUser, StatusUID, TipeDK,noso,nospb,kodebrgcust,noinvoice)');
        SQL.Add('select Y.NoFaktur, Y.NoRetur, Y.TipeTrans, Y.KodeCustSupp, Y.NoBukti, Y.NoMsk, Y.Urut, Y.Tanggal, Y.JatuhTempo, ');
        SQL.Add('Y.Debet, Y.Kredit, Y.Valas, Y.Kurs, Y.DebetD, Y.KreditD, Y.KodeSales, Y.Tipe, Y.Perkiraan, Y.Catatan,'+QuotedStr(IDUser)+' IDUser, ');
        SQL.Add(' ''N'' StatusUID ,noso,nospb,kodebrgcust,noinvoice');
        SQL.Add(', '+QuotedStr(pDK));
        SQL.Add('from vwHutPiut Y ');
        SQL.Add('where Y.NoBukti+right(''0000''+cast(Y.NoMsk as varchar(4)),4)='+QuotedStr(pNoBukti+FormatFloat('0000',StrToInt(pUrut))));
        SQL.Add('and Perkiraan='+QuotedStr(pPerkiraan)+' and KodeCustSupp='+QuotedStr(pKodeCustSupp));
        ExecSQL;
      end;
    end;
  end;
end;

function TFrMemorial.CariJumlahPembayaranHutPiut(pStatusHutPiut, pValas: String): Real;
begin
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    if pValas='IDR' then
    begin
      if (pStatusHutPiut='HT+') or (pStatusHutPiut='PT-')  Or (pStatusHutPiut='UHT-') or (pStatusHutPiut='UPT+') then
        SQL.Add('select sum(Kredit) Bayar from dbTempHutPiut')
      else
        SQL.Add('select sum(Debet) Bayar from dbTempHutPiut');
    end else
    begin
      if (pStatusHutPiut='HT+') or (pStatusHutPiut='PT-') Or (pStatusHutPiut='UHT-') or (pStatusHutPiut='UPT+') then
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

procedure TFrMemorial.CloseQuerry;
begin
  QuAktiva.Close;
  QuHutPiut.Close;
  QuHutPiutP.Close;
  QuHutPiutL.Close;
  QuGiro.Close;
  dxAktiva.Close;
  dxGiro.Close;
  dxHutPiut.Close;
end;



procedure TFrMemorial.SimpanDataHutPiut;
begin
  if not QuHutPiutP.IsEmpty then
  begin
    QuHutPiutP.Filtered := false;
    QuHutPiutP.Filter :='TipeTrans=''L'' and Nobukti='+QuotedStr(NOBUKTI.Text)+' and nomsk='+IntToStr(mUrut);
    QuHutPiutP.Filtered := True;
    QuHutPiutP.First;
    while not QuHutPiutP.Eof do
    begin
      if DataBersyarat('Select * from dbhutpiut where nobukti=:0 and nomsk=:1 and Urut=:2',
         [nobukti.text,murut,QuHutPiutP.FieldByname('urut').AsInteger],DM.Qucari) then
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

  if not QuHutPiutL.IsEmpty then
  begin
    QuHutPiutL.Filtered := false;
    QuHutPiutL.Filter :='TipeTrans=''L'' and Nobukti='+QuotedStr(NOBUKTI.Text)+' and nomsk='+IntToStr(mUrut);
    QuHutPiutL.Filtered := True;
    QuHutPiutL.First;
    while not QuHutPiutL.Eof do
    begin
      if DataBersyarat('Select * from dbhutpiut where nobukti=:0 and nomsk=:1 and Urut=:2',
         [nobukti.text,murut,QuHutPiutL.FieldByname('urut').AsInteger],DM.Qucari) then
         DM.QuCari.Edit
      else
         DM.QuCari.Append;
      with DM.QuCari do
      begin
        Fieldbyname('NoFaktur').Value:=QuHutPiutL.FieldByname('NoFaktur').Value;
        Fieldbyname('NoRetur').Value:=QuHutPiutL.Fieldbyname('NoRetur').Value;
        Fieldbyname('TipeTrans').Value:=QuHutPiutL.Fieldbyname('TipeTrans').Value;
        Fieldbyname('kodeCustSupp').Value:=QuHutPiutL.Fieldbyname('kodeCustSupp').AsString;
        Fieldbyname('Nobukti').Value:=QuHutPiutL.Fieldbyname('Nobukti').Value;
        Fieldbyname('NoMSK').Value:=QuHutPiutL.Fieldbyname('NoMSK').Value;
        Fieldbyname('Urut').Value:=QuHutPiutL.FieldByname('urut').Value;
        Fieldbyname('Tanggal').Value:=QuHutPiutL.Fieldbyname('Tanggal').Value;
        Fieldbyname('JatuhTempo').Value:=QuHutPiutL.Fieldbyname('JatuhTempo').Value;
        Fieldbyname('Debet').Value:=QuHutPiutL.Fieldbyname('Debet').Value;
        Fieldbyname('Kredit').Value:=QuHutPiutL.Fieldbyname('Kredit').Value;
        Fieldbyname('Valas').Value:=QuHutPiutL.Fieldbyname('Valas').Value;
        Fieldbyname('kurs').Value:=QuHutPiutL.Fieldbyname('Kurs').Value;
        Fieldbyname('DebetD').Value:=QuHutPiutL.Fieldbyname('DebetD').Value;
        Fieldbyname('KreditD').Value:=QuHutPiutL.Fieldbyname('KreditD').Value;
        Fieldbyname('KodeSales').Value:=QuHutPiutL.Fieldbyname('KodeSales').Value;
        Fieldbyname('Tipe').Value:=QuHutPiutL.Fieldbyname('Tipe').Value;
        Fieldbyname('Perkiraan').Value:=QuHutPiutL.Fieldbyname('Perkiraan').Value;
        Fieldbyname('Catatan').Value:=QuHutPiutL.Fieldbyname('Catatan').Value;
        Post;
      end;
      QuHutPiutL.Next;
    end;
  end;
end;

procedure TFrMemorial.TampilHutPiut(xkode,xStatus,xPerkiraan,DK:String;Var xKodeCustSupp: TEdit);
var xResult,IsLanjut : Boolean;
begin
  xResult := False;
  //IsLanjut:=Copy(xPerkiraan,1,3)<>'214';
  IsLanjut:=True;
  if (xStatus='PT+') or (xStatus='PT-') or (xStatus='HT+') or (xStatus='HT-') or
     (xStatus='UPT+') or (xStatus='UPT-') or (xStatus='UHT+') or (xStatus='UHT-') then
  begin
    {if not DataBersyarat('Select * from dbcustsupp where KodeCustSupp=:0 and Perkiraan=:1 and isaktif=1 ',
       [xKodecustSupp.text,xPerkiraan],dm.qucari) then
    begin
      KodeBrows := 1014;
      Application.CreateForm(TFrBrows,FrBrows);
      FrBrows.IsiData := xKodeCustSupp.Text;
      FrBrows.NoKira := xPerkiraan;
      FrBrows.ShowModal;
      if FrBrows.ModalResult=mrok then
      begin
        with FrBrows.QuBrows do
        begin                                   9
          if not IsEmpty then
          begin
            xKodeCustSupp.Text := FieldByname('KodeCustSupp').AsString;
            xResult := True;
          end
          else
          begin
            xKodeCustSupp.Text :='';
            xResult := False;
          end;
        end;
      end
      else
      begin
        xKodeCustSupp.Text :='';
        xResult := False;
      end;
    end
    else
      xResult := True;
    }
    if IsLanjut then
    begin
      if Model='koreksi' then
      begin
        if ((DK='D') and (QuTransaksiPerkiraan.AsString=xPerkiraan)) or ((DK='K') and (QuTransaksiLawan.AsString=xPerkiraan)) then
        begin
          if (DataBersyarat('Select a.* from dbCustSupp a left Outer join dbperkcustsupp b on b.kodecustsupp=a.kodecustsupp '+
                            'where a.KodeCustSupp=:0 and b.Perkiraan=:1 and isaktif=1 ',
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
        //else if (xStatus='UPT+') or (xStatus='UPT-') or (xStatus='UHT+') or (xStatus='UHT-')  then
        //   KodeBrows := 10143;
        Application.CreateForm(TFrBrows,FrBrows);
        if DK='D' then
        FrBrows.IsiData :=KodeCustSuppP.Text
        else if DK='K' then
        FrBrows.IsiData :=KodeCustSuppL.Text;

        if (xStatus='PT+') or (xStatus='PT-') or (xStatus='HT+') or (xStatus='HT-') or
           (xStatus='UPT+') or (xStatus='UPT-') or (xStatus='UHT+') or (xStatus='UHT-')  then
           FrBrows.NoKira := xPerkiraan;
        {else if (xStatus='UPT+') or (xStatus='UPT-') then
           FrBrows.NoKira := '1'
        else if  (xStatus='UHT+') or (xStatus='UHT-')   then
           FrBrows.NoKira := '0'; }
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
        Application.CreateForm(TFrMemorialHutPiut, FrMemorialHutPiut);
        FrMemorialHutPiut.TambahBtn.Enabled := ((xStatus='PT-') or (xStatus='HT-') or (xStatus='UPT-') or (xStatus='UHT-'));
        FrMemorialHutPiut.SpeedButton2.Enabled := ((xStatus='PT+') or (xStatus='HT+') or (xStatus='UPT+') or (xStatus='UHT+'));
        FrMemorialHutPiut.Caption :='';
        if xkode='HT' then
        begin
          if xStatus='HT-' then
             FrMemorialHutPiut.Caption := 'Pelunasan Hutang '+xPerkiraan
          else
          if xStatus='HT+' then
             FrMemorialHutPiut.Caption := 'Penambahan Hutang '+xPerkiraan;

        end
        else if xkode='PT' then
        begin
          if xStatus='PT-' then
             FrMemorialHutPiut.Caption := 'Pelunasan Piutang '+xPerkiraan
          else
          if xStatus='PT+' then
             FrMemorialHutPiut.Caption := 'Penambahan Piutang '+xPerkiraan;
        end
        else if xkode='UHT' then
        begin
          if xStatus='UHT-' then
             FrMemorialHutPiut.Caption := 'Pelunasan Uang Muka Hutang '+xPerkiraan
          else
          if xStatus='UHT+' then
             FrMemorialHutPiut.Caption := 'Penambahan Uang Muka Hutang '+xPerkiraan;
        end
        else if xkode='UPT' then
        begin
          if xStatus='UPT-' then
             FrMemorialHutPiut.Caption := 'Pelunasan Uang Muka Piutang '+xPerkiraan
          else
          if xStatus='UPT+' then
             FrMemorialHutPiut.Caption := 'Penambahan Uang Muka Piutang '+xPerkiraan;
        end;
        FrMemorialHutPiut.StatusHutPiut := xStatus;
        FrMemorialHutPiut.Kurs.Value := Kurs.Value;
        FrMemorialHutPiut.Valas.Text := Valas.Text;
        FrMemorialHutPiut.Total.Value := Jumlah.Value;
        FrMemorialHutPiut.StatusHutPiut := xStatus;
        FrMemorialHutPiut.PerkiraanhutPiut := xPerkiraan;
        FrMemorialHutPiut.Label1.Caption := xKodeCustSupp.Text;
        FrMemorialHutPiut.Tipe := xkode;
        FrMemorialHutPiut.DK := DK;
         if MyFindField('dbCustSupp','KodeCustSupp',xKodeCustSupp.Text)=true then
            FrMemorialHutPiut.Label2.Caption:='[ '+dm.QuCari.fieldbyname('NamaCustSupp').AsString+' ]';
        FrMemorialHutPiut.Label3.Caption:=FrMemorial.NOBUKTI.Text;
        IsiTempHutPiut(DK,xkode,NOBUKTI.Text,IntToStr(mUrut),Valas.Text,xKodeCustSupp.Text,xPerkiraan);
        FrMemorialHutPiut.ShowModal;
      end;
    end;
  end;
end;

procedure TFrMemorial.TampilIsiPerkiraan(xkodebrows:Integer;xPerkiraan:String;Var xEdit : TEdit; Var xLabel:TLabel);
begin
  KodeBrows:=xkodebrows;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=xedit.Text;
  FrBrows.NoKira :=xPerkiraan;
  frbrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    if not FrBrows.QuBrows.IsEmpty then
    begin
      xedit.Text:=FrBrows.QuBrows.fieldbyname('Perkiraan').AsString;
      xLabel.Caption:='[ '+FrBrows.QuBrows.fieldbyname('Keterangan').AsString+' ]';
    end
    else
      FrMemorial.ActiveControl := xedit;
  end
  else
    FrMemorial.ActiveControl := xedit;
end;

procedure TFrMemorial.TampilDataAktiva(mNoAktivaP,mNoAktivaL,mGroupaktivaP,mGroupAktivaL,mDevisi,mBagian:String);
begin
  if not dxAktiva.Active then
  begin
    with QuAktiva do
    begin
      close;
      sql.Clear;
      Sql.Add('Select *,'''' Status,1 Xsusut,0 PerlakuanAktiva from dbAktiva ');
      SQL.Add('where Perkiraan in (:0,:1) and Devisi=:2 ');
      Prepared;
      Parameters[0].Value := mNoAktivaP;
      Parameters[1].Value := mNoAktivaL;
      Parameters[2].Value := mDevisi;
      Open;
    end;
    with FrMemorial.dxAktiva do
    begin
      Close;
      CreateFieldsFromDataSet(QuAktiva);
      LoadFromDataSet(FrMemorial.QuAktiva);
      Open;
      (FieldByName('Quantity') as TNumericField).DisplayFormat :=',0.00';
      (FieldByName('Persen') as TNumericField).DisplayFormat :=',0.00';
      (FieldByName('Persenbiaya1') as TNumericField).DisplayFormat :=',0.00';
      (FieldByName('PersenBiaya2') as TNumericField).DisplayFormat :=',0.00';
    end;
  end;
end;

procedure TFrMemorial.SimpanDataAktiva(pChoice: String);
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
        QuAktivaNoBelakang2.Value := dxAktiva.Fieldbyname('Nobelakang2').Value;
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

procedure TFrMemorial.TampilAktiva(Var xNoAktiva,xStatus:string;xGroupaktiva:String);
begin
  DataBersyarat('Select A.*,B.Keterangan NamaGroupAktiva,'+
                '       C.Keterangan NamaAkumulasi, '+
                '       Case when A.Tipe=''L'' then ''[L]urus'' '+
                '            when A.Tipe=''M'' then ''[M]enurun'' '+
                '            when A.Tipe=''P'' then ''[P]ajak'' '+
                '            else '''' '+
                '       end Metode,d.Namabag,e.NamaDevisi,A.Kelompok '+
                'from dbaktiva a '+
                'left Outer join dbPerkiraan b on b.perkiraan=a.Nomuka '+
                'left Outer join dbperkiraan c on c.perkiraan=a.Akumulasi '+
                'Left Outer Join dbBagian d on d.kodebag=a.kodebag '+
                'left outer join dbDevisi e on e.devisi=a.devisi '+
                'where a.Perkiraan=:0 and a.Devisi=:1 and a.Nomuka=:2',[xNoAktiva,Devisi.text,xGroupAktiva],dm.quCari);
  if not dm.QuCari.IsEmpty then
  begin
    Application.CreateForm(TfrMemorialAktiva, FrMemorialAktiva);
    with frMemorialAktiva,DM.QuCari do
    begin
      IsSimpan := False;
      Perkiraan.Text := FieldByname('Perkiraan').AsString;
      Nourut.Text := Fieldbyname('NoBelakang').AsString;
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
      frMemorialAktiva.ShowModal;
      if frMemorialAktiva.ModalResult=mrok then
         xNoAktiva := frMemorialAktiva.KodeAktiva.Text;
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
          Application.CreateForm(TfrMemorialAktiva, FrMemorialAktiva);
          with frMemorialAktiva do
          begin
            IsSimpan := True;
            Perkiraan.Text := FieldByname('Perkiraan').AsString;
            Nourut.Text := Fieldbyname('NoBelakang').AsString;
            Keterangan.Lines.Text := FieldByname('Keterangan').AsString;
            isHeader.ItemIndex := FieldByname('kelompok').AsInteger;
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
            xNoAktiva := KodeAktiva.Text;
            StsKasBank :='I';
            frMemorialAktiva.ShowModal;
            if frMemorialAktiva.ModalResult=mrok then
               xNoAktiva := frMemorialAktiva.KodeAktiva.Text;
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
          Application.CreateForm(TfrMemorialAktiva, FrMemorialAktiva);
          with frMemorialAktiva,DM.QuCari do
          begin
            IsSimpan := False;
            Perkiraan.Text := FieldByname('Perkiraan').Value;
            Label26.Caption :='[ '+FieldByname('NamaGroupAktiva').Value+' ]';
            Devisi.Text := FrMemorial.Devisi.Text;
            Label32.Caption := FrMemorial.LDevisi.Caption;
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
            frMemorialAktiva.ShowModal;
            if frMemorialAktiva.ModalResult=mrok then
               xNoAktiva := frMemorialAktiva.KodeAktiva.Text;
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
      Application.CreateForm(TfrMemorialAktiva, FrMemorialAktiva);
      with frMemorialAktiva,DM.QuCari do
      begin
        IsSimpan := False;
        Perkiraan.Text := FieldByname('Perkiraan').Value;
        TglPengakuan.Date := TANGGAL.Date;
        Label26.Caption :='[ '+FieldByname('NamaGroupAktiva').Value+' ]';
        KodeAktiva.Text := FieldByname('Perkiraan').Value;
        frMemorialAktiva.Devisi.Text := FrMemorial.Devisi.Text;
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
        frMemorialAktiva.ShowModal;
        if frMemorialAktiva.ModalResult=mrok then
           xNoAktiva := frMemorialAktiva.KodeAktiva.Text;
      end;
    end;
  end;
end;

procedure TFrMemorial.Aktiva(xStatus,mPerkiraan:String; Var xNoAktiva:String);
begin
  if (xStatus='AKV+') or (xStatus='AKM+') or (xStatus='AKV-') or (xStatus='AKM-')then
     TampilAktiva(xNoAktiva,xStatus,mPerkiraan);
end;

function TFrMemorial.TransaksiSudahCair(mHP, mNoBukti: String; mUrut: Integer): Boolean;
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

procedure TFrMemorial.SimpanDataGiro(pChoice: String);
begin
  if ((pChoice = 'I') or (pChoice = 'U')) and ((dxGiro.Active = True) and (not dxGiro.IsEmpty)) then
    begin
      if (Copy(THPC.Text,2,1) = 'H') and (Mode.Text = 'BKK')then
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
          QuGiroKeterangan.Value:=dxGiro.Fieldbyname('Keterangan').Value;
          quGiro.Post;
          dxGiro.Next;
        end;
        quGiro.UpdateBatch(arAll);
        dxGiro.Close;
      end
      else  if (Copy(THPC.Text,2,1) = 'H') and (Mode.Text = 'BBK') then
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
      end
      else if (Copy(THPC.Text,2,1) = 'P') and (Mode.Text = 'BKM')  then
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
          quGiro.Post;
          dxGiro.Next;
        end;
        quGiro.UpdateBatch(arAll);
        dxGiro.Close;
      end
      else if (Copy(THPC.Text,2,1) = 'P') and ((Mode.Text = 'BKK') or (Mode.Text = 'BBM'))then
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

procedure TFrMemorial.TampilDataGiro(pTHPC, pNoBukti,pStatusGiro: String; pUrut: Integer);
var nRecNoGiro: Integer;
begin
  if not dxGiro.Active then
  begin
    with FrMemorial.QuGiro do
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
      Sql.add('Kodevls,Kurs,BuktiBuka,TglBuka,UrutBuktiBuka,BuktiCair,TglCair,UrutBuktiCair,Tipe,Keterangan,KeteranganCair');
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
    with FrMemorial.dxGiro do
    begin
      Close;
      CreateFieldsFromDataSet(FrMemorial.QuGiro);
      LoadFromDataSet(FrMemorial.QuGiro);
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

procedure TFrMemorial.IsiNoBuktiBaru;
begin
  DecodeDate(Date,YY,MM,DD);
  If DayOfTheMonth(Date)<=DD then
     DD:=DayOfTheMonth(date);
  Try
    TANGGAL.Date := EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),DD);
  Except
    TANGGAL.Date := EndOfAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln))
  end;
  //Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),Mode.Text,Nomor,NomorBukti,Tanggal.Date,'',False);      asli
  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),Mode.Text,Nomor,NomorBukti,Tanggal.Date,'0',False);
  NoUrut.Text := NomorBukti;
  NOBUKTI.Text := Nomor;
end;

procedure TFrMemorial.UpdateTransaksi;
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
      SQL.Add('Update dbtransaksi set Note=:0, Tanggal=:1 ');
      SQL.Add('where nobukti='+QuotedStr(NOBUKTI.Text));
      Prepared;
      Parameters[0].Value:=Terima.Text;
      Parameters[1].Value:=TANGGAL.Date;
      ExecSQL;
   end;
end;

Function TFrMemorial.KursValas(Tgl1,tgl2:Tdatetime;Valas:String):Real;
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


procedure TFrMemorial.AmbilDataAktiva(NoPerkiraan,Devisi:String);
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
   with FrMemorialAktiva do
   begin
      FrMemorialAktiva.Perkiraan.Text:=DM.QuCari.fieldbyname('Perkiraan').AsString;
      FrMemorialAktiva.Keterangan.Text:=DM.QuCari.fieldbyname('Keterangan').AsString;
      FrMemorialAktiva.Kuantum.Value:=DM.QuCari.fieldbyname('Quantity').AsFloat;
      FrMemorialAktiva.Susut.Value:=DM.QuCari.fieldbyname('Persen').AsFloat;
      FrMemorialAktiva.TglPengakuan.Date:=DM.QuCari.fieldbyname('Tanggal').AsDateTime;
      FrMemorialAktiva.TipeAktiva.ItemIndex:=DM.QuCari.fieldbyname('TipeAktiva').Value;
      FrMemorialAktiva.AkSusut.Text:=DM.QuCari.fieldbyname('Akumulasi').AsString;
      FrMemorialAktiva.BiayaSusut.Text:=DM.QuCari.fieldbyname('biaya').AsString;
      FrMemorialAktiva.BiayaSusut2.Text:=DM.QuCari.fieldbyname('biaya2').AsString;
      FrMemorialAktiva.PersenSusut1.Value:=DM.QuCari.fieldbyname('Persenbiaya1').AsFloat;
      FrMemorialAktiva.PersenSusut2.Value:=DM.QuCari.fieldbyname('Persenbiaya2').AsFloat;
      FrMemorialAktiva.Perkiraan.Enabled:=false;
      FrMemorialAktiva.Keterangan.Enabled:=false;
      FrMemorialAktiva.Kuantum.Enabled:=false;
      FrMemorialAktiva.Susut.Enabled:=false;
      FrMemorialAktiva.TglPengakuan.Enabled:=false;
      FrMemorialAktiva.TipeAktiva.Enabled:=false;
      FrMemorialAktiva.AkSusut.Enabled:=false;
      FrMemorialAktiva.BiayaSusut.Enabled:=false;
      FrMemorialAktiva.ActiveControl:=BitBtn1;
   end;

end;

procedure TFrMemorial.SimpanData(Choice: String);
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
        Parameters[30].Value:= kodeL;
        Parameters[31].Value:= StatusGiro;
        Parameters[32].Value:= '';
        Parameters[33].Value:= XSusut;
        Parameters[34].Value:= PerlakuanAktiva;
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
       SimpanDataHutPiut;
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
        LoggingData(IDUser,Choice,Mode.Text,'',
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
        LoggingData(IDUser,Choice,Mode.Text,'',
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

function TFrMemorial.CekLawanDiPosting(mLawan,DK : String;var Kode:String):Boolean;
begin
   Result := False;
   with DM.QuCari do
   begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from dbPostHutPiut where perkiraan=:0 ');
      Parameters[0].Value:=mLawan;
      Open;
   end;
   if not DM.QuCari.IsEmpty then
   begin
     Kode := DM.QuCari.FieldByname('kode').AsString;
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

procedure TFrMemorial.RefreshAll;
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
   NamaLawan.Caption:='[ . . . ]';
   THPC.ItemIndex:=0;
end;

procedure TFrMemorial.ClearDetailPanel;
begin
  Lawan.Text:='';
  Perkiraan.Text:='';
  Jumlah.Value:=0;
  NamaLawan.Caption:='[ . . . ]';
  NamaPerkiraan.Caption:='[ . . . ]';
  LDevisi.Caption := '[ . . . ]';
  LNamaBag.Caption:= '[ . . . ]';
  Kurs.Value:=mKurs;
  Kurs.Enabled:=TRUE;
  Valas.Text:=mValas;
  StatusSimpan:=false;
  Lawan.Enabled:=true;
  KETERANGAN.Text:=Terima.Text;
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
  
  NoBon.Text:='-';
  DataBersyarat('Select *,:1 from dbDevisi',[''],dm.Qucari);
  if (DM.QuCari.RecordCount>1) and (not dm.QuCari.IsEmpty) then
  begin
    if Devisi.CanFocus then
      ActiveControl:=Devisi;
  end
  else if (dm.QuCari.RecordCount=1) and (not dm.QuCari.IsEmpty) then
  begin
    Devisi.Text := dm.QuCari.FieldByname('devisi').AsString;
    LDevisi.Caption := '[ '+dm.QuCari.FieldByname('Namadevisi').AsString+' ]';
    Devisi.Enabled := false;
  end;
end;


procedure TFrMemorial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FrMainMemorial.Acetak then  Action:=cafree
  else
  if mExit=true then
  begin
    FrMainMemorial.mPosisi:=mBukti;
    FrMainMemorial.xStatus := 'M';
    Hapus_Daftar_Nomor_User(Copy(Mode.Text,1,2),IDUser);
    BM := FrMainMemorial.QuMaster.GetBookmark;
    FrMainMemorial.GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
    if FrMainMemorial.QuMaster.BookmarkValid(BM) then
    begin
      try
       FrMainMemorial.QuMaster.GotoBookmark(BM);
      finally
       FrMainMemorial.QuMaster.FreeBookmark(BM);
      end
    end else
    begin
      FrMainMemorial.QuMaster.FreeBookmark(BM);
      //FrMainMemorial.QuMaster.First;
      FrMainMemorial.QuMaster.Last
    end;
    Action:=cafree;
  end
  else
  begin
    Action:=caNone;
  end;
end;

procedure TFrMemorial.TampilData(No_bukti:string);
begin
   with QuTransaksi do
   begin
      Close;
      Parameters[0].Value:=No_Bukti;
      Open;
      BiayaRp :=0;
      while not Eof do
      begin
        BiayaRp := BiayaRp + QuTransaksiJumlahRp.AsCurrency;
        next;
      end;
      if IsEmpty then
         mUrut := 1
   end;
end;

procedure TFrMemorial.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key=13 then SendMessage(Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrMemorial.FormShow(Sender: TObject);
begin
  xModalKoreksi := FrMainMemorial.ModalKoreksi;
  mValid:=False;
  IsTambah:=FrMainMemorial.IsTambah;
  IsKoreksi:=FrMainMemorial.IsKoreksi;
  IsHapus:=FrMainMemorial.IsHapus;
  IsCetak:=FrMainMemorial.IsCetak;
  If xModalKoreksi = False then
  begin
    RefreshAll;
    IsiNoBuktiBaru;
    TampilData(NoBukti.Text);
    NoUrut.Enabled:=True;
    NoUrut.ReadOnly:=False;
  end
  else
  Begin
    NOBUKTI.Text:=FrMainMemorial.QuMasterNoBukti.AsString;
    Hapus_Daftar_Nomor_User (Copy(Mode.Text,2,2),IDUser);
    Daftar_Nomor(Copy(Mode.Text,2,2),NoUrut.Text,NOBUKTI.Text,IsMax);
    TampilData(NOBUKTI.Text);
    NoUrut.Text := QuTransaksinourut.AsString;
    TANGGAL.Date := QuTransaksiTanggal.AsDateTime;
    Terima.Text := QuTransaksiNote.AsString;
    Mode.ItemIndex := Mode.Items.IndexOf(QuTransaksiTipeTrans.AsString);
    NoUrut.Enabled:=False;
    Mode.Enabled := False;
    Tanggal.Enabled:=CekPeriode(IDUser,TANGGAL.Date);
  end;
end;

procedure TFrMemorial.PerkiraanEnter(Sender: TObject);
begin
  mValid:=true;
  mNilaiStringEnter:=(Sender as TEdit).Text;
  mTampilkanHutPiut:=False;
end;

procedure TFrMemorial.TANGGALKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrMemorial.ModeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=vk_escape then
  begin
     Close;
  end
  else if Key=vk_Return then
  begin
   
  end;
end;

procedure TFrMemorial.wwDBGrid1Exit(Sender: TObject);
begin
FrMemorial.KeyPreview:=true;
TambahBtn.Visible:=false;
HapusBtn.Visible:=false;
KoreksiBtn.Visible:=false;
Cetak.Visible:=false;
end;

procedure TFrMemorial.TambahBtnClick(Sender: TObject);
begin
  if IsTambah then
  begin
    Model:='write';
    Panel3.Visible:=true;
    Panel1.Enabled:=false;
    Panel2.Enabled:=false;
    Panel3.Enabled:=True;
    Lawan.Enabled:=true;
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
    //mUrut := QuTransaksi.RecordCount+1;
    Valas.Text := 'IDR';
    isOpenP:='';
    isOpenL:='';
    kodeCustSuppP.Text:='';
    kodeCustSuppL.Text:='';
    KodeP := '';
    xKodeP := KodeP;
    kodeL := '';
    xKodeL := kodeL;
    NoAktivaP := '';
    xNoAktivaP := NoAktivaP;
    NoAktivaL := '';
    xNoAktivaL := NoAktivaL;
    StatusAktivaP := '';
    xStatusAktivaP := StatusAktivaP;
    StatusAktivaL := '';
    xStatusAktivaL := StatusAktivaL;
    {
    DataBersyarat('Select *,:1 from dbDevisi',[''],dm.Qucari);
    if (dm.QuCari.RecordCount>1) and (not dm.QuCari.IsEmpty) then
    begin
      if Devisi.CanFocus then
         ActiveControl:=Devisi;
    end
    else if (dm.QuCari.RecordCount=1) and (not dm.QuCari.IsEmpty) then
    begin
      ActiveControl := KodeBag;
      Devisi.Text := dm.QuCari.FieldByname('devisi').AsString;
      LDevisi.Caption := '[ '+dm.QuCari.FieldByname('Namadevisi').AsString+' ]';
      Devisi.Enabled := false;
    end;
    }
    Devisi.Text:='01';
    ActiveControl:=Valas;
  end
  else
  begin
     ShowMessage('Anda tidak berhak Menambah Data');
  end;
end;

procedure TFrMemorial.KoreksiBtnClick(Sender: TObject);
begin
 if IsKoreksi then
 begin
   mValid:=false;
   model:='koreksi';
   if QuTransaksi.IsEmpty=false then
   begin
     Panel3.Visible:=true;
     Panel1.Enabled:=false;
     Panel2.Enabled:=false;
     Panel3.Enabled:=True;
     mUrut:=QuTransaksi.fieldbyname('Urut').AsInteger;
     Lawan.Text:=QuTransaksi.fieldbyname('Lawan').AsString;
     xLawan := Lawan.Text;
     NamaLawan.Caption:='[ '+QuTransaksiNamaLawan.AsString+' ]';
     Perkiraan.Text:=QuTransaksiPerkiraan.AsString;
     xPerkiraan := Perkiraan.Text;
     NamaPerkiraan.Caption:='[ '+QuTransaksinamaPerkiraan.AsString+' ]';
     Devisi.Text := QuTransaksiDevisi.AsString;
     LDevisi.Caption:='[ '+QuTransaksiNamaDevisi.AsString+' ]';
     KodeBag.Text := QuTransaksiKodeBag.AsString;
     LNamaBag.Caption:='[ '+QuTransaksiNamaBag.AsString+' ]';
     Keterangan.Text:=QuTransaksi.fieldbyname('Keterangan').AsString;
     Valas.Text:=QuTransaksi.fieldbyname('Valas').AsString;
     Kurs.Value:=QuTransaksi.fieldbyname('Kurs').Value;
     Jumlah.Value:=QuTransaksi.fieldbyname('Debet').Value+QuTransaksi.fieldbyname('Kredit').Value;
     StatusGiro := QuTransaksiStatusGiro.AsString;
     THPC.ItemIndex:=THPC.Items.IndexOf(QuTransaksi.fieldbyname('myTPHC').AsString);
     xTHPC := THPC.Items.Strings[THPC.itemIndex];
     Lawan.Enabled:=true;
     ActiveControl:=Perkiraan;
     kodeCustSuppP.Text:=QuTransaksiCustSuppP.AsString;
     kodeCustSuppL.Text:=QuTransaksiCustSuppL.AsString;
     KodeP := QuTransaksiKodeP.AsString;
     xKodeP := KodeP;
     kodeL := QuTransaksiKodeL.AsString;
     xKodeL := kodeL;
     NoAktivaP := QuTransaksiNoAktivaP.AsString;
     xNoAktivaP := NoAktivaP;
     NoAktivaL := QuTransaksiNoAktivaL.AsString;
     xNoAktivaL := NoAktivaL;
     StatusAktivaP := QuTransaksiStatusAktivaP.AsString;
     xStatusAktivaP := StatusAktivaP;
     if (KodeP='HT') or (KodeP='PT') then
     begin
       HapusTempHutPiut('D');
       IsiTempHutPiut('D',xKodeP,NOBUKTI.Text,IntToStr(mUrut),Valas.Text,kodeCustSuppP.Text,Perkiraan.Text);
     end;
     StatusAktivaL := QuTransaksiStatusAktivaL.AsString;
     xStatusAktivaL := StatusAktivaL;
     if (KodeL='HT') or (KodeL='PT') then
     begin
       HapusTempHutPiut('K');
       IsiTempHutPiut('K',xKodeL,NOBUKTI.Text,IntToStr(mUrut),Valas.Text,kodeCustSuppL.Text,Lawan.Text);
     end;
     NoBon.Text := QuTransaksi.fieldbyname('NoBon').AsString;
     StatusGiro := QuTransaksiStatusGiro.AsString;
     isOpenP:='';
     isOpenL:='';
     if (Copy(THPC.Text,2,1)='P') or (Copy(THPC.Text,2,1)='H') then
     begin
        if StatusGiro<>'' then
        begin
          Application.CreateForm(TFrMemorialGiro,FrMemorialGiro);
          FrMemorialGiro.Showmodal;
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
   end else
   begin
      ShowMessage('Tidak ada transaksi yang dikoreksi !');
      ActiveControl:=cxGrid1;
   end;
 end
 else
 begin
     ShowMessage('Anda tidak berhak Koreksi Data');
 end;
end;

procedure TFrMemorial.HapusBtnClick(Sender: TObject);
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
              if QuTransaksi.Fieldbyname('CustSuppP').AsString<>'' then
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
                  SQL.Add('where buktibuka=:0 and urutbuktibuka=:1 and Tipe=''PT'' ');
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
                  SQL.Add('where buktibuka=:0 and urutbuktibuka=:1 and Tipe=''HT'' ');
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

procedure TFrMemorial.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  Panel1.Enabled:=true;
  Panel2.Enabled:=true;
  Panel3.Enabled:=false;
  Panel3.Visible:=false;
  ActiveControl:=cxGrid1;
  ClearDetailPanel;
  CloseQuerry;
end;

procedure TFrMemorial.LawanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Escape then
  begin
     SpeedButton1.Click;
  end
  //else if (Key=VK_Return) or (key=Vk_Tab) then
  else if (Key=VK_Return) then
  begin
    {if mValid then
    begin
       if DataBersyarat('select * from dbPerkiraan where Perkiraan=:0 and tipe=1 and Perkiraan<>:1',[lawan.text,Perkiraan.Text],DM.Qucari) then
      begin
        Lawan.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
        NamaLawan.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
        CekLawanDiPosting(Lawan.Text,'K',KodeL);
        Aktiva(StatusAktivaL,Lawan.Text,NoAktivaL);
      end
      else
      begin
        TampilIsiPerkiraan(10051,Perkiraan.Text,Lawan,namaLawan);
        CekLawanDiPosting(Lawan.Text,'K',KodeL);
        Aktiva(StatusAktivaL,Lawan.Text,NoAktivaL);
      end;
      TampilHutPiut(KodeL,StatusAktivaL,Lawan.Text,'K',kodeCustSuppL);
    end;}
    if ((KodeL='HT') or (KodeL='PT')) or ((KodeL='UHT') or (KodeL='UPT')) then
    begin
      {With DM.QuCari2 do
      Begin
      Close;
      SQL.Clear;
      SQL.Add('select ISNULL(IsLokalorExim,0)IsLokalorExim from DBPOSTHUTPIUT where Kode='+QuotedStr(KodeP)+' and Perkiraan='+QuotedStr(Perkiraan.Text));
      Open;
      end;
      if DM.QuCari2.FieldByName('IsLokalorExim').AsBoolean then     }
      TampilHutPiut(KodeL,StatusAktivaL,Lawan.Text,'K',KodeCustSuppL);
    end;
  end;
end;

procedure TFrMemorial.KeteranganKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrMemorial.TANGGALExit(Sender: TObject);
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

procedure TFrMemorial.TANGGALEnter(Sender: TObject);
begin
mValid:=true;
end;

procedure TFrMemorial.KeteranganEnter(Sender: TObject);
begin
KeyPreview:=false;
end;

procedure TFrMemorial.KeteranganExit(Sender: TObject);
begin
KeyPreview:=true;
end;

procedure TFrMemorial.ValasExit(Sender: TObject);
var i : Integer;
begin
  if (mValid) Then
  begin
    SetLength(xValue,3);
    if DataBersyarat('select kodevls,namavls,kurs from dbValas where kodevls=:0',[Valas.text],DM.Qucari) then
    begin
      Valas.Text :=DM.QuCari.FieldByname('Kodevls').AsString;
      if (model<>'koreksi')  then
         kurs.Value :=DM.QuCari.FieldByname('kurs').Value;
    end
    else
    begin
      TampilIsiData(FrMemorial,Valas,LValas,1006,'kodevls','Namavls');
      for I := LOW(xValue) to High(xValue) do
      begin
        if (I= High(xValue)) and (model<>'koreksi') then
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

procedure TFrMemorial.ValasEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrMemorial.BitBtn1Click(Sender: TObject);
var xJumlahHutPiut: Real;
begin
   if CekPeriode(IdUser,TANGGAL.Date)=true then
   begin
      if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
      begin
        if (Jumlah.Value<>0) and (Kurs.Value<>0) then
        begin
          if model='write' then
          begin
            xJumlahHutPiut:=Jumlah.Value;
            if (KodeP='HT') or (KodeP='PT') then
              xJumlahHutPiut:=CariJumlahPembayaranHutPiut(StatusAktivaP,Valas.Text)
            else if (KodeL='HT') or (KodeL='PT') then
              xJumlahHutPiut:=CariJumlahPembayaranHutPiut(StatusAktivaL,Valas.Text);
            if (Copy(Perkiraan.Text,1,3)='214') or (Copy(Lawan.Text,1,3)='214') then
                xJumlahHutPiut:=Jumlah.Value;
            if RoundTo(xJumlahHutPiut,-2)<>RoundTo(Jumlah.Value,-2) then
            begin
              MessageDlg('Jumlah Kartu Hutang / Piutang tidak sama dengan '+FormatFloat(',0.00',Jumlah.AsFloat) ,mtError,[mbOK],0);
            end else
            begin
              SimpanData('I');
              ClearDetailPanel;
              HapusTempHutPiut('D');
              HapusTempHutPiut('K');
              //if Devisi.CanFocus then
              //   ActiveControl:= Devisi
              //else
              //   ActiveControl:= KodeBag;
              ActiveControl:=Valas;
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
                end;}
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
            if (KodeP='HT') or (KodeP='PT') then
              xJumlahHutPiut:=CariJumlahPembayaranHutPiut(StatusAktivaP,Valas.Text)
            else if (KodeL='HT') or (KodeL='PT') then
              xJumlahHutPiut:=CariJumlahPembayaranHutPiut(StatusAktivaL,Valas.Text);
            if (Copy(Perkiraan.Text,1,3)='214') or (Copy(Lawan.Text,1,3)='214') then
                xJumlahHutPiut:=Jumlah.Value;  
            if RoundTo(xJumlahHutPiut,-2)<>RoundTo(Jumlah.Value,-2) then
            begin
              MessageDlg('Jumlah Kartu  Hutang / Piutang tidak sama dengan '+FormatFloat(',0.00',Jumlah.AsFloat) ,mtError,[mbOK],0);
            end else
            begin
              SimpanData('U');
              Panel1.Enabled:=true;
              Panel2.Enabled:=true;
              Panel3.Enabled:=false;
              Panel3.Visible:=false;
              ClearDetailPanel;
              ActiveControl:=cxGrid1;
            end;
          end;
        end;
        CloseQuerry;
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

procedure TFrMemorial.ModeEnter(Sender: TObject);
begin
 mvalid:=true;
 mExit:=true;
end;

procedure TFrMemorial.TerimaChange(Sender: TObject);
begin
   KETERANGAN.Text:=Terima.Text;
end;

procedure TFrMemorial.CetakClick(Sender: TObject);
var N1, N2, N3 : string;
    T2 : integer;
    Tot : byte;
    TempCode : String;
    xTerbilang : TATTerbilang;
begin
 if IsCetak then
 begin
  TampilData(NOBUKTI.Text);
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
  xTerbilang.Number := (N1);
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
       TempCode:=N1+' Rupiah '+N2+' Sen';
  end
  else
    TempCode:=N1+' Rupiah  ';


  if  BiayaRp>0 then
      myTerbilang := 'Terbilang : '+TempCode
  else
      myTerbilang := 'Terbilang : Minus '+TempCode;
  myTerbilang := UpperCase(myTerbilang);

  frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Nota\BuktiMemorial.fr3');
  frxReport1.ShowReport;

 end
 else
 begin
     ShowMessage('Anda tidak berhak Cetak Data');
 end;
end;

procedure TFrMemorial.BankKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Escape then
   begin
      mValid:=false;
      Lawan.Enabled:=true;
      Panel2.Enabled:=true;
      ClearDetailPanel;
      if model='write' then
         ActiveControl:=Lawan
      else
      begin
         SpeedButton1.Click;
      end;
   end;
end;

procedure TFrMemorial.DevisiExit(Sender: TObject);
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
      TampilIsiData(FrMemorial,Devisi ,LDevisi,1004,'Devisi','NamaDevisi');
  end;
end;

procedure TFrMemorial.FormDestroy(Sender: TObject);
begin
 FrMemorial:=nil;
end;

procedure TFrMemorial.FormCreate(Sender: TObject);
begin
  Hapus_Daftar_Nomor_User(Mode.Text,IDUser);
  StatusAktivaP:='';
  StatusAktivaL:='';
  KodeP := '';
  kodeL := '';
  StatusGiro :='';
  isOpenP:='';
  isOpenL:='';
  statusDK :=1;
end;

procedure TFrMemorial.DevisiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Escape then
  begin
    SpeedButton1.Click;
  end
end;

procedure TFrMemorial.frxReport1GetValue(const VarName: String;
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

procedure TFrMemorial.NoUrutEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrMemorial.NoUrutChange(Sender: TObject);
begin
  if mValid then
  begin
    if Length(NoUrut.Text)=5 then
    begin
      Konfig(Mode.Text,Nourut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date,False);
      NOBUKTI.Text := F1+Separator+F2+Separator+F3+Separator+F4;
    end
    else
      ActiveControl := NoUrut;
  end;
end;

procedure TFrMemorial.KodeBagEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrMemorial.KodeBagExit(Sender: TObject);
begin
  {SetLength(xValue,2);
  if mValid then
  begin
    if DataBersyarat('select * from dbbagian where kodebag=:0',[kodebag.text],DM.Qucari) then
    begin
      KodeBag.Text :=DM.QuCari.FieldByname('Kodebag').AsString;
      LNamaBag.Caption:='[ '+DM.QuCari.FieldByname('Namabag').AsString+' ]';
    end
    else
      TampilIsiData(FrMemorial,Kodebag ,Lnamabag,1002,'kodebag','Namabag');
  end;
  xValue := nil;}
 if mValid Then
  begin
    if Kodebag.Text<>'-' then
    begin
      if length(Kodebag.Text)=0 then TampilIsiNoSPK
    end
  end  
end;

procedure TFrMemorial.tvMasterKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Escape then
  begin
     if (QuTransaksi.IsEmpty = false) then
     begin
         Hapus_Daftar_Nomor(Copy(Mode.Text,1,2),NOBUKTI.Text,IDUser);
     end
     else
        Hapus_Daftar_Nomor(Copy(Mode.Text,1,2),NOBUKTI.Text,IDUser);
     if xModalKoreksi then
     begin
        mExit:=true;
        Close;
     end
     else
     begin
      RefreshAll;
      TampilData(mBukti);
      ActiveControl:=Mode;
     end;
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

procedure TFrMemorial.ModeChange(Sender: TObject);
begin
  if mValid then
  begin
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
    end
    else  if (mode.Text='BMM') or (mode.Text='BJK') or (mode.Text='PBL')  or (mode.Text='PJL') then
    begin
      Label4.Caption:='Note';
      statusDK:=1;
    end
    else
    begin
      Mode.ItemIndex := 0;
      Mode.Text := 'BMM';
      Label4.Caption:='Note';
      statusDK:=1;
    end;
    if (not xmodalkoreksi) then
       IsiNoBuktiBaru;
  end;
end;

procedure TFrMemorial.SpeedButton2Click(Sender: TObject);
var N1, N2, N3 : string;
    T1, T2 : integer;
    Tot : byte;
    TempCode : String;
    xTerbilang : TATTerbilang;
begin

  //TampilData(mBukti);
  N3  := FloatToStr(abs(BiayaRp));
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

  T1  := StrToInt(N1);
  T2  := StrToint(N2);
  xTerbilang.Number := (N1);
  N1  := xTerbilang.Terbilang;

  if T2 <> 0 then
  begin
    if T2 < 10 then
    begin
       xTerbilang.Number := inttostr(T1);
       N2 := xTerbilang.Terbilang;
    end
    else
    begin
       xTerbilang.Number := inttostr(T2);
       N2 := xTerbilang.Terbilang;
    end;
    if N1 = '' then
       TempCode:=N2+'Sen'
    else
       TempCode:=N1+'Rupiah '+N2+'Sen';
  end
  else
    TempCode:=N1+' Rupiah  ';


  if  BiayaRp>0 then
      myTerbilang := 'Terbilang : '+TempCode
  else
      myTerbilang := 'Terbilang : Minus '+TempCode;
  myTerbilang := UpperCase(myTerbilang);
  frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Nota\BuktiMemorial.fr3');
  frxReport1.DesignReport;
end;

procedure TFrMemorial.THPCChange(Sender: TObject);
begin
  if (THPC.ItemIndex=3) and ((Mode.Text='BKM'))then
     StatusGiro := 'P+'
  else
  if (THPC.ItemIndex=3) and ((Mode.Text='BKK') or (Mode.Text='BBM'))then
     StatusGiro := 'P-'
  else
  if (THPC.ItemIndex=2) and ((Mode.Text='BKK'))then
     StatusGiro := 'H+'
  else
  if (THPC.ItemIndex=2) and ((Mode.Text='BBK'))then
     StatusGiro := 'H-'
  else
     StatusGiro :='';
  if StatusGiro<>'' then
  begin
    Application.CreateForm(TFrMemorialGiro,FrMemorialGiro);
    if StatusGiro='P+' then
       FrMemorialGiro.Caption := 'Terima Giro'
    else
    if StatusGiro='P-' then
       FrMemorialGiro.Caption := 'Pencairan Terima Giro'
    else
    if StatusGiro='H+' then
       FrMemorialGiro.Caption := 'Buka Giro'
    else
    if StatusGiro='H-' then
       FrMemorialGiro.Caption := 'Pencairan Buka Giro';
    FrMemorialGiro.Showmodal;
  end;
end;

procedure TFrMemorial.PerkiraanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Escape then
  begin
     SpeedButton1.Click;
  end
  else
  //if (Key=vk_Return) or (key=Vk_Tab) then
  if (Key=VK_Return) then
  begin
    {if mValid then
    begin
       if DataBersyarat('select * from dbPerkiraan where Perkiraan=:0 and tipe=1 and Perkiraan<>:1 ',[Perkiraan.text,Lawan.text],DM.Qucari) then
      begin
        Perkiraan.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
        NamaPerkiraan.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
        CekLawanDiPosting(Perkiraan.Text,'D',KodeP);
        Aktiva(StatusAktivaP,Perkiraan.Text,NoAktivaP);
      end
      else
      begin
        TampilIsiPerkiraan(10051,Lawan.Text,Perkiraan,namaPerkiraan);
        CekLawanDiPosting(Perkiraan.Text,'D',KodeP);
        Aktiva(StatusAktivaP,Perkiraan.Text,NoAktivaP);
      end;
      TampilHutPiut(KodeP,StatusAktivaP,Perkiraan.Text,'D',kodeCustSuppP);
    end;}
    if ((KodeP='HT') or (KodeP='PT')) or ((KodeP='UHT') or (KodeP='UPT')) then
    begin
       TampilHutPiut(KodeP,StatusAktivaP,Perkiraan.Text,'D',kodeCustSuppP);
    end;
  end;
end;

procedure TFrMemorial.LawanExit(Sender: TObject);
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
      TampilIsiPerkiraan(10051,Perkiraan.Text,Lawan,namaLawan);
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

    //if (kodeL='HT') or (kodeL='PT') then
    //begin
      //if mTampilkanHutPiut then
      //  TampilHutPiut(KodeL,StatusAktivaL,Lawan.Text,'K',kodeCustSuppL);
    //end;
    //Deposito(NOBUKTI.Text,StatusAktivaL,Lawan.Text,mUrut);
  end;
end;

procedure TFrMemorial.PerkiraanExit(Sender: TObject);
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
        TampilIsiPerkiraan(10051,Lawan.Text,Perkiraan,namaPerkiraan);
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
        //TampilHutPiut(KodeP,StatusAktivaP,Perkiraan.Text,'D',kodeCustSuppP);
      end;
    end;
end;
procedure TFrMemorial.NoUrutKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {if Key=Vk_Return then
  begin
    If Length(NoUrut.Text)<5 then
    begin
      MessageDlg('Nomor urut kurang '+InttoStr(5-Length(NoUrut.Text))+' digit.',mtWarning,[MbOk],0);
      ActiveControl := NoUrut;
    end
    else
    begin
      TampilData(nobukti.Text);
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
  end
  else} if Key=Vk_Escape then
  begin
    mExit := True;
    Close;
  end;
end;

procedure TFrMemorial.NoUrutExit(Sender: TObject);
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
      TampilData(nobukti.Text);
      if (not QuTransaksi.IsEmpty) then
      Begin
        if (xModalKoreksi=True)  then
           //AmBilDataBeli
        else
        Begin
          TampilData('');
          MsgDataSudahADA(NoBukti.Text);
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

end.
