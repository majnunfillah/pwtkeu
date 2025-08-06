unit FrmJualKasir;

interface

uses
  Windows, Messages, SysUtils, StrUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, ppDB, ppDBPipe, ppCtrls, ppBands,
  ppClass, ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppCache, ppComm,
  ppRelatv, ppProd, 
  ADODB, Buttons, sButtonControl, sCustomButton,
  ComCtrls, sPanel, sPageControl, sEdit, dxPageControl, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, PBNumEdit,
  dxmdaset, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxEdit,
  cxDBData, cxGridTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridDBTableView, cxGrid,
  cxFilterControl, Grids, DBGrids,

  OleCtrls, frxClass, frxDBSet, jpeg, ppModule, raCodMod, ppViewr, ImgList,
  Mask, cxLookAndFeelPainters, cxLookAndFeels, cxButtons,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxEditor, dxExEdtr, dxEdLib,frxDesgn, Menus, ToolEdit, DateUtils,
  Spin, RXCtrls, cxSpinEdit, cxTimeEdit, myGlobal;

type

  TFrJualKasir = class(TForm)
    Panel4: TPanel;
    Panel1: TPanel;
    Panel6: TPanel;
    cxStyleRepository1: TcxStyleRepository;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    QuGroup: TADOQuery;
    QuBarang: TADOQuery;
    frxCetakDapur: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    ShowDetailOrder1: TMenuItem;
    HideDetailOrder1: TMenuItem;
    frxDesignDapur: TfrxDesigner;
    Panel3: TPanel;
    pageOrder: TdxPageControl;
    sheetFBCategories: TdxTabSheet;
    Panel25: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel28: TPanel;
    Panel32: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel33: TPanel;
    Panel11: TPanel;
    Panel10: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    Panel7: TPanel;
    QuBeli: TADOQuery;
    DsBeli: TDataSource;
    QuToping: TADOQuery;
    Sp_Beli: TADOStoredProc;
    frxDBPerusahaan: TfrxDBDataset;
    QuPerusahaan: TADOQuery;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    QuGudang: TADOQuery;
    QuGudangKodeGdg: TStringField;
    Timer1: TTimer;
    Panel12: TPanel;
    Panel13: TPanel;
    HapusBtn: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Grandtotal2: TPBNumEdit;
    Label3: TLabel;
    //Tanggal: TDateEdit;
    Label2: TLabel;
    NoBukti: TEdit;
    Label1: TLabel;
    NoUrut: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    frxDapur: TfrxReport;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Panel14: TPanel;
    SpeedButton9: TSpeedButton;
    Panel15: TPanel;
    SpeedButton10: TSpeedButton;
    Panel16: TPanel;
    Panel17: TPanel;
    SpeedButton11: TSpeedButton;
    Panel18: TPanel;
    SpeedButton12: TSpeedButton;
    Panel19: TPanel;
    SpeedButton13: TSpeedButton;
    Panel20: TPanel;
    SpeedButton7: TSpeedButton;
    Panel21: TPanel;
    SpeedButton8: TSpeedButton;
    Label9: TLabel;
    IsOrder: TCheckBox;
    Pemesan: TEdit;
    Panel22: TPanel;
    Panel23: TPanel;
    BtnOrder: TSpeedButton;
    Panel24: TPanel;
    BtnPesanan: TSpeedButton;
    Panel26: TPanel;
    BtnPengambilan: TSpeedButton;
    Label10: TLabel;
    Alamat: TEdit;
    Label11: TLabel;
    Telepon: TEdit;
    Label12: TLabel;
    //TanggalAmbil: TDateEdit;
    Sp_Pesan: TADOStoredProc;
    sheetPengambilan: TdxTabSheet;
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBTableView;
    tvMasterNOBUKTI: TcxGridDBColumn;
    tvMasterPemesan: TcxGridDBColumn;
    tvDetail: TcxGridDBTableView;
    tvDetailNOBUKTI: TcxGridDBColumn;
    tvDetailURUT: TcxGridDBColumn;
    tvDetailKodeBrg: TcxGridDBColumn;
    tvDetailNAMABRG: TcxGridDBColumn;
    tvDetailKeterangan: TcxGridDBColumn;
    tvDetailIsSelesai: TcxGridDBColumn;
    tvDetailIsKirim: TcxGridDBColumn;
    tvMaster2: TcxGridDBTableView;
    tvMaster2NOBUKTI: TcxGridDBColumn;
    tvMaster2Pemesan: TcxGridDBColumn;
    tvMaster2URUT: TcxGridDBColumn;
    tvMaster2KodeBrg: TcxGridDBColumn;
    tvMaster2NAMABRG: TcxGridDBColumn;
    tvMaster2Keterangan: TcxGridDBColumn;
    tvMaster2IsSelesai: TcxGridDBColumn;
    tvMaster2IsKirim: TcxGridDBColumn;
    tvDetail2: TcxGridDBTableView;
    tvDetail2NOBUKTI: TcxGridDBColumn;
    tvDetail2URUT: TcxGridDBColumn;
    tvDetail2KodeBrg: TcxGridDBColumn;
    tvDetail2NAMABRG: TcxGridDBColumn;
    tvDetail2Keterangan: TcxGridDBColumn;
    tvDetail2IsSelesai: TcxGridDBColumn;
    tvDetail2IsKirim: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    QuMaster: TADOQuery;
    QuMasterNOBUKTI: TStringField;
    QuMasterPemesan: TStringField;
    DsMaster: TDataSource;
    QuDetail1: TADOQuery;
    QuDetail1NOBUKTI: TStringField;
    QuDetail1URUT: TIntegerField;
    QuDetail1KodeBrg: TStringField;
    QuDetail1Keterangan: TStringField;
    QuDetail1IsSelesai: TBooleanField;
    QuDetail1IsKirim: TBooleanField;
    QuDetail1NAMABRG: TStringField;
    DsDetail1: TDataSource;
    cxGrid1Level2: TcxGridLevel;
    Panel27: TPanel;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    Label13: TLabel;
    SpeedButton16: TSpeedButton;
    Sp_AmbilTunai: TADOStoredProc;
    QuMasterAlamat: TStringField;
    QuMasterTelepon: TStringField;
    QuMasterTanggalAmbil: TDateTimeField;
    tvMasterAlamat: TcxGridDBColumn;
    tvMasterTelepon: TcxGridDBColumn;
    tvMasterTanggalAmbil: TcxGridDBColumn;
    TotalTax: TPBNumEdit;
    TotalService: TPBNumEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    GrandTotal: TPBNumEdit;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2NamaMenu: TdxDBGridMaskColumn;
    dxDBGrid2Keterangan: TdxDBGridMaskColumn;
    dxDBGrid2Qnt: TdxDBGridMaskColumn;
    dxDBGrid2HrgNetto: TdxDBGridMaskColumn;
    dxDBGrid2SubTotal: TdxDBGridMaskColumn;
    dxDBGrid2TaxPPn: TdxDBGridMaskColumn;
    dxDBGrid2TaxService: TdxDBGridMaskColumn;
    QuBeliNoBukti: TStringField;
    QuBeliKodeBrg: TStringField;
    QuBeliTanggal: TDateTimeField;
    QuBeliNoSat: TWordField;
    QuBeliSatuan: TStringField;
    QuBeliIsi: TBCDField;
    QuBeliHrgNetto: TBCDField;
    QuBeliQnt: TBCDField;
    QuBeliTglInput: TDateTimeField;
    QuBeliSubTotal: TBCDField;
    QuBeliUserID: TStringField;
    QuBeliKodeCust: TStringField;
    QuBeliCtk: TBooleanField;
    QuBeliharga: TBCDField;
    QuBeliDiskon: TBCDField;
    QuBeliBayarTunai: TBCDField;
    QuBeliBayarDebet: TBCDField;
    QuBeliNoDebet: TStringField;
    QuBeliBankDebet: TStringField;
    QuBeliBayarKredit: TBCDField;
    QuBeliTipeKartuKredit: TWordField;
    QuBeliNoKredit: TStringField;
    QuBeliBankKredit: TStringField;
    QuBeliBayarVoucher: TBCDField;
    QuBeliDiscMember: TBCDField;
    QuBeliDiscHarian: TBCDField;
    QuBeliNamaMenu: TStringField;
    QuBeliKeterangan: TStringField;
    QuBeliDP: TBCDField;
    QuBeliKodeKeterangan: TStringField;
    QuBeliIsTakeIn: TBooleanField;
    QuBeliPPn: TIntegerField;
    QuBeliService: TIntegerField;
    QuBeliTaxPPn: TBCDField;
    QuBeliTaxService: TBCDField;
    dxMemDataKasir: TdxMemData;
    DsMemDataKasir: TDataSource;
    QuBeliUrut: TIntegerField;
    dxDBGrid2NoBukti: TdxDBGridMaskColumn;
    dxDBGrid2Urut: TdxDBGridMaskColumn;
    cbAmbil: TCheckBox;
    Label18: TLabel;
    Kodegdg: TEdit;
    LnamaCounter: TLabel;
    Label19: TLabel;
//    TgKirim: TDateEdit;
    Label20: TLabel;
    JamKirim: TcxTimeEdit;
    cbIn: TCheckBox;
    cbOut: TCheckBox;
    QuBeliPiutang: TBCDField;
    TANGGAL: TDateEdit;
    TgKirim: TDateEdit;
    TanggalAmbil: TDateEdit;

    procedure timerGeserTulisanTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btBack2FBClick(Sender: TObject);
    procedure Panel39Resize(Sender: TObject);
    procedure NoUrutChange(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure HapusBtnClick(Sender: TObject);
    procedure frxDapurAfterPrint(Sender: TfrxReportComponent);
    procedure btUpGroupClick(Sender: TObject);
    procedure btDownGroupClick(Sender: TObject);
    procedure btUpMenuClick(Sender: TObject);
    procedure btDownMenuClick(Sender: TObject);
    procedure frxDapurGetValue(const VarName: String; var Value: Variant);
    procedure Timer1Timer(Sender: TObject);
    Function CekBanyakGroup:boolean;
    procedure dxDBGrid2CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBGrid2CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure dxDBGrid2Editing(Sender: TObject; Node: TdxTreeListNode;
      var Allow: Boolean);
    procedure QuBeliAfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure PemesanExit(Sender: TObject);
    procedure IsOrderExit(Sender: TObject);
    procedure BtnOrderClick(Sender: TObject);
    procedure BtnPesananClick(Sender: TObject);
    procedure BtnPengambilanClick(Sender: TObject);
    procedure tvMasterFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure Grandtotal2Change(Sender: TObject);
    procedure dxDBGrid2QntChange(Sender: TObject);
    procedure dxDBGrid2Edited(Sender: TObject; Node: TdxTreeListNode);
    procedure KodegdgEnter(Sender: TObject);
    procedure KodegdgExit(Sender: TObject);
    procedure cbAmbilClick(Sender: TObject);
  private
    { Private declarations }
    IsEdit:Boolean;
    XQnt:Double;
    XKeterangan:String;
    mNamaSatuan: TNamaSatuanBrg;
    mIsiSatuan: TIsiSatuanBrg;
    function Pembulatan500(pNilai: Real): Real;
    procedure MyGroupClick(Sender: TObject);
    procedure SimpanData(Mode:Char);
    procedure CekToping(Nama:String);
    procedure CekPlusMinusRequest;
    procedure UpdatePemesanOrder;
    procedure SimpanDataAmbil(Mode:Char);
  public
    { Public declarations }
    mUrut, MyTipeHit, mUrutGroup,
    NoUrutPsn, NoUrutContent,
    IdxBahan, IdxExecBahan            : integer;
    yy,mm,dd : word;
    vCust, vGudang, vSatuan,MyGroup,MyMenu : String;
//    vIsi : Integer;

    vMenu, MejaAwal, Cap,
    GabAwal, mGabung,
    TipeTrans, PlusPpn,
    Nomor, TempMeja, xGroup,
    OrderNumber, xOrderNumber,
    vBahan, vBahanCaption,vExecBahan, KodeKasir  : String;
    isPembatalan, isAmbil:Boolean;

    IsPindah, IsGabung, IsBungkus,
    IsAktif, IsCompliment             : Boolean;
    Selisih                           : Currency;

       CountBarang, CountBahan,
   CountToping,
   CountExecBahan                : integer;
   TBarang                       : array [1..999] of TsBitBtn;
   TToping                       : array [1..999] of TsBitBtn;

    procedure BuatDaftGroup;
    procedure BuatDaftBarang;
    procedure MyBarangClick(Sender: TObject);
    procedure MyTopingClick(Sender: TObject);
    procedure IsiNoBuktiBaru;
    procedure Lihat;
    procedure LihatToping;
    procedure BuatGroup;
    procedure TampilData;
    Function CariDiskonHarian:Boolean;
    Function Check_Nomor_Kasir(pDate,pBulan,pTahun: Integer; pPPn:String; var pTipeTrans:String; var pPlusPPN:String; var pNomor:String): Boolean;
  end;

var
   FrJualKasir          : TFrJualKasir;
   I, M                          : Byte;
   PX, PY, Sudut,
   JarumDet, JarumMnt, JarumJam  : Integer;
   Jam, Menit, Detik, MD         : Word;

   FormDiv2, JamDiv2,
   TanggalDiv2, GbrJamDiv2,
   SapiJamDiv2,
   PanelDiv2,
   MejaKosongDiv2, MejaIsiDiv2   : integer;

   Koordinat, PosKlik            : TPoint;
   PosLeft, PosTop               : Integer;

   Brg                           : array [1..999] of TPanel;
   ArrayKe                       : array [1..999] of integer;
   Grp                           : array [1..999] of TsBitBtn;

   DataGrp                       : array [1..999] of String;


   Masak                         : array [1..999] of TsBitBtn;
   Bahan                         : array [1..999] of TsBitBtn;
   ExecBahan                     : array [1..999] of TsBitBtn;

   CustRecord                    : TcxCustomGridRecord;

   vKodeBrg,vKodeGrp,vKodeGdg,vSatuan, vKodeMenu,vHari : String;
   vQntToping, vQnt, vCtk : integer;
   vHarga, vIsi, vKonversi,vDiskon :real;
   PilihToping, AdaToping, AdaPlusMinus : Boolean;

   model : String;

   vUrutGroup:integer;
   mBulan,mTahun:string;

   S:array[0..255]of char;
   Posisi : Integer;

implementation

uses
    MyModul, MyProcedure, Types, FrmBrows, FrmPembayaran, FrmLogin,frmMainJualKasir,FrmUtama;

{$R *.dfm}

Function TFrJualKasir.CariDiskonHarian:Boolean;
begin
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Hari,Diskon,Aktif,');
    SQL.Add('case when Hari=0 then ''Minggu'' ');
    SQL.Add('     when Hari=1 then ''Senin'' ');
    SQL.Add('     when Hari=2 then ''Selasa'' ');
    SQL.Add('     when Hari=3 then ''Rabu'' ');
    SQL.Add('     when Hari=4 then ''Kamis'' ');
    SQL.Add('     when Hari=5 then ''Jumat'' ');
    SQL.Add('     when Hari=6 then ''Sabtu'' end NamaHari');
    SQL.Add('from dbDiskonHarian');
    SQL.Add('where (case when Hari=0 then ''Minggu'' ');
    SQL.Add('     when Hari=1 then ''Senin'' ');
    SQL.Add('     when Hari=2 then ''Selasa'' ');
    SQL.Add('     when Hari=3 then ''Rabu'' ');
    SQL.Add('     when Hari=4 then ''Kamis'' ');
    SQL.Add('     when Hari=5 then ''Jumat'' ');
    SQL.Add('     when Hari=6 then ''Sabtu'' end)=:0 and Aktif=1');
    Prepared;
    Parameters[0].Value:=vHari;
    Open;
  end;
  Result := not DM.QuCari.IsEmpty;

end;

Function TFrJualKasir.Check_Nomor_Kasir(pDate,pBulan,pTahun: Integer; pPPn:String; var pTipeTrans:String; var pPlusPPN:String; var pNomor:String): Boolean;
begin
  with DM.QuNomor do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select top 1 * from (');
    SQL.Add('select ');
    sql.add('       cast(case when isnumeric(Left(NoBukti,5))=1 then Left(NoBukti,5) else 0 end as int) Nomor,');
    sql.Add('       Isnull(cast(case when isnumeric(left(NoBukti,5))=1 then Left(NoBukti,5) else 0 end as int),0)+1 NomorBaru');

    if IsOrder.Checked then
      sql.Add('from dbPesanTunai')
    else
      sql.Add('from dbJualTunai');

    sql.Add('where Day(Tanggal)='+IntToStr(PDate)+' and month(Tanggal)='+IntToStr(pBulan)+' and year(Tanggal)='+IntToStr(pTahun)+'and Right(NoBukti,3)='+QuotedStr(KodeKasir)+'  ');
    SQL.Add(') T ');
    sql.add('order by Nomor desc');
    Open;
  end;
  if DM.QuNomor.IsEmpty then
  begin
      pNomor:='00001';

  end else
  begin
      //Nomor:=RightStr('00000'+IntToStr(DM.QuNomor.FieldByName('NomorBaru').AsInteger),5);
      pNomor:=FormatFloat('00000',DM.QuNomor.FieldByName('NomorBaru').AsInteger);
  end;
  Result:=True;
end;

procedure TFrJualKasir.IsiNoBuktiBaru;
begin
  DecodeDate(Date,YY,MM,DD);
  If DaysInAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln))<=DD then
   DD:= DaysInAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln));
  TANGGAL.Date := EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),DD);
  //Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),'POS',Nomor,NomorBukti,Tanggal.Date);
  //NoUrut.Text := NomorBukti;
  //NOBUKTI.Text := Nomor;
  if Check_Nomor_Kasir(DayOf(Tanggal.Date),MonthOf(Tanggal.Date),YearOf(Tanggal.Date),'*',TipeTrans,PlusPPn,Nomor)=True then
  begin
    mBulan:=Romawi(Date,'BULAN');
    mTahun:=Romawi(Date,'TAHUN');
    mTahun:=RightStr(mTahun,2);
    NoUrut.Text:=Nomor;
  end;

  if IsOrder.Checked then
    NoBukti.Text:=NoUrut.Text+'/P/'+IntToStr(DayOf(Tanggal.Date))+'/'+mBulan+'/'+mTahun+'/'+KodeKasir
  else
    NoBukti.Text:=NoUrut.Text+'/'+IntToStr(DayOf(Tanggal.Date))+'/'+mBulan+'/'+mTahun+'/'+KodeKasir;

  QuBeliQnt.ReadOnly:=True;
  SpeedButton1.Enabled:=True;
  model:='tambah';
  SpeedButton2.Visible:=False;

end;

procedure TFrJualKasir.TampilData;
begin

  with QuBeli do
  begin
    Close;
    Parameters[0].Value:=NoBukti.Text;
    Open;
  end;

  dxMemDataKasir.Close;
  dxMemDataKasir.CreateFieldsFromDataSet(QuBeli);
  dxMemDataKasir.LoadFromDataSet(QuBeli);
  dxMemDataKasir.Open;

  (dxMemDataKasir.FieldByName('Qnt') As TNumericField).DisplayFormat :=',0';
  (dxMemDataKasir.FieldByName('SubTotal') As TNumericField).DisplayFormat :=',0.00';

  IsEdit:=False;
  XQnt:=dxMemDataKasir.fieldbyname('Qnt').AsFloat;
  XKeterangan:=dxMemDataKasir.fieldbyname('Keterangan').AsString;



//  GrandTotal2.Value:=dxDBGrid2SubTotal.SummaryFooterValue;
//  TotalTax.Value:=dxDBGrid2TaxPPn.SummaryFooterValue;
//  TotalService.Value:=dxDBGrid2TaxService.SummaryFooterValue;

  with DM.QuCari do
    begin
      Close;
      SQL.Clear;

      SQL.Add('select A.NOBUKTI, SUM(B.SubTotal) Subtotal, SUM(B.TaxPPn) TaxPPn, SUM(B.TaxService) TaxService ');
      if IsOrder.Checked then
        SQL.Add('from dbPesanTunai A ')
      else
        SQL.Add('from dbJualTunai A ');
      SQL.Add('left outer join ');
      SQL.Add('	( ');
      SQL.Add('		select A.NOBUKTI, SUM(A.subtotal) SubTotal, ');
      SQL.Add('		case when C.IsTakeIn = 1 then ISNULL(D.PPn, 0) else 0 end PPn, ');
      SQL.Add('		case when C.IsTakeIn = 1 then ISNULL(D.Service,0) else 0 end Service, ');
      SQL.Add('		case when C.IsTakeIn = 1 then SUM(ISNULL(D.PPn, 0) * A.subtotal / 100) else 0 end TaxPPn, ');
      SQL.Add('		case when C.IsTakeIn = 1 then SUM(ISNULL(D.Service,0) * a.subtotal / 100) else 0 end TaxService ');
      if IsOrder.Checked then
        begin
          SQL.Add('		from dbPesanTunaiDet A ');
          SQL.Add('		left outer join dbPesanTunai B on B.NOBUKTI = A.NOBUKTI ');
        end
      else
        begin
          SQL.Add('		from dbJualTunaiDet A ');
          SQL.Add('		left outer join dbJualTunai B on B.NOBUKTI = A.NOBUKTI ');
        end;
      SQL.Add('		left outer join DBBARANG C on C.KODEBRG = A.KodeBrg ');
      SQL.Add('		left outer join DBMasterPajak D on D.Bulan = MONTH(B.TANGGAL) and D.Tahun = YEAR(B.TANGGAL) ');
      SQL.Add('		group by A.NOBUKTI, C.IsTakeIn, D.PPn, D.Service ');
      SQL.Add('	)B on B.NOBUKTI = A.NOBUKTI ');
      SQL.Add('where A.NOBUKTI = :0 ');
      SQL.Add('group by A.NOBUKTI ');

      Parameters[0].Value := NoBukti.Text;

      Open;

      GrandTotal2.Value:=Fields[1].AsInteger;
      TotalTax.Value:=Fields[2].AsInteger;
      TotalService.Value:=Fields[3].AsInteger;

    end;


end;

procedure TFrJualKasir.BuatGroup;
begin
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select isnull(max(urut),0) as UrutGroup from DBJUALTunaiDet Where NoBukti=:0');
    Prepared;
    Parameters[0].Value:=NoBukti.Text;
    Open;
  end;

{
  with DM.QuCari2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select isnull(max(urutGroup),0) as UrutGroup from DBJUALTunaiDet Where NoBukti=:0');
    Prepared;
    Parameters[0].Value:=NoBukti.Text;
    Open;
  end;

  if PilihToping=True then
     vUrutGroup:=DM.QuCari2.FieldByName('UrutGroup').AsInteger
    else
     vUrutGroup:=DM.QuCari.FieldByName('UrutGroup').AsInteger;
}
end;

procedure TFrJualKasir.SimpanData(Mode:Char);
begin
  if Mode='I' then mUrut:=1
     else mUrut:=0;
   BuatGroup;
  IsiSatuanBrg(vKodeMenu, mNamaSatuan, mIsiSatuan);
  if IsOrder.Checked then
    begin
      with Sp_Pesan do
        begin
          Prepared;
          Parameters[1].Value := 'I';
          if Mode='D' then
          begin
            Parameters[2].Value := NoBukti.Text;
           // Parameters[5].Value := QuBeliUrut.AsInteger;
            Parameters[6].Value := QuBeliKodeBrg.AsString;
            Parameters[17].Value := QuBeliKeterangan.AsString;
          end
          else
          begin
            Parameters[2].Value := NoBukti.Text;
            Parameters[3].Value := Tanggal.Date;
            if model='tambah' then
            begin
              Parameters[4].Value := 'CASH';
              Parameters[14].Value := 0;
            end else
            begin
              Parameters[4].Value := '-';
              Parameters[14].Value := 1;
              Parameters[16].Value := FormatDateTime('dd/mm/yyyy hh:mm',Now);

            end;


            if FrUtama.LevelKoreksi Then
            Begin
             QuBeli.Locate('KodeBrg;Urut', VarArrayOf([ dxMemDataKasir.FieldByName('KodeBrg').AsString,dxMemDataKasir.FieldByName('Urut').AsInteger]),[]);
             if IsEdit=False Then
             Begin
              XQnt:=dxMemDataKasir.fieldbyname('Qnt').AsFloat;
              XKeterangan:=dxMemDataKasir.fieldbyname('Keterangan').AsString;
             end;
             Parameters[5].Value := QuBeliUrut.AsInteger;
             Parameters[6].Value := QuBeliKodeBrg.AsString;
             Parameters[7].Value := -XQnt;
             Parameters[8].Value := QuBeliharga.AsFloat;
             Parameters[11].Value := QuBeliSatuan.AsString;
             Parameters[12].Value := QuBeliIsi.AsFloat;
             Parameters[17].Value := XKeterangan;
             Parameters[28].Value := 1;
             Parameters[29].Value := QuBeliTglInput.AsDateTime;
             Parameters[30].Value := FrUtama.XIdKoreksi;
            end
            else
            Begin
             Parameters[5].Value := mUrut;
             Parameters[6].Value := vKodeMenu;
             Parameters[7].Value := 1;
             Parameters[8].Value := vHarga;
             Parameters[11].Value := mNamaSatuan[1]; //vSatuan;
             Parameters[12].Value := mIsiSatuan[1];//vIsi;
             Parameters[17].Value := '';
             Parameters[28].Value := 0;
            end;
            Parameters[9].Value := 0;
            Parameters[10].Value := 1;

            Parameters[13].Value := FrUtama.XIdKoreksi;
            Parameters[15].Value := 0;

            Parameters[18].Value := NoUrut.Text;
            Parameters[19].Value := Pemesan.Text;
            Parameters[20].Value := 1;
            Parameters[21].Value := Alamat.Text;
            Parameters[22].Value := Telepon.Text;
            Parameters[23].Value := TanggalAmbil.Date;
            Parameters[24].Value := cbAmbil.Checked;
            Parameters[25].Value := Kodegdg.Text;
            Parameters[26].Value := TgKirim.Date;
            Parameters[27].Value := JamKirim.Text;
          end;
          try
            execproc;
            TampilData;
            if Mode='I' then
            begin
              QuBeli.Requery;
              //QuBeli.Last;
            end

          except
            If (Mode='I') Or (Mode='U') then
               showmessage('Proses Gagal !, Data Sudah Ada')
            else If (Mode='D') then
               showmessage('Proses Gagal !, Merek berkaitan dengan transaksi');
          end;
        end;
    end
  else
    begin
        With Sp_Beli do
        begin
          Prepared;
          Parameters[1].Value := 'I';
          if Mode='D' then
          begin
            Parameters[2].Value := NoBukti.Text;
           //
            Parameters[6].Value := QuBeliKodeBrg.AsString;

            Parameters[17].Value := QuBeliKeterangan.AsString;
          end
          else
          begin
            Parameters[2].Value := NoBukti.Text;
            Parameters[3].Value := Tanggal.Date;
            if model='tambah' then
            begin
              Parameters[4].Value := 'CASH';
              Parameters[14].Value := 0;
            end else
            begin
              Parameters[4].Value := '-';
              Parameters[14].Value := 1;
              Parameters[16].Value := FormatDateTime('dd/mm/yyyy hh:mm',Now);

            end;

            Parameters[5].Value := mUrut;
            if FrUtama.LevelKoreksi Then
            Begin
            QuBeli.Locate('KodeBrg;Urut', VarArrayOf([ dxMemDataKasir.FieldByName('KodeBrg').AsString,dxMemDataKasir.FieldByName('Urut').AsInteger]),[]);
            if IsEdit=False Then
             Begin
              XQnt:=dxMemDataKasir.fieldbyname('Qnt').AsFloat;
              XKeterangan:=dxMemDataKasir.fieldbyname('Keterangan').AsString;
             end;
            Parameters[5].Value := QuBeliUrut.AsInteger;
            Parameters[6].Value := QuBeliKodeBrg.AsString;
            Parameters[7].Value := -XQnt;
            Parameters[8].Value := QuBeliharga.AsFloat;
            Parameters[11].Value := QuBeliSatuan.AsString;
            Parameters[12].Value := QuBeliIsi.AsFloat;
            Parameters[17].Value := XKeterangan;
            Parameters[23].Value := 1;
            Parameters[24].Value := QuBeliTglInput.AsDateTime;
            Parameters[25].Value := FrUtama.XIdKoreksi;
            end
            else
            Begin
            Parameters[6].Value := vKodeMenu;
            Parameters[7].Value := 1;
            Parameters[8].Value := vHarga;
            Parameters[11].Value := mNamaSatuan[1]; //vSatuan;
            Parameters[12].Value := mIsiSatuan[1];//vIsi;
            Parameters[17].Value := '';
            Parameters[23].Value := 0;
            end;

            Parameters[9].Value := 0;
            Parameters[10].Value := 1;

            Parameters[13].Value := FrUtama.XIdKoreksi;
            Parameters[15].Value := 0;

            Parameters[18].Value := NoUrut.Text;
            Parameters[19].Value := Pemesan.Text;
            Parameters[20].Value := 0;
            Parameters[21].Value := CBIN.Checked;
            Parameters[22].Value := cbOut.Checked;
          end;
          try
            execproc;
            TampilData;
            if Mode='I' then
            begin
              QuBeli.Requery;
              //QuBeli.Last;
            end

          except
            If (Mode='I') Or (Mode='U') then
               showmessage('Proses Gagal !, Data Sudah Ada')
            else If (Mode='D') then
               showmessage('Proses Gagal !, Merek berkaitan dengan transaksi');
          end;
        end;
    end;
//    mSisaToping:=QuBarang.Fields[5].AsInteger-1;
//   GrandTotal2.Value:=dxDBGrid2SubTotal.SummaryFooterValue;
end;


//////////////////// Daftar Group
procedure TFrJualKasir.BuatDaftGroup;
var
   J, I, Baris, T : integer;
begin

  with QuGroup do
  begin
    Close;
    sql.Clear;
    sql.Add('Select NamaSubGrp NamaGroup from dbSubGroup where KodeGrp=''BJ'' Order by NamaSubGrp');
    open;

    Baris :=1;
    i := 1;
    T := 1;

    while not eof  do
    begin
      for j:= 1 to 10 do
      begin
        if Eof then exit
        else
        begin
          Grp[i] := TsBitBtn.Create(Self);
          Grp[i].Parent := FrJualKasir.Panel9;

          if (j mod 10 = 1) then Grp[i].Left := 2 else
             Grp[i].Left   := Grp[i-1].Left + 75;

          if Baris=1 then Grp[i].Top := 2 else
             Grp[i].Top := t;
          Grp[i].Caption     := Fields[0].AsString;
{   Untuk Cek Gambar
          if FileExists(FieldbyName('Gambar').AsString) then
          begin
             Grp[i].Glyph.LoadFromFile(FieldbyName('Gambar').AsString);
             Grp[i].sStyle.Background.Image.Image.LoadFromFile(FieldbyName('Gambar').AsString);
             Grp[i].sStyle.Background.Image.Percent:=60;
          end;
}
          Grp[i].sStyle.HotStyle.HotPainting.Color := $00F0F9F9;
          Grp[i].sStyle.HotStyle.HotPainting.BevelWidth:=0;
          Grp[i].sStyle.HotStyle.HotPainting.FFontStyle:=[fsBold];
          Grp[i].Height      := 90;
          Grp[i].Width       := 70;
          Grp[i].Font.Style  := [fsBold];
          Grp[i].Layout:=blGlyphTop;
          Grp[i].OnClick     := myGroupClick;
          i := i + 1;
        end;
        Next;
      end;
      Baris := Baris + 1;
      T := Grp[i-2].Top + Grp[i-2].Height + 5;
    end;
  end;
end;

procedure TFrJualKasir.BuatDaftBarang;
var
   J, I, Baris, T : integer;
begin

end;

////////////////// Daftar Menu
procedure TFrJualKasir.MyGroupClick(Sender: TObject);
var
   j, i, Baris, T : integer;
begin
  for i := 1 to CountBarang do
  begin
    try
       TBarang[i].Free;
       TBarang[i] := Nil;
    except

    end;
  end;

  for i := 1 to CountToping do
  begin
    try
       TToping[i].Free;
       TToping[i] := Nil;
    except

    end;
  end;
  CountToping :=0;
  CountBarang :=0;

  with Sender as TsBitBtn do
  begin
//    ShowMessage(Caption);
    with QuBarang do
    begin
      close;
      sql.Clear;
{
      sql.Add('Select a.NamaMenu,a.KodeMenu,');
      sql.Add(' a.HrgJual,');
      SQL.Add('b.KodeGrp,b.isTopingGroup,a.QntToping,a.Diskon from dbMenuBarang a');
      sql.Add('left outer join dbGroup b on a.KodeGrp=b.kodeGrp where a.isToping<>1 and b.nama=:0');
      sql.Add('and (select count(x.KodeBrg) from dbMenuBarangDet x where x.KodeMenu=a.KodeMenu)>0 order by a.Urutan');
}
      SQL.Add('Select a.NamaBrg,a.KodeBrg, a.Hrg1_1, a.KodeGrp, a.KodeSubGrp');
      SQL.Add('from dbBarang a');
      SQL.Add('left outer join dbSubGroup b on a.KodeGrp = b.KodeGrp and a.KODESUBGRP = b.KodeSubGrp ');
      SQL.Add('where a.KODEGRP=''BJ'' and b.namasubgrp = :0');

      Prepared;
      Parameters[0].Value := Caption;
      open;
      MyGRoup := Caption;
      Baris :=1;
      i := 1;
      T := 1;
      xGroup := Fields[0].AsString;

      while not eof  do
      begin
        for j := 1 to 10 do
        begin
          if QuBarang.Eof then exit;
          TBarang[i] := TsBitBtn.Create(Self);
          TBarang[i].Parent := FrJualKasir.Panel10;

          if (j mod 10 = 1) then TBarang[i].Left   := 2
          else TBarang[i].Left := TBarang[i-1].Left + 75;

          if Baris=1 then TBarang[i].Top := 2
          else TBarang[i].Top := t;

          TBarang[I].Height             := 90;
          TBarang[I].Width              := 70;
          TBarang[i].Font.Style  := [fsBold];
          TBarang[I].Caption            := Fields[0].AsString;
          TBarang[I].sStyle.SoftControl := False;

          TBarang[i].ShowHint           := True;
          TBarang[I].OnClick            := MyBarangClick;

          CountBarang := i;
          Inc(I);
          QuBarang.next;
        end;
        Inc(Baris);
        T := TBarang[i-2].Top + TBarang[i-2].Height + 5;
      end;
    end;
  end;
end;


///////// DAFTAR TOPING
procedure TFrJualKasir.MyBarangClick(Sender: TObject);
var
   j, i, Baris, T : integer;
begin
  PilihToping:=False;
  //KeyPreview:=False;
  SpeedButton1.Enabled:=False;
  for i := 1 to CountToping do
  begin
    try
       TToping[i].Free;
       TToping[i] := Nil;
    except

    end;
  end;
  with Sender as TsBitBtn do
  begin
    MyMenu := Caption;
    with QuToping do
    begin
      Close;
      sql.Clear;
{
      sql.Add('Select a.NamaMenu,a.KodeMenu,');
      sql.Add(' a.HrgJual,');
      sql.Add('b.KodeGrp,b.isTopingGroup,a.Gambar,a.Diskon from dbMenuBarang a left outer join dbGroup b on a.KodeGrp=b.kodeGrp ');
      sql.Add('where a.isToping=1 ');
      sql.Add('and (select count(x.KodeBrg) from dbMenuBarangDet x where x.KodeMenu=a.KodeMenu)>0');
      if QuBarang.FieldByName('isTopingGroup').AsBoolean=False then
      begin
        SQL.Add('and b.isTopingGroup=1');
      end;
      SQL.Add('order by a.Urutan');
}
      SQL.Add('select Keterangan Nama, KodeGrp+KodeSubGrp+CAST(Urut as varchar(3)) Kode  from DBSubGroupJnsTambah');
      SQL.Add('where KodeGrp = :0 and KodeSubGrp = :1');
      Parameters[0].Value := QuBarang.Fields[3].AsString;
      Parameters[1].Value := QuBarang.Fields[4].AsString;
      Prepared;
      Open;
      QuBarang.Locate('NamaBrg',(Sender as TsBitBtn).Caption, []);
      Lihat;

      if Pemesan.Text = '' then
        begin
          ShowMessage('Belum mengisi pemesan !');
          ActiveControl := Pemesan;
        end
      else
        SimpanData('I');

      Baris :=1;
      i := 1;
      T := 1;
      xGroup := Fields[0].AsString;

      while not eof  do
      begin
        for j := 1 to 10 do
        begin
          if QuToping.Eof then exit;

          TToping[i] := TsBitBtn.Create(Self);
          TToping[i].Parent := FrJualKasir.Panel7;

          if (j mod 10 = 1) then TToping[i].Left   := 2
          else TToping[i].Left := TToping[i-1].Left + 75;

          if Baris=1 then TToping[i].Top := 2
          else TToping[i].Top := t;

          TToping[I].Height             := 90;
          TToping[I].Width              := 70;
          TToping[i].Font.Style  := [fsBold];
          TToping[I].Caption            := Fields[0].AsString;
          TToping[I].sStyle.SoftControl := False;
          TToping[i].ShowHint           := True;
{
          if FileExists(FieldByname('Gambar').AsString) then
             TToping[i].Glyph.LoadFromFile(FieldByname('Gambar').AsString);
}
          TToping[I].OnClick            := MyTopingClick;

          CountToping := i;

          Inc(I);
          QuToping.next;
        end;
        Inc(Baris);
        T := TToping[i-2].Top + TToping[i-2].Height + 5;
      end;
    end;
  end;
end;

procedure TFrJualKasir.CekToping(Nama : String);
begin
  with DM.QuCari do
    begin
      Close;
      SQL.Clear;
      if IsOrder.Checked then
        SQL.Add('select Keterangan from dbPesanTunaiDet ')
      else
        SQL.Add('select Keterangan from dbJualTunaiDet ');
      //SQL.Add('where NOBUKTI = :0 and KodeBrg+Keterangan = :1 and Keterangan like :2');
      //Parameters[0].Value := QuBeliNoBukti.AsString;
      //Parameters[1].Value := QuBeliKodeKeterangan.AsString;

      SQL.Add('where NOBUKTI = :0 and Urut = :1 and Keterangan like :2');
      Parameters[0].Value := dxMemDataKasir.fieldbyname('NoBukti').AsString;
      Parameters[1].Value := dxMemDataKasir.fieldbyname('Urut').Value;

      Parameters[2].Value := '%' + Nama + '%';
      Open;

      if IsEmpty then
        AdaToping := False
      else
        AdaToping := True;
    end;

end;

procedure TFrJualKasir.MyTopingClick(Sender: TObject);
var
   j, i, Baris, T : integer;
begin
  PilihToping:=True;
//  KeyPreview:=False;
  SpeedButton1.Enabled:=False;

  with Sender as TsBitBtn do
  begin
    QuToping.Locate('Nama',(Sender as TsBitBtn).Caption, []);
//    LihatToping;
//    SimpanData('I');
//    QuBeli.Last;
    CekToping(Caption);
    if AdaToping then
      ShowMessage('Sudah ada request ' + Caption)
    else
      begin
        Posisi := dxMemDataKasir.RecNo;
        with DM.QuCari do
          begin
            Close;
            SQL.Clear;
            if IsOrder.Checked then
              SQL.Add('update DBPesanTunaiDet set Keterangan = case when Keterangan = '''' then :0 else Keterangan + '', '' + :1 end')
            else
              SQL.Add('update DBJualTunaiDet set Keterangan = case when Keterangan = '''' then :0 else Keterangan + '', '' + :1 end');
            SQL.Add('where NoBukti = :2 and Urut = :3 ');
            Parameters[0].Value := Caption;
            Parameters[1].Value := Caption;
            Parameters[2].Value := dxDBGrid2NoBukti.Field.Value;
            Parameters[3].Value := dxDBGrid2Urut.Field.Value;
            try
              ExecSQL;
              //QuBeli.Close;
              //QuBeli.Open;
              //QuBeli.Last;
              TampilData;
            except
              ShowMessage('Proses Gagal !');
            end;
          end;
        dxMemDataKasir.Locate('RecId',Posisi,[]);
      end;
  end;
end;

Function TFrJualKasir.CekBanyakGroup:boolean;
begin
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select count(a.NoBukti) as JmlToping ');
    SQL.Add('from dbjualTunaiDet a');
    SQL.Add('left outer join dbMenuBarang b on a.KodeMenu=b.KodeMenu');
    SQL.Add('where a.NoBukti=:0 and a.UrutGroup=:1 ');
    Prepared;
    Parameters[0].Value:=NoBukti.Text;
    Parameters[1].Value:=vUrutGroup;
    Open;
  end;

  if DM.QuCari.FieldByName('JmlToping').AsInteger>QuBarang.FieldByName('QntToping').AsInteger then
     CekBanyakGroup:=True else
     CekBanyakGroup:=False;
end;

procedure TFrJualKasir.Lihat;
begin
  vKodeMenu:=QuBarang.Fields[1].AsString;
  vHarga:=QuBarang.Fields[2].AsFloat;
//  vKodeGrp:=QuBarang.Fields[3].AsString;
//  vQntToping:=QuBarang.Fields[5].AsInteger;
//  vDiskon:=QuBarang.Fieldbyname('Diskon').AsFloat;
end;

procedure TFrJualKasir.LihatToping;
begin
  vKodeMenu:=QuToping.Fields[1].AsString;
  if CekBanyakGroup=True then
    vHarga:=QuToping.Fields[2].AsFloat else
    vHarga:=0;
  vDiskon := QuToping.FieldByname('Diskon').AsFloat;
  vKodeGrp:=QuBarang.Fields[3].AsString;
end;

function TFrJualKasir.Pembulatan500(pNilai: Real): Real;
var
   pNilai1: Real;
begin
  pNilai1 := Round(pNilai) mod 1000;

  if pNilai1 = 0 then Result := Round(pNilai)
  else if (pNilai1 > 0) and (pNilai1 < 500) then Result := Round(pNilai) - pNilai1
  else if pNilai1 >= 500 then Result := Round(pNilai) - pNilai1 + 500;
end;

procedure TFrJualKasir.FormCreate(Sender: TObject);
begin

     JarumDet := PX - 3;
     JarumMnt := PX - 4;
     JarumJam := PX - 20;

     DecodeTime(Now, Jam, Menit, Detik, MD);

     BuatDaftGroup;
     BuatDaftBarang;

     Label7.Caption:='Kasir : '+IDUser;

     QuPerusahaan.Close;
     QuPerusahaan.Open;

     Panel1.Caption:=QuPerusahaan.FieldByName('Nama').AsString+'                                                                                                                                                                                                                                            ';

//     Panel16.Top := ((Panel15.Top - Panel14.Height) div 2) - (Panel16.Height div 2);
end;

procedure TFrJualKasir.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree
end;

procedure TFrJualKasir.timerGeserTulisanTimer(Sender: TObject);
var
   Hasil : string;
begin
     GeserKalimat(Panel1.Caption, Hasil);
     Panel1.Caption := Hasil;
end;

procedure TFrJualKasir.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key=VK_ESCAPE then
  begin
    if QuBeli.IsEmpty then
      Close
    else
      ShowMessage('Tidak bisa keluar, ada transaksi !');
  end
  else if key=13 then
    begin
      if (ActiveControl = Pemesan) or (ActiveControl = KodeGdg)or (ActiveControl = Alamat) or (ActiveControl = Telepon) then
        SendMessage(handle,WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFrJualKasir.btBack2FBClick(Sender: TObject);
var
   I : integer;
begin
  for i := 1 to CountExecBahan do
  begin
    try
       ExecBahan[i].Free;
       ExecBahan[i] := Nil;
    except

    end;
  end;
  pageOrder.ActivePage := sheetFBCategories;
end;

procedure TFrJualKasir.Panel39Resize(Sender: TObject);
var
   PosTengah, SubPosTengah,
   GroupTengah, MenuTengah, MejaTengah : integer;
begin

end;

procedure TFrJualKasir.NoUrutChange(Sender: TObject);
begin
  if Length(NoUrut.Text)=5 then
  begin
    Konfig('POS',Nourut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date);
    NOBUKTI.Text := F1+Separator+F2+Separator+F3+Separator+F4;
  end
  else
    ActiveControl := nourut;       
end;


procedure TFrJualKasir.SpeedButton3Click(Sender: TObject);
begin
    Application.CreateForm(TFrPembayaran, FrPembayaran);
    FrPembayaran.Total.Value:=Grandtotal2.Value;
    FrPembayaran.KodeCust.Text:=QuBeliKodeCust.AsString;
//    FrPembayaran.NamaMember.Caption :='[ '+QuBeliNamaCust.AsString+' ]';
    FrPembayaran.DiscCust.AsFloat := QuBeliDiscMember.AsFloat;
    FrPembayaran.DiscHarian.AsFloat := QuBeliDiscHarian.AsFloat;
    FrPembayaran.JumlahBayar.AsFloat:= QuBeliBayarTunai.AsFloat;
    FrPembayaran.BayarDebet.AsFloat := QuBeliBayarDebet.AsFloat;
    FrPembayaran.NoDebet.Text       := QuBeliNoDebet.AsString;
    FrPembayaran.BankDebet.Text     := QuBeliBankDebet.AsString;
    FrPembayaran.BayarKredit.AsFloat := QuBeliBayarKredit.AsFloat;
    FrPembayaran.NoKredit.Text      := QuBeliNoKredit.AsString;
    FrPembayaran.BankKredit.Text    := QuBeliBankKredit.AsString;
    FrPembayaran.BayarVoucher.AsFloat := QuBeliBayarVoucher.AsFloat;
    FrPembayaran.TipeKreditCard.ItemIndex := QuBeliTipeKartuKredit.AsInteger;
    FrPembayaran.DP.Value := QuBeliDP.AsFloat;
    FrPembayaran.Tax.Value := TotalTax.Value;
    FrPembayaran.Service.Value := TotalService.Value;
    FrPembayaran.ShowModal;
end;

procedure TFrJualKasir.FormShow(Sender: TObject);
begin
if FrUtama.LevelKoreksi Then
Begin
 if FrMainJualKasir.dxPageControl1.ActivePageIndex=0 Then
 Begin
   BtnOrder.Click;
   BtnPesanan.Enabled:=False;
   BtnPengambilan.Enabled:=False;
   NoBukti.Text:= FrMainJualKasir.QuOrderMNOBUKTI.AsString;
   Tanggal.Date:= FrMainJualKasir.QuOrderMTANGGAL.AsDateTime;
   Pemesan.Text:= FrMainJualKasir.QuOrderMPemesan.AsString;
   Alamat.Text:=FrMainJualKasir.QuOrderMAlamat.AsString;
   Telepon.Text:=FrMainJualKasir.QuOrderMTelepon.AsString;
   TanggalAmbil.Date:=FrMainJualKasir.QuOrderMTanggalAmbil.AsDateTime;
   //TgKirim.Date:=FrMainJualKasir.QuOrderMtNOBUKTI.AsString;
   IsOrder.Checked:=FrMainJualKasir.QuOrderMIsOrder.AsBoolean;
   TampilData;
 end
 else if
 FrMainJualKasir.dxPageControl1.ActivePageIndex=1 Then
 Begin
   BtnPesanan.Click;
   BtnOrder.Enabled:=False;
   NoBukti.Text:= FrMainJualKasir.QuMasterNOBUKTI.AsString;
   Tanggal.Date:= FrMainJualKasir.QuMasterTANGGAL.AsDateTime;
   Pemesan.Text:= FrMainJualKasir.QuMasterPemesan.AsString;
   Alamat.Text:=FrMainJualKasir.QuMasterAlamat.AsString;
   Telepon.Text:=FrMainJualKasir.QuMasterTelepon.AsString;
   TanggalAmbil.Date:=FrMainJualKasir.QuMasterTanggalAmbil.AsDateTime;
   //TgKirim.Date:=FrMainJualKasir.QuOrderMtNOBUKTI.AsString;
   IsOrder.Checked:=FrMainJualKasir.QuMasterISCETAK.AsBoolean;
   TampilData;
 end;
 ActiveControl := dxDBGrid2;
 pageOrder.ActivePageIndex := 0;
end
else
Begin
  IsiNoBuktiBaru;
  vHari:=FormatDateTime('dddd',Date);
  TampilData;
  ActiveControl := Pemesan;
  pageOrder.ActivePageIndex := 0;
end;

end;

procedure TFrJualKasir.HapusBtnClick(Sender: TObject);
begin

  StrPCopy(S,Format('Anda yakin Nama %s dan Keterangan %s dihapus ?',
  [dxMemDataKasir.FieldByName('NamaMenu').AsString,
  dxMemDataKasir.FieldByName('Keterangan').AsString]));
  if (Application.MessageBox(S,'Hapus Data',
     MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
  begin
{
    if QuBeliisToping.AsBoolean=False then
    begin
      with DM.QuCari do
      begin
        Close;
        SQL.Clear;
        SQL.Add('declare @NoBukti varchar(20) select @NoBukti=:0');
        SQL.Add('delete dbJualTunaiDet where NoBukti=@NoBukti and UrutGroup=:1');
        SQL.Add('if not exists( select nobukti from dbJualTunaiDet where nobukti=@nobukti)');
        SQL.Add('  begin');
        SQL.Add('    delete dbJualTunai where nobukti=@nobukti');
        SQL.Add('  end');
        Parameters[0].Value:=NoBukti.Text;
        Parameters[1].Value:=QuBeliUrutGroup.AsInteger;
        ExecSQL;
      end;

    end else
}
  if FrUtama.LevelKoreksi Then
  Begin

   SimpanData('I');
   if FrMainJualKasir.dxPageControl1.ActivePageIndex=0 Then
   Begin
   With DM.QuCari2 do
   Begin
    Close;
    SQL.Clear;
    SQL.Add('Update DbJualTunaiDet Set Keterangan='''',KetBatal=:0 where NoBukti=:1 and Urut=:2');
    Parameters[0].Value:=XKeterangan;
    Parameters[1].Value:=NoBukti.Text;
    Parameters[2].Value:=QuBeliUrut.AsInteger;
    ExecSQL;
   end;
   end
   else
   Begin
    With DM.QuCari2 do
    Begin
     Close;
     SQL.Clear;
     SQL.Add('Update DbPesanTunaiDet Set Keterangan='''',KetBatal=:0 where NoBukti=:1 and Urut=:2');
     Parameters[0].Value:=XKeterangan;
     Parameters[1].Value:=NoBukti.Text;
     Parameters[2].Value:=QuBeliUrut.AsInteger;;
     ExecSQL;
   end;
   end;
  end
  else
    begin
      with DM.QuCari do
      begin
        Close;
        SQL.Clear;
        SQL.Add('declare @NoBukti varchar(20) select @NoBukti=:0');
        if IsOrder.Checked then
          begin
            SQL.Add('delete dbPesanTunaiDet where NoBukti=@NoBukti and Urut=:1 ');
            SQL.Add('if not exists( select nobukti from dbPesanTunaiDet where nobukti=@nobukti)');
            SQL.Add('  begin');
            SQL.Add('    delete dbPesanTunai where nobukti=@nobukti');
            SQL.Add('  end');
          end
        else
          begin
            SQL.Add('delete dbJualTunaiDet where NoBukti=@NoBukti and Urut=:1 ');
            SQL.Add('if not exists( select nobukti from dbJualTunaiDet where nobukti=@nobukti)');
            SQL.Add('  begin');
            SQL.Add('    delete dbJualTunai where nobukti=@nobukti');
            SQL.Add('  end');
          end;
        Parameters[0].Value:=NoBukti.Text;
        Parameters[1].Value:=dxMemDataKasir.fieldbyname('Urut').Value;
        //Parameters[1].Value:=QuBeliUrut.Value;
        ExecSQL;
      end;
    end;

  end;
  //QuBeli.Requery;

  TampilData;
//  GrandTotal2.Value:=dxDBGrid2SubTotal.SummaryFooterValue;

  if QuBeli.IsEmpty=True then
  KeyPreview:=True;
  SpeedButton1.Enabled:=True;
end;

procedure TFrJualKasir.frxDapurAfterPrint(Sender: TfrxReportComponent);
begin
{
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('update dbJualtunai set isCetak=1, CaraBayar=:0 where nobukti=:1');
    Prepared;
//    Parameters[0].Value:=FrPembayaran.CaraBayar.ItemIndex;
    Parameters[1].Value:=NoBukti.Text;
    ExecSQL;
  end;
}
end;

procedure TFrJualKasir.btUpGroupClick(Sender: TObject);
var
   I, Jml : Byte;
begin
  {... Group naik ...}
  with DM.QuCari do
  begin
       close;
       sql.Clear;
//       SQL.Add('Select Count(Nama) from dbGroup where kodegrp<>''-''');
       SQL.Add('Select Count(NamaSubGrp) from dbSubGroup where KodeGrp=''BJ'' ');
       open;
       Jml := Fields[0].AsInteger;
  end;

  if (Grp[1].Top <> 2) then
  begin
       for i := 1 to Jml do
           Grp[i].Top := Grp[i].Top + 95;
  end;

end;

procedure TFrJualKasir.btDownGroupClick(Sender: TObject);
var
   I, Jml : byte;
begin
  {... Group turun ...}
  with DM.QuCari do
  begin
       close;
       sql.Clear;
//       SQL.Add('Select Count(nama) from dbGroup where kodegrp<>''-'' ');
       SQL.Add('Select Count(NamaSubGrp) from dbSubGroup where KodeGrp=''BJ'' ');
       open;
       Jml := Fields[0].AsInteger;
  end;

  if (Grp[jml].Top <> 2) then
  begin
       for i := 1 to Jml do
           Grp[i].Top := Grp[i].Top - 95;
  end;
end;

procedure TFrJualKasir.btUpMenuClick(Sender: TObject);
var
   I, Jml : Byte;
begin
  {... Barang naik ...}
  with DM.QuCari do
  begin
       close;
       sql.Clear;
//       SQL.Add('Select Count(NamaMenu) from dbMenuBarang where kodegrp=:0 and istoping=0');
       SQL.Add('Select Count(a.NamaBrg)');
       SQL.Add('from dbBarang a');
       SQL.Add('left outer join dbSubGroup b on a.KodeGrp = b.KodeGrp and a.KODESUBGRP = b.KodeSubGrp ');
       SQL.Add('where a.KODEGRP=''BJ'' and b.namasubgrp = :0');

       Prepared;
       Parameters[0].Value := MyGroup;
       open;
       Jml := Fields[0].AsInteger;
  end;
  if CountBarang<>0 then
  begin
    if (TBarang[1].Top <> 2) then
    begin
         for i := 1 to Jml do
             TBarang[i].Top := TBarang[i].Top + 95;
    end;
  end;
end;

procedure TFrJualKasir.btDownMenuClick(Sender: TObject);
var
   I, Jml : Byte;
begin
  {... Barang turun ...}
  with DM.QuCari do
  begin
       close;
       sql.Clear;
//       SQL.Add('Select Count(NamaMenu) from dbMenuBarang where kodegrp=:0 and istoping=0');
       SQL.Add('Select Count(a.NamaBrg)');
       SQL.Add('from dbBarang a');
       SQL.Add('left outer join dbSubGroup b on a.KodeGrp = b.KodeGrp and a.KODESUBGRP = b.KodeSubGrp ');
       SQL.Add('where a.KODEGRP=''BJ'' and b.namasubgrp = :0');

       Prepared;
       Parameters[0].Value := MyGroup;
       open;
       Jml := Fields[0].AsInteger;
  end;
  if CountBarang<>0 then
  begin
    if (TBarang[jml].Top <> 2) then
    begin
         for i := 1 to Jml do
             TBarang[i].Top := TBarang[i].Top - 95;
    end;
  end;
end;

procedure TFrJualKasir.frxDapurGetValue(const VarName: String;
  var Value: Variant);
begin
   if compareText(varName,'Bayar')=0 then
   begin
      value := FrPembayaran.JumlahBayar.Value+FrPembayaran.BayarDebet.Value+FrPembayaran.BayarKredit.Value+FrPembayaran.BayarVoucher.Value;
   end;

   if compareText(varName,'Kembali')=0 then
   begin
      value := FrPembayaran.Kembali.Value;
   end;

   if compareText(varName,'DISKON')=0 then
   begin
      value := FrPembayaran.nDiskonCust.Value + FrPembayaran.nDiscHarian.Value ;
   end;

end;

procedure TFrJualKasir.Timer1Timer(Sender: TObject);
var Hasil:string;
vPersh :string;
begin

   Label8.Caption := 'Jam : '+TimeToStr(Time);
   geserKalimat(Panel1.Caption,Hasil);
   Panel1.Caption:=Hasil;
end;

procedure TFrJualKasir.dxDBGrid2CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;  
begin
  if ANode.HasChildren then
  Exit;

  if not AFocused then
  begin
    if ANode.Index mod 2 =0 then
       AColor:=$00E2F3F3
    else
       AColor:=$00F0F9F9;
       AFont.Color:=clBlack;
  end;
end;

procedure TFrJualKasir.dxDBGrid2CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
  if AColumn = dxDBGrid2.Columns[3] then
  begin
    AColor := $00ffefe1;
    AFont.Color:=clblack;
    AFont.Style := AFont.Style + [fsBold];
  end;
end;

procedure TFrJualKasir.FormDestroy(Sender: TObject);
begin
  FrJualKasir:=nil;
end;

procedure TFrJualKasir.SpeedButton1Click(Sender: TObject);
var Tstatus,Tlevel : integer;
begin
  Application.CreateForm(TfrLogin, FrLogin);
  frLogin.ShowModal;
  if frLogin.ModalResult=mrOK then
  begin
    MyCariUserName(frLogin.NamaUser.Text,frLogin.KUNCI.Text,Tstatus,Tlevel);
    if (DM.QuCari.RecordCount > 0) and (Tlevel > 0) then
    begin
        KodeBrows:=3011;
        Application.CreateForm(TFrBrows, FrBrows);
        FrBrows.TglAwal := Tanggal.Date;
        FrBrows.ShowModal;
        if FrBrows.ModalResult=mrOk then
        begin
          with FrBrows.QuBrows do
          begin
             NoBukti.Text:=fieldbyname('NoBukti').AsString;
             Tanggal.Date:=fieldbyname('Tanggal').AsDateTime;
             TampilData;
             dxDBGrid2Qnt.ReadOnly:=True;
             HapusBtn.Enabled:=False;
             QuBeliQnt.ReadOnly:=False;
             SpeedButton2.Visible:=True;
             KeyPreview:=False;

             isPembatalan:=True;
          end;
        end;
    end
    else
    begin
        ShowMessage('Sorry, Login Failed ! Check User Name and Password.');
    end;
  end


end;

procedure TFrJualKasir.SpeedButton2Click(Sender: TObject);
begin
  model:='koreksi';

  vCust:=QuBeliKodeCust.AsString;
//  mUrut:=QuBeliUrut.AsInteger;
//  vUrutGroup:=QuBeliUrutGroup.AsInteger;
  vKodeMenu:=QuBeliKodeBrg.AsString;
//  vKodeGrp:=QuBeliKodeGrp.AsString;
//  vGudang:=QuBeliKodeGdg.AsString;
  vHarga:=QuBeliHarga.AsCurrency;
  vSatuan:=QuBeliSatuan.AsString;
  vIsi:=QuBeliIsi.AsInteger;
  vDiskon := QuBeliDiskon.AsFloat;

  if Pemesan.Text = '' then
    begin
      ShowMessage('Belum mengisi pemesan !');
      ActiveControl := Pemesan;
    end
  else
    SimpanData('I');
  dxDBGrid2Qnt.ReadOnly:=False;
  //QuBeli.Last;
end;

procedure TFrJualKasir.dxDBGrid2Editing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
begin
    if QuBeli.FieldByName('Ctk').Value=true then
       Allow:=True
    else
       Allow:=False;
end;

procedure TFrJualKasir.QuBeliAfterPost(DataSet: TDataSet);
begin
  TampilData;
end;

procedure TFrJualKasir.BitBtn1Click(Sender: TObject);
var
   I, Jml : Byte;
begin
  {... Topping naik ...}
  with DM.QuCari do
  begin
       close;
       sql.Clear;
//       SQL.Add('Select Count(a.NamaMenu) from dbMenuBarang a where a.Istoping=1 and (select count(x.KodeBrg) from dbMenuBarangDet x where x.KodeMenu=a.KodeMenu)>0 ');
       SQL.Add('select Count(Keterangan) from DBSubGroupJnsTambah');
       SQL.Add('where KodeGrp = :0 and KodeSubGrp = :1');
       Parameters[0].Value := QuBarang.Fields[3].AsString;
       Parameters[1].Value := QuBarang.Fields[4].AsString;

       open;
       Jml := Fields[0].AsInteger;
  end;
  if CountToping<>0 then
  begin
    if (TToping[1].Top <> 2) then
    begin
         for i := 1 to Jml do
             TToping[i].Top := TToping[i].Top + 95;
    end;
  end;
end;

procedure TFrJualKasir.BitBtn2Click(Sender: TObject);
var
   I, Jml : Byte;
begin
  {... Topping turun ...}
  with DM.QuCari do
  begin
       close;
       sql.Clear;
//       SQL.Add('Select Count(a.NamaMenu) from dbMenuBarang a where a.Istoping=1 and (select count(x.KodeBrg) from dbMenuBarangDet x where x.KodeMenu=a.KodeMenu)>0 ');
       SQL.Add('select Count(Keterangan) from DBSubGroupJnsTambah');
       SQL.Add('where KodeGrp = :0 and KodeSubGrp = :1');
       Parameters[0].Value := QuBarang.Fields[3].AsString;
       Parameters[1].Value := QuBarang.Fields[4].AsString;

       open;
       Jml := Fields[0].AsInteger;
  end;
  if CountToping<>0 then
  begin
    if (TToping[jml].Top <> 2) then
    begin
         for i := 1 to Jml do
             TToping[i].Top := TToping[i].Top - 95;
    end;
  end;
end;

procedure TFrJualKasir.SpeedButton4Click(Sender: TObject);
begin
{
  if QuBeliisToping.AsBoolean=true then
  begin
    mUrut:=QuBeliUrut.AsInteger;
    with DM.QuCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add('update dbjualTunaiDet set harga=0, isGratis=1 where nobukti=:0 and urut=:1');
      Parameters[0].Value:=NoBukti.Text;
      Parameters[1].Value:=mUrut;
      ExecSQL;
    end;
    QuBeli.Requery;
    QuBeli.Locate('Urut',mUrut,[LOP,LOC]);
    GrandTotal2.Value:=dxDBGrid2SubTotal.SummaryFooterValue;
  end
  else
  ShowMessage('Bukan Toping !');
}
end;

procedure TFrJualKasir.SpeedButton13Click(Sender: TObject);
begin
  //QuBeli.Last;
  if dxMemDataKasir.fieldbyname('Keterangan').AsString = '' then
  //if QuBeliKeterangan.AsString = '' then
    ShowMessage('Belum memilih REQUEST !')
  else
    begin
      Posisi := dxMemDataKasir.RecNo;
      with DM.QuCari do
        begin
          Close;
          SQL.Clear;
          if IsOrder.Checked then
            SQL.Add('update DBPesanTunaiDet set Keterangan = Keterangan + ''+'' ')
          else
            SQL.Add('update DBJualTunaiDet set Keterangan = Keterangan + ''+'' ');
          SQL.Add('where NoBukti = :0 and Urut = :1');
          Parameters[0].Value := dxMemDataKasir.fieldbyname('NoBukti').Value;
          Parameters[1].Value := dxMemDataKasir.fieldbyname('Urut').Value;
          //Parameters[0].Value := QuBeliNoBukti.Value;
          //Parameters[1].Value := QuBeliUrut.Value;
          try
            ExecSQL;
            //QuBeli.Close;
            //QuBeli.Open;
            //QuBeli.Last;
            TampilData;
            dxMemDataKasir.Locate('RecId',Posisi,[]);
          except
            ShowMessage('Proses Gagal !');
          end;
        end;
    end;

end;

procedure TFrJualKasir.CekPlusMinusRequest;
begin
{
  with DM.QuCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select RIGHT(Keterangan,1) from dbJualTunaiDet ');
      SQL.Add('where NoBukti = :0 and Urut = :1');
      Parameters[0].Value := QuBeliNoBukti.AsString;
      Parameters[1].Value := QuBeliUrut.AsInteger;
      Open;
    end;
}
end;

procedure TFrJualKasir.SpeedButton11Click(Sender: TObject);
begin
  //QuBeli.Last;
  if dxMemDataKasir.fieldbyname('Keterangan').AsString = '' then
  //if QuBeliKeterangan.AsString = '' then
    ShowMessage('Belum memilih REQUEST !')
  else
    begin
      Posisi := dxMemDataKasir.RecNo;
      with DM.QuCari do
        begin
          Close;
          SQL.Clear;
          if IsOrder.Checked then
            SQL.Add('update DBPesanTunaiDet set Keterangan = Keterangan + ''-'' ')
          else
            SQL.Add('update DBJualTunaiDet set Keterangan = Keterangan + ''-'' ');
          SQL.Add('where NoBukti = :0 and Urut = :1');
          Parameters[0].Value := dxMemDataKasir.fieldbyname('NoBukti').Value;
          Parameters[1].Value := dxMemDataKasir.fieldbyname('Urut').Value;
          //Parameters[0].Value := QuBeliNoBukti.Value;
          //Parameters[1].Value := QuBeliUrut.Value;
          try
            ExecSQL;
            //QuBeli.Close;
            //QuBeli.Open;
            //QuBeli.Last;
            TampilData;
            dxMemDataKasir.Locate('RecId',Posisi,[]);
          except
            ShowMessage('Proses Gagal !');
          end;
        end;
    end;
end;

procedure TFrJualKasir.SpeedButton12Click(Sender: TObject);
begin
//  QuBeli.Last;
  if dxMemDataKasir.fieldbyname('Keterangan').AsString = '' then
  //if QuBeliKeterangan.AsString = '' then
    ShowMessage('Belum memilih REQUEST !')
  else
    begin
      Posisi := dxMemDataKasir.RecNo;
      with DM.QuCari do
        begin
          Close;
          SQL.Clear;
          if IsOrder.Checked then
            SQL.Add('update DBPesanTunaiDet set Keterangan = '''' ')
          else
            SQL.Add('update DBJualTunaiDet set Keterangan = '''' ');
          SQL.Add('where NoBukti = :0 and Urut = :1');
          Parameters[0].Value := dxMemDataKasir.fieldbyname('NoBukti').Value;
          Parameters[1].Value := dxMemDataKasir.fieldbyname('Urut').Value;
          //Parameters[0].Value := QuBeliNoBukti.Value;
          //Parameters[1].Value := QuBeliUrut.Value;
          try
            ExecSQL;
            //QuBeli.Close;
            //QuBeli.Open;
            //QuBeli.Last;
            TampilData;
            dxMemDataKasir.Locate('RecId',Posisi,[]);
          except
            ShowMessage('Proses Gagal !');
          end;
        end;
    end;
end;

procedure TFrJualKasir.UpdatePemesanOrder;
begin
  with DM.QuCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add('update dbJualTunai set Pemesan = :0, IsOrder = :1');
      SQL.Add('where NOBUKTI ='+ QuotedStr(NoBukti.Text)+' ');
      Parameters[0].Value := Pemesan.Text;
      if IsOrder.Checked then
        Parameters[1].Value := 1
      else
        Parameters[1].Value := 0;
      try
        ExecSQL;
      except
        ShowMessage('Proses Gagal !');
      end;
    end;
end;

procedure TFrJualKasir.PemesanExit(Sender: TObject);
begin
  if isAmbil = False then
    begin
      if Pemesan.Text = '' then
        begin
          ShowMessage('Harus mengisi data pemesan !');
          ActiveControl := Pemesan;
        end
      else
        begin
          UpdatePemesanOrder;
        end;
    end;
end;

procedure TFrJualKasir.IsOrderExit(Sender: TObject);
begin
  UpdatePemesanOrder;
end;

procedure TFrJualKasir.BtnOrderClick(Sender: TObject);
begin
  Panel23.Color := clRed;
  Panel24.Color := clLime;
  Panel26.Color := clLime;
  IsOrder.Checked := False;
  isAmbil := False;
  pageOrder.ActivePageIndex := 0;

  Label10.Enabled := False;
  Label11.Enabled := False;
  Label12.Enabled := False;
  Alamat.Enabled  := False;
  Telepon.Enabled := False;
  TanggalAmbil.Enabled := False;

  Pemesan.Enabled := True;
  Label9.Enabled  := True;

  With DM.QuCari do
  Begin
   CLose;
   SQl.Clear;
   SQL.Add('Select Isnull(IsTakeInOut,0)IsTakeInOut from dbGudang where Kodegdg in(select Kodegdg from dbFlPass where UserId='+QuotedStr(IDUser)+')');
   Open;
  end;

  cbIn.Visible:=DM.QuCari.FieldByName('IsTakeInOut').AsBoolean;
  cbOut.Visible:=DM.QuCari.FieldByName('IsTakeInOut').AsBoolean;

  Pemesan.Text := '';
  Alamat.Text  := '';
  Telepon.Text := '';
  TanggalAmbil.Text := '  /  /    ';

  if QuBeli.IsEmpty then
    begin
      IsiNoBuktiBaru;

      with QuBeli do
        begin
          Close;
          SQL.Strings[10] := 'from dbJualTunaiDet a';
          SQL.Strings[11] := 'left outer join dbJualTunai b on a.NoBukti=b.NoBukti';
          Open;
        end;
    end
  else
    ShowMessage('Tidak bisa ganti modul, ada transaksi !');
end;

procedure TFrJualKasir.BtnPesananClick(Sender: TObject);
begin
  Panel23.Color := clLime;
  Panel24.Color := clRed;
  Panel26.Color := clLime;
  IsOrder.Checked := True;
  isAmbil := False;
  pageOrder.ActivePageIndex := 0;

  Label10.Enabled := True;
  Label11.Enabled := True;
  Label12.Enabled := True;
  Alamat.Enabled  := True;
  Telepon.Enabled := True;
  TanggalAmbil.Enabled := True;

  Pemesan.Enabled := True;
  Label9.Enabled  := True;

  Pemesan.Text := '';
  Alamat.Text  := '';
  Telepon.Text := '';
  TanggalAmbil.Date := Now;
  ////
  cbIn.Visible:=False;
  cbOut.Visible:=False;
  cbAmbil.Enabled:=True;
  Label18.Enabled:=True;
  Kodegdg.Enabled:=True;
  Label19.Enabled:=True;
  TgKirim.Enabled:=True;
  Label20.Enabled:=True;
  JamKirim.Enabled:=True;
  TgKirim.Date:=Date;
  JamKirim.Text:=TimeToStr(Time);
  ////

  if QuBeli.IsEmpty then
    begin
      IsiNoBuktiBaru;

      with QuBeli do
        begin
          Close;
          SQL.Strings[10] := 'from dbPesanTunaiDet a';
          SQL.Strings[11] := 'left outer join dbPesanTunai b on a.NoBukti=b.NoBukti';
          Open;
          //SQL.SaveToFile('D:\KANTOR\libby\Stock\MyProject\aaaa.txt');
        end;
    end
  else
    ShowMessage('Tidak bisa ganti modul, ada transaksi !');
end;

procedure TFrJualKasir.BtnPengambilanClick(Sender: TObject);
begin
  Panel23.Color := clLime;
  Panel24.Color := clLime;
  Panel26.Color := clRed;
  IsOrder.Checked := False;
  isAmbil := True;
  pageOrder.ActivePageIndex := 1;

  Label10.Enabled := False;
  Label11.Enabled := False;
  Label12.Enabled := False;
  Alamat.Enabled  := False;
  Telepon.Enabled := False;
  TanggalAmbil.Enabled := False;

  Pemesan.Enabled := False;
  Label9.Enabled  := False;

  QuMaster.Close;
  QuMaster.Open;

  QuMaster.First;

  Pemesan.Text := QuMasterPemesan.AsString;
  Alamat.Text  := QuMasterAlamat.AsString;
  Telepon.Text := QuMasterTelepon.AsString;
  TanggalAmbil.Date := QuMasterTanggalAmbil.AsDateTime;

  if QuBeli.IsEmpty then
    begin
      IsiNoBuktiBaru;

      with QuBeli do
        begin
          Close;
          SQL.Strings[10] := 'from dbJualTunaiDet a';
          SQL.Strings[11] := 'left outer join dbJualTunai b on a.NoBukti=b.NoBukti';
          Open;
        end;
    end
  else
    ShowMessage('Tidak bisa ganti modul, ada transaksi !');

end;

procedure TFrJualKasir.tvMasterFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  QuDetail1.Close;
  QuDetail1.Parameters[0].Value := QuMasterNOBUKTI.AsString;
  QuDetail1.Open;

end;

procedure TFrJualKasir.SpeedButton14Click(Sender: TObject);
begin
  QuMaster.Prior;

  Pemesan.Text := QuMasterPemesan.AsString;
  Alamat.Text  := QuMasterAlamat.AsString;
  Telepon.Text := QuMasterTelepon.AsString;
  TanggalAmbil.Date := QuMasterTanggalAmbil.AsDateTime;  
end;

procedure TFrJualKasir.SpeedButton15Click(Sender: TObject);
begin
  QuMaster.Next;

  Pemesan.Text := QuMasterPemesan.AsString;
  Alamat.Text  := QuMasterAlamat.AsString;
  Telepon.Text := QuMasterTelepon.AsString;
  TanggalAmbil.Date := QuMasterTanggalAmbil.AsDateTime;  
end;

procedure TFrJualKasir.SimpanDataAmbil(Mode:Char);
begin
   if Mode='I' then mUrut:=1
     else mUrut:=0;
    with Sp_AmbilTunai do
      begin
        Prepared;
        Parameters[1].Value := 'I';
        if Mode='D' then
        begin
          Parameters[2].Value := NoBukti.Text;
          //Parameters[7].Value := QuBeliUrut.AsInteger;
        end
        else
        begin
          Parameters[2].Value := NoBukti.Text;
          Parameters[3].Value := Tanggal.Date;
          Parameters[4].Value := NoUrut.Text;
          Parameters[5].Value := QuMasterNOBUKTI.AsString;
          Parameters[6].Value := IDUser;
          Parameters[7].Value := mUrut;
        end;
        try
          begin
              ExecProc;
//              QuMaster.Close;
//              QuMaster.Open;
              TampilData;
              if Mode='I' then
              begin
                QuBeli.Requery;
                //QuBeli.Last;
              end
          end;
        except
          If (Mode='I') Or (Mode='U') then
             showmessage('Proses Gagal !')
          else If (Mode='D') then
             showmessage('Proses Gagal !');
        end;
      end;
//   GrandTotal2.Value:=dxDBGrid2SubTotal.SummaryFooterValue;
end;

procedure TFrJualKasir.SpeedButton16Click(Sender: TObject);
begin
  StrPCopy(S,Format('Anda yakin No Bukti %s dan Pemesan %s diambil ?',
  [QuMasterNOBUKTI.AsString, QuMasterPemesan.AsString]));
  if (Application.MessageBox(S,'Ambil Pesanan',
     MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
  begin
    SimpanDataAmbil('I');
  end;

end;

procedure TFrJualKasir.Grandtotal2Change(Sender: TObject);
begin
  GrandTotal.Value := Grandtotal2.Value + TotalTax.Value + TotalService.Value;
end;

procedure TFrJualKasir.dxDBGrid2QntChange(Sender: TObject);
begin
  QuBeli.Post;
  QuBeli.Close;
  QuBeli.Open;
end;

procedure TFrJualKasir.dxDBGrid2Edited(Sender: TObject;
  Node: TdxTreeListNode);
begin
//  ShowMessage(dxMemDataKasir.fieldbyname('Qnt').AsString);
IsEdit:=True;
if FrUtama.LevelKoreksi Then
Begin
 QuBeli.Locate('KodeBrg;Urut', VarArrayOf([ dxMemDataKasir.FieldByName('KodeBrg').AsString,dxMemDataKasir.FieldByName('Urut').AsInteger]),[]);
 if QuBeliQnt.AsFloat<dxMemDataKasir.fieldbyname('Qnt').AsFloat Then
 Begin
   ShowMessage('Qnt Batal Tidak Boleh melebihi Qnt Jual');
   dxMemDataKasir.edit;
   dxMemDataKasir.FieldByName('Qnt').AsFloat:=QuBeliQnt.AsFloat;
   dxMemDataKasir.Post;
 end
else
 Begin
   XQnt:= dxMemDataKasir.fieldbyname('Qnt').AsFloat;
   XKeterangan:=dxMemDataKasir.fieldbyname('Keterangan').AsString;
 end;
end
else
Begin
  QuBeli.Locate('KodeBrg;Urut', VarArrayOf([ dxMemDataKasir.FieldByName('KodeBrg').AsString,dxMemDataKasir.FieldByName('Urut').AsInteger]),[]);
  with DM.QuCari do
    begin
      Close;
      SQL.Clear;
      if IsOrder.Checked then
        SQL.Add('update DBPesanTunaiDet ')
      else
        SQL.Add('update DBJualTunaiDet ');
      SQL.Add('set Qnt = :0 ');
      SQL.Add('where NoBukti = :1 and Urut = :2 ');
      Parameters[0].Value := dxMemDataKasir.fieldbyname('Qnt').Value;
      Parameters[1].Value := dxMemDataKasir.fieldbyname('NoBukti').Value;
      Parameters[2].Value := Qubeli.fieldbyname('Urut').Value;
      try
        begin
          ExecSQL;
          TampilData;
        end;
      except
        ShowMessage('Ubah QNT Gagal !');
      end;
    end;
end;
end;

procedure TFrJualKasir.KodegdgEnter(Sender: TObject);
begin
mValid:=True;
end;

procedure TFrJualKasir.KodegdgExit(Sender: TObject);
begin
if mValid then
  begin
    if Length(Kodegdg.Text)=0 then
     Begin
       TampilIsiData(FrJualKasir,Kodegdg,LNamaCounter,110021,'KodeGdg','Nama');
       Alamat.Text:= Alamatgdg;
     end
    else if DataBersyarat('select * from dbGudang where Kodegdg=:0 and Kodegdg Not in(Select Kodegdg From dbFlPass where UserID='+QuotedStr(IDUser)+')',[Kodegdg.text],DM.Qucari) then
    begin
      Kodegdg.Text :=DM.QuCari.FieldByname('KodeGdg').AsString;
      LNamaCounter.Caption:='[ '+DM.QuCari.FieldByname('Nama').AsString+' ]';
      Alamat.Text:= DM.QuCari.FieldByname('Alamat').AsString;
    end
    else
     Begin
       TampilIsiData(FrJualKasir,Kodegdg,LNamaCounter,110021,'KodeGdg','Nama');
       Alamat.Text:= Alamatgdg;
     end;
  end;
end;

procedure TFrJualKasir.cbAmbilClick(Sender: TObject);
begin
if cbAmbil.Checked Then
Begin
 Kodegdg.Enabled:=True;
 ActiveControl:=Kodegdg;
 Label19.Enabled:=False;
 TgKirim.Enabled:=False;
 Label20.Enabled:=False;
 JamKirim.Enabled:=False;
 TgKirim.Text:='  /  /    ';
 JamKirim.Text:='00:00:00';
end
else
Begin
 Kodegdg.Enabled:=False;
 ActiveControl:=Alamat;
 Kodegdg.Clear;
 Alamat.Clear;
 LnamaCounter.Caption:='[  ]';
 Label19.Enabled:=True;
 TgKirim.Enabled:=True;
 Label20.Enabled:=True;
 JamKirim.Enabled:=True;
 TgKirim.Date:=Date;
 JamKirim.Text:=TimeToStr(Time);
end;
end;

end.
