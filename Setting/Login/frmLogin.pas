unit frmLogin;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcImage, fcimageform, fcButton, fcImgBtn,  StdCtrls, RXCtrls, Buttons,
  ExtCtrls;

type
  TfrLogin = class(TForm)
    BitBtn1: TBitBtn;
    Bevel1: TBevel;
    RxLabel1: TRxLabel;
    NamaUser: TEdit;
    KUNCI: TEdit;
    RxLabel2: TRxLabel;
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    Bevel2: TBevel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frLogin: TfrLogin;

implementation

{$R *.DFM}

procedure TfrLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then SendMessage(handle,WM_NEXTDLGCTL,0,0);
end;

procedure TfrLogin.BitBtn1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrLogin.FormShow(Sender: TObject);
begin
        //NamaUser.Text:='SA';
        //KUNCI.Text:='nan3disw';

end;

end.



