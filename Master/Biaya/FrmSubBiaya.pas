unit FrmSubBiaya;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons;

type
  TFrSubBiaya = class(TForm)
    KodeBrd: TEdit;
    NamaBrd: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    Label30: TLabel;
    Label31: TLabel;
    Bevel2: TBevel;
    Perkiraan: TEdit;
    Label3: TLabel;
    Keterangan: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeBrdEnter(Sender: TObject);
    procedure KodeBrdExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PerkiraanEnter(Sender: TObject);
    procedure PerkiraanExit(Sender: TObject);
    procedure TampilIsiPerkiraan;
  private
    { Private declarations }

  public
    { Public declarations }
    IsSimpan : boolean;
  end;

var
  FrSubBiaya: TFrSubBiaya;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, FrmBiaya, MyModul, FrmBrows;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubBiaya.ControlCount-1 do
   begin
      if (FrSubBiaya.Controls[i] is TEdit) then
         (FrSubBiaya.Controls[i] as TEdit).Clear;
   end;
end;

procedure TFrSubBiaya.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubBiaya.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrSubBiaya.BitBtn1Click(Sender: TObject);
begin
if KodeBrd.Text<>'' then
begin
   if IsSimpan=true then
   begin
      with FrBiaya do
      begin
         SimpanData('I');
         ClearKomponen;
      end;
      ActiveControl:=KodeBrd;
   end
   else
   begin
      with FrBiaya do
      begin
         Simpandata('U');
      end;
      ModalResult:=mrOk;
   end;
 end
end;

procedure TFrSubBiaya.BitBtn2Click(Sender: TObject);
begin
   Close;
end;


procedure TFrSubBiaya.KodeBrdEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubBiaya.KodeBrdExit(Sender: TObject);
begin
  if (IsSimpan) then
  begin
    if mValid then
    begin
      if length(KodeBrd.Text)<>0 then
      begin
        if MyFindField('dbBiaya','KodeBiaya',KodeBrd.Text)=true then
        begin
           ShowMessage('Data Sudah Ada !');
           ActiveControl:=KodeBrd;
        end;
      end
      else
      begin
        ShowMessage('Data Tidak Boleh Kosong !');
        ActiveControl:=KodeBrd;
      end;
    end;
  end;
end;

procedure TFrSubBiaya.FormShow(Sender: TObject);
begin
  KodeBrd.Enabled:=IsSimpan;
end;

procedure TFrSubBiaya.PerkiraanEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrSubBiaya.PerkiraanExit(Sender: TObject);
begin
if mValid then
 begin
   if length(Perkiraan.Text)=0 then frsubbiaya.TampilIsiPerkiraan else
   begin
     if DataBersyarat('Select * from DBPerkiraan where perkiraan like :0',['%'+perkiraan.text+'%'],DM.QuCari)=true then
     begin
         Keterangan.Caption:='[ '+DM.QuCari.fieldbyname('Keterangan').AsString+' ]';
         Perkiraan.Text:=DM.QuCari.fieldbyname('Perkiraan').AsString;
     end
     else TampilIsiPerkiraan;
   end;
 end;
end;


procedure TFrSubBiaya.TampilIsiPerkiraan;
begin
     KodeBrows:=100444;
     Application.CreateForm(TFrBrows, FrBrows);
     FrBrows.ShowModal;
     if FrBrows.ModalResult=mrOk then
     begin
         Perkiraan.Text:=FrBrows.QuBrows.FieldByName('Perkiraan').AsString;
         Keterangan.Caption:='[ '+FrBrows.QuBrows.FieldByName('Keterangan').AsString+' ]';
     end
     else
        ActiveControl:=Perkiraan;
end;
end.
