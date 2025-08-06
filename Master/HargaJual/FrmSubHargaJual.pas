unit FrmSubHargaJual;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons, PBNumEdit;

type
  TFrSubHargaJual = class(TForm)
    KodeJenis: TEdit;
    Label1: TLabel;
    Bevel1: TBevel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Image1: TImage;
    Label11: TLabel;
    Label12: TLabel;
    Bevel2: TBevel;
    Plafon: TPBNumEdit;
    PBNumEdit1: TPBNumEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
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
  FrSubHargaJual: TFrSubHargaJual;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, MyModul, FrmBrows, FrmBarangJ;
{$R *.DFM}

procedure TFrSubHargaJual.ClearKomponen;
var i:integer;
begin
   for i:= 0 to ControlCount-1 do
   begin
      if (Controls[i] is TEdit) then
         (Controls[i] as TEdit).Clear;
   end;
end;

procedure TFrSubHargaJual.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubHargaJual.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

procedure TFrSubHargaJual.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then close;
end;

procedure TFrSubHargaJual.KodeJenisEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubHargaJual.KodeJenisExit(Sender: TObject);
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

procedure TFrSubHargaJual.BitBtn1Click(Sender: TObject);
begin
  if KodeJenis.Text='' then
  begin
    KodeJenis.SetFocus;
    MessageDlg('Kode Jenis tidak boleh kosong', mtError, [mbOK],0);
  end else
  begin
     if IsSimpan=true then
     begin
       FrbarangJ.SimpanData('I');
       ClearKomponen;
       ActiveControl:=KodeJenis;
     end
     else
     begin
       FrbarangJ.SimpanData('U');
       BitBtn2.Click;
     end;
  end
end;

procedure TFrSubHargaJual.FormShow(Sender: TObject);
begin
  KodeJenis.Enabled:=IsSimpan=True;
end;

end.
