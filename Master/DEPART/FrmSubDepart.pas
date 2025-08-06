unit FrmSubDepart;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons;

type
  TFrSubDepart = class(TForm)
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
    PerkB: TEdit;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeGrpEnter(Sender: TObject);
    procedure KodeGrpExit(Sender: TObject);
    procedure PerkBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    IsSimpan : boolean;
  end;

var
  FrSubDepart: TFrSubDepart;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, FrmDepart,MyModul;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubDepart.ControlCount-1 do
   begin
      if (FrSubDepart.Controls[i] is TEdit) then
         (FrSubDepart.Controls[i] as TEdit).Clear;
   end;
end;

procedure TFrSubDepart.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubDepart.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrSubDepart.BitBtn1Click(Sender: TObject);
begin
  if KodeGRP.Text<>'' then
  begin
     if IsSimpan=true then
     begin
          FrDepart.SimpanData('I');
           ClearKomponen;
        ActiveControl:=kodeGrp;
     end
     else
     begin
          FrDepart.Simpandata('U');
        ModalResult:=mrOk;
     end;
   end
end;

procedure TFrSubDepart.BitBtn2Click(Sender: TObject);
begin
   Close;
end;


procedure TFrSubDepart.KodeGrpEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubDepart.KodeGrpExit(Sender: TObject);
begin
  If (IsSimpan) then
  begin
    if mValid then
    begin
      if length(Kodegrp.Text)<>0 then
      begin
        if MyFindField('dbDepart','KdDep',KodeGrp.Text)=true then
        begin
          ShowMessage('Data Sudah Ada !');
          ActiveControl:=KodeGrp;
        end;
      end
      else
      begin
        MsgDataTidakBolehKosong(Label1.Caption);
         ActiveControl:=KodeGrp;
      end;
    end;
  end;
end;

procedure TFrSubDepart.PerkBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_Return then
  begin
    if Length(PerkB.Text)=0 then
       TampilIsiData(FrSubDepart,PerkB ,Label4,1005,'Perkiraan','Keterangan')
    else if DataBersyarat('select * from dbperkiraan where Perkiraan=:0',[PerkB.text],DM.Qucari) then
    begin
      PerkB.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      Label4.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubDepart,PerkB ,Label4,1005,'Perkiraan','Keterangan');
  end;
end;

end.
