unit FrmSubEkspedisi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons,StrUtils,db;

type
  TFrSubEkspedisi = class(TForm)
    KodeEksped: TEdit;
    NamaEksped: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Alamat: TEdit;
    Kota: TEdit;
    Telepon: TEdit;
    Aktif: TComboBox;
    Fax: TEdit;
    Label7: TLabel;
    HP: TEdit;
    Label8: TLabel;
    Contact: TEdit;
    Label9: TLabel;
    Image1: TImage;
    Label11: TLabel;
    Label12: TLabel;
    Bevel2: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeEkspedExit(Sender: TObject);
    procedure KodeEkspedEnter(Sender: TObject);
    procedure NamaEkspedExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IsSimpan : boolean;
  end;

var
  FrSubEkspedisi: TFrSubEkspedisi;
   mValid:Boolean;
implementation
uses FrmEkspedisi,MyGlobal,Myprocedure, MyModul;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubEkspedisi.ControlCount-1 do
   begin
      if (FrSubEkspedisi.Controls[i] is TEdit) then
         (FrSubEkspedisi.Controls[i] as TEdit).Clear;
   end;
end;

procedure TFrSubEkspedisi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFrSubEkspedisi.BitBtn1Click(Sender: TObject);
begin
 if KodeEksped.Text<>'' then
 begin
   if IsSimpan=true then
   begin
         frEkspedisi.mPosisi:=Kodeeksped.Text;
         frEkspedisi.SimpanData('I');
         ClearKomponen;
      ActiveControl:=KodeEksped;
   end
   else
   begin
        frEkspedisi.Simpandata('U');
      ModalResult:=mrOk;
   end;
 end;
end;

procedure TFrSubEkspedisi.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

procedure TFrSubEkspedisi.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    sendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
   close;
end;

procedure TFrSubEkspedisi.KodeEkspedExit(Sender: TObject);
begin
{if mValid then
begin
   if Length(KodeSls.Text)>0 then
   begin
      if MyFindField('dbSalesman','KodeSls',KodeSls.Text)=true then
      begin
         ShowMessage('Data Sudah Ada !');
         ActiveControl:=KodeSls;
      end;
   end else
   begin
       ShowMessage('Data Tidak Boleh Kosong !');
       ActiveControl:=KodeSls;
   end;

end;
}
end;

procedure TFrSubEkspedisi.KodeEkspedEnter(Sender: TObject);
begin
 //mValid:=true;
end;


procedure TFrSubEkspedisi.NamaEkspedExit(Sender: TObject);
begin
{
  if trim(Namaeksped.Text)<>'' then
  begin
    if (Issimpan=true)  then
    begin
      TempCode :=GenerateCode('dbExpedisi','KodeExp',uppercase(LeftStr(NamaEksped.Text,1)));
      Kodeeksped.Text:=tempCode;
    end;
  end
  else
  begin
   Showmessage('Nama Harus Diisi');
   activeControl:=Namaeksped;
 end;
 }
end;

procedure TFrSubEkspedisi.FormShow(Sender: TObject);
begin
  KodeEksped.Enabled:=IsSimpan;
  if KodeEksped.CanFocus then KodeEksped.SetFocus
    else ActiveControl:=NamaEksped;
end;

end.
