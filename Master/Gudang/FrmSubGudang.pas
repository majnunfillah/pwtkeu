unit FrmSubGudang;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons;

type
  TFrSubGudang = class(TForm)
    KodeGdg: TEdit;
    NamaGdg: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Image1: TImage;
    Label11: TLabel;
    Label12: TLabel;
    Bevel2: TBevel;
    IsProduksi: TCheckBox;
    Label3: TLabel;
    Alamat: TEdit;
    IsTakeInOut: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeGdgEnter(Sender: TObject);
    procedure KodeGdgExit(Sender: TObject);
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
  FrSubGudang: TFrSubGudang;
  mValid:Boolean;
implementation
uses  FrmGudang,MyGlobal,Myprocedure, MyModul, FrmBrows;
{$R *.DFM}

procedure TFrSubGudang.ClearKomponen;
var i:integer;
begin
   for i:= 0 to ControlCount-1 do
   begin
      if (Controls[i] is TEdit) then
         (Controls[i] as TEdit).Clear;
   end;
end;

procedure TFrSubGudang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubGudang.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

procedure TFrSubGudang.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then close;
end;

procedure TFrSubGudang.KodeGdgEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubGudang.KodeGdgExit(Sender: TObject);
begin
  if (IsSimpan)  then
  begin
    if mValid then
    begin
      if length(Kodegdg.Text)<>0 then
      begin
        if MyFindField('dbGudang','Kodegdg',Kodegdg.Text)=true then
        begin
          ShowMessage('Data Sudah Ada !');
          ActiveControl:=Kodegdg;
        end;
      end
      else
      begin
        ShowMessage('Data Tidak Boleh Kosong !');
        ActiveControl:=Kodegdg;
      end;
    end;
  end;  
end;

procedure TFrSubGudang.BitBtn1Click(Sender: TObject);
begin
  if Kodegdg.Text='' then
  begin
    KodeGdg.SetFocus;
    MessageDlg('Kode Gudang tidak boleh kosong', mtError, [mbOK],0);
  end else
  begin
     if IsSimpan=true then
     begin
       FrGudang.SimpanData('I');
       ClearKomponen;
       ActiveControl:=KodeGdg;
     end
     else
     begin
       FrGudang.SimpanData('U');
       BitBtn2.Click;
     end;
  end
end;

procedure TFrSubGudang.FormShow(Sender: TObject);
begin
  KodeGdg.Enabled:=IsSimpan=True;
end;

end.
