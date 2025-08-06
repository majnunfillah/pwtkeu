unit FrmMemorialHutPiutLain;

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
  TFrMemorialHutPiutLain = class(TForm)
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
    LabelJumlahD: TLabel;
    JumlahD: TPBNumEdit;
    LabelKursBayar: TLabel;
    KursBayar: TPBNumEdit;
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
    procedure dxDBhutPiutChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
  private
    { Private declarations }
    mNoInvoice, mValas_: String;
    mKurs_: Real;
  public
    { Public declarations }
    mValid,mExit,IsHitung: Boolean;
    mBukti,Sat,SortBy:String;
    mUrut,IsTutup,mNosat,statusDK,mDetail:Integer;
    TipeTrans,PlusPPN,Nomor,Model,mTransaksi:String;
    mBulan,mTahun,mNoBukti,StatusHutPiut,PerkiraanhutPiut,Tipe:string;
    mSaldo, mSaldoD, IsiBrg, potongan, mDibayar, mDibayarD, sisaPiutang, LebihBayar :Real;
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
  FrMemorialHutPiutLain: TFrMemorialHutPiutLain;


implementation
uses FrmBrows,MyProcedure,MyGlobal,MyModul, FrmMemorial;
{$R *.DFM}

procedure TFrMemorialHutPiutLain.SaldoHutPiut;
var X,Y:Double; xNoFaktur: String;
begin
{  with FrMemorial.dxHutPiut do
  begin
    FrMemorial.dxHutPiut.DisableControls;
    First;
    X := 0;
    Y := 0;
    FrMemorial.dxHutPiut.First;
    FrMemorial.dxHutPiut.SortedField :='MyKey';
    NoFaktur:=FrMemorial.dxHutPiut.FieldByName('nofaktur').AsString;
    while Not FrMemorial.dxHutPiut.Eof do
    begin
       FrMemorial.dxHutPiut.Edit;
       if NoFaktur=FrMemorial.dxHutPiut.FieldByName('nofaktur').AsString then
       begin
           X:=X+FrMemorial.dxHutPiut.FieldByName('SaldoRp').Value;
           Y:=Y+FrMemorial.dxHutPiut.FieldByName('SaldoVLS').Value;
       end
       else
       begin
         X:=FrMemorial.dxHutPiut.FieldByName('SaldoRp').Value;
         Y:=FrMemorial.dxHutPiut.FieldByName('SaldoVls').Value;
       end;
       FrMemorial.dxHutPiut.FieldByName('SaldoRp').Value:=X;
       FrMemorial.dxHutPiut.FieldByName('SaldoVls').Value:=Y;
       FrMemorial.dxHutPiut.Post;
       NoFaktur:=FrMemorial.dxHutPiut.FieldByName('nofaktur').AsString;
       FrMemorial.dxHutPiut.Next;
    end;
    (FieldByName('Debet') as TNumericField).DisplayFormat :=',0.00';
    (FieldByName('kredit') as TNumericField).DisplayFormat :=',0.00';
    (FieldByName('DebetD') as TNumericField).DisplayFormat :=',0.00';
    (FieldByName('kreditD') as TNumericField).DisplayFormat :=',0.00';
    (FieldByName('saldoRp') as TNumericField).DisplayFormat :=',0.00';
    (FieldByName('saldoVls') as TNumericField).DisplayFormat :=',0.00';
    FrMemorial.dxHutPiut.EnableControls;
  end;
}
  FrMemorial.QuTempHutPiut.First;
  X := 0;
  Y := 0;
  xNoFaktur:='';
  while not FrMemorial.QuTempHutPiut.Eof do
  begin
    if xNoFaktur<>FrMemorial.QuTempHutPiutNoFaktur.AsString then
    begin
      xNoFaktur:=FrMemorial.QuTempHutPiutNoFaktur.AsString;
      //X:=0; Y:=0;
    end;

    X:=X+FrMemorial.QuTempHutPiutSaldo.AsFloat;
    Y:=Y+FrMemorial.QuTempHutPiutSaldoD.AsFloat;
    DM.QuTemp.Close;
    DM.QuTemp.SQL.Clear;
    DM.QuTemp.SQL.Add('update dbTempHutPiut set JumlahSaldo=:0, JumlahSaldoD=:1 ');
    DM.QuTemp.SQL.Add('where IDUser='+QuotedStr(IDUser)+' and Perkiraan='+QuotedStr(PerkiraanhutPiut)+' and TipeDK='+QuotedStr(DK)+' and isnull(StatusUID,'''')<>''D'' ');
    DM.QuTemp.SQL.Add('and NoFaktur='+QuotedStr(FrMemorial.QuTempHutPiutNoFaktur.AsString)+' and Tanggal=:2 and NoRetur='+QuotedStr(FrMemorial.QuTempHutPiutNoRetur.AsString)+' and Urut='+IntToStr(FrMemorial.QuTempHutPiutUrut.AsInteger));
    DM.QuTemp.Prepared;
    DM.QuTemp.Parameters[0].Value:=X;
    DM.QuTemp.Parameters[1].Value:=Y;
    DM.QuTemp.Parameters[2].Value:=FrMemorial.QuTempHutPiutTanggal.AsDateTime;
    DM.QuTemp.ExecSQL;
    FrMemorial.QuTempHutPiut.Next;
  end;
end;

procedure TFrMemorialHutPiutLain.TampilDataHutPiut(xNobukti,xPerkiraan,xkodeCustSupp,DK:String);
begin
{
  with FrMemorial.QuHutPiut do
  begin
    close;
    Prepared;
    Parameters[0].Value := xKodeCustSupp;
    Parameters[1].Value := xNobukti;
    Parameters[2].Value := xPerkiraan;
    Open;
  end;

  if not FrMemorial.QuHutPiutP.Active then
  begin
    with FrMemorial.QuHutPiutP do
    begin
      close;
      Prepared;
      Parameters[0].Value := xKodeCustSupp;
      Parameters[1].Value := xNobukti;
      Parameters[2].Value := xPerkiraan;
      Open;
    end;
  end;

  if not FrMemorial.QuHutPiutL.Active then
  begin
    with FrMemorial.QuHutPiutL do
    begin
      close;
      Prepared;
      Parameters[0].Value := xKodeCustSupp;
      Parameters[1].Value := xNobukti;
      Parameters[2].Value := xPerkiraan;
      Open;
    end;
  end;

  with FrMemorial.dxHutPiut do
  begin
    Close;
    if (DK='D') and (not FrMemorial.QuHutPiutP.IsEmpty) and (FrMemorial.isOpenP='P')then
    begin
       CreateFieldsFromDataSet(FrMemorial.QuHutPiutP);
       CreateFieldsFromDataSet(FrMemorial.QuHutPiutP);
       LoadFromDataSet(FrMemorial.QuHutPiutP);
    end
    else if (DK='K') and (not FrMemorial.QuHutPiutL.IsEmpty)  and (FrMemorial.isOpenL='L') then
    begin
       CreateFieldsFromDataSet(FrMemorial.QuHutPiutL);
       CreateFieldsFromDataSet(FrMemorial.QuHutPiutL);
       LoadFromDataSet(FrMemorial.QuHutPiutL);
    end
    else
    begin
       CreateFieldsFromDataSet(FrMemorial.QuHutPiut);
       CreateFieldsFromDataSet(FrMemorial.QuHutPiut);
       LoadFromDataSet(FrMemorial.QuHutPiut);
    end;
    Open;
    FrMemorial.dxHutPiut.DisableControls;
    First;
    X := 0;
    Y := 0;
    NoFaktur:=FrMemorial.dxHutPiut.FieldByName('nofaktur').AsString;
    dxDBhutPiut.KeyField := FrMemorial.dxHutPiut.Fieldbyname('MyKey').FieldName;
    Dibayar.Value :=0;
    while Not FrMemorial.dxHutPiut.Eof do
    begin
       FrMemorial.dxHutPiut.Edit;
        if ((StatusHutPiut='HT-') or (StatusHutPiut='PT+')) and (FrMemorial.dxHutPiut.Fieldbyname('MyNobuktiKas').Value=(Label3.Caption+' '+inttostr(FrMemorial.mUrut)))then
            Dibayar.Value := Dibayar.Value+FrMemorial.dxHutPiut.FieldByName('Debet').Value
        else  if ((StatusHutPiut='HT+') or (StatusHutPiut='PT-')) and (FrMemorial.dxHutPiut.Fieldbyname('MyNobuktiKas').Value=(Label3.Caption+' '+inttostr(FrMemorial.mUrut)))then
            Dibayar.Value := Dibayar.Value+FrMemorial.dxHutPiut.FieldByName('Kredit').Value;
       if NoFaktur=FrMemorial.dxHutPiut.FieldByName('nofaktur').AsString then
       begin
          X:=X+FrMemorial.dxHutPiut.FieldByName('SaldoRp').Value;
          Y:=Y+FrMemorial.dxHutPiut.FieldByName('SaldoVLS').Value;
       end
       else
       begin
         X:=FrMemorial.dxHutPiut.FieldByName('SaldoRp').Value;
         Y:=FrMemorial.dxHutPiut.FieldByName('SaldoVls').Value;
       end;
       FrMemorial.dxHutPiut.FieldByName('SaldoRp').Value:=X;
       FrMemorial.dxHutPiut.FieldByName('SaldoVls').Value:=Y;
       FrMemorial.dxHutPiut.Post;
       NoFaktur:=FrMemorial.dxHutPiut.FieldByName('nofaktur').AsString;
       FrMemorial.dxHutPiut.Next;
    end;
    (FieldByName('Debet') as TNumericField).DisplayFormat :=',0.00';
    (FieldByName('kredit') as TNumericField).DisplayFormat :=',0.00';
    (FieldByName('DebetD') as TNumericField).DisplayFormat :=',0.00';
    (FieldByName('kreditD') as TNumericField).DisplayFormat :=',0.00';
    (FieldByName('saldoRp') as TNumericField).DisplayFormat :=',0.00';
    (FieldByName('saldoVls') as TNumericField).DisplayFormat :=',0.00';
    FrMemorial.dxHutPiut.EnableControls;
  end;
}
  FrMemorial.QuTempHutPiut.Close;
  FrMemorial.QuTempHutPiut.SQL.Strings[2]:='select @IDUser='+QuotedStr(IDUser)+', @Perkiraan='+QuotedStr(xPerkiraan)+', @TipeDK='+QuotedStr(DK);
  FrMemorial.QuTempHutPiut.Open;
  SaldoHutPiut;
  FrMemorial.QuTempHutPiut.Close;
  FrMemorial.QuTempHutPiut.Open;
end;

procedure TFrMemorialHutPiutLain.SimpanData(Choice:String);
var isSimpan : Boolean;
begin
{
  isSimpan := False;
  if (Choice='I') and ((mTransaksi='pelunasan') or (mTransaksi='penambahan')) and (Not FrMemorial.dxHutPiut.Locate('NoFaktur;urut',
      varArrayof([NoBukti.text,mUrut]),[LOC,LOP]))then
  begin
    FrMemorial.dxHutPiut.Append;
    Dibayar.Value := Dibayar.Value+Jumlah.Value;
    isSimpan := True;
  end
  else if (Choice='U')  then
  begin
    FrMemorial.dxHutPiut.Edit;
    Dibayar.Value := Dibayar.Value+Jumlah.Value;
  end
  Else
  if (Choice='D') and FrMemorial.dxHutPiut.Locate('NoFaktur;urut',
      varArrayof([FrMemorial.dxHutPiut.FieldByname('NoFaktur').asstring,FrMemorial.dxHutPiut.FieldByname('Urut').asInteger]),[LOC,LOP]) then
  begin
    if (StatusHutPiut='HT-') or (StatusHutPiut='PT+')then
        Dibayar.Value := Dibayar.Value-dxDBhutPiutDebet.Field.AsFloat
    else if (StatusHutPiut='HT+') or (StatusHutPiut='PT-') then
        Dibayar.Value := Dibayar.Value-dxDBhutPiutKredit.Field.AsFloat;
    FrMemorial.dxHutPiut.Delete;
  end;
  if ((Choice='I') or (Choice='U'))  and isSimpan then
  begin
    with FrMemorial.dxHutPiut do
    begin
      FieldByName('NoFaktur').Value:=NoBukti.Text;
      FieldByName('NoRetur').Value:='';
      FieldByName('KodeCustSupp').Value:=Label1.Caption;
      FieldByName('TipeTrans').Value:='L';
      if  ((StatusHutPiut='PT+')) or ((StatusHutPiut='HT+')) then
      begin
        FieldByName('Tanggal').Value:=TglBukti.Date;
        FieldByName('JatuhTempo').Value:=Tgljatuhtempo.Date;
      end
      else if((StatusHutPiut='PT-')) or ((StatusHutPiut='HT-')) then
      begin
        FieldByName('Tanggal').Value:=FrMemorial.TANGGAL.Date;
        FieldByName('JatuhTempo').Value:=FrMemorial.TANGGAL.Date;
      end;
      if ((StatusHutPiut='PT+')) or ((StatusHutPiut='HT-'))then
      begin
         FieldByName('Debet').Value:=Jumlah.Value*Kurs.Value;
         FieldByName('Kredit').Value:=0;
      end
      else if ((StatusHutPiut='PT-'))  or ((StatusHutPiut='HT+'))then
      begin
         FieldByName('Debet').Value:=0;
         FieldByName('Kredit').Value:=Jumlah.Value*Kurs.Value;
      end;

      if Valas.Text='IDR' then
      begin
        FieldByName('DebetD').Value:=0;
        FieldByName('KreditD').Value:=0;
      end
      else
      begin
        if ((StatusHutPiut='PT+')) or ((StatusHutPiut='HT-'))then
        begin
           FieldByName('DebetD').Value:=Jumlah.Value;
           FieldByName('KreditD').Value:=0;
        end
        else if ((StatusHutPiut='PT-'))  or ((StatusHutPiut='HT+'))then
        begin
           FieldByName('DebetD').Value:=0;
           FieldByName('KreditD').Value:=Jumlah.Value;
        end;
      end;
      if (StatusHutPiut='PT+') or (StatusHutPiut='HT-')then
         FieldByName('SaldoRp').Value:=Jumlah.Value*Kurs.Value
      else if (StatusHutPiut='PT-') or (StatusHutPiut='HT+') then
         FieldByName('SaldoRp').Value:=(Jumlah.Value*Kurs.Value)*-1;
      if Valas.Text='IDR' then
         FieldByName('SaldoVls').Value:=0
      else
      begin
        if (StatusHutPiut='PT+') or (StatusHutPiut='HT-')then
           FieldByName('SaldoVls').Value:=Jumlah.Value
        else
        if (StatusHutPiut='PT-') or (StatusHutPiut='HT+') then
           FieldByName('SaldoVls').Value:=(Jumlah.Value)*-1;
      end;

      FieldByName('Valas').Value:=Valas.Text;
      FieldByName('kurs').Value:=Kurs.Value;
      FieldByName('Tipe').Value:=Tipe;
      FieldByName('Nobukti').Value:=FrMemorial.NOBUKTI.Text;
      FieldByName('NoMsk').Value:=FrMemorial.mUrut;
      FieldByName('Perkiraan').Value:=PerkiraanhutPiut;
      FieldByName('Catatan').Value:=Catatan.Text;
      FieldByName('urut').Value:=mUrut;
      FieldByName('KodeSales').Value:='';
      FieldByName('MyKey').Value:=FrMemorial.NOBUKTI.Text+' '+FormatDateTime('DD-MM-YYYY',FrMemorial.TANGGAL.Date)+IntToStr(mUrut);
      mUrut := mUrut + 1;
      FrMemorial.dxHutPiut.Post;
      Jumlah.Value := Sisa.Value;
    end;
  end;
  SaldoHutPiut;
}
  with FrMemorial.sp_TempHutPiut do
  begin
    Prepared;
    Parameters[1].Value:=Choice;
    if Choice='D' then
    begin
      Parameters[2].Value:=FrMemorial.QuTempHutPiutNoFaktur.AsString;
      Parameters[3].Value:=FrMemorial.QuTempHutPiutNoRetur.AsString;
      Parameters[4].Value:=FrMemorial.QuTempHutPiutTipeTrans.AsString;
      Parameters[5].Value:=FrMemorial.QuTempHutPiutKodeCustSupp.AsString;
      Parameters[6].Value:=FrMemorial.QuTempHutPiutNoBukti.AsString;
      Parameters[7].Value:=FrMemorial.QuTempHutPiutNoMsk.AsInteger;
      Parameters[8].Value:=FrMemorial.QuTempHutPiutUrut.AsInteger;
    end else
    begin
      Parameters[2].Value:=NoBukti.Text;
      Parameters[3].Value:='';
      Parameters[4].Value:='L';
      Parameters[5].Value:=Label1.Caption;
      Parameters[6].Value:=FrMemorial.NOBUKTI.Text;
      Parameters[7].Value:=FrMemorial.mUrut;
      if Choice='U' then
        Parameters[8].Value:=FrMemorial.QuTempHutPiutUrut.AsInteger
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
      TampilDataHutPiut(Label3.Caption,PerkiraanhutPiut,label1.caption,DK);
      Dibayar.Value:=FrMemorial.CariJumlahPembayaranHutPiut(StatusHutPiut,FrMemorial.Valas.Text);
    except

    end;
  end;
end;

Function TFrMemorialHutPiutLain.JumlahYgDibayar(Nota:String):Real;
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
    if FrMemorial.Valas.Text='IDR' then
      SQL.Add('select Sum(Case when Tipe=''HT'' Or Tipe=''UPT'' then Kredit-Debet when Tipe=''PT'' or Tipe=''UHT'' then Debet-Kredit end) Saldo ')
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

Function TFrMemorialHutPiutLain.CekPelunasanMax(Nota:String;JmlPelunasan:Real;Var JmlHut,SisaPiut:Real):Boolean;
var JmlHutang : Real;
begin
   with DM.QuCari do
   begin
      Close;
      SQL.Clear;
      if FrMemorialHutPiutLain.Valas.Text='IDR' then
      begin
        SQL.Add('select sum(Case when isnull(StatusUID,'''')<>''D'' then Case when Tipe=''HT'' Or Tipe=''UPT'' then Debet');
        Sql.add('            when Tipe=''PT'' or Tipe=''UHT'' then Kredit');
        sql.add('            else 0 end else 0 end) Lunas,');
        Sql.add('       sum(Case when isnull(StatusUID,'''')<>''D'' then Case when Tipe=''HT'' or Tipe=''UPT''then kredit');
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
   JmlHutang:=DM.QuCari.FieldbyName('HutPiut').AsFloat;
   JmlHut:=JmlHutang;
   SisaPiut:=JmlHutang-DM.QuCari.FieldbyName('Lunas').AsFloat;
   Result:=(Roundto(DM.QuCari.FieldbyName('Lunas').AsFloat+JmlPelunasan,-2))>RoundTo(JmlHutang,-2);
end;

procedure TFrMemorialHutPiutLain.ClearDetailPanel;
var i:integer;
begin
  NoBukti.Text := '';
  TglBukti.Date := FrMemorial.TANGGAL.Date;
  Tgljatuhtempo.Date := FrMemorial.TANGGAL.Date;
  //Jumlah.Value := 0;
  Catatan.Text := ''; 
end;


procedure TFrMemorialHutPiutLain.TambahBtnClick(Sender: TObject);
var xJumlahYgdibayar, xJumlahYgDibayarD : real;
begin
  mTransaksi:='pelunasan';
  mValid:=False;
{  if Not FrMemorial.dxHutPiut.IsEmpty then
  begin
    if Sisa.Value<>0 then
    begin
      Model:='write';
      mUrut := FrMemorial.dxHutPiut.RecordCount+1;
      Panel3.Visible:=true;
      Panel1.Enabled:=false;
      Panel2.Enabled:=false;
      Panel3.Enabled:=True;
      NoBukti.Text:=FrMemorial.dxHutPiut.fieldbyname('NoFaktur').AsString;
      TglBukti.Date:=FrMemorial.dxHutPiut.fieldbyname('Tanggal').AsDateTime;
      Tgljatuhtempo.Date:=FrMemorial.dxHutPiut.fieldbyname('jatuhTempo').AsDateTime;
      xJumlahYgdibayar:=JumlahYgDibayar(FrMemorial.dxHutPiut.fieldbyname('NoFaktur').AsString);
      mUrut := FrMemorial.dxHutPiut.RecordCount+1;
      if FrMemorial.Valas.Text='IDR' then
      begin
        if (xJumlahYgdibayar < Sisa.Value) then
        begin
            Jumlah.Value:=xJumlahYgdibayar;
        end
        else
        begin
            Jumlah.Value:=Sisa.Value;
        end;
      end
      else
      begin
        if (xJumlahYgDibayarD < Sisa.Value) then
        begin
            Jumlah.Value:=xJumlahYgDibayarD;
        end
        else
        begin
            Jumlah.Value:=Sisa.Value;
        end;
      end;
    end;

  end
  else
  begin
    ShowMessage('Tabel Kosong !');
    ActiveControl:=dxDBhutPiut;
  end;
}
  if not FrMemorial.QuTempHutPiut.IsEmpty then
  begin
    if Sisa.Value<>0 then
    begin
      Model:='write';
      Panel3.Visible:=true;
      Panel1.Enabled:=false;
      Panel2.Enabled:=false;
      Panel3.Enabled:=True;
      NoBukti.Text:=FrMemorial.QuTempHutPiutNoFaktur.AsString;
      TglBukti.Date:=FrMemorial.TANGGAL.Date;
      mNoInvoice:=FrMemorial.QuTempHutPiutNoInvoice.AsString;
      mValas_:=FrMemorial.QuTempHutPiutValas_.AsString;
      mKurs_:=FrMemorial.QuTempHutPiutKurs_.AsFloat;
      Tgljatuhtempo.Date:=FrMemorial.QuTempHutPiutJatuhTempo.AsDateTime;
      LabelJumlahD.Visible:=mValas_<>Valas.Text;
      JumlahD.Visible:=mValas_<>Valas.Text;
      LabelKursBayar.Visible:=mValas_<>Valas.Text;
      KursBayar.Visible:=mValas_<>Valas.Text;
      xJumlahYgdibayar:=JumlahYgDibayar(FrMemorial.QuTempHutPiutNoFaktur.AsString);
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

procedure TFrMemorialHutPiutLain.TampilData(KodeCust:String);
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


procedure TFrMemorialHutPiutLain.FormShow(Sender: TObject);
begin
  statusDK:=FrMemorial.statusDK;
  TampilDataHutPiut(Label3.Caption,PerkiraanhutPiut,label1.caption,DK);
  Dibayar.Value:=FrMemorial.CariJumlahPembayaranHutPiut(StatusHutPiut,FrMemorial.Valas.Text);
end;

procedure TFrMemorialHutPiutLain.SpeedButton1Click(Sender: TObject);
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

procedure TFrMemorialHutPiutLain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrMemorialHutPiutLain.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if mExit=true then
     Action:=cafree
  else
     Action:=caNone;
end;

procedure TFrMemorialHutPiutLain.HapusBtnClick(Sender: TObject);
begin
{   if (FrMemorial.dxHutPiut.FieldByName('tipetrans').AsString='L') and
      (FrMemorial.dxHutPiut.FieldByName('KodeCustSupp').AsString=Label1.Caption) and
      (FrMemorial.dxHutPiut.FieldByName('NoBukti').AsString=Label3.Caption) and
      (FrMemorial.dxHutPiut.FieldByName('NoMsk').AsInteger = FrMemorial.mUrut)
   then
   begin
        StrPCopy(S,Format('Anda yakin NO %s dan Nama %s dihapus ?',
        [FrMemorial.dxHutPiut.FieldByname('NoFaktur').asstring,
        FrMemorial.dxHutPiut.Fields[2].asstring]));
        if (Application.MessageBox(S,'Hapus Data',
                MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
        begin
          SimpanData('D');
        end;
   end else
   begin
        ShowMessage('Transaksi tidak bisa dihapus !');
        ActiveControl:=dxDBhutPiut;
   end;
}
   if FrMemorial.QuTempHutPiutStatusUID.AsString<>'' then
   begin
     StrPCopy(S,Format('Anda yakin akan menghapus No. Faktur %s ?',
        [FrMemorial.QuTempHutPiutNoFaktur.AsString]));
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

procedure TFrMemorialHutPiutLain.SpeedButton2Click(Sender: TObject);
begin
  if Sisa.Value<>0 then
  begin
    mTransaksi:='penambahan';
    Model:='write';
    mUrut := FrMemorial.dxHutPiut.RecordCount+1;
    Panel3.Visible:=true;
    Panel1.Enabled:=false;
    Panel2.Enabled:=false;
    Panel3.Enabled:=True;
    NoBukti.Enabled:=true;
    TglBukti.Enabled:=True;
    Tgljatuhtempo.Enabled:=True;
    TglBukti.Date:=FrMemorial.TANGGAL.date;
    Tgljatuhtempo.Date:=FrMemorial.TANGGAL.date;
    Jumlah.Value:=Sisa.Value;
    ActiveControl:=NoBukti;
  end;
end;

procedure TFrMemorialHutPiutLain.NoBuktiKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=vk_escape then
   begin
      SpeedButton1.Click;
   end;
end;

procedure TFrMemorialHutPiutLain.NoBuktiEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrMemorialHutPiutLain.dxDBhutPiutCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if ANode.HasChildren then
  Exit;
  //Caption := ANode.Values[dxDBhutPiut.ColumnByFieldName('MyNobuktiKas').Index]+' '+FrMemorial.NOBUKTI.Text+IntToStr(FrMemorial.mUrut);
  //if ANode.Values[dxDBhutPiut.ColumnByFieldName('MyNobuktiKas').Index]=FrMemorial.NOBUKTI.Text+IntToStr(FrMemorial.mUrut) then
  if (ANode.Values[dxDBhutPiut.ColumnByFieldName('NoBukti').Index]=FrMemorial.NOBUKTI.Text) and (ANode.Values[dxDBhutPiut.ColumnByFieldName('NoMsk').Index]=FrMemorial.mUrut) then
   begin
      AColor:=$00C0F8F7;
      AFont.Color:= clred;
   end
   else
   begin
      AColor:=clWindow;
      AFont.Color:=clBlack;
   end;
  {if not AFocused then
  begin
    if ANode.Index mod 2 =0 then
     AColor:=clWhite
  else
     AColor:=$00E1FFFF;
  end;}
end;

procedure TFrMemorialHutPiutLain.btnTutupGiroClick(Sender: TObject);
begin
  mExit := True;
  {if DK='D' then
  begin
    FrMemorial.dxHutPiut.First;
    while not FrMemorial.dxHutPiut.eof do
    begin
      if FrMemorial.QuHutPiutP.Locate('Nobukti;urut',VarArrayOf([FrMemorial.dxHutPiut.FieldByname('Nobukti').AsVariant,FrMemorial.dxHutPiut.FieldByname('urut').AsVariant]),[LOC,LOP]) then
         FrMemorial.QuHutPiutP.Edit
      else
         FrMemorial.QuHutPiutP.Append;
      FrMemorial.QuHutPiutP.FieldByName('NoFaktur').Value := FrMemorial.dxHutPiut.FieldByname('NoFaktur').Value;
      FrMemorial.QuHutPiutP.FieldByName('NoRetur').Value := FrMemorial.dxHutPiut.FieldByname('NoRetur').Value;
      FrMemorial.QuHutPiutP.FieldByName('TipeTrans').Value := FrMemorial.dxHutPiut.FieldByname('TipeTrans').Value;
      FrMemorial.QuHutPiutP.FieldByName('kodeCustSupp').Value := FrMemorial.dxHutPiut.FieldByname('kodeCustSupp').Value;
      FrMemorial.QuHutPiutP.FieldByName('Nobukti').Value := FrMemorial.dxHutPiut.FieldByname('NoBukti').Value;
      FrMemorial.QuHutPiutP.FieldByName('NoMSK').Value := FrMemorial.dxHutPiut.FieldByname('NoMSK').Value;
      FrMemorial.QuHutPiutP.FieldByName('urut').Value := FrMemorial.dxHutPiut.FieldByname('Urut').Value;
      FrMemorial.QuHutPiutP.FieldByName('Tanggal').Value := FrMemorial.dxHutPiut.FieldByname('Tanggal').Value;
      FrMemorial.QuHutPiutP.FieldByName('JatuhTempo').Value := FrMemorial.dxHutPiut.FieldByname('JatuhTempo').Value;
      FrMemorial.QuHutPiutP.FieldByName('Debet').Value := FrMemorial.dxHutPiut.FieldByname('Debet').Value;
      FrMemorial.QuHutPiutP.FieldByName('Kredit').Value := FrMemorial.dxHutPiut.FieldByname('Kredit').Value;
      //FrMemorial.QuHutPiutP.FieldByName('Saldo').Value := 0;
      FrMemorial.QuHutPiutP.FieldByName('Valas').Value := FrMemorial.dxHutPiut.FieldByname('Valas').Value;
      FrMemorial.QuHutPiutP.FieldByName('Kurs').Value := FrMemorial.dxHutPiut.FieldByname('Kurs').Value;
      FrMemorial.QuHutPiutP.FieldByName('DebetD').Value := FrMemorial.dxHutPiut.FieldByname('DebetD').Value;
      FrMemorial.QuHutPiutP.FieldByName('KreditD').Value := FrMemorial.dxHutPiut.FieldByname('KreditD').Value;
      //FrMemorial.QuHutPiutP.FieldByName('SaldoD').Value := 0;
      FrMemorial.QuHutPiutP.FieldByName('KodeSales').Value := FrMemorial.dxHutPiut.FieldByname('kodeSales').Value;
      FrMemorial.QuHutPiutP.FieldByName('Tipe').Value := FrMemorial.dxHutPiut.FieldByname('Tipe').Value;
      FrMemorial.QuHutPiutP.FieldByName('Perkiraan').Value := FrMemorial.dxHutPiut.FieldByname('Perkiraan').Value;
      FrMemorial.QuHutPiutP.FieldByName('Catatan').Value := FrMemorial.dxHutPiut.FieldByname('Catatan').Value;
      FrMemorial.QuHutPiutP.Post;
      FrMemorial.dxHutPiut.Next;
    end;
    FrMemorial.isOpenP:='P';
  end
  else if DK='K' then
  begin
    FrMemorial.dxHutPiut.First;
    while not FrMemorial.dxHutPiut.eof do
    begin
      if FrMemorial.QuHutPiutL.Locate('Nobukti;urut',VarArrayOf([FrMemorial.dxHutPiut.FieldByname('Nobukti').AsVariant,FrMemorial.dxHutPiut.FieldByname('urut').AsVariant]),[LOC,LOP]) then
         FrMemorial.QuHutPiutL.Edit
      else
         FrMemorial.QuHutPiutL.Append;
      FrMemorial.QuHutPiutL.FieldByName('NoFaktur').Value := FrMemorial.dxHutPiut.FieldByname('NoFaktur').Value;
      FrMemorial.QuHutPiutL.FieldByName('NoRetur').Value := FrMemorial.dxHutPiut.FieldByname('NoRetur').Value;
      FrMemorial.QuHutPiutL.FieldByName('TipeTrans').Value := FrMemorial.dxHutPiut.FieldByname('TipeTrans').Value;
      FrMemorial.QuHutPiutL.FieldByName('kodeCustSupp').Value := FrMemorial.dxHutPiut.FieldByname('kodeCustSupp').Value;
      FrMemorial.QuHutPiutL.FieldByName('Nobukti').Value := FrMemorial.dxHutPiut.FieldByname('NoBukti').Value;
      FrMemorial.QuHutPiutL.FieldByName('NoMSK').Value := FrMemorial.dxHutPiut.FieldByname('NoMSK').Value;
      FrMemorial.QuHutPiutL.FieldByName('urut').Value := FrMemorial.dxHutPiut.FieldByname('Urut').Value;
      FrMemorial.QuHutPiutL.FieldByName('Tanggal').Value := FrMemorial.dxHutPiut.FieldByname('Tanggal').Value;
      FrMemorial.QuHutPiutL.FieldByName('JatuhTempo').Value := FrMemorial.dxHutPiut.FieldByname('JatuhTempo').Value;
      FrMemorial.QuHutPiutL.FieldByName('Debet').Value := FrMemorial.dxHutPiut.FieldByname('Debet').Value;
      FrMemorial.QuHutPiutL.FieldByName('Kredit').Value := FrMemorial.dxHutPiut.FieldByname('Kredit').Value;
      //FrMemorial.QuHutPiutL.FieldByName('Saldo').Value := 0;
      FrMemorial.QuHutPiutL.FieldByName('Valas').Value := FrMemorial.dxHutPiut.FieldByname('Valas').Value;
      FrMemorial.QuHutPiutL.FieldByName('Kurs').Value := FrMemorial.dxHutPiut.FieldByname('Kurs').Value;
      FrMemorial.QuHutPiutL.FieldByName('DebetD').Value := FrMemorial.dxHutPiut.FieldByname('DebetD').Value;
      FrMemorial.QuHutPiutL.FieldByName('KreditD').Value := FrMemorial.dxHutPiut.FieldByname('KreditD').Value;
      //FrMemorial.QuHutPiutL.FieldByName('SaldoD').Value := 0;
      FrMemorial.QuHutPiutL.FieldByName('KodeSales').Value := FrMemorial.dxHutPiut.FieldByname('kodeSales').Value;
      FrMemorial.QuHutPiutL.FieldByName('Tipe').Value := FrMemorial.dxHutPiut.FieldByname('Tipe').Value;
      FrMemorial.QuHutPiutL.FieldByName('Perkiraan').Value := FrMemorial.dxHutPiut.FieldByname('Perkiraan').Value;
      FrMemorial.QuHutPiutL.FieldByName('Catatan').Value := FrMemorial.dxHutPiut.FieldByname('Catatan').Value;
      FrMemorial.QuHutPiutL.Post;
      FrMemorial.dxHutPiut.Next;
    end;
    FrMemorial.isOpenL:='L';
  end;
  }
  Close;
end;

procedure TFrMemorialHutPiutLain.TotalChange(Sender: TObject);
begin
  Sisa.Value:=Total.Value-Dibayar.Value;
end;

procedure TFrMemorialHutPiutLain.BitBtn1Click(Sender: TObject);
var JmlHutPiut :Real;
begin
{  if mTransaksi='pelunasan' then
  begin
    if (Jumlah.Value<>0) and (NoBukti.Text<>'') then
    begin
      if Not CekPelunasanMax(FrMemorial.dxHutPiut.FieldByname('Nofaktur').AsString,Jumlah.Value,Jmlhutpiut,sisapiutang) then
      begin
         SimpanData('I');
      end
      else
      begin
        StrPCopy(S,Format('Ada Kelebihan Pelunasan Pada Nota %s , Sisa %s, kelebihan bayar %s ?',
                [frMemorial.dxHutPiut.FieldByName('nofaktur').AsString,
                Formatcurr(',0.00',SisaPiutang),Formatcurr(',0.00',Jumlah.Value-sisaPiutang) ]));
        if (Application.MessageBox(S,'Peringatan ',MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
        begin
          SimpanData('I');
        end;
      end;
    end
    else
    begin

    end;
  end
  else
  begin
    if Jumlah.Value<>0 then
       SimpanData('I')
    
  end;

  if mTransaksi='pelunasan' then
     SpeedButton1.Click
  else
  begin
    ClearDetailPanel;
    ActiveControl := NoBukti;
  end;
  }
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

procedure TFrMemorialHutPiutLain.JumlahKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=vk_Escape then
  begin
     SpeedButton1.Click;
  end;
end;

procedure TFrMemorialHutPiutLain.dxDBhutPiutChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
 // Caption := Node.Values[dxDBhutPiut.ColumnByFieldName('MyKey').Index];
end;

end.
