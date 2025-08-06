unit FrmInvoiceRPJ;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, DBCtrls, ImgList, RxGIF, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, frxClass, frxDMPExport,
  frxDBSet, strUtils,DateUtils, frxDesgn, frxBarcode,Variants, dxmdaset,
  dxPageControl, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid;

type
  TFrInvoiceRPJ = class(TForm)
    Panel1: TPanel;
    QuBeli: TADOQuery;
    Sp_Beli: TADOStoredProc;
    DsQuBeli: TDataSource;
    QuUpdatedbbeli: TADOQuery;
    Label10: TLabel;
    Shape4: TShape;
    Label5: TLabel;
    Label12: TLabel;
    NoUrut: TEdit;
    NoBukti: TEdit;
    Label13: TLabel;
    Tanggal: TDateEdit;
    Label16: TLabel;
    Label29: TLabel;
    KodeVls: TEdit;
    Label30: TLabel;
    Kurs: TPBNumEdit;
    PPN1: TComboBox;
    Label31: TLabel;
    Shape6: TShape;
    LNamaCustSupp: TLabel;
    LAlamatCustSupp: TLabel;
    dxPageControl1: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    Label35: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    DiskonP: TPBNumEdit;
    DiskonRp: TPBNumEdit;
    PPN10VAT: TPBNumEdit;
    Freight: TPBNumEdit;
    Lain2: TPBNumEdit;
    Panel5: TPanel;
    TambahBtn: TSpeedButton;
    KoreksiBtn: TSpeedButton;
    HapusBtn: TSpeedButton;
    Cetak: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Panel3: TPanel;
    LNamaBrg: TRxLabel;
    LKodeBrg: TLabel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    KodeBrg: TEdit;
    BitBtn1: TBitBtn;
    Ket: TEdit;
    Harga: TPBNumEdit;
    DiscP1: TPBNumEdit;
    DiscRp1: TPBNumEdit;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1URUT: TdxDBGridMaskColumn;
    dxDBGrid1KODEBRG: TdxDBGridMaskColumn;
    dxDBGrid1NamaBrg: TdxDBGridMaskColumn;
    dxDBGrid1SAT_2: TdxDBGridMaskColumn;
    dxDBGrid1QNT2: TdxDBGridMaskColumn;
    dxDBGrid1ISI: TdxDBGridMaskColumn;
    dxDBGrid1SAT_1: TdxDBGridMaskColumn;
    dxDBGrid1QNT: TdxDBGridMaskColumn;
    dxDBGrid1NOPO: TdxDBGridMaskColumn;
    dxDBGrid1URUTPO: TdxDBGridMaskColumn;
    dxDBGrid1Keterangan: TdxDBGridMaskColumn;
    dxDBGrid1HARGA: TdxDBGridMaskColumn;
    dxDBGrid1DISCTOT: TdxDBGridMaskColumn;
    dxDBGrid1BYANGKUT: TdxDBGridMaskColumn;
    dxDBGrid1HRGNETTO: TdxDBGridMaskColumn;
    dxDBGrid1NDISKON: TdxDBGridMaskColumn;
    dxDBGrid1SUBTOTAL: TdxDBGridMaskColumn;
    dxDBGrid1NDPP: TdxDBGridMaskColumn;
    dxDBGrid1NPPN: TdxDBGridMaskColumn;
    dxDBGrid1NNET: TdxDBGridMaskColumn;
    dxDBGrid1SUBTOTALRp: TdxDBGridMaskColumn;
    dxDBGrid1NDPPRp: TdxDBGridMaskColumn;
    dxDBGrid1NPPNRp: TdxDBGridMaskColumn;
    dxDBGrid1NNETRp: TdxDBGridMaskColumn;
    QuBiayaPO: TADOQuery;
    DsBiayaPO: TDataSource;
    sp_BiayaPO: TADOStoredProc;
    Label42: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    TanggalSPB: TDateEdit;
    KodeCustSupp: TEdit;
    NoPBL: TEdit;
    SPB: TEdit;
    Qnt: TPBNumEdit;
    Nosat: TComboBox;
    LSatuan: TLabel;
    LSatuan2: TLabel;
    LSatuan1: TLabel;
    Qnt2: TPBNumEdit;
    Qnt1: TPBNumEdit;
    dxDBGrid1Column25: TdxDBGridColumn;
    Label15: TLabel;
    Tipe: TComboBox;
    Label1: TLabel;
    NoInvoice: TEdit;
    Label17: TLabel;
    TglInvoice: TDateEdit;
    Label18: TLabel;
    TipeBayar: TComboBox;
    Label19: TLabel;
    Hari: TPBNumEdit;
    dxTabSheet2: TdxTabSheet;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    cxGrid1: TcxGrid;
    TvMasterPajak: TcxGridDBBandedTableView;
    TvMasterPajakNPWP: TcxGridDBBandedColumn;
    TvMasterPajakNamaPKP: TcxGridDBBandedColumn;
    TvMasterPajakAlamatPKP: TcxGridDBBandedColumn;
    TvMasterPajakNOFPJ: TcxGridDBBandedColumn;
    TvMasterPajakTGLFPJ: TcxGridDBBandedColumn;
    TvMasterPajakNPPn: TcxGridDBBandedColumn;
    TvMasterPajakTglLaporFPJ: TcxGridDBBandedColumn;
    TvMasterPajakTipePPh: TcxGridDBBandedColumn;
    TvMasterPajakMyPPh: TcxGridDBBandedColumn;
    TvMasterPajakNoPPh: TcxGridDBBandedColumn;
    TvMasterPajakTglPPh: TcxGridDBBandedColumn;
    TvMasterPajaknPPh: TcxGridDBBandedColumn;
    TvMasterPajakTglLaporPPh: TcxGridDBBandedColumn;
    TvMasterPajakAlamatPKP1: TcxGridDBBandedColumn;
    TvMasterPajakAlamatPKP2: TcxGridDBBandedColumn;
    TvMasterPajakKotaPKP: TcxGridDBBandedColumn;
    TvMasterPajakMyID: TcxGridDBBandedColumn;
    TvMasterPajakPerk_PPh: TcxGridDBBandedColumn;
    TvMasterPajakNamaPerk_PPh: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    Panel10: TPanel;
    SpeedButton7: TSpeedButton;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    NamaPerkiraan: TLabel;
    BitBtn2: TBitBtn;
    TglFPJ: TDateEdit;
    NoFPJ: TEdit;
    NilaiFPJ: TPBNumEdit;
    TglLaporFPJ: TDateEdit;
    TglLaporPPh21: TDateEdit;
    NilaiPPh21: TPBNumEdit;
    TglPPh21: TDateEdit;
    NoPPh21: TEdit;
    Alamat1: TEdit;
    Alamat2: TEdit;
    Kota: TEdit;
    NamaCust: TEdit;
    PPh: TComboBox;
    NPWP: TEdit;
    Perkiraan: TEdit;
    QuBiayaPONoBukti: TStringField;
    QuBiayaPOUrut: TIntegerField;
    QuBiayaPONOFPJ: TStringField;
    QuBiayaPOTGLFPJ: TDateTimeField;
    QuBiayaPONPPn: TBCDField;
    QuBiayaPOTglLaporFPJ: TDateTimeField;
    QuBiayaPOTipePPh: TWordField;
    QuBiayaPONoPPh: TStringField;
    QuBiayaPOTglPPh: TDateTimeField;
    QuBiayaPOnPPh: TBCDField;
    QuBiayaPOTglLaporPPh: TDateTimeField;
    QuBiayaPONPWP: TStringField;
    QuBiayaPONamaPKP: TStringField;
    QuBiayaPOAlamatPKP1: TStringField;
    QuBiayaPOAlamatPKP2: TStringField;
    QuBiayaPOKotaPKP: TStringField;
    QuBiayaPOMyID: TBytesField;
    QuBiayaPOUrutTrans: TIntegerField;
    QuBiayaPOAlamatPKP: TStringField;
    QuBiayaPOMyPPh: TStringField;
    QuBeliNOBUKTI: TStringField;
    QuBeliNOURUT: TStringField;
    QuBeliTANGGAL: TDateTimeField;
    QuBeliTglJatuhTempo: TDateTimeField;
    QuBeliKODECUSTSUPP: TStringField;
    QuBeliNamaCustSupp: TStringField;
    QuBeliAlamat: TStringField;
    QuBeliKota: TStringField;
    QuBeliNOSPR: TStringField;
    QuBeliKODEVLS: TStringField;
    QuBeliKURS: TBCDField;
    QuBeliPPN: TWordField;
    QuBeliTIPEBAYAR: TWordField;
    QuBeliHARI: TIntegerField;
    QuBeliDISC: TBCDField;
    QuBeliDISCRP: TBCDField;
    QuBeliFREIGHT: TBCDField;
    QuBeliLAIN2: TBCDField;
    QuBeliISCETAK: TBooleanField;
    QuBeliISCETAKGDG: TBooleanField;
    QuBeliIsBatal: TBooleanField;
    QuBeliUserBatal: TStringField;
    QuBeliIDUser: TStringField;
    QuBeliURUT: TIntegerField;
    QuBeliKODEBRG: TStringField;
    QuBeliNamaBrg: TStringField;
    QuBeliQNT: TBCDField;
    QuBeliQNT2: TBCDField;
    QuBeliSAT_1: TStringField;
    QuBeliSAT_2: TStringField;
    QuBeliNoSat: TWordField;
    QuBeliISI: TBCDField;
    QuBeliHARGA: TBCDField;
    QuBeliDiscP1: TBCDField;
    QuBeliDiscRp1: TBCDField;
    QuBeliDiscP2: TBCDField;
    QuBeliDiscRp2: TBCDField;
    QuBeliDiscP3: TBCDField;
    QuBeliDiscRp3: TBCDField;
    QuBeliDiscP4: TBCDField;
    QuBeliDiscRp4: TBCDField;
    QuBeliDISCTOT: TBCDField;
    QuBeliBYANGKUT: TBCDField;
    QuBeliHRGNETTO: TBCDField;
    QuBeliNDISKON: TBCDField;
    QuBeliSUBTOTAL: TBCDField;
    QuBeliNDPP: TBCDField;
    QuBeliNPPN: TBCDField;
    QuBeliNNET: TBCDField;
    QuBeliSUBTOTALRp: TBCDField;
    QuBeliNDPPRp: TBCDField;
    QuBeliNPPNRp: TBCDField;
    QuBeliNNETRp: TBCDField;
    QuBeliUrutSPR: TIntegerField;
    QuBeliKeterangan: TStringField;
    QuBeliTotSubTotal: TBCDField;
    QuBeliTotDiskon: TBCDField;
    QuBeliTotTotal: TBCDField;
    QuBeliTotDPP: TBCDField;
    QuBeliTotPPN: TBCDField;
    QuBeliTotNet: TBCDField;
    QuBeliTotSubTotalRp: TBCDField;
    QuBeliTotDiskonRp: TBCDField;
    QuBeliTotTotalRp: TBCDField;
    QuBeliTotDPPRp: TBCDField;
    QuBeliTotPPNRp: TBCDField;
    QuBeliTotNetRp: TBCDField;
    QuBeliKonversi: TIntegerField;
    QuBeliUrutTrans: TIntegerField;
    QuBeliNoinvoice: TStringField;
    QuBeliTglInvoice: TDateTimeField;
    Label41: TLabel;
    Flagmenu: TComboBox;
    QuBeliISFLag: TBooleanField;
    PPN: TComboBox;
    nopo: TEdit;
    Label43: TLabel;
    DiscPDet2: TPBNumEdit;
    Label44: TLabel;
    DiscPDet3: TPBNumEdit;
    Label45: TLabel;
    DIscPDet4: TPBNumEdit;
    Label46: TLabel;
    DiscPDet5: TPBNumEdit;
    QuBeliDiscp5: TBCDField;
    QuBeliFlagTipe: TWordField;
    QuBeliPONO: TStringField;
    QuBeliTglSPBX: TDateTimeField;
    QuBeliContractNo: TStringField;
    frxDataPerusahaan: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    Pemungut: TCheckBox;
    Ppnp: TPBNumEdit;
    Label53: TLabel;
    CPpnP: TComboBox;
    QuBelippnp: TBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure TampilData(No_Bukti:String);
    Procedure AmBilDataBeli;
    procedure FormCreate(Sender: TObject);
    procedure RefreshAll;
    procedure KoreksiBtnClick(Sender: TObject);
    procedure wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    Function CheckFormMaster:boolean;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DiscP1Enter(Sender: TObject);
    procedure DiscP1Exit(Sender: TObject);
    procedure HargaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TanggalEnter(Sender: TObject);
    procedure TanggalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TanggalChange(Sender: TObject);
    procedure HeaderBawahKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NoPBLEnter(Sender: TObject);
    procedure NoPBLExit(Sender: TObject);
    procedure TambahBtnClick(Sender: TObject);
    procedure HapusBtnClick(Sender: TObject);
    procedure KodeBrgEnter(Sender: TObject);
    procedure KodeBrgExit(Sender: TObject);
    procedure KodeBrgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure PerkiraanEnter(Sender: TObject);
    procedure PerkiraanExit(Sender: TObject);
    procedure NilaiPPh21Enter(Sender: TObject);
    procedure NilaiPPh21Change(Sender: TObject);
    procedure NoInvoiceExit(Sender: TObject);
    procedure NoUrutChange(Sender: TObject);
    procedure NoUrutKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NoUrutExit(Sender: TObject);
    procedure KodeCustSuppExit(Sender: TObject);
    procedure KodeCustSuppEnter(Sender: TObject);
    procedure KodeVlsEnter(Sender: TObject);
    procedure KodeVlsExit(Sender: TObject);
    procedure KodeCustSuppKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure HargaExit(Sender: TObject);
    procedure HargaEnter(Sender: TObject);
    procedure QntKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CetakClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure PemungutClick(Sender: TObject);
    procedure PemungutExit(Sender: TObject);
    procedure CPpnPClick(Sender: TObject);
  private
    { Private declarations }
    mUrut,UrutPO, mUrutRPB, mUrutBiaya, mTipeDisc: Integer;
    mNilaiEnter, mIsiBrg: Real;
    mSat_1, mSat_2: String;
    mValid, mExit, mUbahHd, mUbahHdDet: Boolean;
    procedure TampilanQntSatuan(pNilai: Integer);
    procedure UpdateDataBeli(Choice:Char;Kodet:String);
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure TampilTombolBiaya(pNilai: Boolean);
    procedure ClearPanelDetailBiaya;
    procedure TampilIsiBiaya;
    procedure TampilIsiSupplierBiaya;
    procedure UpdateDataBiaya(Choice:Char;Kodet:String);
    procedure UpdatedbBeli;
    procedure UpdatedbBeliBawah(Sender: TObject);
    procedure UpdateDiskon;
    procedure IsiNoBuktiBaru;
    procedure TampilIsiRPJ;
    procedure ClearPanelDetail;
    procedure TampilIsiBarang;
    procedure TampilIsiSupplier;
    procedure TampilIsiPerkiraan(xkodebrows:Integer;xPerkiraan:String;Var xEdit : TEdit; Var xLabel:TLabel);
    procedure TampilIsiValas;
    procedure TampilIsiRPJDet;
    function prosesdiskon(Sender:TObject): real;

  public
    { Public declarations }
    IsTambah, IsKoreksi, IsHapus, IsCetak, IsExcel, xModalKoreksi,IsRPJ: Boolean;
    xNoUrutFPJ,XCUstSupp: String;
    IsPPN:Integer;
    DiskonTotal:real;
  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrInvoiceRPJ: TFrInvoiceRPJ;
  TipeTrans,PlusPPN,Nomor,Model:String;
  YY,MM,DD : Word;
  S:array[0..255]of char;
  bm,GBM : TBookmark;

implementation
uses FrmBrows, MyProcedure, MyGlobal, MyModul, FrmMainInvoiceRPJ;
{$R *.DFM}

procedure TFrInvoiceRPJ.IsiNoBuktiBaru;
begin
  //NoUrut.Enabled:=True;
  DecodeDate(Date,YY,MM,DD);
  If DayOfTheMonth(Date)<=DD then
     DD:=DayOfTheMonth(Date);
  try
    TANGGAL.Date := EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),DD);
  except
    TANGGAL.Date:=EndOfAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln));
  end;
  if IsPPN=0 then
  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal.Date,Xcustsupp,False)
  else if IsPPN=1 then
  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal.Date);
  NoUrut.Text:=NomorBukti;
  NOBUKTI.Text:=Nomor;
end;

procedure TFrInvoiceRPJ.TampilanQntSatuan(pNilai: Integer);
begin
  if pNilai=0 then
  begin
    Qnt.Visible:=True;
    Qnt2.Visible:=False;
  end else
  begin
    Qnt.Visible:=False;
    Qnt2.Visible:=True;
  end;
  Nosat.Visible:=Qnt.Visible;
  LSatuan.Visible:=Qnt.Visible;
  LSatuan2.Visible:=Qnt2.Visible;
  Qnt1.Visible:=Qnt2.Visible;
  LSatuan1.Visible:=Qnt2.Visible;
end;

procedure TFrInvoiceRPJ.TampilTombolDetail(pNilai: Boolean);
begin
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
end;

procedure TFrInvoiceRPJ.TampilTombolBiaya(pNilai: Boolean);
begin
  Panel10.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel7.Enabled:=not pNilai;
  Panel10.Enabled:=pNilai;
end;

procedure TFrInvoiceRPJ.ClearPanelDetailBiaya;
begin
  NoFPJ.Text := '';
  TglFPJ.Text :='  /  /    ';
  NilaiFPJ.Value :=0;
  TglLaporFPJ.Text := '  /  /    ';
  NoPPh21.Text := '';
  NilaiPPh21.Value :=0;
  TglPPh21.Text := '  /  /    ';
  TglLaporPPh21.Text := '  /  /    ';
  PPh.ItemIndex := 0;
  NamaCust.Text := '';
  Alamat1.Text := '';
  Alamat2.Text := '';
  Kota.Text :='';
  NPWP.Text :='';
  Perkiraan.Text :='';
  NamaPerkiraan.Caption :='[ . . . ]';
  Perkiraan.Text := '213120002';
  if DataBersyarat('Select NamaPKP, AlamatPkp1, AlamatPkp2, KotaPKP, NPWP from dbcustsupp where kodecustsupp=:0',
                 [kodecustSupp.text],Dm.qucari) then
  begin
    with DM.QuCari do
    begin
      NPWP.Text := Fieldbyname('NPWP').AsString;
      NamaCust.Text := Fieldbyname('NamaPKP').AsString;
      Alamat1.Text := Fieldbyname('AlamatPKP1').AsString;
      Alamat2.Text := Fieldbyname('AlamatPKP2').AsString;
      Kota.Text := Fieldbyname('KotaPKP').AsString;
    end;
  end;
  if DataBersyarat(' Declare @Nobukti varchar(30) Select @nobukti=:0'+#13+
                   ' Select a.NoBukti, a.Tanggal, a.KodecustSupp, B.NamaCustSupp, B.Alamat, C1.NOSPB, D.Tanggal TGLSPB, C1.NoPajak, C1.TglFPJ'+#13+
                   ' from dbSPBRjual a'+#13+
                   '     left Outer join vwBrowsCust b on b.KodeCustSupp=A.kodecustSupp'+#13+
                   '     Left Outer join (Select nobukti, NoInvoice from DBRInvoicePLDET Group by nobukti, NoInvoice ) C on C.nobukti=a.NoRPJ'+#13+
                   '     Left Outer join (Select x.NoSPB, x.NoBukti, y.NoPajak, y.TglFPJ '+#13+
                   '                      from dbInvoicePLDet x '+#13+
                   '                           left Outer join dbInvoicePl y on y.nobukti=x.nobukti'+#13+
                   '                      group by x.NoSPB, x.NoBukti, y.NoPajak, y.TglFPJ) C1 on C1.NoBukti=C.NoInvoice'+#13+
                   '     left Outer join (Select Nobukti, Tanggal from DBSPB ) D on D.NoBukti=C1.NoSPB'+#13+
                   ' where A.nobukti=@Nobukti',[NoPBL.text], DM.qucari) then
  Begin
    with DM.QuCari do
    begin
      NoFPJ.Text := Fieldbyname('NoPajaK').AsString;
      TglFPJ.Date:= Fieldbyname('TglFPJ').AsDateTime;
      TglLaporFPJ.Date:= Fieldbyname('TglFPJ').AsDateTime;
      NilaiFPJ.Value := PPN10VAT.Value;
    end;
  end;
end;

procedure TFrInvoiceRPJ.TampilIsiBiaya;
begin
end;

procedure TFrInvoiceRPJ.TampilIsiSupplierBiaya;
begin
end;

procedure TFrInvoiceRPJ.UpdatedbBeli;
begin
  if (not QuBeli.IsEmpty) and (mUbahHd=True) then
  begin
    with QuUpdatedbBeli do
    begin
       Close;
       Sql.Clear;
       SQL.Add('Update dbInvoiceRPJ');
       SQL.Add('Set Tanggal=:0, NORPJ=:1, KodeVls=:2, Kurs=:3, PPn=:4, TipeBayar=:5, Hari=:6, NoInvoice=:7, TglInvoice=:8 ');
       sql.add(' , isflag =:9');
       SQL.Add('Where NoBukti='+QuotedStr(NoBukti.Text));
       Prepared;
       Parameters[0].Value := Tanggal.Date;
       Parameters[1].Value := NoPBL.Text;
       Parameters[2].Value := KodeVls.Text;
       Parameters[3].Value := Kurs.Value;
       {if IsPPN=1 then
       Parameters[4].Value := PPN.ItemIndex+1
       Else if IsPPN=0 then
       Parameters[4].Value := PPN.ItemIndex;}
       Parameters[4].Value := PPN.ItemIndex;
       Parameters[5].Value := TipeBayar.ItemIndex;
       Parameters[6].Value := Hari.AsInteger;
       Parameters[7].Value := NoInvoice.Text;
       if TglInvoice.Text='  /  /    ' then
       Parameters[8].Value := null
       else
       Parameters[8].Value := TglInvoice.Date;
       Parameters[9].Value := Pemungut.Checked;
       try
         ExecSQL;
       except
       end;
       if mUbahHdDet=True then
       begin
         Close;
         SQL.Clear;
         SQL.Add('Update dbInvoiceRPJDet');
         SQL.Add('Set Kurs=:0, PPn=:1');
         SQL.Add('Where NoBukti='+QuotedStr(NoBukti.Text));
         Prepared;
         Parameters[0].Value := Kurs.Value;
         Parameters[1].Value := PPN.ItemIndex;
         ExecSQL;
       end;
       mUbahHd:=False; mUbahHdDet:=False;
    end;
    begin
       with dm.QuCari do
       begin
         Close;
         Sql.Clear;
         SQL.Add('Update dbInvoiceRPJDet');
         SQL.Add('Set ppnp=:0 ');
         sql.add (' Where NoBukti='+QuotedStr(NoBukti.Text));
         Prepared;
         //Parameters[0].Value:=mTipeDisc;
         Parameters[0].Value:=Ppnp.Value;
         ExecSQL;

       end;

    end;
    TampilData(NoBukti.Text);
  end;
end;

procedure TFrInvoiceRPJ.UpdatedbBeliBawah(Sender: TObject);
begin
  if (not QuBeli.IsEmpty) and (mUbahHd=True) then
  begin
    if (Sender=DiskonP) or (Sender=DiskonRp) then
      UpdateDiskon else
    begin
      with QuUpdatedbBeli do
      begin
         Close;
         Sql.Clear;
         SQL.Add('Update dbRBeli');
         SQL.Add('Set Freight=:0, Lain2=:1 ');
         SQL.Add('Where NoBukti='+QuotedStr(NoBukti.Text));
         Prepared;
         Parameters[0].Value:=Freight.AsFloat;
         Parameters[1].Value:=Lain2.AsFloat;
         ExecSQL;
         Close;
         SQL.Clear;
         SQL.Add('exec sp_UpdateRBeli '+QuotedStr(NoBukti.Text));
         ExecSQL;
         mUbahHd:=False; mUbahHdDet:=False;
      end;
      TampilData(NoBukti.Text);
    end;
  end;
end;

procedure TFrInvoiceRPJ.UpdateDiskon;
begin
    if (not QuBeli.IsEmpty) then
    begin
      with QuUpdatedbBeli do
      begin
         Close;
         Sql.Clear;
         SQL.Add('Update dbRBeli');
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
         SQL.Add('exec sp_UpdateRBeli '+QuotedStr(NoBukti.Text));
         ExecSQL;
      end;
      TampilData(NoBukti.Text);
    end;
end;

procedure TFrInvoiceRPJ.TampilData(No_Bukti:String);
begin
  QuBeli.Close;
  QuBeli.SQL.Strings[2]:='select @NoBukti='+QuotedStr(No_Bukti);
  QuBeli.Open;
  NoPBL.Enabled:=QuBeli.IsEmpty;
  NoPO.Enabled:=QuBeli.IsEmpty;
  if QuBeli.IsEmpty=false then
  begin
    dxDBGrid1.OptionsDB:=[edgoCanNavigation,edgoLoadAllRecords,edgoUseBookmarks]
  end
  else
  begin
    dxDBGrid1.OptionsDB:=[edgoCanNavigation,edgoUseBookmarks];
  end;
  PPN10VAT.Value:=QuBeliTotPPN.AsFloat;
  DiskonP.Value:=QuBeliDISC.AsFloat;
  DiskonRp.Value:=QuBeliTotDiskon.AsFloat;

  QuBiayaPO.Close;
  QuBiayaPO.SQL.Strings[2]:='select @NoBukti='+QuotedStr(No_Bukti);
  QuBiayaPO.Open;
end;

procedure TFrInvoiceRPJ.UpdateDataBeli(Choice:Char;Kodet:String);
begin
  if Choice<>'I' then
    mUrut:=QuBeliURUT.AsInteger;
  BM:=QuBeli.GetBookmark;
  With Sp_Beli do
  begin
    close;
    Prepared;
    Parameters[1].Value:=Choice;
    if Choice='D' then
    begin
      Parameters[2].Value:=QuBeliNOBUKTI.AsString;
      Parameters[14].Value:=QuBeliURUT.AsInteger;
    end
    else
    begin
      Parameters[2].Value:=NoBukti.Text;
      Parameters[3].Value:=NoUrut.Text;
      Parameters[4].Value:=Tanggal.Date;
      Parameters[5].Value:=KodeCustSupp.Text;
      Parameters[6].Value:=NoInvoice.Text;
      Parameters[7].Value:=TglInvoice.date;
      Parameters[8].Value:=KodeVls.text;
      Parameters[9].Value:=Kurs.Value;
      {if ISppn=0 then
     Parameters[10].Value:=PPN.ItemIndex
     else if IsPPN=1 then
     begin
       Parameters[10].Value:=PPN.ItemIndex+1;
     End;}
     Parameters[10].Value:=PPN.ItemIndex;
      Parameters[11].Value:=TipeBayar.ItemIndex;
      Parameters[12].Value:= Hari.AsInteger;
      Parameters[13].Value:=IDUser;
      Parameters[14].Value:=mUrut;
      Parameters[15].Value:=KodeBrg.Text;
      Parameters[16].Value:=NoPBL.Text;
      Parameters[17].Value:=mUrutRPB;
      Parameters[18].Value:=mSat_1;
      Parameters[19].Value:=mSat_2;
      if Nosat.Visible=True then
      begin
        if Nosat.ItemIndex=1 then
        begin
          Parameters[20].Value:=Qnt.AsFloat;
          Parameters[21].Value:=Qnt.AsFloat/mIsiBrg;
        end
        else if Nosat.ItemIndex=2 then
        begin
          Parameters[20].Value:=Qnt.AsFloat*mIsiBrg;
          Parameters[21].Value:=Qnt.AsFloat;
        end;
      end else
      begin
        Parameters[20].Value:=Qnt1.AsFloat;
        Parameters[21].Value:=Qnt2.AsFloat;
      end;
      Parameters[22].Value:=Nosat.ItemIndex;
      Parameters[23].Value:=mIsiBrg;
      Parameters[24].Value:=Harga.Value;
      Parameters[25].Value:=DiscP1.Value;
      Parameters[26].Value:=DiscRp1.Value;
      Parameters[27].Value:=DiscRp1.Value;
      Parameters[28].Value:=Trim(Ket.Text);
    end;
    Parameters[29].Value := Flagmenu.ItemIndex;
    Parameters[30].Value := IsPPN;
    Parameters[31].Value := DiscPDet2.Value;
    Parameters[32].Value := DiscPDet3.Value;
    Parameters[33].Value := DiscPDet4.Value;
    Parameters[34].Value := DiscPDet5.Value;
    Parameters[35].Value := ppnp.Value;

    try
      ExecProc;
      UpdateUrutTransaksi('DBInvoiceRPJDet',NoBukti.Text);
      if Choice='I' then
      begin
        TampilData(NoBukti.Text);
        QuBeli.Locate('KodeBrg',KodeBrg.Text,[LOP,LOC]);
        LoggingData(IDUser,'I','RPB', NOBUKTI.Text,
          'Kode Brg = '+KodeBrg.Text);
      end else if Choice='U' then
      begin
        TampilData(NoBukti.Text);
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
        LoggingData(IDUser,'U','RPB', NoBukti.Text,
          'Kode Brg = '+KodeBrg.Text);

      end
      Else if Choice='D' then
      begin
        LoggingData(IDUser,'D','RPB' ,NoBukti.Text,
          'Kode Brg = '+QuBeliKODEBRG.AsString);
        TampilData(NoBukti.Text);
      end;
    except
      MsgProsesGagal(Choice);
    end;
  end;
end;


Function TFrInvoiceRPJ.CheckFormMaster:boolean;
begin
   CheckFormMaster:=true;
end;

procedure TFrInvoiceRPJ.RefreshAll;
var i:integer;
begin
   mValid:=False;
   PPN.ItemIndex:=0;
   for i:= 0 to Panel1.ControlCount-1 do
   begin
      if (Panel1.Controls[i] is TEdit) then
         (Panel1.Controls[i] as TEdit).Clear;
      if (Panel1.Controls[i] is TPBNumEdit) then
         (Panel1.Controls[i] as TPBNumEdit).Value:=0;
   end;
   LNamaCustSupp.Caption:='[ . . . ]' ;
   LAlamatCustSupp.Caption:='[ . . . ]' ;
end;

procedure TFrInvoiceRPJ.UpdateDataBiaya(Choice:Char;Kodet:String);
begin
  BM:=QuBiayaPO.GetBookmark;
  With sp_BiayaPO do
  begin
    close;
    Prepared;
    Parameters[1].Value:=Choice;
    Parameters[2].Value:=NoBukti.Text;
    if choice='D' then
    begin
       Parameters[3].Value:=QuBiayaPOUrut.AsInteger;
       Parameters[18].Value:='INVRJ';
    end
    else
    begin
      Parameters[3].Value:=mUrut;
      Parameters[4].Value:=NoFPJ.Text;
      if TglFPJ.Text='  /  /    ' then
         Parameters[5].Value := Null
      else
         Parameters[5].Value:=TglFPJ.Date;
      Parameters[6].Value:=NilaiFPJ.Value;
      if TglLaporFPJ.Text='  /  /    ' then
         Parameters[7].Value:=null
      else
         Parameters[7].Value:=TglLaporFPJ.Date;
      Parameters[8].Value:=PPh.ItemIndex;
      Parameters[9].Value:=NoPPh21.Text;
      if TglPPh21.Text='  /  /    ' then
         Parameters[10].Value:=null
      else
         Parameters[10].Value:=TglPPh21.Date;
      Parameters[11].Value:=NilaiPPh21.Value;
      if TglLaporPPh21.Text='  /  /    ' then
         Parameters[12].Value := null
      else
         Parameters[12].Value:=TglLaporPPh21.Date;
      Parameters[13].Value:=NPWP.Text;
      Parameters[14].Value:=NamaCust.Text;
      Parameters[15].Value:=Alamat1.Text;
      Parameters[16].Value:=Alamat2.Text;
      Parameters[17].Value:=Kota.Text;
      Parameters[18].Value:='INVRJ';
    end;
    Parameters[19].Value:=Perkiraan.Text;
    try
      ExecProc;
      UpdateUrutTransaksi('DBPajakMasuk',NoBukti.Text);
      if Choice='I' then
      begin
        TampilData(NoBukti.Text);
        QuBiayaPO.Locate('NOFPJ',NoFPJ.Text,[LOP,LOC]);
        LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                    ' Barang = '+QuotedStr(NoFPJ.Text));
      end else if Choice='U' then
      begin
        TampilData(NoBukti.Text);
        if QuBiayaPO.BookmarkValid(BM) then
        begin
          try
             QuBiayaPO.GotoBookmark(BM);
          finally
             QuBiayaPO.FreeBookmark(BM);
          end
        end else
        begin
          QuBiayaPO.FreeBookmark(BM);
          QuBiayaPO.Last;
        end;
        LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                    ' Barang = '+QuotedStr(NoFPJ.Text));
      end
      Else if Choice='D' then
      begin
        LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                    ' Barang = '+QuotedStr(QuBiayaPONOFPJ.AsString));

        TampilData(NoBukti.Text);
      end;
    except
      MsgProsesGagal(Choice);
    end;
  end;

end;

Procedure TFrInvoiceRPJ.AmBilDataBeli;
begin
   if not QuBeli.IsEmpty then
   begin
      if QuBeliPPnP.AsFloat=10 then
         CPpnP.ItemIndex:=0
      else
      if QuBeliPPnP.AsFloat=11 then
       CPpnP.ItemIndex:=1;
      Tanggal.Date:=QuBeliTanggal.AsDateTime;
      Pemungut.Checked:=QuBeliISFLag.AsBoolean;
      KodeCustSupp.Text:=QuBeliKODECUSTSUPP.AsString;
      LNamaCustSupp.Caption:=QuBeliNamaCustSupp.AsString;
      LAlamatCustSupp.Caption:=QuBeliAlamat.AsString+chr(13)+QuBeliKota.AsString;
      NoPBL.Text:=QuBeliNOSPR.AsString;
      SPB.Text:=QuBeliContractNo.AsString;
      //TanggalSPB.Date:=QuBeliTGLSPB.AsDateTime;
      //NoPO.Text:=QuBeliNOPO.Text;
      KodeVls.Text:=QuBeliKODEVLS.AsString;
      Kurs.AsFloat:=QuBeliKURS.AsFloat;
      {if IsPPN=1 then
      PPN.ItemIndex:=QuBeliPPN.AsInteger-1
      Else if Isppn=0 then
         PPN.ItemIndex:=QuBeliPPN.AsInteger;}
         PPN.ItemIndex:=QuBeliPPN.AsInteger;
      Freight.Value:=QuBeliFREIGHT.AsFloat;
      Lain2.Value:=QuBeliLAIN2.AsFloat;
      //Tipe.ItemIndex := QuBeliTipe.AsInteger;
      //xNoUrutFPJ := QuBeliNourutFPJ.Value;
      NoInvoice.Text := QuBeliNoinvoice.AsString;
      TglInvoice.Date := QuBeliTglInvoice.AsDateTime;
      TanggalSPB.Date := QuBeliTglSPBX.AsDateTime;
      TipeBayar.ItemIndex:=QuBeliTIPEBAYAR.AsInteger;
      Hari.Value:=QuBeliHARI.Value;
      if QuBeliISFLag.AsBoolean then
         Flagmenu.ItemIndex := 1
      else
         Flagmenu.ItemIndex := 0;
   end;
end;

// PROCEDURE DAN FUNCTION MILIK DELPHI

procedure TFrInvoiceRPJ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if mExit=true then
  begin
     FrMainInvoiceRPJ.ToolButton10.Click;
     Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
     Action:=cafree;
  end
  else
  begin
     Action:=caNone;
  end;
end;

procedure TFrInvoiceRPJ.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrInvoiceRPJ.FormShow(Sender: TObject);
begin
  mValid:=False;
  RefreshAll;
  xModalKoreksi:=FrMainInvoiceRPJ.ModalKoreksi;
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
   end;}
  If xModalKoreksi = False then
  begin
    TglInvoice.Date := Tanggal.Date;
    TampilData(NoBukti.Text);
    ActiveControl:=KodeCustSupp;
  end
  else
  Begin
    NoBukti.Text:=gTempNoBukti;
    Daftar_Nomor(TipeTrans,NoUrut.Text,NoBukti.Text,1);
    TampilData(NoBukti.Text);
    //PPN.Items.Clear;
    IsPPN:=FrMainInvoiceRpj.QuInvoiceRPJFlagTipe.AsInteger;
    {if IsPPN=0 then
    begin
    PPN.Items.Add('None') ;
    End
    Else  if IsppN=1 then
    Begin
    PPN.Items.Add('Exclude') ;
    PPN.Items.Add('Include') ;
    End;}
    AmBilDataBeli;
    NoUrut.Text := QuBeliNOURUT.AsString;
    NoUrut.Enabled:=False;
    Tipe.Enabled := false;
    KodeCustSupp.Enabled := false;
    Tanggal.Enabled:=CekPeriode(IDUser,Tanggal.Date);
    if Tanggal.CanFocus then
      ActiveControl:=Tanggal
    else ActiveControl:=dxDBGrid1;

  end;
end;

procedure TFrInvoiceRPJ.FormCreate(Sender: TObject);
begin
  TipeTrans:='TT';
  Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
  Qnt2.Top:=Qnt.Top;
  Qnt2.Left:=Qnt.Left;
  LSatuan2.Top:=Qnt2.Top+4;
  LSatuan2.Left:=Qnt2.Left+Qnt2.Width+8;
  Qnt1.Top:=Qnt2.Top;
  Qnt1.Left:=Qnt2.Left+Qnt2.Width+70;
  LSatuan1.Top:=Qnt1.Top+4;
  LSatuan1.Left:=Qnt1.Left+Qnt1.Width+8;
end;

procedure TFrInvoiceRPJ.KoreksiBtnClick(Sender: TObject);
begin
    mValid:=false;
    model:='koreksi';
    // data yang di update
    if QuBeli.IsEmpty=false then
    begin
      TampilTombolDetail(True);
      mUrut:=QuBeliURUT.AsInteger;
      KodeBrg.Text:=QuBeliKODEBRG.AsString;
      LNamaBrg.Caption:='[ '+QuBeliNamaBrg.AsString+' ]';
      LSatuan2.Caption:='[ '+QuBeliSat_2.AsString+' ]';
      mSat_2:=QuBeliSat_2.AsString;
      LSatuan1.Caption:='[ '+QuBeliSat_1.AsString+' ]';
      mSat_1:=QuBeliSat_1.AsString;
      mIsiBrg:=QuBeliIsi.AsFloat;
      Qnt2.Value:=QuBeliQnt2.AsFloat;
      Qnt1.Value:=QuBeliQnt.AsFloat;
      Harga.Value:=QuBeliHARGA.AsFloat;
      DiscP1.Value:=QuBeliDiscP1.AsFloat;
      DiscRp1.Value:=QuBeliDiscRp1.AsFloat;
      Nosat.Items.Clear;
      Nosat.Items.Add('Pilih Satuan');
      Nosat.Items.Add(mSat_1);
      Nosat.Items.Add(mSat_2);
      Nosat.ItemIndex := QuBeliNosat.AsInteger;
      DiscPdet2.Value:=QuBeliDiscP2.AsFloat;
      DiscPDet3.Value:=QuBeliDiscP3.AsFloat;
      DiscPDet4.Value:=QuBeliDiscP4.AsFloat;
      DiscPDet5.Value:=QuBeliDiscP5.AsFloat;
      if QuBeliNosat.AsInteger=1 then
      begin
         Qnt.Value:=Qubeli.FieldByName('Qnt').AsFloat;
         LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value/mIsiBrg)+' '+mSat_2+' ]'
      end
      else
      if QuBeliNosat.AsInteger=2 then
      begin
         Qnt.Value:=Qubeli.FieldByName('Qnt2').AsFloat;
         LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value*mIsiBrg)+' '+mSat_1+' ]';
      end;
      TampilanQntSatuan(QuBeliKonversi.AsInteger);
      ActiveControl:=Harga;
    end
    else
    begin
      MsgKoreksiDataKosong;
      ActiveControl:=dxDBGrid1;
    end;
end;

procedure TFrInvoiceRPJ.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
    mExit:=True;
    Close;
  end
  else if Key=VK_Return then
  begin
    KoreksiBtn.Click;
  end;
end;

procedure TFrInvoiceRPJ.wwDBGrid1Enter(Sender: TObject);
begin
  FrInvoiceRPJ.KeyPreview:=false;
  CheckFormMaster;
end;

procedure TFrInvoiceRPJ.wwDBGrid1Exit(Sender: TObject);
begin
  FrInvoiceRPJ.KeyPreview:=true;
end;

procedure TFrInvoiceRPJ.BitBtn1Click(Sender: TObject);
begin
  if CekPeriode(IdUser,TANGGAL.Date)=true then
  begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      if length(Kodebrg.Text)>0 then
      begin
        if (Nosat.Visible=True) and (Nosat.ItemIndex=0) then
        begin
          MsgDataTidakBolehKosong('Satuan');
          try
            ActiveControl:=Nosat;
          except
          end;
        end else
        begin
          if model='write' then
          begin
            UpdateDataBeli('I','BL');
            if IsRPJ=False then
            ActiveControl:=Kodebrg;
          end
          else if model='koreksi' then
          begin
            UpdateDataBeli('U','BL');
            SpeedButton1.Click;
          end;
          ClearPanelDetail;
        end;
      end else
      begin
        MsgDataTidakBolehKosong('Kode Barang');
        ActiveControl:=KodeBrg;
      end;
    end else
    begin
      MsgPeriodeSudahDikunci;
    end;
  end
  else
    MsgTanggalTidakSesuaiPeriode;
end;

procedure TFrInvoiceRPJ.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
end;

procedure TFrInvoiceRPJ.FormDestroy(Sender: TObject);
begin
  FrInvoiceRPJ:=nil;
end;

procedure TFrInvoiceRPJ.dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
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

procedure TFrInvoiceRPJ.DiscP1Enter(Sender: TObject);
begin
  mValid:=True;
  mNilaiEnter:=(Sender as TPBNumEdit).Value;
end;

procedure TFrInvoiceRPJ.DiscP1Exit(Sender: TObject);
var xNilaiDiscExit: Real;
begin
  {if mValid then
  begin
    xNilaiDiscExit:=(Sender as TPBNumEdit).Value;
    if FormatFloat(',0.0000',mNilaiEnter)<>FormatFloat(',0.0000',xNilaiDiscExit) then
    begin
      if Sender=DiscP1 then
        DiscRp1.Value:=(Harga.AsFloat*DiscP1.AsFloat/100);
      if Sender=DiscRp1 then
      begin
        try
          DiscP1.Value:=(DiscRp1.AsFloat*100)/Harga.AsFloat;
        except
          DiscP1.Value:=0;
        end;
      end;
    end;
  end;  }
    if mValid then
  begin
    xNilaiDiscExit:=(Sender as TPBNumEdit).Value;
    {if FormatFloat(',0.0000',mNilaiDiscEnter)<>FormatFloat(',0.0000',xNilaiDiscExit) then
    begin
      DiscRp.Value:=ProsesDiskon(Sender);
      DiskonTotal:=ProsesDiskon(Sender);
    end;  }
    DiscRp1.Value:=ProsesDiskon(Sender);
      DiskonTotal:=ProsesDiskon(Sender);
  end;
end;
function TfrInvoiceRPJ.prosesdiskon(Sender:TObject): real;
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
      if DiscP1.AsFloat<>0 then
         Disc1:=Price*(DiscP1.AsFloat/100);
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

procedure TFrInvoiceRPJ.HargaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
    SpeedButton1.Click;

end;

procedure TFrInvoiceRPJ.TanggalEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrInvoiceRPJ.TanggalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
  begin
      if  (CekPeriode(IDUser,TANGGAL.Date)=False) then
        Abort;
      UpdatedbBeli;
    //  if (Sender=TglInvoice) then  ActiveControl:=NOPO
    //  Else if (Sender=NOPO) then  ActiveControl:=SPB;
  end
  else if Key=Vk_Escape then
  begin
   If xModalKoreksi = False then
    begin
      Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
      mValid:=False;
      RefreshAll;
      TampilData(NOBUKTI.Text);
      ActiveControl:=KodeCustSupp;
      mExit:=True;
    end
    else
    begin
      mExit:=True;
      Close;
    end;
  end;
end;

procedure TFrInvoiceRPJ.TanggalChange(Sender: TObject);
begin
  if mValid then
  begin
    mUbahHd:=True;
    if (Sender=Kurs) or (Sender=PPN) or (Sender=DiskonP) or (Sender=DiskonRp) or (Sender=Freight) or (Sender=Lain2) then
    begin
      mUbahHdDet:=True;
      if Sender=DiskonP then
        mTipeDisc:=0
      else if Sender=DiskonRp then
        mTipeDisc:=1;
    end;
  end;
end;

procedure TFrInvoiceRPJ.HeaderBawahKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
  begin
    if  (CekPeriode(IDUser,TANGGAL.Date)=False) then
      Abort;
    UpdatedbBeliBawah(Sender);
    if Sender=Lain2 then
      ActiveControl:=dxDBGrid1;
  end
  else if Key=Vk_Escape then
  begin
    ActiveControl:=dxDBGrid1;
  end;
end;


procedure TFrInvoiceRPJ.NoPBLEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrInvoiceRPJ.TampilIsiRPJ;
Var RecNoinv:String;
begin
     KodeBrows:=8014;
     Application.CreateForm(TFrBrows, FrBrows);
     FrBrows.IsiData:=KOdeCustSupp.Text;
     FrBrows.Nokira :=IntToStr(Isppn);
     FrBrows.ShowModal;
     if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.FieldByName('NoBukti').AsString<>'') then
     begin
       NoPBL.Text:=FrBrows.QuBrows.FieldByName('NoBukti').AsString;
//       nopo.text :=FrBrows.QuBrows.FieldByName('NoPO').AsString;
       Noinvoice.Text:=FrBrows.QuBrows.FieldByName('NoINv').AsString;
       NOPO.Text:=FrBrows.QuBrows.FieldByName('PONO').AsString;
       TglInvoice.Date:=FrBrows.QuBrows.FieldByName('TGlINV').AsDateTime;
       SPB.Text :=FrBrows.QuBrows.FieldByName('ContractNo').AsString;
       TanggalSPB.Date:=FrBrows.QuBrows.FieldByName('TGLSPBX').AsDateTime;
       TipeBayar.ItemIndex:=FrBrows.QuBrows.FieldByName('TipeBayar').AsInteger;
       hari.Value:=FrBrows.QuBrows.FieldByName('Hari').AsInteger;
       KodeVls.Text:=FrBrows.QuBrows.FieldByName('Valas').Asstring;
       Kurs.Value:=FrBrows.QuBrows.FieldByName('KUrs').AsFloat;
       //TglInvoice.Date:=FrBrows.QuBrows.Fieldbyname('Tanggal').AsDateTime;
      // PPN.ItemIndex:=FrBrows.QuBrows.FieldByName('PPN').AsINteger;
       {if IsPPN=1 then
         PPN.ItemIndex:=FrBrows.QuBrows.FieldByName('PPN').AsINteger-1
       Else if Isppn=0 then
         PPN.ItemIndex:=FrBrows.QuBrows.FieldByName('PPN').AsINteger;}
       PPN.ItemIndex:=FrBrows.QuBrows.FieldByName('PPN').AsINteger;
       KodeCustSupp.Text :=FrBrows.QuBrows.FieldByName('KodeCustSupp').AsString;
       Tipe.ItemIndex := FrBrows.QuBrows.FieldByName('Tipe').AsInteger  ;
       RecNoinv:=FrBrows.QuBrows.FieldByName('NoINv').AsString;
       IsPPN:=FrBrows.QuBrows.FieldByName('FlagTipe').AsInteger;
       KodeBrows:=999;
       Application.CreateForm(TFrBrows, FrBrows);
       FrBrows.IsiData:=RecNoinv;
       FrBrows.ShowModal;
       if (FrBrows.ModalResult=mrOk) then
        begin
          with FrBrows.QuBrows do
          begin
             IsRPJ:=true;
             First;
             while Not Eof do
              Begin
               model:='write';
                ClearPanelDetail;
                //TambahBtn.Click;
                Nosat.Items.Clear;
                Nosat.Items.Add('Pilih Satuan');
                Nosat.Items.Add(Fieldbyname('Sat_1').asstring);
                Nosat.Items.Add(Fieldbyname('Sat_1').asstring);
                Nosat.ItemIndex := QuBeliNosat.AsInteger;
               mIsiBrg:=Fieldbyname('Isi').AsFloat;
               KodeBrg.Enabled:=True;
               Kodebrg.Text:=Fieldbyname('Kodebrg').asstring;
               Qnt.Value:=Fieldbyname('QntEnt').AsFloat;
               Nosat.ItemIndex:=Fieldbyname('Nosat').AsInteger;
               Harga.Value:=Fieldbyname('Harga').AsFloat;
               Discp1.value:=Fieldbyname('Discp').AsFloat;
               DiscpDet2.value:=Fieldbyname('Discp2').AsFloat;
               DiscpDet3.value:=Fieldbyname('Discp3').AsFloat;
               DiscpDet4.value:=Fieldbyname('Discp4').AsFloat;
               DiscpDet5.value:=Fieldbyname('Discp5').AsFloat;
               DiscRp1.value:=Fieldbyname('DiscRP').AsFloat;
               mSat_1:=Fieldbyname('Sat_1').asstring;
               mSat_2:=Fieldbyname('Sat_2').asstring;
               BitBtn1.Click;
               Next;
              end;
          end;
        End;
     end
     else ActiveControl:=NoPBL;

     
end;

procedure TFrInvoiceRPJ.NoPBLExit(Sender: TObject);
begin
  if mValid then
  begin
     if NOPBL.Text<>'-' then
     begin
        if Length(NOPBL.Text)=0 then TampilIsiRPJ else
         begin
              if DataBersyarat(   ' Declare @Nobukti varchar(30) Select @nobukti=:0 '+
                                  ' Select a.NoBukti, a.Tanggal, a.KodecustSupp, B.NamaCustSupp, B.Alamat, C1.NOSPB, D.Tanggal TGLSPB, C1.Tipe '+
                                  ' from dbSPBRjual a '+
                                  ' left Outer join vwBrowsCust b on b.KodeCustSupp=A.kodecustSupp '+
                                  ' Left Outer join (Select nobukti, NoInvoice from DBRInvoicePLDET Group by nobukti, NoInvoice) C on C.nobukti=a.NoRPJ '+#13+
                                  ' Left Outer join (Select NoSPB,  NoBukti, 1 Tipe from dbInvoicePLDet group by NoSPB, NoBukti) C1 on C1.NoBukti=C.NoInvoice '+#13+
                                  ' left Outer join (Select Nobukti, Tanggal, NoSPP from DBSPB) D on D.NoBukti=C1.NoSPB '+
                                  ' where A.nobukti=@Nobukti ',
                                  [NoPBL.Text], DM.Qucari) then
              begin
                nopbl.text := DM.QuCari.FieldByname('NoBukti').AsString;
                KodeCustSupp.Text :=DM.QuCari.FieldByname('KodeCustSupp').AsString;
                //NOPO.Text := DM.QuCari.FieldByname('NoPO').AsString;
                SPB.Text := DM.QuCari.FieldByname('NoSPB').AsString;
                TanggalSPB.Date := DM.QuCari.FieldByname('TGLSPB').AsDateTime;
              end
              else  TampilIsiRPJ;

             KodeBrows:=999;
             Application.CreateForm(TFrBrows, FrBrows);
             FrBrows.IsiData:=NoPBL.Text;
             FrBrows.ShowModal;
         End ;
     End;
  end;
end;


procedure TFrInvoiceRPJ.TampilIsiRPJDet;
begin
     KodeBrows:=8014;
     Application.CreateForm(TFrBrows, FrBrows);
     FrBrows.IsiData:=KOdeCustSupp.Text;
     FrBrows.JnsPakai := Flagmenu.ItemIndex;
     FrBrows.ShowModal;
     if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.FieldByName('NoBukti').AsString<>'') then
     begin
       NoPBL.Text:=FrBrows.QuBrows.FieldByName('NoBukti').AsString;
//       nopo.text :=FrBrows.QuBrows.FieldByName('NoPO').AsString;
       SPB.Text :=FrBrows.QuBrows.FieldByName('NOSPB').AsString;
       TanggalSPB.Date:=FrBrows.QuBrows.FieldByName('TGLSPB').AsDateTime;
       KodeCustSupp.Text :=FrBrows.QuBrows.FieldByName('KodeCustSupp').AsString;
       Tipe.ItemIndex := FrBrows.QuBrows.FieldByName('Tipe').AsInteger  ;
     end
     else ActiveControl:=NoPBL;
end;

procedure TFrInvoiceRPJ.ClearPanelDetail;
var i :integer;
begin
   KodeBrg.Text:='';
   LNamaBrg.Caption:='[ . . . ]';
   LSatuan2.Caption:='[ . . . ]';
   LSatuan1.Caption:='[ . . . ]';
   LSatuan.Caption:='[ . . . ]';
   Ket.Clear;
   Qnt.AsFloat:=0.00;
   Qnt2.AsFloat:=0.00;
   Qnt1.AsFloat:=0.00;
   Qnt.MaxValue :=0;
   for i:= 0 to Panel3.ControlCount-1 do
   begin
      if (Panel3.Controls[i] is TPBNumEdit) then
         (Panel3.Controls[i] as TPBNumEdit).Value:=0;
   end;
end;

procedure TFrInvoiceRPJ.TambahBtnClick(Sender: TObject);
begin
  model:='write';
  IsRPJ:=False;
  TampilTombolDetail(True);
  ClearPanelDetail;
  KodeBrg.Enabled:=True;
  ActiveControl:=KodeBrg;
end;

procedure TFrInvoiceRPJ.HapusBtnClick(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      if QuBeli.IsEmpty=true then
      begin
        MsgHapusDataKosong;
        ActiveControl:=dxDBGrid1;
      end else
      begin
        StrPCopy(S,Format('Anda yakin Kode %s dan Nama %s dihapus ?',
        [QuBeliKodeBrg.AsString, QuBeliNamaBrg.AsString]));
        if (Application.MessageBox(S,'Hapus Data',
          MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
        begin
         UpdateDataBeli('D','BL');
        end;
      end;
    end
    else
    begin
      MsgPeriodeSudahDikunci;
      ActiveControl:=dxDBGrid1;
    end;
end;

procedure TFrInvoiceRPJ.TampilIsiBarang;
begin
  KodeBrows:=80141;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.NoKira:=NoPBL.Text;
  FrBrows.IsiData:=KodeBrg.Text;
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.FieldByName('KodeBrg').AsString<>'') then
  begin
    with FrBrows.QuBrows do
    begin
      KodeBrg.Text:=FrBrows.QuBrows.FieldByName('KodeBrg').AsString;
      LNamaBrg.Caption:='[ '+FrBrows.QuBrows.FieldByName('NamaBrg').AsString+' ]';

      mSat_1:=FrBrows.QuBrows.FieldByName('Sat_1').AsString;
      mSat_2:=FrBrows.QuBrows.FieldByName('Sat_2').AsString;
      mIsiBrg:=FrBrows.QuBrows.FieldByName('Isi').AsFloat;
      LSatuan2.Caption:='[ '+mSat_2+' ]';
      LSatuan1.Caption:='[ '+mSat_1+' ]';
      Nosat.Items.Clear;
      Nosat.Items.Add('Pilih Satuan');
      Nosat.Items.Add(mSat_1);
      Nosat.Items.Add(mSat_2);
      mUrutRPB:=FrBrows.QuBrows.FieldByName('Urut').AsInteger;

      Qnt2.Value:=FrBrows.QuBrows.FieldByName('Qnt2Sisa').AsFloat;
      Qnt1.Value:=FrBrows.QuBrows.FieldByName('QntSisa').AsFloat;
      Nosat.ItemIndex := FieldByName('nosat').AsInteger;
      Harga.Value :=FrBrows.QuBrows.FieldByName('Harga').AsFloat;
      if FieldByName('nosat').AsInteger=1 then
      begin
         Qnt.Value:=FieldByName('QntSisa').AsFloat;
         LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value/mIsiBrg)+' '+mSat_2+' ]'
      end
      else
      if FieldByName('nosat').AsInteger=2 then
      begin
         Qnt.Value:=FieldByName('Qnt2Sisa').AsFloat;
         LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value*mIsiBrg)+' '+mSat_1+' ]';
      end;
      Qnt.MaxValue := Qnt.Value;
    end;
  end
  else
    ActiveControl:=KodeBrg;
end;

procedure TFrInvoiceRPJ.KodeBrgEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrInvoiceRPJ.KodeBrgExit(Sender: TObject);
begin
  if mValid Then
  begin
    if Length(KodeBrg.Text)=0 then TampilIsiBarang else
    begin
      if DataBersyarat('Declare @noBukti Varchar(30), @Kodebrg varchar(25)'+#13+
                         'Select @Nobukti=:0,@kodebrg=:1 '+#13+
                         'Select A.KODEBRG, B.NAMABRG, A.NoSat, A.Qnt2-isnull(C.Qnt2,0) Qnt2Sisa, A.Sat_2, A.Qnt-isnull(C.Qnt,0) QntSisa, '+#13+
                         '       A.Sat_1, A.Isi, A.NoBukti, A.Urut, M1.Harga '+#13+
                         'from dbSPBRJualDet A '+#13+
                         '     left outer join dbBarang B on B.KodeBrg=A.KodeBrg '+#13+
                         '     left outer join (select NOSPR, UrutSPR, sum(Qnt2) Qnt2, sum(Qnt) Qnt '+#13+
                         '                      from DBINVOICERPJDet where NOSPR=@Nobukti '+#13+
                         '                      group by NOSPR, UrutSPR) C on C.NOSPR=A.NoBukti and C.UrutSPR=A.Urut '+#13+
                         ' Left OUter join dbInvoicePLDet M1 on A.Noinv = M1.Nobukti and A.urutINv=M1.urut  '+#13+
                         ' where A.NoBukti=@Nobukti and ((A.Qnt2-isnull(C.Qnt2,0))>0 or (A.Qnt-isnull(C.Qnt,0))>0) '+#13+
                         '  order by A.KodeBrg',
      [NOPBL.Text,NOPBL.Text,KodeBrg.Text], DM.QuCari)=True then
      begin
        with DM.QuCari do
        begin
          KodeBrg.Text:=FieldByName('KodeBrg').AsString;
          LNamaBrg.Caption:='[ '+FieldByName('NamaBrg').AsString+' ]';
          mUrutRPB:=FieldByName('Urut').AsInteger;
          mSat_1:=FieldByName('Sat_1').AsString;
          mSat_2:=FieldByName('Sat_2').AsString;
          mIsiBrg:=FieldByName('Isi').AsFloat;
          LSatuan2.Caption:='[ '+mSat_2+' ]';
          LSatuan1.Caption:='[ '+mSat_1+' ]';
          Qnt2.Value:=FieldByName('Qnt2Sisa').AsFloat;
          Qnt1.Value:=FieldByName('QntSisa').AsFloat;
          Nosat.Items.Clear;
          Nosat.Items.Add('Pilih Satuan');
          Nosat.Items.Add(mSat_1);
          Nosat.Items.Add(mSat_2);
          Nosat.ItemIndex := FieldByName('nosat').AsInteger;
          Harga.Value :=FieldByName('Harga').AsFloat;
          if FieldByName('nosat').AsInteger=1 then
          begin
             Qnt.Value:=FieldByName('QntSisa').AsFloat;
             LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value/mIsiBrg)+' '+mSat_2+' ]'
          end
          else
          if FieldByName('nosat').AsInteger=2 then
          begin
             Qnt.Value:=FieldByName('Qnt2Sisa').AsFloat;
             LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value*mIsiBrg)+' '+mSat_1+' ]';
          end;
        end;
      end
      else TampilIsiBarang;
    end;
    if KodeBrg.Text<>'' then
    begin
      DataBersyarat('select cast(nFix as int) Konversi from dbBarang where KodeBrg=:0',[KodeBrg.Text],DM.QuCari);
      TampilanQntSatuan(DM.QuCari.FieldByName('Konversi').AsInteger);
      if Qnt.CanFocus then
        Qnt.SetFocus;
      if Qnt2.CanFocus then
        Qnt2.SetFocus;
    end;
  end;
end;

procedure TFrInvoiceRPJ.KodeBrgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
    SpeedButton1.Click;
end;

procedure TFrInvoiceRPJ.SpeedButton5Click(Sender: TObject);
begin
  if CheckFormMaster=true then
  begin
    Model:='write';
    ClearPanelDetailBiaya;
    TampilTombolBiaya(True);
    ActiveControl:=NPWP;
  end
  else
  begin
     ShowMessage('Form Master Tidak Lengkap, Silahkan Anda Periksa !');
  end;
end;

procedure TFrInvoiceRPJ.SpeedButton4Click(Sender: TObject);
begin
  if CheckFormMaster=True then
  begin
     mValid:=False;
     model:='koreksi';
     // data yang di update
     if QuBeli.IsEmpty=False then
     begin
        TampilTombolBiaya(True);
        mUrut:=QuBiayaPOUrut.AsInteger;
        NPWP.Text := QuBiayaPONPWP.AsString;
        NamaCust.Text := QuBiayaPONamaPKP.AsString;
        Alamat1.Text := QuBiayaPOAlamatPKP1.AsString;
        Alamat2.Text := QuBiayaPOAlamatPKP2.AsString;
        Kota.Text := QuBiayaPOKotaPKP.AsString;

        NoFPJ.Text := QuBiayaPONOFPJ.AsString;
        TglFPJ.Date:= QuBiayaPOTGLFPJ.AsDateTime;
        NilaiFPJ.Value := QuBiayaPONPPn.Value;
        TglLaporFPJ.Date := QuBiayaPOTglLaporFPJ.AsDateTime;

        mValid := True;
        NilaiPPh21.Value := QuBiayaPOnPPh.Value;
        mValid := False;
        PPh.ItemIndex := QuBiayaPOTipePPh.AsInteger;
        NoPPh21.Text := QuBiayaPONoPPh.AsString;
        TglPPh21.Date := QuBiayaPOTglPPh.AsDateTime;

        TglLaporPPh21.Date := QuBiayaPOTglLaporPPh.AsDateTime;

     end
     else
     begin
        ShowMessage('Tidak ada transaksi yang dikoreksi !');
        ActiveControl:=cxGrid1;
     end;
  end;
end;

procedure TFrInvoiceRPJ.SpeedButton3Click(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if QuBiayaPO.IsEmpty=true then
    begin
      MsgHapusDataKosong;
      ActiveControl:=cxGrid1;
    end
    else
    begin
      begin
        StrPCopy(S,Format('Anda yakin Kode %s dan Nama %s dihapus ?',
        [QuBiayaPONoFPJ.AsString, QuBiayaPONoPPH.AsString]));
        if (Application.MessageBox(S,'Hapus Data',
          MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
        begin
          mUrut:=QuBiayaPOUrut.AsInteger;
          UpdateDataBiaya('D','BL');
        end;
      end;
    end;
  end
  else
  begin
    MsgPeriodeSudahDikunci;
    ActiveControl:=cxGrid1;
  end;
end;

procedure TFrInvoiceRPJ.BitBtn2Click(Sender: TObject);
begin
  if (CekPeriode(IdUser,Tanggal.date) ) then
  begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      if length(NoFPJ.Text)>0 then
      begin
        if model='write' then
        begin
          UpdateDataBiaya('I','BL');
          ClearPanelDetailBiaya;
          ActiveControl:=NPWP;
        end
        else if model='koreksi' then
        begin
          UpdateDataBiaya('U','BL');
          SpeedButton7.Click;
        end;
      end else
      begin
        MsgDataTidakBolehKosong('No. Faktur Pajak');
        ActiveControl:=NoFPJ;
      end;
    end else
    begin
      MsgPeriodeSudahDikunci;
      ActiveControl:=NPWP;
    end;
  end
  else
    MsgTanggalTidakSesuaiPeriode;
end;

procedure TFrInvoiceRPJ.SpeedButton7Click(Sender: TObject);
begin
  mValid:=false;
  TampilTombolBiaya(False);
  ActiveControl:=cxGrid1;
  ClearPanelDetailBiaya;
end;

procedure TFrInvoiceRPJ.TampilIsiPerkiraan(xkodebrows:Integer;xPerkiraan:String;Var xEdit : TEdit; Var xLabel:TLabel);
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
      FrInvoiceRPJ.ActiveControl := xedit;
  end
  else
    FrInvoiceRPJ.ActiveControl := xedit;
end;

procedure TFrInvoiceRPJ.PerkiraanEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrInvoiceRPJ.PerkiraanExit(Sender: TObject);
begin
  if mValid then
    begin
      if DataBersyarat('select * from dbPerkiraan '+
                       'where Perkiraan=:0 and Tipe=''1'' and perkiraan<>:1 ',[Perkiraan.text,''],DM.Qucari) then
      begin
        Perkiraan.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
        NamaPerkiraan.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';

      end
      else
      begin
        TampilIsiPerkiraan(10051,'',Perkiraan,namaPerkiraan);

      end;
    end;
end;

procedure TFrInvoiceRPJ.NilaiPPh21Enter(Sender: TObject);
begin
  mValid := true;
end;

procedure TFrInvoiceRPJ.NilaiPPh21Change(Sender: TObject);
begin
  if mValid then
  begin
    PPh.Enabled := (NilaiPPh21.Value<>0);
    NoPPh21.Enabled := (NilaiPPh21.Value<>0);
    TglPPh21.Enabled := (NilaiPPh21.Value<>0);
    TglLaporPPh21.Enabled := (NilaiPPh21.Value<>0);
    Perkiraan.Enabled := (NilaiPPh21.Value<>0);
    if (NilaiPPh21.Value=0) and (model<>'koreksi') then
    begin
      PPh.ItemIndex :=0;
      NoPPh21.Text := '';
      TglPPh21.Text := '  /  /    ';
      TglLaporPPh21.Text := '  /  /    ';
      Perkiraan.Text := '';
      NamaPerkiraan.Caption :='[ . . . ]';
    end
    else
      PPh.ItemIndex :=0;
  end;
end;

procedure TFrInvoiceRPJ.NoInvoiceExit(Sender: TObject);
begin
  if mValid then
  begin
    if Length(NoInvoice.Text)=0 then
    begin
      MsgDataTidakBolehKosong('No. Invoice');
      ActiveControl := NoInvoice;
    end
    else
  end;
end;

procedure TFrInvoiceRPJ.NoUrutChange(Sender: TObject);
begin
  if mValid then
  begin
    if Length(NoUrut.Text)=5 then
    begin
      Konfig(TipeTrans,Nourut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date);
      NOBUKTI.Text:=MyNoBukti;
    end
    else
      ActiveControl:=NoUrut;
  end;
end;

procedure TFrInvoiceRPJ.NoUrutKeyDown(Sender: TObject; var Key: Word;
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
      if not QuBeli.IsEmpty then
      Begin
         AmBilDataBeli;
      end
      else
      Begin
        if xModalKoreksi then
        begin
          ActiveControl := NoUrut;
        end;
      end;
    end;
  end
  else }if Key=Vk_Escape then
  begin
    mExit := True;
    Close;
  end;
end;

procedure TFrInvoiceRPJ.NoUrutExit(Sender: TObject);
var myTempNoUrut: String;
begin
  if mValid then
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
      If Not Daftar_Nomor(TipeTrans,NoUrut.Text, NOBUKTI.Text,isMax) then
      begin
        MessageDlg('Nomor : '+NOBUKTI.Text+' telah digunakan oleh '+MyUser+'.',mtWarning,[MbOk],0);
        ActiveControl := NoUrut;
      end;
    end;
  end;
end;

procedure TFrInvoiceRPJ.KodeCustSuppExit(Sender: TObject);
begin
  if (mValid=True) then
  begin
    Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,IDUser);
    if DataBersyarat(' Select A.KodeCustSupp, A.NamaCustSupp, A.Alamat, A.Kota, A.Fax,A.PPN from vwBrowsCust A '+
                    ' Where A.kodecustsupp=:0 '+
                    ' order by A.KodeCustSupp',[KodeCustSupp.text],DM.Qucari) then
    begin
      KodecustSupp.Text:=DM.Qucari.FieldByName('KodeCustSupp').AsString;
      LNamaCustSupp.Caption:=DM.Qucari.FieldByName('NamaCustSupp').AsString;
      LAlamatCustSupp.Caption:=DM.Qucari.FieldByName('Alamat').AsString+chr(13)+DM.Qucari.FieldByName('Kota').AsString;
      IsPPN:=DM.Qucari.fieldbyname('PPN').AsInteger;
      XCUstSupp:=DM.Qucari.fieldbyname('KodeCustSupp').Asstring;
      mValid := False;
      IsiNoBuktiBaru;
      Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,isMax);
      {PPN.Items.Clear;
      if IsPPN=0 then
      begin
      PPN.Items.Add('None') ;
      End
      Else  if IsppN=1 then
      Begin
      PPN.Items.Add('Exclude') ;
      PPN.Items.Add('Include') ;
      End;}
      PPN.ItemIndex:=0;
    end
    else
      TampilIsiSupplier;
  end
  else

end;

procedure TFrInvoiceRPJ.KodeCustSuppEnter(Sender: TObject);
begin
mValid:=True;
end;


procedure TFrInVoiceRPJ.TampilIsiSupplier;
begin
  KodeBrows:=30051;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeCustSupp.Text;
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.FieldByName('KodeCustSupp').AsString<>'') then
  begin
   KodeCUstSupp.Text:=FrBrows.QuBrows.FieldByName('KodeCustSupp').AsString;
   LNamaCustSupp.Caption:=FrBrows.QuBrows.FieldByName('NamaCustSupp').AsString;
   LAlamatCustSupp.Caption:=FrBrows.QuBrows.FieldByName('Alamat').AsString+chr(13)+FrBrows.QuBrows.FieldByName('Kota').AsString;
   IsPPN:=FrBrows.QuBrows.fieldbyname('PPN').AsInteger;
   XCUstSupp:=FrBrows.QuBrows.fieldbyname('KodeCustSupp').Asstring;
   mValid := False;
    IsiNoBuktiBaru;
    Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,isMax);
    {PPN.Items.Clear;
    if IsPPN=0 then
    begin
    PPN.Items.Add('None') ;
    End
    Else  if IsppN=1 then
    Begin
    PPN.Items.Add('Exclude') ;
    PPN.Items.Add('Include') ;
    End;           }
    PPN.ItemIndex:=0;
  end
  else
   ActiveControl:=KodeCustSupp;
end;

procedure TFrInvoiceRPJ.KodeVlsEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrInvoiceRPJ.KodeVlsExit(Sender: TObject);
begin
  if mValid Then
  begin
    if length(KOdeVls.Text)=0 then TampilIsiValas else
    begin
      if MyFindField('dbValas','KodeVls',KodeVls.Text)=true then
      begin
        with DM.QuCari do
        begin
           KodeVls.Text:=fieldbyname('KodeVls').AsString;
           Kurs.Value:=fieldbyname('Kurs').AsCurrency;
           if UpperCase(KodeVls.Text)='IDR' then
              Kurs.ReadOnly:=true
           else
              Kurs.ReadOnly:=false;
        end;
      end
      else TampilIsiValas;
    end;

  end;
  VlsIDR(KOdeVls,Kurs);
  //if KOdeVls.Enabled=false then ActiveControl:=PPN else ActiveControl:=KOdeVls;
  ActiveControl:=PPN;
end;


procedure TFrInvoiceRPJ.TampilIsiValas;
begin
  KodeBrows:=11001;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeVLs.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    with FrBrows.QuBrows do
    begin
       KodeVLs.Text:=fieldbyname('KodeVls').AsString;
       Kurs.Value:=fieldbyname('Kurs').AsCurrency;
       if UpperCase(KOdeVls.Text)='IDR' then
          Kurs.ReadOnly:=true
       else
          Kurs.ReadOnly:=false;
    end;
  end
  else
    ActiveControl:=KodeVls;
end;

procedure TFrInvoiceRPJ.KodeCustSuppKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrInvoiceRPJ.HargaExit(Sender: TObject);
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
    DiscRp1.Value:=ProsesDiskon(Sender);
      DiskonTotal:=ProsesDiskon(Sender);
  end;
end;

procedure TFrInvoiceRPJ.HargaEnter(Sender: TObject);
begin
  mValid:=True;
  //mNilaiDiscEnter:=(Sender as TPBNumEdit).Value;
end;

procedure TFrInvoiceRPJ.QntKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrInvoiceRPJ.CetakClick(Sender: TObject);
begin
    if Iscetak then
         MainCetak(frxDBDataset1,frxDataPerusahaan,DM.QuCari,Dm.QuCari2,
           'SP_CETAKRjual','Vwperusahaan',QuBeliNOBUKTI.AsString,
           'Nota\NotaRJual.fr3',frxReport1)     
    else
         MsgTidakBerhakCetakData;

end;

procedure TFrInvoiceRPJ.SpeedButton8Click(Sender: TObject);
begin
    with frxReport1 do
    begin
      LoadFromFile(ExtractFilePath(Application.ExeName)+'Nota\NotaRJual.fr3');
      DesignReport;
    end;
end;

procedure TFrInvoiceRPJ.PemungutClick(Sender: TObject);
begin
        mValid:=True;
end;

procedure TFrInvoiceRPJ.PemungutExit(Sender: TObject);
begin
  if mValid then
  begin
    mUbahHd := True;
    if (CekPeriode(IDUser,TANGGAL.Date)=False) then
       Abort;
    UpdatedbBeli;
  end;
  FrInvoiceRPJ.KeyPreview := True;
end;

procedure TFrInvoiceRPJ.CPpnPClick(Sender: TObject);
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
     if CPpnP.ItemIndex=2 then
       PPnP.Value:=12
       ;
   { if Idx <> -1 then
      begin
        //PPnP.Value := INteger(CPpnP.Items.Objects[Idx]);
        // Do something with value you retrieved
        PPnP.Value := StrToFloatDef(CPpnP.Text,value);
      end;   }
end;

end.
