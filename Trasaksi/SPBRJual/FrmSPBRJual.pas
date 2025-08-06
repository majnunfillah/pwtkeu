unit FrmSPBRJual;

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
  cxGridLevel, cxGrid;

type
  TFrSPBRJual = class(TForm)
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
    NoPNJ: TEdit;
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
    Label11: TLabel;
    NamaBrg: TMemo;
    RekapBrgBtn: TSpeedButton;
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
    tvMasterKODEBRG: TcxGridDBBandedColumn;
    tvMasterNamaBrg: TcxGridDBBandedColumn;
    tvMasterQNT: TcxGridDBBandedColumn;
    tvMasterSAT_1: TcxGridDBBandedColumn;
    QuDetailSPB: TADOQuery;
    DSQuDetailSPB: TDataSource;
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
    Label9: TLabel;
    Label15: TLabel;
    ComboBox1: TComboBox;
    Label18: TLabel;
    Sopir: TEdit;
    QuBeliNOBUKTI: TStringField;
    QuBeliNOURUT: TStringField;
    QuBeliTANGGAL: TDateTimeField;
    QuBeliKODECUSTSUPP: TStringField;
    QuBeliNamaCustSupp: TStringField;
    QuBeliAlamat: TStringField;
    QuBeliKota: TStringField;
    QuBeliNOSC: TStringField;
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
    QuBelinetW: TBCDField;
    QuBeliGrossW: TBCDField;
    QuBeliNamabrgkom: TStringField;
    QuBeliGSM: TBCDField;
    QuBeliMykey: TStringField;
    QuBeliCatatan: TStringField;
    QuBeliSopir: TStringField;
    QuBelinFix: TBooleanField;
    QuBeliQNT1: TBCDField;
    QuBeliSatuan: TStringField;
    Label20: TLabel;
    KodeGdg: TEdit;
    QuBelikodegdg: TStringField;
    QuBeliNOrpj: TStringField;
    QuBeliUrutINV: TIntegerField;
    QuBeliNoinv: TStringField;
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
    procedure NoPNJExit(Sender: TObject);
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
    procedure KodeCustExit(Sender: TObject);
    procedure KodeCustEnter(Sender: TObject);
    procedure KodeCustKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    mUrut, mUrutSPP, MLembarKe: Integer;
    mUbahHd, mUbahHdDet, mValid, mExit: Boolean;
    mNilaiEnter, mIsiBrg: Real;
    mSat_1, mSat_2, mStrMsg: String;
    function  CekSudahAdaProsesSelanjutnya: Boolean;
    procedure TampilanQntSatuan(pNilai: Integer);
    procedure TampilIsiBarang;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure UpdatedbBeli;
    procedure IsiNoBuktiBaru;
    procedure TampilIsiSPP;
    procedure TampilIsiGudang;
    procedure TampilIsiSupplier;
    procedure TampilIsiPNJ;
  public
    { Public declarations }
    Sat,XCustSupp,NamabrgKom : String;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel, xModalKoreksi, xStatus,CrNomor: Boolean;
    Flagmenu,ISPPN,mUrutPNJ : integer;
    mharga:Real;
  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrSPBRJual: TFrSPBRJual;
  TipeTrans,PlusPPN,Nomor,Model:String;
  YY,MM,DD : Word;
  S:array[0..255]of char;
  bm,GBM : TBookmark;

implementation
uses FrmBrows, MyProcedure, MyGlobal, MyModul, FrmSPBRjualKirim,
  FrmMainSPBRjual;
{$R *.DFM}

function TFrSPBRJual.CekSudahAdaProsesSelanjutnya: Boolean;
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

procedure TFrSPBRJual.TampilanQntSatuan(pNilai: Integer);
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

procedure TFrSPBRJual.TampilIsiBarang;
begin
  KodeBrows:=80131;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.NoKira:=NoPNJ.Text;
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.FieldByName('KodeBrg').AsString<>'') then
  begin
    with FrBrows.QuBrows do
    begin
      KodeBrg.Text:=FieldByName('KodeBrg').AsString;
      LNamaBrg.Caption:='[ '+FieldByName('NamaBrg').AsString+' ]';
      NamaBrg.Text:= '[ '+FieldByName('NamaBrg').AsString+' ]';
      mUrutSPP:=FieldByName('UrutINV').AsInteger;
      mUrutPNJ:=FieldByName('UrutINV').AsInteger;
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

procedure TFrSPBRJual.TampilIsiSPP;
begin
     KodeBrows:=8013;
     Application.CreateForm(TFrBrows, FrBrows);
     FrBrows.IsiData:=NopNJ.Text;
     FrBrows.NoKira := IntToStr(Flagmenu);
     FrBrows.ShowModal;
     if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.FieldByName('NoBukti').AsString<>'') then
     begin
       with FrBrows.QuBrows do
       begin
         NOpnj.Text:=FieldByName('NoBukti').AsString;
         KodeCust.Text:=FieldByName('KodeCustSupp').AsString;
         LNamaCustSupp.Caption:=FieldByName('NamaCustSupp').AsString;
         LAlamatCustSupp.Caption:=FieldByName('Alamat').AsString+chr(13)+FieldByName('Kota').AsString;
         NoSC.Text:=FieldByname('NoSO').AsString;
         Catatan.Lines.Text :=FieldByName('Catatan').AsString;
       end;
     end
     else ActiveControl:=NoPNJ;
end;

procedure TFrSPBRJual.TampilTombolDetail(pNilai: Boolean);
begin
 //PanelShow1.Visible:=not pNilai;
  //PanelShow2.Visible:=not pNilai;
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  //Panel3.Enabled:=pNilai;
end;

procedure TFrSPBRJual.UpdatedbBeli;
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
       SQL.Add('Set Tanggal=:0, NoSPP=:1, NoPolKend=:2, Container=:3, NoContainer=:4, NoSeal=:5, KodeCustSupp=:6, Catatan=:7, Sopir=:8 ');
       SQL.Add('Where NoBukti='+QuotedStr(NoBukti.Text));
       Prepared;
       Parameters[0].Value := Tanggal.Date;
       Parameters[1].Value := NoPNJ.Text;
       Parameters[2].Value := NoPolKend.Text;
       Parameters[3].Value := Container.Text;
       Parameters[4].Value := NoContainer.Text;
       Parameters[5].Value := NoSeal.Text;
       Parameters[6].Value := KodeCust.Text;
       Parameters[7].Value := Catatan.Text;
       Parameters[8].Value := Sopir.Text;
       try
         ExecSQL;
       except
       end;
       mUbahHd:=False; mUbahHdDet:=False;
    end;
    TampilData(NoBukti.Text);
  end;
end;

procedure TFrSPBRJual.TampilData(No_Bukti:String);
begin
  QuBeli.Close;
  QuBeli.SQL.Strings[2]:='select @NoBukti='+QuotedStr(No_Bukti);
  QuBeli.Open;
end;

procedure TFrSPBRJual.IsiNoBuktiBaru;
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
  //Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal.Date);
  if IsPPN=0 then
  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal.Date,Xcustsupp,False)
  else if IsPPN=1 then
  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal.Date);
  NoUrut.Text:=NomorBukti;
  NOBUKTI.Text:=Nomor;
end;

Function TFrSPBRJual.CheckFormMaster:boolean;
begin
   CheckFormMaster:=true;
end;

procedure TFrSPBRJual.ClearPanelDetail;
begin
   KodeBrg.Text:='';
   LNamaBrg.Caption:='[ . . . ]';
   LSatuan2.Caption:='[ . . . ]';
   LSatuan1.Caption:='[ . . . ]';
   LSatuan.Caption:='[ . . . ]';
   Qnt.AsFloat:=0.00;
   Qnt2.AsFloat:=0.00;
   Qnt1.AsFloat:=0.00;
end;

procedure TFrSPBRJual.RefreshAll;
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
   for i:= 0 to Panel1.ControlCount-1 do
   begin
      if (Panel1.Controls[i] is TEdit) then
         (Panel1.Controls[i] as TEdit).Clear;
      if (Panel1.Controls[i] is TPBNumEdit) then
         (Panel1.Controls[i] as TPBNumEdit).Clear;
   end;
   LNamaCustSupp.Caption:='';
   LAlamatCustSupp.Caption:='';
   ClearPanelDetail;
end;

procedure TFrSPBRJual.UpdateDataBeli(Choice:Char;Kodet:String);
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
      Parameters[5].Value:=Nopnj.Text;
      Parameters[6].Value:=KodeCust.Text;
      Parameters[7].Value:=NoPolKend.Text;
      Parameters[8].Value:=Container.Text;
      Parameters[9].Value:=NoContainer.Text;
      Parameters[10].Value:=NoSeal.Text;
      Parameters[11].Value:=Catatan.Text;
      Parameters[12].Value:=mUrut;
      Parameters[13].Value:=mUrutSPP;
      Parameters[14].Value:=KodeBrg.Text;
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
      Parameters[28].Value:=KodeGdg.Text;
      Parameters[29].Value:=ISPPN;
    end;
    Parameters[27].Value:=Flagmenu;
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

Procedure TFrSPBRJual.AmBilDataBeli;
begin
   if not QuBeli.IsEmpty then
   begin
      NoBukti.Text:=QuBeliNOBUKTI.AsString;
      Tanggal.Date:=QuBeliTanggal.AsDateTime;
      KodeCust.Text:=QuBeliKODECUSTSUPP.AsString;
      LNamaCustSupp.Caption:=QuBeliNamaCustSupp.AsString;
      LAlamatCustSupp.Caption:=QuBeliAlamat.AsString+chr(13)+QuBeliKota.AsString;
      NoSC.Text:=QuBeliNOSC.Text;
      NoPNj.Text:=QuBeliNoinv.AsString;
      NoPolKend.Text:=QuBeliNoPolKend.AsString;
      Container.Text:=QuBeliContainer.AsString;
      NoContainer.Text:=QuBeliNoContainer.AsString;
      NoSeal.Text:=QuBeliNoSeal.AsString;
      Catatan.Text := QuBeliCatatan.AsString;
      Sopir.Text := QuBeliSopir.Value;
   end;
end;

// PROCEDURE DAN FUNCTION MILIK DELPHI

procedure TFrSPBRJual.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if mExit=true then
  begin
     FrMainSPBRJual.ToolButton10.Click;
     Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
     Action:=cafree;
  end
  else
  begin
     Action:=caNone;
  end;
end;

procedure TFrSPBRJual.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then SendMessage(Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrSPBRJual.FormShow(Sender: TObject);
begin
  RefreshAll;
  xModalKoreksi:=FrMainSPBRJual.ModalKoreksi;
  Flagmenu := FrMainSPBRJual.mMainSPB_FlagMenu;
  If xModalKoreksi = False then
  begin
    TampilData(NoBukti.Text);
    mValid:=True;
    mValid:=False;
    ActiveControl:=KodeCust;
  end
  else
  Begin
    NOBUKTI.Text:=gTempNoBukti;
    TampilData(NoBukti.Text);
    AmBilDataBeli;
    NoUrut.Text:=QuBeliNOURUT.AsString;
    Daftar_Nomor(TipeTrans,NoUrut.Text,NoBukti.Text,1);
    NoUrut.Enabled:=False;
    Tanggal.Enabled:=CekPeriode(IDUser,Tanggal.Date);
    if Tanggal.CanFocus then
      ActiveControl:=Tanggal
    else ActiveControl:=cxGrid1;
  end;
end;

procedure TFrSPBRJual.FormCreate(Sender: TObject);
begin
  TipeTrans:='SPR';
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

procedure TFrSPBRJual.KoreksiBtnClick(Sender: TObject);
begin
    mValid:=false;
    Model:='koreksi';
    // data yang di update
    if QuBeli.IsEmpty=false then
    begin
      TampilTombolDetail(True);
      mUrut:=QuBeliURUT.AsInteger;
      mUrutSPP:=QuBeliUrutINV.AsInteger;
      NamaBrg.Text:=QuBeliNamaBrgKom.AsString;
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
      Nosat.Items.Clear;
      Nosat.Items.Add('Pilih Satuan');
      Nosat.Items.Add(mSat_1);
      Nosat.Items.Add(mSat_2);
      Nosat.ItemIndex := QuBeliNosat.AsInteger;
      if QuBelinFix.Value then
      begin
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
      end
      else
      begin
        Qnt2.Value :=  QuBeliQNT2.Value;
        Qnt.Value := QuBeliQNT.Value;
        Qnt1.Value := QuBeliQNT1.Value;
        mIsiBrg := QuBeliISI.Value;
      end;
      NetW.Value:=QuBelinetW.AsFloat;
      GrossW.Value:=QuBeliGrossW.AsFloat;
      Qnt1.ReadOnly := not QuBelinFix.Value;
      KodeGdg.Text := QuBelikodegdg.AsString;
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

procedure TFrSPBRJual.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
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
      TampilData(NOBUKTI.Text);
      ActiveControl:=KodeCUst;
    end;
    FrMainSPBRJual.GetData(strtoint(PeriodBln),StrToInt(PeriodThn));
  end
  else if key=VK_return then
  begin
   if FrmainSPBRJual.ModalKOreksi=false then
      begin
      TambahBtn.Click
      End
   else
     begin
      KoreksiBtn.Click;
     End;
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

procedure TFrSPBRJual.HapusBtnClick(Sender: TObject);
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

procedure TFrSPBRJual.wwDBGrid1Enter(Sender: TObject);
begin
  FrSPBRJual.KeyPreview:=False;
end;

procedure TFrSPBRJual.wwDBGrid1Exit(Sender: TObject);
begin
  FrSPBRJual.KeyPreview:=True;
end;

procedure TFrSPBRJual.NoUrutKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrSPBRJual.BitBtn1Click(Sender: TObject);
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
                ClearPanelDetail;
                ActiveControl:=Kodebrg;
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
    end else
    begin
      MsgPeriodeSudahDikunci;
    end;
  end
  else
    MsgTanggalTidakSesuaiPeriode;
end;

procedure TFrSPBRJual.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  TampilTombolDetail(False);
  ActiveControl:=cxGrid1;
  ClearPanelDetail;
end;

procedure TFrSPBRJual.FormDestroy(Sender: TObject);
begin
  FrSPBRJual:=nil;
end;

procedure TFrSPBRJual.dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
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

procedure TFrSPBRJual.NoUrutChange(Sender: TObject);
begin
  if mValid then
  begin
    if Length(NoUrut.Text)=5 then
    begin
      Konfig(TipeTrans,Nourut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date);
      NOBUKTI.Text:=MyNoBukti;
    end
    else
      ActiveControl:=KodeCUst;
  end;
end;

procedure TFrSPBRJual.KodeBrgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrSPBRJual.NoUrutEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrSPBRJual.NoPNJExit(Sender: TObject);
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
                     ,[NOPNJ.Text,KodeCUst.Text],DM.QUCari)=True then
    begin
      NoPNJ.Text:=DM.QuCari.FieldByName('NoBukti').AsString;

    end
    else TampilIsiPNJ;
  end;
end;

procedure TFrSPBRJual.TampilIsiPNJ;
begin
  KodeBrows:=8005;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.NoKira:=KodeCust.Text;
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.FieldByName('NoBukti').AsString<>'') then
  begin
    NoPNJ.Text:=FrBrows.QuBrows.FieldByName('NoBukti').AsString;
    NoSc.text:=FrBrows.QuBrows.FieldByName('NOSO').AsString;
  end
  else ActiveControl:=NoPNJ;
end;


procedure TFrSPBRJual.KodeBrgExit(Sender: TObject);
begin
  {if mValid Then
  begin
    if Length(KodeBrg.Text)=0 then TampilIsiBarang else
    begin
      if DataBersyarat(' Declare @nobukti varchar(50), @Kodebrg varchar(50) Select @nobukti=:0, @kodebrg=:1 '+
                       ' Select A.KODEBRG, B.NAMABRG, A.Namabrg Namabrgkom, A.Qnt2Sisa, A.Sat_2, A.QntSisa, A.Sat_1, A.Isi, A.NoBukti, A.Urut, A.Nosat, '+
                       '        A.NetW, A.GrossW '+
                       ' from vwBrowsOutRjual A left outer join dbBarang B on B.KodeBrg=A.KodeBrg '+
                       ' left Outer join dbRInvoicePL c on c.nobukti=a.nobukti '+
                       ' where A.NoBukti=@nobukti and A.KodeBrg=@kodebrg '+

                       ' order by A.KodeBrg ',
      [NOSC.Text,KodeBrg.Text], DM.QuCari)=True then
      begin
        with DM.QuCari do
        begin
          KodeBrg.Text:=FieldByName('KodeBrg').AsString;
          NamaBrg.Text :=FieldByName('NamaBrgKom').AsString;
          LNamaBrg.Caption:='[ '+FieldByName('NamaBrg').AsString+' ]';
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

  end;   }
 if mValid Then
  begin
    if Length(KodeBrg.Text)=0 then TampilIsiBarang else
    begin
      if DataBersyarat('select A.Kodebrg,C.NAMABRG,  '+
                       ' Case when A.NOSAT=1 then A.SAT_1  '+
		       '		When A.NOSAT=2 Then A.SAT_2 End Satuan,  '+
                       '                 Case When A.NOSAT=1 then A.QNT When A.NOSAT=2 then A.QNT2 End Qnt,  '+
                       '                 A.QNT QNT1,A.QNT2 QNT2,A.Urut UrutINv,A.Sat_1,A.Sat_2   '+
                       ' ,A.ISI ,A.Qnt - Isnull(B.QNT1,0) QntSisa,A.Qnt2 - Isnull(B.QNT2,0) Qnt2Sisa,A.NOsat  '+
                       '     from dbInvoicePLDet A   '+
                       '     Left OUter Join (       '+
                       '                       select NoINV,UrutINV,KodeBrg,SUM(ISNULL(QNT,0)) Qnt1,SUM(ISNULL(QNT2,0)) Qnt2  '+
                       '                       from dbSPBRJualDet  '+
                       '                       Group By NoINV,UrutINV,KodeBrg  '+
                       '                      ) B on A.NoBukti=B.NoINV and A.Urut=B.UrutINV  '+
                       '     Left OUter join DBBARANG C on A.KodeBrg =C.KodeBrg  '+
                       '     Where  '+
                       '     (A.QNT-isnull(B.Qnt1,0)>0 or A.QNT2 - isnull(B.Qnt2,0)>0) And A.Nobukti=:0 and A.Kodebrg=:1 '
                       ,[NOPNJ.Text,KodeBrg.Text], DM.QuCari)=True then
      begin
        with DM.QuCari do
        begin
          KodeBrg.Text:=FieldByName('KodeBrg').AsString;
          LNamaBrg.Caption:='[ '+FieldByName('NamaBrg').AsString+' ]';
          NamaBrg.Text:= '[ '+FieldByName('NamaBrg').AsString+' ]';
          mUrutPNJ:=FieldByName('UrutINV').AsInteger;
          mUrutPNJ:=FieldByName('UrutINV').AsInteger;
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

procedure TFrSPBRJual.TambahBtnClick(Sender: TObject);
begin
  model:='write';
  TampilTombolDetail(True);
  ClearPanelDetail;
  KodeBrg.Enabled:=True;
  ActiveControl:=KodeBrg;
end;

procedure TFrSPBRJual.KodeBrgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
    SpeedButton1.Click;
end;

procedure TFrSPBRJual.Qnt2Change(Sender: TObject);
begin
  if mValid then
  begin
    Qnt1.Value:=Qnt2.Value*mIsiBrg;
  end;
end;

procedure TFrSPBRJual.TanggalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
  begin
      if //(Sender=Tanggal) and
      (CekPeriode(IDUser,TANGGAL.Date)=False) then
        Abort;
      UpdatedbBeli;
      if (sender=Catatan) then   ActiveControl:=cxGrid1;


  end
  else if Key=Vk_Escape then
  begin
    If xModalKoreksi = False then
    begin
      if Length(KodeCust.Text)=0 then
        begin
        mExit:=True;
        Close;
        End
      Else
       begin
        Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
        mValid:=False;
        RefreshAll;
        TampilData(NOBUKTI.Text);
        ActiveControl:=KodeCust;
       End;
    end
    else
    begin
      mExit:=True;
      Close;
    end;
  end;
end;

procedure TFrSPBRJual.TanggalChange(Sender: TObject);
begin
  if mValid then
  begin
    mUbahHd:=True;
  end;
end;

procedure TFrSPBRJual.TanggalExit(Sender: TObject);
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

procedure TFrSPBRJual.NosatEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrSPBRJual.NosatChange(Sender: TObject);
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

procedure TFrSPBRJual.CetakClick(Sender: TObject);
var LembarKe : string;
    i,j : Integer;
begin
  Case ComboBox1.ItemIndex of
    0 : begin
          InputQuery('Cetak Berapa Lembar ? ','Lembar : ',LembarKe);
          if Length(LembarKe)=0 then
             j := 1
          else
             j := StrToInt(LembarKe);
          frxDBcetak.DataSet.Close;
          QuReport.Close;
          frxDBcetak.DataSet := QuReport;
          with QuReport do
          begin
            close;
            sql.Clear;
            sql.Add('select * from vwcetakSPBRjual');
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
            for I := 1 to J do
            begin
              MLembarKe := I;
              LoadFromFile(CurrDir+'nota\BuktiTerimaRjual.fr3');
              if MLembarKe>1 then
              begin
                PrepareReport;
                PrintOptions.ShowDialog := False;
                Print;
              end
              else
              ShowReport;
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
            ShowReport;
          end;
        end;
  end;
end;

procedure TFrSPBRJual.SpeedButton8Click(Sender: TObject);
var LembarKe : string;
    i,j : Integer;
begin
  Case ComboBox1.ItemIndex of
    0 : begin
          InputQuery('Cetak Berapa Lembar ? ','Lembar : ',LembarKe);
          if Length(LembarKe)=0 then
             j := 1
          else
             j := StrToInt(LembarKe);
          frxDBcetak.DataSet.Close;
          QuReport.Close;
          frxDBcetak.DataSet := QuReport;
          with QuReport do
          begin
            close;
            sql.Clear;
            sql.Add('select * from vwcetakspbRJual');
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
            for I := 1 to J do
            begin
              MLembarKe := I;
              LoadFromFile(CurrDir+'nota\BuktiTerimaRJual.fr3');
              if MLembarKe>1 then
              begin
                PrepareReport;
                PrintOptions.ShowDialog := False;
                Print;
              end
              else
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

procedure TFrSPBRJual.NamaBrgEnter(Sender: TObject);
begin
  KeyPreview := false;
end;

procedure TFrSPBRJual.NamaBrgExit(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TFrSPBRJual.RekapBrgBtnClick(Sender: TObject);
begin
  if not QuBeli.IsEmpty then
  begin
    Application.CreateForm(TFrSPBRJualKirim,FrSPBRJualKirim);
    FrSPBRJualKirim.ShowModal
  end
  else
  begin
    MsgTglKirimDataKosong;
    ActiveControl := cxGrid1
  end;
end;

procedure TFrSPBRJual.NoUrutExit(Sender: TObject);
begin
  if mValid then
  begin
    If Length(NoUrut.Text)<5 then
    begin
      MessageDlg('Nomor urut kurang '+InttoStr(5-Length(NoUrut.Text))+' digit.',mtWarning,[MbOk],0);
      ActiveControl := KodeCust;
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
          ActiveControl := KodeCUst;
        end;
      end;
      If Not Daftar_Nomor(TipeTrans,Nourut.Text,NoBukti.Text,isMax) then
      begin
        MessageDlg('Nomor : '+NOBUKTI.Text+' telah digunakan oleh '+MyUser+'.',mtWarning,[MbOk],0);
        ActiveControl := KodeCust;
      end;
    end;
  end;
end;

procedure TFrSPBRJual.CatatanEnter(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TFrSPBRJual.CatatanExit(Sender: TObject);
begin
  if mValid then
  begin
    if (CekPeriode(IDUser,TANGGAL.Date)=False) then
          Abort;
        UpdatedbBeli;
  end;
  KeyPreview := True;
end;

procedure TFrSPBRJual.SpeedButton2Click(Sender: TObject);
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
    ShowReport;
  end;
end;

procedure TFrSPBRJual.SpeedButton3Click(Sender: TObject);
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

procedure TFrSPBRJual.tvMasterFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  {with QuDetailSPB do
  begin
    close;
    open;
  end; }
end;

procedure TFrSPBRJual.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
  if VarName='LembarKe' then
     Value := MLembarKe;
end;

procedure TFrSPBRJual.KodeGdgEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrSPBRJual.TampilIsiGudang;
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

procedure TFrSPBRJual.KodeGdgExit(Sender: TObject);
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

procedure TFrSPBRJual.KodeCustExit(Sender: TObject);
begin
  if (mValid=True) then
  begin
    CrNomor:=False;
    Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,IDUser);
    if DataBersyarat(' Select A.KodeCustSupp, A.NamaCustSupp, A.Alamat, A.Kota, A.Fax,A.PPN from vwBrowsCust A '+
                    ' Where A.kodecustsupp=:0 '+
                    ' order by A.KodeCustSupp',[KodeCust.text],DM.Qucari) then
    begin
      Kodecust.Text:=DM.Qucari.FieldByName('KodeCustSupp').AsString;
      LNamaCustSupp.Caption:=DM.Qucari.FieldByName('NamaCustSupp').AsString;
      LAlamatCustSupp.Caption:=DM.Qucari.FieldByName('Alamat').AsString+chr(13)+DM.Qucari.FieldByName('Kota').AsString;
      IsPPN:=DM.Qucari.fieldbyname('PPN').AsInteger;
      XCUstSupp:=DM.Qucari.fieldbyname('KodeCustSupp').Asstring;
      CrNomor:=True;
    end
    else
      TampilIsiSupplier;
  end
  else
     mValid := False;
  if CrNomor then
  Begin
    IsiNoBuktiBaru;
    Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,isMax);
  End
  Else ActiveControl:=kodeCust;
end;

procedure TFrSPbRjual.TampilIsiSupplier;
begin
  KodeBrows:=30051;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=FrSpbRjual.KodeCust.Text;
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.FieldByName('KodeCustSupp').AsString<>'') then
  begin
    FrSpbRjual.KodeCUst.Text:=FrBrows.QuBrows.FieldByName('KodeCustSupp').AsString;
    FrSpbRjual.LNamaCustSupp.Caption:=FrBrows.QuBrows.FieldByName('NamaCustSupp').AsString;
    FrSpbRjual.LAlamatCustSupp.Caption:=FrBrows.QuBrows.FieldByName('Alamat').AsString+chr(13)+FrBrows.QuBrows.FieldByName('Kota').AsString;
    FrSpbRjual.IsPPN:=FrBrows.QuBrows.fieldbyname('PPN').AsInteger;
    FrSpbRjual.XCUstSupp:=FrBrows.QuBrows.fieldbyname('KodeCustSupp').Asstring;
    CrNomor:=True;
  end
  else
   ActiveControl:=FrSpbRjual.KodeCust;
end;

procedure TFrSPBRJual.KodeCustEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrSPBRJual.KodeCustKeyDown(Sender: TObject; var Key: Word;
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

end.
