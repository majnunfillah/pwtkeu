unit FrmSubPerkCustSupp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons;

type
  TFrSubPerkCustSupp = class(TForm)
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
  FrSubPerkCustSupp: TFrSubPerkCustSupp;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, FrmPerkCustSupp, MyModul, FrmBrows;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubPerkCustSupp.ControlCount-1 do
   begin
      if (FrSubPerkCustSupp.Controls[i] is TEdit) then
         (FrSubPerkCustSupp.Controls[i] as TEdit).Clear;
   end;
   FrSubPerkCustSupp.KodeKategori.Text := FrPerkCustSupp.mkodeTipe;   
   FrSubPerkCustSupp.LNamaKategori.Caption:='[ . . . ]';
   FrSubPerkCustSupp.LNamaHutPiut.Caption:='[ . . . ]';
end;

procedure TFrSubPerkCustSupp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubPerkCustSupp.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrSubPerkCustSupp.BitBtn1Click(Sender: TObject);
begin
if KodeKategori.Text<>'' then
begin
   if IsSimpan=true then
   begin
      with FrPerkCustSupp do
      begin
         SimpanData('I');
         ClearKomponen;
      end;
      ActiveControl:=HutPiut;
   end
   else
   begin
      with FrPerkCustSupp do
      begin
         Simpandata('U');
      end;
      ModalResult:=mrOk;
   end;
 end
end;

procedure TFrSubPerkCustSupp.BitBtn2Click(Sender: TObject);
begin

   if not DataBersyarat('Select kodecustSupp from DBPERKCUSTSUPP where kodecustSupp=:0',[KodeKategori.text],Dm.Qucari) then
         begin
                MessageDlg('Detail Akun Harus Di Isi !',mtWarning,[mbok],0);
         end
    else
        Close;
end;


procedure TFrSubPerkCustSupp.KodeKategoriExit(Sender: TObject);
begin
  if mValid then
  begin
     if DataBersyarat('select * from dbCustsupp where kodecustsupp=:0',[kodekategori.text],DM.Qucari) then
    begin
      KodeKategori.Text:=DM.Qucari.fieldbyname('Kodecustsupp').AsString;
      LNamaKategori.Caption:='[ '+DM.Qucari.fieldbyname('Namacustsupp').AsString+' ]';
    end
    else
      TampilIsiData(FrSubPerkCustSupp,Kodekategori,LNamaKategori,10416,'kodecustsupp','Namacustsupp');
  end;
end;

procedure TFrSubPerkCustSupp.KodeKategoriEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrSubPerkCustSupp.TampilIsiPerkiraan;
begin
  KodeBrows:=100414;
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
      HutPiut.Text:=FrBrows.QuBrows.FieldByName('Perkiraan').AsString;
      LNamaHutPiut.Caption:='[ '+FrBrows.QuBrows.FieldByName('Keterangan').AsString+' ]';
    end;
  end
  else
    ActiveControl:=Hutpiut;
end;

procedure TFrSubPerkCustSupp.HutPiutExit(Sender: TObject);
begin
  if mValid then
  begin
    if DataBersyarat('select * from dbPerkiraan where Perkiraan=:0',[HutPiut.text],DM.Qucari) then
    begin
      HutPiut.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      LNamaHutPiut.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiPerkiraan;
  end;
end;

procedure TFrSubPerkCustSupp.HutPiutEnter(Sender: TObject);
begin
  mValid := True;
end;

end.
