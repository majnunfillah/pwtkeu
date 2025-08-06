unit FrmSPB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, DBCtrls, ImgList, RxGIF, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, frxClass, frxDMPExport,
  frxDBSet, strUtils,DateUtils, frxDesgn, frxBarcode,Variants, dxmdaset,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxEdit,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView,
  cxGridLevel, cxGrid, Math, frxExportRTF, frxExportBIFF, frxExportCSV;

type
  TFrSPB = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    QuBeli: TADOQuery;
    Sp_Beli: TADOStoredProc;
    DsQuBeli: TDataSource;
    QuUpdatedbbeli: TADOQuery;
    Label10: TLabel;
    Panel2: TPanel;
    Shape4: TShape;
    Label5: TLabel;
    Label12: TLabel;
    NoUrut: TEdit;
    NoBukti: TEdit;
    LNamaBrg: TRxLabel;
    LKodeBrg: TLabel;
    KodeBrg: TEdit;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    KodeCust: TEdit;
    Label4: TLabel;
    NoSPP: TEdit;
    Label13: TLabel;
    Tanggal: TDateEdit;
    NoPolKend: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Qnt: TPBNumEdit;
    LSatuan: TLabel;
    Qnt2: TPBNumEdit;
    LSatuan2: TLabel;
    Shape6: TShape;
    LNamaCustSupp: TLabel;
    LAlamatCustSupp: TLabel;
    PanelShow1: TPanel;
    Cetak: TSpeedButton;
    HapusBtn: TSpeedButton;
    KoreksiBtn: TSpeedButton;
    TambahBtn: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Nosat: TComboBox;
    LSatuan1: TLabel;
    Qnt1: TPBNumEdit;
    Label1: TLabel;
    NoSC: TEdit;
    QuBeliNOBUKTI: TStringField;
    QuBeliNOURUT: TStringField;
    QuBeliTANGGAL: TDateTimeField;
    QuBeliKODECUSTSUPP: TStringField;
    QuBeliNamaCustSupp: TStringField;
    QuBeliAlamat: TStringField;
    QuBeliKota: TStringField;
    QuBeliNOSC: TStringField;
    QuBeliNOSPP: TStringField;
    QuBeliNoPolKend: TStringField;
    QuBeliContainer: TStringField;
    QuBeliNoContainer: TStringField;
    QuBeliNoSeal: TStringField;
    QuBeliISCETAK: TBooleanField;
    QuBeliIDUser: TStringField;
    QuBeliURUT: TIntegerField;
    QuBeliKODEBRG: TStringField;
    QuBeliNamaBrg: TStringField;
    QuBeliJns_Kertas: TStringField;
    QuBeliUkr_Kertas: TStringField;
    QuBeliQNT: TBCDField;
    QuBeliQNT2: TBCDField;
    QuBeliSAT_1: TStringField;
    QuBeliSAT_2: TStringField;
    QuBeliNoSat: TIntegerField;
    QuBeliISI: TBCDField;
    QuBeliUrutSPP: TIntegerField;
    frxReport1: TfrxReport;
    frxDBCetak: TfrxDBDataset;
    QuReport: TADOQuery;
    Label6: TLabel;
    Container: TEdit;
    NoContainer: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    NoSeal: TEdit;
    Label3: TLabel;
    NetW: TPBNumEdit;
    GrossW: TPBNumEdit;
    QuBelinetW: TBCDField;
    QuBeliGrossW: TBCDField;
    Label11: TLabel;
    NamaBrg: TMemo;
    QuBeliNamabrgkom: TStringField;
    RekapBrgBtn: TSpeedButton;
    QuBeliGSM: TBCDField;
    Label14: TLabel;
    Catatan: TMemo;
    QuReportLampiran: TADOQuery;
    frxDBCetakLampiran: TfrxDBDataset;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBBandedTableView;
    TvDetailSPB: TcxGridDBBandedTableView;
    cxGrid1Level2: TcxGridLevel;
    tvMasterKODEBRG: TcxGridDBBandedColumn;
    tvMasterNamaBrg: TcxGridDBBandedColumn;
    tvMasterQNT: TcxGridDBBandedColumn;
    tvMasterQNT2: TcxGridDBBandedColumn;
    tvMasterSAT_1: TcxGridDBBandedColumn;
    tvMasterSAT_2: TcxGridDBBandedColumn;
    QuDetailSPB: TADOQuery;
    DSQuDetailSPB: TDataSource;
    QuBeliMykey: TStringField;
    TvDetailSPBNoPallet: TcxGridDBBandedColumn;
    TvDetailSPBNOROLL: TcxGridDBBandedColumn;
    TvDetailSPBNOLOT: TcxGridDBBandedColumn;
    TvDetailSPBNetW: TcxGridDBBandedColumn;
    TvDetailSPBGrossW: TcxGridDBBandedColumn;
    TvDetailSPBkodebrg: TcxGridDBBandedColumn;
    TvDetailSPBNamabrg: TcxGridDBBandedColumn;
    TvDetailSPBSat_1: TcxGridDBBandedColumn;
    TvDetailSPBSat_2: TcxGridDBBandedColumn;
    TvDetailSPBQnt: TcxGridDBBandedColumn;
    TvDetailSPBQnt2: TcxGridDBBandedColumn;
    TvDetailSPBKeterangan: TcxGridDBBandedColumn;
    TvDetailSPBMyKey: TcxGridDBBandedColumn;
    QuDetailSPBurut: TIntegerField;
    QuDetailSPBNOENQDET: TStringField;
    QuDetailSPBUrutENQ: TIntegerField;
    QuDetailSPBNoPallet: TStringField;
    QuDetailSPBNOROLL: TStringField;
    QuDetailSPBNOLOT: TStringField;
    QuDetailSPBNetW: TBCDField;
    QuDetailSPBGrossW: TBCDField;
    QuDetailSPBkodebrg: TStringField;
    QuDetailSPBNamabrg: TStringField;
    QuDetailSPBSat_1: TStringField;
    QuDetailSPBSat_2: TStringField;
    QuDetailSPBQnt: TBCDField;
    QuDetailSPBQnt2: TBCDField;
    QuDetailSPBNosat: TWordField;
    QuDetailSPBISI: TBCDField;
    QuDetailSPBKeterangan: TStringField;
    QuDetailSPBMyKey: TStringField;
    QuBeliCatatan: TStringField;
    Label9: TLabel;
    Label15: TLabel;
    ComboBox1: TComboBox;
    Label18: TLabel;
    Sopir: TEdit;
    QuBeliSopir: TStringField;
    QntSPP: TPBNumEdit;
    QntSPB1: TPBNumEdit;
    QntSPB2: TPBNumEdit;
    SisaSPP: TPBNumEdit;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    QuBeliSatuan: TStringField;
    QuBeliKodegdg: TStringField;
    Label24: TLabel;
    KodeGdg: TEdit;
    QuBeliNFix: TBooleanField;
    tvMasterKodegdg: TcxGridDBBandedColumn;
    Label25: TLabel;
    NoAlamatKirim: TEdit;
    LAlamatKirim: TLabel;
    Shape1: TShape;
    QuBeliNoAlamatKirim: TIntegerField;
    QuBeliNama: TStringField;
    QuBeliAlamat_1: TStringField;
    QuBeliTelp: TStringField;
    QuBeliFax: TStringField;
    Label26: TLabel;
    KodeEXP: TEdit;
    LnamaExp: TLabel;
    LalamatEXP: TLabel;
    Shape2: TShape;
    Label27: TLabel;
    NoResi: TEdit;
    Label28: TLabel;
    JumlahTagihan: TPBNumEdit;
    QuBelikodeExp: TStringField;
    QuBeliNoResi: TStringField;
    QuBeliJumlahTagihan: TBCDField;
    QuBeliNamaEXP: TStringField;
    QuBeliALamat1EXP: TStringField;
    QuBeliALamat2EXP: TStringField;
    QuBeliKotaEXP: TStringField;
    QuBeliFlagTipe: TWordField;
    QuBeliHPP: TBCDField;
    frxCSVExport1: TfrxCSVExport;
    frxBIFFExport1: TfrxBIFFExport;
    frxRTFExport1: TfrxRTFExport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure TampilData(No_Bukti:String);
    procedure UpdateDataBeli(Choice:Char;Kodet:String);
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
    procedure NoSPPExit(Sender: TObject);
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
    procedure CetakClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure NamaBrgEnter(Sender: TObject);
    procedure NamaBrgExit(Sender: TObject);
    procedure RekapBrgBtnClick(Sender: TObject);
    procedure NoUrutExit(Sender: TObject);
    procedure CatatanEnter(Sender: TObject);
    procedure CatatanExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure tvMasterFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure KodeGdgEnter(Sender: TObject);
    procedure KodeGdgExit(Sender: TObject);
    procedure JumlahTagihanEnter(Sender: TObject);
    procedure KodeEXPEnter(Sender: TObject);
    procedure KodeEXPExit(Sender: TObject);
  private
    { Private declarations }
    mUrut, mUrutSPP, MLembarKe, mTotalLembar: Integer;
    mUbahHd, mUbahHdDet, mValid, mExit: Boolean;
    mNilaiEnter, mIsiBrg: Real;
    mSat_1, mSat_2, mStrMsg: String;
    Toleransi, QntSisa, Qnt2Sisa, QntSPB, Qnt2SPB : Real;
    function  CekSudahAdaProsesSelanjutnya: Boolean;
    procedure TampilanQntSatuan(pNilai: Integer);
    procedure TampilIsiBarang;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure UpdatedbBeli;
    procedure IsiNoBuktiBaru;
    procedure TampilIsiSPP;
    procedure TampilIsiGudang;
    procedure TampilIsiExpedisi;
  public
    { Public declarations }
    Sat,XCustSupp : String;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel, xModalKoreksi, xStatus: Boolean;
    Flagmenu,ISPPN : integer;
  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrSPB: TFrSPB;
  TipeTrans,PlusPPN,Nomor,Model:String;
  YY,MM,DD : Word;
  S:array[0..255]of char;
  bm,GBM : TBookmark;

implementation
uses FrmBrows, MyProcedure, MyGlobal, MyModul, FrmMainSPB, FrmSPBKirim;
{$R *.DFM}

procedure TFrSPB.TampilanQntSatuan(pNilai: Integer);
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

function TFrSPB.CekSudahAdaProsesSelanjutnya: Boolean;
var xStrMsg, xStrMsgDet: String;
begin
  xStrMsg:='';
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select  NoBukti from dbinvoicepldet ');
    SQL.Add('where Nospb='+QuotedStr(QuBeliNobukti.AsString)+' and UrutSPB='+IntToStr(QuBeliurut.AsInteger));
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
        xStrMsg:=xStrMsg+'Invoice Penjualan No. Bukti : '+xStrMsgDet
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



procedure TFrSPB.TampilIsiBarang;
begin
  KodeBrows:=40422;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.NoKira:=NoSPP.Text;
  FrBrows.IsiData:=KodeBrg.Text;
  FrBrows.NoKira2 := IntToStr(Flagmenu);
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.FieldByName('KodeBrg').AsString<>'') then
  begin
    with FrBrows.QuBrows do
    begin
      KodeBrg.Text:=FieldByName('KodeBrg').AsString;
      NamaBrg.Text:=FieldByName('NamaBrgkom').AsString;
      Toleransi :=FieldByName('Toleransi').AsFloat;
      mUrutSPP:=FieldByName('Urut').AsInteger;
      mSat_1:=FieldByName('Sat_1').AsString;
      mSat_2:=FieldByName('Sat_2').AsString;
      LNamaBrg.Caption:='[ '+FieldByName('NamaBrg').AsString+' ]'+
                        ' Toleransi : '+FormatFloat(',0.## %',FieldByName('Toleransi').AsFloat*100)+
                        ' Qnt SPP : '+FormatFloat(',0.## ',FieldByName('Qnt').AsFloat)+mSat_1+', '+
                        ' Qnt Max SPB : '+FormatFloat(',0.## ',FieldByName('Qnt').AsFloat+(FieldByName('QntSPB').AsFloat*FieldByName('Toleransi').AsFloat))+mSat_1;
      mIsiBrg:=FieldByName('Isi').AsFloat;
      LSatuan2.Caption:='[ '+mSat_2+' ]';
      LSatuan1.Caption:='[ '+mSat_1+' ]';
      Qnt2.Value:=FieldByName('Qnt2Sisa').AsFloat;
      Qnt1.Value:=FieldByName('QntSisa').AsFloat;
      Qnt2Sisa:=FieldByName('Qnt2').AsFloat;
      QntSisa:=FieldByName('Qnt').AsFloat;
      Qnt2SPB := FieldByName('Qnt2SPB').AsFloat;
      QntSPB := FieldByName('QntSPB').AsFloat;
      QntSPP.Value := FieldByName('Qnt').AsFloat+(FieldByName('Qnt').AsFloat*Toleransi);
      QntSPB1.Value := FieldByName('QntSPB').AsFloat;
      QntSPB2.Value := Qnt1.Value;
      SisaSPP.Value := QntSPP.Value-(QntSPB1.Value+QntSPB2.Value);
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
      NetW.Value:=FieldByName('Netw').AsFloat;
      GrossW.Value:=FieldByName('GrossW').AsFloat;
    end;
  end
  else
    ActiveControl:=KodeBrg;
end;

procedure TFrSPB.TampilIsiSPP;
begin
     KodeBrows:=40421;
     Application.CreateForm(TFrBrows, FrBrows);
     FrBrows.IsiData:=NoSPP.Text;
     FrBrows.NoKira := IntToStr(Flagmenu);
     FrBrows.ShowModal;
     if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.FieldByName('NoBukti').AsString<>'') then
     begin
       with FrBrows.QuBrows do
       begin
         NoSPP.Text:=FieldByName('NoBukti').AsString;
         KodeCust.Text:=FieldByName('KodeCustSupp').AsString;
         LNamaCustSupp.Caption:=FieldByName('NamaCustSupp').AsString;
         LAlamatCustSupp.Caption:=FieldByName('Alamat').AsString+chr(13)+FieldByName('Kota').AsString;
         NoSC.Text:=FieldByname('NoSO').AsString;
         Catatan.Lines.Text :=FieldByName('Catatan').AsString;
       end;
     end
     else ActiveControl:=NoSPP;
end;

procedure TFrSPB.TampilTombolDetail(pNilai: Boolean);
begin
 //PanelShow1.Visible:=not pNilai;
  //PanelShow2.Visible:=not pNilai;
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  //Panel3.Enabled:=pNilai;
end;

procedure TFrSPB.UpdatedbBeli;
begin
  if (not QuBeli.IsEmpty) and (mUbahHd=True) then
  begin
    with QuUpdatedbBeli do
    begin
       Close;
       Sql.Clear;
       if Flagmenu=0 then
          SQL.Add('Update dbSPB')
       else
          SQL.Add('Update dbSPBBHN');
       SQL.Add('Set Tanggal=:0, NoSPP=:1, NoPolKend=:2, Container=:3, NoContainer=:4, NoSeal=:5, KodeCustSupp=:6, Catatan=:7, Sopir=:8, ');
       SQl.add('    KodeExp=:9, NoResi=:10,JumlahTagihan=:11');
       SQL.Add('Where NoBukti='+QuotedStr(NoBukti.Text));
       Prepared;
       Parameters[0].Value := Tanggal.Date;
       Parameters[1].Value := NoSPP.Text;
       Parameters[2].Value := NoPolKend.Text;
       Parameters[3].Value := Container.Text;
       Parameters[4].Value := NoContainer.Text;
       Parameters[5].Value := NoSeal.Text;
       Parameters[6].Value := KodeCust.Text;
       Parameters[7].Value := Catatan.Text;
       Parameters[8].Value := Sopir.Text;
       Parameters[9].Value := KodeEXP.Text;
       Parameters[10].Value := NoResi.Text;
       Parameters[11].Value := JumlahTagihan.Value;
       try
         ExecSQL;
       except
       end;
       mUbahHd:=False; mUbahHdDet:=False;
    end;
    TampilData(NoBukti.Text);
  end;
end;

procedure TFrSPB.TampilData(No_Bukti:String);
begin
  QuBeli.Close;
  QuBeli.SQL.Strings[2]:='select @NoBukti='+QuotedStr(No_Bukti);
  QuBeli.Open;

end;

procedure TFrSPB.IsiNoBuktiBaru;
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

Function TFrSPB.CheckFormMaster:boolean;
begin
   CheckFormMaster:=true;
end;

procedure TFrSPB.ClearPanelDetail;
begin
   KodeBrg.Text:='';
   LNamaBrg.Caption:='[ . . . ]';
   LSatuan2.Caption:='[ . . . ]';
   LSatuan1.Caption:='[ . . . ]';
   LSatuan.Caption:='[ . . . ]';
   Qnt.AsFloat:=0.00;
   Qnt2.AsFloat:=0.00;
   Qnt1.AsFloat:=0.00;
   QntSPP.Value := 0.00;
   QntSPB1.Value := 0.00;
   QntSPB2.Value := 0.00;
   SisaSPP.Value := 0.00;
end;

procedure TFrSPB.RefreshAll;
var i:integer;
begin
   mValid:=False;
   mUbahHd:=False; mUbahHdDet:=False;
   {for i:= 0 to Panel1.ControlCount-1 do
   begin
      if (Panel1.Controls[i] is TEdit) then
         (Panel1.Controls[i] as TEdit).Clear;
   end;}
   for i:= 0 to Panel3.ControlCount-1 do
   begin
      if (Panel3.Controls[i] is TEdit) then
         (Panel3.Controls[i] as TEdit).Clear;
      if (Panel3.Controls[i] is TPBNumEdit) then
         (Panel3.Controls[i] as TPBNumEdit).Clear;
   end;
   //LNamaCustSupp.Caption:='';
   //LAlamatCustSupp.Caption:='';
   ClearPanelDetail;
end;

procedure TFrSPB.UpdateDataBeli(Choice:Char;Kodet:String);
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
      Parameters[12].Value:=QuBeliURUT.AsInteger;
    end
    else
    begin
      Parameters[3].Value:=NoUrut.Text;
      Parameters[4].Value:=Tanggal.Date;
      Parameters[5].Value:=NoSPP.Text;
      Parameters[6].Value:=KodeCust.Text;
      Parameters[7].Value:=NoPolKend.Text;
      Parameters[8].Value:=Container.Text;
      Parameters[9].Value:=NoContainer.Text;
      Parameters[10].Value:=NoSeal.Text;
      Parameters[11].Value:=Catatan.Text;
      Parameters[12].Value:=mUrut;
      Parameters[13].Value:=mUrutSPP;
      Parameters[14].Value:=KodeBrg.Text;
      if Nosat.Visible then
      begin
        Case Nosat.ItemIndex of
          1: begin
               Parameters[15].Value:=Qnt.AsFloat;
               Parameters[16].Value:=Qnt.AsFloat/mIsiBrg;
             end;
          2: begin
               Parameters[15].Value:=Qnt.AsFloat*mIsiBrg;
               Parameters[16].Value:=Qnt.AsFloat;
             end
        end;
      end
      else
      begin
        Parameters[15].Value:=Qnt1.AsFloat;
        Parameters[16].Value:=Qnt2.AsFloat;
      end;
      Parameters[17].Value:=mSat_1;
      Parameters[18].Value:=mSat_2;
      Parameters[19].Value:=Nosat.ItemIndex;
      Parameters[20].Value:=mIsiBrg;
      Parameters[21].Value:=NetW.Value;
      Parameters[22].Value:=GrossW.Value;
      Parameters[23].Value:=IDUser;
      if QuBeli.IsEmpty then
        Parameters[24].Value:=0
      else
        Parameters[24].Value:=1;
      Parameters[25].Value:=NamaBrg.Text;
      Parameters[26].Value:=Sopir.Text;
    end;
    Parameters[27].Value:=Kodegdg.text;
    Parameters[28].Value:=KodeEXP.Text;
    Parameters[29].Value:=NoResi.Text;
    Parameters[30].Value:=JumlahTagihan.Value;
    Parameters[31].Value:=IsPPN;
    Parameters[32].Value:=QuBeliHPP.AsFloat ;
    try
      ExecProc;
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

Procedure TFrSPB.AmBilDataBeli;
begin
   if not QuBeli.IsEmpty then
   begin
      NoBukti.Text:=QuBeliNOBUKTI.AsString;
      Tanggal.Date:=QuBeliTanggal.AsDateTime;
      KodeCust.Text:=QuBeliKODECUSTSUPP.AsString;
      LNamaCustSupp.Caption:=QuBeliNamaCustSupp.AsString;
      LAlamatCustSupp.Caption:=QuBeliAlamat.AsString+chr(13)+QuBeliKota.AsString;
      NoSC.Text:=QuBeliNOSC.Text;
      NoSPP.Text:=QuBeliNOSPP.AsString;
      NoPolKend.Text:=QuBeliNoPolKend.AsString;
      Container.Text:=QuBeliContainer.AsString;
      NoContainer.Text:=QuBeliNoContainer.AsString;
      NoSeal.Text:=QuBeliNoSeal.AsString;
      Catatan.Text := QuBeliCatatan.AsString;
      Sopir.Text := QuBeliSopir.Value;
      try
        NoAlamatKirim.Text := IntToStr(QuBeliNoAlamatKirim.AsInteger);
        LAlamatKirim.Caption := QuBeliNama.AsString+chr(13)+
                                QuBeliAlamat_1.AsString;
      except
        NoAlamatKirim.Text := '';
        LAlamatKirim.Caption:='';
      end;
      KodeEXP.Text:=QuBelikodeExp.AsString;
      LnamaExp.Caption := QuBeliNamaEXP.AsString;
      LalamatEXP.Caption:=QuBeliALamat1EXP.AsString+#13+QuBeliALamat2EXP.AsString+#13+QuBeliKotaEXP.AsString;
      NoResi.Text := QuBeliNoResi.AsString;
      JumlahTagihan.Value:=QuBeliJumlahTagihan.AsFloat;
   end;
end;

// PROCEDURE DAN FUNCTION MILIK DELPHI

procedure TFrSPB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if mExit=true then
  begin
     FrMainSPB.ToolButton10.Click;
     Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
     Action:=cafree;
  end
  else
  begin
     Action:=caNone;
  end;
end;

procedure TFrSPB.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then SendMessage(Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrSPB.FormShow(Sender: TObject);
begin
  RefreshAll;
  xModalKoreksi:=FrMainSPB.ModalKoreksi;
  Flagmenu := FrMainSPB.mMainSPB_FlagMenu;
  If xModalKoreksi = False then
  begin
    IsiNoBuktiBaru;
    TampilData(NoBukti.Text);
    NoSPP.Text:=gTempNoBukti;
    mValid:=True;
    NoSPPExit(NoSPP);
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

procedure TFrSPB.FormCreate(Sender: TObject);
begin
  TipeTrans:='SPB';
  Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
  {Qnt2.Top:=Qnt.Top;
  Qnt2.Left:=Qnt.Left;
  LSatuan2.Top:=Qnt2.Top+4;
  LSatuan2.Left:=Qnt2.Left+Qnt2.Width+8;
  Qnt1.Top:=Qnt2.Top;
  Qnt1.Left:=Qnt2.Left+Qnt2.Width+70;
  LSatuan1.Top:=Qnt1.Top+4;
  LSatuan1.Left:=Qnt1.Left+Qnt1.Width+8;}
end;

procedure TFrSPB.KoreksiBtnClick(Sender: TObject);
begin
    mValid:=false;
    Model:='koreksi';
    // data yang di update
    if QuBeli.IsEmpty=false then
    begin
      TampilTombolDetail(True);

      mUrut:=QuBeliURUT.AsInteger;
      mUrutSPP:=QuBeliUrutSPP.AsInteger;
      NamaBrg.Text:=QuBeliNamaBrgKom.AsString;
      KodeBrg.Text:=QuBeliKODEBRG.AsString;
      DataBersyarat('Declare @nobukti varchar(50), @Kodebrg varchar(50) Select @nobukti=:0, @kodebrg=:1 '+
                       ' Select A.KODEBRG, B.NAMABRG, A.Namabrg Namabrgkom, A.Qnt2Sisa, A.Sat_2, A.QntSisa, A.Sat_1, A.Isi, A.NoBukti, A.Urut, A.Nosat, 0.00 Toleransi, A.Qnt, A.Qnt2, A.QntSPB, A.Qnt2SPB '+
                       ' from vwOutSPP A left outer join dbBarang B on B.KodeBrg=A.KodeBrg '+
                       ' left Outer join dbSPP c on c.nobukti=a.nobukti '+
                       ' where A.NoBukti=@nobukti and A.KodeBrg=@kodebrg '+
                       ' order by A.KodeBrg ',
      [NOSPP.Text,KodeBrg.Text], DM.QuCari);
      with DM.QuCari do
      begin
        Toleransi :=FieldByName('Toleransi').AsFloat;
        Qnt2Sisa := FieldByName('Qnt2').AsFloat;
        QntSisa:=FieldByName('Qnt').AsFloat;
        Qnt2SPB := FieldByName('Qnt2SPB').AsFloat-QuBeliQNT2.Value;
        QntSPB:=FieldByName('QntSPB').AsFloat-QuBeliQNT.Value;
        QntSPP.Value := FieldByName('Qnt').AsFloat+(FieldByName('Qnt').AsFloat*Toleransi);
        QntSPB1.Value := FieldByName('QntSPB').AsFloat-QuBeliQNT.Value;
        QntSPB2.Value := QuBeliQNT.Value;
        SisaSPP.Value := QntSPP.Value-(QntSPB1.Value+QntSPB2.Value);
      end;
      KodeBrg.Enabled:=False;
      LSatuan2.Caption:='[ '+QuBeliSat_2.AsString+' ]';
      mSat_2:=QuBeliSat_2.AsString;
      LSatuan1.Caption:='[ '+QuBeliSat_1.AsString+' ]';
      mSat_1:=QuBeliSat_1.AsString;
      mIsiBrg:=QuBeliIsi.AsFloat;
      LNamaBrg.Caption:='[ '+Qubeli.FieldByName('NamaBrg').AsString+' ]'+
                            ' Toleransi : '+FormatFloat(',0.## %',Toleransi*100)+
                            ' Qnt SPP : '+FormatFloat(',0.## ',QntSisa)+mSat_1+', '+
                            ' Qnt Max SPB : '+FormatFloat(',0.## ',QntSisa+(QntSisa*Toleransi))+mSat_1;
      Qnt2.Value:=QuBeliQnt2.AsFloat;
      Qnt1.Value:=QuBeliQnt.AsFloat;
      Nosat.Items.Clear;
      Nosat.Items.Add('Pilih Satuan');
      Nosat.Items.Add(mSat_1);
      Nosat.Items.Add(mSat_2);
      Nosat.ItemIndex := QuBeliNosat.AsInteger;
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
      NetW.Value:=QuBelinetW.AsFloat;
      GrossW.Value:=QuBeliGrossW.AsFloat;
      kodegdg.Text := QuBeliKodegdg.Value;
      Qnt1.ReadOnly := Not QuBeliNFix.Value;
      if Qnt.CanFocus then
        Qnt.SetFocus;
      if Qnt2.CanFocus then
        Qnt2.SetFocus;

    end
    else
    begin
      MsgKoreksiDataKosong;
      ActiveControl:=cxGrid1;
    end;
end;

procedure TFrSPB.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
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
    FrMainSPB.GetData(strtoint(PeriodBln),StrToInt(PeriodThn));
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

procedure TFrSPB.HapusBtnClick(Sender: TObject);
begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      if QuBeli.IsEmpty=true then
      begin
        MsgHapusDataKosong;
        ActiveControl:=cxGrid1;
      end else
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
    end
    else
    begin
      MsgPeriodeSudahDikunci;
      ActiveControl:=cxGrid1;
    end;
end;

procedure TFrSPB.wwDBGrid1Enter(Sender: TObject);
begin
  FrSPB.KeyPreview:=False;
end;

procedure TFrSPB.wwDBGrid1Exit(Sender: TObject);
begin
  FrSPB.KeyPreview:=True;
end;

procedure TFrSPB.NoUrutKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_Return then
  begin
    {If Length(NoUrut.Text)<5 then
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
    end; }
  end
  else if Key=Vk_Escape then
  begin
    mExit := True;
    Close;
  end;
end;

procedure TFrSPB.BitBtn1Click(Sender: TObject);
var IsLanjut : Boolean;
    Pesan : string;
begin
  IsLanjut := False;
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
            if (Nosat.ItemIndex=1) then
               IsLanjut := RoundTo(Qnt1.Value+QntSPB,-2)<=RoundTo(QntSisa+(QntSisa*Toleransi),-2)
            else
               IsLanjut:= RoundTo(Qnt2.Value+Qnt2SPB,-2)<=RoundTo(Qnt2Sisa,-2);
            if IsLanjut then
            begin
                UpdateDataBeli('I','BL');
                ClearPanelDetail;
            end
            else
            begin
              Case Nosat.ItemIndex of
                1 : Pesan := 'Qnt tidak boleh Melebihi '+FormatFloat(',0.##',QntSPP.Value)+' '+mSat_1;
                2 : Pesan := 'Qnt tidak boleh Melebihi '+FormatFloat(',0.##',Qnt2Sisa)+' '+mSat_2;
              end;
              MessageDlg(Pesan,mtWarning,[mbok],0);
            end;
            ActiveControl:=Kodebrg;
          end
          else if model='koreksi' then
          begin
            if (Nosat.ItemIndex=1) then
               IsLanjut := RoundTo(Qnt1.Value+QntSPB,-2)<=RoundTo(Qntspp.Value,-2)
            else
               IsLanjut:= RoundTo(Qnt2.Value+Qnt2SPB,-2)<=RoundTo(Qnt2Sisa,-2);
            if IsLanjut then
            begin
              UpdateDataBeli('U','BL');
              SpeedButton1.Click;
            end
            else
            begin
              Case Nosat.ItemIndex of
                1 : Pesan := 'Qnt tidak boleh Melebihi '+FormatFloat(',0.##',QntSPP.Value)+' '+mSat_1;
                2 : Pesan := 'Qnt tidak boleh Melebihi '+FormatFloat(',0.##',Qnt2Sisa)+' '+mSat_2;
              end;
              MessageDlg(Pesan,mtWarning,[mbok],0);
              ActiveControl := Qnt2;
            end;
          end;
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

procedure TFrSPB.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  TampilTombolDetail(False);
  ActiveControl:=cxGrid1;
  ClearPanelDetail;
end;

procedure TFrSPB.FormDestroy(Sender: TObject);
begin
  FrSPB:=nil;
end;

procedure TFrSPB.dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
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

procedure TFrSPB.NoUrutChange(Sender: TObject);
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

procedure TFrSPB.KodeBrgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrSPB.NoUrutEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrSPB.NoSPPExit(Sender: TObject);
begin
  if mValid Then
  begin
    if Length(NoSPP.Text)=0 then TampilIsiSPP else
    begin
      if DataBersyarat(' Select distinct A.NoBukti, B.Tanggal, B.NoSO, B.KodeCustSupp, C.NamaCust NamaCustSupp, C.Alamat, C.kodekota Kota, A.Catatan '+
                    ' from vwOutSpp A '+
                    ' left outer join (Select x.NoBukti,o.Tanggal,x.Noso, z.Kodecust Kodecustsupp, o.IsFlag '+
                    '                  from dbSPPDet x '+
                    '                       left outer join dbSO z on z.Nobukti=x.NoSO '+
                    '                       left outer join dbSPP o on o.NoBukti=x.NoBukti '+
                    '                  group by x.Nobukti,o.Tanggal,z.Kodecust, o.IsFlag, x.NOSO) B on B.NoBukti=A.NoBukti '+
                    ' left outer join vwBrowsCustomer C on C.KodeCust=B.KodeCustSupp '+
                    ' left Outer join (Select NospB, UrutSPB from dbInvoicePLDet) D on D.NoSPB=A.NoBukti  and D.UrutSPB=A.Urut '+
                    ' where B.NoBukti=:0 and (D.NoSPB is null and D.UrutSPB is null) '+
                    ' order by B.Tanggal, A.NoBukti',
                       [NoSPP.Text],DM.QUCari)=True then
      begin
        with DM.QuCari do
        begin
          NoSPP.Text:=FieldByName('NoBukti').AsString;
          KodeCust.Text:=FieldByName('KodeCustSupp').AsString;
          LNamaCustSupp.Caption:=FieldByName('NamaCustSupp').AsString;
          LAlamatCustSupp.Caption:=FieldByName('Alamat').AsString+chr(13)+FieldByName('Kota').AsString;
          NoSC.Text:=FieldByName('NoSO').AsString;
          Catatan.Lines.Text :=FieldByName('Catatan').AsString;
        end;
      end
      else TampilIsiSPP;
    end;
  end;
end;

procedure TFrSPB.KodeBrgExit(Sender: TObject);
begin
  if mValid Then
  begin
    if Length(KodeBrg.Text)=0 then TampilIsiBarang else
    begin
      if DataBersyarat('Declare @nobukti varchar(50), @Kodebrg varchar(50) Select @nobukti=:0, @kodebrg=:1 '+
                       ' Select A.KODEBRG, B.NAMABRG, A.Namabrg Namabrgkom, A.Qnt2Sisa, A.Sat_2, A.QntSisa, A.Sat_1, A.Isi, A.NoBukti, A.Urut, A.Nosat, A.Toleransi, A.Qnt, A.Qnt2,A.QntSPB, A.Qnt2SPB '+
                       ' from vwOutSPP A left outer join dbBarangJadi B on B.KodeBrg=A.KodeBrg '+
                       ' left Outer join dbSPP c on c.nobukti=a.nobukti '+
                       ' where A.NoBukti=@nobukti and A.KodeBrg=@kodebrg and C.IsFlag='+IntToStr(Flagmenu)+
                       ' union '+
                       ' Select A.KODEBRG, B.NAMABRG, A.Namabrg Namabrgkom, A.Qnt2Sisa, A.Sat_2, A.QntSisa, A.Sat_1, A.Isi, A.NoBukti, A.Urut, A.Nosat, A.Toleransi, A.Qnt, A.Qnt2,A.QntSPB, A.Qnt2SPB '+
                       ' from vwOutSPP A left outer join dbBarang B on B.KodeBrg=A.KodeBrg '+
                       ' left Outer join dbSPPBHN c on c.nobukti=a.nobukti '+
                       ' where A.NoBukti=@nobukti and A.KodeBrg=@kodebrg and C.IsFlag='+IntToStr(Flagmenu)+
                       ' order by A.KodeBrg ',
      [NOSPP.Text,KodeBrg.Text], DM.QuCari)=True then
      begin
        with DM.QuCari do
        begin
          KodeBrg.Text:=FieldByName('KodeBrg').AsString;
          NamaBrg.Text :=FieldByName('NamaBrgKom').AsString;
          Toleransi :=FieldByName('Toleransi').AsFloat;
          mSat_1:=FieldByName('Sat_1').AsString;
          mSat_2:=FieldByName('Sat_2').AsString;
          mIsiBrg:=FieldByName('Isi').AsFloat;
          LNamaBrg.Caption:='[ '+FieldByName('NamaBrg').AsString+' ]'+
                            ' Toleransi : '+FormatFloat(',0.## %',FieldByName('Toleransi').AsFloat*100)+
                            ' Qnt SPP : '+FormatFloat(',0.## ',FieldByName('Qnt').AsFloat)+mSat_1+', '+
                            ' Qnt Max SPB : '+FormatFloat(',0.## ',FieldByName('Qnt').AsFloat+(FieldByName('Qnt').AsFloat*FieldByName('Toleransi').AsFloat))+mSat_1;
          mUrutSPP:=FieldByName('Urut').AsInteger;
          QntSPP.Value := FieldByName('Qnt').AsFloat+(FieldByName('Qnt').AsFloat*Toleransi);
          QntSPB1.Value := FieldByName('QntSPB').AsFloat;
          QntSPB2.Value := Qnt1.Value;
          SisaSPP.Value := QntSPP.Value-(QntSPB1.Value+QntSPB2.Value);

          LSatuan2.Caption:='[ '+mSat_2+' ]';
          LSatuan1.Caption:='[ '+mSat_1+' ]';
          Qnt2.Value:=FieldByName('Qnt2Sisa').AsFloat;
          Qnt1.Value:=FieldByName('QntSisa').AsFloat;
          Qnt2Sisa := FieldByName('Qnt2').AsFloat;
          QntSisa := FieldByName('Qnt').AsFloat;
          Qnt2SPB := FieldByName('Qnt2SPB').AsFloat;
          QntSPB := FieldByName('QntSPB').AsFloat;
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

procedure TFrSPB.TambahBtnClick(Sender: TObject);
begin
  model:='write';
  TampilTombolDetail(True);
  ClearPanelDetail;
  KodeBrg.Enabled:=True;
  ActiveControl:=KodeBrg;
end;

procedure TFrSPB.KodeBrgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
    SpeedButton1.Click;
end;

procedure TFrSPB.Qnt2Change(Sender: TObject);
begin
  if mValid then
  begin
    Qnt1.Value:=Qnt2.Value*mIsiBrg;
    QntSPB2.Value := Qnt1.Value;
    SisaSPP.Value := QntSPP.Value-(QntSPB1.Value+QntSPB2.Value);
  end;
end;

procedure TFrSPB.TanggalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
  begin
      if //(Sender=Tanggal) and
      (CekPeriode(IDUser,TANGGAL.Date)=False) then
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

procedure TFrSPB.TanggalChange(Sender: TObject);
begin
  if mValid then
  begin
    mUbahHd:=True;
  end;
end;

procedure TFrSPB.TanggalExit(Sender: TObject);
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

procedure TFrSPB.NosatEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrSPB.NosatChange(Sender: TObject);
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

procedure TFrSPB.CetakClick(Sender: TObject);
var LembarKe : string;
    i,j : Integer;
begin
  Case ComboBox1.ItemIndex of
    0 : begin
          {InputQuery('Cetak Berapa Lembar ? ','Lembar : ',LembarKe);
          if Length(LembarKe)=0 then
             j := 0
          else
             j := StrToInt(LembarKe); }
          frxDBcetak.DataSet.Close;
          QuReport.Close;
          frxDBcetak.DataSet := QuReport;
          with QuReport do
          begin
            close;
            sql.Clear;
            sql.Add('select * from vwcetakspb');
            sql.Add('where nobukti =:0 and NoSPP=:1 Order by urut');
            Parameters[0].Value :=NoBukti.text;
            Parameters[1].Value :=NoSPP.Text;
            open;
          end;
          with frxReport1 do

          begin
           LoadFromFile(CurrDir+'nota\NotaBBKBJ.fr3');
           ShowReport;
          end;

          {frxDBCetakLampiran.DataSet.Close;
          QuReportLampiran.Close;
          frxDBCetakLampiran.DataSet := QuReportLampiran;

          with QuReportLampiran do
          begin
            close;
            sql.Clear;
            sql.Add('select * from vwcetakspbLampiran');
            sql.Add('where nobukti =:0 and nospp=:1 order by nobukti,UrutSPB');
            Parameters[0].Value :=NoBukti.text;
            open;
          end;

          frxDBCetak.DataSet.Open;
          frxDBCetakLampiran.DataSet.Open;
          with frxReport1 do
          begin
            mTotalLembar:=J;
            //for I := 1 to J do
            begin
              MLembarKe := I;
              LoadFromFile(CurrDir+'nota\NotaMarketingSJ.fr3');
              //if MLembarKe>1 then
              begin
                PrepareReport;
                PrintOptions.ShowDialog := False;
                //Print;
              end;
              //else
              ShowReport;
            end;
          end; }
        end;
    1 : begin
          {frxDBcetak.DataSet.Close;
          frxDBcetak.DataSet := QuReport;
          with QuReport do
          begin
            close;
            sql.Clear;
            sql.Add('select * from vwcetakspb');
            sql.Add('where nobukti =:0');
            Parameters[0].Value :=NoBukti.text;
            open;
          end;
          frxDBCetak.DataSet.open;
          with frxReport1 do
          begin
            LoadFromFile(CurrDir+'nota\notaBPBJ.fr3');
            ShowReport;
          end;}

        {frxDBCetakLampiran.DataSet.Close;
          QuReportLampiran.Close;
          frxDBCetakLampiran.DataSet := QuReportLampiran;

          with QuReportLampiran do
          begin
            close;
            sql.Clear;
            sql.Add('select * from vwcetakspbLampiran');
            sql.Add('where nobukti =:0 and nospp=:1 order by nobukti,UrutSPB');
            Parameters[0].Value :=NoBukti.text;
            open;
          end;    }
          {with QuReport do
          begin
            close;
            sql.Clear;
            sql.Add('select * from vwcetakspb');
            sql.Add('where nobukti =:0 and NoSPP=:1 Order by urut');
            Parameters[0].Value :=NoBukti.text;
            Parameters[1].Value :=NoSPP.Text;
            open;
          end;          
          with frxReport1  do
          begin
           LoadFromFile(CurrDir+'nota\notaBPBJ.fr3');
           ShowReport;

          end;  }
         frxDBCetakLampiran.DataSet.Close;
          QuReport.Close;
          //frxDBcetak.DataSet := QuReport;
          frxDBCetakLampiran.DataSet := QuReportLampiran;
          with QuReportLampiran do
          begin
            close;
            sql.Clear;
            sql.Add('select distinct * from vwCetakSpbLampiran');
            sql.Add('where nospb =:0');
            Parameters[0].Value :=NoBukti.text;
            open;
          end;
          frxDBCetakLampiran.DataSet.open;
          with frxReport1 do
          begin
            LoadFromFile(CurrDir+'nota\notaBPBJ.fr3');
            ShowReport;
          end;
        end;
  end;
end;

procedure TFrSPB.SpeedButton8Click(Sender: TObject);
var LembarKe : string;
    i,j : Integer;
begin
  Case ComboBox1.ItemIndex of
    0 : begin
          {InputQuery('Cetak Berapa Lembar ? ','Lembar : ',LembarKe);
          if Length(LembarKe)=0 then
             j := 0
          else
             j := StrToInt(LembarKe);}
          frxDBcetak.DataSet.Close;
          QuReport.Close;
          frxDBcetak.DataSet := QuReport;
          with QuReport do
          begin
            close;
            sql.Clear;
            sql.Add('select * from vwcetakspb');
            sql.Add('where nobukti =:0 Order by urut');
            Parameters[0].Value :=NoBukti.text;
            open;
          end;

          frxDBCetakLampiran.DataSet.Close;
          QuReportLampiran.Close;
          frxDBCetakLampiran.DataSet := QuReportLampiran;

          with QuReportLampiran do
          begin
            close;
            sql.Clear;
            sql.Add('select * from vwcetakspbLampiran');
            sql.Add('where nobukti =:0 order by nobukti,UrutSPB');
            Parameters[0].Value :=NoBukti.text;
            open;
          end;

          frxDBCetak.DataSet.Open;
          frxDBCetakLampiran.DataSet.Open;
          with frxReport1 do
          begin
            //for I := 1 to J do
            begin
              MLembarKe := I;
              LoadFromFile(CurrDir+'nota\NotaBBKBJ.fr3');
              //if MLembarKe>1 then
              begin
                PrepareReport;
                PrintOptions.ShowDialog := False;
                //Print;
              end;
              //else
              DesignReport;
            end;
          end;
        end;
    1 : begin
          frxDBcetak.DataSet.Close;
          frxDBcetak.DataSet := QuReport;
          with QuReport do
          begin
            close;
            sql.Clear;
            sql.Add('select * from vwcetakspb');
            sql.Add('where nobukti =:0');
            Parameters[0].Value :=NoBukti.text;
            open;
          end;
          frxDBCetak.DataSet.open;
          with frxReport1 do
          begin
            LoadFromFile(CurrDir+'nota\notaBPBJ.fr3');
            DesignReport;
          end;
        end;
  end;
end;

procedure TFrSPB.NamaBrgEnter(Sender: TObject);
begin
  KeyPreview := false;
end;

procedure TFrSPB.NamaBrgExit(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TFrSPB.RekapBrgBtnClick(Sender: TObject);
begin
  if not QuBeli.IsEmpty then
  begin
    Application.CreateForm(TFrSPBKirim,FrSPBKirim);
    FrSPBKirim.ShowModal
  end
  else
  begin
    MsgTglKirimDataKosong;
    ActiveControl := cxGrid1
  end;
end;

procedure TFrSPB.NoUrutExit(Sender: TObject);
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
      If Not Daftar_Nomor(TipeTrans,Nourut.Text,NoBukti.Text,isMax) then
      begin
        MessageDlg('Nomor : '+NOBUKTI.Text+' telah digunakan oleh '+MyUser+'.',mtWarning,[MbOk],0);
        ActiveControl := NoUrut;
      end;
    end;
  end;
end;

procedure TFrSPB.CatatanEnter(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TFrSPB.CatatanExit(Sender: TObject);
begin
  if mValid then
  begin
    if (CekPeriode(IDUser,TANGGAL.Date)=False) then
          Abort;
        UpdatedbBeli;
  end;
  KeyPreview := True;
end;

procedure TFrSPB.SpeedButton2Click(Sender: TObject);
begin
  frxDBcetak.DataSet.Close;
  frxDBcetak.DataSet := QuReport;
  with QuReport do
  begin
    close;
    sql.Clear;
    sql.Add('select * from vwCetakSpbLampiran');
    sql.Add('where nobukti =:0');
    Parameters[0].Value :=NoBukti.text;
    open;
  end;
  frxDBCetak.DataSet.open;
  with frxReport1 do
  begin
    LoadFromFile(CurrDir+'nota\notaBASTB.fr3');
    ShowReport;
  end;
  
end;

procedure TFrSPB.SpeedButton3Click(Sender: TObject);
begin
  frxDBcetak.DataSet.Close;
  frxDBcetak.DataSet := QuReport;
  with QuReport do
  begin
    close;
    sql.Clear;
    sql.Add('select * from vwcetakspb');
    sql.Add('where nobukti =:0');
    Parameters[0].Value :=NoBukti.text;
    open;
  end;
  frxDBCetak.DataSet.open;
  with frxReport1 do
  begin
    LoadFromFile(CurrDir+'nota\notaBPBJ.fr3');
    designreport;
  end;
end;

procedure TFrSPB.tvMasterFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  with QuDetailSPB do
  begin
    close;
    open;
  end;
end;

procedure TFrSPB.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
  if VarName='LembarKe' then
     Value := MLembarKe;
  if VarName='TotalLembar' then
     Value := mTotalLembar;
  if CompareText(varName,'iduser')=0 then
        value:=IDUser;
end;

procedure TFrSPB.KodeGdgEnter(Sender: TObject);
begin
  mValid := true;
end;

procedure TFrSPB.TampilIsiGudang;
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

procedure TFrSPB.KodeGdgExit(Sender: TObject);
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

procedure TFrSPB.JumlahTagihanEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrSPB.KodeEXPEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrSPB.TampilIsiExpedisi;
begin
  KodeBrows:=10143;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeEXP.Text;
  FrBrows.NoKira:='HT';
  FrBrows.EditFilter.Text:=Kodeexp.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    with FrBrows.QuBrows do
    begin
      KodeExp.Text:=fieldbyname('KodeCustsupp').AsString;
      LnamaExp.Caption:=fieldbyname('NamaCust').AsString;
      //LAlamatExp.Caption:=fieldbyname('Alamat1').AsString+#13+fieldbyname('Alamat2').AsString+#13+fieldbyname('Kota').AsString;

    end;
  end else
    ActiveControl:=KodeExp;
end;

procedure TFrSPB.KodeEXPExit(Sender: TObject);
begin
  if mValid Then
  begin
    if KodeEXP.Text='-' then
    begin
      LnamaExp.Caption:='';
      LalamatEXP.Caption :='';
      NoResi.Text:='';
      JumlahTagihan.Value:=0;
    end
    else
    if length(KodeEXP.Text)=0 then TampilIsiExpedisi else
    begin
      if DataBersyarat('select Kodeexp,NamaExp, Alamat1, alamat2, Kota from dbexpedisi'+
                        ' where kodeexp=:0'
                        ,[kodeexp.text],Dm.Qucari)=true then
      begin
        with DM.QuCari do
        begin
           KodeExp.Text:=fieldbyname('KodeExp').AsString;
           LnamaExp.Caption:=fieldbyname('NamaEXP').AsString;
           LAlamatExp.Caption:=fieldbyname('Alamat1').AsString+#13+fieldbyname('Alamat2').AsString+#13+fieldbyname('Kota').AsString;

        end;
      end
      else TampilIsiExpedisi;
    end;
  end;
end;

end.
