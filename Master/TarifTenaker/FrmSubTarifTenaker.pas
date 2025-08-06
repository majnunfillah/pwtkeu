unit FrmSubTarifTenaker;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons, PBNumEdit;

type
  TFrSubTarifTenaker = class(TForm)
    KodeMsn: TEdit;
    Ket: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    Label30: TLabel;
    Label31: TLabel;
    Bevel2: TBevel;
    Kapasitas: TPBNumEdit;
    Label19: TLabel;
    Label7: TLabel;
    HutPiut: TEdit;
    LNamaHutPiut: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeMsnEnter(Sender: TObject);
    procedure KodeMsnExit(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure KodePRsEnter(Sender: TObject);
    procedure HutPiutEnter(Sender: TObject);
    procedure HutPiutExit(Sender: TObject);
//    procedure HutPiutKeyDown(Sender: TObject; var Key: Word;
//      Shift: TShiftState);
  private
    { Private declarations }
     procedure TampilIsiPerkiraan;
  public
    { Public declarations }
    IsSimpan : boolean;
  end;

var
  FrSubTarifTenaker: TFrSubTarifTenaker;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure,  MyModul, FrmBrows, frmTarifTenaker;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubTarifTenaker.ControlCount-1 do
   begin
      if (FrSubTarifTenaker.Controls[i] is TEdit) then
         (FrSubTarifTenaker.Controls[i] as TEdit).Clear;
      if (FrSubTarifTenaker.Controls[i] is TPBNumEdit) then
         (FrSubTarifTenaker.Controls[i] as TPBNumEdit).Value:=0;
   end;
end;

procedure TFrSubTarifTenaker.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubTarifTenaker.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrSubTarifTenaker.TampilIsiPerkiraan;
begin
  KodeBrows:=15780;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=HutPiut.Text;
//  FrBrows.noKira := KodeKategori.Text;
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

procedure TFrSubTarifTenaker.BitBtn1Click(Sender: TObject);
begin
if KodeMsn.Text<>'' then
begin
   if IsSimpan=true then
   begin
      with FrTarifTenaker do
      begin
         SimpanData('I');
         ClearKomponen;
      end;
      ActiveControl:=KodeMsn;
   end
   else
   begin
      with FrTarifTenaker do
      begin
         Simpandata('U');
      end;
      ModalResult:=mrOk;
   end;
 end
end;

procedure TFrSubTarifTenaker.BitBtn2Click(Sender: TObject);
begin
   Close;
end;


procedure TFrSubTarifTenaker.KodeMsnEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubTarifTenaker.KodeMsnExit(Sender: TObject);
begin
  if (IsSimpan) then
  begin
    if mValid then
    begin
      if length(KodeMsn.Text)<>0 then
      begin
        if MyFindField('dbTarifTenaker','KodeTariftenaker',KodeMsn.Text)=true then
        begin
           ShowMessage('Data Sudah Ada !');
           ActiveControl:=KodeMsn;
        end;
      end
      else
      begin
        ShowMessage('Data Tidak Boleh Kosong !');
        ActiveControl:=KodeMsn;
      end;
    end;
  end;
end;

procedure TFrSubTarifTenaker.FormShow(Sender: TObject);
begin
  KodeMsn.Enabled:=IsSimpan;
end;

{procedure TFrSubTarifTenaker.KodePRsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if mValid Then
  begin
    GetBrowse(91113,'DbProses','KodePrs','Keterangan',FrSubTarifTenaker,KodePrs,NmProses);
  end;
end;   }

procedure TFrSubTarifTenaker.KodePRsEnter(Sender: TObject);
begin
Mvalid:=true;
end;

procedure TFrSubTarifTenaker.HutPiutEnter(Sender: TObject);
begin
mvalid:=true;
end;

procedure TFrSubTarifTenaker.HutPiutExit(Sender: TObject);
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

{procedure TFrSubTarifTenaker.HutPiutKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if mValid Then
  begin
    GetBrowse(11002,'DbTarifTenaker','NIK','Nama',FrSubTarifTenaker,Nik,NmGudang);
  end;

end;  }

end.
