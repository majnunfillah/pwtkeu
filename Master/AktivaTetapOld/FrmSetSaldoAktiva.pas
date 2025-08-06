unit FrmSetSaldoAktiva;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, wwdblook, Buttons, Grids, Wwdbigrd, Wwdbgrid, Db,
  ADODB, Mask, ToolEdit, ExtCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid;

type
  TFrSetSaldoAktiva = class(TForm)
    QuSetStock: TADOQuery;
    Sp_SetQnt: TADOStoredProc;
    DsQuSetStock: TDataSource;
    QuSetStockPerkiraan: TStringField;
    QuSetStockBulan: TIntegerField;
    QuSetStockTahun: TIntegerField;
    QuSetStockDevisi: TStringField;
    QuSetStockAwal: TBCDField;
    QuSetStockAwalSusut: TBCDField;
    QuSetStockAwalD: TBCDField;
    QuSetStockAwalSusutD: TBCDField;
    QuSetStockMD: TBCDField;
    QuSetStockDMD: TBCDField;
    QuSetStockMK: TBCDField;
    QuSetStockDMK: TBCDField;
    QuSetStockSD: TBCDField;
    QuSetStockDSD: TBCDField;
    QuSetStockSK: TBCDField;
    QuSetStockDSK: TBCDField;
    QuSetStockAkhir: TBCDField;
    QuSetStockAkhirSusut: TBCDField;
    QuSetStockAkhirD: TBCDField;
    QuSetStockAkhirSusutD: TBCDField;
    QuSetStockKeterangan: TStringField;
    QuSetStockNamabag: TStringField;
    QuSetStocknamadevisi: TStringField;
    Panel2: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    NilaiAwal: TPBNumEdit;
    NilaiSusut: TPBNumEdit;
    Label1: TLabel;
    Valas: TEdit;
    Label2: TLabel;
    Kurs: TPBNumEdit;
    Label4: TLabel;
    QuSetStockValas: TStringField;
    QuSetStockKurs: TBCDField;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    lDetail: TLabel;
    procedure View(Perkiraan:String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AmbilData;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ValasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Perkiraan:String;
    Bulan,tahun:integer;
  end;

var
  FrSetSaldoAktiva: TFrSetSaldoAktiva;
implementation
Uses MyProcedure,MyGlobal,MyModul, FrmAktiva;

{$R *.DFM}



procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSetSaldoAktiva.ControlCount-1 do
   begin
      if (FrSetSaldoAktiva.Controls[i] is TEdit) then
         (FrSetSaldoAktiva.Controls[i] as TEdit).Clear;
   end;
end;

procedure TFrSetSaldoAktiva.AmbilData;
begin
   {Kodegdg.Text:=QuSetStock.fieldbyname('Kodegdg').AsString;
   QntAwl.Value:=QuSetStock.fieldbyname('QntAwl').Value;
   if QntAwl.AsInteger > 0 then
      HrgAwl.Value:=QuSetStock.fieldbyname('HrgAwl').Value/QntAwl.AsInteger
   else
      HrgAwl.Value:=0;}
end;


procedure TFrSetSaldoAktiva.View(Perkiraan:String);
begin
   with QuSetStock do
   begin
      Close;
      SQL.Clear;
      SQL.Add('Select a.Perkiraan, a.Bulan, a.Tahun, a.Devisi, a.Awal, a.AwalSusut, ');
      sql.add('       Case when a.Valas=''IDR'' then 0 else a.AwalD end AwalD,');
      sql.add('       Case when a.Valas=''IDR'' then 0 else a.AwalSusutD end AwalSusutD,');
      sql.add('       a.Valas, a.Kurs, a.MD, a.DMD, a.MK, a.DMK, a.SD, a.DSD, a.SK, a.DSK, A.Akhir,');
      SQL.Add('       A.AkhirSusut, a.AkhirD, a.AkhirSusutD,');
      Sql.add('       b.Keterangan,c.Namabag,d.namadevisi');
      SQL.Add('from dbaktiva b');
      SQL.Add('     left outer join dbAktivadet a on b.perkiraan=a.perkiraan');
      SQL.Add('     left outer join dbbagian c on c.kodebag=b.kodebag');
      SQL.Add('     left outer join dbdevisi d on d.devisi=a.devisi');
      sql.add('where b.Perkiraan=:0 And a.bulan=:1 and a.tahun=:2 and b.devisi=:3');
      SQL.Add('Order by a.Perkiraan');
      Prepared;
      Parameters[0].Value:=Perkiraan;
      Parameters[1].Value:=Bulan;
      Parameters[2].Value:=tahun;
      Parameters[3].Value:=FrAktiva.QuView.FieldByname('Devisi').AsString;
      Open;
      if not IsEmpty then
      begin
        Valas.Text := FieldByname('Valas').AsString;
        Kurs.Value := FieldByname('Kurs').Value;
        if Valas.Text='IDR' then
        begin
          NilaiAwal.Value := FieldByname('Awal').Value;
          NilaiSusut.Value := FieldByname('AwalSusut').Value;
        end
        else
        begin
          NilaiAwal.Value := FieldByname('AwalD').Value;
          NilaiSusut.Value := FieldByname('AwalSusutD').Value;
        end;
      end;
   end;
end;

procedure TFrSetSaldoAktiva.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSetSaldoAktiva.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
   Sendmessage(handle,WM_NEXTDLGCTL,0,0)
else
if key=27 then close;
end;

procedure TFrSetSaldoAktiva.wwDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=13 then SpeedButton1.Click;
end;

procedure TFrSetSaldoAktiva.FormShow(Sender: TObject);
begin
   View(Perkiraan);
end;

procedure TFrSetSaldoAktiva.FormCreate(Sender: TObject);
begin
   Perkiraan:=frAktiva.Quview.fieldbyname('kodeaktiva').AsString;
end;

procedure TFrSetSaldoAktiva.ValasKeyDown(Sender: TObject; var Key: Word;
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
      TampilIsiData(FrSetSaldoaktiva,Valas,Label4,1006,'kodevls','Namavls');
    for I := LOW(xValue) to High(xValue) do
    begin
      if I= High(xValue) then
         Kurs.Value:=xValue[i];
    end;
  end;
end;

procedure TFrSetSaldoAktiva.BitBtn1Click(Sender: TObject);
begin
    with Sp_SetQnt do
    begin
      close;
      Prepared;
      Parameters[1].Value := 'U';
      Parameters[2].Value := FrAktiva.QuView.FieldByname('Devisi').AsString;
      Parameters[3].Value := Perkiraan;
      Parameters[4].Value := Bulan;
      Parameters[5].Value := tahun;
      Parameters[6].Value := Valas.Text;
      Parameters[7].Value := Kurs.Value;
      Parameters[8].Value := NilaiAwal.Value;
      Parameters[9].Value := NilaiSusut.Value;
      try
        ExecProc;
        LoggingData(IDUser,'U','Master Aktiva',Perkiraan,
                    'Saldo awal perolehan '+NilaiAwal.Text+
                    'Saldo Awal Susut '+NilaiSusut.Text);
        Except
      end;
    end;
    Close;
end;

procedure TFrSetSaldoAktiva.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

end.
