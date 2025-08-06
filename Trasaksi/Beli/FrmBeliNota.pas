unit FrmBeliNota;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, wwdblook, Wwdbigrd, Wwdbgrid,
  DBCtrls, ppBands, ppCtrls, ppDB, jpeg, ppPrnabl, ppClass, ppCache,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, ImgList, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ppVar,variants, dxEditor,
  dxExEdtr, dxEdLib, ppStrtch, ppMemo,Dateutils, ppModule, raCodMod,
  frxClass, frxDMPExport, frxDBSet, frxDesgn, MyGlobal, dxmdaset,
  dxPageControl, StrUtils;

type
  TFrBeliNota = class(TForm)
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
    QuByAngkut: TADOQuery;
    frxReport1: TfrxReport;
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
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    dxMem: TdxMemData;
    NoPO: TEdit;
    Label8: TLabel;
    Label6: TLabel;
    KodeGdg: TEdit;
    QuBeliNoBukti: TStringField;
    QuBeliNoUrut: TStringField;
    QuBeliTanggal: TDateTimeField;
    QuBeliTglJatuhTempo: TDateTimeField;
    QuBeliKodeSupp: TStringField;
    QuBeliNamaCustSupp: TStringField;
    QuBeliAlamat1: TStringField;
    QuBeliAlamat2: TStringField;
    QuBeliKota: TStringField;
    QuBeliAlamat: TStringField;
    QuBeliKodeGdg: TStringField;
    QuBeliNama: TStringField;
    QuBeliHandling: TBCDField;
    QuBeliKeterangan: TStringField;
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
    QuBeliUrut: TIntegerField;
    QuBeliKodeBrg: TStringField;
    QuBeliNamaBrg: TStringField;
    QuBeliSatuan: TStringField;
    QuBeliQnt: TBCDField;
    QuBeliNoSat: TWordField;
    QuBeliIsi: TBCDField;
    QuBeliHrgNetto: TBCDField;
    QuBeliDiscP: TBCDField;
    QuBeliDiscTot: TBCDField;
    QuBeliBeban: TBCDField;
    QuBeliNoPO: TStringField;
    QuBeliUrutPO: TIntegerField;
    QuBeliTotDiskon: TFloatField;
    QuBeliTotDPP: TFloatField;
    QuBeliTotPPN: TFloatField;
    QuBeliTotNet: TFloatField;
    QuBeliTotal: TBCDField;
    QuBeliDiskon: TFloatField;
    QuBeliTotalDPP: TFloatField;
    QuBeliTotalPPn: TFloatField;
    QuBeliTotalNetto: TFloatField;
    Panel5: TPanel;
    SpeedButton4: TSpeedButton;
    Label3: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    BitBtn2: TBitBtn;
    KodeB: TEdit;
    Ket: TEdit;
    Valas2: TEdit;
    Kurs2: TPBNumEdit;
    Nilai: TPBNumEdit;
    dxPageControl1: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    dxTabSheet2: TdxTabSheet;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2Kodebiaya: TdxDBGridMaskColumn;
    dxDBGrid2Keterangan: TdxDBGridMaskColumn;
    dxDBGrid2Nilai: TdxDBGridMaskColumn;
    dxDBGrid2KodeVls: TdxDBGridMaskColumn;
    dxDBGrid2Kurs: TdxDBGridMaskColumn;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Urut: TdxDBGridMaskColumn;
    dxDBGrid1NoPO: TdxDBGridColumn;
    dxDBGrid1KodeBrg: TdxDBGridMaskColumn;
    dxDBGrid1NamaBrg: TdxDBGridMaskColumn;
    dxDBGrid1Qnt: TdxDBGridMaskColumn;
    dxDBGrid1Satuan: TdxDBGridMaskColumn;
    dxDBGrid1KodeGdg: TdxDBGridColumn;
    dxDBGrid1Harga: TdxDBGridMaskColumn;
    dxDBGrid1DiscTot: TdxDBGridMaskColumn;
    dxDBGrid1DiscTot2: TdxDBGridColumn;
    dxDBGrid1HrgNetto: TdxDBGridColumn;
    dxDBGrid1TotalUSD: TdxDBGridMaskColumn;
    dxDBGrid1TotalIDR: TdxDBGridMaskColumn;
    dxDBGrid1Beban: TdxDBGridMaskColumn;
    dxDBGrid1Total: TdxDBGridMaskColumn;
    DSPBIAYA: TDataSource;
    QuPBIAYA: TADOQuery;
    QuPBIAYAKodebiaya: TStringField;
    QuPBIAYAKeterangan: TStringField;
    QuPBIAYANilai: TBCDField;
    QuPBIAYAKodeVls: TStringField;
    QuPBIAYAKurs: TBCDField;
    QuPBIAYANoBuktiInv: TStringField;
    SP_PBiaya: TADOStoredProc;
    QuPBIAYANilaiRp: TBCDField;
    dxDBGrid2Column6: TdxDBGridColumn;
    QuPBIAYAUrut: TIntegerField;
    Label34: TLabel;
    DiscPDet2: TPBNumEdit;
    Label41: TLabel;
    DiscPDet3: TPBNumEdit;
    Label40: TLabel;
    DIscPDet4: TPBNumEdit;
    Label39: TLabel;
    DiscPDet5: TPBNumEdit;
    QuBeliDiscp2: TBCDField;
    QuBeliDiscp3: TBCDField;
    QuBeliDiscp4: TBCDField;
    QuBeliDiscp5: TBCDField;
    QuBeliHarga: TFloatField;
    Label18: TLabel;
    PPH: TPBNumEdit;
    QuBeliTotPPH: TFloatField;
    QuBeliTotalPPh: TFloatField;
    UbahBrg: TButton;
    Label20: TLabel;
    PpnP: TPBNumEdit;
    Label46: TLabel;
    QuBelippnp: TBCDField;
    CPpnP: TComboBox;
    CB: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure TampilData(No_Bukti:String);
    Procedure Hitung;
    procedure UpdateDataBeli(Choice:Char;Kodet:String);
    procedure FormCreate(Sender: TObject);
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
    procedure TambahBtnClick(Sender: TObject);
    procedure KodeBExit(Sender: TObject);
    procedure KodeBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Valas2Exit(Sender: TObject);
    procedure HapusBtnClick(Sender: TObject);
    procedure dxPageControl1Change(Sender: TObject);
    procedure frxReport1AfterPrintReport(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NoUrutExit(Sender: TObject);
    procedure DiscPEnter(Sender: TObject);
    procedure CPpnPClick(Sender: TObject);

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
    Procedure AmBilDataBeli;
    procedure TampilIsiBiaya;
    procedure UpdatedbPBiaya(Choice:Char);
  public
    { Public declarations }
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel,xmodalkoreksi: Boolean;
    NDiskon,NSubTotal,NDPP,NPPN,NNet,DiskonTotal:real;
    yy,mm,dd : word;
    sishal, tothal : integer ;
  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrBeliNota: TFrBeliNota;
  mValid,mExit,mMasterKoreksi: Boolean;
  mUrut,mUrutPO,IsTutup,mNosat,mPosisi:Integer;
  TipeTrans,PlusPPN,Nomor,Model:String;
  mBulan,mTahun:string;
  Biaya,IsiBrg,potongan:Real;
  S:array[0..255]of char;
  BM : TBookmark;
  mDiskon, mDiskon2 : currency;

implementation
uses FrmBrows,MyProcedure, MyModul, FrmMainBeliNota;
{$R *.DFM}

// PROCEDURE DAN FUNCTION PRIBADI

procedure TFrBeliNota.TampilTombolDetail(pNilai: Boolean);
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

procedure TFrBeliNota.TampilIsiSupplier;
begin
  KodeBrows:=1255;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeSupp.Text;
  FrBrows.EditFilter.Text:=KodeSupp.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    with FrBrows.QuBrows do
    begin
      KodeSupp.Text:=fieldbyname('KodeSupp').AsString;
      LnamaSupp.Caption:=fieldbyname('NamaSupp').AsString;
      LAlamatSupp.Caption:=fieldbyname('Alamat').AsString;
      Hari.AsInteger:=FieldByName('DueDate').AsInteger;
    end;
  end else
    ActiveControl:=KodeSupp;
end;

procedure TFrBeliNota.UpdatedbPBiaya(Choice:Char);
begin
 With SP_PBiaya do
   begin
       Parameters.Refresh;
       Parameters[1].Value:=Choice;
       Parameters[2].Value:=KodeB.Text;
       Parameters[3].Value:=Ket.Text;
       Parameters[4].Value:=Nilai.AsFloat;
       Parameters[5].Value:=Valas2.Text;
       Parameters[6].Value:=Kurs2.AsFloat;
       Parameters[7].Value:=NoBukti.Text;
       if (Choice='U') or (Choice='D')  Then
       Parameters[8].Value:=QuPBIAYAKodebiaya.AsString;
        if (Choice='U') or (Choice='D')  Then
       Parameters[9].Value:=QuPBIAYAUrut.AsInteger;
       Parameters[10].Value:=ppnp.Value;

     try
          ExecProc;
     Except
       ShowMessage('Proses Gagal!');
     end;
    TampilData(NoBukti.Text);
  end;
end;

procedure TFrBeliNota.TampilIsiGudang;
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

procedure TFrBeliNota.TampilIsiValas;
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

procedure TFrBeliNota.IsiSatuan;
begin
  LNamaSat.Caption:=IsiSatuanBrg(KodeBrg.Text, mNamaSatuan, mIsiSatuan);
end;

procedure TFrBeliNota.TampilIsiBarang;
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

procedure TFrBeliNota.TampilIsiBarangPO;
begin
  KodeBrows:=232011;//23201;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeBrg.Text;
  FrBrows.NoKira1:=NoPO.Text;
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.IsEmpty=False) then
  begin
    with FrBrows.QuBrows do
    begin
      KodeBrg.Text:=FieldByName('KodeBrg').AsString;
      {LNamaBrg.Caption:='[ '+FieldByName('NamaBrg').AsString+' ]';
      NoSat.Value:=FieldByName('NoSat').AsInteger;
      Qnt.Value:=fieldbyname('QntSisa').AsFloat;
      Harga.Value:=fieldbyname('Harga').AsFloat;
      DiscP.Value:=FieldByName('DiscP').AsFloat;
      mDiskon:=FieldByName('DiscP').AsFloat;
      DiscRp.Value:=FieldByName('DiscTot').AsFloat;
      mUrutPO:=fieldbyname('UrutPO').AsInteger; }
    end;
    IsiSatuan;
  end
   else
    ActiveControl:=KodeBrg;
end;

procedure TFrBeliNota.TampilIsiEkspedisi;
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

procedure TFrBeliNota.IsiNoBuktiBaru;
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

procedure TFrBeliNota.TampilIsiPO;
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
   // ActiveControl:=NoPO;
end;

Procedure TFrBeliNota.Hitung;
begin
   DiskonRp.Value := QuBeliTotDiskon.AsFloat;
   Dpp.Value := QuBeliTotDPP.AsFloat;
   Pajak.Value := QuBeliTotPPN.AsFloat;
   PPH.Value := QuBeliTotPPH.AsFloat;
   GrandTotal.Value := QuBeliTotNet.AsFloat;
end;

procedure TFrBeliNota.TampilData(No_Bukti:String);
begin
   QuBeli.Close;
   QuBeli.SQL.Strings[2]:='select @NoBukti='+QuotedStr(No_Bukti);
   QuBeli.Open;
   /////
   QuPBIAYA.Close;
   QuPBIAYA.SQL.Strings[1]:='select @NoBukti='+QuotedStr(No_Bukti);
   QuPBIAYA.Open;
   KodeSupp.Enabled:=QuBeli.IsEmpty;
   KodeGdg.Enabled:=QuBeli.IsEmpty;
   NoPO.Enabled:=QuBeli.IsEmpty;
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

function TFrBeliNota.prosesdiskon(Sender:TObject): real;
var price,disc1,disc2,disc3,disc4,disc5:real;
begin
   {price:=Harga.AsFloat;
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
   Result:=Harga.AsFloat-price;  }
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

function TFrBeliNota.prosesdiskonRp(Sender:TObject): real;
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

Function TFrBeliNota.CheckFormMaster:boolean;
begin
   if (length(KodeSupp.Text)=0)or(length(Valas.Text)=0) then
   CheckFormMaster:=false
   else
   CheckFormMaster:=true;
end;

procedure TFrBeliNota.UpdatedbBeli;
begin
  if (not QuBeli.IsEmpty) and (mUbahHd=True) then
  begin
    with QuUpdatedbBeli do
    begin
       Close;
       Sql.Clear;
       SQL.Add('Update dbBeli');
       SQL.Add('Set Tanggal=:0, KodeSupp=:1, Handling=:2, FakturSupp=:3, Keterangan=:4, KodeVls=:5, Kurs=:6, PPN=:7, ');
       SQL.Add('TipeBayar=:8, Hari=:9, TglJatuhTempo=:10, Disc=:11, KodeExp=:12 ');
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
       Parameters[12].Value := KodeExp.Text;
       Parameters[13].Value := NoBukti.Text;
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
    TampilData(NoBukti.Text);
  end;
end;

procedure TFrBeliNota.UpdateValas;
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


procedure TFrBeliNota.ClearPanelDetail;
begin
   KodeBrg.Text:='';
   Qnt.Value:=1;
   NoSat.Value:=1;
   Harga.Value:=0;
   DiscP.Value:=0;
   DiscRp.Value:=0;
   mDiskon:=0;
   mDiskon2:=0;
   LNamaBrg.Caption:='[ . . . ]';
   LNamaSat.Caption:='[ . . . ]';
end;

procedure TFrBeliNota.RefreshAll;
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

procedure TFrBeliNota.IsiHargaBrg;
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

procedure TFrBeliNota.UpdateDataBeli(Choice:Char;Kodet:String);
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
       Parameters[7].Value:=DiscPDet2.Value;
       Parameters[8].Value:=DiscPDet3.Value;
       Parameters[9].Value:=DiscPDet4.Value;
       Parameters[10].Value:=DiscPDet5.Value;
       Parameters[11].Value:=kodebrg.Text;
       Parameters[12].Value:=PpnP.value;

      try
          ExecProc;
          {if Handling.Value<>0 then
          begin
            QuUpdatedbbeli.Close;
            QuUpdatedbbeli.SQL.Clear;
            QuUpdatedbbeli.SQL.Add('exec sp_UpdateBeli '+QuotedStr(NoBukti.Text));
            QuUpdatedbbeli.ExecSQL;
          end;}
          if Choice='I' then
          begin
            TampilData(NOBUKTI.Text);
            QuBeli.Locate('KodeBrg',KodeBrg.Text,[LOP,LOC]);
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
                    'Kode Brg = '+QuBeliKodeBrg.AsString+' , Qnt = '+QuBeliQnt.DisplayText+' '+QuBeliSatuan.AsString+
                    ' , Harga = '+QuBeliHarga.DisplayText);
            TampilData(NOBUKTI.Text);
          end;
          Hitung;
          QuBeli.Locate('Urut', mUrut, []);
       except
          MsgProsesGagal(Choice);
       end;

   end;
end;

Procedure TFrBeliNota.AmBilDataBeli;
begin
   if not QuBeli.IsEmpty then
   begin
      if QuBeliPPnP.AsFloat=10 then
         CPpnP.ItemIndex:=0
      else
      if QuBeliPPnP.AsFloat=11  then  //            and tanggal.Date<'2025-1-1')
       CPpnP.ItemIndex:=2
        else
      if QuBeliPPnP.AsFloat=12 then
       CPpnP.ItemIndex:=2

       ;

      Tanggal.Date:=QuBeli.fieldbyname('Tanggal').AsDateTime;
      KodeSupp.Text:=QuBeli.fieldbyname('KodeSupp').AsString;
      FakturSupp.Text:=QuBeli.fieldbyname('FakturSupp').AsString;
      Handling.AsFloat :=QuBeli.fieldbyname('Handling').AsFloat;
      NoPO.Text:=QuBeliNoPO.AsString;
      KodeGdg.Text:=QuBeliKodeGdg.AsString;
      //KodeExp.Text:=QuBeliKodeExp.AsString;
      //NamaExp.Caption:='[ '+QuBeliNamaExp.AsString+' ]';
      LnamaSupp.Caption:=QuBeli.fieldbyname('NamaCustSupp').AsString;
      LAlamatSupp.Caption:=QuBeli.fieldbyname('Alamat').AsString;
      Tipe.ItemIndex:=QuBeli.fieldbyname('tipeBayar').AsInteger;
      hari.AsInteger:=QuBeli.fieldbyname('Hari').AsInteger;
      DiskonP.AsCurrency:=QuBeli.fieldbyname('Disc').AsCurrency;
      Keterangan.Text:=QuBeli.fieldbyname('keterangan').AsString;
      Ppn.ItemIndex:=QuBeli.fieldbyname('Ppn').AsInteger;
      Valas.Text:=QuBeli.fieldbyname('KodeVls').AsString;
      Kurs.Value:=QuBeli.fieldbyname('Kurs').AsCurrency;
      DiscPDet2.Value:=QuBeliDiscp2.AsFloat;
      DiscPDet3.Value:=QuBeliDiscp3.AsFloat;
      DiscPDet4.Value:=QuBeliDiscp4.AsFloat;
      DiscPDet5.Value:=QuBeliDiscp5.AsFloat;
      Ltanggal.Caption := 'Jatuh Tempo : '+FormatDateTime('DD/MM/YYYY',QuBeli.fieldbyname('TglJatuhTempo').AsDateTime);
      ppnp.value:=qubelippnp.asfloat;
   end;
end;



// PROCEDURE DAN FUNCTION MILIK DELPHI

procedure TFrBeliNota.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFrBeliNota.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrBeliNota.FormShow(Sender: TObject);
begin
  mValid:=False;
  xModalKoreksi:=FrMainBeliNota.ModalKoreksi;
   CPpnP.Clear;
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
   end;
  If xModalKoreksi=False then
  begin
    RefreshAll;
    IsiNoBuktiBaru;
    TampilData(NoBukti.Text);
    NoUrut.Enabled:=True;
  end
  else
  Begin
    NOBUKTI.Text:=FrMainBeliNota.QuMasterNoBukti.AsString;
    Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,isMax);
    TampilData(NOBUKTI.Text);
    AmBilDataBeli;
    NoUrut.Text:=QuBeliNoUrut.AsString;
    NoUrut.Enabled:=False;
    ActiveControl:=Kurs;
  end;
end;

procedure TFrBeliNota.FormCreate(Sender: TObject);
begin
  TipeTrans:='PBL';
  LnamaSupp.Caption:='';
  LAlamatSupp.Caption:='';
  Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
  mUbahHd:=False;
  mUbahHdDet:=False;
end;

procedure TFrBeliNota.QntKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_Escape then
   begin
      mValid:=False;
      KodeBrg.Enabled:=True;
      NoPO.Enabled:=True;
      NoPO.Text:='';
      ClearPanelDetail;
      if model='write' then
         ActiveControl:=NoPO
      else
      begin
         SpeedButton1.Click;
      end;
   end;
end;

procedure TFrBeliNota.TanggalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
  begin
      if  (CekPeriode(IDUser,TANGGAL.Date)=False) then
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

procedure TFrBeliNota.KoreksiBtnClick(Sender: TObject);
begin
  if CheckFormMaster=true then
  begin
     mValid:=false;
     model:='koreksi';
     // data yang di update
    if dxPageControl1.ActivePageIndex=0 Then
    Begin
     if QuBeli.IsEmpty=false then
     begin
        TampilTombolDetail(True);
        NoPO.Enabled:=False;
        //KodeBrg.Enabled:=False;
        KodeBrg.Enabled:=True;
        mUrutPO:=QuBeliUrutPO.AsInteger;
        mUrut:=QuBeliUrut.AsInteger;
        KodeBrg.Text:=QuBeliKodeBrg.AsString;
        LNamaBrg.Caption:='[ '+QuBeliNamaBrg.AsString+' ]';
        Qnt.AsFloat:=QuBeliQnt.AsFloat;
        //Qnt2.AsFloat:=QuBeliQnt2.AsFloat;
        NoSat.Value:=QuBeliNoSat.AsInteger;
        Harga.Asfloat:=QuBeliHarga.AsFloat;
        DiscP.Value:=QuBeliDiscP.AsFloat;
        DiscRp.Value:=QuBeliDiscTot.AsFloat;
        mDiskon:=QuBeliDiscP.AsFloat;
        //DiscP2.Value:=QuBeliDiscP2.AsFloat;
        //DiscRp2.Value:=QuBeliDiscTot2.AsFloat;
        //mDiskon2:=QuBeliDiscP2.AsFloat;
        mPosisi:=QuBeliUrut.AsInteger;
        Qnt.Enabled:=False;
        IsiSatuan;
        harga.Enabled:=false;
        //ActiveControl:=Harga;
       end
      else
       begin
         ShowMessage('Tidak ada transaksi yang dikoreksi !');
         ActiveControl:=dxDBGrid1;
       end;
    end
    else
    Begin
       if QuPBIAYA.IsEmpty then
       begin
          ShowMessage('Tidak ada transaksi yang dikoreksi !');
          ActiveControl:=dxDBGrid2;
       end
       else
       Begin
          Panel3.Visible:=True;
          Panel3.Visible:=True;
          Panel5.Align:=alClient;
          Panel5.Visible:=True;
          Panel5.Visible:=True;
          KodeB.Text:=QuPBIAYAKodebiaya.AsString;
          Ket.Text:=QuPBIAYAKeterangan.AsString;
          Nilai.AsFloat:=QuPBIAYANilai.AsFloat;
          Valas2.Text:=QuPBIAYAKodeVls.AsString;
          Kurs2.AsFloat:=QuPBIAYAKurs.AsFloat;
          ActiveControl:=Ket;
       end;
    end;
  end else
  begin
     ShowMessage('Form Master Tidak Lengkap, Silahkan Anda Periksa !');
  end;
end;

procedure TFrBeliNota.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
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
      ActiveControl:=NoUrut;
    end;
  end
  else if key=VK_return then
  begin
    //KoreksiBtn.Click;
  end
  else if key=VK_delete then
  begin
    //HapusBtn.Click;
  end
  else if key=VK_insert then
  begin
    //TambahBtn.Click;
  end;
end;

procedure TFrBeliNota.wwDBGrid1Enter(Sender: TObject);
begin
  FrBeliNota.KeyPreview:=false;
  CheckFormMaster;
end;

procedure TFrBeliNota.wwDBGrid1Exit(Sender: TObject);
begin
  FrBeliNota.KeyPreview:=true;
end;

procedure TFrBeliNota.wwDBGrid1DblClick(Sender: TObject);
begin
//  KoreksiBtn.Click;
end;

procedure TFrBeliNota.NoUrutKeyDown(Sender: TObject; var Key: Word;
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
        if FrMainBeliNota.ModalKoreksi then
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

procedure TFrBeliNota.TanggalEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrBeliNota.TanggalExit(Sender: TObject);
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

procedure TFrBeliNota.KodeSuppEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrBeliNota.KodeSuppExit(Sender: TObject);
begin
  if mValid Then
  begin
    if length(KodeSupp.Text)=0 then TampilIsiSupplier else
    begin
      if DataBersyarat('Select KodeSupp, NamaSupp, Alamat1+Char(13)+Alamat2+Char(13)+kota Alamat,isnull(duedate,0) DueDate from dbSupplier '+
                    'where (KodeSupp=:0) Order by kodesupp',[KOdeSupp.Text],Dm.Qucari)=true then
      begin
        with DM.QuCari do
        begin
           KodeSupp.Text:=fieldbyname('KodeSupp').AsString;
           LnamaSupp.Caption:=fieldbyname('NamaSupp').AsString;
           LAlamatSupp.Caption:=fieldbyname('Alamat').AsString;
           Hari.AsInteger:=FieldByName('DueDate').AsInteger;
        end;
      end
      else TampilIsiSupplier;
    end;
    if Hari.AsInteger=0  then TIPE.ItemIndex:=0
      else TIPE.ItemIndex:=1;
    Ltanggal.Caption:='Jatuh Tempo : '+FormatDateTime('dd/mm/yyyy',Tanggal.Date+Hari.AsInteger);
  end;
end;

procedure TFrBeliNota.CetakClick(Sender: TObject);
var N1, N2, N3 : string;
    T1, T2 : Real;
    Tot : byte;
    H1  : real;
begin
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
  frxDBDataset1.DataSet := Qureport;
  with Qureport do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Exec CetakPenerimaanACC '+QuotedStr(Nobukti.text));
    Open;
  end;

  frxDBDataset1.Close;
  frxDBDataset1.Open;
    if QuUpdatedbbeli.FieldByName('Nama').AsString='Zona Accessories' then
       frxReport1.LoadFromFile(currDir+'Nota\NOTABeliZ.fr3') else
  frxReport1.LoadFromFile(currDir+'Nota\NotaRBELIGudang.fr3');
  frxReport1.ShowReport;

end;

procedure TFrBeliNota.ValasExit(Sender: TObject);
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

procedure TFrBeliNota.BitBtn1Click(Sender: TObject);
begin
  mValid:=False;
  if CekPeriode(IDUser, Tanggal.Date)=True then
  begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      if Model='write' then
      begin
        if dxPageControl1.ActivePageIndex=1 Then
         Begin
          UpdatedbPBiaya('I');
          KodeB.Text:='';
          Ket.Text:='';
          Nilai.AsFloat:=0;
          Valas2.Text:='IDR';
          Kurs2.AsFloat:=1;
          ActiveControl:=KodeB;
         end;
       { if (length(Kodebrg.Text)>0) or (length(KodeGdg.Text)>0) then
        begin
          UpdateDataBeli('I','BL');
          ClearPanelDetail;
          ActiveControl:=NoPO;
        end
        else
        begin
          MsgDataTidakBolehKosong('Kode Barang atau Gudang');
          ActiveControl:=KodeGdg;
        end;
      end }
      end
      else if model='koreksi' then
      begin
      if dxPageControl1.ActivePageIndex=0 Then
       Begin
        UpdateDataBeli('U','BL');
        SpeedButton1.Click;
       end
       else
       Begin
         UpdatedbPBiaya('U');
         SpeedButton2.Click;
       end;
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

procedure TFrBeliNota.SpeedButton1Click(Sender: TObject);
begin
if dxPageControl1.ActivePageIndex=0 Then
Begin
  mValid:=false;
  ClearPanelDetail;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
end  
else
Begin
 TampilTombolDetail(False);
 Panel3.Visible:=False;
 Panel3.Enabled:=False;
 Panel5.Visible:=False;
 Panel5.Enabled:=False;
 ActiveControl:=dxDBGrid2;
end;
end;

procedure TFrBeliNota.KursExit(Sender: TObject);
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

procedure TFrBeliNota.FormDestroy(Sender: TObject);
begin
  FrBeliNota:=nil;
end;

procedure TFrBeliNota.KodeGdgExit(Sender: TObject);
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

procedure TFrBeliNota.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrBeliNota.BPrevClick(Sender: TObject);
begin
  Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,IDUser);
  FrMainBeliNota.QuNavigator.Locate('NoBukti',NoBukti.Text,[LOC,LOP]);
  FrMainBeliNota.QuNavigator.Prior;
  FrMainBeliNota.QuMaster.Locate('NoBukti',FrMainBeliNota.QuNavigatorNoBukti.AsString,[LOC,LOP]);
  FormShow(Self);
end;

procedure TFrBeliNota.BNextClick(Sender: TObject);
begin
  Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,IDUser);
  FrMainBeliNota.QuNavigator.Locate('NoBukti',NoBukti.Text,[LOC,LOP]);
  FrMainBeliNota.QuNavigator.Next;
  FrMainBeliNota.QuMaster.Locate('NoBukti',FrMainBeliNota.QuNavigatorNoBukti.AsString,[LOC,LOP]);
  FormShow(Self);
end;

procedure TFrBeliNota.HariExit(Sender: TObject);
begin
  Ltanggal.Caption:='Jatuh Tempo : '+FormatDateTime('dd/mm/yyyy',TANGGAL.Date+Hari.AsInteger);
end;

procedure TFrBeliNota.DsgCetakBtnClick(Sender: TObject);
begin
  With QuUpdatedbbeli do
  begin
    close;
    sql.clear;
    sql.add('Select * From vwPerusahaan ');
    Open;
  end;

  if QuUpdatedbbeli.FieldByName('Nama').AsString='Zona Accessories' then
       frxReport1.LoadFromFile(currDir+'Nota\NOTABeliZ.fr3') else
  frxReport1.LoadFromFile(currDir+'Nota\NotaRBELIGudang.fr3');
  frxReport1.DesignReport;
end;

procedure TFrBeliNota.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
  if comparetext(varname,'Terbilang')=0 then
  value := '# '+TempCode+' #';
  if comparetext(varname,'Total')=0 then
     value := GrandTotal.Value+Handling.AsFloat;
  if comparetext(varname,'Tothal')=0 then
      value := tothal;
  if CompareText(varName,'iduser')=0 then
        value:=IDUser;
end;

procedure TFrBeliNota.NoUrutChange(Sender: TObject);
begin
  if mValid then
  begin
    if Length(NoUrut.Text)=5 then
    begin
      Konfig(TipeTrans,Nourut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date);
      NOBUKTI.Text:=MyNoBukti;
    end
    else
      ActiveControl := NoUrut;
  end;
end;

procedure TFrBeliNota.KodeExpExit(Sender: TObject);
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

procedure TFrBeliNota.KodeBrgExit(Sender: TObject);
begin
  if mValid then
  begin
    if NoPO.Text='-' then
    begin
      if Length(KodeBrg.Text)=0 then TampilIsiBarang else
      begin
          if DataBersyarat('Select a.KodeBrg, a.NamaBrg '+
                     ' from dbBarang a where (a.Kodebrg=:0) and a.isAktif=1 '+
                     ' order by a.KodeBrg ',
                     [KodeBrg.Text], DM.QuCari)=True then
        begin
             KodeBrg.Text:=DM.QuCari.FieldByName('KodeBrg').AsString;
             LNamaBrg.Caption:='[ '+DM.QuCari.FieldByName('NamaBrg').AsString+' ]';
             IsiSatuan;
        end
        else
             TampilIsiBarang;
      end;
    end
    else
    begin
      TampilIsiBarangPO;
    end;
  end;
end;

procedure TFrBeliNota.KodeBrgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrBeliNota.NoPOEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrBeliNota.NoPOExit(Sender: TObject);
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

procedure TFrBeliNota.NoPOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key=Vk_Escape then
 begin
   SpeedButton1.Click;
 end
end;

procedure TFrBeliNota.TanggalChange(Sender: TObject);
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

procedure TFrBeliNota.DiscPExit(Sender: TObject);
var xNilaiDiscExit: Real;
begin
  {if (Sender=DiscRp) then
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
  end;   }
    if mValid then
  begin
    xNilaiDiscExit:=(Sender as TPBNumEdit).Value;
    {if FormatFloat(',0.0000',mNilaiDiscEnter)<>FormatFloat(',0.0000',xNilaiDiscExit) then
    begin
      DiscRp.Value:=ProsesDiskon(Sender);
      DiskonTotal:=ProsesDiskon(Sender);
    end;  }
    DiscRp.Value:=ProsesDiskon(Sender);
      DiskonTotal:=ProsesDiskon(Sender);
  end;
end;

procedure TFrBeliNota.DiscRpExit(Sender: TObject);
begin
 { if Sender=DiscRp then
  begin
    DiskonTotal:=prosesdiskonRp(Sender);
  end
  else if Sender=DiscP then
  begin
    if Model='write' then DiskonTotal:=prosesdiskonRp(Sender)
    else if (Model='koreksi') and (QuBeliDiscP.AsCurrency<>DiscP.AsCurrency) then
      DiskonTotal:=prosesdiskonRp(Sender);
  end;   }
end;

procedure TFrBeliNota.DiscP2Exit(Sender: TObject);
begin
{  if (Sender=DiscRp2) then
  begin
    DiskonTotal:=prosesdiskon2(Sender);
  end
  else if Sender=DiscP2 then
  begin
    if (Model='write') and (DiscP2.AsCurrency<>mDiskon2)then
       DiskonTotal:=ProsesDiskon2(Sender)
    else
    if (Model='koreksi') and (QuBeliDiscP2.AsCurrency<>DiscP2.AsCurrency) then
       DiskonTotal:=ProsesDiskon2(Sender);
  end; }
end;

procedure TFrBeliNota.DiscRp2Exit(Sender: TObject);
begin
{  if Sender=DiscRp2 then
  begin
    DiskonTotal:=prosesdiskonRp2(Sender);
  end
  else if Sender=DiscP2 then
  begin
    if Model='write' then DiskonTotal:=prosesdiskonRp2(Sender)
    else if (Model='koreksi') and (QuBeliDiscP2.AsCurrency<>DiscP2.AsCurrency) then
      DiskonTotal:=prosesdiskonRp2(Sender);
  end; }
end;

procedure TFrBeliNota.NoSatExit(Sender: TObject);
begin
  IsiHargaBrg;
end;

procedure TFrBeliNota.SpeedButton2Click(Sender: TObject);
var i:byte;
begin
//
frxDBDataset1.DataSet.Close;
frxDBDataset1.DataSet := dxMem;
TampilData(NoBukti.Text);
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
    frxReport1.ShowReport;

end;

procedure TFrBeliNota.SpeedButton3Click(Sender: TObject);
var i:byte;
begin
//
frxDBDataset1.DataSet.Close;
frxDBDataset1.DataSet := dxMem;
TampilData(NoBukti.Text);
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

procedure TFrBeliNota.TambahBtnClick(Sender: TObject);
begin
 if dxPageControl1.ActivePageIndex=1 Then
  Begin
     TampilTombolDetail(True);
     Model:='write';
     Panel3.Visible:=True;
     Panel3.Enabled:=True;
     Panel5.Align:=alClient;
     Panel5.Visible:=True;
     Panel5.Enabled:=True;
     KodeB.Text:='';
     Ket.Text:='';
     Nilai.AsFloat:=0;
     Valas2.Text:='IDR';
     Kurs2.AsFloat:=1;
     ActiveControl:=KodeB;
  end;
end;

procedure TFrBeliNota.TampilIsiBiaya;
begin
  KodeBrows:=1100411;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeSupp.Text;
  FrBrows.EditFilter.Text:=KodeB.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    with FrBrows.QuBrows do
    begin
      KodeB.Text:=fieldbyname('KodeBiaya').AsString;
      Ket.Text:=fieldbyname('Keterangan').AsString;
    end;
  end else
    ActiveControl:=KodeB;
end;

procedure TFrBeliNota.KodeBExit(Sender: TObject);
begin
if mValid Then
  begin
    if length(KodeB.Text)=0 then TampilIsiBiaya else
    begin
      if DataBersyarat(' select KodeBiaya,Keterangan,Perkiraan from dbBiaya where KodeBiaya like :0 '+
                        ' order by KodeBiaya',['%'+KOdeB.Text+'%'],Dm.Qucari)=true then
      begin
        with DM.QuCari do
        begin
           KodeB.Text:=fieldbyname('KodeBiaya').AsString;
           Ket.Text:=fieldbyname('Keterangan').AsString;
        end;
      end
      else TampilIsiBiaya;
    end;
  end;
end;

procedure TFrBeliNota.KodeBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=Vk_Escape then
 begin
   mvalid:=False;
   SpeedButton1.Click;
 end
end;

procedure TFrBeliNota.Valas2Exit(Sender: TObject);
begin
 if (length(Valas2.Text)=0)  then
   begin
     KodeBrows:=1006;
     Application.CreateForm(Tfrbrows, frbrows);
     FrBrows.IsiData:=Valas2.Text;
     frbrows.Showmodal;
     if FrBrows.ModalResult=mrOk then
     begin
       Valas2.Text:=FrBrows.QuBrows.fieldbyname('KodeVls').AsString;
       Kurs2.AsFloat:= FrBrows.QuBrows.fieldbyname('Kurs').AsFloat;
     end else
     begin
      if Valas2.Enabled=true then
      ActiveControl:=Valas2;
     end;
   end else
   begin
     if MyFindField('dbValas','KodeVls',Valas2.Text)=true then
     begin
       Valas2.Text:=DM.QuCari.fieldbyname('KodeVls').AsString;
       Kurs2.AsFloat:= DM.QuCari.fieldbyname('Kurs').AsFloat;
     end else
     begin
       KodeBrows:=1006;
       Application.CreateForm(Tfrbrows, frbrows);
       FrBrows.IsiData:=Valas2.Text;
       frbrows.Showmodal;
       if FrBrows.ModalResult=mrOk then
       begin
         Valas2.Text:=FrBrows.QuBrows.fieldbyname('KodeVls').AsString;
         Kurs2.AsFloat:= FrBrows.QuBrows.fieldbyname('Kurs').AsFloat;
       end else
       begin
         if Valas2.Enabled=true then
         ActiveControl:=Valas2;
       end;
     end;
   end;
   if Valas2.Text='IDR' Then Kurs2.AsFloat:=1.00;
   Kurs2.Enabled:=Valas2.Text<>'IDR';
   if Kurs2.Enabled=False Then ActiveControl:=Nilai;
end;

procedure TFrBeliNota.HapusBtnClick(Sender: TObject);
begin
  if dxPageControl1.ActivePageIndex=1 Then
      begin
       if QuPBIAYA.IsEmpty=true then
       begin
          MsgHapusDataKosong;
       end
       else
       begin
          StrPCopy(S,Format('Anda yakin Kode Biaya %s dihapus ?',
          [QuPBiayaKodeBiaya.asstring]));
          if (Application.MessageBox(S,'Hapus Data',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
          begin
             UpdatedbPBiaya('D');
          end;
       end;
      end;
end;

procedure TFrBeliNota.dxPageControl1Change(Sender: TObject);
begin
TambahBtn.Visible:=dxPageControl1.ActivePageIndex=1;
KoreksiBtn.Visible:=dxPageControl1.ActivePageIndex=1;
HapusBtn.Visible:=dxPageControl1.ActivePageIndex=1;
end;

procedure TFrBeliNota.frxReport1AfterPrintReport(Sender: TObject);
begin
NilaiCetak('NilaiCetak','DBBELI',NoBukti.Text);
end;

procedure TFrBeliNota.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
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
      ActiveControl:=NoUrut;
    end;
  end
  else if key=VK_return then
  begin
   if FrMainBeliNota.ModalKoreksi Then
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

procedure TFrBeliNota.NoUrutExit(Sender: TObject);
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

procedure TFrBeliNota.DiscPEnter(Sender: TObject);
begin
  mValid:=True;
  mNilaiDiscEnter:=(Sender as TPBNumEdit).Value;
end;

procedure TFrBeliNota.CPpnPClick(Sender: TObject);
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
     Begin
      if CB.Checked then

       PPnP.Value:=12
       else
       PPnP.Value:=11
     end
       ;
    {if Idx <> -1 then
      begin
        //PPnP.Value := INteger(CPpnP.Items.Objects[Idx]);
        // Do something with value you retrieved
        PPnP.Value := StrToFloatDef(CPpnP.Text,value);
      end;}
end;

end.
