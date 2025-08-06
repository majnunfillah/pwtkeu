unit FrmHutPiut;

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
  cxControls, cxGridCustomView, cxGridLevel, cxGrid,Variants, Math;

type
  TFrHutPiut = class(TForm)
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
    dxDBhutPiutNoFaktur: TdxDBGridMaskColumn;
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
    procedure dxDBhutPiutClick(Sender: TObject);
    procedure dxDBhutPiutDblClick(Sender: TObject);
    procedure dxDBhutPiutMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxDBhutPiutKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    mNoInvoice, mValas_: String;
    mKurs_: Real;
  public
    { Public declarations }
    mValid,mExit,IsHitung: Boolean;
    mBukti,Sat,SortBy:String;
    mUrut,IsTutup,mNosat,statusDK,mDetail:Integer;
    PlusPPN,Nomor,Model,mTransaksi:String;
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
    procedure TampilDataHutPiut(xNobukti,xPerkiraan,xkodeCustSupp:String);
    procedure SaldoHutPiut;
  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrHutPiut: TFrHutPiut;
  Mode : Boolean;


implementation

uses FrmBrows,MyProcedure,MyGlobal,MyModul, FrmLunas;

{$R *.DFM}

procedure TFrHutPiut.SaldoHutPiut;
var X,Y:Double; xNoFaktur: String;
begin
 { FrLunas.QuTempHutPiut.First;
  X := 0;
  Y := 0;
  xNoFaktur:='';
  while not FrLunas.QuTempHutPiut.Eof do
  begin
    if xNoFaktur<>FrLunas.QuTempHutPiutNoFaktur.AsString then
    begin
      xNoFaktur:=FrLunas.QuTempHutPiutNoFaktur.AsString;
      X:=0; Y:=0;
    end;
    X:=X+FrLunas.QuTempHutPiutSaldo.AsFloat;
    Y:=Y+FrLunas.QuTempHutPiutSaldoD.AsFloat;
    DM.QuTemp.Close;
    DM.QuTemp.SQL.Clear;
    DM.QuTemp.SQL.Add('update dbTempHutPiut set JumlahSaldo=:0, JumlahSaldoD=:1 ');
    DM.QuTemp.SQL.Add('where IDUser='+QuotedStr(IDUser)+' and Perkiraan='+QuotedStr(PerkiraanhutPiut)+' and TipeDK='+QuotedStr(DK)+' and isnull(StatusUID,'''')<>''D'' ');
    DM.QuTemp.SQL.Add('and NoFaktur='+QuotedStr(FrLunas.QuTempHutPiutNoFaktur.AsString)+' and Tanggal=:2 and NoRetur='+QuotedStr(FrLunas.QuTempHutPiutNoRetur.AsString)+' and Urut='+IntToStr(FrLunas.QuTempHutPiutUrut.AsInteger));
    DM.QuTemp.Prepared;
    DM.QuTemp.Parameters[0].Value:=X;
    DM.QuTemp.Parameters[1].Value:=Y;
    DM.QuTemp.Parameters[2].Value:=FrLunas.QuTempHutPiutTanggal.AsDateTime;
    DM.QuTemp.ExecSQL;
    FrLunas.QuTempHutPiut.Next;
  end;}
end;

procedure TFrHutPiut.TampilDataHutPiut(xNobukti,xPerkiraan,xkodeCustSupp:String);
begin



  FrLunas.QuHutPiut.Close;
  FrLunas.QuHutPiut.SQL.Strings[1]:='select @Kodecust='+QuotedStr(xkodeCustSupp)+',@NoBukti='+QuotedStr(xNobukti)+', @Perkiraan ='+QuotedStr(xPerkiraan);
  FrLunas.QuHutPiut.Open;
  SaldoHutPiut;
  //FrLunas.QuTempHutPiut.Close;
  //FrLunas.QuTempHutPiut.Open;
end;

procedure TFrHutPiut.SimpanData(Choice:String);
var xJumlahYgdibayar, xJumlahYgDibayarD : real;
begin
   with FrLunas.sp_HutPiut do
      begin
        Prepared;
        Parameters[1].Value:=Choice;
        if Choice='D' then
        begin
          Parameters[2].Value:=FrLunas.QuHutPiutNoFaktur.AsString;
          Parameters[3].Value:='';//FrLunas.QuvTempHutPiutNoRetur.AsString;
          Parameters[4].Value:='L';
          Parameters[5].Value:=FrLunas.KodeCS.Text;
          Parameters[6].Value:=FrLunas.NoBukti.Text;
          Parameters[7].Value:=FrLunas.QuHutPiutNoMsk.AsInteger;
          Parameters[8].Value:=FrLunas.QuHutPiutUrut.AsInteger;
        end else
        begin
          Parameters[2].Value:=FrLunas.QuHutPiutNoFaktur.AsString;;
          Parameters[3].Value:='';
          Parameters[4].Value:='L';
          Parameters[5].Value:=Label1.Caption;
          Parameters[6].Value:=FrLunas.NOBUKTI.Text;
          Parameters[7].Value:=FrLunas.mUrut;
          if Choice='U' then
            Parameters[8].Value:=FrLunas.QuHutPiutUrut.AsInteger
          else
            Parameters[8].Value:=1;
        end;
        Parameters[9].Value:=FrLunas.TANGGAL.Date;
        Parameters[10].Value:=FrLunas.QuHutPiutJatuhTempo.AsDateTime;

        xJumlahYgdibayar:=JumlahYgDibayar(FrLunas.QuHutPiutNoFaktur.AsString);
        if (xJumlahYgdibayar<Sisa.Value) then
        begin
          Jumlah.Value:=xJumlahYgdibayar;
        end else
        begin
          Jumlah.Value:=Sisa.Value;
        end;

        if FrLunas.TipeTrans='HT' Then//((StatusHutPiut='PT+')) or ((StatusHutPiut='HT-')) or ((StatusHutPiut='UPT-')) or ((StatusHutPiut='UHT+')) then
        begin
          Parameters[11].Value:=Jumlah.AsFloat;
          Parameters[12].Value:=0;
        end
        else //if ((StatusHutPiut='PT-'))  or ((StatusHutPiut='HT+')) or ((StatusHutPiut='UPT+'))  or ((StatusHutPiut='UHT-')) then
        begin
          Parameters[11].Value:=0;
          Parameters[12].Value:=Jumlah.AsFloat;
        end;

        Parameters[13].Value:=FrLunas.Valas.Text;
        Parameters[14].Value:=FrLunas.Kurs.AsFloat;
        Parameters[15].Value:='';
        Parameters[16].Value:=Tipe;
        Parameters[17].Value:=FrLunas.QuHutPiutPerkiraan.AsString; //PerkiraanhutPiut;
        Parameters[18].Value:='';
        Parameters[19].Value:='';
        Parameters[20].Value:=Valas.Text;
        Parameters[21].Value:=Kurs.AsFloat;
        Parameters[22].Value:=Kurs.AsFloat;
        if FrLunas.TipeTrans='HT' then
          begin
            Parameters[23].Value:=JumlahD.AsFloat;
            Parameters[24].Value:=0;
          end
          else
          begin
            Parameters[23].Value:=0;
            Parameters[24].Value:=JumlahD.AsFloat;
          end;
        Parameters[25].Value:=FrLunas.Bank.Text;
        Parameters[26].Value:=FrLunas.NoGiro.Text;
        Parameters[27].Value:=FrLunas.TglGiro.Date;
        Parameters[28].Value:=FrLunas.NoBukti.Text;
        Parameters[29].Value:=FrLunas.CBBayar.ItemIndex;
        if  FrLunas.TipeTrans='HT' then
        Begin
         Parameters[30].Value:=FrLunas.NilaiGiro.AsFloat;
         Parameters[31].Value:=0;
        end
        else
         Begin
          Parameters[30].Value:=0;
          Parameters[31].Value:=FrLunas.NilaiGiro.AsFloat;
         end;
        try
          ExecProc;
          TampilDataHutPiut(Label3.Caption,PerkiraanhutPiut,Label1.Caption);
          Dibayar.Value:=FrLunas.CariJumlahPembayaranHutPiut(StatusHutPiut,FrLunas.Valas.Text);
         except
          ShowMessage('Gagal!');
        end;
    end;
end;

Function TFrHutPiut.JumlahYgDibayar(Nota:String): Real;
begin
   Result :=0;
{   with DM.QuCari do
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
    if FrLunas.Valas.Text='IDR' then
      SQL.Add('select Sum(Case when Tipe=''HT'' or Tipe=''UPT'' then Kredit-Debet when Tipe=''PT'' or Tipe=''UHT'' then Debet-Kredit end) Saldo ')
    else
      SQL.Add('select Sum(Case when Tipe=''HT'' or Tipe=''UPT'' then KreditD-DebetD when Tipe=''PT'' or Tipe=''UHT'' then DebetD-KreditD end) Saldo ');
    SQL.Add('from vwHutPiut ');
    SQL.Add('where NoFaktur='+QuotedStr(Nota));//+' and IDUser='+QuotedStr(IDUser));
   // SQL.Add('and isnull(StatusUID,'''')<>''D'' ');
    Open;
  end;
  if not DM.QuCari.IsEmpty then
    Result:=DM.QuCari.Fieldbyname('Saldo').AsFloat
  else Result:=0;
end;

Function TFrHutPiut.CekPelunasanMax(Nota:String;JmlPelunasan:Real;Var JmlHut,SisaPiut:Real): Boolean;
var JmlHutang : Real;
begin
   with DM.QuCari do
   begin
      Close;
      SQL.Clear;
      if FrLunas.Valas.Text='IDR' then
      begin
        SQL.Add('select sum(Case when isnull(StatusUID,'''')<>''D'' then Case when Tipe=''HT'' or Tipe=''UPT'' then Debet');
        Sql.add('            when Tipe=''PT'' or Tipe=''UHT'' then Kredit');
        sql.add('            else 0 end else 0 end) Lunas,');
        Sql.add('       sum(Case when isnull(StatusUID,'''')<>''D'' then Case when Tipe=''HT'' or Tipe=''UPT'' then kredit');
        Sql.add('            when Tipe=''PT'' or Tipe=''UHT'' then Debet');
        sql.add('            else 0 end else 0 end) HutPiut ');
        sql.add('from dbHutPiut ');
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
        sql.add('from dbHutPiut ');
        sql.add('where NoFaktur='+QuotedStr(Nota));
        SQL.Add('and KodeCustSupp='+QuotedStr(Label1.Caption));
      end;
      //SQL.SaveToFile('C:\test.sql');
      Open;
   end;
   JmlHutang:=DM.QuCari.FieldbyName('HutPiut').Value;
   JmlHut:=JmlHutang;
   SisaPiut:=JmlHutang-DM.QuCari.FieldbyName('Lunas').Value;
   Result:=(Roundto(DM.QuCari.FieldbyName('Lunas').AsFloat+JmlPelunasan,-2))>RoundTo(JmlHutang,-2);
end;

procedure TFrHutPiut.ClearDetailPanel;
var i:integer;
begin
  NoBukti.Text := '';
  TglBukti.Date := FrLunas.TANGGAL.Date;
  Tgljatuhtempo.Date := FrLunas.TANGGAL.Date;
  //Jumlah.Value := 0;
  Catatan.Text := '';
end;


procedure TFrHutPiut.TambahBtnClick(Sender: TObject);
var xJumlahYgdibayar, xJumlahYgDibayarD : real;
begin
 { Mode := False;
  mTransaksi:='pelunasan';
  mValid:=False;
  if not FrLunas.QuTempHutPiut.IsEmpty then
  begin
    if Sisa.Value<>0 then
    begin
      Model:='write';
      Panel3.Visible:=true;
      Panel1.Enabled:=false;
      Panel2.Enabled:=false;
      Panel3.Enabled:=True;
      NoBukti.Text:=FrLunas.QuTempHutPiutNoFaktur.AsString;
      TglBukti.Date:=FrLunas.TANGGAL.Date;
      mNoInvoice:=FrLunas.QuTempHutPiutNoInvoice.AsString;
      mValas_:=FrLunas.QuTempHutPiutValas_.AsString;
      mKurs_:=FrLunas.QuTempHutPiutKurs_.AsFloat;
      Tgljatuhtempo.Date:=FrLunas.QuTempHutPiutJatuhTempo.AsDateTime;
      LabelJumlahD.Visible:=mValas_<>Valas.Text;
      JumlahD.Visible:=mValas_<>Valas.Text;
      LabelKursBayar.Visible:=mValas_<>Valas.Text;
      KursBayar.Visible:=mValas_<>Valas.Text;
      xJumlahYgdibayar:=JumlahYgDibayar(FrLunas.QuTempHutPiutNoFaktur.AsString);
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
  end;}
end;

procedure TFrHutPiut.TampilData(KodeCust:String);
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


procedure TFrHutPiut.FormShow(Sender: TObject);
begin
 With DM.QuCari do
   Begin
    Close;
    SQL.Clear;
    SQL.Add('Select Perkiraan from dbPostHutPiut where Kode='+QuotedStr(FrLunas.TipeTrans));
    Open;
    While Not eof do
    Begin
     if Recno=1 Then
     PerkiraanhutPiut:=DM.QuCari.FieldByName('Perkiraan').AsString
     else PerkiraanhutPiut:=PerkiraanhutPiut;//+','+DM.QuCari.FieldByName('Perkiraan').AsString;
     Next;
    end;
   end;
  TampilDataHutPiut(Label3.Caption,PerkiraanhutPiut,Label1.Caption);
  Dibayar.Value:=FrLunas.CariJumlahPembayaranHutPiut(StatusHutPiut,FrLunas.Valas.Text);
end;

procedure TFrHutPiut.SpeedButton1Click(Sender: TObject);
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

procedure TFrHutPiut.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrHutPiut.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if mExit=true then
     Action:=cafree
  else
     Action:=caNone;
end;

procedure TFrHutPiut.HapusBtnClick(Sender: TObject);
begin
   StrPCopy(S,Format('Anda yakin akan menghapus No. Faktur %s ?',
        [FrLunas.QuHutPiutNoFaktur.AsString]));
        if (Application.MessageBox(S,'Hapus Data',
                MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
        begin
          SimpanData('D');
        end else
        begin
         ShowMessage('Transaksi tidak bisa dihapus !');
         ActiveControl:=dxDBhutPiut;
       end;
end;

procedure TFrHutPiut.SpeedButton2Click(Sender: TObject);
begin
  if Sisa.Value<>0 then
  begin
    mTransaksi:='penambahan';
    Model:='write';
    mUrut := 0;
    Panel3.Visible:=true;
    Panel1.Enabled:=false;
    Panel2.Enabled:=false;
    Panel3.Enabled:=True;
    NoBukti.Enabled:=true;
    TglBukti.Enabled:=True;
    Tgljatuhtempo.Enabled:=True;
    TglBukti.Date:=FrLunas.TANGGAL.date;
    Tgljatuhtempo.Date:=FrLunas.TANGGAL.date;
    Jumlah.Value:=Sisa.Value;
    LabelJumlahD.Visible:=False;
    JumlahD.Visible:=False;
    LabelKursBayar.Visible:=False;
    KursBayar.Visible:=False;
    ActiveControl:=NoBukti;
  end;

end;

procedure TFrHutPiut.NoBuktiKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=vk_escape then
   begin
      SpeedButton1.Click;
   end;
end;

procedure TFrHutPiut.NoBuktiEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrHutPiut.dxDBhutPiutCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if ANode.HasChildren then
  Exit;
  //if ANode.Values[dxDBhutPiut.ColumnByFieldName('MyNobuktiKas').Index]=FrLunas.NOBUKTI.Text+IntToStr(FrLunas.mUrut) then
  if (ANode.Values[dxDBhutPiut.ColumnByFieldName('NoBukti').Index]=FrLunas.NOBUKTI.Text) and (ANode.Values[dxDBhutPiut.ColumnByFieldName('TipeTrans').Index]='L') then
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

procedure TFrHutPiut.btnTutupGiroClick(Sender: TObject);
begin
  FrLunas.TampilData(Label1.Caption);
  mExit := True;
  Close;
end;

procedure TFrHutPiut.TotalChange(Sender: TObject);
begin
  Sisa.Value:=Total.Value-Dibayar.Value;
end;

procedure TFrHutPiut.BitBtn1Click(Sender: TObject);
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

procedure TFrHutPiut.JumlahKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=vk_Escape then
  begin
     SpeedButton1.Click;
  end;
end;

procedure TFrHutPiut.dxDBhutPiutClick(Sender: TObject);
begin
 if FrLunas.TipeTrans='HT' Then
 Begin
 if FrLunas.QuHutPiutDebet.AsFloat > 0 then
   Begin
    if dxDBhutPiut.FocusedField.DisplayLabel ='NoFaktur' Then
     SimpanData('D');
   end
  else
    begin
     if (Sisa.Value<>0) and (JumlahYgDibayar(FrLunas.QuHutPiutNoFaktur.AsString) <> 0) then
     SimpanData('I');
    end;
  end
  else
  Begin
   if FrLunas.QuHutPiutKredit.AsFloat > 0 then
   Begin
    if dxDBhutPiut.FocusedField.DisplayLabel ='NoFaktur' Then
     SimpanData('D');
   end
  else
    begin
     if (Sisa.Value<>0) and (JumlahYgDibayar(FrLunas.QuHutPiutNoFaktur.AsString) <> 0) then
     SimpanData('I');
    end;
  end;
end;

procedure TFrHutPiut.dxDBhutPiutDblClick(Sender: TObject);
begin
  dxDBhutPiutKredit.DisableEditor:=dxDBhutPiut.Columns[6].Field.AsInteger =0  ;
end;

procedure TFrHutPiut.dxDBhutPiutMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  dxDBhutPiutKredit.DisableEditor:=dxDBhutPiut.Columns[6].Field.AsInteger =0  ;
end;

procedure TFrHutPiut.dxDBhutPiutKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 dxDBhutPiutKredit.DisableEditor:=dxDBhutPiut.Columns[6].Field.AsInteger =0  ;
end;

end.
