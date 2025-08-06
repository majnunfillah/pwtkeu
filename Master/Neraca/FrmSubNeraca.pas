unit FrmSubNeraca;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, XPMenu, ExtCtrls, db,Buttons, PBNumEdit, Mask;

type
  TFrSubNeraca = class(TForm)
    Perkiraan: TEdit;
    Keterangan: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    Label6: TLabel;
    Bevel2: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label9: TLabel;
    Label10: TLabel;
    Tipe: TComboBox;
    neraca: TMaskEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PerkiraanEnter(Sender: TObject);
    procedure PerkiraanExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure neracaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrSubNeraca: TFrSubNeraca;
  mValid:Boolean;
implementation
uses  FrmNeraca, MyGlobal, Myprocedure, FrmBrows, MyModul;
{$R *.DFM}

function adaNeraca:boolean;
begin
   with dm.QuCari do
   begin
      close;
      sql.clear;
      sql.add('select perkiraan from dbPerkiraan where perkiraan=:0');
      prepared;
      parameters[0].value := FrSubNeraca.Perkiraan.Text;
      open;
      if isempty then
         adaNeraca := false
      else
         adaNeraca := true;
   end;
end;

procedure ClearKomponen;
var i:integer;
begin
  for i:= 0 to FrSubNeraca.ControlCount-1 do
  begin
    if (FrSubNeraca.Controls[i] is TEdit) then
       (FrSubNeraca.Controls[i] as TEdit).Clear;
  end;
end;

procedure TFrSubNeraca.FormClose(Sender: TObject;
var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubNeraca.BitBtn1Click(Sender: TObject);
begin
  if Perkiraan.Text<>'' then
  begin
     FrNeraca.UpdateDataPerkiraan('U');
     ModalResult:=mrOk;
  end
end;

procedure TFrSubNeraca.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrSubNeraca.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
     SendMessage(handle,WM_NEXTDLGCTL,0,0) else
  if key=27 then
     close;
end;

procedure TFrSubNeraca.PerkiraanEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubNeraca.PerkiraanExit(Sender: TObject);
begin
  {if mValid then
  begin
    if length(Perkiraan.Text)<>0 then
    begin
      if MyFindField('dbmNeraca','Perkiraan',Perkiraan.Text)=true then
      begin
         ShowMessage('Data Sudah Ada !');
         ActiveControl:=Perkiraan;
      end;
    end else
    begin
      ShowMessage('Data Tidak Boleh Kosong !');
      ActiveControl:=Perkiraan;
    end;
  end;}
  if mValid then
  begin
    if length(Perkiraan.Text)=0 then
    begin
      KodeBrows:=2;
      Application.CreateForm(Tfrbrows, frbrows);
      FrBrows.IsiData:=Perkiraan.Text;
      frbrows.Showmodal;
      if FrBrows.ModalResult=mrOk then
      begin
        Perkiraan.Text:=FrBrows.QuBrows.fieldbyname('Perkiraan').AsString;
      end else
        ActiveControl:=Perkiraan;
    end else
    begin
      if MyFindField('dbPerkiraan','Perkiraan',Perkiraan.Text)=true then
      begin
        Perkiraan.Text:=DM.QuCari.fieldbyname('Perkiraan').AsString;
      end else
      begin
        KodeBrows:=2;
        Application.CreateForm(Tfrbrows, frbrows);
        FrBrows.IsiData:=Perkiraan.Text;
        frbrows.Showmodal;
        if FrBrows.ModalResult=mrOk then
        begin
          Perkiraan.Text:=FrBrows.QuBrows.fieldbyname('Perkiraan').AsString;
        end else
          ActiveControl:=Perkiraan;
      end;
    end;
  end;
end;

procedure TFrSubNeraca.FormShow(Sender: TObject);
begin
  if FrSubNeraca.Caption = 'Tambah Data' then
  begin
    ClearKomponen;
    ActiveControl := Perkiraan;
  end;
end;

procedure TFrSubNeraca.neracaExit(Sender: TObject);
begin
   if (neraca.Text<>'  -  -  ') and
   (copy(neraca.Text,1,2)<>'A1') and (copy(neraca.Text,1,2)<>'A2') and (copy(neraca.Text,1,2)<>'A3') and
   (copy(neraca.Text,1,2)<>'P1') and (copy(neraca.Text,1,2)<>'P2') and (copy(neraca.Text,1,2)<>'P3') then
      neraca.setfocus;
end;

end.
