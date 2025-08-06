unit FrmSubBiayaProses;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons, PBNumEdit;

type
  TFrSubBiayaProses = class(TForm)
    Urut: TEdit;
    Perkiraan: TEdit;
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
    NmPerkiraan: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UrutEnter(Sender: TObject);
    procedure UrutExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure KodePRsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodePRsEnter(Sender: TObject);
    procedure PerkiraanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    IsSimpan : boolean;
  end;

var
  FrSubBiayaProses: TFrSubBiayaProses;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, FrmBiayaProses, MyModul, FrmBrows, ADODB;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubBiayaProses.ControlCount-1 do
   begin
      if (FrSubBiayaProses.Controls[i] is TEdit) then
         (FrSubBiayaProses.Controls[i] as TEdit).Clear;
      if (FrSubBiayaProses.Controls[i] is TPBNumEdit) then
         (FrSubBiayaProses.Controls[i] as TPBNumEdit).Value:=0;
   end;
   FrSubBiayaProses.NmProses.Caption := '[ . . . ]';
   FrSubBiayaProses.NmPerkiraan.Caption := '[ . . . ]';
end;

procedure TFrSubBiayaProses.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubBiayaProses.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrSubBiayaProses.BitBtn1Click(Sender: TObject);
begin
if KodePRs.Text<>'' then
begin
   if IsSimpan=true then
   begin
      with FrBiayaProses do
      begin
         SimpanData('I');
         ClearKomponen;
      end;
      ActiveControl:=KodePrs;
   end
   else
   begin
      with FrBiayaProses do
      begin
         Simpandata('U');
      end;
      ModalResult:=mrOk;
   end;
 end
end;

procedure TFrSubBiayaProses.BitBtn2Click(Sender: TObject);
begin
   Close;
end;


procedure TFrSubBiayaProses.UrutEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubBiayaProses.UrutExit(Sender: TObject);
begin
{
  if (IsSimpan) then
  begin
    if mValid then
    begin
      if length(KodePrs.Text)<>0 then
      begin
        if MyFindField('dbProses','KodePrs',KodeMsn.Text)=true then
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
}
end;

procedure TFrSubBiayaProses.FormShow(Sender: TObject);
begin
  KodePrs.Enabled:=IsSimpan;
end;

procedure TFrSubBiayaProses.KodePRsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if mValid Then
  begin
    GetBrowse(91113,'DbProses','KodePrs','Keterangan',FrSubBiayaProses,KodePrs,NmProses);
  end;
  with DM.QuCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select ISNULL(MAX(Urut),0)+1 from DBbiayaproses where KodePrs = :0');
      Parameters[0].Value := KodePRs.Text;
      Open;
      Urut.Text := Fields[0].AsString;
    end;
end;

procedure TFrSubBiayaProses.KodePRsEnter(Sender: TObject);
begin
Mvalid:=true;
end;

procedure TFrSubBiayaProses.PerkiraanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if mValid Then
  begin
    GetBrowse(91115,'DBPERKIRAAN','Perkiraan','Keterangan',FrSubBiayaProses,Perkiraan,NmPerkiraan);
  end;

end;

end.
