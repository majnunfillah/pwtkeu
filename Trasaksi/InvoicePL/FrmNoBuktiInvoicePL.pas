unit FrmNoBuktiInvoicePL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, ToolEdit, DB, ADODB,
  DateUtils,strutils;

type
  TFrNoBuktiInvoicePL = class(TForm)
    Label4: TLabel;
    NoUrut: TEdit;
    Label12: TLabel;
    NoBukti: TEdit;
    Label42: TLabel;
    Tanggal: TDateEdit;
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PilihanInvoice: TRadioGroup;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure NoUrutChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TanggalExit(Sender: TObject);
    procedure NoUrutEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NoUrutExit(Sender: TObject);
    procedure PilihanInvoiceClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    YY, MM, DD: Word;
    mValid: Boolean;
    TipeTrans, Nomor, NomorBukti, Nobukti_Old: String;
    procedure IsiNoBuktiBaru;
  public
    { Public declarations }
    mTipeTransAsal, mNoBuktiAsal: String;
    xFLagmenu : integer;
  end;

var
  FrNoBuktiInvoicePL: TFrNoBuktiInvoicePL;

implementation

uses FrmBrows, MyProcedure, MyGlobal, MyModul;

{$R *.dfm}

procedure TFrNoBuktiInvoicePL.IsiNoBuktiBaru;
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
  Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,IDUser);
  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal.Date);

  NoUrut.Text:=NomorBukti;
  NOBUKTI.Text:=Nomor;
  Nobukti_Old := NoBukti.Text;
  Daftar_Nomor(TipeTrans,Nourut.Text,NoBukti.Text,isMax);
end;

procedure TFrNoBuktiInvoicePL.BitBtn2Click(Sender: TObject);
begin
//  Hapus_Daftar_Nomor(TipeTrans,no);
  Close;
end;

procedure TFrNoBuktiInvoicePL.BitBtn1Click(Sender: TObject);
begin
  if (CekPeriode(IdUser,TANGGAL.Date)=true) then
  begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      with DM.QuCari do
      begin
        Close;
        SQL.Clear;
        SQL.Add('exec sp_InsertInvPL :0,:1,:2,:3, :4');
        Prepared;
        Parameters[0].Value := NoBukti.Text;
        Parameters[1].Value := NoUrut.Text;
        Parameters[2].Value := Tanggal.Date;
        Parameters[3].Value := mNoBuktiAsal;
        Parameters[4].Value := IDUser;
        ExecSQL;
      end;
      ModalResult:=mrOK;
    end
    else
    begin
      MsgPeriodeSudahDikunci;
      ActiveControl:=Tanggal;
    end;
  end
  else
    MsgTanggalTidakSesuaiPeriode;
end;

procedure TFrNoBuktiInvoicePL.NoUrutChange(Sender: TObject);
begin
  if mValid then
  begin
    if (Length(NoUrut.Text)=5) then
    begin
      Hapus_Daftar_Nomor(TipeTrans,Nobukti_Old,IDUser);
      Konfig(TipeTrans,Nourut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date);
      NOBUKTI.Text:=MyNoBukti;
      Nobukti_Old := NoBukti.Text;
    end
    else
      ActiveControl:=NoUrut;
  end;
end;

procedure TFrNoBuktiInvoicePL.FormShow(Sender: TObject);
begin
  PilihanInvoice.ItemIndex:=0;
  NoUrut.MaxLength:=5;
  TipeTrans:='INVC';
  IsiNoBuktiBaru;
end;

procedure TFrNoBuktiInvoicePL.TanggalExit(Sender: TObject);
begin
  if mValid then
  begin
     if CekPeriode(IDUser,TANGGAL.Date)=false then
     begin
       MsgTanggalTidakSesuaiPeriode;
       ActiveControl:=Tanggal;
     end;
  end;
end;

procedure TFrNoBuktiInvoicePL.NoUrutEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrNoBuktiInvoicePL.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0)
   else if key=vk_escape then
      BitBtn2.Click;
end;

procedure TFrNoBuktiInvoicePL.NoUrutExit(Sender: TObject);
var myTempNoUrut: String;
begin
  myTempNoUrut:=NoUrut.Text;
  NoUrut.Text:=RightStr('00000'+myTempNoUrut,5);
  Konfig(TipeTrans,NoUrut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date);
  NOBUKTI.Text:=MyNoBukti;
  if mValid then
  begin
    {If Length(NoUrut.Text)<5 then
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
        if xModalKoreksi then
        begin
          ActiveControl := NoUrut;
        end;
      end;}
      If Not Daftar_Nomor(TipeTrans,Nourut.Text,NoBukti.Text,isMax) then
      begin
        MessageDlg('Nomor : '+NOBUKTI.Text+' telah digunakan oleh '+MyUser+'.',mtWarning,[MbOk],0);
        ActiveControl := NoUrut;
      end;
   // end;
  end;
end;

procedure TFrNoBuktiInvoicePL.PilihanInvoiceClick(Sender: TObject);
begin
  //PilihanInvoice.ItemIndex:=0;
  TipeTrans:='INV';
  IsiNoBuktiBaru;
end;

procedure TFrNoBuktiInvoicePL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,IDUser);
end;

end.
