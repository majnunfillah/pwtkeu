unit FrmRBeli;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, wwdblook, Wwdbigrd, Wwdbgrid,
  DBCtrls, ppBands, ppCtrls, ppDB, jpeg, ppPrnabl, ppClass, ppCache,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, ImgList, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ppVar,variants, dxEditor,
  dxExEdtr, dxEdLib, ppStrtch, ppMemo,Dateutils, ppModule, raCodMod,
  frxClass, frxDMPExport, frxDBSet, frxDesgn, MyGlobal, StrUtils;

type
  TFrRBeli = class(TForm)
    Panel1: TPanel;
    NoUrut: TEdit;
    TANGGAL: TDateEdit;
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
    HandlingFee: TPBNumEdit;
    dxDBGrid1: TdxDBGrid;
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
    NoSuratJalan: TEdit;
    Label17: TLabel;
    keterangan: TEdit;
    Label12: TLabel;
    dxDBGrid1Kodebrg: TdxDBGridMaskColumn;
    dxDBGrid1Qnt: TdxDBGridMaskColumn;
    dxDBGrid1Harga: TdxDBGridMaskColumn;
    dxDBGrid1Satuan: TdxDBGridMaskColumn;
    dxDBGrid1NamaBrg: TdxDBGridColumn;
    frxDataPerusahaan: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    DsgCetakBtn: TSpeedButton;
    Label2: TLabel;
    NoBeli: TEdit;
    frxDesigner1: TfrxDesigner;
    frxReport1: TfrxReport;
    frxDesigner2: TfrxDesigner;
    Label21: TLabel;
    KodeExp: TEdit;
    NamaExp: TRxLabel;
    dxDBGrid1TotalUSD: TdxDBGridMaskColumn;
    dxDBGrid1TotalIDR: TdxDBGridMaskColumn;
    dxDBGrid1Beban: TdxDBGridMaskColumn;
    dxDBGrid1Total: TdxDBGridMaskColumn;
    QuByAngkut: TADOQuery;
    QuBeliNoBukti: TStringField;
    QuBeliNoUrut: TStringField;
    QuBeliTanggal: TDateTimeField;
    QuBeliTglJatuhTempo: TDateTimeField;
    QuBeliKodeSupp: TStringField;
    QuBeliAlamat1: TStringField;
    QuBeliAlamat2: TStringField;
    QuBeliKota: TStringField;
    QuBeliAlamat: TStringField;
    QuBeliNoBeli: TStringField;
    QuBeliKodeGdg: TStringField;
    QuBeliHandling: TBCDField;
    QuBeliKodeExp: TStringField;
    QuBeliNamaExp: TStringField;
    QuBeliKeterangan: TWideStringField;
    QuBeliFakturSupp: TStringField;
    QuBeliKodeVls: TStringField;
    QuBeliNamaVls: TStringField;
    QuBeliKurs: TBCDField;
    QuBeliPPN: TWordField;
    QuBeliTipeBayar: TWordField;
    QuBeliHari: TIntegerField;
    QuBeliTipeDisc: TWordField;
    QuBeliDisc: TFloatField;
    QuBeliDiscRp: TBCDField;
    QuBeliUrut: TSmallintField;
    QuBeliKodeBrg: TStringField;
    QuBeliNamaBrg: TStringField;
    QuBeliSatuan: TStringField;
    QuBeliNoSat: TWordField;
    QuBeliIsi: TBCDField;
    QuBeliQnt: TBCDField;
    QuBeliDiscP: TBCDField;
    QuBeliDiscTot: TBCDField;
    QuBeliUrutPBL: TIntegerField;
    QuBeliBeban: TBCDField;
    QuBeliNoPBL: TStringField;
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
    KodeSupp: TEdit;
    LnamaSupp: TLabel;
    LAlamatSupp: TLabel;
    Shape6: TShape;
    dxDBGrid1Urut: TdxDBGridMaskColumn;
    dxDBGrid1DiscTot: TdxDBGridMaskColumn;
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
    DiskonRp: TPBNumEdit;
    QuBeliTotDiskon: TFloatField;
    QuBeliTotDPP: TFloatField;
    QuBeliTotPPN: TFloatField;
    QuBeliTotNet: TFloatField;
    dxDBGrid1KodeGdg: TdxDBGridColumn;
    Label20: TLabel;
    KodeGdg: TEdit;
    QuBeliNamaCustSupp: TStringField;
    QuBeliNamaGdg: TStringField;
    QuBeliTotal: TBCDField;
    QuBeliDiskon: TFloatField;
    QuBeliTotalDPP: TFloatField;
    QuBeliTotalPPn: TFloatField;
    QuBeliTotalNetto: TFloatField;
    DiscPDet5: TPBNumEdit;
    Label39: TLabel;
    DIscPDet4: TPBNumEdit;
    Label40: TLabel;
    DiscPDet3: TPBNumEdit;
    Label41: TLabel;
    DiscPDet2: TPBNumEdit;
    Label34: TLabel;
    QuBeliDiscp2: TBCDField;
    QuBeliDiscp3: TBCDField;
    QuBeliDiscp4: TBCDField;
    QuBeliDiscp5: TBCDField;
    QuBeliFlagTipe: TWordField;
    QuBeliHarga: TFloatField;
    Label3: TLabel;
    PPH: TPBNumEdit;
    QuBeliTotPPH: TFloatField;
    QuBeliTotalPPh: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure TampilData(No_Bukti:String);
    Procedure Hitung;
    procedure UpdateDataBeli(Choice:Char;Kodet:String);
    procedure FormCreate(Sender: TObject);
    procedure TambahBtnClick(Sender: TObject);
    procedure ClearPanelDetail;
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
    procedure KodeSuppEnter(Sender: TObject);
    procedure KodeSuppExit(Sender: TObject);
    procedure CetakClick(Sender: TObject);
    procedure ValasExit(Sender: TObject);
    procedure ValasEnter(Sender: TObject);
    Function CheckFormMaster:boolean;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure KursExit(Sender: TObject);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure FormDestroy(Sender: TObject);
    function prosesdiskon(Sender:TObject): real;
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DsgCetakBtnClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure NoUrutChange(Sender: TObject);
    procedure KodeExpExit(Sender: TObject);
    procedure KodeGdgExit(Sender: TObject);
    procedure NoBeliExit(Sender: TObject);
    procedure KodeBrgEnter(Sender: TObject);
    procedure DiscPExit(Sender: TObject);
    procedure KodeBrgExit(Sender: TObject);
    procedure TANGGALChange(Sender: TObject);
    procedure DiscPEnter(Sender: TObject);
    procedure KodeGdgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NoUrutExit(Sender: TObject);

  private
    { Private declarations }
    mUrutPBL,pphp: Integer;
    mNamaSatuan: TNamaSatuanBrg;
    mIsiSatuan: TIsiSatuanBrg;
    mUbahHd, mUbahHdDet: Boolean;
    mNilaiDiscEnter: Real;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure TampilIsiSupplier;
    procedure TampilIsiEkspedisi;
    procedure TampilIsiGudang;
    procedure TampilIsiValas;
    procedure IsiSatuan;
    procedure TampilIsiBarang;
    procedure TampilIsiBarangBeli;
    procedure IsiNoBuktiBaru;
    procedure IsiDariNoBeli;
    procedure TampilIsiNoBeli;
    procedure UpdateBiayaAngkut(pNoBukti: String);
    function  CekQntBarang: Boolean;
    procedure TampilHrgTerakhir;
    Procedure AmBilDataBeli;
  public
    { Public declarations }
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel,xmodalkoreksi: Boolean;
    NDiskon,NSubTotal,NDPP,NPPN,NNet,DiskonTotal, xQntMax:real;
    yy,mm,dd : word;
    IsPPN:Integer;
  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrRBeli: TFrRBeli;
  mValid,mExit,mMasterKoreksi: Boolean;
  mUrut,MurutPO,IsTutup,mNosat,mPosisi:Integer;
  TipeTrans,PlusPPN,Nomor,Model:String;
  mBulan,mTahun:string;
  Biaya,IsiBrg,potongan:Real;
  S:array[0..255]of char;
  BM : TBookmark;

implementation
uses FrmBrows,MyProcedure, MyModul, FrmMainRBeli;
{$R *.DFM}

// PROCEDURE DAN FUNCTION PRIBADI

procedure TFrRBeli.TampilTombolDetail(pNilai: Boolean);
begin
  PanelShow1.Enabled:=not pNilai;
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  Panel3.Enabled:=pNilai;
  {TambahBtn.Enabled:=not pNilai;
  KoreksiBtn.Enabled:=not pNilai;
  HapusBtn.Enabled:=not pNilai;
  Cetak.Enabled:=not pNilai;
  DsgCetakBtn.Enabled:=not pNilai; }
end;

procedure TFrRBeli.TampilIsiSupplier;
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
      LnamaSupp.Caption:=fieldbyname('NamaCustSupp').AsString;
      LAlamatSupp.Caption:=fieldbyname('Alamat').AsString;
      //Hari.AsInteger:=FieldByName('DueDate').AsInteger;
    end;
  end else
    ActiveControl:=KodeSupp;
end;

procedure TFrRBeli.TampilIsiEkspedisi;
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

procedure TFrRBeli.TampilIsiGudang;
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

procedure TFrRBeli.TampilIsiValas;
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

procedure TFrRBeli.IsiSatuan;
begin
  LNamaSat.Caption:=IsiSatuanBrg(KodeBrg.Text, mNamaSatuan, mIsiSatuan);
end;

procedure TFrRBeli.TampilIsiBarang;
begin
  KodeBrows:=24201;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:='%'+KodeBrg.Text+'%';
  FrBrows.NoKira1:=KodeGdg.Text;
    FrBrows.ShowModal;
    if FrBrows.ModalResult=mrOk then
    begin
      with FrBrows.QuBrows do
      begin
        KodeBrg.Text:=fieldbyname('KodeBrg').AsString;
        LNamaBrg.Caption:='[ '+fieldbyname('NamaBrg').AsString+' ]';
        Qnt.Value:=1;
        Qnt.MaxValue :=0;
        NoSat.Value:=1;
        mUrutPBL:=0;
        TampilHrgTerakhir;
      end;
      IsiSatuan;
    end
    else
      ActiveControl:=KodeBrg;
end;

procedure TFrRBeli.TampilIsiBarangBeli;
begin
    KodeBrows:=23301;
    Application.CreateForm(TFrBrows, FrBrows);
    FrBrows.IsiData:=KodeBrg.Text;
    FrBrows.NoKira1:=NoBeli.Text;
    FrBrows.ShowModal;
    if FrBrows.ModalResult=mrOk then
    begin
      with FrBrows.QuBrows do
      begin
        KodeBrg.Text:=fieldbyname('KodeBrg').AsString;
        LNamaBrg.Caption:='[ '+fieldbyname('NamaBrg').AsString+' ]';
        Qnt.Value:=Fieldbyname('QntSisa').AsFloat;
        Qnt.MaxValue :=Fieldbyname('QntSisa').AsFloat+0.01;
        NoSat.Value:=FieldByName('NoSat').AsInteger;
        mUrutPBL:=Fieldbyname('Urut').AsInteger;
        Harga.AsFloat:=Fieldbyname('Harga').AsFloat;
        xQntMax :=Fieldbyname('QntTerima').AsFloat;
        pphp:=Fieldbyname('PPhp').AsInteger
      end;
      IsiSatuan;
    end
    else
      ActiveControl:=KodeBrg;
end;

procedure TFrRBeli.TampilHrgTerakhir;
begin

end;

procedure TFrRBeli.IsiNoBuktiBaru;
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

procedure TFrRBeli.IsiDariNoBeli;
begin
  with DM.QuCari do
  begin
     Close;
     SQL.Clear;
     SQL.Add('select A.Handling, A.KodeExp, G.NamaExp, A.Keterangan, A.FakturSupp, ');
     SQL.Add('	A.KodeVls, D.NamaVls, A.Kurs, A.PPN, A.TipeBayar, A.Hari, A.Disc,B.KodeGdg ');
     SQL.Add('From dbBeli A Left Outer Join dbBeliDet B On A.NoBukti=B.NoBukti');
     SQL.Add('Left Outer Join dbCustSupp C on C.KodeCustSupp=A.KodeSupp ');
     SQL.Add('Left Outer join dbValas D on D.KodeVls=A.KodeVls ');
     SQL.Add('Left Outer Join dbExpedisi G on G.KodeExp=A.KodeExp ');
     SQL.Add('where A.NoBukti='+QuotedStr(NoBeli.Text));
     Open;
     HandlingFee.AsFloat:=FieldByname('Handling').AsFloat;
     KodeExp.Text:=FieldByName('KodeExp').AsString;
     NamaExp.Caption:='[ '+FieldByName('NamaExp').AsString+' ]';
     NoSuratJalan.Text:=fieldbyname('FakturSupp').AsString;
     Valas.Text:=fieldbyname('KodeVls').AsString;
     Kurs.AsFloat:=fieldbyname('Kurs').AsFloat;
     PPN.ItemIndex:=fieldbyname('PPN').AsInteger;
     Hari.AsInteger:=fieldbyname('Hari').AsInteger;
     Diskon.AsFloat:=Fieldbyname('Disc').AsFloat;
     KodeGdg.Text:=Fieldbyname('Kodegdg').AsString;
     KodeExp.Enabled:=FieldByName('KodeExp').AsString<>'';
     HandlingFee.Enabled:=FieldByname('Handling').AsFloat<>0.0;
  end;
end;

procedure TFrRBeli.TampilIsiNoBeli;
begin
  KodeBrows:=23302;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=NoBeli.Text;
  FrBrows.NoKira1:=KodeSupp.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    NoBeli.Text:=FrBrows.QuBrows.FieldbyName('NoBukti').AsString;
    IsiDariNoBeli;
    if Length(NoBeli.Text)=0 then
      ActiveControl:=NoBeli;
  end else
    ActiveControl:=NoBeli;
end;

procedure TFrRBeli.UpdateBiayaAngkut(pNoBukti: String);
begin
  QuByAngkut.Close;
  QuByAngkut.SQL.Strings[2]:='select @NoBukti='+QuotedStr(pNoBukti);
  QuByAngkut.ExecSQL;
end;

Procedure TFrRBeli.Hitung;
begin
  DiskonRp.Value:=QuBeliDiskon.AsFloat;
  DPP.Value:=QuBeliTotDPP.AsFloat;
  Pajak.Value:=QuBeliTotPPN.AsFloat;
  GrandTotal.Value:=QuBeliTotNet.AsFloat;
end;

procedure TFrRBeli.TampilData(No_Bukti:String);
begin
   with QuBeli do
   begin
       Close;
       SQL.Strings[2]:='select @NoBukti='+QuotedStr(No_Bukti);
       Open;
   end;
   KodeSupp.Enabled:=QuBeli.IsEmpty;
   NoBeli.Enabled:=QuBeli.IsEmpty;
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

function TFrRBeli.ProsesDiskon(Sender:TObject): Real;
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
   Result:=Harga.AsFloat-xPrice;   }
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

Function TFrRBeli.CheckFormMaster:boolean;
begin
   if (length(KodeSupp.Text)=0) then
   CheckFormMaster:=false
   else
   CheckFormMaster:=true;
end;

procedure TFrRBeli.UpdatedbBeli;
begin
  if (not QuBeli.IsEmpty) and (mUbahHd=True) then
  begin
    with QuUpdatedbBeli do
    begin
       Close;
       Sql.Clear;
       SQL.Add('Update dbRBeli');
       SQL.Add('Set Tanggal=:0,KodeSupp=:1,Handling=:2,FakturSupp=:3,Keterangan=:4,KodeVls=:5,Kurs=:6,PPN=:7,TipeBayar=:8,Hari=:9,TglJatuhTempo=:10,');
       Sql.Add('Disc=:11, NoBeli=:12, KodeExp=:13, DiscRp=:14 ');
       SQL.Add('Where Nobukti='+QuotedStr(NoBukti.Text));
       Prepared;
       Parameters[0].Value := TANGGAL.Date;
       Parameters[1].Value := KodeSupp.Text;
       Parameters[2].Value := HandlingFee.AsFloat;
       Parameters[3].Value := NoSuratJalan.Text;
       Parameters[4].Value := Keterangan.Text;
       Parameters[5].Value := Valas.Text;
       Parameters[6].Value := Kurs.Value;
       if IsPPN=1 then
       Parameters[7].Value := PPN.ItemIndex+1
       Else if IsPPN=0 then
       Parameters[7].Value := PPN.ItemIndex;
       Parameters[8].Value := TIPE.ItemIndex;
       Parameters[9].Value := Hari.AsInteger;
       Parameters[10].Value := TANGGAL.Date+Hari.AsInteger;
       Parameters[11].Value := DiskonP.AsFloat;
       Parameters[12].Value := NoBeli.Text;
       Parameters[13].Value := KodeExp.Text;
       Parameters[14].Value := DiskonRp.Value;
       ExecSQL;
       if mUbahHdDet=True then
       begin
         Close;
         SQL.Clear;
         SQL.Add('exec sp_UpdateRBeli '+QuotedStr(NoBukti.Text));
         ExecSQL;
       end;
       mUbahHd:=False; mUbahHdDet:=False;
    end;
    TampilData(NoBukti.Text);
  end;
end;

procedure TFrRBeli.ClearPanelDetail;
begin
   KodeBrg.Text:='';
   KodeGdg.Text:='';
   Qnt.Value:=1;
   Harga.Value:=0;
   LNamaBrg.Caption:='[ . . . ]';
   LNamaSat.Caption:='[ . . . ]';
   Nosat.AsInteger:=1;
end;

procedure TFrRBeli.RefreshAll;
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
   LnamaSupp.caption:='';
   LAlamatSupp.caption:='';
   KodeSupp.Text:='';
   Valas.Text := 'IDR';
   TIPE.ItemIndex:=0;
   Hari.Value:=0;
   Kurs.Value:=1;
   HandlingFee.Value:=0;
   ClearPanelDetail;
end;

procedure TFrRBeli.UpdateDataBeli(Choice:Char;Kodet:String);
begin
   if Choice='I' then mUrut:=1
     else mUrut:=QuBeliUrut.AsInteger;

   BM:=QuBeli.GetBookmark;
   With Sp_Beli do
   begin
       Parameters.Refresh;
       Parameters[1].Value:=Choice;
       Parameters[2].Value:=NoBukti.Text;
       Parameters[3].Value:=mUrut;
       Parameters[4].Value:=Harga.AsFloat;
       Parameters[5].Value:=DiscP.AsFloat;
       Parameters[6].Value:=DiscRp.AsFloat;
       Parameters[7].Value := DiscPDet2.Value;
       Parameters[8].Value := DiscPDet3.Value;
       Parameters[9].Value := DiscPDet4.Value;
       Parameters[10].Value := DiscPDet5.Value;
       Parameters[11].Value := PphP;
       try
          ExecProc;
          //UpdateBiayaAngkut(NoBukti.Text);
          if Choice='I' then
          begin
            TampilData(NOBUKTI.Text);
            QuBeli.Locate('kodebrg',KodeBrg.Text,[LOP,LOC]);
            LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                    'Kode Brg = '+KodeBrg.Text+' , Qnt = '+Qnt.Text+' '+mNamaSatuan[NoSat.AsInteger]+
                    ' , Harga = '+Harga.Text);
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
              QuBeli.Last;
            end;
            LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                    'Kode Brg = '+KodeBrg.Text+' , Qnt = '+Qnt.Text+' '+mNamaSatuan[NoSat.AsInteger]+
                    ' , Harga = '+Harga.Text);
          end
          Else if Choice='D' then
          begin
            LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                    'Kode Brg = '+QuBeliKodebrg.AsString+' , Qnt = '+QuBeliQnt.DisplayText+' '+QuBeliSatuan.AsString+
                    ' , Harga = '+QuBeliHarga.DisplayText);
            TampilData(NOBUKTI.Text);
          end;
          Hitung;
       except
          If (Choice='I') Or (Choice='U') then
             showmessage('Proses Gagal !, Data Sudah Ada.')
          else If (Choice='D') then
             showmessage('Proses Gagal !, Barang berkaitan dengan transaksi lain.');
       end;
   end;
end;

Procedure TFrRBeli.AmBilDataBeli;
begin
   if not QuBeli.IsEmpty then
   begin
      Tanggal.Date:=QuBeli.fieldbyname('Tanggal').AsDateTime;
      KodeSupp.Text:=QuBeli.fieldbyname('KodeSupp').AsString;
      NoBeli.Text:=QuBeliNoBeli.AsString;
      KodeExp.Text:=QuBeliKodeExp.AsString;
      NamaExp.Caption:='[ '+QuBeliNamaExp.AsString+' ]';
      NoSuratJalan.Text:=QuBeli.fieldbyname('FakturSupp').AsString;
      HandlingFee.AsFloat :=QuBeli.fieldbyname('Handling').AsFloat;
      LnamaSupp.Caption:=QuBeli.fieldbyname('NamaCustSupp').AsString;
      LAlamatSupp.Caption:=QuBeli.fieldbyname('Alamat').AsString;
      Tipe.ItemIndex:=QuBeli.fieldbyname('tipeBayar').AsInteger;
      hari.AsInteger:=QuBeli.fieldbyname('Hari').AsInteger;
      Diskonp.AsCurrency:=QuBeli.fieldbyname('Disc').AsCurrency;
      DiskonRp.AsCurrency:=(QuBeli.fieldbyname('Disc').AsCurrency*dxDBGrid1Total.SummaryFooterValue)*100;
      Keterangan.Text:=QuBeli.fieldbyname('keterangan').AsString;
      if IsPPN=1 then
      PPN.ItemIndex:=QuBeliPPN.AsInteger-1
      Else if Isppn=0 then
         PPN.ItemIndex:=QuBeliPPN.AsInteger;
      Valas.Text:=QuBeli.fieldbyname('KodeVls').AsString;
      Kurs.Value:=QuBeli.fieldbyname('Kurs').AsCurrency;
      KodeGdg.Text:=QuBeli.fieldbyname('KodeGdg').AsString;
      Ltanggal.Caption := 'Jatuh Tempo : '+FormatDateTime('DD/MM/YYYY',QuBeli.fieldbyname('TglJatuhTempo').AsDateTime);
      KodeExp.Enabled:=QuBeli.FieldByName('KodeExp').AsString<>'';
      HandlingFee.Enabled:=QuBeli.FieldByname('Handling').AsFloat<>0.0;
      DiscPDet2.Value:=QuBeliDiscp2.AsFloat;
      DiscPDet3.Value:=QuBeliDiscp3.AsFloat;
      DiscPDet4.Value:=QuBeliDiscp4.AsFloat;
      DiscPDet5.Value:=QuBeliDiscp5.AsFloat;
      pph.Value:= QuBeliTotPPH.AsFloat
   end;
end;

function  TFrRBeli.CekQntBarang: Boolean;
var iQntSisa: Real;
    xResult: Boolean;
begin
  xResult:=True;
  if NoBeli.Text<>'-' then
  begin
    DataBersyarat('Select A.URUT, A.KODEBRG, Br.NAMABRG, A.NOSAT, A.ISI, A.SATUAN, A.QntTerima,'+#13+
                      '       A.QntTerima-Sum(Case when A.NOSAT=1 then Case when B.NOSAT=1 then B.QntReject'+#13+
                      '                                                     when B.NOSAT=2 then B.QntReject*Br.ISI2'+#13+
                      '                                                     else 0'+#13+
                      '                                                end'+#13+
                      '                            when A.NOSAT=2 then Case when B.NOSAT=1 then B.QntReject/Br.ISI2'+#13+
                      '                                                     when B.NOSAT=2 then B.QntReject'+#13+
                      '                                                     else 0'+#13+
                      '                                                end'+#13+
                      '                        else 0'+#13+
                      '                   end)-isnull(D.Qnt,0) Qnt,'+#13+
                      '       A.Qnt1Terima-Sum(Case when A.NOSAT=1 then Case when B.NOSAT=1 then B.Qnt1Reject'+#13+
                      '                                                      when B.NOSAT=2 then B.Qnt1Reject'+#13+
                      '                                                      else 0'+#13+
                      '                                                 end'+#13+
                      '                             when A.NOSAT=2 then Case when B.NOSAT=1 then B.Qnt1Reject'+#13+
                      '                                                      when B.NOSAT=2 then B.Qnt1Reject'+#13+
                      '                                                      else 0'+#13+
                      '                                                 end'+#13+
                      '                        else 0'+#13+
                      '                   end)-isnull(D.Qnt1,0) Qnt1,'+#13+
                      '       A.Qnt2Terima-Sum(Case when A.NOSAT=1 then Case when B.NOSAT=1 then B.Qnt2Reject'+#13+
                      '                                                      when B.NOSAT=2 then B.Qnt2Reject'+#13+
                      '                                                      else 0'+#13+
                      '                                                 end'+#13+
                      '                             when A.NOSAT=2 then Case when B.NOSAT=1 then B.Qnt2Reject'+#13+
                      '                                                      when B.NOSAT=2 then B.Qnt2Reject'+#13+
                      '                                                      else 0'+#13+
                      '                                                 end'+#13+
                      '                        else 0'+#13+
                      '                   end)-isnull(D.Qnt2,0) Qnt2, Br.NFix'+#13+
                      'from (Select urut, kodebrg, QNT, QntTerima,Qnt1Terima, Qnt2Terima, NOSAT, ISI, SATUAN, NOBUKTI'+#13+
                      '      from DBBELIDET'+#13+
                      '      where QntTerima<>0) A'+#13+
                      '      Left Outer join (Select urut, kodebrg, QNT,  QntReject, Qnt1Reject, Qnt2Reject,  NOSAT, ISI, SATUAN, NOBUKTI'+#13+
                      '                       from DBBELIDET'+#13+
                      '                       where Qnt1Reject<>0) B on B.NOBUKTI=A.NOBUKTI and B.KODEBRG=A.KODEBRG'+#13+
                      '      left outer join DBBARANG Br on Br.KODEBRG=A.KODEBRG'+#13+
                      '      Left Outer join (Select x.NOPBL, x.URUTPBL, SUM(x.QNT) Qnt, SUM(x.Qnt1) Qnt1, SUM(x.Qnt2) Qnt2'+#13+
                      '                       from DBRBELIDET x'+#13+
                      '                       group by x.NOPBL, x.URUTPBL) D on D.NOPBL=A.NOBUKTI and D.URUTPBL=A.URUT'+#13+
                      'where D.NoPBL=:0 and D.UrutPBL=:1'+#13+
                      'Group by A.URUT, A.KODEBRG, Br.NAMABRG, A.NOSAT, A.ISI, A.SATUAN, Br.NFix, A.QntTerima, A.Qnt1Terima, A.Qnt2Terima,D.Qnt,D.Qnt1, D.Qnt2'+#13+
                      'Having A.QntTerima-Sum(Case when A.NOSAT=1 then Case when B.NOSAT=1 then B.QntReject'+#13+
                      '                                                     when B.NOSAT=2 then B.QntReject*Br.ISI2'+#13+
                      '                                                     else 0'+#13+
                      '                                                end'+#13+
                      '                            when A.NOSAT=2 then Case when B.NOSAT=1 then B.QntReject/Br.ISI2'+#13+
                      '                                                     when B.NOSAT=2 then B.QntReject'+#13+
                      '                                                     else 0'+#13+
                      '                                                end'+#13+
                      '                        else 0'+#13+
                      '                   end)-isnull(D.Qnt,0)>0'+#13+
                      'order by A.Urut', [NoBeli.Text, mUrutPBL], DM.QuCari);
    if DM.QuCari.IsEmpty then iQntSisa:=0
      else iQntSisa:=DM.QuCari.FieldByName('Qnt').AsFloat;
    if Model='koreksi' then
      iQntSisa:=iQntSisa+QuBeliQnt.AsFloat;

    if Qnt.Value>iQntSisa then
    begin
      xResult:=False;
      ShowMessage('Qnt tidak boleh lebih dari '+FormatFloat(',0.00', iQntSisa)+' !!!');
      ActiveControl:=Qnt;
    end;
  end;
  Result:=xResult;
end;

// PROCEDURE DAN FUNCTION MILIK DELPHI

procedure TFrRBeli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if mExit=true then
  begin
     Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,IDUser);
     FrMainRBeli.ToolButton10.Click;
     Action:=cafree;
  end
  else
  begin
     Action:=caNone;
  end;
end;

procedure TFrRBeli.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0)
   else if key=38 then QuBeli.Prior
   else if key=40 then QuBeli.Next;
end;

procedure TFrRBeli.FormShow(Sender: TObject);
begin
  mValid:=False;
  xModalKoreksi:=FrMainRBeli.ModalKoreksi;
  If xModalKoreksi=False then
  begin
    RefreshAll;
    IsiNoBuktiBaru;
    TampilData(NoBukti.Text);
    NoUrut.Enabled:=True;
  end
  else
  Begin
    NOBUKTI.Text:=FrMainRBeli.QuMasterNoBukti.AsString;
    Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,isMax);
    TampilData(NOBUKTI.Text);
    IsPPN:=QuBeliFlagTipe.AsInteger;
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
    AmBilDataBeli;
    NoUrut.Text:=QuBeliNoUrut.AsString;
    NoUrut.Enabled:=False;
    ActiveControl:=TANGGAL;
  end;

end;

procedure TFrRBeli.FormCreate(Sender: TObject);
begin
  TipeTrans:='RPB';
  LnamaSupp.Caption:='';
  LAlamatSupp.Caption:='';
  Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
  mUbahHd:=False;
  mUbahHdDet:=False;
end;

procedure TFrRBeli.TambahBtnClick(Sender: TObject);
begin
  if CheckFormMaster=true then
  begin
      Model:='write';
      TampilTombolDetail(True);
      KodeBrg.Enabled:=True;
      ActiveControl:=Kodebrg;
  end
  else
  begin
     ShowMessage('Form Master Tidak Lengkap, Silahkan Anda Periksa !');
  end;
end;

procedure TFrRBeli.QntKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_Escape then
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

procedure TFrRBeli.TANGGALKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrRBeli.KoreksiBtnClick(Sender: TObject);
begin
  if CheckFormMaster=true then
  begin
     mValid:=false;
     model:='koreksi';
     // data yang di update
     if QuBeli.IsEmpty=false then
     begin
        TampilTombolDetail(True);
        KodeBrg.Enabled:=False;
        KodeGdg.Text:=QuBeliKodeGdg.AsString;        
        mUrutPBL:= QuBeliUrutPBL.AsInteger;
        KodeBrg.Text:=QuBeliKodeBrg.AsString;
        LNamaBrg.Caption:='[ '+QuBeliNamaBrg.AsString+' ]';
        mUrut:=QuBeliUrut.AsInteger;
        Qnt.AsFloat:=QuBeliQnt.AsFloat;
        NoSat.Value:=QuBeliNoSat.AsInteger;
        Harga.AsFloat:=QuBeliHarga.AsFloat;
        DiscP.Value:=QuBeliDiscP.AsFloat;
        DiscRp.Value:=QuBeliDiscTot.AsFloat;
        mPosisi:=QuBeliUrut.AsInteger;
        IsiSatuan;
        ActiveControl:=Harga;
     end
     else
     begin
        ShowMessage('Tidak ada transaksi yang dikoreksi !');
        ActiveControl:=dxDBGrid1;
     end;
  end else
  begin
     ShowMessage('Form Master Tidak Lengkap, Silahkan Anda Periksa !');
  end;
end;

procedure TFrRBeli.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
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
      FrMainRBeli.GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
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

procedure TFrRBeli.HapusBtnClick(Sender: TObject);
begin
  if CekPeriode(IdUser,TANGGAL.Date)=true then
  begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
       if QuBeli.IsEmpty=true then
       begin
          MsgHapusDataKosong;
       end
       else
       begin
          StrPCopy(S,Format('Anda yakin Kode %s dan Nama %s dihapus ?',
          [QuBeliKodeBrg.asstring, QuBeliNamaBrg.asstring]));
          if (Application.MessageBox(S,'Hapus Data',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
          begin
             UpdateDataBeli('D','BL');
          end;
       end;
    end else
    begin
      MsgPeriodeSudahDikunci;
      ActiveControl:=dxDBGrid1;
    end;
  end
  else
  begin
    MsgTglTidakSesuaiPeriode;
  end;
end;

procedure TFrRBeli.wwDBGrid1Enter(Sender: TObject);
begin
  FrRBeli.KeyPreview:=false;
  CheckFormMaster;
end;

procedure TFrRBeli.wwDBGrid1Exit(Sender: TObject);
begin
  FrRBeli.KeyPreview:=true;
end;

procedure TFrRBeli.wwDBGrid1DblClick(Sender: TObject);
begin
  KoreksiBtn.Click;
end;

procedure TFrRBeli.NoUrutKeyDown(Sender: TObject; var Key: Word;
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
      TampilData(nobukti.Text);
      if not QuBeli.IsEmpty then
      Begin
         AmBilDataBeli;
      end
      else
      Begin
        if FrMainRBeli.ModalKoreksi then
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

procedure TFrRBeli.TANGGALExit(Sender: TObject);
begin
  if mValid then
  begin
     if CekPeriode(IdUser,TANGGAL.Date)=false then
     begin
        MsgTglTidakSesuaiPeriode;
        ActiveControl:=tanggal;
     end;
  end;
end;

procedure TFrRBeli.KodeSuppEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrRBeli.KodeSuppExit(Sender: TObject);
begin
  if mValid Then
  begin
    if length(KodeSupp.Text)=0 then TampilIsiSupplier else
    begin
      if DataBersyarat(' select X.KodeCustSupp, Y.NamaCustSupp, '+
                        ' rtrim(ltrim(isnull(Y.Alamat1,'''')+case when isnull(Y.Alamat2,'''')='''' then '''' else '' ''+Y.Alamat2 end)) Alamat, '+
                        ' Y.Kota '+
                        ' from '+
                        '  (select A.KodeCustSupp from DBPERKCUSTSUPP A, DBPOSTHUTPIUT B '+
                        '   where B.Perkiraan=A.Perkiraan and B.Kode=''HT'' '+
                        '   group by A.KodeCustSupp '+
                        '  ) X, DBCUSTSUPP Y '+
                        ' where X.KodeCustSupp=Y.KodeCustSupp '+
                        ' and (Y.KodeCustSupp like :0 or Y.NamaCustSupp like :1) '+
                        ' order by X.KodeCustSupp',['%'+KOdeSupp.Text+'%','%'+KOdeSupp.Text+'%'],Dm.Qucari)=true then
      begin
        with DM.QuCari do
        begin
           KodeSupp.Text:=fieldbyname('KodeCustSupp').AsString;
           LnamaSupp.Caption:=fieldbyname('NamaCustSupp').AsString;
           LAlamatSupp.Caption:=fieldbyname('Alamat').AsString;
           Hari.AsInteger:=0;
        end;
      end
      else TampilIsiSupplier;
    end;

    Ltanggal.Caption:='Jatuh Tempo : '+FormatDateTime('dd/mm/yyyy',Tanggal.Date+Hari.AsInteger);
  end;
end;

procedure TFrRBeli.CetakClick(Sender: TObject);
var N1, N2, N3 : string;
    T1, T2 : Real;
    Tot : byte;
    H1  : real;
begin
  N3  := FloatToStr(GrandTotal.Value);
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
  H1  := (GrandTotal.Value);
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

  if QuUpdatedbbeli.FieldByName('Nama').AsString='Zona Accessories' then
       frxReport1.LoadFromFile(currDir+'Nota\NOTARBeliZ.fr3') else

  frxReport1.LoadFromFile(currDir+'Nota\NotaRBELI01.fr3');
  frxReport1.ShowReport;
end;

procedure TFrRBeli.ValasExit(Sender: TObject);
begin
  if mValid Then
  begin
     if length(Valas.Text)=0 then TampilIsiValas else
     begin
        if MyFindField('dbValas','kodevls',Valas.Text)=true then
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
end;

procedure TFrRBeli.ValasEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrRBeli.BitBtn1Click(Sender: TObject);
begin
  if CekPeriode(IdUser,TANGGAL.Date) then
  begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      if CekQntBarang then
      begin
        if Model='write' then
        begin
          {if length(Kodebrg.Text)>0 then
          begin
            UpdateDataBeli('I','BL');
            ClearPanelDetail;
            ActiveControl:=KodeBrg;
          end
          else
          begin
            MsgDataTidakBolehKosong('Kode Barang');
            ActiveControl:=KodeBrg;
          end;
          }
        end
        else if model='koreksi' then
        begin
          UpdateDataBeli('U','BL');
          SpeedButton1.Click;
        end
      end;
    end else
    begin
      MsgPeriodeSudahDikunci;
      if Qnt.CanFocus then
        ActiveControl:=Qnt;
    end;
  end
  else
    MsgTglTidakSesuaiPeriode;
end;

procedure TFrRBeli.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  ClearPanelDetail;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
end;

procedure TFrRBeli.KursExit(Sender: TObject);
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

procedure TFrRBeli.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
   QuBeli.Sort:=AFieldName;
end;

procedure TFrRBeli.FormDestroy(Sender: TObject);
begin
  FrRBeli:=nil;
end;

procedure TFrRBeli.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrRBeli.DsgCetakBtnClick(Sender: TObject);
begin
  With QuUpdatedbbeli do
  begin
    close;
    sql.clear;
    sql.add('Select * From vwPerusahaan ');
    Open;
  end;

  if QuUpdatedbbeli.FieldByName('Nama').AsString='Zona Accessories' then
       frxReport1.LoadFromFile(currDir+'Nota\NOTARBeliZ.fr3') else
  frxReport1.LoadFromFile(currDir+'Nota\NotaRBELI01.fr3');
  frxReport1.DesignReport;
end;

procedure TFrRBeli.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
  if comparetext(varname,'Terbilang')=0 then
  value := '# '+TempCode+' #';
end;

procedure TFrRBeli.NoUrutChange(Sender: TObject);
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

procedure TFrRBeli.KodeExpExit(Sender: TObject);
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

procedure TFrRBeli.KodeGdgExit(Sender: TObject);
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

procedure TFrRBeli.NoBeliExit(Sender: TObject);
begin
  if mValid=True then
  begin
    if NoBeli.Text<>'-' then
    begin
      if Length(NoBeli.Text)=0 then TampilIsiNoBeli else
      begin
        if DataBersyarat('select NoBukti from dbBeli A where NoBukti=:0 and Cast(Case when Case when A.IsOtorisasi1=1 then 1 else 0 end+ '+
                      '                   Case when A.IsOtorisasi2=1 then 1 else 0 end+ '+
                      '                   Case when A.IsOtorisasi3=1 then 1 else 0 end+ '+
                      '                   Case when A.IsOtorisasi4=1 then 1 else 0 end+ '+
                      '                   Case when A.IsOtorisasi5=1 then 1 else 0 end=A.MaxOL then 0'+
                      '              else 1'+
                      '            end As Bit)=0 ', [NoBeli.Text], DM.QuCari)=True then
          begin
            NoBeli.Text:=DM.QuCari.FieldByName('NoBukti').AsString;
            IsiDariNoBeli;
            if Length(NoBeli.Text)=0 then
              ActiveControl:=NoBeli;
          end else
            TampilIsiNoBeli;
      end;
    end;
    ActiveControl:=NoSuratJalan;
  end;
end;

procedure TFrRBeli.KodeBrgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrRBeli.DiscPExit(Sender: TObject);
var xNilaiDiscExit: Real;
begin
  if mValid then
  begin
    xNilaiDiscExit:=(Sender as TPBNumEdit).Value;
   // if FormatFloat(',0.0000',mNilaiDiscEnter)<>FormatFloat(',0.0000',xNilaiDiscExit) then
   // begin
      DiscRp.Value:=ProsesDiskon(Sender);
      DiskonTotal:=ProsesDiskon(Sender);
    //end;
  end;
end;

procedure TFrRBeli.KodeBrgExit(Sender: TObject);
begin
  if mValid then
  begin
     TampilIsiBarangBeli;
     Nosat.Enabled:=False;
  end;
end;

procedure TFrRBeli.TANGGALChange(Sender: TObject);
begin
  mUbahHd :=True;
  if Sender=Tipe then
  begin
    if TIPE.ItemIndex = 0 then Hari.Value:=0;
    Ltanggal.Caption:='Jatuh Tempo : '+FormatDateTime('dd/mm/yyyy',TANGGAL.Date+Hari.AsInteger);
  end;

  mUbahHdDet:=True;
end;

procedure TFrRBeli.DiscPEnter(Sender: TObject);
begin
  mValid:=True;
  mNilaiDiscEnter:=(Sender as TPBNumEdit).Value;
end;

procedure TFrRBeli.KodeGdgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    SpeedButton1.Click;
  end;
end;

procedure TFrRBeli.NoUrutExit(Sender: TObject);
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

end.
