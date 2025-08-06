unit FrmSubPerkiraan;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,Buttons, PBNumEdit;

type
  TFrSubPerkiraan = class(TForm)
    Perkiraan: TEdit;
    Keterangan: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Bevel2: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Kelompok: TComboBox;
    Tipe: TComboBox;
    Valas: TEdit;
    DK: TComboBox;
    Neraca: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Simbol: TEdit;
    ISPpn: TCheckBox;
    Bevel1: TBevel;
    Label7: TLabel;
    Lokasi: TComboBox;
    Label12: TLabel;
    ArusKas: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    SubArusKas: TEdit;
    Label15: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PerkiraanEnter(Sender: TObject);
    procedure PerkiraanExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ValasEnter(Sender: TObject);
    procedure ValasExit(Sender: TObject);
    procedure TipeChange(Sender: TObject);
    procedure TipeExit(Sender: TObject);
    procedure ArusKasExit(Sender: TObject);
    procedure SubArusKasExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrSubPerkiraan: TFrSubPerkiraan;
  mValid:Boolean;
implementation
uses  FrmPerkiraan, MyGlobal, Myprocedure, FrmBrows, MyModul;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
  for i:= 0 to FrSubPerkiraan.ControlCount-1 do
  begin
    if (FrSubPerkiraan.Controls[i] is TEdit) then
       (FrSubPerkiraan.Controls[i] as TEdit).Clear;
  end;
end;

procedure TFrSubPerkiraan.FormClose(Sender: TObject;
var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubPerkiraan.BitBtn1Click(Sender: TObject);
begin
  if Perkiraan.Text<>'' then
  begin
    if FrPerkiraan.IsSimpan=true then
    begin
      with FrPerkiraan do
      begin
        UpdateDataPerkiraan('I');
        With QuPerkiraan do
        begin
          Locate('Perkiraan',Perkiraan.Text,[LoCaseInsensitive,LoPartialKey]);
        end;
        ClearKomponen;
      end;
      ActiveControl:=Perkiraan;
    end else
    begin
      with FrPerkiraan do
      begin
         UpdateDataPerkiraan('U');
      end;
      FrPerkiraan.mPosisi:=Perkiraan.Text;
      ModalResult:=mrOk;
    end;
  end
end;

procedure TFrSubPerkiraan.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrSubPerkiraan.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
     SendMessage(handle,WM_NEXTDLGCTL,0,0) else
  if key=27 then
     close;
end;

procedure TFrSubPerkiraan.PerkiraanEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubPerkiraan.PerkiraanExit(Sender: TObject);
begin
  if mValid then
  begin
    if length(Perkiraan.Text)<>0 then
    begin
      if MyFindField('dbPerkiraan','Perkiraan',Perkiraan.Text)=true then
      begin
         ShowMessage('Data Sudah Ada !');
         ActiveControl:=Perkiraan;
      end;
    end else
    begin
      ShowMessage('Data Tidak Boleh Kosong !');
      ActiveControl:=Perkiraan;
    end;
  end;
end;

procedure TFrSubPerkiraan.FormShow(Sender: TObject);
begin
  if FrSubPerkiraan.Caption = 'Tambah Data' then
  begin
    ClearKomponen;
    Kelompok.ItemIndex := 0;
    Tipe.ItemIndex     := 0;
    DK.ItemIndex       := 0;
    ActiveControl      := Perkiraan;
  end;
end;

procedure TFrSubPerkiraan.ValasEnter(Sender: TObject);
begin
  mValid := true;
end;

procedure TFrSubPerkiraan.ValasExit(Sender: TObject);
var i : Integer;
begin
  if mValid Then
  begin
    if DataBersyarat('select kodevls,namavls,kurs from dbValas where kodevls=:0',[Valas.text],DM.Qucari) then
    begin
      Valas.Text :=DM.QuCari.FieldByname('Kodevls').AsString;
      Label10.Caption := '[ '+DM.QuCari.FieldByname('Namavls').AsString+' ]';
    end
    else
      TampilIsiData(FrSubPerkiraan,Valas,Label10,1006,'kodevls','Namavls');
  end;
end;

procedure TFrSubPerkiraan.TipeChange(Sender: TObject);
begin
 if Tipe.ItemIndex=1 then
 Simbol.Enabled:=true
 else
 Simbol.Enabled:=false;
end;

procedure TFrSubPerkiraan.TipeExit(Sender: TObject);
begin
 TipeChange(Self);
end;

procedure TFrSubPerkiraan.ArusKasExit(Sender: TObject);
begin
  if mValid Then
  begin
    if DataBersyarat('select kodeak,namaak from dbaruskas where kodeak=:0',[aruskas.text],DM.Qucari) then
    begin
      aruskas.Text :=DM.QuCari.FieldByname('Kodeak').AsString;
      Label13.Caption := '[ '+DM.QuCari.FieldByname('Namaak').AsString+' ]';
    end
    else
      TampilIsiData(FrSubPerkiraan,aruskas,Label13,1007,'kodeak','Namaak');
  end;
end;

procedure TFrSubPerkiraan.SubArusKasExit(Sender: TObject);
begin
  if mValid Then
  begin
    if DataBersyarat('select kodesubak,namasubak from dbaruskasdet where kodesubak=:0',[subaruskas.text],DM.Qucari) then
    begin
      subaruskas.Text :=DM.QuCari.FieldByname('Kodesubak').AsString;
      Label15.Caption := '[ '+DM.QuCari.FieldByname('Namasubak').AsString+' ]';
    end
    else
    begin
      KodeBrows:=10071;
      Application.CreateForm(TFrBrows, FrBrows);
      FrBrows.IsiData:=Aruskas.Text;
      FrBrows.ShowModal;
      if FrBrows.ModalResult=mrOk then
      begin
        with FrBrows.QuBrows do
        begin
          Subaruskas.Text:=FieldByName('KodeSubAK').AsString;
          Label15.Caption:='[ '+FieldByName('NamaSubAK').AsString+' ]';
        end;
      end
      else
      ActiveControl:=Subaruskas;
    end;
  end;
end;

end.
