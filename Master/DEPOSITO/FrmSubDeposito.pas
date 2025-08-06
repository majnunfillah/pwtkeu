unit FrmSubDeposito;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, XPMenu, ExtCtrls, Buttons,db, Mask, ToolEdit, PBNumEdit;

type
  TFrSubDeposito = class(TForm)
    Bank: TEdit;
    NoDeposito: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    LtglBuka: TLabel;
    KeteranganBuka: TEdit;
    Label9: TLabel;
    Bevel2: TBevel;
    Label7: TLabel;
    BuktiBuka: TEdit;
    lBuktiBuka: TLabel;
    Label12: TLabel;
    TGLJatuhTempo: TDateEdit;
    Jumlah: TPBNumEdit;
    Bevel1: TBevel;
    TglBuka: TDateEdit;
    Label6: TLabel;
    KodeVls: TEdit;
    Label11: TLabel;
    Kurs: TPBNumEdit;
    lBank: TLabel;
    Label10: TLabel;
    TglCair: TDateEdit;
    KeteranganCair: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    buktiCair: TEdit;
    LValas: TLabel;
    Label4: TLabel;
    TglDeposito: TDateEdit;
    procedure ClearKomponen;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NoDepositoEnter(Sender: TObject);
    procedure NoDepositoExit(Sender: TObject);
    procedure KodeVlsEnter(Sender: TObject);
    procedure KodeVlsExit(Sender: TObject);
    procedure BankEnter(Sender: TObject);
    procedure BankKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrSubDeposito: TFrSubDeposito;
   mValid:Boolean;
implementation
uses MyGlobal, Myprocedure, MyModul, FrmBrows, FrmDeposito;
{$R *.DFM}

procedure TFrSubDeposito.ClearKomponen;
var i:integer;
begin
  for i:= 0 to FrSubDeposito.ControlCount-1 do
  begin
    if (FrSubDeposito.Controls[i] is TEdit) then
       (FrSubDeposito.Controls[i] as TEdit).Clear;
    if (FrSubDeposito.Controls[i] is TPBNumEdit) then
       (FrSubDeposito.Controls[i] as TPBNumEdit).AsFloat := 0;
    if (FrSubDeposito.Controls[i] is TDateEdit) then
       (FrSubDeposito.Controls[i] as TDateEdit).Date := Now;
  end;
end;

procedure TFrSubDeposito.FormClose(Sender: TObject;
var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubDeposito.BitBtn1Click(Sender: TObject);
begin
  if FrDeposito.ModalKoreksi=false then
  begin
    with FrDeposito do
    begin
      UpdateDataGiroHutang('I');
      ClearKomponen;
    end;
    ActiveControl:=NoDeposito;
  end else
  begin
    with FrDeposito do
    begin
      UpdateDataGiroHutang('U');
    end;
    FrDeposito.mPosisi:=NoDeposito.Text;
    ModalResult:=mrOK;
  end;
end;

procedure TFrSubDeposito.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrSubDeposito.FormKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  if key=13 then
     SendMessage(handle,WM_NEXTDLGCTL,0,0)else
  if key=27 then
     close;
end;

procedure TFrSubDeposito.NoDepositoEnter(Sender: TObject);
begin
  mValid := true;
end;

procedure TFrSubDeposito.NoDepositoExit(Sender: TObject);
begin
  if mValid then
  begin
    if Length(NoDeposito.Text)=0 then
    begin
      ShowMessage('No. Deposito tidak boleh Kosong !');
      ActiveControl := NoDeposito;
    end;
  end;
end;

procedure TFrSubDeposito.KodeVlsEnter(Sender: TObject);
begin
  mValid := true;
end;

procedure TFrSubDeposito.KodeVlsExit(Sender: TObject);
var i : Integer;
begin
  if mValid Then
  begin
    SetLength(xValue,3);
    if DataBersyarat('select kodevls,namavls,kurs from dbValas where kodevls=:0',[kodevls.text],DM.Qucari) then
    begin
      kodevls.Text :=DM.QuCari.FieldByname('Kodevls').AsString;
      LValas.Caption:='[ '+DM.QuCari.FieldByname('Namavls').AsString+' ]';
      for i := Low(xValue) to High(xValue) do
      begin
        xValue[i] := DM.QuCari.Fields[i].Value;
      end;
    end
    else
      TampilIsiData(FrSubDeposito,kodevls,LValas,1006,'kodevls','Namavls');
    for I := LOW(xValue) to High(xValue) do
    begin
      if I= High(xValue) then
         Kurs.Value:=xValue[i];
    end;
  end;
end;

procedure TFrSubDeposito.BankEnter(Sender: TObject);
begin
 mValid:=true;
end;

procedure TFrSubDeposito.BankKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=vk_return) then
  begin
    if (mValid) and (FrDeposito.dxPageControl1.ActivePageIndex=0) then
    begin
      SetLength(xValue,2);
      if DataBersyarat('select a.* from dbPerkiraan a '+
                       'left outer join dbposthutpiut b on b.perkiraan=a.perkiraan '+
                       'where a.Perkiraan=:0 and b.kode=''DP'' ',[Bank.text],DM.Qucari) then
      begin
        Bank.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
        LBank.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
      end
      else
        TampilIsiData(FrSubDeposito,Bank,LBank,100410,'Perkiraan','Keterangan');
    end;
  end;
end;

procedure TFrSubDeposito.FormShow(Sender: TObject);
begin
  if FrDeposito.dxPageControl1.ActivePageIndex=0 then
  begin
    Label9.Caption := 'Daftar Buka Deposito';
    lBuktiBuka.Caption := 'Bukti Buka';
    LtglBuka.Caption := 'Tgl Buka ';
    lBank.Visible := True;
  end
  else if FrDeposito.dxPageControl1.ActivePageIndex=1 then
  begin
    Label9.Caption := 'Daftar Terima Deposito';
    lBuktiBuka.Caption := 'Bukti Terima';
    LtglBuka.Caption := 'Tgl Terima ';
    lBank.Visible := False;
  end;
end;

procedure TFrSubDeposito.FormDestroy(Sender: TObject);
begin
  FrSubDeposito := nil;
end;

end.
