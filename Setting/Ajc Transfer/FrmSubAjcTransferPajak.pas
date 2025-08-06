unit FrmSubAjcTransferPajak;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, PBNumEdit, Buttons, ExtCtrls;

type
  TFrSubAjcTransferPajak = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    NamaTabel: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SelectTabel: TMemo;
    Label3: TLabel;
    Tipe: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SelectTabelEnter(Sender: TObject);
    procedure SelectTabelExit(Sender: TObject);
    procedure TipeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure ClearInputan;
  public
    { Public declarations }
    IsSimpan: Boolean;
  end;

var
  FrSubAjcTransferPajak: TFrSubAjcTransferPajak;

implementation

uses MyModul, MyProcedure, MyGlobal, FrmAjcTransferPajak;

{$R *.dfm}

procedure TFrSubAjcTransferPajak.ClearInputan;
begin
  NamaTabel.Text:='';
  SelectTabel.Text:='';
  Tipe.Text:='';
end;

procedure TFrSubAjcTransferPajak.BitBtn1Click(Sender: TObject);
begin
  if IsSimpan=True then
  begin
    with DM.QuCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add('insert into TransferDataPajak (NamaTabel,SelectTabel,IsTipe)');
      SQL.Add('values(:0,:1,:2)');
      Prepared;
      Parameters[0].Value:=NamaTabel.Text;
      Parameters[1].Value:=SelectTabel.Text;
      Parameters[2].Value:=Tipe.Text;
      ExecSQL;
    end;
    FrAjcTransferPajak.TampilData;
    ClearInputan;
    ActiveControl:=NamaTabel;
  end else
  begin
    with DM.QuCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add('update TransferDataPajak set NamaTabel=:0,SelectTabel=:1,IsTipe=:2');
      SQL.Add('where KeyUrut='+IntToStr(FrAjcTransferPajak.QuAjcTransferKeyUrut.AsInteger));
      Prepared;
      Parameters[0].Value:=NamaTabel.Text;
      Parameters[1].Value:=SelectTabel.Text;
      Parameters[2].Value:=Tipe.Text;
      ExecSQL;
    end;
    FrAjcTransferPajak.TampilData;
    Close;
  end;

end;

procedure TFrSubAjcTransferPajak.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrSubAjcTransferPajak.FormShow(Sender: TObject);
begin
  ActiveControl:=NamaTabel;
end;

procedure TFrSubAjcTransferPajak.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if Key=VK_ESCAPE then CLOSE;
end;

procedure TFrSubAjcTransferPajak.SelectTabelEnter(Sender: TObject);
begin
  KeyPreview:=False;
end;

procedure TFrSubAjcTransferPajak.SelectTabelExit(Sender: TObject);
begin
  KeyPreview:=True;
end;

procedure TFrSubAjcTransferPajak.TipeKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (Key in ['T','t','M','m',chr(vk_delete),chr(vk_return),chr(vk_back)] ) then
  begin
     Key :=chr(0);
  end;
end;

end.
