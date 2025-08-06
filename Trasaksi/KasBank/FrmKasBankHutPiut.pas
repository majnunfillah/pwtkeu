unit FrmKasBankHutPiut;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, wwdblook, Wwdbigrd, Wwdbgrid,
  DBCtrls, ppBands, ppCtrls, ppDB, jpeg, ppPrnabl, ppClass, ppCache,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, ImgList, RxNotify,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGridLevel, cxGrid,Variants, Math,
  cxGridBandedTableView, cxGridDBBandedTableView;

type
  TFrKasBankHutPiut = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Shape4: TShape;
    Label10: TLabel;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;                                                                                                                   
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    NoBukti: TEdit;
    TglBukti: TDateEdit;
    Tgljatuhtempo: TDateEdit;
    Catatan: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Jumlah: TPBNumEdit;
    dxDBhutPiut: TdxDBGrid;
    dxDBhutPiutNoFaktur: TdxDBGridMaskColumn;
    dxDBhutPiutNoRetur: TdxDBGridMaskColumn;
    dxDBhutPiutTipeTrans: TdxDBGridMaskColumn;
    dxDBhutPiutKodeCustSupp: TdxDBGridMaskColumn;
    dxDBhutPiutNoBukti: TdxDBGridMaskColumn;
    dxDBhutPiutNoMsk: TdxDBGridMaskColumn;
    dxDBhutPiutUrut: TdxDBGridMaskColumn;
    dxDBhutPiutTanggal: TdxDBGridDateColumn;
    dxDBhutPiutJatuhTempo: TdxDBGridDateColumn;
    dxDBhutPiutDebet: TdxDBGridMaskColumn;
    dxDBhutPiutKredit: TdxDBGridMaskColumn;
    dxDBhutPiutSaldo: TdxDBGridMaskColumn;
    dxDBhutPiutValas: TdxDBGridMaskColumn;
    dxDBhutPiutKurs: TdxDBGridMaskColumn;
    dxDBhutPiutDebetD: TdxDBGridMaskColumn;
    dxDBhutPiutKreditD: TdxDBGridMaskColumn;
    dxDBhutPiutSaldoD: TdxDBGridMaskColumn;
    dxDBhutPiutKodeSales: TdxDBGridMaskColumn;
    dxDBhutPiutTipe: TdxDBGridMaskColumn;
    dxDBhutPiutPerkiraan: TdxDBGridMaskColumn;
    dxDBhutPiutSaldoRp: TdxDBGridMaskColumn;
    dxDBhutPiutSaldoVls: TdxDBGridMaskColumn;
    dxDBhutPiutCatatan: TdxDBGridMaskColumn;
    dxDBhutPiutMyKey: TdxDBGridMaskColumn;
    Label4: TLabel;
    Valas: TEdit;
    Label5: TLabel;
    Kurs: TPBNumEdit;
    Panel5: TPanel;
    Panel6: TPanel;
    btnTutupGiro: TSpeedButton;
    HapusBtn: TSpeedButton;
    SpeedButton2: TSpeedButton;
    TambahBtn: TSpeedButton;
    Total: TPBNumEdit;
    Label6: TLabel;
    Label13: TLabel;
    Dibayar: TPBNumEdit;
    Sisa: TPBNumEdit;
    Label14: TLabel;
    dxDBhutPiutColumn25: TdxDBGridColumn;
    KursBayar: TPBNumEdit;
    JumlahD: TPBNumEdit;
    LabelJumlahD: TLabel;
    LabelKursBayar: TLabel;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    tvHutPiut: TcxGridDBBandedTableView;
    tvHutPiutMyKey: TcxGridDBBandedColumn;
    tvHutPiutNoFaktur: TcxGridDBBandedColumn;
    tvHutPiutNoRetur: TcxGridDBBandedColumn;
    tvHutPiutTipeTrans: TcxGridDBBandedColumn;
    tvHutPiutKodeCustSupp: TcxGridDBBandedColumn;
    tvHutPiutNoBukti: TcxGridDBBandedColumn;
    tvHutPiutNoMsk: TcxGridDBBandedColumn;
    tvHutPiutUrut: TcxGridDBBandedColumn;
    tvHutPiutTanggal: TcxGridDBBandedColumn;
    tvHutPiutJatuhTempo: TcxGridDBBandedColumn;
    tvHutPiutDebet: TcxGridDBBandedColumn;
    tvHutPiutKredit: TcxGridDBBandedColumn;
    tvHutPiutSaldo: TcxGridDBBandedColumn;
    tvHutPiutValas: TcxGridDBBandedColumn;
    tvHutPiutKurs: TcxGridDBBandedColumn;
    tvHutPiutDebetD: TcxGridDBBandedColumn;
    tvHutPiutKreditD: TcxGridDBBandedColumn;
    tvHutPiutSaldoD: TcxGridDBBandedColumn;
    tvHutPiutKodeSales: TcxGridDBBandedColumn;
    tvHutPiutTipe: TcxGridDBBandedColumn;
    tvHutPiutPerkiraan: TcxGridDBBandedColumn;
    tvHutPiutCatatan: TcxGridDBBandedColumn;
    tvHutPiutMyID: TcxGridDBBandedColumn;
    tvHutPiutIDUser: TcxGridDBBandedColumn;
    tvHutPiutStatusUID: TcxGridDBBandedColumn;
    tvHutPiutJumlahSaldo: TcxGridDBBandedColumn;
    tvHutPiutJumlahSaldoD: TcxGridDBBandedColumn;
    tvHutPiutTipeDK: TcxGridDBBandedColumn;
    tvHutPiutNoInvoice: TcxGridDBBandedColumn;
    tvHutPiutValas_: TcxGridDBBandedColumn;
    tvHutPiutKurs_: TcxGridDBBandedColumn;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    dxDBhutPiutColumn26: TdxDBGridColumn;
    procedure TambahBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TampilData(KodeCust:String);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ClearDetailPanel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure HapusBtnClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure NoBuktiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NoBuktiEnter(Sender: TObject);
    procedure dxDBhutPiutCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure btnTutupGiroClick(Sender: TObject);
    procedure TotalChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure JumlahKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
    mNoInvoice, mValas_: String;
    mKurs_,SisaSaldo: Real;
      UM,KurangBayar:Boolean;
  public
    { Public declarations }
    mValid,mExit,IsHitung: Boolean;
    mBukti,Sat,SortBy:String;
    mUrut,IsTutup,mNosat,statusDK,mDetail:Integer;
    TipeTrans,PlusPPN,Nomor,Model,mTransaksi:String;
    mBulan,mTahun,mNoBukti,StatusHutPiut,PerkiraanhutPiut,Tipe:string;
    mSaldo, mSaldoD, IsiBrg, potongan, mDibayar, mDibayarD, SisaPiutang, LebihBayar :Real;
    S:array[0..255]of char;
    mTitip : boolean;
    IsGiroCair : Boolean;
    TipeGiro,JenisTransGiro,DK : String;
    KodeTrans,KodeByr,Jenis :string;
    procedure SimpanData(Choice:String);
    Function CekPelunasanMax(Nota:String;JmlPelunasan:Real;Var JmlHut,SisaPiut:Real):Boolean;
    Function JumlahYgDibayar(Nota:String):Real;
    procedure TampilDataHutPiut(xNobukti,xPerkiraan,xkodeCustSupp,DK:String);
    procedure SaldoHutPiut;
  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrKasBankHutPiut: TFrKasBankHutPiut;


implementation

uses FrmBrows,MyProcedure,MyGlobal,MyModul, FrmKasBank;

{$R *.DFM}

procedure TFrKasBankHutPiut.SaldoHutPiut;
var X,Y:Double; xNoFaktur: String;
begin
  FrKasBank.QuTempHutPiut.First;
  X := 0;
  Y := 0;
  xNoFaktur:='';
  while not FrKasBank.QuTempHutPiut.Eof do
  begin
    if xNoFaktur<>FrKasBank.QuTempHutPiutNoFaktur.AsString then
    begin
      xNoFaktur:=FrKasBank.QuTempHutPiutNoFaktur.AsString;
      //X:=0; Y:=0;
    end;
    X:=X+FrKasBank.QuTempHutPiutSaldo.AsFloat;
    Y:=Y+FrKasBank.QuTempHutPiutSaldoD.AsFloat;
    DM.QuTemp.Close;
    DM.QuTemp.SQL.Clear;
    DM.QuTemp.SQL.Add('update dbTempHutPiut set JumlahSaldo=:0, JumlahSaldoD=:1 ');
    DM.QuTemp.SQL.Add('where IDUser='+QuotedStr(IDUser)+' and Perkiraan='+QuotedStr(PerkiraanhutPiut)+' and TipeDK='+QuotedStr(DK)+' and isnull(StatusUID,'''')<>''D'' ');
    DM.QuTemp.SQL.Add('and NoFaktur='+QuotedStr(FrKasBank.QuTempHutPiutNoFaktur.AsString)+' and Tanggal=:2 and NoRetur='+QuotedStr(FrKasBank.QuTempHutPiutNoRetur.AsString)+' and Urut='+IntToStr(FrKasBank.QuTempHutPiutUrut.AsInteger));
    DM.QuTemp.Prepared;
    DM.QuTemp.Parameters[0].Value:=X;
    DM.QuTemp.Parameters[1].Value:=Y;
    DM.QuTemp.Parameters[2].Value:=FrKasBank.QuTempHutPiutTanggal.AsDateTime;
    DM.QuTemp.ExecSQL;
    FrKasBank.QuTempHutPiut.Next;
  end;
end;

procedure TFrKasBankHutPiut.TampilDataHutPiut(xNobukti,xPerkiraan,xkodeCustSupp,DK:String);
begin
  FrKasBank.QuTempHutPiut.Close;
  FrKasBank.QuTempHutPiut.SQL.Strings[2]:='select @IDUser='+QuotedStr(IDUser)+', @Perkiraan='+QuotedStr(xPerkiraan)+', @TipeDK='+QuotedStr(DK);
  FrKasBank.QuTempHutPiut.Open;
  SaldoHutPiut;
  FrKasBank.QuTempHutPiut.Close;
  FrKasBank.QuTempHutPiut.Open;
end;

procedure TFrKasBankHutPiut.SimpanData(Choice:String);
begin
  with FrKasBank.sp_TempHutPiut do
  begin
    Prepared;
    Parameters[1].Value:=Choice;
    if Choice='D' then
    begin
      Parameters[2].Value:=FrKasBank.QuTempHutPiutNoFaktur.AsString;
      Parameters[3].Value:=FrKasBank.QuTempHutPiutNoRetur.AsString;
      Parameters[4].Value:=FrKasBank.QuTempHutPiutTipeTrans.AsString;
      Parameters[5].Value:=FrKasBank.QuTempHutPiutKodeCustSupp.AsString;
      Parameters[6].Value:=FrKasBank.QuTempHutPiutNoBukti.AsString;
      Parameters[7].Value:=FrKasBank.QuTempHutPiutNoMsk.AsInteger;
      Parameters[8].Value:=FrKasBank.QuTempHutPiutUrut.AsInteger;
    end else
    begin
      Parameters[2].Value:=NoBukti.Text;
      Parameters[3].Value:='';
      Parameters[4].Value:='L';
      Parameters[5].Value:=Label1.Caption;
      Parameters[6].Value:=FrKasBank.NOBUKTI.Text;
      Parameters[7].Value:=FrKasBank.mUrut;
      if Choice='U' then
        Parameters[8].Value:=FrKasBank.QuTempHutPiutUrut.AsInteger
      else
        Parameters[8].Value:=1;
    end;
    Parameters[9].Value:=TglBukti.Date;
    Parameters[10].Value:=Tgljatuhtempo.Date;
    if ((StatusHutPiut='PT+')) or ((StatusHutPiut='HT-')) or ((StatusHutPiut='UPT-')) or ((StatusHutPiut='UHT+')) then
    begin
      Parameters[11].Value:=Jumlah.AsFloat;
      Parameters[12].Value:=0;
    end
    else if ((StatusHutPiut='PT-'))  or ((StatusHutPiut='HT+')) or ((StatusHutPiut='UPT+'))  or ((StatusHutPiut='UHT-')) then
    begin
      Parameters[11].Value:=0;
      Parameters[12].Value:=Jumlah.AsFloat;
    end;
    Parameters[13].Value:=Valas.Text;
    Parameters[14].Value:=Kurs.AsFloat;
    Parameters[15].Value:='';
    Parameters[16].Value:=Tipe;
    Parameters[17].Value:=PerkiraanhutPiut;
    Parameters[18].Value:=Catatan.Text;
    Parameters[19].Value:=IDUser;
    //if ((StatusHutPiut='PT+')) or ((StatusHutPiut='HT+'))then
    //  Parameters[20].Value:='D'
    //else
    //  Parameters[20].Value:='K';
    Parameters[20].Value:=DK;
    Parameters[21].Value:=mNoInvoice;
    Parameters[22].Value:=mValas_;
    Parameters[23].Value:=mKurs_;
    if mValas_=Valas.Text then
      Parameters[24].Value:=Kurs.AsFloat
    else
      Parameters[24].Value:=KursBayar.AsFloat;
    if mValas_=Valas.Text then
    begin
      Parameters[25].Value:=0;
      Parameters[26].Value:=0;
    end else
    begin
      if ((StatusHutPiut='PT+')) or ((StatusHutPiut='HT-')) or ((StatusHutPiut='UPT-')) or ((StatusHutPiut='UHT+')) then
      begin
        Parameters[25].Value:=JumlahD.AsFloat;
        Parameters[26].Value:=0;
      end
      else if ((StatusHutPiut='PT-'))  or ((StatusHutPiut='HT+')) or ((StatusHutPiut='UPT+'))  or ((StatusHutPiut='UHT-')) then
      begin
        Parameters[25].Value:=0;
        Parameters[26].Value:=JumlahD.AsFloat;
      end;
    end;
    try
      ExecProc;
      TampilDataHutPiut(Label3.Caption,PerkiraanhutPiut,Label1.Caption,DK);
      Dibayar.Value:=FrKasBank.CariJumlahPembayaranHutPiut(StatusHutPiut,FrKasBank.Valas.Text);
    except

    end;
  end;
end;

Function TFrKasBankHutPiut.JumlahYgDibayar(Nota:String): Real;
begin
{   Result :=0;
   with DM.QuCari do
   begin
      Close;
      SQL.Clear;
      SQL.Add('select Sum(Case when Tipe=''HT'' then Kredit-Debet');
      SQL.Add('                when Tipe=''PT'' then Debet-Kredit');
      SQL.Add('           end) Saldo from vwHutPiut where nofaktur=:1 ');
      Parameters[0].Value:=Nota;
      Open;
   end;
   if not DM.QuCari.IsEmpty then
      Result:=DM.QuCari.Fieldbyname('Saldo').Value;
}
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    if FrKasBank.Valas.Text='IDR' then
      SQL.Add('select Sum(Case when Tipe=''HT'' or Tipe=''UPT'' then Kredit-Debet when Tipe=''PT'' or Tipe=''UHT'' then Debet-Kredit end) Saldo ')
    else
      SQL.Add('select Sum(Case when Tipe=''HT'' or Tipe=''UPT'' then KreditD-DebetD when Tipe=''PT'' or Tipe=''UHT'' then DebetD-KreditD end) Saldo ');
    SQL.Add('from dbTempHutPiut ');
    SQL.Add('where NoFaktur='+QuotedStr(Nota)+' and IDUser='+QuotedStr(IDUser));
    SQL.Add('and isnull(StatusUID,'''')<>''D'' ');
    Open;
  end;
  if not DM.QuCari.IsEmpty then
    Result:=DM.QuCari.Fieldbyname('Saldo').AsFloat
  else Result:=0;
end;

Function TFrKasBankHutPiut.CekPelunasanMax(Nota:String;JmlPelunasan:Real;Var JmlHut,SisaPiut:Real): Boolean;
var JmlHutang : Real;
begin
   with DM.QuCari do
   begin
      Close;
      SQL.Clear;
      if FrKasBank.Valas.Text='IDR' then
      begin
        SQL.Add('select sum(Case when isnull(StatusUID,'''')<>''D'' then Case when Tipe=''HT'' or Tipe=''UPT'' then Debet');
        Sql.add('            when Tipe=''PT'' or Tipe=''UHT'' then Kredit');
        sql.add('            else 0 end else 0 end) Lunas,');
        Sql.add('       sum(Case when isnull(StatusUID,'''')<>''D'' then Case when Tipe=''HT'' or Tipe=''UPT'' then kredit');
        Sql.add('            when Tipe=''PT'' or Tipe=''UHT'' then Debet');
        sql.add('            else 0 end else 0 end) HutPiut ');
        sql.add('from dbtempHutPiut ');
        sql.add('where NoFaktur='+QuotedStr(Nota)+' and isnull(StatusUID,'''')<>''D''');
        SQL.Add('and KodeCustSupp='+QuotedStr(Label1.Caption));
      end else
      begin
        SQL.Add('select sum(Case when isnull(StatusUID,'''')<>''D'' then Case when Tipe=''HT'' or Tipe=''UPT'' then DebetD');
        Sql.add('            when Tipe=''PT'' or Tipe=''UHT'' then KreditD');
        sql.add('            else 0 end else 0 end) Lunas,');
        Sql.add('       sum(Case when isnull(StatusUID,'''')<>''D'' then Case when Tipe=''HT'' or Tipe=''UPT'' then kreditD');
        Sql.add('            when Tipe=''PT'' or Tipe=''UHT'' then DebetD');
        sql.add('            else 0 end else 0 end) HutPiut ');
        sql.add('from dbtempHutPiut ');
        sql.add('where NoFaktur='+QuotedStr(Nota));
        SQL.Add('and KodeCustSupp='+QuotedStr(Label1.Caption));
      end;
      Open;
   end;
   JmlHutang:=DM.QuCari.FieldbyName('HutPiut').Value;
   JmlHut:=JmlHutang;
   SisaPiut:=JmlHutang-DM.QuCari.FieldbyName('Lunas').Value;
   Result:=(Roundto(DM.QuCari.FieldbyName('Lunas').AsFloat+JmlPelunasan,-2))>RoundTo(JmlHutang,-2);
end;

procedure TFrKasBankHutPiut.ClearDetailPanel;
var i:integer;
begin
  NoBukti.Text := '';
  TglBukti.Date := FrKasBank.TANGGAL.Date;
  Tgljatuhtempo.Date := FrKasBank.TANGGAL.Date;
  //Jumlah.Value := 0;
  Catatan.Text := ''; 
end;


procedure TFrKasBankHutPiut.TambahBtnClick(Sender: TObject);
var xJumlahYgdibayar, xJumlahYgDibayarD : real;
begin
  mTransaksi:='pelunasan';
  mValid:=False;
  if not FrKasBank.QuTempHutPiut.IsEmpty then
  begin
    if Sisa.Value<>0 then
    begin
      Model:='write';
      Panel3.Visible:=true;
      Panel1.Enabled:=false;
      Panel2.Enabled:=false;
      Panel3.Enabled:=True;
      NoBukti.Text:=FrKasBank.QuTempHutPiutNoFaktur.AsString;
      TglBukti.Date:=FrKasBank.TANGGAL.Date;
      mNoInvoice:=FrKasBank.QuTempHutPiutNoInvoice.AsString;
      mValas_:=FrKasBank.QuTempHutPiutValas_.AsString;
      mKurs_:=FrKasBank.QuTempHutPiutKurs_.AsFloat;
      Tgljatuhtempo.Date:=FrKasBank.QuTempHutPiutJatuhTempo.AsDateTime;
      LabelJumlahD.Visible:=mValas_<>Valas.Text;
      JumlahD.Visible:=mValas_<>Valas.Text;
      LabelKursBayar.Visible:=mValas_<>Valas.Text;
      KursBayar.Visible:=mValas_<>Valas.Text;
      xJumlahYgdibayar:=JumlahYgDibayar(FrKasBank.QuTempHutPiutNoFaktur.AsString);
      if (xJumlahYgdibayar<Sisa.Value) then
      begin
        Jumlah.Value:=xJumlahYgdibayar;
      end else
      begin
        Jumlah.Value:=Sisa.Value;
      end;
    end;
  end
  else
  begin
    ShowMessage('Tabel Kosong !');
    ActiveControl:=dxDBhutPiut;
  end;
end;

procedure TFrKasBankHutPiut.TampilData(KodeCust:String);
begin
  if mDetail=0 then
  begin
     mSaldo:=0;
     mSaldoD:=0;
     mDibayar:=0;
     mDibayarD:=0;
     IsHitung:=true;

  end;
end;


procedure TFrKasBankHutPiut.FormShow(Sender: TObject);
begin
  statusDK:=FrKasBank.statusDK;
  TampilDataHutPiut(Label3.Caption,PerkiraanhutPiut,Label1.Caption,DK);
  Dibayar.Value:=FrKasBank.CariJumlahPembayaranHutPiut(StatusHutPiut,FrKasBank.Valas.Text);
end;

procedure TFrKasBankHutPiut.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  Panel1.Enabled:=true;
  Panel2.Enabled:=true;
  Panel3.Enabled:=false;
  Panel3.Visible:=false;
  NoBukti.Enabled:=false;
  TglBukti.Enabled:=false;
  Tgljatuhtempo.Enabled:=false;
  mTitip:=false;
  Jumlah.Enabled:=true;
  ClearDetailPanel;
  ActiveControl:=dxDBhutPiut;
end;

procedure TFrKasBankHutPiut.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrKasBankHutPiut.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if mExit=true then
     Action:=cafree
  else
     Action:=caNone;
end;

procedure TFrKasBankHutPiut.HapusBtnClick(Sender: TObject);
begin
   if FrKasBank.QuTempHutPiutStatusUID.AsString<>'' then
   begin
     StrPCopy(S,Format('Anda yakin akan menghapus No. Faktur %s ?',
        [FrKasBank.QuTempHutPiutNoFaktur.AsString]));
        if (Application.MessageBox(S,'Hapus Data',
                MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
        begin
          SimpanData('D');
        end;
   end else
   begin
        ShowMessage('Transaksi tidak bisa dihapus !');
        ActiveControl:=dxDBhutPiut;
   end;
end;

procedure TFrKasBankHutPiut.SpeedButton2Click(Sender: TObject);
begin
  if Sisa.Value<>0 then
  begin
    mTransaksi:='penambahan';
    Model:='write';
    mUrut := FrKasBank.dxHutPiut.RecordCount+1;
    Panel3.Visible:=true;
    Panel1.Enabled:=false;
    Panel2.Enabled:=false;
    Panel3.Enabled:=True;
    NoBukti.Enabled:=true;
    TglBukti.Enabled:=True;
    Tgljatuhtempo.Enabled:=True;
    TglBukti.Date:=FrKasBank.TANGGAL.date;
    Tgljatuhtempo.Date:=FrKasBank.TANGGAL.date;
    Jumlah.Value:=Sisa.Value;
    LabelJumlahD.Visible:=False;
    JumlahD.Visible:=False;
    LabelKursBayar.Visible:=False;
    KursBayar.Visible:=False;
    ActiveControl:=NoBukti;
  end;

end;

procedure TFrKasBankHutPiut.NoBuktiKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=vk_escape then
   begin
      SpeedButton1.Click;
   end;
end;

procedure TFrKasBankHutPiut.NoBuktiEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrKasBankHutPiut.dxDBhutPiutCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if ANode.HasChildren then
  Exit;
  //if ANode.Values[dxDBhutPiut.ColumnByFieldName('MyNobuktiKas').Index]=FrKasBank.NOBUKTI.Text+IntToStr(FrKasBank.mUrut) then
  if (ANode.Values[dxDBhutPiut.ColumnByFieldName('NoBukti').Index]=FrKasBank.NOBUKTI.Text) and (ANode.Values[dxDBhutPiut.ColumnByFieldName('NoMsk').Index]=FrKasBank.mUrut) then
  begin
      AColor:=$00C0F8F7;
      AFont.Color:= clred;
  end
  else
  begin
      AColor:=clWindow;
      AFont.Color:=clBlack;
  end;
end;

procedure TFrKasBankHutPiut.btnTutupGiroClick(Sender: TObject);
begin
  mExit := True;
  Close;
end;

procedure TFrKasBankHutPiut.TotalChange(Sender: TObject);
begin
  Sisa.Value:=Total.Value-Dibayar.Value;
end;

procedure TFrKasBankHutPiut.BitBtn1Click(Sender: TObject);
var JmlHutPiut :Real;
begin
  if Trim(NoBukti.Text)='' then
  begin
    MsgDataTidakBolehKosong(Label7.Caption);
    try
      ActiveControl:=NoBukti;
    except
    end;
  end else
  begin
    if mTransaksi='pelunasan' then
    begin
      if (Jumlah.Value<>0) and (NoBukti.Text<>'') then
      begin
        if CekPelunasanMax(NoBukti.Text, Jumlah.Value, JmlHutPiut, SisaPiutang)=True then
        begin
          MessageDlg('Ada kelebihan pembayaran, Sisa : '+FormatFloat(',0.00',SisaPiutang),mtInformation,[mbOK],0);
          ActiveControl:=Jumlah;
        end else
        begin
          SimpanData('I');
          SpeedButton1.Click;
          FrKasBank.Jumlah.Value:=Jumlah.Value;
        end;
      end
      else
      begin

      end;
    end
    else
    begin
      if RoundTo(Jumlah.Value,-2)>RoundTo(Sisa.Value,-2) then
      begin
        MessageDlg('Jumlah tidak boleh lebih dari Sisa',mtError,[mbOK],0);
        ActiveControl:=Jumlah;
      end else
      begin
        if Jumlah.Value<>0 then
           SimpanData('I');
        ClearDetailPanel;
        Jumlah.Value:=Sisa.Value;
        ActiveControl := NoBukti;
      end;
    end;
  end;
end;

procedure TFrKasBankHutPiut.JumlahKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=vk_Escape then
  begin
     SpeedButton1.Click;
  end;
end;

procedure TFrKasBankHutPiut.SpeedButton4Click(Sender: TObject);
begin
  if (Sisa.AsFloat<>0)Then
  Begin
     FrKasBank.XLebihBayar:=False;
     FrKasBank.Jumlah.AsFloat:=Dibayar.AsFloat;
     FrKasBank.BitBtn1.Click;
     FrKasBank.XLebihBayar:=True;
     FrKasBank.BitBtn1.Click;
     FrKasBank.XLebihBayar:=False;
     btnTutupGiro.Click;
     FrKasBank.SpeedButton1.Click;
  end;
end;

procedure TFrKasBankHutPiut.SpeedButton5Click(Sender: TObject);
begin
  if  (FrKasBank.Valas.Text='IDR') Then
  Begin
    if Tipe='HT' Then
    Begin
      With DM.QuCari Do
      begin
        Close;
        SQl.Clear;
        SQL.Add('select Nofaktur,Perkiraan,KodeCustSupp, SUM(Kredit-Debet) Saldo from dbTempHutPiut  ');
        SQL.Add('where Nofaktur='+QuotedStr(dxDBhutPiutNoFaktur.Field.AsString)+' and KodeCustSupp='+QuotedStr(Label1.Caption)+' and Perkiraan='+QuotedStr(FrKasBank.perkiraan.Text));
        SQL.Add('and StatusUID<>''D'' ');
        SQL.Add('Group by Nofaktur,Perkiraan,KodeCustSupp ');
        SQL.Add('Having  SUM(Kredit-Debet)>0');
        Open;
        SisaSaldo:=FieldByname('Saldo').AsFloat;
      end;
    end else
    Begin
      With DM.QuCari Do
      begin
        Close;
        SQl.Clear;
        SQL.Add('select Nofaktur,Perkiraan,KodeCustSupp, SUM(Debet-Kredit) Saldo from dbTempHutPiut  ');
        SQL.Add('where Nofaktur='+QuotedStr(dxDBhutPiutNoFaktur.Field.AsString)+' and KodeCustSupp='+QuotedStr(Label1.Caption)+' and Perkiraan='+QuotedStr(FrKasBank.Lawan.Text));
        SQL.Add('and StatusUID<>''D'' ');
        SQL.Add('Group by Nofaktur,Perkiraan,KodeCustSupp ');
        SQL.Add('Having SUM(Debet-Kredit)>0');
        Open;
        SisaSaldo:=FieldByname('Saldo').AsFloat;
      end;
    end;
    If  (SisaSaldo<>0) Then
    Begin
      KurangBayar:=True;
      TambahBtn.Click;
      BitBtn1.Click;
      KurangBayar:=False;
      //FrKasBank.XKurangBayar:=True;
      //FrKasBank.BitBtn1.Click;
      //FrKasBank.XKurangBayar:=False;
      //ProsesHUTPIUT;
      //TampilDataHutPiut(Label3.Caption,PerkiraanhutPiut,Label1.Caption,DK);
    end;
  end
  else
  if  (FrKasBank.Valas.Text<>'IDR') Then
    Begin
    if  Tipe='HT' Then
    Begin
      With DM.QuCari Do
      begin
        Close;
        SQl.Clear;
        SQL.Add('select Nofaktur,Perkiraan,KodeCustSupp, SUM(KreditD-DebetD) Saldo from dbTempHutPiut  ');
        SQL.Add('where Nofaktur='+QuotedStr(dxDBhutPiutNoFaktur.Field.AsString)+' and KodeCustSupp='+QuotedStr(Label1.Caption)+' and Perkiraan='+QuotedStr(FrKasBank.Perkiraan.Text));
        SQL.Add('and StatusUID<>''D'' ');
        SQL.Add('Group by Nofaktur,Perkiraan,KodeCustSupp ');
        SQL.Add('Having SUM(KreditD-DebetD)>0');
        Open;
        SisaSaldo:=FieldByname('Saldo').AsFloat;
      end;
    end
    else
    Begin
      With DM.QuCari Do
      begin
        Close;
        SQl.Clear;
        SQL.Add('select Nofaktur,Perkiraan,KodeCustSupp, SUM(DebetD-KreditD) Saldo from dbTempHutPiut  ');
        SQL.Add('where Nofaktur='+QuotedStr(dxDBhutPiutNoFaktur.Field.AsString)+' and KodeCustSupp='+QuotedStr(Label1.Caption)+' and Perkiraan='+QuotedStr(FrKasBank.Lawan.Text));
        SQL.Add('and StatusUID<>''D'' ');
        SQL.Add('Group by Nofaktur,Perkiraan,KodeCustSupp ');
        SQL.Add('Having SUM(DebetD-KreditD)>0');
        Open;
        SisaSaldo:=FieldByname('Saldo').AsFloat;
      end;
    end;
    If (SisaSaldo<>0) Then
    Begin
      KurangBayar:=True;
      TambahBtn.Click;
      BitBtn1.Click;
      KurangBayar:=False;
      //FrKasBank.XKurangBayar:=True;
      //FrKasBank.BitBtn1.Click;
      //FrKasBank.XKurangBayar:=False;
      //ProsesHUTPIUT;
      //TampilDataHutPiut(Label3.Caption,PerkiraanhutPiut,Label1.Caption,DK);
    end;
  end;

end;

end.
