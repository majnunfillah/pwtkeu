unit FrmSubPostBiaya;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons;

type
  TFrSubPostBiaya = class(TForm)
    KodeBag: TEdit;
    KodeJnsPakai: TEdit;
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
    LNamaJnsPakai: TLabel;
    LNamaBag: TLabel;
    Label4: TLabel;
    BiayaJasa: TEdit;
    LNamaBiayaJasa: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeBagEnter(Sender: TObject);
    procedure KodeBagExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PerkiraanExit(Sender: TObject);
    procedure PerkiraanEnter(Sender: TObject);
    procedure KodeJnsPakaiEnter(Sender: TObject);
    procedure KodeJnsPakaiExit(Sender: TObject);
    procedure BiayaJasaEnter(Sender: TObject);
    procedure BiayaJasaExit(Sender: TObject);
  private
    { Private declarations }
    procedure TampilIsiPerkiraan;
    procedure TampilIsiBagian;
    procedure TampilIsiJenisPakai;
  public
    { Public declarations }
    IsSimpan : boolean;
  end;

var
  FrSubPostBiaya: TFrSubPostBiaya;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, FrmPostBiaya, MyModul, FrmBrows;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubPostBiaya.ControlCount-1 do
   begin
      if (FrSubPostBiaya.Controls[i] is TEdit) then
         (FrSubPostBiaya.Controls[i] as TEdit).Clear;
   end;

   FrSubPostBiaya.LNamaPerk.Caption := '[ . .  . ]';
   FrSubPostBiaya.LNamaJnsPakai.Caption := '[ . .  . ]';
   FrSubPostBiaya.LNamaBag.Caption := '[ . .  . ]';
end;

procedure TFrSubPostBiaya.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubPostBiaya.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrSubPostBiaya.TampilIsiPerkiraan;
begin
  KodeBrows:=1;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=Perkiraan.Text;
  frbrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    Perkiraan.Text:=FrBrows.QuBrows.fieldbyname('Perkiraan').AsString;
    LNamaPerk.Caption:='[ '+FrBrows.QuBrows.fieldbyname('Keterangan').AsString+' ]';
  end
  else
     ActiveControl:=Perkiraan;
end;

procedure TFrSubPostBiaya.TampilIsiBagian;
begin
  KodeBrows:=1002;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeBag.Text;
  frbrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    KodeBag.Text:=FrBrows.QuBrows.fieldbyname('KodeBag').AsString;
    LNamaBag.Caption:='[ '+FrBrows.QuBrows.fieldbyname('NamaBag').AsString+' ]';
  end
  else
     ActiveControl:=KodeBag;
end;

procedure TFrSubPostBiaya.TampilIsiJenisPakai;
begin
  KodeBrows:=3;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeJnsPakai.Text;
  frbrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    KodeJnsPakai.Text:=FrBrows.QuBrows.fieldbyname('KodejnsPakai').AsString;
    LNamaJnsPakai.Caption:='[ '+FrBrows.QuBrows.fieldbyname('Keterangan').AsString+' ]';
  end
  else
     ActiveControl:=KodeJnsPakai;
end;

procedure TFrSubPostBiaya.BitBtn1Click(Sender: TObject);
begin
  if (KodeBag.Text<>'')and(KodeJnsPakai.Text<>'')  then
  begin
     if IsSimpan=true then
     begin
        with FrPostBiaya do
        begin
           SimpanData('I');
           ClearKomponen;
        end;
        ActiveControl:=KodeBag;
     end
     else
     begin
        with FrPostBiaya do
        begin
           Simpandata('U');
        end;
        ModalResult:=mrOk;
     end;
  end
  else
  begin
    ShowMessage('Data belum lengkap !');
    ActiveControl:=KodeBag;
  end;
end;

procedure TFrSubPostBiaya.BitBtn2Click(Sender: TObject);
begin
   Close;
end;


procedure TFrSubPostBiaya.KodeBagEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubPostBiaya.KodeBagExit(Sender: TObject);
begin
  if mValid then
  begin
    if Length(KodeBag.Text)=0 then
       TampilIsiData(FrSubPostBiaya,Kodebag ,Lnamabag,1002,'kodebag','Namabag')
    else if DataBersyarat('select * from dbbagian where kodebag=:0',[kodebag.text],DM.Qucari) then
    begin
      KodeBag.Text :=DM.QuCari.FieldByname('Kodebag').AsString;
      LNamaBag.Caption:='[ '+DM.QuCari.FieldByname('Namabag').AsString+' ]';
    end
    else
      TampilIsiData(FrSubPostBiaya,Kodebag ,Lnamabag,1002,'kodebag','Namabag');
  end;
end;

procedure TFrSubPostBiaya.FormShow(Sender: TObject);
begin
//  KodeB.Enabled:=IsSimpan;
end;

procedure TFrSubPostBiaya.PerkiraanExit(Sender: TObject);
begin
  if mValid then
  begin
     if DataBersyarat('select * from dbPerkiraan where Perkiraan=:0',[Perkiraan.text],DM.Qucari) then
    begin
      Perkiraan.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      LNamaPerk.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubPostBiaya,Perkiraan ,LNamaPerk,1005,'Perkiraan','Keterangan');
  end;
end;

procedure TFrSubPostBiaya.PerkiraanEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrSubPostBiaya.KodeJnsPakaiEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrSubPostBiaya.KodeJnsPakaiExit(Sender: TObject);
begin
  if mValid then
  begin
     if DataBersyarat('select * from dbMesin where KodeMesin=:0',[KodejnsPakai.text],DM.Qucari) then
    begin
      KodeJnsPakai.Text :=DM.QuCari.FieldByname('KodeMesin').AsString;
      LNamaJnsPakai.Caption:='[ '+DM.QuCari.FieldByname('NamaMesin').AsString+' ]';
    end
    else
      TampilIsiData(FrSubPostBiaya,kodejnsPakai,LNamaJnsPakai,1016,'kodeMesin','NamaMesin');
  end;

end;

procedure TFrSubPostBiaya.BiayaJasaEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrSubPostBiaya.BiayaJasaExit(Sender: TObject);
begin
  if mValid then
  begin
     if DataBersyarat('select * from dbPerkiraan where Perkiraan=:0',[BiayaJasa.text],DM.Qucari) then
    begin
      BiayaJasa.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      LNamaBiayaJasa.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubPostBiaya,BiayaJasa ,LNamaBiayaJasa,1005,'Perkiraan','Keterangan');
  end;
end;

end.
