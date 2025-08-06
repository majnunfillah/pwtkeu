unit FrmSubKategori2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons;

type
  TFrSubKategori2 = class(TForm)
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
  private
    { Private declarations }
    procedure TampilIsiPerkiraan;
  public
    { Public declarations }
    IsSimpan : boolean;
  end;

var
  FrSubKategori2: TFrSubKategori2;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, FrmKategori2, MyModul, FrmBrows;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubKategori2.ControlCount-1 do
   begin
      if (FrSubKategori2.Controls[i] is TEdit) then
         (FrSubKategori2.Controls[i] as TEdit).Clear;
   end;
   FrSubKategori2.LNamaKategori.Caption:='[ . . . ]';
   FrSubKategori2.LNamaPerk.Caption:='[ . . . ]';
end;

procedure TFrSubKategori2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubKategori2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrSubKategori2.BitBtn1Click(Sender: TObject);
begin
if KodeKategori.Text<>'' then
begin
   if IsSimpan=true then
   begin
      with FrKategori2 do
      begin
         SimpanData('I');
         ClearKomponen;
      end;
      ActiveControl:=KodeKategori;
   end
   else
   begin
      with FrKategori2 do
      begin
         Simpandata('U');
      end;
      ModalResult:=mrOk;
   end;
 end
end;

procedure TFrSubKategori2.BitBtn2Click(Sender: TObject);
begin
   Close;
end;


procedure TFrSubKategori2.KodeSubKategoriEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubKategori2.KodeSubKategoriExit(Sender: TObject);
begin
  if (IsSimpan) then
  begin
    if mValid then
    begin
      if length(KodeSubKategori.Text)<>0 then
      begin
        if MyFindField('dbSubkategori','KodeSubKategori',KodeSubKategori.Text)=true then
        begin
           ShowMessage('Data Sudah Ada !');
           ActiveControl:=KodeSubKategori;
        end;
      end
      else
      begin
        ShowMessage('Data Tidak Boleh Kosong !');
        ActiveControl:=KodeSubKategori;
      end;
    end;
  end;
end;

procedure TFrSubKategori2.FormShow(Sender: TObject);
begin
  //KodeKategori.Enabled:=IsSimpan;
end;

procedure TFrSubKategori2.TampilIsiPerkiraan;
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


procedure TFrSubKategori2.KodeKategoriExit(Sender: TObject);
begin
  if mValid then
  begin
     if DataBersyarat('select * from dbkategori where kodekategori=:0',[kodekategori.text],DM.Qucari) then
    begin
      KodeKategori.Text:=DM.Qucari.fieldbyname('KodeKategori').AsString;
      LNamaKategori.Caption:='[ '+DM.Qucari.fieldbyname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubKategori2,Kodekategori,LNamaKategori,1008,'kodekategori','Keterangan');
  end;
end;

procedure TFrSubKategori2.KodeKategoriEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrSubKategori2.PerkiraanEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrSubKategori2.PerkiraanExit(Sender: TObject);
begin
  if mValid then
  begin
     if DataBersyarat('select * from dbPerkiraan where Perkiraan=:0',[Perkiraan.text],DM.Qucari) then
    begin
      Perkiraan.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      LNamaPerk.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubKategori2,Perkiraan ,LNamaPerk,1005,'Perkiraan','Keterangan');
  end;
end;

end.
