unit FrmDPPOut;

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
  cxGrid, dxmdaset, cxGridBandedTableView, cxGridDBBandedTableView;

type
  TFrDPPOut = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    QuBeli: TADOQuery;
    DsQuBeli: TDataSource;
    Panel2: TPanel;
    Panel4: TPanel;
    PanelShow1: TPanel;
    TambahBtn: TSpeedButton;
    GPiutang: TcxGrid;
    vwPiutang: TcxGridDBTableView;
    LvlPiutang: TcxGridLevel;
    dxMem: TdxMemData;
    dxMemPilih: TBooleanField;
    QuBeliPilih: TBooleanField;
    QuBeliNoBukti: TStringField;
    QuBeliNDPP: TFloatField;
    QuBeliNPPN: TFloatField;
    QuBeliNNET: TFloatField;
    vwPiutangPilih: TcxGridDBColumn;
    vwPiutangNoBukti: TcxGridDBColumn;
    vwPiutangNDPP: TcxGridDBColumn;
    vwPiutangNPPN: TcxGridDBColumn;
    vwPiutangNNET: TcxGridDBColumn;
    dxMemNoBukti: TStringField;
    dxMemNDPP: TFloatField;
    dxMemNPPN: TFloatField;
    dxMemNNET: TFloatField;
    QuBeliFakturSupp: TStringField;
    dxMemFakturSupp: TStringField;
    vwPiutangDBColumn1: TcxGridDBColumn;
    GPiutangLevel1: TcxGridLevel;
    tvDetail: TcxGridDBBandedTableView;
    QuDetail: TADOQuery;
    DSDetail: TDataSource;
    QuDetailKodebrg: TStringField;
    QuDetailQnt: TBCDField;
    QuDetailSatuan: TStringField;
    QuDetailNosat: TWordField;
    QuDetailIsi: TBCDField;
    QuDetailHarga: TBCDField;
    QuDetailDiscP: TBCDField;
    QuDetailDiscTot: TBCDField;
    QuDetailTotal: TBCDField;
    QuDetailTotalDPP: TFloatField;
    QuDetailTotalPPn: TFloatField;
    QuDetailTotalNetto: TFloatField;
    QuDetailNAMABRG: TStringField;
    tvDetailKodebrg: TcxGridDBBandedColumn;
    tvDetailQnt: TcxGridDBBandedColumn;
    tvDetailSatuan: TcxGridDBBandedColumn;
    tvDetailHarga: TcxGridDBBandedColumn;
    tvDetailDiscTot: TcxGridDBBandedColumn;
    tvDetailTotal: TcxGridDBBandedColumn;
    tvDetailTotalDPP: TcxGridDBBandedColumn;
    tvDetailTotalPPn: TcxGridDBBandedColumn;
    tvDetailTotalNetto: TcxGridDBBandedColumn;
    tvDetailNAMABRG: TcxGridDBBandedColumn;
    QuDetailNobukti: TStringField;
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
    procedure vwPiutangFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);

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
  FrDPPOut: TFrDPPOut;
  mValid: Boolean;
  mBukti,Sat:String;
  mUrut:Integer;
  TipeTrans,PlusPPN,Nomor,Model:String;
  mBulan,mTahun:string;
  S:array[0..255]of char;
  BM : TBookmark;
implementation
uses FrmBrows,MyProcedure,MyGlobal,MyModul,FrmInv;
{$R *.DFM}

procedure TFrDPPOut.UpdateDataBeli(Choice:Char);
begin

end;

procedure TFrDPPOut.ClearPanelDetail;
begin

end;

procedure TFrDPPOut.UpdateData;
begin

end;

Procedure TFrDPPOut.AmbilData;
begin

end;

Procedure TFrDPPOut.TampilData;
Begin
  with QuBeli do
  begin
    close;
    SQl.Strings[1]:='Select @Awal='+QuotedStr(FrInv.KodeSupp.Text)+',@NoPO='+QuotedStr(FrInv.NoPO.Text);
    Open;
  end;
  dxMem.Close;
  dxMem.Open;
  While Not QuBeli.Eof do
  Begin
   dxMem.Append;
   dxMemNoBukti.AsString:=QuBeliNoBukti.AsString;
   dxMemFakturSupp.AsString:=QuBeliFakturSupp.AsString;
   dxMemNDPP.AsFloat:=QuBeliNDPP.AsFloat;
   dxMemNPPN.AsFloat:=QuBeliNPPN.AsFloat;
   dxMemNNET.AsFloat:=QuBeliNNET.AsFloat;
   dxMem.Post;
   QuBeli.Next;
  end;
dxMem.First;
end;

procedure TFrDPPOut.KodeBrgEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrDPPOut.FormDestroy(Sender: TObject);
begin
FrDPPOut:=nil;
end;

procedure TFrDPPOut.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrDPPOut.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFrDPPOut.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Escape then
  begin
     Close;
  end;
end;

procedure TFrDPPOut.TambahBtnClick(Sender: TObject);
begin
  //
  dxMem.First;
  while Not dxMem.Eof do
  Begin
   if dxMemPilih.AsBoolean Then
    Begin
     With FrInv.Sp_Beli do
      begin
       Parameters.Refresh;
       Parameters[1].Value:='I';
       Parameters[2].Value:=FrInv.NoBukti.Text;
       Parameters[3].Value:=FrInv.Tanggal.Date;
       Parameters[4].Value:=FrInv.Keterangan.Text;
       Parameters[5].Value:=0;
       Parameters[6].Value:=dxMemNoBukti.AsString;
       Parameters[7].Value:=FrInv.KodeSupp.Text;
       Parameters[8].Value:=FrInv.NoPO.Text;
       Parameters[9].Value:=FrInv.NoFaktur.Text;
       Parameters[10].Value:=FrInv.TglFaktur.Date;
       Parameters[11].Value:=FrInv.Valas.Text;
       Parameters[12].Value:=FrInv.Kurs.AsFloat;
       Parameters[13].Value:=FrInv.PPN.ItemIndex;
       Parameters[14].Value:=FrInv.TIPE.ItemIndex;
       Parameters[15].Value:=FrInv.Hari.AsInteger;
       Parameters[16].Value:=FrInv.nourut.Text ;
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
  FrInv.TampilData(FrInv.NoBukti.Text);
  FrInv.xmodalkoreksi:=true;
end;

procedure TFrDPPOut.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrDPPOut.FormShow(Sender: TObject);
begin
TampilData;
end;

procedure TFrDPPOut.vwPiutangFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  with QuDetail do
  begin
    close;
    Open;
  end;
end;

end.
