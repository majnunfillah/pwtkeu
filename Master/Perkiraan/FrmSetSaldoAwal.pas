unit FrmSetSaldoAwal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, wwdblook, Buttons, Grids, Wwdbigrd, Wwdbgrid, Db,
  ADODB, Mask, ToolEdit, ExtCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid;

type
  TFrSetSaldoAwal = class(TForm)
    QuSetStock: TADOQuery;
    Sp_SetQnt: TADOStoredProc;
    DsQuSetStock: TDataSource;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    tvAktiva: TcxGridDBTableView;
    tvAktivaBulan: TcxGridDBColumn;
    tvAktivaTahun: TcxGridDBColumn;
    tvAktivanamadevisi: TcxGridDBColumn;
    tvAktivaPerkiraan: TcxGridDBColumn;
    tvAktivaKeterangan: TcxGridDBColumn;
    tvDetail: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel2: TPanel;
    Button1: TButton;
    Label3: TLabel;
    NilaiAwal: TPBNumEdit;
    Label1: TLabel;
    Valas: TEdit;
    Label2: TLabel;
    Kurs: TPBNumEdit;
    Label4: TLabel;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    Panel4: TPanel;
    tvAktivaDBColumn1: TcxGridDBColumn;
    tvAktivaDBColumn2: TcxGridDBColumn;
    QuSetStockPerkiraan: TStringField;
    QuSetStockKeterangan: TStringField;
    QuSetStockNamaDevisi: TStringField;
    QuSetStockvalas: TStringField;
    QuSetStockkurs: TBCDField;
    QuSetStockAwalD: TBCDField;
    QuSetStockAwalDRp: TBCDField;
    QuSetStockAwalK: TBCDField;
    QuSetStockAwalKRp: TBCDField;
    tvAktivaAwalD: TcxGridDBColumn;
    tvAktivaAwalDRp: TcxGridDBColumn;
    tvAktivaAwalK: TcxGridDBColumn;
    tvAktivaAwalKRp: TcxGridDBColumn;
    QuSetStockDK: TWordField;
    QuSetStockDevisi: TStringField;
    Label5: TLabel;
    NilaiSusut: TPBNumEdit;
    procedure View(Perkiraan:String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ValasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Perkiraan:String;
    Bulan,tahun:integer;
    procedure Tampildetail(Mode:Boolean);
  end;

var
  FrSetSaldoAwal: TFrSetSaldoAwal;
implementation
Uses MyProcedure,MyGlobal,MyModul, FrmPerkiraan;

{$R *.DFM}
procedure TFrSetSaldoAwal.Tampildetail(Mode:Boolean);
begin
  Panel1.Enabled := not mode;
  Panel2.Visible := mode;
  if mode then
     ActiveControl := Valas
  else
     ActiveControl := cxGrid1;
  Valas.Text := QuSetStockValas.AsString;
  Kurs.Value := QuSetStockKurs.Value;
  mDevisi := QuSetStockDevisi.AsString;
  if QuSetStock.fieldbyname('DK').Value=0 then
   begin
     NilaiAwal.Value:=QuSetStock.fieldbyname('AwalDRp').Value;
     NilaiSusut.Value:=QuSetStock.fieldbyname('AwalD').Value;
   end
   else
   begin
     NilaiAwal.Value:=QuSetStock.fieldbyname('AwalKRp').Value;
     NilaiSusut.Value:=QuSetStock.fieldbyname('AwalK').Value;
   end;
end;


procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSetSaldoAwal.ControlCount-1 do
   begin
      if (FrSetSaldoAwal.Controls[i] is TEdit) then
         (FrSetSaldoAwal.Controls[i] as TEdit).Clear;
   end;
end;

procedure TFrSetSaldoAwal.View(Perkiraan:String);
begin
   with QuSetStock do
   begin
      Close;
      Prepared;
      Parameters[0].Value:=Perkiraan;
      Parameters[1].Value:=1;
      Parameters[2].Value:=Strtoint(Periodthn);
      Open;
   end;
end;

procedure TFrSetSaldoAwal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSetSaldoAwal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
   Sendmessage(handle,WM_NEXTDLGCTL,0,0)
else
if key=27 then close;
end;

procedure TFrSetSaldoAwal.wwDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=13 then SpeedButton1.Click;
end;

procedure TFrSetSaldoAwal.FormShow(Sender: TObject);
begin

   View(Perkiraan);
end;

procedure TFrSetSaldoAwal.FormCreate(Sender: TObject);
begin
   Perkiraan:=FrPerkiraan.QuPerkiraan.fieldbyname('perkiraan').AsString;
end;

procedure TFrSetSaldoAwal.ValasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var i : Integer;
begin
  if key=vk_return then
  begin
    SetLength(xValue,3);
    if DataBersyarat('select kodevls,namavls,kurs from dbValas where kodevls=:0',[Valas.text],DM.Qucari) then
    begin
      Valas.Text :=DM.QuCari.FieldByname('Kodevls').AsString;
      Label4.Caption:='[ '+DM.QuCari.FieldByname('Namavls').AsString+' ]';
      for i := Low(xValue) to High(xValue) do
      begin
        xValue[i] := DM.QuCari.Fields[i].Value;
      end;
    end
    else
      TampilIsiData(FrSetSaldoAwal,Valas,Label4,1006,'kodevls','Namavls');
    for I := LOW(xValue) to High(xValue) do
    begin
      if I= High(xValue) then
         Kurs.Value:=xValue[i];
    end;
  end;
end;

procedure TFrSetSaldoAwal.SpeedButton1Click(Sender: TObject);
begin
  Tampildetail(True);
end;

procedure TFrSetSaldoAwal.Button1Click(Sender: TObject);
begin
  if Bulan=1 then
  begin
    with Sp_SetQnt do
    begin
      close;
      Prepared;
      Parameters[1].Value := Perkiraan;
      Parameters[2].Value := 1;
      Parameters[3].Value := tahun;


      if QuSetStock.fieldbyname('DK').Value=0 then
      begin
         Parameters[4].Value:=NilaiAwal.Value;
         Parameters[5].Value:=0;
         Parameters[6].Value:=NilaiSusut.Value;
         Parameters[7].Value:=0;
      end else
      begin
         Parameters[4].Value:=0;
         Parameters[5].Value:=NilaiAwal.Value;
         Parameters[6].Value:=0;
         Parameters[7].Value:=NilaiSusut.Value;
      end;
      Parameters[8].Value := QuSetStock.FieldByname('Devisi').AsString;
      Parameters[9].Value := Valas.Text;
      Parameters[10].Value := Kurs.Value;
      try
        ExecProc;
        LoggingData(IDUser,'U','Neraca',Perkiraan,
                    'Saldo awal Neraca '+NilaiAwal.Text);
        Except
      end;
    end;
    Tampildetail(False);
    View(Perkiraan);
  end
end;

end.
