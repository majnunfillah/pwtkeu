unit frmPassword;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcImage, fcimageform, fcButton, fcImgBtn,  StdCtrls, RXCtrls, Buttons,
  ExtCtrls, DB, ADODB, RxGIF;

type
  TfrPassword = class(TForm)
    BitBtn1: TBitBtn;
    Bevel1: TBevel;
    RxLabel1: TRxLabel;
    OldPass: TEdit;
    Pass1: TEdit;
    RxLabel2: TRxLabel;
    Image1: TImage;
    Label2: TLabel;
    BitBtn2: TBitBtn;
    Pass2: TEdit;
    RxLabel3: TRxLabel;
    Bevel2: TBevel;
    quUpdate: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure fcImageBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IsTambah,IsKoreksi,IsHapus, IsCetak, Isexcel : Integer;
  end;

var
  frPassword: TfrPassword;

implementation
uses MyGlobal,MyProcedure,MyModul;
{$R *.DFM}

procedure TfrPassword.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrPassword.fcImageBtn1Click(Sender: TObject);
begin
ModalResult := mrCancel;
end;

procedure TfrPassword.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then SendMessage(handle,WM_NEXTDLGCTL,0,0);
end;

procedure TfrPassword.BitBtn1Click(Sender: TObject);
begin
  if DataBersyarat('select * from dbflpass where userid=:0 and uid=:1',
     [iduser,Encrypt(oldpass.text,Startkey, Multkey, addkey)],DM.qucari)=true then
  begin
       if Pass1.Text=Pass2.Text then
       begin
           with quUpdate do
           begin
              close;
              SQL.Clear;
              SQL.Add('Update dbflpass set uid=:0 where userid=:1');
              Parameters[0].Value:=Encrypt(pass1.text,Startkey, Multkey, addkey);
              Parameters[1].Value:=IDUser;
              ExecSQL;
           end;
           //LoggingData(Caption,'User '+IDUser+' Mengganti Password : '+Encrypt(oldpass.text,Startkey, Multkey, addkey)+#13+
           //            'dengan password baru : '+Encrypt(pass1.text,Startkey, Multkey, addkey) +#13+
           //            'Password yang terlihat telah dienkripsi ',QuUpdate);
           close;
       end else
       begin
           showmessage('Password 1 Harus Sama Dengan password 2 !');
           ActiveControl:=Pass1;
       end;
  end
  else
  begin
     showmessage(' Password lama tidak cocok !');
     ActiveControl:=OldPass;
  end;
end;

procedure TfrPassword.BitBtn2Click(Sender: TObject);
begin
   close;
end;

end.
