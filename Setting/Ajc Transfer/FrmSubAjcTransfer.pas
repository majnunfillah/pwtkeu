unit FrmSubAjcTransfer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, PBNumEdit, Buttons, ExtCtrls;

type
  TFrSubAjcTransfer = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    NamaTabel: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    KeyField: TEdit;
    SelectTabel: TMemo;
    Label3: TLabel;
    Label8: TLabel;
    CheckBox1: TCheckBox;
    Label4: TLabel;
    PK: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SelectTabelEnter(Sender: TObject);
    procedure SelectTabelExit(Sender: TObject);
  private
    { Private declarations }
    procedure ClearInputan;
  public
    { Public declarations }
    IsSimpan: Boolean;
  end;

var
  FrSubAjcTransfer: TFrSubAjcTransfer;

implementation

uses MyModul, MyProcedure, MyGlobal, FrmAjcTransfer;

{$R *.dfm}

procedure TFrSubAjcTransfer.ClearInputan;
begin
  NamaTabel.Text:='';
  KeyField.Text:='';
  SelectTabel.Text:='';
end;

procedure TFrSubAjcTransfer.BitBtn1Click(Sender: TObject);
begin
  if IsSimpan=True then
  begin
    with DM.QuCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add('insert into TransferData (NamaTabel,KeyField,SelectTabel,IsTransfer,PrimaryKey)');
      SQL.Add('values(:0,:1,:2,0,:3)');
      Prepared;
      Parameters[0].Value:=NamaTabel.Text;
      Parameters[1].Value:=keyField.Text;
      Parameters[2].Value:=SelectTabel.Text;
      Parameters[3].Value:=PK.Text;
      ExecSQL;
    end;
    FrAjcTransfer.TampilData;
    ClearInputan;
    ActiveControl:=NamaTabel;
  end else
  begin
    with DM.QuCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add('update TransferData set NamaTabel=:0,KeyField=:1,SelectTabel=:2,IsTransfer=:3,PrimaryKey=:4 ');
      SQL.Add('where KeyUrut='+IntToStr(FrAjcTransfer.QuAjcTransferKeyUrut.AsInteger));
      Prepared;
      Parameters[0].Value:=NamaTabel.Text;
      Parameters[1].Value:=KeyField.Text;
      Parameters[2].Value:=SelectTabel.Text;
      if CheckBox1.Checked then
       Parameters[3].Value:=1
      else Parameters[3].Value:=0;
      Parameters[4].Value:=PK.Text;
      ExecSQL;
    end;
    FrAjcTransfer.TampilData;
    Close;
  end;

end;

procedure TFrSubAjcTransfer.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrSubAjcTransfer.FormShow(Sender: TObject);
begin
  ActiveControl:=NamaTabel;
end;

procedure TFrSubAjcTransfer.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if Key=VK_ESCAPE then CLOSE;
end;

procedure TFrSubAjcTransfer.SelectTabelEnter(Sender: TObject);
begin
  KeyPreview:=False;
end;

procedure TFrSubAjcTransfer.SelectTabelExit(Sender: TObject);
begin
  KeyPreview:=True;
end;

end.
