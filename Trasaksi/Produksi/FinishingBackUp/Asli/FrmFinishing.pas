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
  frxClass, frxDMPExport, frxDBSet, frxDesgn, MyGlobal, dxmdaset, strutils;

type
  TFrFinishing = class(TForm)
    Panel1: TPanel;
    NoUrut: TEdit;
    Tanggal: TDateEdit;
    Panel3: TPanel;
    QuBeli: TADOQuery;
    Sp_Beli: TADOStoredProc;
    DsQuBeli: TDataSource;
    QuUpdatedbbeli: TADOQuery;
    Label10: TLabel;
    DataSource1: TDataSource;
    QuReport: TADOQuery;
    NoBukti: TEdit;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
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
    Label1: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    frxDataPerusahaan: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    DsgCetakBtn: TSpeedButton;
    frxDesigner1: TfrxDesigner;
    frxReport1: TfrxReport;
    Label19: TLabel;
    LNamaSat: TRxLabel;
    KodeBrg: TEdit;
    Qnt: TPBNumEdit;
    NoSat: TPBNumEdit;
    Label2: TLabel;
    NoSPK: TEdit;
    Label3: TLabel;
    HPP: TPBNumEdit;
    Label7: TLabel;
    GroupBox1: TGroupBox;
    C2: TPBNumEdit;
    C5: TPBNumEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    C1: TPBNumEdit;
    C4: TPBNumEdit;
    GroupBox2: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    L2: TPBNumEdit;
    L7: TPBNumEdit;
    L1: TPBNumEdit;
    L6: TPBNumEdit;
    QuTenaker: TADOQuery;
    Sp_BeliTenaker: TADOStoredProc;
    DSTenaker: TDataSource;
    TarifMesin: TPBNumEdit;
    UrutMesin: TPBNumEdit;
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
    Label33: TLabel;
    Label34: TLabel;
    L3: TPBNumEdit;
    L4: TPBNumEdit;
    Shift: TEdit;
    Label41: TLabel;
    Waktu: TPBNumEdit;
    Keterangan: TEdit;
    Label43: TLabel;
    C3: TPBNumEdit;
    Label46: TLabel;
    Label47: TLabel;
    L8: TPBNumEdit;
    Label48: TLabel;
    L9: TPBNumEdit;
    JenisKerja: TComboBox;
    Label51: TLabel;
    Label52: TLabel;
    HasilBaik: TPBNumEdit;
    Label53: TLabel;
    HasilRusak: TPBNumEdit;
    C6: TPBNumEdit;
    Label18: TLabel;
    Label5: TLabel;
    L5: TPBNumEdit;
    Label20: TLabel;
    Kertas: TPBNumEdit;
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
    Label38: TLabel;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1KETERANGAN: TdxDBGridMaskColumn;
    dxDBGrid1NIK: TdxDBGridMaskColumn;
    dxDBGrid1namabrg: TdxDBGridMaskColumn;
    dxDBGrid1KODEBRG: TdxDBGridMaskColumn;
    dxDBGrid1QNT: TdxDBGridMaskColumn;
    dxDBGrid1NOSAT: TdxDBGridMaskColumn;
    dxDBGrid1SATUAN: TdxDBGridMaskColumn;
    dxDBGrid1ISI: TdxDBGridMaskColumn;
    dxDBGrid1NoSPK: TdxDBGridMaskColumn;
    dxDBGrid1Kertas: TdxDBGridMaskColumn;
    dxDBGrid1Waktu: TdxDBGridMaskColumn;
    dxDBGrid1KetDetail: TdxDBGridMaskColumn;
    dxDBGrid1C1: TdxDBGridMaskColumn;
    dxDBGrid1C2: TdxDBGridMaskColumn;
    dxDBGrid1C3: TdxDBGridMaskColumn;
    dxDBGrid1C4: TdxDBGridMaskColumn;
    dxDBGrid1C5: TdxDBGridMaskColumn;
    dxDBGrid1C6: TdxDBGridMaskColumn;
    dxDBGrid1I1: TdxDBGridMaskColumn;
    dxDBGrid1I2: TdxDBGridMaskColumn;
    dxDBGrid1H1: TdxDBGridMaskColumn;
    dxDBGrid1H2: TdxDBGridMaskColumn;
    dxDBGrid1H3: TdxDBGridMaskColumn;
    dxDBGrid1H4: TdxDBGridMaskColumn;
    dxDBGrid1H5: TdxDBGridMaskColumn;
    dxDBGrid1H6: TdxDBGridMaskColumn;
    dxDBGrid1E1: TdxDBGridMaskColumn;
    dxDBGrid1E2: TdxDBGridMaskColumn;
    dxDBGrid1N1: TdxDBGridMaskColumn;
    dxDBGrid1N2: TdxDBGridMaskColumn;
    dxDBGrid1CSI: TdxDBGridMaskColumn;
    dxDBGrid1L1: TdxDBGridMaskColumn;
    dxDBGrid1L2: TdxDBGridMaskColumn;
    dxDBGrid1L3: TdxDBGridMaskColumn;
    dxDBGrid1L4: TdxDBGridMaskColumn;
    dxDBGrid1L5: TdxDBGridMaskColumn;
    dxDBGrid1L6: TdxDBGridMaskColumn;
    dxDBGrid1L7: TdxDBGridMaskColumn;
    dxDBGrid1L8: TdxDBGridMaskColumn;
    dxDBGrid1L9: TdxDBGridMaskColumn;
    dxDBGrid1HasilBaik: TdxDBGridMaskColumn;
    dxDBGrid1HasilRusak: TdxDBGridMaskColumn;
    dxDBGrid1I3: TdxDBGridMaskColumn;
    dxDBGrid1JenisKerja: TdxDBGridMaskColumn;
    QuBeliNOBUKTI: TStringField;
    QuBeliNOURUT: TStringField;
    QuBeliTANGGAL: TDateTimeField;
    QuBeliKETERANGAN: TStringField;
    QuBeliNIK: TStringField;
    QuBelinamabrg: TStringField;
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
    QuBeliNamaKerjaan: TStringField;
    QuBelishift: TWordField;
    Label39: TLabel;
    KertasReject: TPBNumEdit;
    QuBeliKertasReject: TBCDField;
    dxDBGrid1Column46: TdxDBGridColumn;
    Label6: TLabel;
    KodeGdg: TEdit;
    NamaGdg: TRxLabel;
    LNamaBrg: TRxLabel;
    TK1: TEdit;
    LTK1: TRxLabel;
    GroupBox8: TGroupBox;
    Label40: TLabel;
    K1: TPBNumEdit;
    GroupBox9: TGroupBox;
    Label44: TLabel;
    P1: TPBNumEdit;
    QuBeliK1: TBCDField;
    QuBeliP1: TBCDField;
    dxDBGrid1Column47: TdxDBGridColumn;
    dxDBGrid1Column48: TdxDBGridColumn;
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
    procedure TampilIsiMesin;
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
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  Panel3.Enabled:=pNilai;
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

procedure TFrFinishing.TampilIsiMesin;
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
end;

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
  KodeBrows:=1014121;
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
      Qnt.AsFloat:=FieldByName('QntJ').AsFloat;
      NoSat.AsInteger:=FieldByName('NosatJ').AsInteger;
      LNamaSat.Caption:='[ '+FieldByName('Satj').AsString+' ]';
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
   L4.Value:=0;
   L5.Value:=0;
   L6.Value:=0;
   L7.Value:=0;
   L8.Value:=0;
   L9.Value:=0;
   Shift.Text:='';
   HasilBaik.Value:=0;
   HasilRusak.Value:=0;
   waktu.Value:=0;
   KertasReject.Value:=0;
   Tk1.text:='';
   keterangan.Text:='';
   P1.Value :=0;
   K1.Value:=0;
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
       Parameters[19].Value:= kertas.Value ;
       Parameters[20].Value:= Waktu.Value ;
       Parameters[21].Value:= Keterangan.Text ;
       Parameters[22].Value:= C1.Value ;
       Parameters[23].Value:= C2.Value ;
       Parameters[24].Value:= C3.Value ;
       Parameters[25].Value:= C4.Value ;
       Parameters[26].Value:= C5.Value ;
       Parameters[27].Value:= C6.Value ;
       Parameters[28].Value:= I1.Value ;
       Parameters[29].Value:= I2.Text  ;
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
       Parameters[42].Value:= CSI.Value;
       Parameters[43].Value:= L1.Value;
       Parameters[44].Value:= L2.Value;
       Parameters[45].Value:= L3.Value;
       Parameters[46].Value:= L4.Value;
       Parameters[47].Value:= L5.Value;
       Parameters[48].Value:= L6.Value;
       Parameters[49].Value:= L7.Value;
       Parameters[50].Value:= L8.Value;
       Parameters[51].Value:= L9.Value;
       Parameters[52].Value:= HasilBaik.value;
       Parameters[53].Value:= Hasilrusak.value ;
       Parameters[54].Value:= KertasReject.Value;
       Parameters[55].Value:= k1.Value;
       Parameters[56].Value:= P1.Value;

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
         L4.Value:=QuBeliL4.AsFloat;
         L5.Value:=QuBeliL5.AsFloat;
         L6.Value:=QuBeliL6.AsFloat;
         L7.Value:=QuBeliL7.AsFloat;
         L8.Value:=QuBeliL8.AsFloat;
         L9.Value:=QuBeliL9.AsFloat;
         K1.Value:=QuBelik1.AsFloat;
         P1.Value:=QuBelip1.AsFloat;
         Keterangan.Text:=QuBeliKetDetail.AsString;
         JenisKerja.ItemIndex:=QuBeliJenisKerja.AsInteger ;
         kertas.Value:=QuBeliKertas.AsFloat;
         HasilBaik.Value:=QuBeliHasilBaik.AsFloat;
         HasilRusak.Value:=QuBeliHasilRusak.AsFloat;
         KodeBrg.Text:=QuBeliKODEBRG.AsString;
         NoSPK.Text:=QuBeliNoSPK.AsString;
         Tk1.Text:=QuBeliNIK.AsString;

         mvalid:=true;
         TK1Exit(TK1);
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
  if key=VK_Escape then
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
      if length(NoSPK.Text)=0 then TampilIsiNoSPK else
      begin
        if DataBersyarat('Select A.NoBukti,A.KodeBrg BrgJ,E.NamaBrg NamaBrgJ ,A.Qnt QntJ,A.Nosat NosatJ,A.Isi IsiJ,A.Satuan SatJ,   '+
                       '       ISNULL(Case when A.Nosat=1 then B.QntHasilPrd       '+
                       '                   when A.Nosat=2 then B.QntHasilPrd/A.isi      '+
                       '                   else 0         '+
                       '              end,0) QntH,        '+
                       '       A.QNT-                  '+
                       '       ISNULL(Case when A.Nosat=1 then B.QntHasilPrd      '+
                       '                   when A.Nosat=2 then B.QntHasilPrd/A.isi   '+
                       '                   else 0  '+
                       '              end,0) SisaSPK            '+
                       'From [vwSPK] A          '+
                       '     Left Outer join dbBarang E on E.KodeBrg=A.Kodebrg       '+
                       '     Left Outer join (Select y.NoSPK,y.KODEBRG, y.KodeGdg ,Sum( y.QNT*y.ISI)QntHasilPrd  from DBproduksi x       '+
                       '                           left Outer join DBproduksiDET y on y.NOBUKTI=x.NOBUKTI Group by y.NoSPK,y.KODEBRG, y.KodeGdg) B on B.NoSPK=A.NOBUKTI and B.KODEBRG=A.KODEBRG '+
                       'where A.QNT-        '+
                       '       ISNULL(Case when A.Nosat=1 then B.QntHasilPrd        '+
                       '                   when A.Nosat=2 then B.QntHasilPrd/A.isi   '+
                       '                   else 0        '+
                       '              end,0)>0  and A.NoBukti=:0        '+
                       'Order by A.NoBukti',[NoSPK.text],Dm.Qucari)=true then
        begin
           with DM.QuCari do
            Begin
             NoSPK.Text:=fieldbyname('NoBukti').AsString;
             Kodebrg.Text:=FieldByName('BrgJ').AsString;
             LNamaBrg.Caption:='[ '+FieldByName('NamaBrgJ').AsString+' ]';
             Qnt.AsFloat:=FieldByName('QntJ').AsFloat;
             NoSat.AsInteger:=FieldByName('NosatJ').AsInteger;
             LNamaSat.Caption:='[ '+FieldByName('Satj').AsString+' ]';
            end;
        end
        else TampilIsiNoSPK;
      end;
    end;
    IsiSatuan;
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
       kertas.Value:=Hasilbaik.Value+HasilRusak.Value;
       Hasilrusak.Value:=
       KertasReject.Value+
       c1.Value+c2.Value+c3.Value+c4.Value+c5.Value+c6.Value+
       i1.Value+i2.Value+i3.Value+
       H1.Value+H2.Value+H3.Value+H4.Value+H5.Value+H6.Value+
       E1.Value+e1.Value+
       N1.Value+n2.Value+
       CsI.Value+
       K1.Value+
       P1.Value+
       L1.Value+L2.Value+L3.Value+L4.Value+L5.Value+L6.Value+L7.Value+L8.Value+L9.Value
end;

end.
