unit FrmSubProses;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons;

type
  TFrSubProses = class(TForm)
    KodePrs: TEdit;
    Ket: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Image1: TImage;
    Label11: TLabel;
    Label12: TLabel;
    Bevel2: TBevel;
    Label3: TLabel;
    KodeGdg: TEdit;
    NmGudang: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodePrsEnter(Sender: TObject);
    procedure KodePrsExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure KodeGdgEnter(Sender: TObject);
    procedure KodeGdgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure ClearKomponen;
  public
    { Public declarations }
    IsSimpan : boolean;
  end;

var
  FrSubProses: TFrSubProses;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, MyModul, FrmBrows, frmProses;
{$R *.DFM}

procedure TFrSubProses.ClearKomponen;
var i:integer;
begin
   for i:= 0 to ControlCount-1 do
   begin
      if (Controls[i] is TEdit) then
         (Controls[i] as TEdit).Clear;
   end;
   NmGudang.Caption:='[ . . . ]';
end;

procedure TFrSubProses.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubProses.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

procedure TFrSubProses.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then close;
end;

procedure TFrSubProses.KodePrsEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubProses.KodePrsExit(Sender: TObject);
begin
  if (IsSimpan)  then
  begin
    if mValid then
    begin
      if length(KodePRs.Text)<>0 then
      begin
        if MyFindField('DBProses','KodePrs',KodePrs.Text)=true then
        begin
          ShowMessage('Data Sudah Ada !');
          ActiveControl:=KodePrs;
        end;
      end
      else
      begin
        ShowMessage('Data Tidak Boleh Kosong !');
        ActiveControl:=KodePrs;
      end;
    end;
  end;  
end;

procedure TFrSubProses.BitBtn1Click(Sender: TObject);
begin
  if KodePrs.Text='' then
  begin
    KodeGdg.SetFocus;
    MessageDlg('Kode Proses tidak boleh kosong', mtError, [mbOK],0);
  end else
  begin
     if IsSimpan=true then
     begin
       FrProses.SimpanData('I');
       ClearKomponen;
       ActiveControl:=Kodeprs;
     end
     else
     begin
       FrProses.SimpanData('U');
       BitBtn2.Click;
     end;
  end
end;

procedure TFrSubProses.FormShow(Sender: TObject);
begin
  KodePrs.Enabled:=IsSimpan=True;
end;

procedure TFrSubProses.KodeGdgEnter(Sender: TObject);
begin
Mvalid:=True;
end;

procedure TFrSubProses.KodeGdgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if mValid Then
  begin
    GetBrowse(11002,'DbGudang','KodeGdg','Nama',FrSubProses,KodeGdg,NmGudang);
  end;
end;

end.
