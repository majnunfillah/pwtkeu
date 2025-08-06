unit FrmIsiNoFPJRBeli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit;

type
  TFrIsiNoFPJRBeli = class(TForm)
    NoFPJ: TEdit;
    TglPajak: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrIsiNoFPJRBeli: TFrIsiNoFPJRBeli;

implementation

{$R *.dfm}

procedure TFrIsiNoFPJRBeli.Button1Click(Sender: TObject);
begin
   ModalResult:=mrOK;
end;

procedure TFrIsiNoFPJRBeli.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=13 then
      SendMessage(handle,WM_NEXTDLGCTL,0,0)
    else if key=27 then
      close;

end;

procedure TFrIsiNoFPJRBeli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
end;

end.
