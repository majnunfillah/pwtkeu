unit FrmSubPemakai;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,Buttons;

type
  TFrSubPemakai = class(TForm)
    Userid: TEdit;
    Password1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    Label3: TLabel;
    Password2: TEdit;
    Label5: TLabel;
    Level: TComboBox;
    Status: TComboBox;
    Label8: TLabel;
    BitBtn3: TBitBtn;
    Label4: TLabel;
    KodeBag: TEdit;
    LNamaBag: TLabel;
    Label6: TLabel;
    kodejab: TEdit;
    lnamaJab: TLabel;
    Label7: TLabel;
    Fullname: TEdit;
    Label9: TLabel;
    KodeKasir: TEdit;
    Label10: TLabel;
    Kodegdg: TEdit;
    LNamaCounter: TLabel;
    NIK: TEdit;
    Label11: TLabel;
    LblNIk: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UseridEnter(Sender: TObject);
    procedure UseridExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure KodeBagEnter(Sender: TObject);
    procedure KodeBagExit(Sender: TObject);
    procedure kodejabEnter(Sender: TObject);
    procedure kodejabExit(Sender: TObject);
    procedure KodeKasirExit(Sender: TObject);
    procedure KodegdgExit(Sender: TObject);
    procedure NIKEnter(Sender: TObject);
    procedure NIKExit(Sender: TObject);
    procedure TampilISiKaryawan;
  private
    { Private declarations }

  public
    { Public declarations }
    IsSimpan : boolean;
    Keynik : integer;

  end;

var
  FrSubPemakai: TFrSubPemakai;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, FrmPemakai, MyModul,FrmBrows;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubPemakai.ControlCount-1 do
   begin
      if (FrSubPemakai.Controls[i] is TEdit) then
         (FrSubPemakai.Controls[i] as TEdit).Clear;
   end;
   FrSubPemakai.LNamaBag.Caption:='[ . . . ]';
   FrSubPemakai.LNamaJab.Caption:='[ . . . ]';
end;

procedure TFrSubPemakai.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFrSubPemakai.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0)
else if key=27 then close;
end;

procedure TFrSubPemakai.UseridEnter(Sender: TObject);
begin
mValid:=true;
end;

procedure TFrSubPemakai.UseridExit(Sender: TObject);
begin
if mValid then
begin
   if length(Userid.Text)<>0 then
   begin
    if (Userid.Text<>'SA') then
    begin
      if (MyFindField('dbflpass','userid',Userid.Text)=true) and(IsSimpan) then
      begin
         ShowMessage('Data Sudah Ada !');
         ActiveControl:=Userid;
      end;
    end else
    begin
         ShowMessage('Tidak di ijinkan !');
         ActiveControl:=Userid;
    end;
   end
   else
   begin
         ShowMessage('Data Tidak Boleh Kosong !');
         ActiveControl:=Userid;
   end;

end;
end;

procedure TFrSubPemakai.FormShow(Sender: TObject);
begin
  if IsSimpan=true then
  begin
    Status.ItemIndex:=0;
    Level.ItemIndex:=0;
    UserID.ReadOnly:=False;
    ActiveControl:=Nik;
  end else
  begin
    NIk.Enabled:=False;
    userid.ReadOnly:=true;
    ActiveControl:=Password1;
  end;
end;

procedure TFrSubPemakai.BitBtn3Click(Sender: TObject);
begin
if (Userid.Text<>'') and (Password1.Text=Password2.Text) then
begin
   if IsSimpan=true then
   begin
      with FrPemakai do
      begin
         SimpanData('I');
         ClearKomponen;
      end;
      ActiveControl:=NIK;
   end
   else
   begin
      with FrPemakai do
      begin
         SimpanData('U');
      end;
      //FrPemakai.mPosisi:=Userid.Text;
      ModalResult:=mrOk;
   end;
end else
begin
   ShowMessage('User tidak boleh kosong dan password 1 harus sams dengan password 2 !');
end;

end;

procedure TFrSubPemakai.KodeBagEnter(Sender: TObject);
begin
  mvalid:=true;
end;

procedure TFrSubPemakai.KodeBagExit(Sender: TObject);
begin
  if mValid then
  begin
    if Length(KodeBag.Text)=0 then
       TampilIsiData(FrSubPemakai,Kodebag ,Lnamabag,10021,'kddep','Nmdep')
    else if DataBersyarat('select * from dbdepart where kddep=:0',[kodebag.text],DM.Qucari) then
    begin
      KodeBag.Text :=DM.QuCari.FieldByname('Kddep').AsString;
      LNamaBag.Caption:='[ '+DM.QuCari.FieldByname('Nmdep').AsString+' ]';
    end
    else
      TampilIsiData(FrSubPemakai,Kodebag ,Lnamabag,10021,'kddep','Nmdep');
  end;
end;

procedure TFrSubPemakai.kodejabEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrSubPemakai.kodejabExit(Sender: TObject);
begin
  if mValid then
  begin
    if Length(kodejab.Text)=0 then
       TampilIsiData(FrSubPemakai,Kodejab,Lnamajab,1003,'kodejab','Namajab')
    else if DataBersyarat('select * from dbjabatan where kodejab=:0',[kodejab.text],DM.Qucari) then
    begin
      kodejab.Text :=DM.QuCari.FieldByname('Kodejab').AsString;
      lnamaJab.Caption:='[ '+DM.QuCari.FieldByname('Namajab').AsString+' ]';
    end
    else
      TampilIsiData(FrSubPemakai,Kodejab,Lnamajab,1003,'kodejab','Namajab')
  end;
end;

procedure TFrSubPemakai.KodeKasirExit(Sender: TObject);
begin
  if (Length(KodeKasir.Text) < 3) and (Length(KodeKasir.Text) > 0) then
    begin
      ShowMessage('Kode Kasir harus 3 karakter !');
      ActiveControl := KodeKasir;
    end;
end;

procedure TFrSubPemakai.KodegdgExit(Sender: TObject);
begin
 if mValid then
  begin
    if Length(Kodegdg.Text)=0 then
       TampilIsiData(FrSubPemakai,Kodegdg,LNamaCounter,11002,'KodeGdg','Nama')
    else if DataBersyarat('select * from dbGudang where Kodegdg=:0',[Kodegdg.text],DM.Qucari) then
    begin
      Kodegdg.Text :=DM.QuCari.FieldByname('KodeGdg').AsString;
      LNamaCounter.Caption:='[ '+DM.QuCari.FieldByname('Nama').AsString+' ]';
    end
    else
       TampilIsiData(FrSubPemakai,Kodegdg,LNamaCounter,11002,'KodeGdg','Nama');
  end;
end;

procedure TFrSubPemakai.NIKEnter(Sender: TObject);
begin
mvalid:=True;
end;

procedure TFrSubPemakai.NIKExit(Sender: TObject);
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
End;


procedure TfrSubPemakai.TampilISiKaryawan;
begin
 KodeBrows:=15779;
 Application.CreateForm(TFrBrows, FrBrows);
 FrBrows.ShowModal;
 if FrBrows.ModalResult=mrOk then
 begin
     //NIk.Text:=IntToStr(FrBrows.QuBrows.FieldByName('NIK').as);
     NIk.Text:=FrBrows.QuBrows.FieldByName('NIK').AsString;
     LblNik.Caption:='[ '+FrBrows.QuBrows.FieldByName('Nama').AsString+' ]';
     Keynik:= FrBrows.QuBrows.FieldByName('Keynik').AsInteger;
 end
 else
    ActiveControl:=NIk;
end;
end.
