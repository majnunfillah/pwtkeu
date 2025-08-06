unit FrmSubjenisCust;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons;

type
  TFrSubJenisCust = class(TForm)
    KodeJenis: TEdit;
    NamaJenis: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Image1: TImage;
    Label11: TLabel;
    Label12: TLabel;
    Bevel2: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeJenisEnter(Sender: TObject);
    procedure KodeJenisExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure ClearKomponen;
  public
    { Public declarations }
    IsSimpan : boolean;
  end;

var
  FrSubJenisCust: TFrSubJenisCust;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, MyModul, FrmBrows, frmJenisCust;
{$R *.DFM}

procedure TFrSubJenisCust.ClearKomponen;
var i:integer;
begin
   for i:= 0 to ControlCount-1 do
   begin
      if (Controls[i] is TEdit) then
         (Controls[i] as TEdit).Clear;
   end;
end;

procedure TFrSubJenisCust.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubJenisCust.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

procedure TFrSubJenisCust.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then close;
end;

procedure TFrSubJenisCust.KodeJenisEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubJenisCust.KodeJenisExit(Sender: TObject);
begin
  if (IsSimpan)  then
  begin
    if mValid then
    begin
      if length(KodeJenis.Text)<>0 then
      begin
        if MyFindField('dbJenisCustSupp','KodeJenis',KodeJenis.Text)=true then
        begin
          ShowMessage('Data Sudah Ada !');
          ActiveControl:=KodeJenis;
        end;
      end
      else
      begin
        ShowMessage('Data Tidak Boleh Kosong !');
        ActiveControl:=KodeJenis;
      end;
    end;
  end;  
end;

procedure TFrSubJenisCust.BitBtn1Click(Sender: TObject);
begin
  if KodeJenis.Text='' then
  begin
    KodeJenis.SetFocus;
    MessageDlg('Kode Jenis tidak boleh kosong', mtError, [mbOK],0);
  end else
  begin
     if IsSimpan=true then
     begin
       FrJenisCust.SimpanData('I');
       ClearKomponen;
       ActiveControl:=KodeJenis;
     end
     else
     begin
       FrJenisCust.SimpanData('U');
       BitBtn2.Click;
     end;
  end
end;

procedure TFrSubJenisCust.FormShow(Sender: TObject);
begin
  KodeJenis.Enabled:=IsSimpan=True;
end;

end.
