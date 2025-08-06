unit FrmRJual;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, DBCtrls, ImgList, RxGIF, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, frxClass, frxDMPExport,
  frxDBSet, strUtils,DateUtils, frxDesgn, frxBarcode,Variants, dxmdaset;

type
  TFrRJual = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    QuBeli: TADOQuery;
    Sp_Beli: TADOStoredProc;
    DsQuBeli: TDataSource;
    QuUpdatedbbeli: TADOQuery;
    Label10: TLabel;
    Panel2: TPanel;
    dxDBGrid1: TdxDBGrid;
    Shape4: TShape;
    Label5: TLabel;
    Label12: TLabel;
    Label42: TLabel;
    NoUrut: TEdit;
    NoBukti: TEdit;
    TglSPP: TDateEdit;
    LNamaBrg: TRxLabel;
    LKodeBrg: TLabel;
    KodeBrg: TEdit;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Supp: TEdit;
    Label4: TLabel;
    NOPNJ: TEdit;
    Label3: TLabel;
    Label11: TLabel;
    NOSPP: TEdit;
    Label13: TLabel;
    Tanggal: TDateEdit;
    Label16: TLabel;
    Label19: TLabel;
    Qnt: TPBNumEdit;
    LSatuan: TLabel;
    Shape6: TShape;
    LNamaCustSupp: TLabel;
    LAlamatCustSupp: TLabel;
    PanelShow1: TPanel;
    Cetak: TSpeedButton;
    HapusBtn: TSpeedButton;
    KoreksiBtn: TSpeedButton;
    TambahBtn: TSpeedButton;
    SpeedButton8: TSpeedButton;
    dxDBGrid1URUT: TdxDBGridMaskColumn;
    dxDBGrid1KODEBRG: TdxDBGridMaskColumn;
    dxDBGrid1NamaBrg: TdxDBGridMaskColumn;
    dxDBGrid1QNT: TdxDBGridMaskColumn;
    dxDBGrid1QNT2: TdxDBGridMaskColumn;
    dxDBGrid1SAT_1: TdxDBGridMaskColumn;
    dxDBGrid1SAT_2: TdxDBGridMaskColumn;
    dxDBGrid1ISI: TdxDBGridMaskColumn;
    dxDBGrid1NOSO: TdxDBGridMaskColumn;
    dxDBGrid1URUTSO: TdxDBGridMaskColumn;
    dxDBGrid1Keterangan: TdxDBGridMaskColumn;
    NOSC: TEdit;
    Label6: TLabel;
    Nosat: TComboBox;
    LSatuan2: TLabel;
    LSatuan1: TLabel;
    Qnt2: TPBNumEdit;
    Qnt1: TPBNumEdit;
    dxDBGrid1Column14: TdxDBGridColumn;
    QuReport: TADOQuery;
    frxReport1: TfrxReport;
    frxDBCetak: TfrxDBDataset;
    Ket: TMemo;
    Label7: TLabel;
    Label8: TLabel;
    QntTukar: TPBNumEdit;
    Label9: TLabel;
    Qnt2Tukar: TPBNumEdit;
    Label15: TLabel;
    Tipe: TComboBox;
    Label14: TLabel;
    TglSC: TDateEdit;
    Label1: TLabel;
    TglInvoice: TDateEdit;
    QuBeliNOBUKTI: TStringField;
    QuBeliNOURUT: TStringField;
    QuBeliTANGGAL: TDateTimeField;
    QuBeliTglJatuhTempo: TDateTimeField;
    QuBeliKODECUSTSUPP: TStringField;
    QuBeliNamaCustSupp: TStringField;
    QuBeliAlamat: TStringField;
    QuBeliKota: TStringField;
    QuBeliNOSPB: TStringField;
    QuBeliTGLSPB: TDateTimeField;
    QuBeliNoSPP: TStringField;
    QuBeliTglSPP: TDateTimeField;
    QuBeliNoInvoice: TStringField;
    QuBeliTglInvoice: TDateTimeField;
    QuBelinosc: TStringField;
    QuBeliTglSC: TDateTimeField;
    QuBeliKODEVLS: TStringField;
    QuBeliKURS: TBCDField;
    QuBeliPPN: TWordField;
    QuBeliTIPEBAYAR: TWordField;
    QuBeliHARI: TIntegerField;
    QuBeliDISC: TFloatField;
    QuBeliDISCRP: TBCDField;
    QuBeliFREIGHT: TBCDField;
    QuBeliLAIN2: TBCDField;
    QuBeliISCETAK: TWordField;
    QuBeliISCETAKGDG: TWordField;
    QuBeliIsBatal: TBooleanField;
    QuBeliUserBatal: TStringField;
    QuBeliIDUser: TStringField;
    QuBeliURUT: TIntegerField;
    QuBeliKODEBRG: TStringField;
    QuBeliNamaBrgKom: TStringField;
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
    QuBeliUrutInvoice: TIntegerField;
    QuBeliKeterangan: TStringField;
    QuBeliUrutTrans: TIntegerField;
    QuBeliQntTukar: TBCDField;
    QuBeliQnt2Tukar: TBCDField;
    QuBeliFlagRetur: TWordField;
    QuBeliTipe: TWordField;
    Label20: TLabel;
    KodeVls: TEdit;
    Label21: TLabel;
    Kurs: TPBNumEdit;
    Label22: TLabel;
    PPN: TComboBox;
    Label23: TLabel;
    Label24: TLabel;
    NoShip: TEdit;
    TglShip: TDateEdit;
    Label25: TLabel;
    NetW: TPBNumEdit;
    Label26: TLabel;
    GrossW: TPBNumEdit;
    QuBeliNetW: TBCDField;
    QuBeliGrossW: TBCDField;
    dxDBGrid1NetW: TdxDBGridMaskColumn;
    dxDBGrid1GrossW: TdxDBGridMaskColumn;
    Label27: TLabel;
    NetWTukar: TPBNumEdit;
    Label28: TLabel;
    GrossWTukar: TPBNumEdit;
    Label29: TLabel;
    Mesurement: TPBNumEdit;
    Label30: TLabel;
    MesureTukar: TPBNumEdit;
    QuBeliNetWTukar: TBCDField;
    QuBeliGrossWTukar: TBCDField;
    QuBeliMesurement: TBCDField;
    QuBeliMesurementTukar: TBCDField;
    dxDBGrid1Mesurement: TdxDBGridMaskColumn;
    dxDBGrid1HARGA: TdxDBGridMaskColumn;
    dxDBGrid1SUBTOTAL: TdxDBGridMaskColumn;
    Label31: TLabel;
    Harga: TPBNumEdit;
    Label17: TLabel;
    NoSPB: TEdit;
    Label18: TLabel;
    TglSPB: TDateEdit;
    Label32: TLabel;
    NOLKP: TEdit;
    Label33: TLabel;
    TGLLKP: TDateEdit;
    QuBeliNoLKP: TWideStringField;
    QuBeliTglLKP: TDateTimeField;
    Label34: TLabel;
    TipeBayar: TComboBox;
    Label35: TLabel;
    Hari: TPBNumEdit;
    Label37: TLabel;
    KodeSls: TEdit;
    LNamaSls: TLabel;
    Label36: TLabel;
    PoNo: TEdit;
    Label38: TLabel;
    NoAlamatKirim: TEdit;
    LAlamatKirim: TLabel;
    Shape1: TShape;
    Panel4: TPanel;
    LDiskonP: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    LDiskonRp: TLabel;
    DiskonP: TPBNumEdit;
    GrandTotal: TPBNumEdit;
    Pajak: TPBNumEdit;
    DPP: TPBNumEdit;
    DiskonRp: TPBNumEdit;
    QuBeliQNT1: TBCDField;
    QuBeliSatuan: TStringField;
    QuBeliKodeSLS: TIntegerField;
    QuBeliNamaSLS: TStringField;
    QuBeliNama: TStringField;
    QuBeliAlamat_1: TStringField;
    QuBeliNOSO: TStringField;
    QuBeliTGLSO: TDateTimeField;
    QuBeliNoAlamatKirim: TIntegerField;
    QuBeliNoPO: TStringField;
    Label43: TLabel;
    DiscP: TPBNumEdit;
    DiscRp: TPBNumEdit;
    Label44: TLabel;
    dxDBGrid1DISCTOT: TdxDBGridMaskColumn;
    QuBeliTotal: TBCDField;
    QuBeliDiskon: TBCDField;
    QuBeliTotalDPP: TBCDField;
    QuBeliTotalPPn: TBCDField;
    QuBeliTotalNetto: TBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
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
    procedure NOPNJExit(Sender: TObject);
    procedure KodeBrgExit(Sender: TObject);
    procedure TambahBtnClick(Sender: TObject);
    procedure TanggalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TanggalChange(Sender: TObject);
    procedure TanggalExit(Sender: TObject);
    procedure Qnt2Change(Sender: TObject);
    procedure SuppEnter(Sender: TObject);
    procedure SuppExit(Sender: TObject);
    procedure NosatChange(Sender: TObject);
    procedure NosatEnter(Sender: TObject);
    procedure CetakClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure KetEnter(Sender: TObject);
    procedure KetExit(Sender: TObject);


    procedure NoUrutExit(Sender: TObject);
    procedure NoSPBExit(Sender: TObject);
    procedure QntTukarEnter(Sender: TObject);
    procedure NoSPBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QntKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DiscPExit(Sender: TObject);
    procedure frxReport1AfterPrintReport(Sender: TObject);
  private
    { Private declarations }
    mUrut,mUrutSO,mUrutPNJ,UrutINS: Integer;
    mUbahHd, mUbahHdDet, mValid, mExit: Boolean;
    mNilaiEnter, mIsiBrg: Real;
    mSat_1, mSat_2,NoIns: String;
    procedure TampilanQntSatuan(pNilai: Integer);
    procedure TampilIsiBarang;
    procedure TampilIsiSO;
    procedure TampilIsiGudang;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure UpdatedbBeli;
    procedure IsiNoBuktiBaru;
    procedure IsiDataPNJ;
    procedure TampilIsiSPB;
    procedure TampilIsiPNJ;
    procedure TampilIsiSupplier;
    function  prosesdiskon(Sender:TObject): real;
    Procedure HitungRincian;
    procedure TampilData(No_Bukti:String);
    procedure UpdateDataBeli(Choice:Char;Kodet:String);
    Procedure AmBilDataBeli;
    
  public
    { Public declarations }
    NamabrgKom : String;
    mharga,DiskonTotal : Real;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel, xModalKoreksi, xStatus: Boolean;
    xFlagmenu : byte;
  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrRJual: TFrRJual;
  TipeTrans,PlusPPN,Nomor,Model:String;
  YY,MM,DD : Word;
  S:array[0..255]of char;
  bm,GBM : TBookmark;

implementation
uses FrmBrows, MyProcedure, MyGlobal, MyModul, FrmMainRJual,
  FrmRInvoicePLProsesTransaksi;
{$R *.DFM}
procedure TFrRJual.TampilIsiSupplier;
begin
  KodeBrows:=30051;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=Supp.Text;
  FrBrows.isKecuali := Tipe.ItemIndex=1;
  FrBrows.istampil := False;
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.FieldByName('KodeCustSupp').AsString<>'') then
  begin
    Supp.Text:=FrBrows.QuBrows.FieldByName('KodeCustSupp').AsString;
    LNamaCustSupp.Caption:=FrBrows.QuBrows.FieldByName('NamaCustSupp').AsString;
    LAlamatCustSupp.Caption:=FrBrows.QuBrows.FieldByName('Alamat').AsString+chr(13)+FrBrows.QuBrows.FieldByName('Kota').AsString;
  end
  else
    ActiveControl:=Supp;
end;

procedure TFrRJual.TampilanQntSatuan(pNilai: Integer);
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

procedure TFrRJual.TampilIsiBarang;
begin
  KodeBrows :=8006; 
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.NoKira:=NoPNJ.Text;
  FrBrows.NoKira2 := NoSPB.Text;
  FrBrows.IsiData:=KodeBrg.Text;
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.FieldByName('KodeBrg').AsString<>'') then
  begin
    with FrBrows.QuBrows do
    begin
      KodeBrg.Text:=FrBrows.QuBrows.FieldByName('KodeBrg').AsString;
      LNamaBrg.Caption:='[ '+FrBrows.QuBrows.FieldByName('NamaBrg').AsString+' ]';
      mharga :=FrBrows.QuBrows.FieldByName('Harga').AsFloat;
      Harga.Value := mharga;
      NamabrgKom := FieldByName('NamaBrgkom').AsString;
      mSat_1:=FrBrows.QuBrows.FieldByName('Sat_1').AsString;
      mSat_2:=FrBrows.QuBrows.FieldByName('Sat_2').AsString;
      mIsiBrg:=FrBrows.QuBrows.FieldByName('Isi').AsFloat;
      LSatuan2.Caption:='[ '+mSat_2+' ]';
      LSatuan1.Caption:='[ '+mSat_1+' ]';
      NetW.Value:=FrBrows.QuBrows.FieldByName('netwSisa').AsFloat;
      GrossW.Value:=FrBrows.QuBrows.FieldByName('GrossWSisa').AsFloat;
      Qnt2.Value:=FrBrows.QuBrows.FieldByName('Qnt2Sisa').AsFloat;
      Qnt.Value:=FrBrows.QuBrows.FieldByName('QntSisa').AsFloat;
      Qnt2Tukar.Value:=FrBrows.QuBrows.FieldByName('Qnt2Sisa').AsFloat;
      QntTukar.Value:=FrBrows.QuBrows.FieldByName('QntSisa').AsFloat;
      Nosat.Items.Clear;
      Nosat.Items.Add('Pilih Satuan');
      Nosat.Items.Add(mSat_1);
      Nosat.Items.Add(mSat_2);
      Nosat.ItemIndex := FieldByName('nosat').AsInteger;
      mUrutPNJ:=FrBrows.QuBrows.FieldByName('Urut').AsInteger;
      if FieldByName('nosat').AsInteger=1 then
      begin
         Qnt.Value:=FieldByName('QntSisa').AsFloat;
         QntTukar.Value:=FieldByName('QntSisa').AsFloat;
         LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value/mIsiBrg)+' '+mSat_2+' ]';
         Label9.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value/mIsiBrg)+' '+mSat_2+' ]';
      end
      else
      if FieldByName('nosat').AsInteger=2 then
      begin
         Qnt.Value:=FieldByName('Qnt2Sisa').AsFloat;
         QntTukar.Value:=FieldByName('Qnt2Sisa').AsFloat;
         LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value*mIsiBrg)+' '+mSat_1+' ]';
         Label9.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value*mIsiBrg)+' '+mSat_1+' ]';
      end;
      Qnt.MaxValue := Qnt.Value;
    end;
  end
  else
    ActiveControl:=KodeBrg;
end;

procedure TFrRJual.IsiDataPNJ;
begin
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select A.NoBukti, A.Tanggal, A.KodeCustSupp, C.Nobukti NoShipping, c.Tanggal TglShipping, G.NoSC, G.TglSC, E.NoBukti NoSPP, E.Tanggal TglSPP, ');
    SQL.Add('           E.NoBukti NoSPB, E.Tanggal TglSPB, 0 Tipe, H.Namacust NAMACUSTSUPP, H.Alamat,');
    SQL.Add('           A.Valas, A.Kurs,A.PPN, A.PoNo,G.TipeBayar, G.Hari, G.KodeSls,F.NoAlamatKirim, I.Nama NamaSLS, ');
    SQl.Add('       K.Nama, K.Alamat AlamatKirim, K.Telp, K.Fax, A.Disc');
    SQL.Add('    from dbInvoicePL A');
    SQL.Add('         Left Outer join (Select x.NoBukti, x.NoSPB');
    SQL.Add('                          From dbInvoicePLDet x');
    SQL.Add('                          Group by x.NoBukti, x.NoSPB) B on B.NoBukti=A.NoBukti');
    SQL.Add('         left outer join dbSPB C on C.NoBukti=B.NoSPB');
    SQL.Add('         Left Outer join (Select x.NoBukti, x.NoSPP');
    SQL.Add('                          From dbSPBDet x');
    SQL.Add('                          Group by x.NoBukti, x.NoSPP) D on D.NoBukti=C.NoBukti');
    SQL.Add('         left outer join dbSPP E on E.NoBukti=D.NoSPP');
    SQL.Add('         Left Outer join (Select x.NoBukti, x.NoSO, y.NoAlamatKirim');
    SQL.Add('                          From dbSPPDet x');
    SQL.Add('                               Left Outer join dbSPP y on y.nobukti=x.nobukti');
    SQL.Add('                          Group by x.NoBukti, x.NoSO, y.NoAlamatKirim) F on F.NoBukti=E.NoBukti');
    SQL.Add('         left Outer join (Select x.Nobukti Nosc, x.Tanggal TglSc, x.KODESLS, x.TipeBayar, x.hari');
    SQL.Add('                          From dbSO x) G on G.NoSc=F.NoSo');
    SQL.Add('         left Outer join vwBrowsCustomer H on H.KODECUST=A.KodeCustSupp and H.Sales=G.KODESLS');
    SQL.Add('         left Outer join DBKaryawan I on I.KeyNik=G.KODESLS');
    SQL.Add('         left Outer join DBAlamatCust K on K.KODECUSTSUPP=A.KodeCustSupp and K.Nomor=F.NoAlamatKirim');
    SQL.Add('where A.NoBukti='+QuotedStr(NoPNJ.Text));
    Open;
    Supp.Text:=FieldByName('KodeCustSupp').AsString;
    LNamaCustSupp.Caption:=FieldByName('NamaCustSupp').AsString;
    LAlamatCustSupp.Caption:=FieldByName('Alamat').AsString;
    KodeVls.Text := FieldByname('valas').AsString;
    Kurs.AsFloat := FieldByname('kurs').AsFloat;
    PPN.ItemIndex := FieldByname('PPn').AsInteger;
    NOSC.Text:=FieldByName('NOSC').AsString;
    TglSC.Date:=FieldByName('TglSC').AsDateTime;
    NoShip.Text:=FieldByName('NOShipping').AsString;
    TglShip.Date:=FieldByName('TglShipping').AsDateTime;
    NOSPP.Text:=FieldByName('NOSPP').AsString;
    TglSPP.Date:=FieldByName('TglSPP').AsDateTime;
    NOSPB.Text:=FieldByName('NOSPB').AsString;
    TglSPB.Date:=FieldByName('TglSPB').AsDateTime;
    Tipe.ItemIndex := FieldByname('Tipe').AsInteger;
    TipeBayar.ItemIndex := FieldByname('TipeBayar').AsInteger;
    Hari.Value := FieldByname('Hari').Value;
    KodeSls.Text:=FieldByname('kodeSLS').AsString;
    LNamaSls.Caption :='[ '+FieldByname('NamaSls').AsString+' ]';
    PoNo.Text := FieldByname('PONo').AsString;
    NoAlamatKirim.Text := IntToStr(FieldByname('NoAlamatKirim').AsInteger);
    LAlamatKirim.Caption:=FieldByname('Nama').AsString+chr(13)+FieldByname('ALamatKirim').AsString;
    DiskonP.Value :=FieldByname('DISC').Value;
  end;
end;

procedure TFrRJual.TampilIsiPNJ;
begin
  KodeBrows:=8005;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=NoPNJ.Text;
  FrBrows.JnsPakai := xFlagmenu;
  FrBrows.NoKira := Supp.Text;
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.FieldByName('NoBukti').AsString<>'') then
  begin
    NoPNJ.Text:=FrBrows.QuBrows.FieldByName('NoBukti').AsString;
    TglInvoice.Date :=FrBrows.QuBrows.FieldByName('Tanggal').AsDateTime;
    IsiDataPNJ;
  end
  else ActiveControl:=NoPNJ;
end;

procedure TFrRJual.TampilIsiSO;
begin

end;

procedure TFrRJual.TampilIsiSPB;
begin
  KodeBrows:=8007;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData := NoSPB.Text;
  FrBrows.NoKira := NoShip.Text;
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.FieldByName('NoBukti').AsString<>'') then
  begin
    if not FrBrows.QuBrows.IsEmpty then
    begin
      NoSPB.Text:= FrBrows.QuBrows.FieldByName('NoBukti').AsString;
      TglSPB.Date := FrBrows.QuBrows.FieldByname('Tanggal').AsDateTime;
    end
    else
    ActiveControl := NoSPB;
  end
  else ActiveControl:= NoSPB;
end;

procedure TFrRJual.TampilIsiGudang;
begin

end;

procedure TFrRJual.TampilTombolDetail(pNilai: Boolean);
begin
 //PanelShow1.Visible:=not pNilai;
  //PanelShow2.Visible:=not pNilai;
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  //Panel3.Enabled:=pNilai;
end;

procedure TFrRJual.UpdatedbBeli;
begin
  if (not QuBeli.IsEmpty) and (mUbahHd=True) then
  begin
    with QuUpdatedbBeli do
    begin
       Close;
       Sql.Clear;
       SQL.Add('Update dbRInvoicePL');
       SQL.Add('Set Tanggal=:0, NoSPB=:1, TglSPB=:2, NoLKP=:3, TglLKP=:4 ');
       SQL.Add('Where NoBukti='+QuotedStr(NoBukti.Text));
       Prepared;
       Parameters[0].Value := Tanggal.Date;
       Parameters[1].Value := NoSPB.Text;
       if TglSPB.Text='  /  /    ' then
          Parameters[2].Value := null
       else
          Parameters[2].Value := TglSPB.Date;
       Parameters[3].Value := NoLKP.Text;
       if TGLLKP.Text='  /  /    ' then
          Parameters[4].Value := null
       else
          Parameters[4].Value := TGLLKP.Date;
       try
         ExecSQL;
       except
       end;
       mUbahHd:=False; mUbahHdDet:=False;
    end;
    TampilData(NoBukti.Text);
  end;
end;

Procedure TFrRJual.HitungRincian;
begin
  DiskonP.Value:=QuBeliDisc.AsFloat;
  DiskonRp.Value:=(dxDBGrid1SUBTOTAL.SummaryFooterValue*QuBeliDISC.Value)/100;
  DPP.Value:=QuBeliTotalDPP.AsFloat;
  Pajak.Value:=QuBeliTotalPPn.AsFloat;
  GrandTotal.Value:=QuBeliTotalNetto.AsFloat;
end;

procedure TFrRJual.TampilData(No_Bukti:String);
begin
  QuBeli.Close;
  QuBeli.SQL.Strings[2]:='select @NoBukti='+QuotedStr(No_Bukti)+', @Flagmenu='+IntToStr(xFlagmenu)+';';
  QuBeli.Open;
  NoPNJ.Enabled:=QuBeli.IsEmpty;
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

procedure TFrRJual.IsiNoBuktiBaru;
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

Function TFrRJual.CheckFormMaster:boolean;
begin

  Result := (NOPNJ.Text<>'') or (NoSPB.Text<>'')
end;

procedure TFrRJual.ClearPanelDetail;
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
   QntTukar.Value:=0;
   Qnt.MaxValue :=0;
   NoSPB.Text := '';
   TglSPB.Text:='  /  /    ';
end;

procedure TFrRJual.RefreshAll;
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

procedure TFrRJual.UpdateDataBeli(Choice:Char;Kodet:String);
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
      Parameters[18].Value:=QuBeliURUT.AsInteger;
    end
    else
    begin
      Parameters[2].Value := NoBukti.Text;
      Parameters[3].Value := NoUrut.Text;
      Parameters[4].Value := Tanggal.Date;
      Parameters[5].Value := NoPNJ.Text;
      Parameters[6].Value := TglInvoice.Date;
      Parameters[7].Value := Tipe.ItemIndex;
      Parameters[8].Value := Supp.Text;
      Parameters[9].Value := KodeVls.Text;
      Parameters[10].Value:= Kurs.AsFloat;
      Parameters[11].Value:= PPN.ItemIndex;
      Parameters[12].Value:= NOSC.Text;
      Parameters[13].Value:= TglSC.Date;
      Parameters[14].Value:= NOSPP.Text;
      Parameters[15].Value:= TglSPP.Date;
      Parameters[16].Value:= NoSPB.Text;
      Parameters[17].Value:= TglSPB.Date;
      Parameters[18].Value:= mUrut;
      Parameters[19].Value:= KodeBrg.Text;
      Parameters[20].Value:= NamabrgKom;
      Parameters[21].Value:= Harga.AsFloat;
      if Nosat.Visible=True then
      begin
        if Nosat.ItemIndex=1 then
        begin
          Parameters[22].Value:=Qnt.AsFloat;
          Parameters[23].Value:=Qnt.AsFloat/mIsiBrg;
          Parameters[31].Value:=QntTukar.AsFloat;
          Parameters[32].Value:=QntTukar.AsFloat/mIsiBrg;
        end
        else if Nosat.ItemIndex=2 then
        begin
          Parameters[22].Value:=Qnt.AsFloat*mIsiBrg;
          Parameters[23].Value:=Qnt.AsFloat;
          Parameters[31].Value:=QntTukar.AsFloat*mIsiBrg;
          Parameters[32].Value:=QntTukar.AsFloat;
        end;
      end else
      begin
        Parameters[22].Value:=Qnt1.AsFloat;
        Parameters[23].Value:=Qnt2.AsFloat;
        Parameters[31].Value:=QntTukar.AsFloat*mIsiBrg;
        Parameters[32].Value:=QntTukar.AsFloat;
      end;
      Parameters[24].Value:=mSat_1;
      Parameters[25].Value:=mSat_2;
      Parameters[26].Value:=mIsiBrg;
      Parameters[27].Value:=Nosat.ItemIndex;
      Parameters[28].Value:=mUrutPNJ;
      Parameters[29].Value:=Trim(Ket.Text);
      Parameters[30].Value:=IDUser;
      Parameters[33].Value:=NetW.Value;
      Parameters[34].Value:=GrossW.Value;
      Parameters[35].Value:=Mesurement.Value;
      Parameters[36].Value:=NetWTukar.Value;
      Parameters[37].Value:=GrossWTukar.Value;
      Parameters[38].Value:=MesureTukar.Value;
    end;
    Parameters[39].Value := xFlagmenu;
    Parameters[40].Value:=NOLKP.Text;
    if TGLLKP.Text='  /  /    ' then
      Parameters[41].Value := null
   else
      Parameters[41].Value := TGLLKP.Date;
    Parameters[42].Value := DiskonP.Value;
    Parameters[43].Value := DiskonRp.Value;
    Parameters[44].Value := DiscP.Value;
    Parameters[45].Value := DiscRp.Value;
    Parameters[46].Value := DiscRp.Value;
    try
      ExecProc;
      UpdateUrutTransaksi('DBRInvoicePLDet',NoBukti.Text);
      if Choice='I' then
      begin
        TampilData(NoBukti.Text);
        QuBeli.Locate('KodeBrg',KodeBrg.Text,[LOP,LOC]);
        LoggingData(IDUser,'I','RPJ', NOBUKTI.Text,
          'Kode Brg = '+KodeBrg.Text);
      end else if Choice='U' then
      begin
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
        TampilData(NoBukti.Text);
        QuBeli.Locate('Urut',mUrut,[]);
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

Procedure TFrRJual.AmBilDataBeli;
begin
   if not QuBeli.IsEmpty then
   begin
      NoBukti.Text:=QuBeliNOBUKTI.AsString;
      Tanggal.Date:=QuBeliTanggal.AsDateTime;
      Supp.Text:=QuBeliKODECUSTSUPP.AsString;
      LNamaCustSupp.Caption:=QuBeliNamaCustSupp.AsString;
      LAlamatCustSupp.Caption:=QuBeliAlamat.AsString+chr(13)+QuBeliKota.AsString;
      NoAlamatKirim.Text := IntToStr(QuBeliNoAlamatKirim.AsInteger);
      LAlamatKirim.Caption := QuBeliNama.AsString+#13+QuBeliAlamat_1.AsString;
      DiskonP.Value := QuBeliDISC.Value;
      KodeVls.Text := QuBeliKODEVLS.AsString;
      Kurs.AsFloat := QuBeliKURS.AsFloat;
      PPN.ItemIndex := QuBeliPPN.AsInteger;

      KodeSls.Text := QuBeliKodeSLS.AsString;
      LNamaSls.Caption:='[ '+QuBeliNamaSLS.AsString+' ]';

      PoNo.Text := QuBeliNoPO.AsString;

      NoShip.Text := QuBeliNOSPB.AsString;
      TglShip.Date := QuBeliTGLSPB.AsDateTime;

      NoPNJ.Text:=QuBeliNoInvoice.AsString;
      TglInvoice.Date := QuBeliTglInvoice.AsDateTime;
      Tipe.ItemIndex := QuBeliTipe.AsInteger;

      NoSPB.Text:=QuBeliNOSPB.AsString;
      TglSPB.Date := QuBeliTGLSPB.AsDateTime;

      NOSPP.Text:=QuBeliNoSPP.AsString;
      TglSPP.Date := QuBeliTglSPP.AsDateTime;

      NOSC.Text := QuBeliNOSO.AsString;
      TglSC.Date := QuBeliTGLSO.AsDateTime;


      Tipe.ItemIndex := QuBeliTipe.AsInteger;

      NOLKP.Text := QuBeliNoLKP.AsString;
      TGLLKP.Date := QuBeliTglLKP.AsDateTime;
   end;
end;

// PROCEDURE DAN FUNCTION MILIK DELPHI

procedure TFrRJual.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if mExit=true then
  begin
     if FrMainRJual.cxGrid1.ActiveLevel.Index=0 then
     begin
       BM := FrMainRJual.QuMasterBP.GetBookmark;
       FrMainRJual.ToolButton10.Click;
       if FrMainRJual.QuMasterBP.BookmarkValid(BM) then
        begin
          try
             FrMainRJual.QuMasterBP.GotoBookmark(BM);
          finally
             FrMainRJual.QuMasterBP.FreeBookmark(BM);
          end
        end else
        begin
          FrMainRJual.QuMasterBP.FreeBookmark(BM);
          FrMainRJual.QuMasterBP.Last;
        end;
     end
     else
     begin
       BM := FrMainRJual.QuMaster.GetBookmark;
       FrMainRJual.ToolButton10.Click;
       if FrMainRJual.QuMaster.BookmarkValid(BM) then
        begin
          try
             FrMainRJual.QuMaster.GotoBookmark(BM);
          finally
             FrMainRJual.QuMaster.FreeBookmark(BM);
          end
        end else
        begin
          FrMainRJual.QuMaster.FreeBookmark(BM);
          FrMainRJual.QuMaster.Last;
        end;
     end;

     Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
     Action:=cafree;
  end
  else
  begin
     Action:=caNone;
  end;
end;

procedure TFrRJual.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then SendMessage(Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrRJual.FormShow(Sender: TObject);
begin
  RefreshAll;
  xModalKoreksi:=FrMainRJual.ModalKoreksi;
  xFlagmenu := FrMainRJual.mMainRInvoicePL_KodeForm;
  If xModalKoreksi = False then
  begin
    IsiNoBuktiBaru;
    TampilData(NoBukti.Text);
    NoUrut.Enabled:=True;
    ActiveControl:=NoUrut;
  end
  else
  Begin
    NOBUKTI.Text:=gTempNoBukti;
    //NoUrut.Text:=FrMainRBP.QuMasterBPNoUrut.AsString;
    Daftar_Nomor(TipeTrans,NoUrut.Text,NoBukti.Text,1);
    TampilData(NoBukti.Text);
    AmBilDataBeli;
    NoUrut.Text:=QuBeliNOURUT.AsString;
    NoUrut.Enabled:=False;
    Tanggal.Enabled:=CekPeriode(IDUser,Tanggal.Date);
    if Tanggal.CanFocus then
      ActiveControl:=Tanggal
    else ActiveControl:=dxDBGrid1;
  end;
end;

procedure TFrRJual.FormCreate(Sender: TObject);
begin
  TipeTrans:='RPJ';
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

procedure TFrRJual.KoreksiBtnClick(Sender: TObject);
begin
  if CheckFormMaster then
  begin
    mValid:=false;
    Model:='koreksi';
    // data yang di update
    if QuBeli.IsEmpty=false then
    begin
      TampilTombolDetail(True);
      mUrut:=QuBeliURUT.AsInteger;
      mUrutPnj:=QuBeliUrutInvoice.Value;
      KodeBrg.Text:=QuBeliKODEBRG.AsString;
      KodeBrg.Enabled:=False;
      LNamaBrg.Caption:='[ '+QuBeliNamaBrg.AsString+' ]';
      LSatuan2.Caption:='[ '+QuBeliSat_2.AsString+' ]';
      mSat_2:=QuBeliSat_2.AsString;
      LSatuan1.Caption:='[ '+QuBeliSat_1.AsString+' ]';
      mSat_1:=QuBeliSat_1.AsString;
      mIsiBrg:=QuBeliIsi.AsFloat;
      Qnt2.Value:=QuBeliQnt2.AsFloat;
      Qnt1.Value:=QuBeliQnt.AsFloat;
      QntTukar.Value:=QuBeliQntTukar.Value;
      Qnt2Tukar.Value:=QuBeliQnt2Tukar.Value;
      harga.value := QuBeliHARGA.Value;
      Nosat.Items.Clear;
      Nosat.Items.Add('Pilih Satuan');
      Nosat.Items.Add(mSat_1);
      Nosat.Items.Add(mSat_2);
      Nosat.ItemIndex := QuBeliNosat.AsInteger;
      if QuBeliNosat.AsInteger=1 then
      begin
         Qnt.Value:=Qubeli.FieldByName('Qnt').AsFloat;
         QntTukar.Value:=Qubeli.FieldByName('QntTukar').AsFloat;
         LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value/mIsiBrg)+' '+mSat_2+' ]';
         Label9.Caption := '[ '+Formatfloat(',0.##',Qnttukar.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnttukar.Value/mIsiBrg)+' '+mSat_2+' ]';
      end
      else
      if QuBeliNosat.AsInteger=2 then
      begin
         Qnt.Value:=Qubeli.FieldByName('Qnt2').AsFloat;
         QntTukar.Value:=Qubeli.FieldByName('Qnt2Tukar').AsFloat;
         LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value*mIsiBrg)+' '+mSat_1+' ]';
         Label9.Caption := '[ '+Formatfloat(',0.##',QntTukar.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',QntTukar.Value*mIsiBrg)+' '+mSat_1+' ]';
      end;
      Ket.Text:=QuBeliKeterangan.AsString;
      NetW.AsFloat := QuBeliNetW.AsFloat;
      GrossW.AsFloat := QuBeliGrossW.AsFloat;
      NetWTukar.AsFloat := QuBeliNetWTukar.AsFloat;
      GrossWTukar.AsFloat := QuBeliGrossWTukar.AsFloat;
      Mesurement.Value := QuBeliMesurement.Value;
      MesureTukar.Value := QuBeliMesurementTukar.Value;
      DiscP.Value :=  QuBeliDiscP1.Value;
      DiscRp.Value :=  QuBeliDiscRp1.Value;
      NoSPB.Text := QuBeliNOSPB.AsString;
      TglSPB.Date := QuBeliTGLSPB.AsDateTime;
      if KodeBrg.Text<>'' then
      begin
        DataBersyarat('select cast(nFix as int) Konversi from dbBarang where KodeBrg=:0',[KodeBrg.Text],DM.QuCari);
        TampilanQntSatuan(DM.QuCari.FieldByName('Konversi').AsInteger);
      end;
      if Qnt.CanFocus then
         ActiveControl:=Qnt
      else if Qnt2.CanFocus then
         ActiveControl:=Qnt2
    end
    else
    begin
      MsgKoreksiDataKosong;
      ActiveControl:=dxDBGrid1;
    end;
  end;
end;

procedure TFrRJual.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,IDUser);
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

procedure TFrRJual.HapusBtnClick(Sender: TObject);
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

procedure TFrRJual.wwDBGrid1Enter(Sender: TObject);
begin
  FrRJual.KeyPreview:=False;
end;

procedure TFrRJual.wwDBGrid1Exit(Sender: TObject);
begin
  FrRJual.KeyPreview:=True;
end;

procedure TFrRJual.NoUrutKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_Return then
  begin
    If Length(NoUrut.Text)<5 then
    begin
      MessageDlg('Nomor urut kurang '+InttoStr(5-Length(NoUrut.Text))+' digit.',mtWarning,[MbOk],0);
      ActiveControl := NoUrut;
    end
    else
    begin
      TampilData(NoBukti.Text);
      if not QuBeli.IsEmpty then
      Begin
         AmBilDataBeli;
      end
    end;
  end
  else if Key=Vk_Escape then
  begin
    mExit := True;
    Close;
  end;
end;

procedure TFrRJual.BitBtn1Click(Sender: TObject);
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
            ActiveControl:=NoSPB;
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

procedure TFrRJual.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
  ClearPanelDetail;
end;

procedure TFrRJual.FormDestroy(Sender: TObject);
begin
  FrRJual:=nil;
end;

procedure TFrRJual.dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
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

procedure TFrRJual.NoUrutChange(Sender: TObject);
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

procedure TFrRJual.KodeBrgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrRJual.NoUrutEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrRJual.NOPNJExit(Sender: TObject);
begin
  if mValid Then
  begin
    if DataBersyarat(' select a.nobukti, a.tanggal, '''' Keterangan, a.kodecustSupp '+
                        ' from dbInvoicePL a '+
                        '      Left Outer join (Select nobukti,Sum(Qnt) Qnt From dbinvoicePLDet x Group by nobukti) b on b.nobukti=a.nobukti '+
                        '      Left Outer join (Select noinvoice,Sum(Qnt) Qnt From dbRinvoicePLDet x Group by noinvoice) c on c.noinvoice=a.nobukti '+
                        ' where a.Nobukti=:0 and a.KodecustSupp=:1'+
                        '       and B.Qnt-isnull(c.Qnt,0)>0 and Cast(Case when Case when A.IsOtorisasi1=1 then 1 else 0 end+'+#13+
                        '                      Case when A.IsOtorisasi2=1 then 1 else 0 end+'+#13+
                        '                      Case when A.IsOtorisasi3=1 then 1 else 0 end+'+#13+
                        '                      Case when A.IsOtorisasi4=1 then 1 else 0 end+'+#13+
                        '                      Case when A.IsOtorisasi5=1 then 1 else 0 end=A.MaxOL then 0'+#13+
                        '                else 1'+#13+
                        '           end As Bit)=0 '+
                        ' Order by a.nobukti'
                     ,[NOPNJ.Text,Supp.Text],DM.QUCari)=True then
    begin
      NoPNJ.Text:=DM.QuCari.FieldByName('NoBukti').AsString;
      TglInvoice.Date :=DM.QuCari.FieldByName('Tanggal').AsDateTime;
      IsiDataPNJ;
    end
    else TampilIsiPNJ;
  end;
end;

procedure TFrRJual.KodeBrgExit(Sender: TObject);
begin
  if mValid Then
  begin
    if Length(KodeBrg.Text)=0 then TampilIsiBarang else
    begin
      if DataBersyarat('Select Kodebrg, NamaProduk, Namabrg, QtySisa, Satuan, NetWSisa, GrossWSisa, SAT_1, SAT_2, Nosat, Isi, Urut, QntSisa, Qnt2Sisa, Harga, NamaBrgKom '+
                         'from vwOutInvoicePL_RInvoicePL '+
                         'where nobukti=:0 and Kodebrg=:1 and NoSPB=:2 '+
                         'Order by urut',
      [NOPNJ.Text,KodeBrg.Text, NoSPB.text], DM.QuCari)=True then
      begin
        with DM.QuCari do
        begin
          KodeBrg.Text:=FieldByName('KodeBrg').AsString;
          LNamaBrg.Caption:='[ '+FieldByName('NamaBrg').AsString+' ]';
          NamabrgKom := FieldByName('NamaBrgkom').AsString;
          mharga :=FieldByName('Harga').AsFloat;
          mUrutPNJ:=FieldByName('Urut').AsInteger;
          mUrutSO:=FieldByName('UrutSO').AsInteger;
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
      DataBersyarat('select cast(nFix as int) Konversi from dbBarang where KodeBrg=:0',[KodeBrg.Text],DM.QuCari);
      TampilanQntSatuan(DM.QuCari.FieldByName('Konversi').AsInteger);
      if Qnt.CanFocus then
        Qnt.SetFocus;
      if Qnt2.CanFocus then
        Qnt2.SetFocus;
    end;
  end;
end;

procedure TFrRJual.TambahBtnClick(Sender: TObject);
begin
  if CheckFormMaster then
  Begin
    model:='write';
    {TampilTombolDetail(True);
    ClearPanelDetail;
    KodeBrg.Enabled:=True;
    ActiveControl:=NoSPB;}
    Application.CreateForm(TFrRInvoicePLProsesTransaksi,FrRInvoicePLProsesTransaksi);
    FrRInvoicePLProsesTransaksi.mNOSO_SJProses:=NOPNJ.Text;
    FrRInvoicePLProsesTransaksi.NoBukti := NoBukti.Text;
    FrRInvoicePLProsesTransaksi.NoUrut := NoUrut.Text;
    FrRInvoicePLProsesTransaksi.Tanggal := Tanggal.Date;
    FrRInvoicePLProsesTransaksi.ShowModal;
    ActiveControl := dxDBGrid1;
    TampilData(NoBukti.Text);
  end;
end;

procedure TFrRJual.TanggalKeyDown(Sender: TObject; var Key: Word;
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
    Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,IDUser);
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

procedure TFrRJual.TanggalChange(Sender: TObject);
begin
  if mValid then
  begin
    mUbahHd:=True;
  end;
end;

procedure TFrRJual.TanggalExit(Sender: TObject);
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

procedure TFrRJual.Qnt2Change(Sender: TObject);
begin
  if mValid then
  begin
    Qnt1.Value:=Qnt2.Value*mIsiBrg;
  end;
end;

procedure TFrRJual.SuppEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrRJual.SuppExit(Sender: TObject);
begin
  if (mValid=True) then
  begin
    if DataBersyarat(' Select A.KodeCustSupp, A.NamaCustSupp, A.Alamat, A.Kota, A.Fax from vwBrowsCust A '+
                    ' Where A.kodecustsupp=:0 '+
                    ' order by A.KodeCustSupp',[Supp.text],DM.Qucari) then
    begin
      Supp.Text:=DM.Qucari.FieldByName('KodeCustSupp').AsString;
      LNamaCustSupp.Caption:=DM.Qucari.FieldByName('NamaCustSupp').AsString;
      LAlamatCustSupp.Caption:=DM.Qucari.FieldByName('Alamat').AsString+chr(13)+DM.Qucari.FieldByName('Kota').AsString;
    end
    else
      TampilIsiSupplier;
  end
  else
     mValid := False;
end;

procedure TFrRJual.NosatChange(Sender: TObject);
var xSat, xSatuan : string;
    xQnt1,xHarga : Real;
begin
  if (mValid=True) then
  begin
    CariSatuan(KodeBrg.Text,'',NoSat.ItemIndex,xHarga,misibrg,xSat,xSatuan,xStatus);
    if Nosat.ItemIndex=1 then
    begin
      LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value/mIsiBrg)+' '+mSat_2+' ]';
      Label9.Caption := '[ '+Formatfloat(',0.##',QntTukar.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',QntTukar.Value/mIsiBrg)+' '+mSat_2+' ]';
    end
    else
    if Nosat.ItemIndex=2 then
    begin
      LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value*mIsiBrg)+' '+mSat_1+' ]';
      Label9.Caption := '[ '+Formatfloat(',0.##',QntTukar.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',QntTukar.Value*mIsiBrg)+' '+mSat_1+' ]';
    end;
    if not xStatus then
    begin
      ShowMessage('Silahkan pilih satuan');
      ActiveControl:=NoSat;
    end;
  end;
end;

procedure TFrRJual.NosatEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrRJual.CetakClick(Sender: TObject);
begin
 frxDBCetak.DataSet := Qureport;
  with Qureport do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Exec CetakRPenjualanInvoice '+QuotedStr(Nobukti.text));
    Open;
  end;

  frxDBCetak.Close;
  frxDBCetak.Open;
  qureport.Open;
  frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Nota\NotaRPJ.fr3');
  frxReport1.ShowReport;

end;

procedure TFrRJual.SpeedButton8Click(Sender: TObject);
begin
  qureport.Close;
  qureport.SQL.Strings[2]:='select @NoBukti='+QuotedStr(NoBukti.Text );
  //qureport.SQL.SaveToFile('c:\text.txt')  ;
  qureport.Open;

  frxDBCetak.Close;
  frxDBCetak.Open;
  frxReport1.LoadFromFile(currDir+'Nota\NotaRPJ.fr3');
  frxReport1.DesignReport;
end;

procedure TFrRJual.KetEnter(Sender: TObject);
begin
  FrRJual.KeyPreview:=False;
end;

procedure TFrRJual.KetExit(Sender: TObject);
begin
  FrRJual.KeyPreview:=True;
end;




procedure TFrRJual.NoUrutExit(Sender: TObject);
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
    If Not Daftar_Nomor(TipeTrans,NoUrut.Text, NOBUKTI.Text,isMax) then
    begin
      MessageDlg('Nomor : '+NOBUKTI.Text+' telah digunakan oleh '+MyUser+'.',mtWarning,[MbOk],0);
      ActiveControl := NoUrut;
    end;
  end;
end;

procedure TFrRJual.NoSPBExit(Sender: TObject);
begin
  if mValid Then
  begin
    if DataBersyarat('select nobukti, tanggal from dbSPB where nobukti='+QuotedStr(NOShip.Text)+' and nobukti like :0 '+
                     'Order by nobukti',[NOSPB.Text],DM.QUCari)=True then
    begin
      NoSPB.Text:=DM.QuCari.FieldByName('NoBukti').AsString;
      TglSPB.Date := DM.QuCari.FieldByName('Tanggal').AsDateTime;
    end
    else TampilIsiSPB;
  end;
end;

procedure TFrRJual.QntTukarEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrRJual.NoSPBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    ClearPanelDetail;
    SpeedButton1.Click;
  end;
end;

procedure TFrRJual.QntKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=vk_Escape then
  begin
    ClearPanelDetail;
    ActiveControl := NoSPB;
  end;
end;

function TFrRJual.prosesdiskon(Sender:TObject): real;
var xPrice, xDiscP1: Real;
begin
   xPrice:=Harga.AsFloat;
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
   Result:=Harga.AsFloat-xPrice;
end;

procedure TFrRJual.DiscPExit(Sender: TObject);
begin
  if Sender=DiscRp then
    DiskonTotal:=ProsesDiskon(Sender)
  else if Sender=DiscP then
  begin
    if Model='write' then DiskonTotal:=ProsesDiskon(Sender)
    else if (Model='koreksi') and (QuBeliDiscP1.AsCurrency<>DiscP.AsCurrency) then
      DiskonTotal:=ProsesDiskon(Sender);
  end;
end;

procedure TFrRJual.frxReport1AfterPrintReport(Sender: TObject);
begin
 NilaiCetak('CetakKe','DbDebetNote',NoBukti.Text);
end;

end.
