unit FrmJualKasirOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxEdit,
  DB, cxDBData, ComCtrls, ToolWin, ExtCtrls, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, ADODB, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGrid, Buttons;

type
  TFrJualKasirOrder = class(TForm)
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBTableView;
    tvDetail: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    QuMaster: TADOQuery;
    DsMaster: TDataSource;
    QuDetail1: TADOQuery;
    DsDetail1: TDataSource;
    QuMasterNOBUKTI: TStringField;
    QuMasterPemesan: TStringField;
    QuDetail1NOBUKTI: TStringField;
    QuDetail1URUT: TIntegerField;
    QuDetail1KodeBrg: TStringField;
    QuDetail1Keterangan: TStringField;
    QuDetail1IsSelesai: TBooleanField;
    QuDetail1IsKirim: TBooleanField;
    QuDetail1NAMABRG: TStringField;
    tvMasterNOBUKTI: TcxGridDBColumn;
    tvMasterPemesan: TcxGridDBColumn;
    tvDetailNOBUKTI: TcxGridDBColumn;
    tvDetailURUT: TcxGridDBColumn;
    tvDetailKodeBrg: TcxGridDBColumn;
    tvDetailKeterangan: TcxGridDBColumn;
    tvDetailIsSelesai: TcxGridDBColumn;
    tvDetailIsKirim: TcxGridDBColumn;
    tvDetailNAMABRG: TcxGridDBColumn;
    Panel1: TPanel;
    cxGrid1Level3: TcxGridLevel;
    tvMaster2: TcxGridDBTableView;
    cxGrid1Level4: TcxGridLevel;
    tvDetail2: TcxGridDBTableView;
    QuMaster2: TADOQuery;
    DsMaster2: TDataSource;
    QuDetail2: TADOQuery;
    StringField3: TStringField;
    IntegerField1: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    BooleanField1: TBooleanField;
    BooleanField2: TBooleanField;
    StringField6: TStringField;
    DsDetail2: TDataSource;
    tvMaster2NOBUKTI: TcxGridDBColumn;
    tvMaster2Pemesan: TcxGridDBColumn;
    tvDetail2NOBUKTI: TcxGridDBColumn;
    tvDetail2URUT: TcxGridDBColumn;
    tvDetail2KodeBrg: TcxGridDBColumn;
    tvDetail2Keterangan: TcxGridDBColumn;
    tvDetail2IsSelesai: TcxGridDBColumn;
    tvDetail2IsKirim: TcxGridDBColumn;
    tvDetail2NAMABRG: TcxGridDBColumn;
    QuMaster2NOBUKTI: TStringField;
    QuMaster2Pemesan: TStringField;
    SpeedButton1: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure tvMasterFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tvMaster2FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IsOrder : Integer;
  end;

var
  FrJualKasirOrder: TFrJualKasirOrder;

implementation

uses FrmSetForm;

{$R *.dfm}

procedure TFrJualKasirOrder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
           MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
  begin
    Action:=caFree;
  end
  else Action:=caNone;

end;

procedure TFrJualKasirOrder.FormDestroy(Sender: TObject);
begin
  FrJualKasirOrder:=nil;
end;

procedure TFrJualKasirOrder.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_ESCAPE then
   begin
      Close;
   end;
end;

procedure TFrJualKasirOrder.FormShow(Sender: TObject);
begin
  SpeedButton1.Click;
end;

procedure TFrJualKasirOrder.tvMasterFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  QuDetail1.Close;
  QuDetail1.Parameters[0].Value := QuMasterNOBUKTI.AsString;
  QuDetail1.Open;

end;

procedure TFrJualKasirOrder.tvMaster2FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  QuDetail2.Close;
  QuDetail2.Parameters[0].Value := QuMaster2NOBUKTI.AsString;
  QuDetail2.Open;
end;

procedure TFrJualKasirOrder.SpeedButton10Click(Sender: TObject);
begin
  if cxGrid1.ActiveLevel = cxGrid1Level1 then
    QuMaster.Next
  else
    QuMaster2.Next;
end;

procedure TFrJualKasirOrder.SpeedButton9Click(Sender: TObject);
begin
  if cxGrid1.ActiveLevel = cxGrid1Level1 then
    QuMaster.Prior
  else
    QuMaster2.Prior;
end;

procedure TFrJualKasirOrder.SpeedButton1Click(Sender: TObject);
begin
  QuMaster.Close;
  QuMaster.Parameters[0].Value := IsOrder;
  QuMaster.Open;
  QuMaster2.Close;
  QuMaster2.Parameters[0].Value := IsOrder;
  QuMaster2.Open;
end;

procedure TFrJualKasirOrder.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

end.
