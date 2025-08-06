unit FrmBeli;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, wwdblook, Wwdbigrd, Wwdbgrid,
  DBCtrls, ppBands, ppCtrls, ppDB, jpeg, ppPrnabl, ppClass, ppCache,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, ImgList, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ppVar,variants, dxEditor,
  dxExEdtr, dxEdLib, ppStrtch, ppMemo,Dateutils, ppModule, raCodMod,
  frxClass, frxDMPExport, frxDBSet, frxDesgn, MyGlobal, dxmdaset;

type
  TFrBeli = class(TForm)
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
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label14: TLabel;
    FakturSupp: TEdit;
    Label17: TLabel;
    Keterangan: TEdit;
    Label12: TLabel;
    frxDataPerusahaan: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    DsgCetakBtn: TSpeedButton;
    frxDesigner1: TfrxDesigner;
    KodeExp: TEdit;
    Label2: TLabel;
    NamaExp: TRxLabel;
    dxDBGrid1KodeBrg: TdxDBGridMaskColumn;
    dxDBGrid1NamaBrg: TdxDBGridMaskColumn;
    dxDBGrid1Satuan: TdxDBGridMaskColumn;
    dxDBGrid1Qnt: TdxDBGridMaskColumn;
    dxDBGrid1Harga: TdxDBGridMaskColumn;
    dxDBGrid1TotalUSD: TdxDBGridMaskColumn;
    dxDBGrid1TotalIDR: TdxDBGridMaskColumn;
    dxDBGrid1Beban: TdxDBGridMaskColumn;
    dxDBGrid1Total: TdxDBGridMaskColumn;
    QuByAngkut: TADOQuery;
    frxReport1: TfrxReport;
    dxDBGrid1NoPO: TdxDBGridColumn;
    KodeSupp: TEdit;
    LnamaSupp: TLabel;
    LAlamatSupp: TLabel;
    Shape6: TShape;
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
    Label7: TLabel;
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
    Label3: TLabel;
    DiscP2: TPBNumEdit;
    Label9: TLabel;
    DiscRp2: TPBNumEdit;
    dxDBGrid1DiscTot2: TdxDBGridColumn;
    dxDBGrid1HrgNetto: TdxDBGridColumn;
    dxDBGrid1KodeGdg: TdxDBGridColumn;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label8: TLabel;
    NoPO: TEdit;
    Label6: TLabel;
    KodeGdg: TEdit;
    QuBeliNoPO: TStringField;
    QuBeliNoBukti: TStringField;
    QuBeliKodeBrg: TStringField;
    QuBelinamaBrg: TStringField;
    QuBeliQntPO: TBCDField;
    QuBeliSatPO: TStringField;
    QuBeliQntB: TBCDField;
    QuBeliSatBG: TStringField;
    QuBeliKodeGdg: TStringField;
    QuBeliTanggal: TDateTimeField;
    QuBeliKodeSupp: TStringField;
    QuBeliKeterangan: TStringField;
    QuBelikodeVls: TStringField;
    QuBeliKurs: TBCDField;
    QuBeliTipeBayar: TWordField;
    QuBeliDisc: TFloatField;
    QuBeliDiscRP: TBCDField;
    QuBeliTotDiskon: TFloatField;
    QuBeliTotDPP: TFloatField;
    QuBeliTotPPN: TFloatField;
    QuBeliTotNet: TFloatField;
    QuBeliHarga: TBCDField;
    QuBeliHrgNetto: TBCDField;
    QuBeliQnt: TBCDField;
    QuBeliDiscP: TBCDField;
    QuBeliDiscTot: TBCDField;
    QuBelihari: TIntegerField;
    QuBelihandling: TBCDField;
    QuBeliNoUrut: TStringField;
    QuBeliUrut: TIntegerField;
    QuBeliisi: TBCDField;
    QuBelialamat: TStringField;
    QuBeliPPN: TWordField;
    QuBeliIsCetak: TBooleanField;
    QuBeliQsisa: TBCDField;
    QuBeliNosat: TWordField;
    QuBeliFakturSupp: TStringField;
    dxMem: TdxMemData;
    QuBelinamaCustSupp: TStringField;
    QuBeliNosatPO: TWordField;
    QuBelisatSisa: TStringField;
    QuBeliQntSisa: TBCDField;
    QuBeliKodeExp: TStringField;
    QuBeliNamaExp: TStringField;
    QuBeliTolerate: TBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure TampilData(No_PO:String;No_Bukti:String);
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
    Function CheckFormMaster:boolean;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure UpdateValas;
    procedure KursExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

    function prosesdiskon(Sender:TObject): real;
    function prosesdiskonRp(Sender:TObject): real;

    function prosesdiskon2(Sender:TObject): real;
    function prosesdiskonRp2(Sender:TObject): real;    

    procedure KodeGdgExit(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure BPrevClick(Sender: TObject);
    procedure BNextClick(Sender: TObject);
    procedure HariExit(Sender: TObject);
    procedure DsgCetakBtnClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure NoUrutChange(Sender: TObject);
    procedure KodeExpExit(Sender: TObject);
    procedure KodeBrgExit(Sender: TObject);
    procedure KodeBrgEnter(Sender: TObject);
    procedure NoPOEnter(Sender: TObject);
    procedure NoPOExit(Sender: TObject);
    procedure NoPOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TanggalChange(Sender: TObject);
    procedure DiscPExit(Sender: TObject);
    procedure DiscRpExit(Sender: TObject);
    procedure DiscP2Exit(Sender: TObject);
    procedure DiscRp2Exit(Sender: TObject);
    procedure NoSatExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure QntEnter(Sender: TObject);

  private
    { Private declarations }
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
    procedure IsiNoBuktiBaru;
    procedure TampilIsiPO;
    procedure TampilIsiBarangPO;
    procedure IsiHargaBrg;
  public
    { Public declarations }
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel,xmodalkoreksi: Boolean;
    NDiskon,NSubTotal,NDPP,NPPN,NNet,DiskonTotal:real;
    yy,mm,dd : word;
    sishal, tothal : integer ;
    Procedure AmBilDataBeli;

  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrBeli: TFrBeli;
  mValid,mExit,mMasterKoreksi: Boolean;
  mUrut,mUrutPO,IsTutup,mNosat,mPosisi:Integer;
  TipeTrans,PlusPPN,Nomor,Model:String;
  mBulan,mTahun:string;
  Biaya,IsiBrg,potongan:Real;
  S:array[0..255]of char;
  BM : TBookmark;
  mDiskon, mDiskon2 : currency;

implementation
uses FrmBrows,MyProcedure, MyModul, FrmMainBeli;
{$R *.DFM}

// PROCEDURE DAN FUNCTION PRIBADI

procedure TFrBeli.TampilTombolDetail(pNilai: Boolean);
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
  SpeedButton2.Enabled:=not pNilai;
  SpeedButton3.Enabled:=not pNilai;
end;

procedure TFrBeli.TampilIsiSupplier;
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

procedure TFrBeli.TampilIsiGudang;
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

procedure TFrBeli.TampilIsiValas;
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

procedure TFrBeli.IsiSatuan;
begin
  LNamaSat.Caption:=IsiSatuanBrg(KodeBrg.Text, mNamaSatuan, mIsiSatuan);
end;

procedure TFrBeli.TampilIsiBarang;
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

procedure TFrBeli.TampilIsiBarangPO;
begin
  KodeBrows:=23201;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeBrg.Text;
  FrBrows.NoKira1:=NoPO.Text;
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.IsEmpty=False) then
  begin
    with FrBrows.QuBrows do
    begin
      KodeBrg.Text:=FieldByName('KodeBrg').AsString;
      LNamaBrg.Caption:='[ '+FieldByName('NamaBrg').AsString+' ]';
      NoSat.Value:=FieldByName('NoSat').AsInteger;
      Qnt.Value:=fieldbyname('QntSisa').AsFloat;
      Harga.Value:=fieldbyname('Harga').AsFloat;
      DiscP.Value:=FieldByName('DiscP').AsFloat;
      mDiskon:=FieldByName('DiscP').AsFloat;
      DiscRp.Value:=FieldByName('DiscTot').AsFloat;
      mUrutPO:=fieldbyname('UrutPO').AsInteger;
    end;
    IsiSatuan;
  end
   else
    ActiveControl:=KodeBrg;
end;

procedure TFrBeli.TampilIsiEkspedisi;
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

procedure TFrBeli.IsiNoBuktiBaru;
begin
  DecodeDate(Date,YY,MM,DD);
  If DayOfTheMonth(Date)<=DD then
     DD:=DayOfTheMonth(Date);
  TANGGAL.Date := EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),DD);
  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal.Date);
  NoUrut.Text := NomorBukti;
  NOBUKTI.Text := Nomor;
end;

procedure TFrBeli.TampilIsiPO;
begin
  KodeBrows:=23202;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.NoKira1:=KodeSupp.Text;
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.IsEmpty=False) then
  begin
       NoPO.Text:=FrBrows.QuBrows.fieldbyname('NoBukti').AsString;
  end
  else
    ActiveControl:=NoPO;
end;

Procedure TFrBeli.Hitung;
begin
   //DiskonRp.Value := QuBeliTotDiskon.AsFloat;
   //Dpp.Value := QuBeliTotDPP.AsFloat;
   //Pajak.Value := QuBeliTotPPN.AsFloat;
   //GrandTotal.Value := QuBeliTotNet.AsFloat;
end;

procedure TFrBeli.TampilData(No_PO:String;No_Bukti:String);
begin
   QuBeli.Close;
   QuBeli.SQL.Strings[2]:='select @NoPO='+QuotedStr(No_PO)+',@NoBukti='+QuotedStr(No_Bukti);
   QuBeli.Open;
   KodeSupp.Enabled:=QuBeli.IsEmpty;
//   KodeGdg.Enabled:=QuBeli.IsEmpty;
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

function TFrBeli.prosesdiskon(Sender:TObject): real;
var price,disc1,disc2,disc3,disc4:real;
begin
   price:=Harga.AsFloat;
   disc1:=0;disc2:=0;disc3:=0;disc4:=0;
   if price<>0 then
   begin
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

function TFrBeli.prosesdiskonRp(Sender:TObject): real;
var price,disc1,disc2,disc3,disc4:real;
begin
   price:=Harga.AsFloat;
   disc1:=0;disc2:=0;disc3:=0;disc4:=0;
   if price<>0 then
   begin
      if Sender<>DiscRp then
      begin
         if DiscP.AsFloat<>0 then
         begin
            disc4:=price*(DiscP.AsFloat/100);
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

function TFrBeli.prosesdiskon2(Sender:TObject): real;
var price,disc1,disc2,disc3,disc4:real;
begin
   price:=Harga.AsFloat-DiscRp.AsFloat;
   disc1:=0;disc2:=0;disc3:=0;disc4:=0;
   if price<>0 then
   begin
      if Sender<>DiscRp2 then
      begin
         if DiscP2.AsFloat<>0 then
         begin
            disc4:=price*(DiscP2.AsFloat/100);
            DiscRp2.Value:=disc4;
         end else
            DiscRp2.Value:=0;
      end else
      begin
         if DiscRp2.AsFloat<>0 then
         begin
            disc4:=DiscRp2.AsFloat;
            DiscP2.Value:=(DiscRp2.AsFloat/price)*100;
         end else
            DiscP2.Value:=0;
      end;
      price:=price-disc4;
   end;
   Result:=Harga.AsFloat-price;
end;

function TFrBeli.prosesdiskonRp2(Sender:TObject): real;
var price,disc1,disc2,disc3,disc4:real;
begin
   price:=Harga.AsFloat-DiscRp.AsFloat;
   disc1:=0;disc2:=0;disc3:=0;disc4:=0;
   if price<>0 then
   begin
      if Sender<>DiscRp2 then
      begin
         if DiscP2.AsFloat<>0 then
         begin
            disc4:=price*(DiscP2.AsFloat/100);
         end else
            DiscRp2.Value:=0;
      end else
      begin
         if DiscRp2.AsFloat<>0 then
         begin
            disc4:=DiscRp2.AsFloat;
            DiscP2.Value:=(DiscRp2.AsFloat/price)*100;
         end else
            DiscP2.Value:=0;
      end;
      price:=price-disc4;
   end;
   Result:=Harga.AsFloat-price;
end;

Function TFrBeli.CheckFormMaster:boolean;
begin
   if (length(KodeSupp.Text)=0)or(length(Valas.Text)=0) then
   CheckFormMaster:=false
   else
   CheckFormMaster:=true;
end;

procedure TFrBeli.UpdatedbBeli;
begin
  if (not QuBeli.IsEmpty) and (mUbahHd=True) then
  begin
    with QuUpdatedbBeli do
    begin
       Close;
       Sql.Clear;
       SQL.Add('Update dbBeli');
       SQL.Add('Set Tanggal=:0, KodeSupp=:1, Handling=:2, FakturSupp=:3, Keterangan=:4, KodeVls=:5, Kurs=:6, PPN=:7, ');
       SQL.Add('TipeBayar=:8, Hari=:9, TglJatuhTempo=:10, Disc=:11 ');
       SQL.Add('Where NoBukti=:13');
       Prepared;
       Parameters[0].Value := TANGGAL.Date;
       Parameters[1].Value := KodeSupp.Text;
       Parameters[2].Value := Handling.AsFloat;
       Parameters[3].Value := FakturSupp.Text;
       Parameters[4].Value := Keterangan.Text;
       Parameters[5].Value := Valas.Text;
       Parameters[6].Value := Kurs.Value;
       Parameters[7].Value := PPN.ItemIndex;
       Parameters[8].Value := TIPE.ItemIndex;
       Parameters[9].Value := Hari.AsInteger;
       Parameters[10].Value := TANGGAL.Date+Hari.AsInteger;
       Parameters[11].Value := Diskon.AsFloat;
       Parameters[12].Value := NoBukti.Text;

       ExecSQL;
       if mUbahHdDet=True then
       begin
         Close;
         SQL.Clear;
         SQL.Add('exec sp_UpdateBeli '+QuotedStr(NoBukti.Text));
         ExecSQL;
       end;
       mUbahHd:=False; mUbahHdDet:=False;
    end;
    TampilData(NoPO.Text,NoBukti.Text);
  end;
end;

procedure TFrBeli.UpdateValas;
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


procedure TFrBeli.ClearPanelDetail;
begin
   //NoPO.Text:='-';
   KodeBrg.Text:='';
   //KodeGdg.Text:='';
   Qnt.Value:=1;
   NoSat.Value:=1;
   Harga.Value:=0;
   DiscP.Value:=0;
   DiscRp.Value:=0;
   DiscP2.Value:=0;
   DiscRp2.Value:=0;
   mDiskon:=0;
   mDiskon2:=0;
   LNamaBrg.Caption:='[ . . . ]';
   LNamaSat.Caption:='[ . . . ]';
end;

procedure TFrBeli.RefreshAll;
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
   LnamaSupp.Caption:='';
   LAlamatSupp.Caption:='';
   NamaExp.Caption:='[ . . . ]';
   Valas.Text:='IDR';
   Kurs.Value:=1;
   TIPE.ItemIndex:=0;
   Hari.Value:=0;
   ClearPanelDetail;
end;

procedure TFrBeli.IsiHargaBrg;
begin
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select top 1 A.Harga, A.Isi, C.Isi1, C.Isi2, C.Isi3 from dbBeliDet A, dbBeli B, dbBarang C ');
    SQL.Add('where A.NoBukti=B.NoBukti and C.KodeBrg=A.KodeBrg and B.KodeSupp='+QuotedStr(KodeSupp.Text));
    SQL.Add(' and A.KodeBrg='+QuotedStr(KodeBrg.Text)+' --and B.Tanggal<='+QuotedStr(FormatDateTime('MM/dd/yyyy',TANGGAL.Date)));
    SQL.Add('order by B.Tanggal desc, A.NoBukti desc ');
    Open;
  end;
  if not DM.QuCari.IsEmpty then
  begin
    try
      if NoSat.AsInteger=1 then
        Harga.Value:=(DM.QuCari.FieldByName('Harga').AsFloat*DM.QuCari.FieldByName('Isi').AsFloat)/DM.QuCari.FieldByName('Isi1').AsFloat
      else if NoSat.AsInteger=2 then
        Harga.Value:=(DM.QuCari.FieldByName('Harga').AsFloat*DM.QuCari.FieldByName('Isi').AsFloat)/DM.QuCari.FieldByName('Isi2').AsFloat
      else if NoSat.AsInteger=3 then
        Harga.Value:=(DM.QuCari.FieldByName('Harga').AsFloat*DM.QuCari.FieldByName('Isi').AsFloat)/DM.QuCari.FieldByName('Isi3').AsFloat;
    except
      Harga.Value:=DM.QuCari.FieldByName('Harga').AsFloat;
    end;
  end

end;

procedure TFrBeli.UpdateDataBeli(Choice:Char;Kodet:String);
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
       Parameters[7].Value:=KodeGdg.Text;
       Parameters[8].Value:=Handling.AsFloat;
       Parameters[9].Value:=Keterangan.Text;
       Parameters[10].Value:=FakturSupp.Text;
       Parameters[11].Value:=Valas.Text;
       Parameters[12].Value:=Kurs.AsFloat;
       Parameters[13].Value:=PPN.ItemIndex;
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
       Parameters[28].Value:=NoPO.Text;
       Parameters[29].Value:=mUrutPO;
       Parameters[30].Value:=DiscP2.AsFloat;
       Parameters[31].Value:=DiscRp2.AsFloat;
       if Model='write' Then
        Parameters[32].Value:='I'
       else if Model='koreksi' Then
        Parameters[32].Value:='U';
       try
          ExecProc;
          if Handling.Value<>0 then
          begin
            QuUpdatedbbeli.Close;
            QuUpdatedbbeli.SQL.Clear;
            QuUpdatedbbeli.SQL.Add('exec sp_UpdateBeli '+QuotedStr(NoBukti.Text));
            QuUpdatedbbeli.ExecSQL;
          end;
          if Choice='I' then
          begin
            TampilData(NoPO.Text,NOBUKTI.Text);
            QuBeli.Locate('KodeBrg',KodeBrg.Text,[LOP,LOC]);
            LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                    'Kode Brg = '+KodeBrg.Text+' , Qnt = '+Qnt.Text+' '+mNamaSatuan[NoSat.AsInteger]+
                    ' , Harga = '+Harga.Text);
          end else if Choice='U' then
          begin
            TampilData(NoPO.Text,NOBUKTI.Text);
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
                    'Kode Brg = '+QuBeliKodeBrg.AsString+' , Qnt = '+QuBeliQntB.DisplayText+' '+QuBeliSatBG.AsString+
                    ' , Harga = '+QuBeliHarga.DisplayText);
            TampilData(NoPO.Text,NOBUKTI.Text);
          end;
          Hitung;
          QuBeli.Locate('Urut', mUrut, []);
       except
          MsgProsesGagal(Choice);
       end;

   end;
end;

Procedure TFrBeli.AmBilDataBeli;
begin
   if (not QuBeli.IsEmpty)and (xModalKoreksi=True ) then
   begin
      Tanggal.Date:=QuBeli.fieldbyname('Tanggal').AsDateTime;
      KodeSupp.Text:=QuBeli.fieldbyname('KodeSupp').AsString;
      KodeGdg.Text:=QuBeli.fieldbyname('KodeGdg').AsString;
      FakturSupp.Text:=QuBeli.fieldbyname('FakturSupp').AsString;
      Handling.AsFloat :=QuBeli.fieldbyname('Handling').AsFloat;
      KodeExp.Text:=QuBeli.fieldbyname('KodeExp').AsString;
      NamaExp.Caption:='[ '+QuBeliNamaExp.AsString+' ]';
      LnamaSupp.Caption:=QuBeli.fieldbyname('NamaCustSupp').AsString;
      LAlamatSupp.Caption:=QuBeli.fieldbyname('Alamat').AsString;
      Tipe.ItemIndex:=QuBeli.fieldbyname('tipeBayar').AsInteger;
      hari.AsInteger:=QuBeli.fieldbyname('Hari').AsInteger;
      Diskon.AsCurrency:=QuBeli.fieldbyname('Disc').AsCurrency;
      Keterangan.Text:=QuBeli.fieldbyname('keterangan').AsString;
      Ppn.ItemIndex:=QuBeli.fieldbyname('Ppn').AsInteger;
      Valas.Text:=QuBeli.fieldbyname('KodeVls').AsString;
      Kurs.Value:=QuBeli.fieldbyname('Kurs').AsCurrency;
      //Ltanggal.Caption := 'Jatuh Tempo : '+FormatDateTime('DD/MM/YYYY',QuBeli.fieldbyname('TglJatuhTempo').AsDateTime);
   end
   else if xModalKoreksi=False  Then
   Begin
      KodeSupp.Text:=QuBeli.fieldbyname('KodeSupp').AsString;
      FakturSupp.Text:=QuBeli.fieldbyname('FakturSupp').AsString;
      Handling.AsFloat :=QuBeli.fieldbyname('Handling').AsFloat;
      Keterangan.Text:=QuBeli.fieldbyname('keterangan').AsString;
      Tipe.ItemIndex:=QuBeli.fieldbyname('tipeBayar').AsInteger;
      KodeExp.Text:=QuBeli.fieldbyname('KodeExp').AsString;
      NamaExp.Caption:='[ '+QuBeliNamaExp.AsString+' ]';
      LnamaSupp.Caption:=QuBeli.fieldbyname('NamaCustSupp').AsString;
      LAlamatSupp.Caption:=QuBeli.fieldbyname('Alamat').AsString;
      Valas.Text:=QuBeli.fieldbyname('KodeVls').AsString;
      Kurs.Value:=QuBeli.fieldbyname('Kurs').AsCurrency;
      PPN.ItemIndex:=QuBeli.fieldbyname('PPN').AsInteger;
      Tipe.ItemIndex:=QuBeli.fieldbyname('tipeBayar').AsInteger;
      hari.AsInteger:=QuBeli.fieldbyname('Hari').AsInteger;
   end;
end;



// PROCEDURE DAN FUNCTION MILIK DELPHI

procedure TFrBeli.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFrBeli.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrBeli.FormShow(Sender: TObject);
begin
  mValid:=False;
  xModalKoreksi:=FrMainBeli.ModalKoreksi;
  NoPO.Text:=FrMainBeli.QumasterPONoBukti.AsString;
  KodeSupp.Text:=FrMainBeli.QumasterPOKodeSupp.AsString;
  LnamaSupp.Caption:= FrMainBeli.QumasterPONamaCustSupp.AsString;

  If xModalKoreksi=False then
  begin
   // RefreshAll;
    IsiNoBuktiBaru;
    TampilData(NoPO.Text,NoBukti.Text);
    NoUrut.Enabled:=True;
  end
  else
  Begin
    NOBUKTI.Text:=FrMainBeli.QuMasterNoBukti.AsString;
    NoPO.Text:=FrMainBeli.QuMasterNoPO.AsString;
    Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,IsMax);
    TampilData(NoPO.Text,NOBUKTI.Text);
    NoUrut.Text:=QuBeliNoUrut.AsString;
    NoUrut.Enabled:=False;
    ActiveControl:=Tanggal;
  end;
  AmBilDataBeli;
end;

procedure TFrBeli.FormCreate(Sender: TObject);
begin
  TipeTrans:='PBL';
  LnamaSupp.Caption:='';
  LAlamatSupp.Caption:='';
  Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
  mUbahHd:=False;
  mUbahHdDet:=False;
end;

procedure TFrBeli.TambahBtnClick(Sender: TObject);
begin
  if CheckFormMaster=true then
  begin
      Model:='write';
      TampilTombolDetail(True);
     // NoPO.Enabled:=True;
      KodeBrg.Enabled:=False;
      ActiveControl:=Qnt;
      KodeBrg.Text:=QuBeliKodeBrg.AsString;
      LNamaBrg.Caption:='[ '+QuBeliNamaBrg.AsString+' ]';
      Qnt.MaxValue:=QuBeliQntSisa.AsFloat;
      Qnt.AsFloat:=QuBeliQntSisa.AsFloat;
      NoSat.Value:=QuBeliNosatPO.AsInteger;
      Harga.AsCurrency:=QuBeliHarga.AsCurrency;
      DiscP.Value:=QuBeliDiscP.AsFloat;
      DiscRp.Value:=QuBeliDiscTot.AsFloat;
      mDiskon:=QuBeliDiscP.AsFloat;
      IsiSatuan;
  end
  else
  begin
     ShowMessage('Form Master Tidak Lengkap, Silahkan Anda Periksa !');
  end;
end;

procedure TFrBeli.QntKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_Escape then
   begin
      mValid:=False;
     // ClearPanelDetail;
      SpeedButton1.Click;
   end;
end;

procedure TFrBeli.TanggalKeyDown(Sender: TObject; var Key: Word;
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
      TampilData(NoPO.Text,NOBUKTI.Text);
      ActiveControl:=NoUrut;
    end
    else
    begin
      mExit:=True;
      Close;
    end;
  end;
end;

procedure TFrBeli.KoreksiBtnClick(Sender: TObject);
begin
  if CheckFormMaster=true then
  begin
     mValid:=false;
     model:='koreksi';
     // data yang di update
     if QuBeli.IsEmpty=false then
     begin
        TampilTombolDetail(True);
        //NoPO.Enabled:=False;
        KodeBrg.Enabled:=False;
        //NoPO.Text:=QuBeliNoPO.AsString;
        //KodeGdg.Text:=QuBeliKodeGdg.AsString;
        //mUrutPO:=QuBeliUrutPO.AsInteger;
        //mUrut:=QuBeliUrut.AsInteger;
        KodeBrg.Text:=QuBeliKodeBrg.AsString;
        LNamaBrg.Caption:='[ '+QuBeliNamaBrg.AsString+' ]';
        Qnt.MaxValue:=QuBeliQntB.AsFloat;
        Qnt.AsFloat:=QuBeliQntB.AsFloat;
        NoSat.Value:=QuBeliNoSat.AsInteger;
        Harga.AsCurrency:=QuBeliHarga.AsCurrency;
        DiscP.Value:=QuBeliDiscP.AsFloat;
        DiscRp.Value:=QuBeliDiscTot.AsFloat;
        mDiskon:=QuBeliDiscP.AsFloat;
        //DiscP2.Value:=QuBeliDiscP2.AsFloat;
        //DiscRp2.Value:=QuBeliDiscTot2.AsFloat;
        //mDiskon2:=QuBeliDiscP2.AsFloat;
        mPosisi:=QuBeliUrut.AsInteger;
        IsiSatuan;
        ActiveControl:=Qnt;
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

procedure TFrBeli.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
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
      TampilData(NoPO.Text,NOBUKTI.Text);
      ActiveControl:=NoUrut;
    end;
  end
  else if key=VK_return then
  begin
   if FrMainBeli.ModalKoreksi Then
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

procedure TFrBeli.HapusBtnClick(Sender: TObject);
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
          [QuBeliKodeBrg.asstring, QuBeliNamabrg.asstring]));
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
  end
  else
      MsgTanggalTidakSesuaiPeriode;
end;

procedure TFrBeli.wwDBGrid1Enter(Sender: TObject);
begin
  FrBeli.KeyPreview:=false;
  CheckFormMaster;
end;

procedure TFrBeli.wwDBGrid1Exit(Sender: TObject);
begin
  FrBeli.KeyPreview:=true;
end;

procedure TFrBeli.wwDBGrid1DblClick(Sender: TObject);
begin
  KoreksiBtn.Click;
end;

procedure TFrBeli.NoUrutKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_Return then
  begin
    If Length(NoUrut.Text)<4 then
    begin
      MessageDlg('Nomor urut kurang '+InttoStr(4-Length(NoUrut.Text))+' digit.',mtWarning,[MbOk],0);
      ActiveControl := NoUrut;
    end
    else
    begin
      TampilData(NoPO.Text,NoBukti.Text);
      if not QuBeli.IsEmpty then
      Begin
         AmBilDataBeli;
      end
      else
      Begin
        if FrMainBeli.ModalKoreksi then
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
  else if Key=Vk_Escape then
  begin
    mExit := True;
    Close;
  end;
end;

procedure TFrBeli.TanggalEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrBeli.TanggalExit(Sender: TObject);
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

procedure TFrBeli.KodeSuppEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrBeli.KodeSuppExit(Sender: TObject);
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

procedure TFrBeli.CetakClick(Sender: TObject);
var N1, N2, N3 : string;
    T1, T2 : Real;
    Tot : byte;
    H1  : real;
begin
  QuReport.Close;
  QuReport.SQL.Strings[2]:='select @NoPO='+QuotedStr(NoPO.Text)+',@NoBukti='+QuotedStr(NoBukti.Text);
  QuReport.Open;
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

   { if QuUpdatedbbeli.FieldByName('Nama').AsString='Zona Accessories' then
       frxReport1.LoadFromFile(currDir+'Nota\NOTABeliZ.fr3') else
   }
  frxReport1.LoadFromFile(currDir+'Nota\NotaBELIGdg.fr3');
  frxReport1.ShowReport;

end;

procedure TFrBeli.ValasExit(Sender: TObject);
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
end;

procedure TFrBeli.BitBtn1Click(Sender: TObject);
begin
  mValid:=False;
  if CekPeriode(IDUser, Tanggal.Date)=True then
  begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      if Model='write' then
      begin
        if (length(Kodebrg.Text)>0) or (length(KodeGdg.Text)>0) then
        begin
          with DM.QuCari do
          Begin
           Close;
           SQL.Clear;
           SQL.Add('Select Kodebrg from dbBelidet where NoBukti=:0 and Kodebrg=:1');
           Parameters[0].Value:=NoBukti.Text;
           Parameters[1].Value:=KodeBrg.Text;
           Open;
          End;
          if DM.QuCari.RecordCount>0 Then
           UpdateDataBeli('U','BL')
          else
           UpdateDataBeli('I','BL');
           SpeedButton1.Click;
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
        SpeedButton1.Click;
      end
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

procedure TFrBeli.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  ClearPanelDetail;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
end;

procedure TFrBeli.KursExit(Sender: TObject);
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

procedure TFrBeli.FormDestroy(Sender: TObject);
begin
  FrBeli:=nil;
end;

procedure TFrBeli.KodeGdgExit(Sender: TObject);
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

procedure TFrBeli.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrBeli.BPrevClick(Sender: TObject);
begin
  Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,IDUser);
  FrMainBeli.QuNavigator.Locate('NoBukti',NoBukti.Text,[LOC,LOP]);
  FrMainBeli.QuNavigator.Prior;
  FrMainBeli.QuMaster.Locate('NoBukti',FrMainBeli.QuNavigatorNoBukti.AsString,[LOC,LOP]);
  FormShow(Self);
end;

procedure TFrBeli.BNextClick(Sender: TObject);
begin
  Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,IDUser);
  FrMainBeli.QuNavigator.Locate('NoBukti',NoBukti.Text,[LOC,LOP]);
  FrMainBeli.QuNavigator.Next;
  FrMainBeli.QuMaster.Locate('NoBukti',FrMainBeli.QuNavigatorNoBukti.AsString,[LOC,LOP]);
  FormShow(Self);
end;

procedure TFrBeli.HariExit(Sender: TObject);
begin
  Ltanggal.Caption:='Jatuh Tempo : '+FormatDateTime('dd/mm/yyyy',TANGGAL.Date+Hari.AsInteger);
end;

procedure TFrBeli.DsgCetakBtnClick(Sender: TObject);
begin
  With QuUpdatedbbeli do
  begin
    close;
    sql.clear;
    sql.add('Select * From vwPerusahaan ');
    Open;
  end;

  frxReport1.LoadFromFile(currDir+'Nota\NotaBELIgdg.fr3');
  frxReport1.DesignReport;
end;

procedure TFrBeli.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
  if comparetext(varname,'Terbilang')=0 then
  value := '# '+TempCode+' #';
  if comparetext(varname,'Total')=0 then
     value := GrandTotal.Value+Handling.AsFloat;
  if comparetext(varname,'Tothal')=0 then
      value := tothal;
end;

procedure TFrBeli.NoUrutChange(Sender: TObject);
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

procedure TFrBeli.KodeExpExit(Sender: TObject);
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

procedure TFrBeli.KodeBrgExit(Sender: TObject);
begin
  if mValid then
  begin
    if NoPO.Text<>'-' then
    begin
      if Length(KodeBrg.Text)=0 then TampilIsiBarangPO else
      begin
          if DataBersyarat('Select A.KodeBrg,c.NamaBrg,A.Qnt,A.Satuan,((A.Qnt*A.Isi)-Isnull(B.QntJ,0))QntSisa,A.Harga,A.HrgNetto  from dbPOdet a      '+
                           'Left Outer Join(select KodeBrg,NoPO,Satuan,Sum(Qnt*Isi)QntB from dbBeliDet Group by KodeBrg,NoPO,Satuan) b  '+
                           'on a.NoBuKti=b.NoPo left Outer Join dbBarang c on a.Kodebrg=c.Kodebrg ' +
                           'where A.NoBukti=:0 and a.Kodebrg=:1)',
                     [Nopo.Text,KodeBrg.Text], DM.QuCari)=True then
        begin
             KodeBrg.Text:=DM.QuCari.FieldByName('KodeBrg').AsString;
             LNamaBrg.Caption:='[ '+DM.QuCari.FieldByName('NamaBrg').AsString+' ]';
             Qnt.MaxValue:=DM.QuCari.FieldByName('QntSisa').AsFloat;
             Qnt.AsFloat:=DM.QuCari.FieldByName('QntSisa').AsFloat;
             Harga.AsFloat:=DM.QuCari.FieldByName('Harga').AsFloat;
             IsiSatuan;
        end
        else
             TampilIsiBarangPO;
      end;
    end
    else
    begin
      TampilIsiBarangPO;
    end;
  end;
end;

procedure TFrBeli.KodeBrgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrBeli.NoPOEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrBeli.NoPOExit(Sender: TObject);
begin
  if mValid Then
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
  end;
end;

procedure TFrBeli.NoPOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key=Vk_Escape then
 begin
   SpeedButton1.Click;
 end
end;

procedure TFrBeli.TanggalChange(Sender: TObject);
begin
  mUbahHd:=True;
  if Sender=Tipe then
  begin
    if TIPE.ItemIndex = 0 then Hari.Value:=0;
    Ltanggal.Caption:='Jatuh Tempo : '+FormatDateTime('dd/mm/yyyy',TANGGAL.Date+Hari.AsInteger);
  end;
  if (Sender=Diskon) or (Sender=PPN) or (Sender=Handling) then
    mUbahHdDet:=True;
end;

procedure TFrBeli.DiscPExit(Sender: TObject);
var xNilaiDiscExit: Real;
begin
  if (Sender=DiscRp) then
  begin
    DiskonTotal:=ProsesDiskon(Sender);
  end
  else if Sender=DiscP then
  begin
    if (Model='write') and (DiscP.AsCurrency<>mDiskon)then
       DiskonTotal:=ProsesDiskon(Sender)
    else
    if (Model='koreksi') and (QuBeliDiscP.AsCurrency<>DiscP.AsCurrency) then
       DiskonTotal:=ProsesDiskon(Sender);
  end;
end;

procedure TFrBeli.DiscRpExit(Sender: TObject);
begin
  if Sender=DiscRp then
  begin
    DiskonTotal:=prosesdiskonRp(Sender);
  end
  else if Sender=DiscP then
  begin
    if Model='write' then DiskonTotal:=prosesdiskonRp(Sender)
    else if (Model='koreksi') and (QuBeliDiscP.AsCurrency<>DiscP.AsCurrency) then
      DiskonTotal:=prosesdiskonRp(Sender);
  end;
end;

procedure TFrBeli.DiscP2Exit(Sender: TObject);
begin
  if (Sender=DiscRp2) then
  begin
    DiskonTotal:=prosesdiskon2(Sender);
  end
  else if Sender=DiscP2 then
  begin
    if (Model='write') and (DiscP2.AsCurrency<>mDiskon2)then
       DiskonTotal:=ProsesDiskon2(Sender)
    else
   { if (Model='koreksi') and (QuBeliDiscP2.AsCurrency<>DiscP2.AsCurrency) then
       DiskonTotal:=ProsesDiskon2(Sender);}
  end;
end;

procedure TFrBeli.DiscRp2Exit(Sender: TObject);
begin
  if Sender=DiscRp2 then
  begin
    DiskonTotal:=prosesdiskonRp2(Sender);
  end
  else if Sender=DiscP2 then
  begin
    if Model='write' then DiskonTotal:=prosesdiskonRp2(Sender)
    else {if (Model='koreksi') and (QuBeliDiscP2.AsCurrency<>DiscP2.AsCurrency) then
      DiskonTotal:=prosesdiskonRp2(Sender)};
  end;
end;

procedure TFrBeli.NoSatExit(Sender: TObject);
begin
  IsiHargaBrg;
end;

procedure TFrBeli.SpeedButton2Click(Sender: TObject);
var i:Byte;
begin
//
frxDBDataset1.DataSet.Close;
frxDBDataset1.DataSet := dxMem;
TampilData(NoPO.Text,NoBukti.Text);
dxMem.Close;
dxMem.CreateFieldsFromDataSet(QuBeli);
dxMem.Open;
///
QuBeli.First;
While Not QuBeli.Eof do
    Begin
       for i:=1 to QuBeli.FieldByName('QntB').AsInteger do
       begin
         dxMem.Append;
         dxMem.FieldByName('Bar').AsString:=QuBeli.FieldByName('Bar').AsString;
         dxMem.FieldByName('NamaBrg').AsString:=QuBeli.FieldByName('NamaBrg').AsString;
         dxMem.FieldByName('Kodebrg').AsString:=QuBeli.FieldByName('KodeBrg').AsString;

         dxMem.Post;
       end;
         QuBeli.Next;
     end;
    frxDBDataset1.DataSet.Open;
    frxReport1.LoadFromFile(currDir+'Nota\CetakBarcode.fr3');
    frxReport1.ShowReport;
end;

procedure TFrBeli.SpeedButton3Click(Sender: TObject);
var i:Byte;
begin
//
frxDBDataset1.DataSet.Close;
frxDBDataset1.DataSet := dxMem;
TampilData(NoPO.Text,NoBukti.Text);
dxMem.Close;
dxMem.CreateFieldsFromDataSet(QuBeli);
dxMem.Open;
///
QuBeli.First;
While Not QuBeli.Eof do
   Begin
      for i:=1 to QuBeli.FieldByName('Qnt').AsInteger do
       begin
         dxMem.Append;
         dxMem.FieldByName('Bar').AsString:=QuBeli.FieldByName('Bar').AsString;
         dxMem.FieldByName('NamaBrg').AsString:=QuBeli.FieldByName('NamaBrg').AsString;
         dxMem.FieldByName('Kodebrg').AsString:=QuBeli.FieldByName('KodeBrg').AsString;

         dxMem.Post;
       end;
         QuBeli.Next;
   end;
   frxDBDataset1.DataSet.Open;
   frxReport1.LoadFromFile(currDir+'Nota\CetakBarcode.fr3');
   frxReport1.DesignReport;
end;

procedure TFrBeli.QntEnter(Sender: TObject);
begin
 IsiSatuan;
end;

end.
