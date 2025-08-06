unit FrmDebetB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, wwdblook, Wwdbigrd, Wwdbgrid,
  DBCtrls, ppBands, ppCtrls, ppDB, jpeg, ppPrnabl, ppClass, ppCache,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, ImgList, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ppVar,variants, dxEditor,
  dxExEdtr, dxEdLib, ppStrtch, ppMemo,Dateutils, ppModule, raCodMod,
  frxClass, frxDBSet, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, dxmdaset;

type
  TFrDebetB = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    PanelShow1: TPanel;
    TambahBtn: TSpeedButton;
    QuBeli: TADOQuery;
    QuBeliPilih: TBooleanField;
    QuBeliNilai: TBCDField;
    QuBelikodeVls: TStringField;
    QuBeliKurs: TBCDField;
    DsQuBeli: TDataSource;
    QuBeliNoFaktur: TStringField;
    QuBeliTanggal: TDateTimeField;
    QuBeliJatuhTempo: TDateTimeField;
    QuBeliSaldo: TBCDField;
    QuBeliSaldoD: TBCDField;
    dxMem: TdxMemData;
    dxMemPilih: TBooleanField;
    dxMemNoFaktur: TStringField;
    dxMemNilai: TFloatField;
    dxMemNilaiRp: TBCDField;
    dxMemKeterangan: TStringField;
    dxMemKodeVls: TStringField;
    dxMemKurs: TBCDField;
    dxMemTanggal: TDateTimeField;
    dxMemJatuhTempo: TDateTimeField;
    dxMemSaldo: TBCDField;
    dxMemSaldoD: TBCDField;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1RecId: TdxDBGridColumn;
    dxDBGrid1Pilih: TdxDBGridCheckColumn;
    dxDBGrid1NoFaktur: TdxDBGridMaskColumn;
    dxDBGrid1Tanggal: TdxDBGridDateColumn;
    dxDBGrid1JatuhTempo: TdxDBGridDateColumn;
    dxDBGrid1Nilai: TdxDBGridMaskColumn;
    dxDBGrid1SaldoD: TdxDBGridMaskColumn;
    dxDBGrid1KodeVls: TdxDBGridMaskColumn;
    dxDBGrid1Kurs: TdxDBGridMaskColumn;
    dxDBGrid1NilaiRp: TdxDBGridMaskColumn;
    dxDBGrid1Saldo: TdxDBGridMaskColumn;
    dxDBGrid1Keterangan: TdxDBGridMaskColumn;
    procedure KodeBrgEnter(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TambahBtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure dxDBGrid1Edited(Sender: TObject; Node: TdxTreeListNode);

  private
    { Private declarations }
  public
    { Public declarations }
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel,xmodalkoreksi,XStatus,mExit: Boolean;
    DiskonTotal,IsiBrg:real;
    YY,MM,DD : Word;
    Procedure TampilData;
    Procedure AmbilData;
    Procedure UpdateData;
    procedure ClearPanelDetail;
    procedure UpdateDataBeli(Choice:Char);
  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrDebetB: TFrDebetB;
  mValid: Boolean;
  mBukti,Sat:String;
  mUrut:Integer;
  TipeTrans,PlusPPN,Nomor,Model:String;
  mBulan,mTahun:string;
  S:array[0..255]of char;
  BM : TBookmark;
implementation
uses FrmBrows,MyProcedure,MyGlobal,MyModul,FrmDebetN;
{$R *.DFM}

procedure TFrDebetB.UpdateDataBeli(Choice:Char);
begin

end;

procedure TFrDebetB.ClearPanelDetail;
begin

end;

procedure TFrDebetB.UpdateData;
begin

end;

Procedure TFrDebetB.AmbilData;
begin

end;

Procedure TFrDebetB.TampilData;
Begin
  with QuBeli do
  begin
    close;
    SQl.Strings[1]:='Select @Awal='+QuotedStr(FrDebetN.KodeSupp.Text);
    Open;
  end;
  dxMem.Close;
  dxMem.Open;
  While Not QuBeli.Eof do
  Begin
   dxMem.Append;
   dxMemNoFaktur.AsString:=QuBeliNoFaktur.AsString;
   dxMemSaldo.AsFloat:=QuBeliSaldo.AsFloat;
   dxMemSaldoD.AsFloat:=QuBeliSaldoD.AsFloat;
   dxMemNilai.Value :=0.00;
   dxMemNilaiRp.Value :=0.00;
   dxMemKeterangan.Value:='';
   dxMemKodeVls.Value := QuBelikodeVls.AsString;
   dxMemKurs.Value := QuBeliKurs.Value;
   dxMemTanggal.Value:=QuBeliTanggal.AsDateTime;
   dxMemJatuhTempo.Value:=QuBeliJatuhTempo.AsDateTime;
   dxMem.Post;
   QuBeli.Next;
  end;
dxMem.First;
end;

procedure TFrDebetB.KodeBrgEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrDebetB.FormDestroy(Sender: TObject);
begin
FrDebetB:=nil;
end;

procedure TFrDebetB.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if ANode.HasChildren then
    Exit;

  if not AFocused then
  begin
     if ANode.Values[6]=0 then
         AColor:=clRed
       else
         AColor:=clWhite;
  end;
end;

procedure TFrDebetB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if mExit=true then
begin
  Action:=cafree;
end
else
begin
   Action:=caNone;
end;

end;

procedure TFrDebetB.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Escape then
  begin
     Close;
  end;
end;

procedure TFrDebetB.TambahBtnClick(Sender: TObject);
begin
  //
  dxMem.First;
  while Not dxMem.Eof do
  Begin
   if (dxMemPilih.AsBoolean) and (dxMemNilai.AsFloat<>0.00)Then
    Begin
     With FrDebetN.Sp_Beli do
      begin
       Parameters.Refresh;
       Parameters[1].Value:='I';
       Parameters[2].Value:=FrDebetN.NoBukti.Text;
       Parameters[3].Value:=FrDebetN.Tanggal.Date;
       Parameters[4].Value:=dxMemKeterangan.AsString;
       Parameters[5].Value:=0;
       Parameters[6].Value:=dxMemNoFaktur.AsString;
       Parameters[7].Value:=FrDebetN.KodeSupp.Text;
       Parameters[8].Value:=dxMemNilai.AsFloat;
       Parameters[9].Value:=dxMemKodeVls.Value;
       Parameters[10].Value:=dxMemKurs.Value;
       Parameters[11].Value:=dxMemNilaiRp.Value;
       Parameters[12].Value:=FrDebetN.NoUrut.Text;
       try
          ExecProc;
       except
          MsgProsesGagal('I');
       end;
     end;
    end;
   dxMem.Next;
  end;
  mExit:=True;
  Close;
  FrDebetN.TampilData(FrDebetN.NoBukti.Text);
end;

procedure TFrDebetB.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=vk_Return then
     SendMessage(Handle,WM_NEXTDLGCTL,0,0)
     else
     if key=VK_ESCAPE then
      begin
      mexit:=true;
      Close;
     end;
end;

procedure TFrDebetB.FormShow(Sender: TObject);
begin
TampilData;
end;

procedure TFrDebetB.dxDBGrid1Edited(Sender: TObject;
  Node: TdxTreeListNode);
begin
  with dxMem do
  begin
    edit;
    dxMemNilaiRp.Value := dxDBGrid1Nilai.Field.Value*dxDBGrid1Kurs.Field.Value;
    Post;
    Refresh;
  end;
end;

end.
