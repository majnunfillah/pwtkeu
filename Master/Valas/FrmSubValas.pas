unit FrmSubValas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons, PBNumEdit;

type
  TFrSubvalas = class(TForm)
    KodeVls: TEdit;
    NamaVls: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    Image1: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Bevel2: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Kurs: TPBNumEdit;
    Label4: TLabel;
    Simbol: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeVlsEnter(Sender: TObject);
    procedure KodeVlsExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IsSimpan : boolean;
  end;

var
  FrSubvalas: TFrSubvalas;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, Frmvalas;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubvalas.ControlCount-1 do
   begin
      if (FrSubvalas.Controls[i] is TEdit) then
         (FrSubvalas.Controls[i] as TEdit).Clear;
      if (FrSubvalas.Controls[i] is TPBNumEdit) then
         (FrSubvalas.Controls[i] as TPBNumEdit).Value:=1;
   end;
end;

procedure TFrSubvalas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubvalas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrSubvalas.BitBtn1Click(Sender: TObject);
begin
if KodeVls.Text<>'' then
begin
   if IsSimpan=true then
   begin
      with Frvalas do
      begin
        SimpanData('I');
         ClearKomponen;
      end;
      ActiveControl:=kodeVls;
   end
   else
   begin
      with Frvalas do
      begin
        Simpandata('U');
      end;
      ModalResult:=mrOk;
   end;
 end
end;

procedure TFrSubvalas.BitBtn2Click(Sender: TObject);
begin
   Close;
end;


procedure TFrSubvalas.KodeVlsEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubvalas.KodeVlsExit(Sender: TObject);
begin
  if (Issimpan) then
  begin
    if mValid then
    begin
      if length(Kodevls.Text)<>0 then
      begin
        if MyFindField('dbvalas','KodeVls',Kodevls.Text)=true then
        begin
          ShowMessage('Data Sudah Ada !');
          ActiveControl:=Kodevls;
        end;
      end
      else
      begin
        ShowMessage('Data Tidak Boleh Kosong !');
        ActiveControl:=KodeVls;
      end;
    end;
  end;
end;

procedure TFrSubvalas.FormShow(Sender: TObject);
begin
  KodeVls.Enabled:=IsSimpan=True;
  if IsSimpan=True then
    ActiveControl:=KodeVls
  else ActiveControl:=NamaVls;
end;

end.
