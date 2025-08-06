unit FrmSubDevisi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons;

type
  TFrSubdevisi = class(TForm)
    Devisi: TEdit;
    Namadevisi: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    Label30: TLabel;
    Label31: TLabel;
    Bevel2: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DevisiEnter(Sender: TObject);
    procedure DevisiExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NamadevisiExit(Sender: TObject);
  private
    { Private declarations }
    function CariKode: String;
  public
    { Public declarations }
    IsSimpan : boolean;
  end;

var
  FrSubdevisi: TFrSubdevisi;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, MyModul, FrmDevisi;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubDevisi.ControlCount-1 do
   begin
      if (FrSubDevisi.Controls[i] is TEdit) then
         (FrSubDevisi.Controls[i] as TEdit).Clear;
   end;
end;

function TFrSubdevisi.CariKode: String;
var xNomor: String;
begin
   with DM.QuCari do
   begin
      Close;
      SQL.Clear;
      SQL.Add('select max(cast(substring(Devisi,2,4) as int)) from dbArea ');
      SQL.Add('where substring(Devisi,1,1)='+QuotedStr(LeftStr(NamaDevisi.Text,1)));
      SQL.Add('and isnumeric(substring(Devisi,2,4))=1');
      Open;
      if IsEmpty then
        xNomor:='0001'
      else xNomor:=FormatFloat('0000',Fields[0].AsInteger+1);
   end;
   Result:=LeftStr(NamaDevisi.Text,1)+xNomor;
end;

procedure TFrSubdevisi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubdevisi.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrSubdevisi.BitBtn1Click(Sender: TObject);
begin
  if Devisi.Text<>'' then
  begin
     if IsSimpan=true then
     begin
           FrDevisi.SimpanData('I');
           ClearKomponen;
        ActiveControl:=Devisi;
     end
     else
     begin
           FrDevisi.Simpandata('U');
        ModalResult:=mrOk;
     end;
   end
end;

procedure TFrSubdevisi.BitBtn2Click(Sender: TObject);
begin
   Close;
end;


procedure TFrSubdevisi.DevisiEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubdevisi.DevisiExit(Sender: TObject);
begin
  if (IsSimpan) then
  begin
    if mValid then
    begin
      if length(Devisi.Text)<>0 then
      begin
        if MyFindField('Dbdevisi','Devisi',Devisi.Text)=true then
        begin
           ShowMessage('Data Sudah Ada !');
           ActiveControl:=Devisi;
        end;
      end
      else
      begin
        ShowMessage('Data Tidak Boleh Kosong !');
        ActiveControl:=Devisi;
      end;
    end;
  end;
end;

procedure TFrSubdevisi.FormShow(Sender: TObject);
begin
  Devisi.Enabled:=IsSimpan;
  //Devisi.Enabled:=False;
end;

procedure TFrSubdevisi.NamadevisiExit(Sender: TObject);
begin
  if Trim(NamaDevisi.Text)<>'' then
  begin
    if (IsSimpan=True)  then
    begin
      //Devisi.Text:=CariKode;
    end;
  end
  else
  begin
    MsgDataTidakBolehKosong('Nama Area');
    ActiveControl:=NamaDevisi;
  end;
end;

end.
