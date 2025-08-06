unit FrmSubLapArusKas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons;

type
  TFrSubLapArusKas = class(TForm)
    KodeGrp: TEdit;
    NamaGrp: TEdit;
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
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Keterangan: TEdit;
    Tipe: TComboBox;
    Aktivitas: TEdit;
    LAktivitas: TLabel;
    SubAktivitas: TEdit;
    LSubAktivitas: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeGrpEnter(Sender: TObject);
    procedure KodeGrpExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AktivitasEnter(Sender: TObject);
    procedure AktivitasExit(Sender: TObject);
    procedure SubAktivitasExit(Sender: TObject);
    procedure AktivitasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    IsSimpan : boolean;
  end;

var
  FrSubLapArusKas: TFrSubLapArusKas;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, MyModul, FrmBrows, FrmLapArusKas;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubLapArusKas.ControlCount-1 do
   begin
      if (FrSubLapArusKas.Controls[i] is TEdit) then
         (FrSubLapArusKas.Controls[i] as TEdit).Clear;
   end;
end;

procedure TFrSubLapArusKas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubLapArusKas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrSubLapArusKas.BitBtn1Click(Sender: TObject);
begin
  if KodeGRP.Text<>'' then
  begin
     if IsSimpan=true then
     begin
          FrLapArusKas.SimpanData('I');
           ClearKomponen;
        ActiveControl:=kodeGrp;
     end
     else
     begin
        FrLapArusKas.Simpandata('U');
        ModalResult:=mrOk;
     end;
   end
end;

procedure TFrSubLapArusKas.BitBtn2Click(Sender: TObject);
begin
   Close;
end;


procedure TFrSubLapArusKas.KodeGrpEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubLapArusKas.KodeGrpExit(Sender: TObject);
begin
  If (IsSimpan) then
  begin
    if mValid then
    begin
      if length(Kodegrp.Text)<>0 then
      begin
        if MyFindField('dbArusKasKonfig','Nomor',KodeGrp.Text)=true then
        begin
          ShowMessage('Data Sudah Ada !');
          ActiveControl:=KodeGrp;
        end;
      end
      else
      begin
        ShowMessage('Data Tidak Boleh Kosong !');
         ActiveControl:=KodeGrp;
      end;
    end;
  end;
end;

procedure TFrSubLapArusKas.FormShow(Sender: TObject);
begin
  KodeGrp.Enabled:=IsSimpan;
end;

procedure TFrSubLapArusKas.AktivitasEnter(Sender: TObject);
begin
  mValid := true;
end;

procedure TFrSubLapArusKas.AktivitasExit(Sender: TObject);
begin
  if mValid Then
  begin
    if DataBersyarat('select kodeak,namaak from dbaruskas where kodeak=:0',[aktivitas.text],DM.Qucari) then
    begin
      aktivitas.Text :=DM.QuCari.FieldByname('Kodeak').AsString;
      Laktivitas.Caption := '[ '+DM.QuCari.FieldByname('Namaak').AsString+' ]';
    end
    else
      TampilIsiData(FrSubLapArusKas,aktivitas,Laktivitas,1007,'kodeak','Namaak');
    if  tipe.ItemIndex=0 then activecontrol := BitBtn1;
  end;
end;

procedure TFrSubLapArusKas.SubAktivitasExit(Sender: TObject);
begin
  if mValid Then
  begin
    if DataBersyarat('select kodesubak,namasubak from dbaruskasdet where kodesubak=:0',[subaktivitas.text],DM.Qucari) then
    begin
      subaktivitas.Text :=DM.QuCari.FieldByname('Kodesubak').AsString;
      Lsubaktivitas.Caption := '[ '+DM.QuCari.FieldByname('Namasubak').AsString+' ]';
    end
    else
    begin
      KodeBrows:=10071;
      Application.CreateForm(TFrBrows, FrBrows);
      FrBrows.IsiData:=Aktivitas.Text;
      FrBrows.ShowModal;
      if FrBrows.ModalResult=mrOk then
      begin
        with FrBrows.QuBrows do
        begin
          subaktivitas.Text:=FieldByName('KodeSubAK').AsString;
          Lsubaktivitas.Caption:='[ '+FieldByName('NamaSubAK').AsString+' ]';
        end;
      end
      else
      ActiveControl:=subaktivitas;
    end;
  end;
end;

procedure TFrSubLapArusKas.AktivitasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
  begin
      if  tipe.ItemIndex=0 then activecontrol := BitBtn1;
  end
end;

end.
