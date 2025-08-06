unit FrmSubKelompokBrg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons;

type
  TFrSubKelompokBrg = class(TForm)
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
    Label3: TLabel;
    Perkiraan: TEdit;
    LNamaPerk: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeBrdEnter(Sender: TObject);
    procedure KodeBrdExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PerkiraanEnter(Sender: TObject);
    procedure PerkiraanExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IsSimpan : boolean;
  end;

var
  FrSubKelompokBrg: TFrSubKelompokBrg;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, FrmKelompokBrg, MyModul, FrmBrows;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubKelompokBrg.ControlCount-1 do
   begin
      if (FrSubKelompokBrg.Controls[i] is TEdit) then
         (FrSubKelompokBrg.Controls[i] as TEdit).Clear;
   end;
   
end;

procedure TFrSubKelompokBrg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubKelompokBrg.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrSubKelompokBrg.BitBtn1Click(Sender: TObject);
begin
if KodeBrd.Text<>'' then
begin
   if IsSimpan=true then
   begin
      with FrKelompokBrg do
      begin
         SimpanData('I');
         ClearKomponen;
      end;
      ActiveControl:=KodeBrd;
   end
   else
   begin
      with FrKelompokBrg do
      begin
         Simpandata('U');
      end;
      ModalResult:=mrOk;
   end;
 end
end;

procedure TFrSubKelompokBrg.BitBtn2Click(Sender: TObject);
begin
   Close;
end;


procedure TFrSubKelompokBrg.KodeBrdEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubKelompokBrg.KodeBrdExit(Sender: TObject);
begin
  if (IsSimpan) then
  begin
    if mValid then
    begin
      if length(KodeBrd.Text)<>0 then
      begin
        if MyFindField('dbKelompok','KodeKelompok',KodeBrd.Text)=true then
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

procedure TFrSubKelompokBrg.FormShow(Sender: TObject);
begin
  KodeBrd.Enabled:=IsSimpan;
  Perkiraan.Enabled := ((KodeBrd.Text='10') or (KodeBrd.Text='20'));  
end;

procedure TFrSubKelompokBrg.PerkiraanEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrSubKelompokBrg.PerkiraanExit(Sender: TObject);
begin
   if mValid then
  begin
     if DataBersyarat('select * from dbPerkiraan where Perkiraan=:0',[Perkiraan.text],DM.Qucari) then
    begin
      Perkiraan.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      LNamaPerk.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubKelompokBrg,Perkiraan ,LNamaPerk,1005,'Perkiraan','Keterangan');
  end;
end;

end.
