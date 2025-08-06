unit FrmLunas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, wwdblook, Wwdbigrd, Wwdbgrid,
  DBCtrls, ppBands, ppCtrls, ppDB, jpeg, ppPrnabl, ppClass, ppCache,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, XPMenu, ImgList, RxNotify,DateUtils,
  ppStrtch, ppRichTx,ppviewr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl,
  dxGrClms, StrUtils, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, variants, frxDesgn, frxClass, frxDBSet, dxmdaset;

type
  TFrLunas = class(TForm)
    Panel1: TPanel;
    NoBukti: TEdit;
    Tanggal: TDateEdit;
    Label11: TLabel;
    Shape4: TShape;
    QuUpdatedbbeli: TADOQuery;
    Label10: TLabel;
    Panel2: TPanel;
    Panel4: TPanel;
    TambahBtn: TSpeedButton;
    KoreksiBtn: TSpeedButton;
    HapusBtn: TSpeedButton;
    Cetak: TSpeedButton;
    KodeCS: TEdit;
    NamaCS: TLabel;
    LblCS: TLabel;
    Label9: TLabel;
    Jumlah: TPBNumEdit;
    Label26: TLabel;
    NoUrut: TEdit;
    Label12: TLabel;
    Label1: TLabel;
    Keterangan: TEdit;
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    SpeedButton8: TSpeedButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDataPerusahaan: TfrxDBDataset;
    sp_HutPiut: TADOStoredProc;
    QuBeli: TADOQuery;
    Label13: TLabel;
    Valas: TEdit;
    Label2: TLabel;
    Kurs: TPBNumEdit;
    QuHutPiut: TADOQuery;
    QuHutPiutNoFaktur: TStringField;
    QuHutPiutNoRetur: TStringField;
    QuHutPiutTipeTrans: TStringField;
    QuHutPiutKodeCustSupp: TStringField;
    QuHutPiutNoBukti: TStringField;
    QuHutPiutNoMsk: TIntegerField;
    QuHutPiutUrut: TIntegerField;
    QuHutPiutTanggal: TDateTimeField;
    QuHutPiutJatuhTempo: TDateTimeField;
    QuHutPiutDebet: TBCDField;
    QuHutPiutKredit: TBCDField;
    QuHutPiutSaldo: TBCDField;
    QuHutPiutValas: TStringField;
    QuHutPiutKurs: TBCDField;
    QuHutPiutDebetD: TBCDField;
    QuHutPiutKreditD: TBCDField;
    QuHutPiutSaldoD: TBCDField;
    QuHutPiutKodeSales: TStringField;
    QuHutPiutTipe: TStringField;
    QuHutPiutPerkiraan: TStringField;
    QuHutPiutSaldoRp: TBCDField;
    QuHutPiutSaldoVls: TBCDField;
    QuHutPiutCatatan: TStringField;
    QuHutPiutMyKey: TStringField;
    QuHutPiutMyNobuktiKas: TStringField;
    DSHutPiut: TDataSource;
    dsBeli: TDataSource;
    CBBayar: TComboBox;
    Panel5: TPanel;
    Label6: TLabel;
    Label8: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    DateEdit2: TDateEdit;
    PBNumEdit2: TPBNumEdit;
    Edit6: TEdit;
    LabelGiro: TLabel;
    NoGiro: TEdit;
    Lbank: TLabel;
    Bank: TEdit;
    LtglGiro: TLabel;
    TglGiro: TDateEdit;
    Lgiro: TLabel;
    NilaiGiro: TPBNumEdit;
    QuBeliValas: TStringField;
    QuBeliKurs: TBCDField;
    QuBeliUrut: TIntegerField;
    QuBeliBayarDet: TBCDField;
    QuBeliBayarRpDet: TBCDField;
    QuBeliNoBuktiBayar: TStringField;
    QuBeliNamaCS: TStringField;
    QuBeliNoGiro: TStringField;
    QuBeliTglGiro: TDateTimeField;
    QuBeliBank: TStringField;
    QuBeliNilaiGiro: TBCDField;
    tvMasterValas: TcxGridDBColumn;
    tvMasterKurs: TcxGridDBColumn;
    tvMasterUrut: TcxGridDBColumn;
    tvMasterBayarDet: TcxGridDBColumn;
    tvMasterBayarRpDet: TcxGridDBColumn;
    tvMasterNoBuktiBayar: TcxGridDBColumn;
    tvMasterNamaCS: TcxGridDBColumn;
    tvMasterNoGiro: TcxGridDBColumn;
    tvMasterTglGiro: TcxGridDBColumn;
    tvMasterBank: TcxGridDBColumn;
    tvMasterNilaiGiro: TcxGridDBColumn;
    QuBeliCatatan: TStringField;
    QuBelitanggal: TDateTimeField;
    QuBeliKodeCustSupp: TStringField;
    QuBeliTipeBayar: TWordField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    Function CheckFormMaster:boolean;
    procedure PerkiraanEnter(Sender: TObject);
    procedure TanggalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RefreshAll;
    procedure TampilData(No_bukti:string);
    procedure KoreksiBtnClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure TanggalExit(Sender: TObject);
    procedure TanggalEnter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    Function  CariKoma(Nilai : string) : Integer;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure KodeCSExit(Sender: TObject);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure dxDBGrid1Exit(Sender: TObject);
    procedure NoFakturEnter(Sender: TObject);
    procedure NoUrutKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure CetakClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    function  CariJumlahPembayaranHutPiut(pStatusHutPiut, pValas: String): Real;
    procedure ValasExit(Sender: TObject);
    procedure TambahBtnClick(Sender: TObject);
    procedure IsiTempHutPiut(pDK, pKode, pNoBukti, pUrut, pValas, pKodeCustSupp, pPerkiraan: String);
    procedure CBBayarChange(Sender: TObject);
    procedure CBBayarExit(Sender: TObject);
    procedure tvMasterKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    MyDay: Integer;
    mTipeTrans, mTipeLunas, vBukti, vCustomer: String;
    yy,mm,dd : word;
    mSumBayar, mSumDiskon: Real;
    procedure IsiTanggalBaru;
    procedure ClearHeaderPanel;
    procedure IsiNoBuktiBaru;
    procedure TampilIsiSupplier;
    procedure TampilIsiCustomer;
    function  CariNilaiLebihBayar: Real;
    function  CariNilaiBukti: String;
    procedure EnableGiro(pNilai: Boolean);
    procedure TampilIsiPerkiraan;
    procedure IsiNoFakturKeTempLunas;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure TampilIsiNoFakturHutang;
    procedure TampilIsiNoFakturPiutang;
    procedure SimpanAllData;
    procedure SimpanDetail;
    procedure AmbilData;
    function  TransaksiSelesai: Boolean;
    Function  JumlahYgDibayar(Nota:String):Real;


  public
     KodeRelasi,KodeCust,NoAktiva,Model,StatusAktiva,StatusGiro:string;
     mUrut,statusDK  : integer;
     xModalKoreksi: Boolean;
     AdaSelisih : boolean;
     mSisaPiutang,mLebihBayar:real;
     //IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel : Integer;
     IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel : Boolean;
     sishal, tothal : integer ;
     Property TipeTrans:string read mTipeTrans write mTipeTrans;
    { Public declarations }
  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;
     HrfAngka : Array[0..19] of String = ('', 'Satu ', 'Dua ', 'Tiga ', 'Empat ', 'Lima ', 'Enam ', 'Tujuh ', 'Delapan ',
                                           'Sembilan ' , 'Sepuluh ', 'Sebelas ' ,'Dua Belas ', 'Tiga Belas ', 'Empat Belas ',
                                           'Lima Belas ', 'Enam Belas ', 'Tujuh Belas ', 'Delapan Belas ', 'Sembilan Belas ');

var
  FrLunas: TFrLunas;
  mValid,mExit,StatusSimpan: Boolean;
  Sat:String;
  IsTutup,mNosat:Integer;
  TipeTrans,PlusPPN,Nomor:String;
  mBulan,mTahun:string;
  Biaya,BiayaRp,IsiBrg,potongan,mKurs:Real;
  S:array[0..255]of char;

  IsGiroCair : Boolean;
  mSelisih,TipeGiro,JenisTransGiro,mValas : String;
  KodeTrans,KodeByr,Jenis :string;
  Kode: String;
  mPosisi,mNomor : Integer;

implementation
uses FrmBrows, MyProcedure, MyGlobal, MyModul, FrmMainLunas,FrmHutPiut;
{$R *.DFM}

function TFrLunas.CariJumlahPembayaranHutPiut(pStatusHutPiut, pValas: String): Real;
begin
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    if pValas='IDR' then
    begin
      if (mTipeTrans='HT') then
        SQL.Add('select sum(Debet) Bayar from dbHutPiut')
      else
        SQL.Add('select sum(Kredit) Bayar from dbHutPiut');
    end else
    begin
      //if (pStatusHutPiut='HT+') or (pStatusHutPiut='PT-') or (pStatusHutPiut='UHT+') or (pStatusHutPiut='UPT-')  then
      if (mTipeTrans='HT') then
        SQL.Add('select sum(DebetD) Bayar from dbHutPiut')
      else
        SQL.Add('select sum(KreditD) Bayar from dbHutPiut');
    end;
    SQL.Add('where NoBukti='+QuotedStr(NoBukti.Text));
    Open;
  end;
  if DM.QuCari.IsEmpty then
    Result:=0
  else
    Result:=DM.QuCari.FieldByName('Bayar').AsFloat;
end;

function  TFrLunas.TransaksiSelesai: Boolean;
begin
  if QuBeli.IsEmpty then
    TransaksiSelesai:=True
  else if (mSumBayar=0) and (mSumDiskon=0) then
  begin
    TransaksiSelesai:=True;
  end else
  if FormatFloat(',0.00',(mSumBayar+mSumDiskon))=FormatFloat(',0.00',Jumlah.Value) then
  begin
    TransaksiSelesai:=True;
  end else
  begin
    TransaksiSelesai:=False;
    MessageDlg('Transaksi belum selesai, Jumlah <> Pembayaran  !',mtError,[mbOK],0);
  end;
end;

procedure TFrLunas.IsiTanggalBaru;
var yy,mm,dd: Word;
begin
  DecodeDate(Now,yy,mm,dd);
  MyDay:=DaysInAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln));
  if MyDay<dd then dd:=MyDay;
  Tanggal.Date:=EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),dd);
end;

procedure TFrLunas.AmbilData;
begin

end;

procedure TFrLunas.ClearHeaderPanel;
begin
  IsiTanggalBaru;
  KodeCS.Text:='';
  NamaCS.Caption:='[ . . . ]';
  //Perkiraan.Text:='';
  //NamaPerkiraan.Caption:='[ . . . ]';
  //Lawan.Text:='';
  //NamaLawan.Caption:='[ . . . ]';
  Jumlah.Value:=0;
  NoGiro.Text:='';
  Bank.Text:='';
  TglGiro.Text:='  /  /    ';
  NilaiGiro.Value:=0;
end;

procedure TFrLunas.IsiNoBuktiBaru;
begin
  DecodeDate(Date,YY,MM,DD);
  If DaysInAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln))<=DD then
   DD:= DaysInAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln));
  TANGGAL.Date := EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),DD);
  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),mTipeTrans,Nomor,NomorBukti,Tanggal.Date);
  NoUrut.Text := NomorBukti;
  NOBUKTI.Text := Nomor;
end;

procedure TFrLunas.TampilIsiSupplier;
begin
  KodeBrows:=10141;
  Application.CreateForm(TFrBrows, FrBrows);
  //FrBrows.NoKira:=Lawan.Text;
  FrBrows.IsiData:=KodeCS.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    KodeCS.Text:=FrBrows.QuBrows.fieldbyname('KodeCustSupp').AsString;
    NamaCS.Caption:='[ '+FrBrows.QuBrows.fieldbyname('NamaCust').AsString+' ]';

    vBukti:=NoBukti.Text;
    vCustomer:=KodeCS.Text;

   // IsiNoFakturKeTempLunas;
  end
  else ActiveControl:=KodeCS;
end;

procedure TFrLunas.TampilIsiCustomer;
begin
  KodeBrows:=10142;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeCS.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    KodeCS.Text:=FrBrows.QuBrows.fieldbyname('KodeCustSupp').AsString;
    NamaCS.Caption:='[ '+FrBrows.QuBrows.fieldbyname('NamaCust').AsString+' ]';

    vBukti:=NoBukti.Text;
    vCustomer:=KodeCS.Text;

   // IsiNoFakturKeTempLunas;
  end
  else ActiveControl:=KodeCS;
end;

function  TFrLunas.CariNilaiLebihBayar: Real;
begin

end;

function  TFrLunas.CariNilaiBukti: String;
begin
end;

procedure TFrLunas.EnableGiro(pNilai: Boolean);
begin
  NoGiro.Enabled:=pNilai;
  Bank.Enabled:=pNilai;
  TglGiro.Enabled:=pNilai;
  NilaiGiro.Enabled:=pNilai;
end;

procedure TFrLunas.IsiNoFakturKeTempLunas;
var xTempUrut: Integer;
begin
{  with QuView do
  begin
    Close;
    SQL.Clear;
    if mTipeTrans='HT' then
    begin
      SQL.Add('exec Sp_vwTransHutang '+QuotedStr(NoBukti.Text)+','+QuotedStr(vCustomer)+' ');

    end else
    if mTipeTrans='PT' then
    begin
     SQL.Add('exec Sp_vwTransPiutang '+QuotedStr(NoBukti.Text)+','+QuotedStr(vCustomer)+' ');
    end;
    Open;
  end;
  QuDetail.Close;
  QuDetail.Open; }
end;

procedure TFrLunas.TampilIsiPerkiraan;
begin

end;

procedure TFrLunas.TampilTombolDetail(pNilai: Boolean);
begin

  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;


end;

procedure TFrLunas.TampilIsiNoFakturHutang;
begin

end;

procedure TFrLunas.TampilIsiNoFakturPiutang;
begin

end;

procedure TFrLunas.SimpanAllData;
begin
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('update dbLunas set Jumlah=:0, Bayar=:1, Diskon=:2 where NoBukti=:3');
    Prepared;
    Parameters[0].Value:=Jumlah.Value;
    Parameters[1].Value:=tvMaster.DataController.Summary.FooterSummaryValues[2];
    Parameters[2].Value:=tvMaster.DataController.Summary.FooterSummaryValues[1];
    Parameters[3].Value:=NoBukti.Text;
    ExecSQL;
  end;

  vCustomer:='';
  //IsiNoFakturKeTempLunas;

  FrMainLunas.ToolButton10.Click;
end;

procedure TFrLunas.SimpanDetail;
begin

end;

//Cari Koma
Function TFrLunas.CariKoma(Nilai : string) : Integer;
begin
  Result := Pos(',',Nilai)
end;

Function TFrLunas.CheckFormMaster:boolean;
begin
   CheckFormMaster:=true;
end;

procedure TFrLunas.RefreshAll;
begin
  //Mode.Text:='';
  NoBukti.Text:='';
  IsiTanggalBaru;
  IsiNoBuktiBaru;
  KodeCS.Text:='';
  vCustomer:=KodeCS.Text;
  NamaCS.Caption:='[ . . . ]';
  Jumlah.Value:=0;
  NoGiro.Text:='';
  Bank.Text:='';
  TglGiro.Text:='  /  /    ';
  NilaiGiro.Value:=0;
end;

procedure TFrLunas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if mExit=true then
  begin
     FrMainLunas.xStatus := 'M';
     Hapus_Daftar_Nomor(mTipeTrans,NoBukti.Text,iduser);
     Action:=cafree;
  end
  else
  begin
     Action:=caNone;
  end;
end;

procedure TFrLunas.TampilData(No_bukti:string);
begin
  QuBeli.Close;
  QuBeli.SQL.Strings[2]:='select @NoBukti='+QuotedStr(NoBukti.Text)+', @Tipe='+QuotedStr(TipeTrans);
  QuBeli.Open;


  QuBeli.First;
  mSumBayar:=0;
  mSumDiskon:=0;
  while not QuBeli.Eof do
  begin
    mSumBayar:=mSumBayar+QuBeliBayarDet.AsFloat;
    QuBeli.Next;
  end;

  KodeCS.Enabled:=QuBeli.IsEmpty;
  if (not QuBeli.IsEmpty) then
  begin
      Keterangan.Text:=QuBeliCatatan.AsString;
      Tanggal.Date:=QuBeliTanggal.Value;
      KodeCS.Text:=QuBeliKodeCustSupp.AsString;
      NamaCS.Caption:='[ '+QuBeliNamaCS.AsString+' ]';
      Jumlah.Value:=mSumBayar;
      NoGiro.Text:=QuBeliNoGiro.AsString;
      Bank.Text:=QuBeliBank.AsString;
      TglGiro.Date:=QuBeliTglGiro.Value;
      NilaiGiro.Value:=QuBeliNilaiGiro.Value;
      CBBayar.ItemIndex:=QuBeliTipeBayar.AsInteger;
  end;
end;

procedure TFrLunas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
end;

procedure TFrLunas.FormShow(Sender: TObject);
var i : integer;
    yy,mm,dd,Myday : Word;
begin
  xModalKoreksi:=FrMainLunas.ModalKoreksi;
  NoUrut.Enabled:=not xModalKoreksi;
  If FrMainLunas.ModalKoreksi = False then
  begin
    vBukti:=NoBukti.Text;
    vCustomer:=KodeCS.Text;

    IsiNoBuktiBaru;
    Model:='write';
    TampilData(NoBukti.Text);

  end
  else
  Begin
    vBukti:=FrMainLunas.QuMasterNoBukti.AsString;
    vCustomer:=FrMainLunas.QuMasterKodeCS.AsString;

    NOBUKTI.Text := FrMainLunas.QuMasterNoBukti.AsString;
    Hapus_Daftar_Nomor_User (mTipeTrans,IDUser);
    TampilData(NOBUKTI.Text);
    AmbilData;
    NoUrut.Text := RightStr(NOBUKTI.Text,5);
    ActiveControl:=Tanggal;
  end;
end;

procedure TFrLunas.PerkiraanEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrLunas.TanggalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_Return then
  begin
    if CekPeriode(IDUser,TANGGAL.Date) then
    begin
      //UpdateTransaksi;
    end
    else
    begin
       MessageDlg('Tanggal tidak sesuai periode transaksi.',mtWarning,[mbok],0);
       ActiveControl := TANGGAL;
    end;
  end
  else if Key=Vk_Escape then
  begin
    If FrMainLunas.ModalKoreksi = False then
    begin
      if TransaksiSelesai then
      begin
        Hapus_Daftar_Nomor_User(mTipeTrans,IDUser);
        mValid:=False;
        RefreshAll;
        IsiNoBuktiBaru;
        TampilData(NOBUKTI.Text);
        ActiveControl := NoUrut;
      end;
    end
    else
    begin
      if TransaksiSelesai then
      begin
      mExit := true;
      close;
      end;
    end;
  end;
end;

Function TFrLunas.JumlahYgDibayar(Nota:String):Real;
begin
   with DM.QuCari do
   begin
      Close;
      SQL.Clear;
      SQL.Add('select isnull(sum(isnull(kredit,0)-isnull(debet,0)),0) from vwhutang where kodesupp=:0 and nofaktur=:1 ');
      Parameters[0].Value:=Label1.Caption;
      Parameters[1].Value:=Nota;
      //Parameters[2].Value:=FrKasBank.Devisi.Text;
      Open
   end;
   JumlahYgDibayar:=DM.QuCari.Fields[0].Value;
end;

procedure TFrLunas.KoreksiBtnClick(Sender: TObject);
var JumlahHrsDibayar : Real;
begin
    if CheckFormMaster=True then
    begin
      mValid:=False;
      Model:='koreksi';
      // data yang di update
      if QuBeli.IsEmpty=False then
      begin
        Application.CreateForm(TFrHutPiut, FrHutPiut);
        IsiNoFakturKeTempLunas;
        if FrLunas.mTipeTrans='HT' then
        begin

             FrHutPiut.Caption := 'Pelunasan Hutang ';

        end
        else if FrLunas.mTipeTrans='PT' then
        begin
            FrHutPiut.Caption := 'Pelunasan Piutang';
        end;

        FrHutPiut.StatusHutPiut := '';
        FrHutPiut.Kurs.Value := Kurs.Value;
        FrHutPiut.Valas.Text := Valas.Text;
        FrHutPiut.Total.Value := Jumlah.Value;
        FrHutPiut.StatusHutPiut := '';
        FrHutPiut.PerkiraanhutPiut := '';
        FrHutPiut.Label1.Caption := FrLunas.KodeCS.Text;
        FrHutPiut.Tipe := FrLunas.mTipeTrans;
       if MyFindField('dbCustSupp','KodeCustSupp',FrLunas.KodeCS.Text)=true then
            FrHutPiut.Label2.Caption:='[ '+dm.QuCari.fieldbyname('NamaCustSupp').AsString+' ]';
        FrHutPiut.Label3.Caption:=NOBUKTI.Text;
        //IsiTempHutPiut('K',FrLunas.mTipeTrans,NOBUKTI.Text,IntToStr(mUrut),Valas.Text,FrLunas.KodeCS.Text,'');
        FrHutPiut.ShowModal;
      end else
      begin
        ShowMessage('Tidak ada transaksi yang dikoreksi !');
        ActiveControl:=cxGrid1;
      end;
    end else
    begin
      ShowMessage('Form Master Tidak Lengkap, Silahkan Anda Periksa !');
    end;
end;

procedure TFrLunas.SpeedButton1Click(Sender: TObject);
begin
  mValid:=False;
  TampilTombolDetail(False);
  ActiveControl:=cxGrid1;
  //ClearDetailPanel;
end;

procedure TFrLunas.TanggalExit(Sender: TObject);
begin
  if mValid then
  begin
    if CekPeriode(IdUser,TANGGAL.Date)=false then
    begin
      ShowMessage('Periode Tidak Sesuai !');
      ActiveControl:=Tanggal;
    end;
  end;
end;

procedure TFrLunas.TanggalEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrLunas.BitBtn1Click(Sender: TObject);
begin
  {SimpanDetail;
  SpeedButton1.Click;
  LebihBayar.Value:=CariNilaiLebihBayar; }
end;

procedure TFrLunas.FormDestroy(Sender: TObject);
begin
  FrLunas:=nil;
end;

procedure TFrLunas.FormCreate(Sender: TObject);
begin
  mTipeTrans:=FrMainLunas.mTipeTrans;
  if mTipeTrans='HT' then
    LblCS.Caption:='Supplier'
    else LblCS.Caption:='Customer';
  if mTipeTrans='HT' then
    FrLunas.Caption:='Transaksi Pelunasan Hutang'
  else if mTipeTrans='PT' then
    FrLunas.Caption:='Transaksi Pelunasan Piutang';
end;

procedure TFrLunas.KodeCSExit(Sender: TObject);
begin
  if mValid Then
  begin
    if Length(KodeCS.Text)=0 then
    begin
      if mTipeTrans='HT' then TampilIsiSupplier
        else TampilIsiCustomer;
    end else
    begin
      if mTipeTrans='HT' then
      begin
        if DataBersyarat('Select * from dbCustSupp where KodeCustSupp=:0',[KodeCS.Text],DM.QuCari)=True then
        begin
          KodeCS.Text:=DM.QuCari.fieldbyname('KodeCustSupp').AsString;
          NamaCS.Caption:='[ '+DM.QuCari.fieldbyname('NamaCustSupp').AsString+' ]';

          vBukti:=NoBukti.Text;
          vCustomer:=KodeCS.Text;

        //  IsiNoFakturKeTempLunas;
        end else TampilIsiSupplier;
      end else
      begin
        if DataBersyarat('Select * from dbCustSupp where KodeCustSupp=:0',[KodeCS.Text],DM.QuCari)=True then
        begin
          KodeCS.Text:=DM.QuCari.fieldbyname('KodeCustSupp').AsString;
          NamaCS.Caption:='[ '+DM.QuCari.fieldbyname('NamaCustSupp').AsString+' ]';

          vBukti:=NoBukti.Text;
          vCustomer:=KodeCS.Text;

       //   IsiNoFakturKeTempLunas;
        end else
        begin
          if mTipeTrans='HT' then TampilIsiSupplier
            else TampilIsiCustomer;
        end;
      end;
    end;
  end;
end;

procedure TFrLunas.dxDBGrid1Enter(Sender: TObject);
begin
  if CheckFormMaster=False then
  begin
    ShowMessage('Form Master Tidak Lengkap, Silahkan Anda Periksa !');
    ActiveControl:=NoUrut;
  end else
  begin
    FrLunas.KeyPreview:=False;
    TambahBtn.Visible:=True;
    KoreksiBtn.Visible:=True;
    Cetak.Visible:=True;
    SpeedButton8.Visible:=True;
    HapusBtn.Visible:=False;
  end;
end;

procedure TFrLunas.dxDBGrid1Exit(Sender: TObject);
begin
  FrLunas.KeyPreview:=True;
  TambahBtn.Visible:=false;
  HapusBtn.Visible:=false;
  KoreksiBtn.Visible:=false;
  Cetak.Visible:=false;
  SpeedButton8.Visible:=false;
end;

procedure TFrLunas.NoFakturEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrLunas.NoUrutKeyDown(Sender: TObject; var Key: Word;
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
      TampilData(nobukti.Text);

      Begin
        if FrMainLunas.ModalKoreksi then
        begin
          ActiveControl := NoUrut;
        end;
      end;
    end;
  end
  else if Key=Vk_Escape then
  begin
      mExit := True;
      Close;
  end;
end;

procedure TFrLunas.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrLunas.CetakClick(Sender: TObject);
var N1, N2, N3 : string;
    T1, T2 : Real;
    Tot : byte;
    H1  : real;
begin
  QuHutPiut.Filtered := False;
  QuHutPiut.Filter :='Bayar<>0';
  QuHutPiut.Filtered := true;
  tothal :=(QuHutPiut.RecordCount div 14);
  sishal :=(QuHutPiut.RecordCount mod 14);
  if sishal>0 then tothal :=tothal+1;
  {N3  := FloatToStr(Jumlah.Value);
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
    TempCode:=N1+'Rupiah ';}

  With QuUpdatedbbeli do
  begin
    close;
    sql.clear;
    sql.add('Select * From vwPerusahaan ');
    Open;
  end;

  if mTipeTrans='PT' then
     frxReport1.LoadFromFile(currDir+'Nota\NotaPiutang.fr3')
     else
     frxReport1.LoadFromFile(currDir+'Nota\NotaHutang.fr3');
  frxReport1.ShowReport;
   QuHutPiut.Filtered := False;
end;

procedure TFrLunas.SpeedButton8Click(Sender: TObject);
begin
  if mTipeTrans='PT' then
     frxReport1.LoadFromFile(currDir+'Nota\NotaPiutang.fr3')
     else
     frxReport1.LoadFromFile(currDir+'Nota\NotaHutang.fr3');
  frxReport1.DesignReport;
end;

procedure TFrLunas.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
  if comparetext(varname,'Tothal')=0 then
      value := tothal;
end;

procedure TFrLunas.ValasExit(Sender: TObject);
begin
if (length(Valas.Text)=0)  then
   begin
     KodeBrows:=1006;
     Application.CreateForm(Tfrbrows, frbrows);
     FrBrows.IsiData:=Valas.Text;
     frbrows.Showmodal;
     if FrBrows.ModalResult=mrOk then
     begin
       Valas.Text:=FrBrows.QuBrows.fieldbyname('KodeVls').AsString;
       Kurs.AsFloat:= FrBrows.QuBrows.fieldbyname('Kurs').AsFloat;
     end else
     begin
      if Valas.Enabled=true then
      ActiveControl:=Valas;
     end;
   end else
   begin
     if MyFindField('dbValas','KodeVls',Valas.Text)=true then
     begin
       Valas.Text:=DM.QuCari.fieldbyname('KodeVls').AsString;
       Kurs.AsFloat:= DM.QuCari.fieldbyname('Kurs').AsFloat;
     end else
     begin
       KodeBrows:=1006;
       Application.CreateForm(Tfrbrows, frbrows);
       FrBrows.IsiData:=Valas.Text;
       frbrows.Showmodal;
       if FrBrows.ModalResult=mrOk then
       begin
         Valas.Text:=FrBrows.QuBrows.fieldbyname('KodeVls').AsString;
         Kurs.AsFloat:= FrBrows.QuBrows.fieldbyname('Kurs').AsFloat;
       end else
       begin
         if Valas.Enabled=true then
         ActiveControl:=Valas;
       end;
     end;
   end;
   if Valas.Text='IDR' Then Kurs.AsFloat:=1.00;
   Kurs.Enabled:=Valas.Text<>'IDR';
   if Kurs.Enabled=False Then ActiveControl:=Jumlah;
end;

procedure TFrLunas.IsiTempHutPiut(pDK, pKode, pNoBukti, pUrut, pValas, pKodeCustSupp, pPerkiraan: String);
begin
 { if (pKode='HT') or (pKode='PT') or (pKode='UHT') or (pKode='UPT')  then
  begin
    with DM.QuCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add('delete dbTempHutPiut where IDUser='+QuotedStr(IDUser)+' and isnull(StatusUID,'''')='''' ');
      ExecSQL;
      SQL.Clear;
      SQL.Add('insert into dbTempHutPiut (NoFaktur, NoRetur, TipeTrans, KodeCustSupp, NoBukti, NoMsk, Urut, Tanggal, JatuhTempo, ');
      SQL.Add('Debet, Kredit, Valas, Kurs, DebetD, KreditD, KodeSales, Tipe, Perkiraan, Catatan, IDUser, TipeDK,');
      SQL.Add('NoInvoice, Valas_, Kurs_) ');
      SQL.Add('select Y.NoFaktur, Y.NoRetur, Y.TipeTrans, Y.KodeCustSupp, Y.NoBukti, Y.NoMsk, Y.Urut, Y.Tanggal, Y.JatuhTempo, ');
      SQL.Add('Y.Debet, Y.Kredit, Y.Valas, Y.Kurs, Y.DebetD, Y.KreditD, Y.KodeSales, Y.Tipe, Y.Perkiraan, Y.Catatan,'+QuotedStr(IDUser)+' IDUser, '+QuotedStr(pDK)+',');
      SQL.Add('Y.NoInvoice, Y.KodeVls_, Y.Kurs_ ');
      SQL.Add('from ');
      SQL.Add('  (select NoFaktur, KodeCustSupp, Perkiraan ');
      SQL.Add('  from vwHutPiut ');
      SQL.Add('  where KodeCustSupp='+QuotedStr(pKodeCustSupp)+' and Perkiraan='+QuotedStr(pPerkiraan));
      //SQL.Add('  where KodeCustSupp in (select KodeCustSupp from dbCustSupp where KodeCustSupp='+QuotedStr(pKodeCustSupp)+' or Agent='+QuotedStr(pKodeCustSupp)+')');
      //SQL.Add('  and Perkiraan='+QuotedStr(pPerkiraan));
      SQL.Add('  and NoBukti+right(''0000''+cast(NoMsk as varchar(4)),4)<>'+QuotedStr(pNoBukti+FormatFloat('0000',StrToInt(pUrut))));
      SQL.Add('  group by NoFaktur, KodeCustSupp, Perkiraan ');
      if ((pKode='HT') or (pKode='UPT')) and (pValas='IDR') then
        SQL.Add('  having sum(Kredit-Debet)>0')
      else if ((pKode='HT') or (pKode='UPT')) and (pValas<>'IDR') then
        SQL.Add('  having sum(KreditD-DebetD)>0')
      else if ((pKode='PT') or (pKode='UHT')) and (pValas='IDR') then
        SQL.Add('  having sum(Debet-Kredit)>0')
      else if ((pKode='PT') or (pKode='UHT')) and (pValas<>'IDR') then
        SQL.Add('  having sum(DebetD-KreditD)>0');
      SQL.Add('  ) X ');
      SQL.Add('left outer join vwHutPiut Y on Y.NoFaktur=X.NoFaktur and Y.KodeCustSupp=X.KodeCustSupp and Y.Perkiraan=X.Perkiraan ');
      SQL.Add('where Y.KodeCustSupp='+QuotedStr(pKodeCustSupp));
      //SQL.Add('where Y.KodeCustSupp in (select KodeCustSupp from dbCustSupp where KodeCustSupp='+QuotedStr(pKodeCustSupp)+' or Agent='+QuotedStr(pKodeCustSupp)+')');
      //SQL.Add('and Y.Perkiraan='+QuotedStr(pPerkiraan));
      SQL.Add('and Y.NoBukti+right(''0000''+cast(Y.NoMsk as varchar(4)),4)<>'+QuotedStr(pNoBukti+FormatFloat('0000',StrToInt(pUrut))));
      ExecSQL;
      if (Model='koreksi') and (((pDK='D') and (pPerkiraan=QuTransaksiPerkiraan.AsString)) or ((pDK='K') and (pPerkiraan=QuTransaksiLawan.AsString))) then
      begin
        SQL.Clear;
        SQL.Add('insert into dbTempHutPiut (NoFaktur, NoRetur, TipeTrans, KodeCustSupp, NoBukti, NoMsk, Urut, Tanggal, JatuhTempo, ');
        SQL.Add('Debet, Kredit, Valas, Kurs, DebetD, KreditD, KodeSales, Tipe, Perkiraan, Catatan, IDUser, StatusUID, TipeDK,');
        SQL.Add('NoInvoice, Valas_, Kurs_) ');
        SQL.Add('select Y.NoFaktur, Y.NoRetur, Y.TipeTrans, Y.KodeCustSupp, Y.NoBukti, Y.NoMsk, Y.Urut, Y.Tanggal, Y.JatuhTempo, ');
        SQL.Add('Y.Debet, Y.Kredit, Y.Valas, Y.Kurs, Y.DebetD, Y.KreditD, Y.KodeSales, Y.Tipe, Y.Perkiraan, Y.Catatan,'+QuotedStr(IDUser)+' IDUser, ');
        SQL.Add(' ''N'' StatusUID ');
        SQL.Add(', '+QuotedStr(pDK)+',');
        SQL.Add('Y.NoInvoice, Y.KodeVls_, Y.Kurs_ ');
        SQL.Add('from vwHutPiut Y ');
        SQL.Add('where Y.NoBukti+right(''0000''+cast(Y.NoMsk as varchar(4)),4)='+QuotedStr(pNoBukti+FormatFloat('0000',StrToInt(pUrut))));
        SQL.Add('and Perkiraan='+QuotedStr(pPerkiraan)+' and KodeCustSupp='+QuotedStr(pKodeCustSupp));
        //SQL.Add('and Perkiraan='+QuotedStr(pPerkiraan));
        //SQL.Add('and KodeCustSupp in (select KodeCustSupp from dbCustSupp where KodeCustSupp='+QuotedStr(pKodeCustSupp)+' or Agent='+QuotedStr(pKodeCustSupp)+')');
        ExecSQL;
      end;
    end;
  end;}
end;

procedure TFrLunas.TambahBtnClick(Sender: TObject);
begin
        Application.CreateForm(TFrHutPiut, FrHutPiut);
        IsiNoFakturKeTempLunas;
        if FrLunas.mTipeTrans='HT' then
        begin

             FrHutPiut.Caption := 'Pelunasan Hutang ';

        end
        else if FrLunas.mTipeTrans='PT' then
        begin
            FrHutPiut.Caption := 'Pelunasan Piutang';
        end;

        FrHutPiut.StatusHutPiut := '';
        FrHutPiut.Kurs.Value := Kurs.Value;
        FrHutPiut.Valas.Text := Valas.Text;
        FrHutPiut.Total.Value := Jumlah.Value;
        FrHutPiut.StatusHutPiut := '';
        FrHutPiut.PerkiraanhutPiut := '';
        FrHutPiut.Label1.Caption := FrLunas.KodeCS.Text;
        FrHutPiut.Tipe := FrLunas.mTipeTrans;
        FrHutPiut.DK := 'K';
        if MyFindField('dbCustSupp','KodeCustSupp',FrLunas.KodeCS.Text)=true then
            FrHutPiut.Label2.Caption:='[ '+dm.QuCari.fieldbyname('NamaCustSupp').AsString+' ]';
        FrHutPiut.Label3.Caption:=NOBUKTI.Text;
        IsiTempHutPiut('K',FrLunas.mTipeTrans,NOBUKTI.Text,IntToStr(mUrut),Valas.Text,FrLunas.KodeCS.Text,'');
        FrHutPiut.ShowModal;
end;

procedure TFrLunas.CBBayarChange(Sender: TObject);
begin
 Panel5.Visible:=CBBayar.ItemIndex=1;
end;

procedure TFrLunas.CBBayarExit(Sender: TObject);
begin
if CBBayar.ItemIndex=1 Then
 Begin
  ActiveControl:=NoGiro;
  NilaiGiro.AsFloat:=Jumlah.AsFloat;
 end;
end;

procedure TFrLunas.tvMasterKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_INSERT Then
TambahBtn.Click
else if Key=VK_ESCAPE Then
Begin
 If FrMainLunas.ModalKoreksi = False then
    begin
      if TransaksiSelesai then
      begin
        Hapus_Daftar_Nomor_User(mTipeTrans,IDUser);
        mValid:=False;
        RefreshAll;
        IsiNoBuktiBaru;
        TampilData(NOBUKTI.Text);
        ActiveControl := NoUrut;
      end;
    end
    else
    begin
      if TransaksiSelesai then
      begin
      mExit := true;
      close;
      end;
    end;
end;
end;

end.


