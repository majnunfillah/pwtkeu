unit FrmHutangAwal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, wwdblook, Wwdbigrd, Wwdbgrid,
  DBCtrls, ppBands, ppCtrls, ppDB, jpeg, ppPrnabl, ppClass, ppCache,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, XPMenu, ImgList, RxNotify;

type
  TFrHutangAwal = class(TForm)
    Panel3: TPanel;
    Sp_Beli: TADOStoredProc;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    NoBukti: TEdit;
    TglBukti: TDateEdit;
    Tgljatuhtempo: TDateEdit;
    Debet: TPBNumEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    DebetRp: TPBNumEdit;
    Label3: TLabel;
    Valas: TEdit;
    Label13: TLabel;
    Kurs: TPBNumEdit;
    Label1: TLabel;
    lNamaSupp: TLabel;
    Label4: TLabel;
    Kredit: TPBNumEdit;
    Label5: TLabel;
    KreditRp: TPBNumEdit;
    procedure FormShow(Sender: TObject);
    procedure QuTransaksiCalcFields(DataSet: TDataSet);
    procedure ClearDetailPanel;
    
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NoBuktiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RefreshAll;
    Function IsNoFakturSudahAda(nobukti:string):boolean;
    procedure NoBuktiEnter(Sender: TObject);
    procedure NoBuktiExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ValasEnter(Sender: TObject);
    procedure ValasExit(Sender: TObject);
    procedure DebetChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure KreditChange(Sender: TObject);
    procedure KreditEnter(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    mNoBukti:String;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel,isSimpan : Boolean;
  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrHutangAwal: TFrHutangAwal;
  mValid,mExit: Boolean;
  mBukti,Sat,SortBy:String;
  mUrut,IsTutup,mNosat,statusDK:Integer;
  TipeTrans,PlusPPN,Nomor,Model,mTransaksi:String;
  mBulan,mTahun:string;
  mSaldo,IsiBrg,potongan,mDibayar:Real;
  S:array[0..255]of char;

  IsGiroCair : Boolean;
  TipeGiro,JenisTransGiro : String;
  KodeTrans,KodeByr,Jenis :string;

implementation
uses MyProcedure,MyGlobal,MyModul, FrmHutang;
{$R *.DFM}

procedure TFrHutangAwal.RefreshAll;
var i:integer;
begin
   for i:= 0 to Panel3.ControlCount-1 do
   begin
      if (Panel3.Controls[i] is TEdit) then
         (Panel3.Controls[i] as TEdit).Clear;
      if (Panel3.Controls[i] is TPBNumEdit) then
         (Panel3.Controls[i] as TPBNumEdit).Value:=0;
   end;

end;

Function TFrHutangAwal.IsNoFakturSudahAda(nobukti:string):boolean;
begin
   with DM.QuCari do
   begin
       Close;
       SQL.Clear;
       SQL.Add('Select * from dbhutpiut where nofaktur=:0 and Perkiraan=:1 and kodecustsupp=:2 and Tipe=''HT'' ');
       Prepared;
       Parameters[0].Value:=nobukti;
       Parameters[1].Value:=FrHutang.QuView.FieldByname('Perkiraan').AsString;
       Parameters[2].Value:=FrHutang.QuView.FieldByname('kodecustSupp').AsString;
       Open;
   end;
   Result := NOT DM.QuCari.IsEmpty;
end;


procedure TFrHutangAwal.ClearDetailPanel;
var i:integer;
begin
   for i:= 0 to Panel3.ControlCount-1 do
   begin
      if (Panel3.Controls[i] is TEdit) then
         (Panel3.Controls[i] as TEdit).Clear;
      if (Panel3.Controls[i] is TPBNumEdit) then
         (Panel3.Controls[i] as TPBNumEdit).Value:=0;
      if (Panel3.Controls[i] is TMemo) then
         (Panel3.Controls[i] as TMemo).Clear;
   end;
end;


procedure TFrHutangAwal.FormShow(Sender: TObject);
begin
   TglBukti.Date:=Now;
   TglJatuhTempo.Date:=Now;
   //QuTransaksi.Active:=true;
end;

procedure TFrHutangAwal.QuTransaksiCalcFields(DataSet: TDataSet);
begin
   {mSaldo:=mSaldo+QuTransaksi.FieldByName('SaldoHut').Value;
   QuTransaksi.FieldByName('mSaldo').Value:=mSaldo;
   if (QuTransaksi.FieldByName('NoBukti').Value='') and
      (QuTransaksi.FieldByName('NoMsk').Value=FrKasBank.mUrut)
   then
   begin
       if statusDK=1 then
          mDibayar:=mDibayar+QuTransaksi.FieldByName('Debet').Value
       else
          mDibayar:=mDibayar+QuTransaksi.FieldByName('Kredit').Value;
   end;}
end;

procedure TFrHutangAwal.BitBtn1Click(Sender: TObject);
begin
  mNoBukti:=NoBukti.Text;
  if model='write' then
  begin
     frhutang.SimpanData('I');
     ClearDetailPanel;
     ActiveControl:=NoBukti;
  end
  else if model='koreksi' then
  begin
     frhutang.SimpanData('U');
     SpeedButton1.Click;
  end;

end;

procedure TFrHutangAwal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0);

end;

procedure TFrHutangAwal.NoBuktiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=vk_escape then
   begin
      SpeedButton1.Click;
   end;
end;

procedure TFrHutangAwal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=cafree;
end;

procedure TFrHutangAwal.NoBuktiEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrHutangAwal.NoBuktiExit(Sender: TObject);
begin
if mValid then
begin
 if Length(NoBukti.Text)<>0 then
 begin
   if (IsNoFakturSudahAda(NoBukti.Text)=true) and (isSimpan) then
   begin
      ShowMessage('No Faktur sudah ada');
      ActiveControl:=NoBukti;
   end;
 end else
 begin
    ShowMessage('No Faktur Tidak Boleh Kosong ');
    ActiveControl:=NoBukti;
 end;
end;
end;

procedure TFrHutangAwal.FormDestroy(Sender: TObject);
begin
 FrHutangAwal:=nil;
end;

procedure TFrHutangAwal.ValasEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrHutangAwal.ValasExit(Sender: TObject);
var i : Integer;
begin
  if mValid Then
  begin
    SetLength(xValue,3);
    if DataBersyarat('select kodevls,namavls,kurs from dbValas where kodevls=:0',[Valas.text],DM.Qucari) then
    begin
      Valas.Text :=DM.QuCari.FieldByname('Kodevls').AsString;
      Label1.Caption:='[ '+DM.QuCari.FieldByname('Namavls').AsString+' ]';
      Kurs.Value:=DM.QuCari.FieldByname('Kurs').AsFloat;
      {for i := Low(xValue) to High(xValue) do
      begin
        xValue[i] := DM.QuCari.Fields[i].Value;
      end;}
    end
    else
      TampilIsiData(FrHutangAwal,Valas,Label1,1006,'kodevls','Namavls');
    for I := LOW(xValue) to High(xValue) do
    begin
      if I= High(xValue) then
         Kurs.Value:=xValue[i];
    end;
  end;
  VlsIDR(Valas,Kurs);
  if Kurs.Enabled=false then ActiveControl:=Kredit else ActiveControl:=Kurs;

end;

procedure TFrHutangAwal.DebetChange(Sender: TObject);
begin
  if mValid then
  begin
    DebetRp.Value:=Debet.Value*Kurs.Value;
  end;
end;

procedure TFrHutangAwal.SpeedButton1Click(Sender: TObject);
begin
  ClearDetailPanel;
  Close;
end;

procedure TFrHutangAwal.KreditChange(Sender: TObject);
begin
   if mValid then
  begin
    KreditRp.Value:=Kredit.Value*Kurs.Value;
  end;
end;

procedure TFrHutangAwal.KreditEnter(Sender: TObject);
begin
  mValid := True;
end;

end.
