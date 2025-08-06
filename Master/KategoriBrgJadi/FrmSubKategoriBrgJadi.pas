unit FrmSubKategoriBrgJAdi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons;

type
  TFrSubKategoriBrgJadi = class(TForm)
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
    Perkiraan: TEdit;
    LNamaPerk: TLabel;
    Label4: TLabel;
    KodeGdg: TEdit;
    LNamaGdg: TLabel;
    Label5: TLabel;
    Biaya: TEdit;
    LnamaBiaya: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeBrdEnter(Sender: TObject);
    procedure KodeBrdExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PerkiraanExit(Sender: TObject);
    procedure PerkiraanEnter(Sender: TObject);
    procedure KodeGdgExit(Sender: TObject);
    procedure BiayaExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    IsSimpan : boolean;
  end;

var
  FrSubKategoriBrgJadi: TFrSubKategoriBrgJadi;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, FrmKategoriBrgJadi, MyModul, FrmBrows;
{$R *.DFM}



procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubKategoriBrgJadi.ControlCount-1 do
   begin
      if (FrSubKategoriBrgJadi.Controls[i] is TEdit) then
         (FrSubKategoriBrgJadi.Controls[i] as TEdit).Clear;
   end;
   FrSubKategoriBrgJadi.LNamaPerk.Caption := '[ . .  . ]';
   FrSubKategoriBrgJadi.LNamaGdg.Caption := '[ . .  . ]';
end;

procedure TFrSubKategoriBrgJadi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubKategoriBrgJadi.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrSubKategoriBrgJadi.BitBtn1Click(Sender: TObject);
begin
if KodeBrd.Text<>'' then
begin
   if IsSimpan=true then
   begin
      with FrKategoriBrgJadi do
      begin
         SimpanData('I');
         ClearKomponen;
      end;
      ActiveControl:=KodeBrd;
   end
   else
   begin
      with FrKategoriBrgJadi do
      begin
         Simpandata('U');
      end;
      ModalResult:=mrOk;
   end;
 end
end;

procedure TFrSubKategoriBrgJadi.BitBtn2Click(Sender: TObject);
begin
   Close;
end;


procedure TFrSubKategoriBrgJadi.KodeBrdEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubKategoriBrgJadi.KodeBrdExit(Sender: TObject);
begin
  if (IsSimpan) then
  begin
    if mValid then
    begin
      if length(KodeBrd.Text)<>0 then
      begin
        if MyFindField('dbKategori','KodeKategori',KodeBrd.Text)=true then
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

procedure TFrSubKategoriBrgJadi.FormShow(Sender: TObject);
begin
  KodeBrd.Enabled:=IsSimpan;
end;


procedure TFrSubKategoriBrgJadi.PerkiraanExit(Sender: TObject);
begin
  if mValid then
  begin
     if DataBersyarat('select * from dbPerkiraan where Perkiraan=:0',[Perkiraan.text],DM.Qucari) then
    begin
      Perkiraan.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      LNamaPerk.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubKategoriBrgJadi,Perkiraan ,LNamaPerk,1005,'Perkiraan','Keterangan');
  end;
end;

procedure TFrSubKategoriBrgJadi.PerkiraanEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrSubKategoriBrgJadi.KodeGdgExit(Sender: TObject);
begin
  if mValid then
  begin
     if DataBersyarat('select * from dbgudang where kodegdg=:0',[kodegdg.text],DM.Qucari) then
    begin
      KodeGdg.Text :=DM.QuCari.FieldByname('Kodegdg').AsString;
      LNamaGdg.Caption:='[ '+DM.QuCari.FieldByname('Nama').AsString+' ]';
    end
    else
      TampilIsiData(FrSubKategoriBrgJadi,Kodegdg,LNamagdg,1001,'Kodegdg','Namagdg');
  end;
end;

procedure TFrSubKategoriBrgJadi.BiayaExit(Sender: TObject);
begin
  if mValid then
  begin
     if DataBersyarat('select * from dbPerkiraan where Perkiraan=:0',[Biaya.text],DM.Qucari) then
    begin
      Biaya.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      LNamaBiaya.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubKategoriBrgJadi,Biaya ,LNamaBiaya,1005,'Perkiraan','Keterangan');
  end;
end;

end.
