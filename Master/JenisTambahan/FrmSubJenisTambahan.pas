unit FrmSubJenisTambahan;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons;

type
  TFrSubJenisTambahan = class(TForm)
    KodeJnsTambahan: TEdit;
    Nama: TEdit;
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
    procedure KodeJnsTambahanEnter(Sender: TObject);
    procedure KodeJnsTambahanExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IsSimpan : boolean;
  end;

var
  FrSubJenisTambahan: TFrSubJenisTambahan;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, FrmJenisTambahan;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubJenisTambahan.ControlCount-1 do
   begin
      if (FrSubJenisTambahan.Controls[i] is TEdit) then
         (FrSubJenisTambahan.Controls[i] as TEdit).Clear;
   end;
end;

procedure TFrSubJenisTambahan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubJenisTambahan.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrSubJenisTambahan.BitBtn1Click(Sender: TObject);
begin
  if KodeJnsTambahan.Text<>'' then
  begin
     if IsSimpan=true then
     begin
          FrJenisTambahan.SimpanData('I');
           ClearKomponen;
        ActiveControl:=KodeJnsTambahan;
     end
     else
     begin
          FrJenisTambahan.Simpandata('U');
        ModalResult:=mrOk;
     end;
   end
end;

procedure TFrSubJenisTambahan.BitBtn2Click(Sender: TObject);
begin
   Close;
end;


procedure TFrSubJenisTambahan.KodeJnsTambahanEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubJenisTambahan.KodeJnsTambahanExit(Sender: TObject);
begin
  If (IsSimpan) then
  begin
    if mValid then
    begin
      if length(KodeJnsTambahan.Text)<>0 then
      begin
        if MyFindField('DBJnsTambahan','KodeJnsTambahan',KodeJnsTambahan.Text)=true then
        begin
          ShowMessage('Data Sudah Ada !');
          ActiveControl:=KodeJnsTambahan;
        end;
      end
      else
      begin
        ShowMessage('Data Tidak Boleh Kosong !');
         ActiveControl:=KodeJnsTambahan;
      end;
    end;
  end;
end;

procedure TFrSubJenisTambahan.FormShow(Sender: TObject);
begin
  KodeJnsTambahan.Enabled:=IsSimpan;
end;

end.
