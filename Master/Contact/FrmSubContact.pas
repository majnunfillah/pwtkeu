unit FrmSubContact;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons,db, PBNumEdit,StrUtils, dxPageControl,
  ExtDlgs, ADODB;

type
  TFrSubContact = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label9: TLabel;
    Bevel2: TBevel;
    Panel1: TPanel;
    Photo: TImage;
    BtnCariGambar: TBitBtn;
    Label10: TLabel;
    Gelar: TComboBox;
    FirstName: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    Bevel3: TBevel;
    Label18: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    AlamatContact: TMemo;
    EmailContact: TEdit;
    Mobile: TEdit;
    FaxNumber: TEdit;
    Phone: TEdit;
    JobTitle: TEdit;
    LastName: TEdit;
    MiddleName: TEdit;
    DaftarGambar: TOpenPictureDialog;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BtnCariGambarClick(Sender: TObject);
    procedure GelarChange(Sender: TObject);
    procedure AlamatContactEnter(Sender: TObject);
    procedure AlamatContactExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IsSimpan: boolean;
  end;

var
  FrSubContact: TFrSubContact;
   mValid:Boolean;
implementation
uses MyGlobal,Myprocedure, MyModul, FrmContact;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubContact.ControlCount-1 do
   begin
      if (FrSubContact.Controls[i] is TEdit) then
         (FrSubContact.Controls[i] as TEdit).Clear;
      if (FrSubContact.Controls[i] is TMemo) then
         (FrSubContact.Controls[i] as TMemo).Lines.Clear;
      if (FrSubContact.Controls[i] is TImage) then
         (FrSubContact.Controls[i] as TImage).Picture.Bitmap.FreeImage;
   end;
end;

procedure TFrSubContact.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFrSubContact.BitBtn1Click(Sender: TObject);
begin
   if IsSimpan=true then
   begin
      with FrContact do
      begin
         SimpanData('I');
         ClearKomponen;
      end;
      ActiveControl:=Gelar;
   end
   else
   begin
      with FrContact do
      begin
         SimpanData('U');
      end;
      ModalResult:=mrOk;
   end;
end;

procedure TFrSubContact.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

procedure TFrSubContact.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrSubContact.FormShow(Sender: TObject);
begin
  activecontrol:=Gelar;
end;

procedure TFrSubContact.BtnCariGambarClick(Sender: TObject);
begin
  If DaftarGambar.Execute Then
     Photo.Picture.LoadFromFile(DaftarGambar.FileName);
end;

procedure TFrSubContact.GelarChange(Sender: TObject);
begin
  Label1.Caption := Gelar.Items.Strings[Gelar.itemIndex]+'  '+
                    FirstName.Text+' '+MiddleName.Text+' '+
                    LastName.Text;  
end;

procedure TFrSubContact.AlamatContactEnter(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TFrSubContact.AlamatContactExit(Sender: TObject);
begin
  KeyPreview := True;
end;

end.
