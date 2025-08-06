unit FrmSubTenaker;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons;

type
  TFrSubTenaker = class(TForm)
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    Label30: TLabel;
    Label31: TLabel;
    Bevel2: TBevel;
    Label3: TLabel;
    KodeKategori: TEdit;
    LNamaKategori: TLabel;
    Label7: TLabel;
    HutPiut: TEdit;
    LNamaHutPiut: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeKategoriExit(Sender: TObject);
    procedure KodeKategoriEnter(Sender: TObject);
    procedure HutPiutExit(Sender: TObject);
    procedure HutPiutEnter(Sender: TObject);
  private
    { Private declarations }
    procedure TampilIsiPerkiraan;
  public
    { Public declarations }
    IsSimpan : boolean;
  end;

var
  FrSubTenaker: TFrSubTenaker;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, FrmTenaker, MyModul, FrmBrows;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubTenaker.ControlCount-1 do
   begin
      if (FrSubTenaker.Controls[i] is TEdit) then
         (FrSubTenaker.Controls[i] as TEdit).Clear;
   end;
   FrSubTenaker.KodeKategori.Text := FrTenaker.mkodeTipe;   
   FrSubTenaker.LNamaKategori.Caption:='[ . . . ]';
   FrSubTenaker.LNamaHutPiut.Caption:='[ . . . ]';
end;

procedure TFrSubTenaker.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubTenaker.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrSubTenaker.BitBtn1Click(Sender: TObject);
begin
if KodeKategori.Text<>'' then
begin
   if IsSimpan=true then
   begin
      with FrTenaker do
      begin
         SimpanData('I');
         ClearKomponen;
      end;
      ActiveControl:=HutPiut;
   end
   else
   begin
      with FrTenaker do
      begin
         Simpandata('U');
      end;
      ModalResult:=mrOk;
   end;
 end
end;

procedure TFrSubTenaker.BitBtn2Click(Sender: TObject);
begin

   if not DataBersyarat('Select kodetariftenaker from DBtenaker where ' +
     'kodetariftenaker=:0',[KodeKategori.text],Dm.Qucari) then
         begin
                MessageDlg('Detail Akun Harus Di Isi !',mtWarning,[mbok],0);
         end
    else
        Close;
end;


procedure TFrSubTenaker.KodeKategoriExit(Sender: TObject);
begin
  if mValid then
  begin
     if DataBersyarat('select * from dbtariftenaker where kodetariftenaker=:0',[kodekategori.text],DM.Qucari) then
    begin
      KodeKategori.Text:=DM.Qucari.fieldbyname('Kodetariftenaker').AsString;
      LNamaKategori.Caption:='[ '+DM.Qucari.fieldbyname('Ket').AsString+' ]';
    end
    else
      TampilIsiData(FrSubTenaker,Kodekategori,LNamaKategori,10416,'kodetariftenaker','Nama');
  end;
end;

procedure TFrSubTenaker.KodeKategoriEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrSubTenaker.TampilIsiPerkiraan;
begin
  KodeBrows:=15780;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=HutPiut.Text;
  FrBrows.noKira := KodeKategori.Text;
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk)  then
  begin
    if FrBrows.QuBrows.IsEmpty then
       ActiveControl := HutPiut
    else
    begin
      HutPiut.Text:=FrBrows.QuBrows.FieldByName('Nik').AsString;
      LNamaHutPiut.Caption:='[ '+FrBrows.QuBrows.FieldByName('Nama').AsString+' ]';
    end;
  end
  else
    ActiveControl:=Hutpiut;
end;

procedure TFrSubTenaker.HutPiutExit(Sender: TObject);
begin
  if mValid then
  begin
    if DataBersyarat('select * from dbkaryawan where Nik=:0',[HutPiut.text],DM.Qucari) then
    begin
      HutPiut.Text :=DM.QuCari.FieldByname('Nik').AsString;
      LNamaHutPiut.Caption:='[ '+DM.QuCari.FieldByname('NAma').AsString+' ]';
    end
    else
      TampilIsiPerkiraan;
  end;
end;

procedure TFrSubTenaker.HutPiutEnter(Sender: TObject);
begin
  mValid := True;
end;

end.
