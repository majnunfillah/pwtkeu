unit FrmSubKategori;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons;

type
  TFrSubKategori = class(TForm)
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
    Label4: TLabel;
    KodeGdg: TEdit;
    LNamaGdg: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeBrdEnter(Sender: TObject);
    procedure KodeBrdExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure KodeGdgExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    IsSimpan : boolean;
  end;

var
  FrSubKategori: TFrSubKategori;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, FrmKategori, MyModul, FrmBrows;
{$R *.DFM}



procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubKategori.ControlCount-1 do
   begin
      if (FrSubKategori.Controls[i] is TEdit) then
         (FrSubKategori.Controls[i] as TEdit).Clear;
   end;
   FrSubKategori.LNamaGdg.Caption := '[ . .  . ]';
end;

procedure TFrSubKategori.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubKategori.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrSubKategori.BitBtn1Click(Sender: TObject);
begin
  if KodeBrd.Text<>'' then
  begin
    if ((kodegdg.Text<>'-'))   then
    begin
     if IsSimpan=true then
     begin
        with FrKategori do
        begin
           SimpanData('I');
           ClearKomponen;
        end;
        ActiveControl:=KodeBrd;
     end
     else
     begin
        with FrKategori do
        begin
           Simpandata('U');
        end;
        ModalResult:=mrOk;
     end;
    end
    else
    begin
      MsgDataTidakBolehKosong('Gudang dan Persediaan');
    end;
  end
end;

procedure TFrSubKategori.BitBtn2Click(Sender: TObject);
begin
   Close;
end;


procedure TFrSubKategori.KodeBrdEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubKategori.KodeBrdExit(Sender: TObject);
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

procedure TFrSubKategori.FormShow(Sender: TObject);
begin
  KodeBrd.Enabled:=IsSimpan;
end;


procedure TFrSubKategori.KodeGdgExit(Sender: TObject);
begin
  if mValid then
  begin
     if DataBersyarat('select * from dbgudang where kodegdg=:0',[kodegdg.text],DM.Qucari) then
    begin
      KodeGdg.Text :=DM.QuCari.FieldByname('Kodegdg').AsString;
      LNamaGdg.Caption:='[ '+DM.QuCari.FieldByname('Nama').AsString+' ]';
    end
    else
      TampilIsiData(FrSubKategori,Kodegdg,LNamagdg,1001,'Kodegdg','Namagdg');
  end;
end;

end.
