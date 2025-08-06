unit FrmSubGiro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, XPMenu, ExtCtrls, Buttons,db, Mask, ToolEdit, PBNumEdit;

type
  TFrSubGiro = class(TForm)
    Bank: TEdit;
    NoGiro: TEdit;
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
    TanggalGiro: TDateEdit;
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
    Kas: TEdit;
    LKas: TLabel;
    procedure ClearKomponen;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NoGiroEnter(Sender: TObject);
    procedure NoGiroExit(Sender: TObject);
    procedure KodeVlsEnter(Sender: TObject);
    procedure KodeVlsExit(Sender: TObject);
    procedure BankEnter(Sender: TObject);
    procedure BankKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure KasEnter(Sender: TObject);
    procedure TampilIsiPerkiraan;
    procedure KasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrSubGiro: TFrSubGiro;
   mValid:Boolean;
implementation
uses MyGlobal, Myprocedure, MyModul, FrmBrows, FrmGiro;
{$R *.DFM}

procedure TFrSubGiro.ClearKomponen;
var i:integer;
begin
  for i:= 0 to FrSubGiro.ControlCount-1 do
  begin
    if (FrSubGiro.Controls[i] is TEdit) then
       (FrSubGiro.Controls[i] as TEdit).Clear;
    if (FrSubGiro.Controls[i] is TPBNumEdit) then
       (FrSubGiro.Controls[i] as TPBNumEdit).AsFloat := 0;
    if (FrSubGiro.Controls[i] is TDateEdit) then
       (FrSubGiro.Controls[i] as TDateEdit).Date := Now;
  end;
end;

procedure TFrSubGiro.FormClose(Sender: TObject;
var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubGiro.BitBtn1Click(Sender: TObject);
begin
  if FrGiro.ModalKoreksi=false then
  begin
    with FrGiro do
    begin
      UpdateDataGiroHutang('I');
      ClearKomponen;
    end;
    ActiveControl:=NoGiro;
  end else
  begin
    with FrGiro do
    begin
      UpdateDataGiroHutang('U');
    end;
    FrGiro.mPosisi:=NoGiro.Text;
    ModalResult:=mrOK;
  end;
end;

procedure TFrSubGiro.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrSubGiro.FormKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  if key=13 then
     SendMessage(handle,WM_NEXTDLGCTL,0,0)else
  if key=27 then
     close;
end;

procedure TFrSubGiro.NoGiroEnter(Sender: TObject);
begin
  mValid := true;
end;

procedure TFrSubGiro.NoGiroExit(Sender: TObject);
begin
  if mValid then
  begin
    if Length(NoGiro.Text)=0 then
    begin
      ShowMessage('No. Giro tidak boleh Kosong !');
      ActiveControl := NoGiro;
    end;
  end;
end;

procedure TFrSubGiro.KodeVlsEnter(Sender: TObject);
begin
  mValid := true;
end;

procedure TFrSubGiro.KodeVlsExit(Sender: TObject);
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
      TampilIsiData(FrSubGiro,kodevls,LValas,1006,'kodevls','Namavls');
    for I := LOW(xValue) to High(xValue) do
    begin
      if I= High(xValue) then
         Kurs.Value:=xValue[i];
    end;
  end;
   VlsIDR(KodeVls,Kurs);
  if Kurs.Enabled=false then ActiveControl:=TglBuka else ActiveControl:=Kurs;
end;

procedure TFrSubGiro.BankEnter(Sender: TObject);
begin
 mValid:=true;
end;

procedure TFrSubGiro.BankKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=vk_return) then
  begin
    if (mValid) and (FrGiro.dxPageControl1.ActivePageIndex=0) then
    begin
      SetLength(xValue,2);
      if DataBersyarat('select * from dbPerkiraan where Perkiraan=:0',[Bank.text],DM.Qucari) then
      begin
        Bank.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
        LBank.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
      end
      else
        TampilIsiData(FrSubGiro,Bank,LBank,100404,'Perkiraan','Keterangan');
    end;
  end;
end;

procedure TFrSubGiro.FormShow(Sender: TObject);
begin
  if FrGiro.dxPageControl1.ActivePageIndex=0 then
  begin
    Label9.Caption := 'Daftar Buka Giro';
    lBuktiBuka.Caption := 'Bukti Buka';
    LtglBuka.Caption := 'Tgl Buka ';
    lBank.Visible := True;
          label4.Visible:=false;
      kas.Visible:=false;
      Lkas.Visible := false;
  end
  else if FrGiro.dxPageControl1.ActivePageIndex=1 then
  begin
    Label9.Caption := 'Daftar Terima Giro';
    lBuktiBuka.Caption := 'Bukti Terima';
    LtglBuka.Caption := 'Tgl Terima ';
    if frgiro.IsTambah  then
         kas.Enabled:=true
    else kas.Enabled:=false;
    lBank.Visible := False;
  end;
end;

procedure TFrSubGiro.FormDestroy(Sender: TObject);
begin
  FrSubGiro := nil;
end;

procedure TFrSubGiro.KasEnter(Sender: TObject);
begin
   mvalid:=True;
end;

procedure TFrSubGiro.KasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
  begin
        if Length(Kas.Text)=0 then TampilIsiPerkiraan

  end;
end;
procedure TFrSubGiro.TampilIsiPerkiraan;
begin
     KodeBrows:=20012;
     Application.CreateForm(TFrBrows, FrBrows);
     FrBrows.ShowModal;
     if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.FieldByName('Perkiraan').AsString<>'') then
     begin
       with FrBrows.QuBrows do
       begin
         Kas.Text:=FieldByName('Perkiraan').AsString;
         LKas.caption :=FieldByName('Keterangan').AsString;
       end;
     end
     else ActiveControl:=KAS;
end;

end.
