unit FrmSubJabatan;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons;

type
  TFrSubJabatan = class(TForm)
    KodeBrd: TEdit;
    NamaBrd: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    Label30: TLabel;
    Label31: TLabel;
    Bevel2: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeBrdEnter(Sender: TObject);
    procedure KodeBrdExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IsSimpan : boolean;
  end;

var
  FrSubJabatan: TFrSubJabatan;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, FrmJabatan, MyModul, FrmBrows;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubJabatan.ControlCount-1 do
   begin
      if (FrSubJabatan.Controls[i] is TEdit) then
         (FrSubJabatan.Controls[i] as TEdit).Clear;
   end;
end;

procedure TFrSubJabatan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubJabatan.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrSubJabatan.BitBtn1Click(Sender: TObject);
begin
if KodeBrd.Text<>'' then
begin
   if IsSimpan=true then
   begin
      with FrJabatan do
      begin
         SimpanData('I');
         ClearKomponen;
      end;
      ActiveControl:=KodeBrd;
   end
   else
   begin
      with FrJabatan do
      begin
         Simpandata('U');
      end;
      ModalResult:=mrOk;
   end;
 end
end;

procedure TFrSubJabatan.BitBtn2Click(Sender: TObject);
begin
   Close;
end;


procedure TFrSubJabatan.KodeBrdEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubJabatan.KodeBrdExit(Sender: TObject);
begin
  if (IsSimpan) then
  begin
    if mValid then
    begin
      if length(KodeBrd.Text)<>0 then
      begin
        if MyFindField('dbJabatan','KodeJab',KodeBrd.Text)=true then
        begin
           ShowMessage('Data Sudah Ada !');
           ActiveControl:=KodeBrd;
        end;
      end
      else
      begin
        ShowMessage('Data Tidak Boleh Kosong !');
        ActiveControl:=KodeBrd;
      end;
    end;
  end;
end;

procedure TFrSubJabatan.FormShow(Sender: TObject);
begin
  KodeBrd.Enabled:=IsSimpan;
end;

end.
