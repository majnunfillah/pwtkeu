unit FrmInvoicePL;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, DBCtrls, ImgList, RxGIF, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, frxClass, frxDMPExport,
  frxDBSet, strUtils,DateUtils, frxDesgn, frxBarcode,Variants, dxmdaset,
  dxPageControl, MoneyStr, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxEdit, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxControls,
  cxGridCustomView, cxGridLevel, cxGrid, frxRich, frxExportRTF,
  frxExportBIFF, frxExportCSV;

type
  TFrInvoicePL = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    QuBeli: TADOQuery;
    Sp_Beli: TADOStoredProc;
    DsQuBeli: TDataSource;
    Label10: TLabel;
    Panel2: TPanel;
    Shape4: TShape;
    Label5: TLabel;
    Label12: TLabel;
    NoUrut: TEdit;
    NoBukti: TEdit;
    Label13: TLabel;
    //Tanggal: TDateEdit;
    Label16: TLabel;
    PanelShow1: TPanel;
    Cetak: TSpeedButton;
    HapusBtn: TSpeedButton;
    KoreksiBtn: TSpeedButton;
    TambahBtn: TSpeedButton;
    SpeedButton8: TSpeedButton;
    QuUpdatedbBeli: TADOQuery;
    frxReport1: TfrxReport;
    frxDBCetak: TfrxDBDataset;
    dxPageControl1: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    dxTabSheet2: TdxTabSheet;
    KodeCust: TEdit;
    Label2: TLabel;
    LNamaCustSupp: TLabel;
    LAlamatCustSupp: TLabel;
    Shape1: TShape;
    Label7: TLabel;
    Consignee: TMemo;
    Label6: TLabel;
    Notifiy_Party: TMemo;
    Label9: TLabel;
    Term_Of_Payment: TMemo;
    Label11: TLabel;
    DocCrNo: TEdit;
    Label14: TLabel;
    Port_Of_Loading: TMemo;
    Label15: TLabel;
    Port_Of_Discharge: TMemo;
    Label17: TLabel;
    Name_Of_Vessel: TMemo;
    Label18: TLabel;

    Label20: TLabel;
    Packing: TMemo;
    Label24: TLabel;
    KodeVls: TEdit;
    Label25: TLabel;
    Kurs: TPBNumEdit;
    Label26: TLabel;
    PPN: TComboBox;
    Label21: TLabel;
    isLoka3: TComboBox;
    dxTabSheet3: TdxTabSheet;
    Label30: TLabel;
    Label34: TLabel;
    Label32: TLabel;
    Beneficiary1: TMemo;
    ShipmentAdvice1: TMemo;
    ShipmentAdvice2: TMemo;
    Label27: TLabel;
    Beneficiary2: TMemo;
    Label28: TLabel;
    Beneficiary3: TMemo;
    Label33: TLabel;
    NoBL: TEdit;
    MoneyString1: TMoneyString;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    tvMaster1: TcxGridDBBandedTableView;
    tvMaster2: TcxGridDBBandedTableView;
    cxGrid1Level2: TcxGridLevel;
    tvMaster1QNT: TcxGridDBBandedColumn;
    tvMaster1SAT_1: TcxGridDBBandedColumn;
    tvMaster1NamabrgKom: TcxGridDBBandedColumn;
    tvMaster1KodeBrg: TcxGridDBBandedColumn;
    tvMaster1KetDetail: TcxGridDBBandedColumn;
    tvMaster1HARGA: TcxGridDBBandedColumn;
    dsQuBeli1: TDataSource;
    QuBeli1: TADOQuery;
    QuBeli1NoBukti: TStringField;
    QuBeli1Urut: TIntegerField;
    QuBeli1Keterangan: TStringField;
    QuBeli1KodeVls: TStringField;
    QuBeli1Kurs: TBCDField;
    QuBeli1NNet: TBCDField;
    tvMaster2Keterangan: TcxGridDBBandedColumn;
    tvMaster2KodeVls: TcxGridDBBandedColumn;
    tvMaster2Kurs: TcxGridDBBandedColumn;
    tvMaster2NNet: TcxGridDBBandedColumn;
    SP_Beli1: TADOStoredProc;
    dxPageControl2: TdxPageControl;
    dxTabSheet4: TdxTabSheet;
    dxTabSheet5: TdxTabSheet;
    LKodeBrg: TLabel;
    KodeBrg: TEdit;
    Label23: TLabel;
    NamaBrg: TMemo;
    Label29: TLabel;
    ShippingMark: TMemo;
    Label19: TLabel;
    Qnt: TPBNumEdit;
    Nosat: TComboBox;
    LSatuan: TLabel;
    Label31: TLabel;
    NetW: TPBNumEdit;
    GrossW: TPBNumEdit;
    Mesurement: TPBNumEdit;
    Label22: TLabel;
    Harga: TPBNumEdit;
    Label3: TLabel;
    KetDetail: TEdit;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    Qnt2: TPBNumEdit;
    LSatuan2: TLabel;
    Qnt1: TPBNumEdit;
    LSatuan1: TLabel;
    Label37: TLabel;
    KetBiaya: TMemo;
    Label38: TLabel;
    Harga1: TPBNumEdit;
    Label39: TLabel;
    KodeVls1: TEdit;
    Label40: TLabel;
    Kurs1: TPBNumEdit;
    Panel4: TPanel;
    QuBeli1Harga: TBCDField;
    frxDBDataset2: TfrxDBDataset;
    Label41: TLabel;

    Label42: TLabel;
    ToShipmentAdvice2: TMemo;
    Label35: TLabel;
    Label36: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    FootNote: TMemo;
    frxRichObject1: TfrxRichObject;
    Label45: TLabel;
    IssuingBank: TMemo;
    tvMaster1SubTotal: TcxGridDBBandedColumn;
    tvMaster1SubTotalRp: TcxGridDBBandedColumn;
    tvMaster1NDPPRp: TcxGridDBBandedColumn;
    tvMaster1NPPNRp: TcxGridDBBandedColumn;
    tvMaster1NNETRp: TcxGridDBBandedColumn;
    QuBeliNoBukti: TStringField;
    QuBeliNoUrut: TStringField;
    QuBeliTanggal: TDateTimeField;
    QuBeliNoSPP: TStringField;
    QuBeliTglSPP: TDateTimeField;
    QuBeliNoSO: TStringField;
    QuBeliTglSO: TDateTimeField;
    QuBeliKodeCustSupp: TStringField;
    QuBeliKODESLS: TIntegerField;
    QuBeliValas: TStringField;
    QuBeliKurs: TBCDField;
    QuBeliIsLokal: TBooleanField;
    QuBeliConsignee: TStringField;
    QuBeliNotifyParty: TStringField;
    QuBeliPONo: TStringField;
    QuBeliPaymentTerm: TStringField;
    QuBeliPoL: TStringField;
    QuBeliPoD: TStringField;
    QuBeliNameOfVessel: TStringField;
    QuBeliShipOnBoardDate: TDateTimeField;
    QuBeliPacking: TStringField;
    QuBeliUrut: TIntegerField;
    QuBeliUrutSPB: TIntegerField;
    QuBeliKodeBrg: TStringField;
    QuBeliPPN: TWordField;
    QuBeliDISC: TBCDField;
    QuBeliQNT1: TBCDField;
    QuBeliQNT2: TBCDField;
    QuBeliSAT_1: TStringField;
    QuBeliSAT_2: TStringField;
    QuBeliNOSAT: TIntegerField;
    QuBeliISI: TBCDField;
    QuBeliNetW: TBCDField;
    QuBeliGrossW: TBCDField;
    QuBeliHARGA: TBCDField;
    QuBeliDiscP: TBCDField;
    QuBeliDiscRp: TBCDField;
    QuBeliDISCTOT: TBCDField;
    QuBeliHrgNetto: TBCDField;
    QuBeliSubTotal: TBCDField;
    QuBeliNDiskon: TBCDField;
    QuBeliNDPP: TBCDField;
    QuBeliNPPN: TBCDField;
    QuBeliNNET: TBCDField;
    QuBeliSubTotalRp: TBCDField;
    QuBeliNDiskonRp: TBCDField;
    QuBeliNDPPRp: TBCDField;
    QuBeliNPPNRp: TBCDField;
    QuBeliNNETRp: TBCDField;
    QuBeliKetDetail: TStringField;
    QuBeliConsigneeSC: TStringField;
    QuBeliPaymentTerm_1: TStringField;
    QuBeliNotifyParty_1: TStringField;
    QuBeliPoLSC: TStringField;
    QuBeliPoD_1: TStringField;
    QuBeliPacking_1: TStringField;
    QuBeliNAMABRG: TStringField;
    QuBeliNamaCustSupp: TStringField;
    QuBeliAlamat: TStringField;
    QuBelikota: TStringField;
    QuBeliNegara: TStringField;
    QuBeliNamabrgKom: TStringField;
    QuBeliNoBL: TStringField;
    QuBeliNoteBeneficiary1: TStringField;
    QuBeliNoteBeneficiary2: TStringField;
    QuBeliNoteBeneficiary3: TStringField;
    QuBeliShipmentAdvice1: TStringField;
    QuBeliShipmentAdvice2: TStringField;
    QuBeliShippingMark: TStringField;
    QuBeliETADestination: TDateTimeField;
    QuBeliToShipmentAdvice2: TStringField;
    QuBeliFootNote: TStringField;
    QuBeliIssuingBank: TStringField;
    QuBeliNamaVls: TStringField;
    QuBeliQnt: TBCDField;
    QuBeliSatuan: TStringField;
    QuBeliNoSPB: TStringField;
    Label1: TLabel;
    Tipe: TComboBox;
    Label4: TLabel;
    Hari: TPBNumEdit;
    Label46: TLabel;
    LNamaSls: TLabel;
    KodeSls: TEdit;
    QuBeliNamaSls: TStringField;
    QuBeliTipeBayar: TWordField;
    QuBeliHari: TIntegerField;
    tvMaster1DISCTOT: TcxGridDBBandedColumn;
    Label47: TLabel;
    NoAlamatKirim: TEdit;
    LAlamatKirim: TLabel;
    Shape2: TShape;
    QuBeliNoAlamatKirim: TIntegerField;
    QuBeliNama: TStringField;
    QuBeliAlamat_1: TStringField;
    QuBeliTelp: TStringField;
    QuBeliFax: TStringField;
    Panel5: TPanel;
    LDiskonP: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    LDiskonRp: TLabel;
    DiskonP: TPBNumEdit;
    GrandTotal: TPBNumEdit;
    Pajak: TPBNumEdit;
    DPP: TPBNumEdit;
    DiskonRp: TPBNumEdit;
    QuBeliTotal: TBCDField;
    QuBeliDiskon: TBCDField;
    QuBeliTotalDPP: TBCDField;
    QuBeliTotalPPn: TBCDField;
    QuBeliTotalNetto: TBCDField;
    QuBeliUrutTrans: TIntegerField;
    tvMaster1UrutTrans: TcxGridDBBandedColumn;
    tvMaster1NoSPB: TcxGridDBBandedColumn;
    Label8: TLabel;
    PoNo: TEdit;
    ComboBox1: TComboBox;
    Label51: TLabel;
    UangMuka: TPBNumEdit;
    Label52: TLabel;
    Sisa: TPBNumEdit;
    QuBeliDP: TBCDField;
    Tanggal: TDateEdit;
    LNamaBrg: TRxLabel;
    ETADestination: TDateEdit;
    Ship_Onboard_date: TDateEdit;
    frxCSVExport1: TfrxCSVExport;
    frxBIFFExport1: TfrxBIFFExport;
    frxRTFExport1: TfrxRTFExport;
    Pemungut: TCheckBox;
    QuBeliisflag: TBooleanField;
    CPpnP: TComboBox;
    Ppnp: TPBNumEdit;
    Label53: TLabel;
    QuBelippnp: TBCDField;
    islokal: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure TampilData(No_Bukti:String);
    procedure UpdateDataBeli(Choice:Char;Kodet:String);
    procedure UpdateDataBeli1(Choice:Char;Kodet:String);
    Procedure AmBilDataBeli;
    procedure FormCreate(Sender: TObject);
    procedure ClearPanelDetail;
    procedure RefreshAll;
    procedure KoreksiBtnClick(Sender: TObject);
    procedure wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure HapusBtnClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure NoUrutKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    Function CheckFormMaster:boolean;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure NoUrutChange(Sender: TObject);
    procedure KodeBrgEnter(Sender: TObject);
    procedure NoUrutEnter(Sender: TObject);
    procedure KodeBrgExit(Sender: TObject);
    procedure TambahBtnClick(Sender: TObject);
    procedure KodeBrgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Qnt2Change(Sender: TObject);
    procedure TanggalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TanggalChange(Sender: TObject);
    procedure TanggalExit(Sender: TObject);
    procedure NosatEnter(Sender: TObject);
    procedure NosatChange(Sender: TObject);
    procedure ConsigneeEnter(Sender: TObject);
    procedure ConsigneeExit(Sender: TObject);
    procedure CetakClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure KetBiayaEnter(Sender: TObject);
    procedure KetBiayaExit(Sender: TObject);
    procedure KetBiayaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeVls1Enter(Sender: TObject);
    procedure KodeVls1Exit(Sender: TObject);
    procedure FootNoteExit(Sender: TObject);
    procedure UangMukaChange(Sender: TObject);
    procedure PemungutClick(Sender: TObject);
    procedure PemungutExit(Sender: TObject);
    procedure CPpnPClick(Sender: TObject);
    procedure CPpnPExit(Sender: TObject);
  private
    { Private declarations }
    mUrut, mUrutSPP,IsPPN: Integer;
    mUbahHd, mUbahHdDet, mValid, mExit: Boolean;
    mNilaiEnter, mIsiBrg: Real;
    mSat_1, mSat_2, mStrMsg,XCustSupp: String;
    function  CekSudahAdaProsesSelanjutnya: Boolean;
    procedure TampilanQntSatuan(pNilai: Integer);
    procedure TampilIsiBarang;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure UpdatedbBeli;
    procedure IsiNoBuktiBaru;
    procedure TampilIsiSPP;
    Procedure HitungRincian;
    
  public
    { Public declarations }
    Sat, NoSPB : String;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel, xModalKoreksi, xStatus: Boolean;
  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrInvoicePL: TFrInvoicePL;
  TipeTrans,PlusPPN,Nomor,Model:String;
  YY,MM,DD : Word;
  S:array[0..255]of char;
    bm,GBM : TBookmark;

implementation
uses FrmBrows, MyProcedure, MyGlobal, MyModul, FrmMainInvoicePL, FrmInvoicePLProsesTransaksi,
  FrmInvoicePLProses;
{$R *.DFM}

Procedure TFrInvoicePL.HitungRincian;
begin
  DiskonP.Value:=QuBeliDisc.AsFloat;
  DiskonRp.Value:=QuBeliDiskon.AsFloat;
  DPP.Value:=QuBeliTotalDPP.AsFloat;
  UangMuka.Value := QuBeliDP.AsFloat;
  Pajak.Value:=QuBeliTotalPPn.AsFloat;
  GrandTotal.Value:=QuBeliTotalNetto.AsFloat;
end;

function TFrInvoicePL.CekSudahAdaProsesSelanjutnya: Boolean;
var xStrMsg, xStrMsgDet: String;
begin
  xStrMsg:='';
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select distinct NoBukti from DBRBELIDET ');
    SQL.Add('where NoPBL='+QuotedStr(QuBeliNobukti.AsString)+' and UrutPBL='+IntToStr(QuBeliurut.AsInteger));
    Open;
    xStrMsgDet:='';
    if not IsEmpty then
    begin
      while not Eof do
      begin
        if xStrMsgDet='' then xStrMsgDet:=FieldByName('NoBukti').AsString
          else xStrMsgDet:=xStrMsgDet+', '+FieldByName('NoBukti').AsString;
        Next;
      end;
      if xStrMsg='' then
        xStrMsg:=xStrMsg+'Retur Barang No. Bukti : '+xStrMsgDet
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

procedure TFrInvoicePL.TampilanQntSatuan(pNilai: Integer);
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

procedure TFrInvoicePL.TampilIsiBarang;
begin
  KodeBrows:=4006;
  Application.CreateForm(TFrBrows, FrBrows);
  //FrBrows.NoKira:=NoSPP.Text;
  FrBrows.IsiData:=KodeBrg.Text;
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.FieldByName('KodeBrg').AsString<>'') then
  begin
    with FrBrows.QuBrows do
    begin
      KodeBrg.Text:=FieldByName('KodeBrg').AsString;
      LNamaBrg.Caption:='[ '+FieldByName('NamaBrg').AsString+' ]';
      NamaBrg.Text:=FieldByName('NamaBrgkom').AsString;
      mUrutSPP:=FieldByName('Urut').AsInteger;
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
  else
    ActiveControl:=KodeBrg;
end;

procedure TFrInvoicePL.TampilIsiSPP;
begin
     KodeBrows:=40421;
     Application.CreateForm(TFrBrows, FrBrows);
//     FrBrows.IsiData:=NoSPP.Text;
     FrBrows.ShowModal;
     if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.FieldByName('NoBukti').AsString<>'') then
     begin
       with FrBrows.QuBrows do
       begin
         //NoSPP.Text:=FieldByName('NoBukti').AsString;
         KodeCust.Text:=FieldByName('KodeCustSupp').AsString;
         LNamaCustSupp.Caption:=FieldByName('NamaCustSupp').AsString;
         LAlamatCustSupp.Caption:=FieldByName('Alamat').AsString;
         //NoSC.Text:=FieldByname('NoSC').AsString;
       end;
     end
     //else ActiveControl:=NoSPP;
end;

procedure TFrInvoicePL.TampilTombolDetail(pNilai: Boolean);
begin
 //PanelShow1.Visible:=not pNilai;
  //PanelShow2.Visible:=not pNilai;
  dxPageControl2.ActivePageIndex := cxGrid1.ActiveLevel.Index;
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  //Panel3.Enabled:=pNilai;
end;

procedure TFrInvoicePL.UpdatedbBeli;
begin
  if (not QuBeli.IsEmpty) and (mUbahHd=True) then
  begin
    with QuUpdatedbBeli do
    begin
       Close;
       Sql.Clear;
       SQL.Add('Update dbInvoicePL');
       SQL.Add('Set  Tanggal='+QuotedStr(FormatDateTime('MM-DD-YYYY',Tanggal.Date))+', ');
       //sql.add('     NoSPP='+QuotedStr(NoSPP.Text)+', ');
       sql.add('     Consignee='+QuotedStr(Trim(Consignee.Lines.Text))+', NotifyParty='+QuotedStr(Trim(Notifiy_Party.Lines.Text))+', ');
       sql.add('     StuffingDate=null, StuffingPlace='''', ');
       //sql.add('     ContractNo='+QuotedStr(NoSC.Text)+', ');
       sql.add('     PONo='+QuotedStr(PoNo.Text)+', PaymentTerm='+QuotedStr(Term_Of_Payment.Text)+',');
       SQL.add('     DocCreditNo='+QuotedStr(DocCrNo.Text)+', PoL='+QuotedStr(Trim(Port_Of_Loading.Lines.Text))+', ');
       sql.add('     PoD='+QuotedStr(Trim(Port_Of_Discharge.Lines.Text))+', NameOfVessel='+QuotedStr(Trim(Name_Of_Vessel.Text))+', ');
       sql.add('     ShipOnBoardDate='+QuotedStr(FormatDateTime('MM-DD-YYYY',Ship_Onboard_date.Date))+', Packing='+QuotedStr(Trim(Packing.Lines.Text))+', ');
       sql.add('     Others='''', ' );
       SQl.add('     NoBL=:0, NoteBeneficiary1=:1, NoteBeneficiary2=:2, NoteBeneficiary3=:3, ShipmentAdvice1=:4, ShipmentAdvice2=:5, ETADestination=:6, ToShipmentAdvice2=:7,');
       Sql.add('     FootNote=:8, IssuingBank=:9, PPn=:10, Valas=:11, Kurs=:12, Disc=:13 ');
       Sql.add(' ,isflag =:14')  ;
       SQL.Add('Where NoBukti='+QuotedStr(NoBukti.Text));
       Prepared;
       Parameters[0].Value := NoBL.Text;
       Parameters[1].Value := Beneficiary1.Lines.Text;
       Parameters[2].Value := Beneficiary2.Lines.Text;
       Parameters[3].Value := Beneficiary3.Lines.Text;
       Parameters[4].Value := ShipmentAdvice1.Lines.Text;
       Parameters[5].Value := ShipmentAdvice2.Lines.Text;
       Parameters[6].Value := ETADestination.Date;
       Parameters[7].Value := ToShipmentAdvice2.Lines.Text;
       Parameters[8].Value := FootNote.Lines.Text;
       Parameters[9].Value := IssuingBank.Lines.Text;
       Parameters[10].Value := PPN.ItemIndex;
       Parameters[11].Value := KodeVls.Text;
       Parameters[12].Value := Kurs.Value;
       Parameters[13].Value := DiskonP.Value;
       Parameters[14].Value := Pemungut.Checked;
       try
         ExecSQL;
       except
       end;
       //if mUbahHdDet=True then
       begin
         Close;
         SQL.Clear;
         SQL.Add('exec sp_UpdateInvoicePL '+QuotedStr(NoBukti.Text));
         ExecSQL;
       end;
         begin
             with dm.QuCari do
             begin
               Close;
               Sql.Clear;
               SQL.Add('Update dbinvoicepldet');
               SQL.Add('Set  ppnp=:0 ');
               sql.add (' Where NoBukti='+QuotedStr(NoBukti.Text));
               Prepared;
               //Parameters[0].Value:=mTipeDisc;
               Parameters[0].Value:=Ppnp.Value;
               ExecSQL;

             end;

          end;

         begin
             with dm.QuCari do
             begin
               Close;
               Sql.Clear;
               SQL.Add('Update dbinvoicepl');
               SQL.Add('Set  islokal=:0 ');
               sql.add (' Where NoBukti='+QuotedStr(NoBukti.Text));
               Prepared;
               //Parameters[0].Value:=mTipeDisc;
               Parameters[0].Value:=islokal.Checked;
               ExecSQL;

             end;

          end;

       mUbahHd:=False; mUbahHdDet:=False;
    end;
    TampilData(NoBukti.Text);
  end;
end;

procedure TFrInvoicePL.TampilData(No_Bukti:String);
begin
  QuBeli.Close;
  QuBeli.SQL.Strings[2]:='select @NoBukti='+QuotedStr(No_Bukti);
  //QuBeli.SQL.SaveToFile('d:\tes.txt');
  QuBeli.Open;

  QuBeli1.Close;
  QuBeli1.SQL.Strings[2]:='select @NoBukti='+QuotedStr(No_Bukti);
  QuBeli1.Open;
  //QuBeli1.SQL.SaveToFile('d:\tes1.txt');
  HitungRincian;
  KodeCust.Enabled:=QuBeli.IsEmpty;
  //NoSPP.Enabled:=QuBeli.IsEmpty;
  //NoSC.Enabled:=QuBeli.IsEmpty;
end;

procedure TFrInvoicePL.IsiNoBuktiBaru;
begin
  NoUrut.Enabled:=True;
  DecodeDate(Date,YY,MM,DD);
  If DayOfTheMonth(Date)<=DD then
     DD:=DayOfTheMonth(Date);
  try
    TANGGAL.Date := EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),DD);
  except
    TANGGAL.Date:=EndOfAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln));
  end;
  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal.Date);
  NoUrut.Text:=NomorBukti;
  NOBUKTI.Text:=Nomor;
end;

Function TFrInvoicePL.CheckFormMaster:boolean;
begin
   CheckFormMaster:=true;
end;

procedure TFrInvoicePL.ClearPanelDetail;
begin
   KodeBrg.Text:='';
   LNamaBrg.Caption:='[ . . . ]';
   LSatuan2.Caption:='[ . . . ]';
   LSatuan1.Caption:='[ . . . ]';
   LSatuan.Caption:='[ . . . ]';
   KetBiaya.Lines.Text :='';
   KodeVls1.Text :='IDR';
   Kurs1.Value := 1;
   Harga1.Value := 0; 
   Qnt.AsFloat:=0.00;
   Qnt2.AsFloat:=0.00;
   Qnt1.AsFloat:=0.00;
end;

procedure TFrInvoicePL.RefreshAll;
var i:integer;
begin
   mValid:=False;
   mUbahHd:=False; mUbahHdDet:=False;
   for i:= 0 to Panel1.ControlCount-1 do
   begin
      if (Panel1.Controls[i] is TEdit) then
         (Panel1.Controls[i] as TEdit).Clear;
   end;
   for i:= 0 to Panel3.ControlCount-1 do
   begin
      if (Panel3.Controls[i] is TEdit) then
         (Panel3.Controls[i] as TEdit).Clear;
      if (Panel3.Controls[i] is TPBNumEdit) then
         (Panel3.Controls[i] as TPBNumEdit).Clear;
   end;
   LNamaCustSupp.Caption:='';
   LAlamatCustSupp.Caption:='';
   ClearPanelDetail;
end;

procedure TFrInvoicePL.UpdateDataBeli(Choice:Char;Kodet:String);
begin
  BM:=QuBeli.GetBookmark;
  With Sp_Beli do
  begin
    close;
    Prepared;
    Parameters[1].Value:=Choice;
    Parameters[2].Value:=NoBukti.Text;
    if Choice='D' then
    begin
      Parameters[20].Value:=QuBeliURUT.AsInteger;
    end
    else
    begin
      Parameters[3].Value := NoUrut.Text;
      Parameters[4].Value := Tanggal.Date;
      Parameters[5].Value := NoSPB;
      Parameters[6].Value := KodeCust.Text;
      Parameters[7].Value := Consignee.Text;
      Parameters[8].Value := Notifiy_Party.Text;
      Parameters[9].Value := '';
      Parameters[10].Value:= PoNo.Text;
      Parameters[11].Value:= Term_Of_Payment.Text;
      Parameters[12].Value:= DocCrNo.Text;
      Parameters[13].Value:= Port_Of_Loading.Text;
      Parameters[14].Value:= Port_Of_Discharge.Text;
      Parameters[15].Value:= Name_Of_Vessel.Text;
      parameters[16].Value:= Ship_Onboard_date.Date;
      Parameters[17].Value:= Packing.Text;
      Parameters[18].Value:= '';
      Parameters[19].Value:= IDUser;
      Parameters[20].Value:= mUrut;
      Parameters[21].Value:= mUrutSPP;
      Parameters[22].Value:= KodeBrg.Text;
      Parameters[23].Value:= QuBeliPPN.Value;
      Parameters[24].Value:= QuBeliDISC.Value;
      Parameters[25].Value:= QuBeliKURS.Value;
      if Nosat.Visible=True then
      begin
        if Nosat.ItemIndex=1 then
        begin
          Parameters[26].Value:=Qnt.AsFloat;
          Parameters[27].Value:=Qnt.AsFloat/mIsiBrg;
        end
        else if Nosat.ItemIndex=2 then
        begin
          Parameters[26].Value:=Qnt.AsFloat*mIsiBrg;
          Parameters[27].Value:=Qnt.AsFloat;
        end;
      end else
      begin
        Parameters[26].Value:=Qnt1.AsFloat;
        Parameters[27].Value:=Qnt2.AsFloat;
      end;
      Parameters[28].Value:= mSat_1;
      Parameters[29].Value:= mSat_2;
      Parameters[30].Value:= Nosat.ItemIndex;
      Parameters[31].Value:= mIsiBrg;
      Parameters[32].Value:= NetW.Value;
      Parameters[33].Value:= GrossW.Value;
      Parameters[34].Value:= Harga.value;//QuBeliHARGA.Value;
      Parameters[35].Value:= QuBeliDiscP.Value;
      Parameters[36].Value:= QuBeliDiscRp.Value;
      Parameters[37].Value:= QuBeliDISCTOT.Value;
      Parameters[38].Value:= KetDetail.Text;
      Parameters[39].Value:= KodeVls.Text;
      Parameters[40].Value:=  islokal.checked;//(isLokal.ItemIndex=1);
      Parameters[41].Value := NoBL.Text;
      Parameters[42].Value := Beneficiary1.Lines.Text;
      Parameters[43].Value := Beneficiary2.Lines.Text;
      Parameters[44].Value := Beneficiary3.Lines.Text;
      Parameters[45].Value := ShipmentAdvice1.Lines.Text;
      Parameters[46].Value := ShipmentAdvice2.Lines.Text;
      Parameters[47].Value := ShippingMark.Lines.Text;
      Parameters[48].Value := Mesurement.Value;
      Parameters[49].Value := ETADestination.Date;
      Parameters[50].Value := ToShipmentAdvice2.Lines.Text;
      Parameters[51].Value := FootNote.Lines.Text;
      Parameters[52].Value := IssuingBank.Lines.Text;
      Parameters[53].Value := NamaBrg.Lines.Text;
      Parameters[54].Value := QuBeliNoSPP.Value;
      Parameters[55].Value := QuBeliTglSPP.Value;
      Parameters[56].Value := QuBeliNoso.Value;
      Parameters[57].Value := QuBeliTglSO.Value;
      Parameters[58].Value := null;
      Parameters[59].Value := null;
      Parameters[60].Value := null;
      Parameters[61].Value := null;
      Parameters[62].Value := null;
      Parameters[63].Value := null;
      Parameters[64].Value := Ppnp.Value;
    end;
    try
      ExecProc;
      UpdateUrutTransaksi('DbInvoicePLDet',NoBukti.Text);
      if Choice='I' then
      begin
        TampilData(NoBukti.Text);
        QuBeli.Locate('KodeBrg',KodeBrg.Text,[LOP,LOC]);
        LoggingData(IDUser,'I',TipeTrans, NOBUKTI.Text,
          'Kode Brg = '+KodeBrg.Text);
      end else if Choice='U' then
      begin
        QuBeli.Requery;
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
        LoggingData(IDUser,'U',TipeTrans, NoBukti.Text,
          'Kode Brg = '+KodeBrg.Text);
      end
      Else if Choice='D' then
      begin
        LoggingData(IDUser,'D',TipeTrans ,NoBukti.Text,
          'Kode Brg = '+QuBeliKODEBRG.AsString);
        TampilData(NoBukti.Text);
      end;
    except
      MsgProsesGagal(Choice);
    end;
  end;
end;

procedure TFrInvoicePL.UpdateDataBeli1(Choice:Char;Kodet:String);
begin
  BM:=QuBeli1.GetBookmark;
  With Sp_Beli1 do
  begin
    close;
    Prepared;
    Parameters[1].Value:=Choice;
    Parameters[2].Value:=NoBukti.Text;
    if Choice='D' then
    begin
      Parameters[3].Value:=QuBeli1URUT.AsInteger;
    end
    else
    begin
      Parameters[3].Value:= mUrut;
      Parameters[4].Value:= KetBiaya.text;
      Parameters[5].Value:= KodeVls1.Text;
      Parameters[6].Value:= Kurs1.Value;
      Parameters[7].Value:= 1;
      Parameters[8].Value:= 1;
      Parameters[9].Value:= 1;
      Parameters[10].Value:= '';
      Parameters[11].Value:= '';
      Parameters[12].Value:= Harga1.Value;
    end;
    try
      ExecProc;
      if Choice='I' then
      begin
        TampilData(NoBukti.Text);
        QuBeli1.Locate('Keterangan',KetBiaya.Text,[LOP,LOC]);
      end else if Choice='U' then
      begin
        QuBeli1.Requery;
        if QuBeli1.BookmarkValid(BM) then
        begin
          try
             QuBeli1.GotoBookmark(BM);
          finally
             QuBeli1.FreeBookmark(BM);
          end
        end else
        begin
          QuBeli1.FreeBookmark(BM);
          QuBeli1.Last;
        end;
      end
      Else if Choice='D' then
      begin
        TampilData(NoBukti.Text);
      end;
    except
      MsgProsesGagal(Choice);
    end;
  end;
end;

Procedure TFrInvoicePL.AmBilDataBeli;
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
       ppnp.Value:=QuBelippnp.Value;

      NoBukti.Text:=QuBeliNOBUKTI.AsString;
      Tanggal.Date:=QuBeliTanggal.AsDateTime;
      KodeCust.Text:=QuBeliKODECUSTSUPP.AsString;
      LNamaCustSupp.Caption:=QuBeliNamaCustSupp.AsString;
      pemungut.Checked := QuBeliisflag.AsBoolean;
      LAlamatCustSupp.Caption:=QuBeliAlamat.AsString;
      Consignee.Lines.Text := QuBeliConsignee.Value;
      Notifiy_Party.Lines.Text := QuBeliNotifyParty.Value;
      PoNo.Text := QuBeliPONo.Value;
      //DocCrNo.Text := QuBeliDocCreditNo.Value;
      Port_Of_Loading.Lines.Text := QuBeliPoL.Value;
      Port_Of_Discharge.Lines.Text := QuBeliPoD.Value;
      Name_Of_Vessel.Lines.Text := QuBeliNameOfVessel.Value;
      Ship_Onboard_date.Date := QuBeliShipOnBoardDate.Value;
      Term_Of_Payment.Lines.Text := QuBeliPaymentTerm.Value;
      Packing.Lines.Text := QuBeliPacking.Value;
      KodeVls.Text := QuBeliValas.Value;
      Kurs.Value := QuBeliKURS.Value;
      ppn.ItemIndex := QuBeliPPN.Value;
      {if QuBeliIsLokal.Value then
         isLokal.ItemIndex :=1
      else
         isLokal.ItemIndex :=0;}
        isLokal.Checked:=QuBeliIsLokal.AsBoolean;
      NoBL.Text := QuBeliNoBL.AsString;
      Beneficiary1.Lines.Text := QuBeliNoteBeneficiary1.AsString;
      Beneficiary2.Lines.Text := QuBeliNoteBeneficiary1.AsString;
      Beneficiary3.Lines.Text := QuBeliNoteBeneficiary3.AsString;
      ShipmentAdvice1.Lines.Text := QuBeliShipmentAdvice1.AsString;
      ShipmentAdvice2.Lines.Text := QuBeliShipmentAdvice2.AsString;
      ETADestination.Date := QuBeliETADestination.AsDateTime;
      ToShipmentAdvice2.Lines.Text := QuBeliToShipmentAdvice2.AsString;
      FootNote.Text := QuBeliFootNote.AsString;
      IssuingBank.Text := QuBeliIssuingBank.AsString;
      KodeSls.Text := QuBeliKODESLS.AsString;

      LNamaSls.Caption := '[ '+QuBeliNamaSls.Value+' ]';
      Tipe.ItemIndex := QuBeliTipeBayar.Value;
      Hari.Value :=  QuBeliHari.Value;
      try
        NoAlamatKirim.Text := IntToStr(QuBeliNoAlamatKirim.AsInteger);
        LAlamatKirim.Caption := QuBeliNama.AsString+chr(13)+
                                QuBeliAlamat_1.AsString;
      except
        NoAlamatKirim.Text := '';
        LAlamatKirim.Caption:='';
      end;
   end;
end;

// PROCEDURE DAN FUNCTION MILIK DELPHI

procedure TFrInvoicePL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if mExit=true then
  begin
     FrMainInvoicePL.ToolButton10.Click;
     Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
     Action:=cafree;
  end
  else
  begin
     Action:=caNone;
  end;
end;

procedure TFrInvoicePL.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then SendMessage(Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrInvoicePL.FormShow(Sender: TObject);
begin
  RefreshAll;
  xModalKoreksi:=FrMainInvoicePL.ModalKoreksi;
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
    IsiNoBuktiBaru;
    TampilData(NoBukti.Text);
    mValid:=False;
    NoUrut.Enabled:=True;
    ActiveControl:=NoUrut;
  end
  else
  Begin
    NOBUKTI.Text:=gTempNoBukti;
    //Nourut.Text  := FrMainBP.QuMasterBPNoUrut.AsString;
    TampilData(NoBukti.Text);
    AmBilDataBeli;
    NoUrut.Text:=QuBeliNOURUT.AsString;
    //Daftar_Nomor(TipeTrans,NoUrut.Text,NoBukti.Text,1);
    //NoUrut.Enabled:=False;
    Tanggal.Enabled:=CekPeriode(IDUser,Tanggal.Date);
    if Tanggal.CanFocus then
      ActiveControl:=Tanggal
    else ActiveControl:=cxGrid1;
  end;
end;



procedure TFrInvoicePL.FormCreate(Sender: TObject);
begin
  TipeTrans:='INVC';
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

procedure TFrInvoicePL.KoreksiBtnClick(Sender: TObject);
begin
  mValid:=false;
  Model:='koreksi';
  Case cxGrid1.ActiveLevel.Index of
    0 : begin
          if QuBeli.IsEmpty=false then
          begin
            TampilTombolDetail(True);
            mUrut:=QuBeliURUT.AsInteger;
            mUrutSPP:=QuBeliUrutSPB.AsInteger;
            KodeBrg.Text:=QuBeliKODEBRG.AsString;
            KodeBrg.Enabled:=False;
            LNamaBrg.Caption:='[ '+QuBeliNamaBrg.AsString+' ]';
            NamaBrg.Text:=QuBeliNamabrgKom.AsString;
            ShippingMark.Lines.Text := QuBeliShippingMark.AsString;
            LSatuan2.Caption:='[ '+QuBeliSat_2.AsString+' ]';
            mSat_2:=QuBeliSat_2.AsString;
            LSatuan1.Caption:='[ '+QuBeliSat_1.AsString+' ]';
            mSat_1:=QuBeliSat_1.AsString;
            mIsiBrg:=QuBeliIsi.AsFloat;
            Qnt2.Value:=QuBeliQnt2.AsFloat;
            Qnt1.Value:=QuBeliQnt.AsFloat;
            Nosat.Items.Clear;
            Nosat.Items.Add('Pilih Satuan');
            Nosat.Items.Add(mSat_1);
            Nosat.Items.Add(mSat_2);
            Nosat.ItemIndex := QuBeliNosat.AsInteger;
            Harga.Value := QuBeliHARGA.Value;
            ppnp.Value:=QuBelippnp.Value;
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
            if Qnt.CanFocus then
               Qnt.SetFocus;
            if Qnt2.CanFocus then
               Qnt2.SetFocus;
            ShippingMark.Lines.Text := QuBeliShippingMark.AsString;
            KetDetail.Text := QuBeliKetDetail.AsString;
            NoSPB := QuBeliNoSPB.Value;
          end
          else
          begin
            MsgKoreksiDataKosong;
            ActiveControl:=cxGrid1;
          end;
        end;
    1 : begin
          if QuBeli1.IsEmpty=false then
          begin
            TampilTombolDetail(True);
            mUrut:=QuBeli1Urut.AsInteger;
            Harga1.Value:= QuBeli1Harga.Value;
            KetBiaya.Lines.Text := QuBeli1Keterangan.AsString;
            KodeVls1.Text := QuBeli1KodeVls.AsString;
            Kurs1.Value := QuBeli1Kurs.Value;
          end
          else
          begin
            MsgKoreksiDataKosong;
            ActiveControl:=cxGrid1;
          end;
        end;
  end;

    // data yang di update

end;

procedure TFrInvoicePL.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
    RefreshAll;
    if xModalKoreksi then
    begin
      mExit:=True;
      Close;
    end
    else
    begin
      IsiNoBuktiBaru;
      TampilData(NOBUKTI.Text);
      ActiveControl:=NoUrut;
    end;
    FrMainInvoicePL.GetData(strtoint(PeriodBln),StrToInt(PeriodThn));
  end
  else if key=VK_return then
  begin
    //KoreksiBtn.Click;
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

procedure TFrInvoicePL.HapusBtnClick(Sender: TObject);
begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      Case cxGrid1.ActiveLevel.Index of
        0 : begin
              if QuBeli.IsEmpty=true then
              begin
                MsgHapusDataKosong;
                ActiveControl:=cxGrid1;
              end
              else
              begin
                if CekSudahAdaProsesSelanjutnya=True then
                begin
                  MessageDlg('Data tidak dapat dihapus, sudah ada transaksi'+chr(13)+mStrMsg, mtInformation,[mbOK],0);
                  ActiveControl:=cxGrid1;
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
              end;
            end;
        1 : begin
              if QuBeli1.IsEmpty=true then
              begin
                MsgHapusDataKosong;
                ActiveControl:=cxGrid1;
              end
              else
              begin
                StrPCopy(S,Format('Anda yakin Detail Biaya %s dihapus ?',
                [QuBeli1Keterangan.AsString]));
                if (Application.MessageBox(S,'Hapus Data',
                  MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
                begin
                 UpdateDataBeli1('D','BL');
                end;
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

procedure TFrInvoicePL.wwDBGrid1Enter(Sender: TObject);
begin
  FrInvoicePL.KeyPreview:=False;
end;

procedure TFrInvoicePL.wwDBGrid1Exit(Sender: TObject);
begin
  FrInvoicePL.KeyPreview:=True;
end;

procedure TFrInvoicePL.NoUrutKeyDown(Sender: TObject; var Key: Word;
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
      If Not Daftar_Nomor(TipeTrans,Nourut.Text,NoBukti.Text,isMax) then
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

procedure TFrInvoicePL.BitBtn1Click(Sender: TObject);
begin
 if CekPeriode(IdUser,TANGGAL.Date)=true then
  begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      Case dxPageControl2.ActivePageIndex of
        0 : begin
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
                    ActiveControl:=Kodebrg;
                    ClearPanelDetail;
                  end
                  else if model='koreksi' then
                  begin
                    UpdateDataBeli('U','BL');
                    SpeedButton1.Click;
                  end;
                end;
              end else
              begin
                MsgDataTidakBolehKosong('Kode Barang');
                ActiveControl:=KodeBrg;
              end;
            end;
        1 : begin
              if length(KetBiaya.Text)>0 then
              begin
                  if model='write' then
                  begin
                    UpdateDataBeli1('I','BL');
                    ActiveControl := KetBiaya;
                    ClearPanelDetail;
                  end
                  else if model='koreksi' then
                  begin
                    UpdateDataBeli1('U','BL');
                    SpeedButton1.Click;
                  end;
              end else
              begin
                MsgDataTidakBolehKosong('Detail Biaya');
                ActiveControl:=KetBiaya;
              end;
            end;
      end;
    end else
    begin
      MsgPeriodeSudahDikunci;
    end;
  end
  else
    MsgTanggalTidakSesuaiPeriode;
end;

procedure TFrInvoicePL.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  TampilTombolDetail(False);
  ActiveControl:=cxGrid1;
  ClearPanelDetail;
end;

procedure TFrInvoicePL.FormDestroy(Sender: TObject);
begin
  FrInvoicePL:=nil;
end;

procedure TFrInvoicePL.dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
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

procedure TFrInvoicePL.NoUrutChange(Sender: TObject);
begin
  if mValid then
  begin
    if (Length(NoUrut.Text)=5) and (xIsLokal) then
    begin
      Konfig(TipeTrans,Nourut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date);
      NOBUKTI.Text:=MyNoBukti;
    end
    else if (Length(NoUrut.Text)=8) and (xIsLokal=False) then
    begin
      Konfig(TipeTrans,Nourut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date);
      NOBUKTI.Text:=MyNoBukti;
    end
    else
      ActiveControl:=NoUrut;
  end;
end;

procedure TFrInvoicePL.KodeBrgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrInvoicePL.NoUrutEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrInvoicePL.KodeBrgExit(Sender: TObject);
begin
  if mValid Then
  begin
    if Length(KodeBrg.Text)=0 then TampilIsiBarang else
    begin
      if DataBersyarat('Select B.KodeBrg,B.NamaBrg, B.SAT_1, B.SAT_2, B.ISI, B.NOSAT, Sum(A.QNT) Qnt, Sum(A.QNT2) Qnt2, '+
                       '       B.ShippingMark, Sum(A.NetW) NetW, Sum(A.GrossW) GrossW, Sum(B.Mesurement) Mesurement, D.Harga '+
                       'From dbSPBDet A '+
                       '     Left Outer join dbSPPDet B on B.NoBukti=A.NoSPP and B.Urut=A.UrutSPP '+
                       '     Left Outer join DBSHIPPINGDET C on C.Nobukti=b.NoSHIP and c.Urut=B.UrutSHIP '+
                       '     Left Outer join dbSalesContractDet D on D.Nobukti=C.NoSC and d.Urut=C.UrutSC  '+
                       '     left Outer join DBInvoicePL E on E.NoSPP=B.NoBukti '+
                       '     Left Outer join dbspp F on F.NoBukti=B.NoBukti '+
                       'where F.isclose=1 and E.NoBukti is null and B.nobukti=:0 and B.kodebrg=:1 '+
                       'Group by B.KodeBrg,B.NamaBrg, B.SAT_1, B.SAT_2, B.ISI, B.NOSAT, '+
                       '       B.ShippingMark,   D.Harga',
      [NOSPB,KodeBrg.Text], DM.QuCari)=True then
      begin
        with DM.QuCari do
        begin
          KodeBrg.Text:=FieldByName('KodeBrg').AsString;
          LNamaBrg.Caption:='[ '+FieldByName('NamaBrg').AsString+' ]';
          NamaBrg.Text := FieldByName('NamaBrgKom').AsString;
          mUrutSPP:=FieldByName('Urut').AsInteger;
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
      DataBersyarat('select cast(Konversi as int) Konversi from dbBarang where KodeBrg=:0',[KodeBrg.Text],DM.QuCari);
      TampilanQntSatuan(DM.QuCari.FieldByName('Konversi').AsInteger);
      if Qnt.CanFocus then
        Qnt.SetFocus;
      if Qnt2.CanFocus then
        Qnt2.SetFocus;
    end;
  end;
end;

procedure TFrInvoicePL.TambahBtnClick(Sender: TObject);
begin
  model:='write';
  Application.CreateForm(TFrInvoicePLProsesTransaksi,FrInvoicePLProsesTransaksi);
  //FrInvoicePLProsesTransaksi.mNOSO_SJProses:=gTempNoBuktiSO;
  //FrInvoicePLProsesTransaksi.mNOSO_SJProses:= FrMainInvoicePL.QuMaster4KodeCustSupp.AsString ;
  FrInvoicePLProsesTransaksi.mNOSO_SJProses:=
    QuBeliKodeCustSupp.AsString  ;
  FrInvoicePLProsesTransaksi.NoBukti := NoBukti.Text;
  FrInvoicePLProsesTransaksi.ShowModal;
  ActiveControl := cxGrid1;
  TampilData(NoBukti.Text);
end;

procedure TFrInvoicePL.KodeBrgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
    SpeedButton1.Click;
end;

procedure TFrInvoicePL.Qnt2Change(Sender: TObject);
begin
  if mValid then
  begin
    Qnt1.Value:=Qnt2.Value*mIsiBrg;
  end;
end;

procedure TFrInvoicePL.TanggalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
  begin
    mUbahHd := True;
    if (CekPeriode(IDUser,TANGGAL.Date)=False) then
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
      ActiveControl:=NoUrut;
    end
    else
    begin
      mExit:=True;
      Close;
    end;
  end;
end;

procedure TFrInvoicePL.TanggalChange(Sender: TObject);
begin
  if mValid then
  begin
    mUbahHd:=True;
  end;
end;

procedure TFrInvoicePL.TanggalExit(Sender: TObject);
begin
  if mValid then
  begin
     if CekPeriode(IdUser,Tanggal.Date)=false then
     begin
        MsgTanggalTidakSesuaiPeriode;
        ActiveControl:=tanggal;
     end;
  end;
end;

procedure TFrInvoicePL.NosatEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrInvoicePL.NosatChange(Sender: TObject);
var xSatuan : string;
    xHarga : Real;
begin
  if mValid then
  begin
    CariSatuan(KodeBrg.Text,'',NoSat.ItemIndex,xHarga,misibrg,Sat,xSatuan,xStatus);
    if Nosat.ItemIndex=1 then
    begin
      LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value/mIsiBrg)+' '+mSat_2+' ]';
    end
    else
    if Nosat.ItemIndex=2 then
    begin
      LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value*mIsiBrg)+' '+mSat_1+' ]';
    end;

    if not xStatus then
    begin
      ShowMessage('Silahkan pilih satuan');
      ActiveControl:=NoSat;
    end;
  end;

end;

procedure TFrInvoicePL.ConsigneeEnter(Sender: TObject);
begin
  mValid := True;
  FrInvoicePL.KeyPreview := False;
end;

procedure TFrInvoicePL.ConsigneeExit(Sender: TObject);
begin
  if mValid then
  begin
    mUbahHd := True;
    if (CekPeriode(IDUser,TANGGAL.Date)=False) then
       Abort;
    UpdatedbBeli;
  end;
  FrInvoicePL.KeyPreview := True;
end;

procedure TFrInvoicePL.CetakClick(Sender: TObject);
var xNet : Real;
begin
  if ComboBox1.ItemIndex=0 then
  begin
    frxDBCetak.DataSet.Close;
    frxDBCetak.DataSet := QuUpdatedbbeli;
    frxDBDataset2.DataSet.Close;
    frxDBDataset2.DataSet := QuBeli1;
    with QuUpdatedbbeli do
    begin
      close;
      sql.Clear;
      sql.Add('Exec cetakInvoicePenjualan '+QuotedStr(Nobukti.text));
      Prepared;
      open;
    end;
    QuUpdatedbBeli.DisableControls;
    QuUpdatedbBeli.First;
    while not QuUpdatedbBeli.Eof do
    begin
      xNet := xNet + QuUpdatedbBeli.FieldByname('NNet').AsFloat;
      QuUpdatedbBeli.Next;
    end;
    QuUpdatedbBeli.EnableControls;
    MoneyString1.Value := xNet;
    frxDBCetak.DataSet.Open;
    frxDBDataset2.DataSet.Open;
    with frxReport1 do
    begin
      LoadFromFile(ExtractFilePath(Application.ExeName)+'Nota\InvoicePL.fr3');
      ShowReport;
    end;
  end else
  if ComboBox1.ItemIndex=1 then
  begin
    frxDBCetak.DataSet.Close;
    frxDBCetak.DataSet := QuUpdatedbbeli;
    frxDBDataset2.DataSet.Close;
    frxDBDataset2.DataSet := QuBeli1;
    with QuUpdatedbbeli do
    begin
      close;
      sql.Clear;
      sql.Add('Exec cetakInvoicePenjualanK '+QuotedStr(Nobukti.text));
      Prepared;
      open;
    end;
    QuUpdatedbBeli.DisableControls;
    QuUpdatedbBeli.First;
    while not QuUpdatedbBeli.Eof do
    begin
      xNet := xNet + QuUpdatedbBeli.FieldByname('NNet').AsFloat;
      QuUpdatedbBeli.Next;
    end;
    QuUpdatedbBeli.EnableControls;
    MoneyString1.Value := xNet;
    frxDBCetak.DataSet.Open;
    frxDBDataset2.DataSet.Open;
    with frxReport1 do
    begin
      LoadFromFile(ExtractFilePath(Application.ExeName)+'Nota\KwitansiPL.fr3');
      ShowReport;
    end;
  end else
  if ComboBox1.ItemIndex=2 then
  begin
    frxDBCetak.DataSet.Close;
    frxDBCetak.DataSet := QuUpdatedbbeli;
    frxDBDataset2.DataSet.Close;
    frxDBDataset2.DataSet := QuBeli1;
    with QuUpdatedbbeli do
    begin
      close;
      sql.Clear;
      sql.Add('Exec cetakTTInvoicePenjualan '+QuotedStr(Nobukti.text));
      Prepared;
      open;
    end;
    QuUpdatedbBeli.DisableControls;
    QuUpdatedbBeli.First;
    while not QuUpdatedbBeli.Eof do
    begin
      xNet := xNet + QuUpdatedbBeli.FieldByname('NNet').AsFloat;
      QuUpdatedbBeli.Next;
    end;
    QuUpdatedbBeli.EnableControls;
    MoneyString1.Value := xNet;
    frxDBCetak.DataSet.Open;
    frxDBDataset2.DataSet.Open;
    with frxReport1 do
    begin
      LoadFromFile(ExtractFilePath(Application.ExeName)+'Nota\TandaTerimaPL.fr3');
      ShowReport;
    end;
  end;
end;

procedure TFrInvoicePL.SpeedButton8Click(Sender: TObject);
var xNet : Real;
begin
{
  frxDBCetak.DataSet.Close;
  frxDBCetak.DataSet := QuUpdatedbbeli;
  frxDBDataset2.DataSet.Close;
  frxDBDataset2.DataSet := QuBeli1;
  with QuUpdatedbbeli do
  begin
    close;
    sql.Clear;
    sql.Add('Exec cetakInvoicePenjualan '+QuotedStr(Nobukti.text));
    Prepared;
    open;
  end;
  QuUpdatedbBeli.DisableControls;
  QuUpdatedbBeli.First;
  while not QuUpdatedbBeli.Eof do
  begin
    xNet := xNet + QuUpdatedbBeli.FieldByname('Nnet').AsFloat;
    QuUpdatedbBeli.Next;
  end;
  QuUpdatedbBeli.EnableControls;
  MoneyString1.Value := xNet;
  frxDBCetak.DataSet.Open;
  frxDBDataset2.DataSet.Open;
  with frxReport1 do
  begin
    LoadFromFile(ExtractFilePath(Application.ExeName)+'Nota\InvoicePL.fr3');
    DesignReport;
  end;
}
  if ComboBox1.ItemIndex=0 then
  begin
    frxDBCetak.DataSet.Close;
    frxDBCetak.DataSet := QuUpdatedbbeli;
    frxDBDataset2.DataSet.Close;
    frxDBDataset2.DataSet := QuBeli1;
    with QuUpdatedbbeli do
    begin
      close;
      sql.Clear;
      sql.Add('Exec cetakInvoicePenjualan '+QuotedStr(Nobukti.text));
      Prepared;
      open;
    end;
    QuUpdatedbBeli.DisableControls;
    QuUpdatedbBeli.First;
    while not QuUpdatedbBeli.Eof do
    begin
      xNet := xNet + QuUpdatedbBeli.FieldByname('NNet').AsFloat;
      QuUpdatedbBeli.Next;
    end;
    QuUpdatedbBeli.EnableControls;
    MoneyString1.Value := xNet;
    frxDBCetak.DataSet.Open;
    frxDBDataset2.DataSet.Open;
    with frxReport1 do
    begin
      LoadFromFile(ExtractFilePath(Application.ExeName)+'Nota\InvoicePL.fr3');
      DesignReport;
    end;
  end else
  if ComboBox1.ItemIndex=1 then
  begin
    frxDBCetak.DataSet.Close;
    frxDBCetak.DataSet := QuUpdatedbbeli;
    frxDBDataset2.DataSet.Close;
    frxDBDataset2.DataSet := QuBeli1;
    with QuUpdatedbbeli do
    begin
      close;
      sql.Clear;
      sql.Add('Exec cetakInvoicePenjualan '+QuotedStr(Nobukti.text));
      Prepared;
      open;
    end;
    QuUpdatedbBeli.DisableControls;
    QuUpdatedbBeli.First;
    while not QuUpdatedbBeli.Eof do
    begin
      xNet := xNet + QuUpdatedbBeli.FieldByname('NNet').AsFloat;
      QuUpdatedbBeli.Next;
    end;
    QuUpdatedbBeli.EnableControls;
    MoneyString1.Value := xNet;
    frxDBCetak.DataSet.Open;
    frxDBDataset2.DataSet.Open;
    with frxReport1 do
    begin
      LoadFromFile(ExtractFilePath(Application.ExeName)+'Nota\KwitansiPL.fr3');
      DesignReport;
    end;
  end else
  if ComboBox1.ItemIndex=2 then
  begin
    frxDBCetak.DataSet.Close;
    frxDBCetak.DataSet := QuUpdatedbbeli;
    frxDBDataset2.DataSet.Close;
    frxDBDataset2.DataSet := QuBeli1;
    with QuUpdatedbbeli do
    begin
      close;
      sql.Clear;
      sql.Add('Exec cetakTTInvoicePenjualan '+QuotedStr(Nobukti.text));
      Prepared;
      open;
    end;
    QuUpdatedbBeli.DisableControls;
    QuUpdatedbBeli.First;
    while not QuUpdatedbBeli.Eof do
    begin
      xNet := xNet + QuUpdatedbBeli.FieldByname('NNet').AsFloat;
      QuUpdatedbBeli.Next;
    end;
    QuUpdatedbBeli.EnableControls;
    MoneyString1.Value := xNet;
    frxDBCetak.DataSet.Open;
    frxDBDataset2.DataSet.Open;
    with frxReport1 do
    begin
      LoadFromFile(ExtractFilePath(Application.ExeName)+'Nota\TandaTerimaPL.fr3');
      DesignReport;
    end;
  end;
end;

procedure TFrInvoicePL.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
  if CompareText(VarName,'Terbilang')=0 then
  begin
    if QuBeliValas.AsString<>'IDR' then
       Value := QuBeliNamaVls.AsString+' '+StringReplace(MoneyString1.Caption,'zero cents',' only',[rfReplaceAll, rfIgnoreCase])
    else
       Value := StringReplace(MoneyString1.Caption,'zero cents','',[rfReplaceAll, rfIgnoreCase]);
  end;
  if CompareText(VarName,'InvoiceValue')=0 then
  begin
    Value := MoneyString1.Value;
  end;
end;

procedure TFrInvoicePL.KetBiayaEnter(Sender: TObject);
begin
  KeyPreview := false;
end;

procedure TFrInvoicePL.KetBiayaExit(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TFrInvoicePL.KetBiayaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
    SpeedButton1.Click;
end;

procedure TFrInvoicePL.KodeVls1Enter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrInvoicePL.KodeVls1Exit(Sender: TObject);
var i : Integer;
begin
  if mValid Then
  begin
    if not xModalKoreksi then
    begin
      SetLength(xValue,3);
      if DataBersyarat('select kodevls,namavls,kurs from dbValas where kodevls=:0',[Kodevls1.text],DM.Qucari) then
      begin
        KodeVls1.Text :=DM.QuCari.FieldByname('Kodevls').AsString;
        kurs1.Value :=DM.QuCari.FieldByname('kurs').Value;
      end
      else
      begin
        TampilIsiData(FrInvoicePL,kodevls1,lsatuan2,1006,'kodevls','Namavls');
        for I := LOW(xValue) to High(xValue) do
        begin
          if I= High(xValue) then
             Kurs1.Value:=xValue[i];
        end;
      end;
      if KodeVls1.Text='IDR' then
      begin
         Kurs1.Enabled:=false;
         ActiveControl:=Harga1;
      end
      else
      begin
         Kurs1.Enabled:=true;
         ActiveControl:=Kurs1;
      end;
      xValue := nil;
    end;
  end;

end;

procedure TFrInvoicePL.FootNoteExit(Sender: TObject);
begin
  if mValid then
  begin
    mUbahHd := True;
    if (CekPeriode(IDUser,TANGGAL.Date)=False) then
       Abort;
    UpdatedbBeli;
  end;
  FrInvoicePL.KeyPreview := True;
end;

procedure TFrInvoicePL.UangMukaChange(Sender: TObject);
begin
   sisa.Value :=Dpp.Value - UangMuka.Value;
end;

procedure TFrInvoicePL.PemungutClick(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrInvoicePL.PemungutExit(Sender: TObject);
begin
  if mValid then
  begin
    mUbahHd := True;
    if (CekPeriode(IDUser,TANGGAL.Date)=False) then
       Abort;
    UpdatedbBeli;
  end;
  FrInvoicePL.KeyPreview := True;
end;

procedure TFrInvoicePL.CPpnPClick(Sender: TObject);
var
  Idx: Integer;
  Value: integer;
begin
  if CPpnP.ItemIndex=0 then
      PPnP.Value:=10
     else
     if CPpnP.ItemIndex=1 then
       PPnP.Value:=12
            else
     if CPpnP.ItemIndex=2 then
     Begin
         if islokal.Checked then
             PPnP.Value:=12
           else
          PPnP.Value:=11;
      end;
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
      end;  }

end;

procedure TFrInvoicePL.CPpnPExit(Sender: TObject);
begin
  if mValid then
  begin
    mUbahHd := True;
    if (CekPeriode(IDUser,TANGGAL.Date)=False) then
       Abort;
    UpdatedbBeli;
  end;
  FrInvoicePL.KeyPreview := True;
end;

end.
