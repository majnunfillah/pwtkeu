unit FrmSetPemakaiGdg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ComCtrls, Grids,
  StdCtrls, Buttons, ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxCntner;

type
  TFrSetPemakaiGdg = class(TForm)
    Bevel1: TBevel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Daftar: TListBox;
    ok: TBitBtn;
    BitBtn1: TBitBtn;
    QuGudang: TADOQuery;
    DsGudang: TDataSource;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1KODEGDG: TdxDBGridMaskColumn;
    dxDBGrid1NAMA: TdxDBGridMaskColumn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure okClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DaftarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrSetPemakaiGdg: TFrSetPemakaiGdg;
  mValid, Dobel : Boolean;
  temp1,temp2 : array[1..50] of string;
implementation
Uses MyModul, MyGlobal, MyProcedure, Frmbrows, FrmReportPreview,FrmPemakai;

{$R *.dfm}

procedure TFrSetPemakaiGdg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrSetPemakaiGdg.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
     SendMessage(Handle, WM_NEXTDLGCTL, 0, 0) else
  if key = 27 then
  begin
    mValid := false;
    FormShow(Sender);
  end;
end;

procedure TFrSetPemakaiGdg.FormShow(Sender: TObject);
begin
  QuGudang.Close;
  //QuGudang.SQL.Clear;
  //QuGudang.SQL.Add('');
  QuGudang.Open;
  with DM.QuCari do
  begin
   Close;
   SQL.Clear;
   SQL.Add('select KodeGdg from dbPemakaiGdg');
   SQL.Add('where UserID='+QuotedStr(FrPemakai.QuView.FieldByName('UserID').AsString));
   Open;
  end;
  DM.QuCari.First;
  Daftar.Items.Clear;
  while Not DM.QuCari.Eof do
  begin
    Daftar.Items.Add(DM.QuCari.FieldByName('KodeGdg').AsString);
    DM.QuCari.Next;
  end;
end;

procedure TFrSetPemakaiGdg.BitBtn2Click(Sender: TObject);
var i : integer;
begin
  if Daftar.Items.Count=0 then
  begin
    Daftar.Items.Add(QuGudang.FieldByName('KodeGdg').AsString);
    QuGudang.Next;
    ActiveControl:=dxDBGrid1;
  end else
  begin
    i := 1;
    Dobel := false;
    while (i <= Daftar.Items.Count) and not (dobel) do
    begin
      if (Daftar.Items.Strings[i-1] = QuGudang.FieldByName('KodeGdg').AsString) then
      begin
        Dobel := true;
        ShowMessage('Data Sudah Di Pilih !');
        dxDBGrid1.setfocus;
      end else
        inc(i);
    end;
    if not(dobel) then
    begin
      Daftar.Items.Add(QuGudang.FieldByName('KodeGdg').AsString);
      QuGudang.Next;
      ActiveControl:=dxDBGrid1;
    end;
  end;
end;

procedure TFrSetPemakaiGdg.BitBtn3Click(Sender: TObject);
begin
  if Daftar.ItemIndex=-1 then
     Daftar.SetFocus;
  Daftar.Items.Delete(Daftar.ItemIndex);
  Daftar.SetFocus;
end;

procedure TFrSetPemakaiGdg.DaftarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_Delete then
     BitBtn3Click(Sender);
end;

procedure TFrSetPemakaiGdg.BitBtn1Click(Sender: TObject);
begin
  mValid := false;
  Close;
end;

procedure TFrSetPemakaiGdg.okClick(Sender: TObject);
var i : integer;
    a, TipeDivisi : string;
begin
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('delete dbPemakaiGdg where UserID='+QuotedStr(FrPemakai.QuView.FieldByName('UserID').AsString));
    ExecSQL;
  end;
  if Daftar.Items.Count>0 then
  begin
    for i := 0 to Daftar.Items.Count-1 do
    begin
      a := Daftar.Items[i];
      DM.QuCari.Close;
      DM.QuCari.SQL.Clear;
      DM.QuCari.SQL.Add('Insert into dbPemakaiGdg (UserID,KodeGdg)');
      DM.QuCari.SQL.Add('values('+QuotedStr(FrPemakai.QuView.FieldByName('UserID').AsString)+','+QuotedStr(a)+')');
      DM.QuCari.ExecSQL;
    end;
  end;
  ModalResult:=mrOK;
end;


procedure TFrSetPemakaiGdg.BitBtn5Click(Sender: TObject);
begin
 Daftar.Clear;
end;

procedure TFrSetPemakaiGdg.BitBtn4Click(Sender: TObject);
begin
 Daftar.Clear;
 QuGudang.First;
 while Not QuGudang.Eof do
 begin
   Daftar.Items.Add(QuGudang.FieldByName('KodeGdg').AsString);
   QuGudang.Next;
 end;
end;

procedure TFrSetPemakaiGdg.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
     BitBtn2Click(Sender) else
  if key = 27 then
  begin
    mValid := false;
  end;
end;

procedure TFrSetPemakaiGdg.dxDBGrid1DblClick(Sender: TObject);
begin
  BitBtn2Click(Sender);
end;

end.
