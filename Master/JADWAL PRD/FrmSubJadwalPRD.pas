unit FrmSubJadwalPRD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons, PBNumEdit, Mask, ToolEdit;

type
  TFrSubJadwalPRD = class(TForm)
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
    kodeMSn: TEdit;
    NmMsn: TLabel;
    QntSPK: TPBNumEdit;
    Label19: TLabel;
    Tanggal: TDateEdit;
    Label42: TLabel;
    Label4: TLabel;
    JamAkhir: TMaskEdit;
    Label5: TLabel;
    IsProduksi: TCheckBox;
    Label6: TLabel;
    NoSPK: TEdit;
    Label7: TLabel;
    Label3: TLabel;
    QntKerja: TPBNumEdit;
    JamAwl: TMaskEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeMsnEnter(Sender: TObject);
    procedure KodeMsnExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure kodeMSnKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodePRsEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IsSimpan : boolean;
  end;

var
  FrSubJadwalPRD: TFrSubJadwalPRD;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, MyModul, FrmBrows, frmJadwalPRD;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubJadwalPRD.ControlCount-1 do
   begin
      if (FrSubJadwalPRD.Controls[i] is TEdit) then
         (FrSubJadwalPRD.Controls[i] as TEdit).Clear;
      if (FrSubJadwalPRD.Controls[i] is TPBNumEdit) then
         (FrSubJadwalPRD.Controls[i] as TPBNumEdit).Value:=0;
      if (FrSubJadwalPRD.Controls[i] is TCheckBox) then
         (FrSubJadwalPRD.Controls[i] as TCheckBox).Checked:=False;
      if (FrSubJadwalPRD.Controls[i] is TMaskEdit) then
         (FrSubJadwalPRD.Controls[i] as TMaskEdit).Clear;
   end;
end;

procedure TFrSubJadwalPRD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubJadwalPRD.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrSubJadwalPRD.BitBtn1Click(Sender: TObject);
begin
if KodeMsn.Text<>'' then
begin
   if IsSimpan=true then
   begin
      with FrJadwalPRD do
      begin
         SimpanData('I');
         ClearKomponen;
      end;
      ActiveControl:=KodeMsn;
   end
   else
   begin
      with FrJadwalPRD do
      begin
         Simpandata('U');
      end;
      ModalResult:=mrOk;
   end;
 end
end;

procedure TFrSubJadwalPRD.BitBtn2Click(Sender: TObject);
begin
   Close;
end;


procedure TFrSubJadwalPRD.KodeMsnEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubJadwalPRD.KodeMsnExit(Sender: TObject);
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

procedure TFrSubJadwalPRD.FormShow(Sender: TObject);
begin
  KodeMsn.Enabled:=IsSimpan;
end;

procedure TFrSubJadwalPRD.kodeMSnKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if mValid Then
  begin
    GetBrowse(91114,'DBMesin','kodeMsn','Ket',FrSubJadwalPRD,kodeMSn,NmMsn);
  end;
end;

procedure TFrSubJadwalPRD.KodePRsEnter(Sender: TObject);
begin
Mvalid:=true;
end;

end.
