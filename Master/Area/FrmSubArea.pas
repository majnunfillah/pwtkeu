unit FrmSubArea;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons;

type
  TFrSubArea = class(TForm)
    KodeArea: TEdit;
    NamaArea: TEdit;
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
    procedure KodeAreaEnter(Sender: TObject);
    procedure KodeAreaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NamaAreaExit(Sender: TObject);
  private
    { Private declarations }
    function CariKode: String;
  public
    { Public declarations }
    IsSimpan : boolean;
  end;

var
  FrSubArea: TFrSubArea;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, FrmArea, MyModul;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubArea.ControlCount-1 do
   begin
      if (FrSubArea.Controls[i] is TEdit) then
         (FrSubArea.Controls[i] as TEdit).Clear;
   end;
end;

function TFrSubArea.CariKode: String;
var xNomor: String;
begin
   with DM.QuCari do
   begin
      Close;
      SQL.Clear;
      SQL.Add('select max(cast(substring(KodeArea,2,4) as int)) from dbArea ');
      SQL.Add('where substring(KodeArea,1,1)='+QuotedStr(LeftStr(NamaArea.Text,1)));
      SQL.Add('and isnumeric(substring(KodeArea,2,4))=1');
      Open;
      if IsEmpty then
        xNomor:='0001'
      else xNomor:=FormatFloat('0000',Fields[0].AsInteger+1);
   end;
   Result:=LeftStr(NamaArea.Text,1)+xNomor;
end;

procedure TFrSubArea.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubArea.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrSubArea.BitBtn1Click(Sender: TObject);
begin
  if KodeArea.Text<>'' then
  begin
     if IsSimpan=true then
     begin
           FrArea.SimpanData('I');
           ClearKomponen;
        ActiveControl:=KodeArea;
     end
     else
     begin
           FrArea.Simpandata('U');
        ModalResult:=mrOk;
     end;
   end
end;

procedure TFrSubArea.BitBtn2Click(Sender: TObject);
begin
   Close;
end;


procedure TFrSubArea.KodeAreaEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubArea.KodeAreaExit(Sender: TObject);
begin
  if (IsSimpan) then
  begin
    if mValid then
    begin
      if length(KodeArea.Text)<>0 then
      begin
        if MyFindField('dbArea','KodeArea',KodeArea.Text)=true then
        begin
           ShowMessage('Data Sudah Ada !');
           ActiveControl:=KodeArea;
        end;
      end
      else
      begin
        ShowMessage('Data Tidak Boleh Kosong !');
        ActiveControl:=KodeArea;
      end;
    end;
  end;
end;

procedure TFrSubArea.FormShow(Sender: TObject);
begin
  KodeArea.Enabled:=IsSimpan;
  //KodeArea.Enabled:=False;
end;

procedure TFrSubArea.NamaAreaExit(Sender: TObject);
begin
  if Trim(NamaArea.Text)<>'' then
  begin
    if (IsSimpan=True)  then
    begin
      //KodeArea.Text:=CariKode;
    end;
  end
  else
  begin
    MsgDataTidakBolehKosong('Nama Area');
    ActiveControl:=NamaArea;
  end;
end;

end.
