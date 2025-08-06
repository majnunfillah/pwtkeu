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
    QuMasterURUT: TIntegerField;
    QuMasterKodeBrg: TStringField;
    QuMasterKeterangan: TStringField;
    QuMasterIsSelesai: TBooleanField;
    QuMasterIsKirim: TBooleanField;
    QuMasterNAMABRG: TStringField;
    tvMasterURUT: TcxGridDBColumn;
    tvMasterKodeBrg: TcxGridDBColumn;
    tvMasterKeterangan: TcxGridDBColumn;
    tvMasterIsSelesai: TcxGridDBColumn;
    tvMasterIsKirim: TcxGridDBColumn;
    tvMasterNAMABRG: TcxGridDBColumn;
    QuMaster2URUT: TIntegerField;
    QuMaster2KodeBrg: TStringField;
    QuMaster2Keterangan: TStringField;
    QuMaster2IsSelesai: TBooleanField;
    QuMaster2IsKirim: TBooleanField;
    QuMaster2NAMABRG: TStringField;
    tvMaster2URUT: TcxGridDBColumn;
    tvMaster2KodeBrg: TcxGridDBColumn;
    tvMaster2Keterangan: TcxGridDBColumn;
    tvMaster2IsSelesai: TcxGridDBColumn;
    tvMaster2IsKirim: TcxGridDBColumn;
    tvMaster2NAMABRG: TcxGridDBColumn;
    QuMasterAlamat: TStringField;
    QuMasterTanggalAmbil: TDateTimeField;
    QuMasterTelepon: TStringField;
    QuMaster2Telepon: TStringField;
    QuMaster2Alamat: TStringField;
    QuMaster2TanggalAmbil: TDateTimeField;
    tvMasterAlamat: TcxGridDBColumn;
    tvMasterTanggalAmbil: TcxGridDBColumn;
    tvMasterTelepon: TcxGridDBColumn;
    tvMaster2Telepon: TcxGridDBColumn;
    tvMaster2Alamat: TcxGridDBColumn;
    tvMaster2TanggalAmbil: TcxGridDBColumn;
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
    procedure tvMasterIsSelesaiPropertiesEditValueChanged(Sender: TObject);
    procedure tvMasterIsKirimPropertiesEditValueChanged(Sender: TObject);
    procedure tvMaster2IsKirimPropertiesEditValueChanged(Sender: TObject);
    procedure tvMaster2IsSelesaiPropertiesEditValueChanged(
      Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IsOrder : Integer;
  end;

var
  FrJualKasirOrder: TFrJualKasirOrder;

implementation

uses FrmSetForm, MyProcedure, MyGlobal;

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
  if IsOrder = 1 then
    begin
      QuMasterIsSelesai.ReadOnly := True;
      QuMaster2IsSelesai.ReadOnly := True;
    end;

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
var yy,mm,dd :Word;
begin
  DecodeDate(Now, yy, mm, dd);

  QuMaster.Close;
  if IsOrder = 0 then
    begin
      QuMaster.SQL.Strings[3] := 'from dbJualTunai A';
      QuMaster.SQL.Strings[4] := 'left outer join dbJualTunaiDet B on B.NOBUKTI = A.NOBUKTI';
      QuMaster.SQL.Strings[10]:= '			select A.NOBUKTI from dbJualTunai A';
      QuMaster.SQL.Strings[11]:= '			left outer join dbJualTunaiDet B on B.NOBUKTI = A.NOBUKTI';
    end
  else
    begin
      QuMaster.SQL.Strings[3] := 'from dbPesanTunai A';
      QuMaster.SQL.Strings[4] := 'left outer join dbPesanTunaiDet B on B.NOBUKTI = A.NOBUKTI';
      QuMaster.SQL.Strings[10]:= '			select A.NOBUKTI from dbPesanTunai A';
      QuMaster.SQL.Strings[11]:= '			left outer join dbPesanTunaiDet B on B.NOBUKTI = A.NOBUKTI';

    end;

  QuMaster.Parameters[0].Value := IsOrder;
  QuMaster.Parameters[1].Value := PeriodThn;
  QuMaster.Parameters[2].Value := PeriodBln;
  QuMaster.Parameters[3].Value := dd;
  QuMaster.Open;

  QuMaster2.Close;
  if IsOrder = 0 then
    begin
      QuMaster2.SQL.Strings[3] := 'from dbJualTunai A';
      QuMaster2.SQL.Strings[4] := 'left outer join dbJualTunaiDet B on B.NOBUKTI = A.NOBUKTI';
      QuMaster2.SQL.Strings[10]:= '			select A.NOBUKTI from dbJualTunai A';
      QuMaster2.SQL.Strings[11]:= '			left outer join dbJualTunaiDet B on B.NOBUKTI = A.NOBUKTI';
    end
  else
    begin
      QuMaster2.SQL.Strings[3] := 'from dbPesanTunai A';
      QuMaster2.SQL.Strings[4] := 'left outer join dbPesanTunaiDet B on B.NOBUKTI = A.NOBUKTI';
      QuMaster2.SQL.Strings[10]:= '			select A.NOBUKTI from dbPesanTunai A';
      QuMaster2.SQL.Strings[11]:= '			left outer join dbPesanTunaiDet B on B.NOBUKTI = A.NOBUKTI';

    end;

  QuMaster2.Parameters[0].Value := IsOrder;
  QuMaster2.Parameters[1].Value := PeriodThn;
  QuMaster2.Parameters[2].Value := PeriodBln;
  QuMaster2.Parameters[3].Value := dd;
  QuMaster2.Open;

  ActiveControl := cxGrid1;
end;

procedure TFrJualKasirOrder.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrJualKasirOrder.tvMasterIsSelesaiPropertiesEditValueChanged(
  Sender: TObject);
begin
  if IsOrder = 0 then
    begin
      QuMaster.Post;
      SpeedButton1.Click;
    end
  else
    begin
      ShowMessage('Modul Pesanan, tidak dapat merubah status SELESAI !');
      SpeedButton1.Click;
    end;
end;

procedure TFrJualKasirOrder.tvMasterIsKirimPropertiesEditValueChanged(
  Sender: TObject);
begin
  if QuMasterIsSelesai.AsBoolean then
    begin
      QuMaster.Post;
      SpeedButton1.Click;
    end
  else
    begin
      //ShowMessage('Belum Selesai !');
      QuMasterIsKirim.AsBoolean := False;
    end;
end;

procedure TFrJualKasirOrder.tvMaster2IsKirimPropertiesEditValueChanged(
  Sender: TObject);
begin
  QuMaster2.Post;
  SpeedButton1.Click;
end;

procedure TFrJualKasirOrder.tvMaster2IsSelesaiPropertiesEditValueChanged(
  Sender: TObject);
begin
  QuMaster2.Post;
  SpeedButton1.Click;
end;

end.
