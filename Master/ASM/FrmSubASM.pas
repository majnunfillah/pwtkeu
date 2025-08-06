unit FrmSubASM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons;

type
  TFrSubASM = class(TForm)
    NIK: TEdit;
    Area: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Image1: TImage;
    Label11: TLabel;
    Label12: TLabel;
    Bevel2: TBevel;
    LblNIk: TLabel;
    LblArea: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NIKEnter(Sender: TObject);
    procedure NIKExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NIKKeyPress(Sender: TObject; var Key: Char);
    procedure AreaEnter(Sender: TObject);
    procedure AreaExit(Sender: TObject);
    procedure TampilISiKaryawan;

  private
    { Private declarations }
    procedure ClearKomponen;
  public
    { Public declarations }
    IsSimpan : boolean;
  end;

var
  FrSubASM: TFrSubASM;
  mValid:Boolean;
implementation
uses  FrmGudang,MyGlobal,Myprocedure, MyModul, FrmBrows, FrmASM;
{$R *.DFM}

procedure TFrSubASM.ClearKomponen;
var i:integer;
begin
   for i:= 0 to ControlCount-1 do
   begin
      if (Controls[i] is TEdit) then
         (Controls[i] as TEdit).Clear;
   end;
end;

procedure TFrSubASM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubASM.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

procedure TFrSubASM.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then close;
end;

procedure TFrSubASM.NIKEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubASM.BitBtn1Click(Sender: TObject);
begin
  if NIK.Text='' then
  begin
    NIK.SetFocus;
    MessageDlg('Kode Gudang tidak boleh kosong', mtError, [mbOK],0);
  end else
  begin
     if IsSimpan=true then
     begin
       FrASM.SimpanData('I');
       ClearKomponen;
       ActiveControl:=NIK;
     end
     else
     begin
       FrASM.SimpanData('U');
       BitBtn2.Click;
     end;
  end
end;

procedure TFrSubASM.FormShow(Sender: TObject);
begin
  NIK.Enabled:=IsSimpan=True;
end;

procedure TFrSubASM.NIKKeyPress(Sender: TObject; var Key: Char);
begin
 if not(key in['0'..'9',#8])then
  begin
  beep;//buat suara
  key:=#0;//              
  end;
end;

procedure TFrSubASM.AreaEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubASM.AreaExit(Sender: TObject);
begin
   if mValid Then
  begin
    GetBrowse(9111,'DBarea','KodeArea','namaArea',FrSubASM,Area,LblArea);
  end;
end;


procedure TFrSubASM.NIKExit(Sender: TObject);
begin
if mValid then
 begin
   if length(NIK.Text)=0 then TampilisiKaryawan else
   begin
     if DataBersyarat('Select KeyNIk,Nama from Dbkaryawan'+
     'where Keynik like :0',[NIk.text],DM.QuCari)=true then
     begin
         LblNIk.Caption:='[ '+DM.QuCari.fieldbyname('Nama').AsString+' ]';
         Nik.Text:=IntToStr(DM.QuCari.fieldbyname('Keynik').ASInteger);

     end
     else TampilisiKaryawan;
   end;
 end;
end;

 
procedure TfrSubASM.TampilISiKaryawan;
begin
 KodeBrows:=15779;
 Application.CreateForm(TFrBrows, FrBrows);
 FrBrows.ShowModal;
 if FrBrows.ModalResult=mrOk then
 begin
     NIk.Text:=IntToStr(FrBrows.QuBrows.FieldByName('NIK').AsINteger);
     LblNik.Caption:='[ '+FrBrows.QuBrows.FieldByName('Nama').AsString+' ]';

 end
 else
    ActiveControl:=NIk;
end;
end.
