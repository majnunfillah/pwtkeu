unit FrmSetBudget;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, wwdblook, Buttons, Grids, Wwdbigrd, Wwdbgrid, Db,
  ADODB, Mask, ToolEdit, ExtCtrls;

type
  TFrSetBudGet = class(TForm)
    wwDBGrid1: TwwDBGrid;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    AwalD: TPBNumEdit;
    Label2: TLabel;
    QuSetStock: TADOQuery;
    Button1: TButton;
    Sp_SetQnt: TADOStoredProc;
    DsQuSetStock: TDataSource;
    Devisi: TEdit;
    QuSetStockPerkiraan: TStringField;
    QuSetStockBulan: TIntegerField;
    QuSetStockTahun: TIntegerField;
    QuSetStockMd: TFloatField;
    QuSetStockMk: TFloatField;
    QuSetStockBudget: TFloatField;
    Bln: TPBNumEdit;
    Label3: TLabel;
    Thn: TPBNumEdit;
    Label4: TLabel;
    QuSetStockDevisi: TStringField;
    procedure View(Perkiraan:String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure UpdateSetQnt(KdBrg,KdGdg:String;Bln,Tahun,QntAwal,HrgAwal:Real);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Perkiraan:String;
    Bulan,tahun,StatusDK :integer;

  end;

var
  FrSetBudGet: TFrSetBudGet;
implementation
Uses MyProcedure,MyGlobal,MyModul, FrmPerkiraan;

{$R *.DFM}


procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSetBudget.ControlCount-1 do
   begin
      if (FrSetBudget.Controls[i] is TEdit) then
         (FrSetBudget.Controls[i] as TEdit).Clear;
   end;
end;

procedure TFrSetBudGet.View(Perkiraan:String);
begin
   with QuSetStock do
   begin
      Close;
      SQL.Clear;
      SQL.Add('select Perkiraan,Bulan,Tahun,Md,Mk,Budget,Devisi from dbneraca where Perkiraan=:0 and tahun=:1');
      Prepared;
      Parameters[0].Value:=Perkiraan;
      Parameters[1].Value:=Strtoint(Periodthn);
      Open;
      (FieldByName('MD') as TNumericField).DisplayFormat := ',0.##';
      (FieldByName('MK') as TNumericField).DisplayFormat := ',0.##';
      (FieldByName('Budget') as TNumericField).DisplayFormat := ',0.##';
   end;
end;

procedure TFrSetBudGet.UpdateSetQnt(KdBrg,KdGdg:String;Bln,Tahun,QntAwal,HrgAwal:Real);
begin
   with Sp_SetQnt do
   begin
      Prepared;
      Parameters[1].Value:=KdBrg;
      Parameters[2].Value:=Bln;
      Parameters[3].Value:=Tahun;
      Parameters[4].Value:=QntAwal;
      Parameters[5].Value:=HrgAwal;
      Parameters[6].Value:=KdGdg;
   try
     ExecProc;
   except
     ShowMessage('Proses Gagal');
   end;
   end;

end;

procedure TFrSetBudGet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFrSetBudGet.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
   Sendmessage(handle,WM_NEXTDLGCTL,0,0)
else
if key=27 then close;
end;

procedure TFrSetBudGet.wwDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=13 then SpeedButton1.Click;
end;

procedure TFrSetBudGet.wwDBGrid1DblClick(Sender: TObject);
begin
SpeedButton1.Click;
end;

procedure TFrSetBudGet.FormShow(Sender: TObject);
begin
   View(Perkiraan);
end;

procedure TFrSetBudGet.FormCreate(Sender: TObject);
begin
   Perkiraan:=frPerkiraan.QuPerkiraan.fieldbyname('Perkiraan').AsString;
   StatusDK:=frPerkiraan.QuPerkiraan.fieldbyname('DK').AsInteger;

end;

procedure TFrSetBudGet.SpeedButton1Click(Sender: TObject);
var i : integer;
begin
   for i:= 0 to FrSetBudget.ControlCount-1 do
   begin
      if (FrSetBudget.Controls[i] is TLabel) then
         (FrSetBudget.Controls[i] as TLabel).Visible:=true;
      if (FrSetBudget.Controls[i] is TPBNumEdit) then
         (FrSetBudget.Controls[i] as TPBNumEdit).Visible:=true;
      if (FrSetBudget.Controls[i] is TPBNumEdit) then
         (FrSetBudget.Controls[i] as TPBNumEdit).Enabled:=true;

   end;
   Devisi.Visible:=true;
   Button1.Visible:=true;
   Devisi.Text := QuSetStockDevisi.AsString;
   ActiveControl:=AwalD;



end;

procedure TFrSetBudGet.Button1Click(Sender: TObject);
var i : integer;
begin
   for i:= 0 to FrSetBudget.ControlCount-1 do
   begin
      if (FrSetBudget.Controls[i] is TLabel) then
         (FrSetBudget.Controls[i] as TLabel).Visible:=false;
      if (FrSetBudget.Controls[i] is TPBNumEdit) then
         (FrSetBudget.Controls[i] as TPBNumEdit).Visible:=false;
      if (FrSetBudget.Controls[i] is TPBNumEdit) then
         (FrSetBudget.Controls[i] as TPBNumEdit).Enabled:=false;
   end;
   Devisi.Visible:=false;
   Button1.Visible:=false;
   with Sp_SetQnt do
   begin
      Close;
      Prepared;
      Parameters[1].Value := QuSetStockPerkiraan.AsString;
      Parameters[2].Value := AwalD.AsFloat;
      Parameters[3].Value := Bln.AsInteger;
      Parameters[4].Value := Thn.asinteger;
      ExecProc;
   end;
   View(perkiraan);
   ActiveControl:=wwDBGrid1;
end;

end.
