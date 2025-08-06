unit FrmSubJenisBrgJadi_Sub;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons;

type
  TFrSubJenisBrgJadi_Sub = class(TForm)
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
  FrSubJenisBrgJadi_Sub: TFrSubJenisBrgJadi_Sub;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, FrmSubJenisbrgJadi_, MyModul, FrmBrows;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubJenisBrgJadi_Sub.ControlCount-1 do
   begin
      if (FrSubJenisBrgJadi_Sub.Controls[i] is TEdit) then
         (FrSubJenisBrgJadi_Sub.Controls[i] as TEdit).Clear;

   end;
   FrSubJenisBrgJadi_Sub.LNamaJns.Caption:='[ . . . ]';
end;

procedure TFrSubJenisBrgJadi_Sub.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubJenisBrgJadi_Sub.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrSubJenisBrgJadi_Sub.BitBtn1Click(Sender: TObject);
begin
if KodeSubjns.Text<>'' then
begin
   if IsSimpan=true then
   begin
      with FrSubJenisBrgJadi_ do
      begin
         SimpanData('I');
         ClearKomponen;
      end;
      ActiveControl:=KodeSUBJNS;
   end
   else
   begin
      with FrSubJenisBrgJadi_ do
      begin
         Simpandata('U');
      end;
      ModalResult:=mrOk;
   end;
end
end;

procedure TFrSubJenisBrgJadi_Sub.BitBtn2Click(Sender: TObject);
begin
   Close;
end;


procedure TFrSubJenisBrgJadi_Sub.KodeBrdEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubJenisBrgJadi_Sub.TampilisiJenis;
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

procedure TFrSubJenisBrgJadi_Sub.KodeBrdExit(Sender: TObject);
begin
  if mValid then
  begin
     if DataBersyarat('select * from dbJenis where kodejnsBrg=:0',[kodebrd.text],DM.Qucari) then
    begin
      KodeBrd.Text :=DM.QuCari.FieldByname('kodejnsbrg').AsString;
      LNamaJns.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubJenisBrgJadi_Sub,kodebrd ,LNamajns,1009,'kodejnsbrg','Keterangan');
  end;
end;

procedure TFrSubJenisBrgJadi_Sub.FormShow(Sender: TObject);
begin
  KodeSubJns.Enabled:=IsSimpan;
end;

procedure TFrSubJenisBrgJadi_Sub.KodeSubJnsExit(Sender: TObject);
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
