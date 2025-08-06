unit FrmSubMesin;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons, PBNumEdit;

type
  TFrSubMesin = class(TForm)
    KodeMsn: TEdit;
    Ket: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    Label30: TLabel;
    Label31: TLabel;
    Bevel2: TBevel;
    KodePRs: TEdit;
    Label3: TLabel;
    NmProses: TLabel;
    Kapasitas: TPBNumEdit;
    Label19: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeMsnEnter(Sender: TObject);
    procedure KodeMsnExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure KodePRsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodePRsEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IsSimpan : boolean;
  end;

var
  FrSubMesin: TFrSubMesin;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, FrmMesin, MyModul, FrmBrows;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubMesin.ControlCount-1 do
   begin
      if (FrSubMesin.Controls[i] is TEdit) then
         (FrSubMesin.Controls[i] as TEdit).Clear;
      if (FrSubMesin.Controls[i] is TPBNumEdit) then
         (FrSubMesin.Controls[i] as TPBNumEdit).Value:=0;
   end;
end;

procedure TFrSubMesin.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubMesin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrSubMesin.BitBtn1Click(Sender: TObject);
begin
if KodeMsn.Text<>'' then
begin
   if IsSimpan=true then
   begin
      with FrMesin do
      begin
         SimpanData('I');
         ClearKomponen;
      end;
      ActiveControl:=KodeMsn;
   end
   else
   begin
      with FrMesin do
      begin
         Simpandata('U');
      end;
      ModalResult:=mrOk;
   end;
 end
end;

procedure TFrSubMesin.BitBtn2Click(Sender: TObject);
begin
   Close;
end;


procedure TFrSubMesin.KodeMsnEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubMesin.KodeMsnExit(Sender: TObject);
begin
  if (IsSimpan) then
  begin
    if mValid then
    begin
      if length(KodeMsn.Text)<>0 then
      begin
        if MyFindField('dbMesin','KodeMsn',KodeMsn.Text)=true then
        begin
           ShowMessage('Data Sudah Ada !');
           ActiveControl:=KodeMsn;
        end;
      end
      else
      begin
        ShowMessage('Data Tidak Boleh Kosong !');
        ActiveControl:=KodeMsn;
      end;
    end;
  end;
end;

procedure TFrSubMesin.FormShow(Sender: TObject);
begin
  KodeMsn.Enabled:=IsSimpan;
end;

procedure TFrSubMesin.KodePRsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if mValid Then
  begin
    GetBrowse(91113,'DbProses','KodePrs','Keterangan',FrSubMesin,KodePrs,NmProses);
  end;
end;

procedure TFrSubMesin.KodePRsEnter(Sender: TObject);
begin
Mvalid:=true;
end;

end.
