unit FrmSubArusKas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons;

type
  TFrSubArusKas = class(TForm)
    KodeGrp: TEdit;
    NamaGrp: TEdit;
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
    procedure KodeGrpEnter(Sender: TObject);
    procedure KodeGrpExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IsSimpan : boolean;
  end;

var
  FrSubArusKas: TFrSubArusKas;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, FrmArusKas;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubArusKas.ControlCount-1 do
   begin
      if (FrSubArusKas.Controls[i] is TEdit) then
         (FrSubArusKas.Controls[i] as TEdit).Clear;
   end;
end;

procedure TFrSubArusKas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubArusKas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrSubArusKas.BitBtn1Click(Sender: TObject);
begin
  if KodeGRP.Text<>'' then
  begin
     if IsSimpan=true then
     begin
          FrArusKas.SimpanData('I');
           ClearKomponen;
        ActiveControl:=kodeGrp;
     end
     else
     begin
        FrArusKas.Simpandata('U');
        ModalResult:=mrOk;
     end;
   end
end;

procedure TFrSubArusKas.BitBtn2Click(Sender: TObject);
begin
   Close;
end;


procedure TFrSubArusKas.KodeGrpEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubArusKas.KodeGrpExit(Sender: TObject);
begin
  If (IsSimpan) then
  begin
    if mValid then
    begin
      if length(Kodegrp.Text)<>0 then
      begin
        if MyFindField('dbArusKas','KodeAK',KodeGrp.Text)=true then
        begin
          ShowMessage('Data Sudah Ada !');
          ActiveControl:=KodeGrp;
        end;
      end
      else
      begin
        ShowMessage('Data Tidak Boleh Kosong !');
         ActiveControl:=KodeGrp;
      end;
    end;
  end;
end;

procedure TFrSubArusKas.FormShow(Sender: TObject);
begin
  KodeGrp.Enabled:=IsSimpan;
end;

end.
