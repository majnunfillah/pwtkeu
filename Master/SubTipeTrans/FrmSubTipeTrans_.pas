unit FrmSubTipeTrans_;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons;

type
  TFrSubTipeTrans_ = class(TForm)
    KodeSubKategori: TEdit;
    NamaSubKategori: TEdit;
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
    KodeKategori: TEdit;
    LNamaKategori: TLabel;
    Label4: TLabel;
    Perkiraan: TEdit;
    LNamaPerk: TLabel;
    Label5: TLabel;
    PPn: TEdit;
    LNamaPpn: TLabel;
    Label7: TLabel;
    HutPiut: TEdit;
    LNamaHutPiut: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeSubKategoriEnter(Sender: TObject);
    procedure KodeSubKategoriExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure KodeKategoriExit(Sender: TObject);
    procedure KodeKategoriEnter(Sender: TObject);
    procedure PerkiraanEnter(Sender: TObject);
    procedure PerkiraanExit(Sender: TObject);
    procedure PPnExit(Sender: TObject);
    procedure HutPiutExit(Sender: TObject);
  private
    { Private declarations }
    procedure TampilIsiPerkiraan;
  public
    { Public declarations }
    IsSimpan : boolean;
  end;

var
  FrSubTipeTrans_: TFrSubTipeTrans_;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, FrmTipeTrans_, MyModul, FrmBrows;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubTipeTrans_.ControlCount-1 do
   begin
      if (FrSubTipeTrans_.Controls[i] is TEdit) then
         (FrSubTipeTrans_.Controls[i] as TEdit).Clear;
   end;
   FrSubTipeTrans_.KodeKategori.Text := FrTipeTrans_.mkodeTipe;   
   FrSubTipeTrans_.LNamaKategori.Caption:='[ . . . ]';
   FrSubTipeTrans_.LNamaPerk.Caption:='[ . . . ]';
end;

procedure TFrSubTipeTrans_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubTipeTrans_.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrSubTipeTrans_.BitBtn1Click(Sender: TObject);
begin
if KodeKategori.Text<>'' then
begin
   if IsSimpan=true then
   begin
      with FrTipeTrans_ do
      begin
         SimpanData('I');
         ClearKomponen;
      end;
      ActiveControl:=KodeSubKategori;
   end
   else
   begin
      with FrTipeTrans_ do
      begin
         Simpandata('U');
      end;
      ModalResult:=mrOk;
   end;
 end
end;

procedure TFrSubTipeTrans_.BitBtn2Click(Sender: TObject);
begin
   Close;
end;


procedure TFrSubTipeTrans_.KodeSubKategoriEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubTipeTrans_.KodeSubKategoriExit(Sender: TObject);
begin
  if (IsSimpan) then
  begin
    if mValid then
    begin
      if length(KodeSubKategori.Text)<>0 then
      begin
      end
      else
      begin
        ShowMessage('Data Tidak Boleh Kosong !');
        ActiveControl:=KodeSubKategori;
      end;
    end;
  end;
end;

procedure TFrSubTipeTrans_.FormShow(Sender: TObject);
begin
  //KodeKategori.Enabled:=IsSimpan;
end;

procedure TFrSubTipeTrans_.TampilIsiPerkiraan;
begin
     KodeBrows:=5;
     Application.CreateForm(TFrBrows, FrBrows);
     FrBrows.IsiData:=KodeKategori.Text;
     frbrows.ShowModal;
     if FrBrows.ModalResult=mrOk then
     begin
         KodeKategori.Text:=FrBrows.QuBrows.fieldbyname('KodeKategori').AsString;
         LNamaKategori.Caption:='[ '+FrBrows.QuBrows.fieldbyname('Keterangan').AsString+' ]';
     end
     else
        ActiveControl:=KodeKategori;
end;


procedure TFrSubTipeTrans_.KodeKategoriExit(Sender: TObject);
begin
  if mValid then
  begin
     if DataBersyarat('select * from dbTipeTrans where kodeTipe=:0',[kodekategori.text],DM.Qucari) then
    begin
      KodeKategori.Text:=DM.Qucari.fieldbyname('KodeTipe').AsString;
      LNamaKategori.Caption:='[ '+DM.Qucari.fieldbyname('Nama').AsString+' ]';
    end
    else
      TampilIsiData(FrSubTipeTrans_,Kodekategori,LNamaKategori,1008,'kodekategori','Keterangan');
  end;
end;

procedure TFrSubTipeTrans_.KodeKategoriEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrSubTipeTrans_.PerkiraanEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrSubTipeTrans_.PerkiraanExit(Sender: TObject);
begin
  if mValid then
  begin
    if DataBersyarat('select * from dbPerkiraan where Perkiraan=:0',[Perkiraan.text],DM.Qucari) then
    begin
      Perkiraan.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      LNamaPerk.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubTipeTrans_,Perkiraan ,LNamaPerk,1005,'Perkiraan','Keterangan');
  end;
end;

procedure TFrSubTipeTrans_.PPnExit(Sender: TObject);
begin
  if mValid then
  begin
    if DataBersyarat('select * from dbPerkiraan where Perkiraan=:0',[PPn.text],DM.Qucari) then
    begin
      PPn.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      LNamaPPn.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubTipeTrans_,Ppn ,LNamaPpn,1005,'Perkiraan','Keterangan');
  end;
end;

procedure TFrSubTipeTrans_.HutPiutExit(Sender: TObject);
begin
  if mValid then
  begin
    if DataBersyarat('select * from dbPerkiraan where Perkiraan=:0',[HutPiut.text],DM.Qucari) then
    begin
      HutPiut.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      LNamaHutPiut.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubTipeTrans_,HutPiut ,LNamaHutPiut,1005,'Perkiraan','Keterangan');
  end;
end;

end.
