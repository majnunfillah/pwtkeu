unit FrmSubJenisBrg_Sub;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons;

type
  TFrSubJenisBrg_Sub = class(TForm)
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
    Label3: TLabel;
    KodeSubJns: TEdit;
    LNamaJns: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeBrdEnter(Sender: TObject);
    procedure KodeBrdExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure KodeSubJnsExit(Sender: TObject);
  private
    { Private declarations }
    procedure TampilisiJenis;
  public
    { Public declarations }
    IsSimpan : boolean;
  end;

var
  FrSubJenisBrg_Sub: TFrSubJenisBrg_Sub;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, FrmSubJenisbrg_, MyModul, FrmBrows;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubJenisBrg_Sub.ControlCount-1 do
   begin
      if (FrSubJenisBrg_Sub.Controls[i] is TEdit) then
         (FrSubJenisBrg_Sub.Controls[i] as TEdit).Clear;

   end;
   FrSubJenisBrg_Sub.LNamaJns.Caption:='[ . . . ]';
end;

procedure TFrSubJenisBrg_Sub.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubJenisBrg_Sub.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrSubJenisBrg_Sub.BitBtn1Click(Sender: TObject);
begin
if KodeBrd.Text<>'' then
begin
   if IsSimpan=true then
   begin
      with FrSubJenisBrg_ do
      begin
         SimpanData('I');
         ClearKomponen;
      end;
      ActiveControl:=KodeBrd;
   end
   else
   begin
      with FrSubJenisBrg_ do
      begin
         Simpandata('U');
      end;
      ModalResult:=mrOk;
   end;
end
end;

procedure TFrSubJenisBrg_Sub.BitBtn2Click(Sender: TObject);
begin
   Close;
end;


procedure TFrSubJenisBrg_Sub.KodeBrdEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubJenisBrg_Sub.TampilisiJenis;
begin
     KodeBrows:=8;
     Application.CreateForm(TFrBrows, FrBrows);
     frbrows.ShowModal;
     if FrBrows.ModalResult=mrOk then
     begin
         KodeBrd.Text:=FrBrows.QuBrows.fieldbyname('Kode').AsString;
         LNamaJns.Caption:='[ '+FrBrows.QuBrows.fieldbyname('Nama').AsString+' ]';
     end
     else
        ActiveControl:=KodeBrd;
end;

procedure TFrSubJenisBrg_Sub.KodeBrdExit(Sender: TObject);
begin
  if mValid then
  begin
     if DataBersyarat('select * from dbJenis where kodejnsBrg=:0',[kodebrd.text],DM.Qucari) then
    begin
      KodeBrd.Text :=DM.QuCari.FieldByname('kodejnsbrg').AsString;
      LNamaJns.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubJenisBrg_Sub,kodebrd ,LNamajns,1009,'kodejnsbrg','Keterangan');
  end;
end;

procedure TFrSubJenisBrg_Sub.FormShow(Sender: TObject);
begin
  KodeSubJns.Enabled:=IsSimpan;
end;

procedure TFrSubJenisBrg_Sub.KodeSubJnsExit(Sender: TObject);
begin
 if (IsSimpan) then
  begin
    if mValid then
    begin
      if length(KodeSubJns.Text)<>0 then
      begin
        if MyFindField('dbSubJenis','KodeSubJnsBrg',KodeSubJns.Text)=true then
        begin
           ShowMessage('Data Sudah Ada !');
           ActiveControl:=KodeSubJns;
        end;
      end
      else
      begin
        ShowMessage('Data Tidak Boleh Kosong !');
        ActiveControl:=KodeSubJns;
      end;
    end;
  end;
end;

end.
