unit FrmMainJadwalProduksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  StdCtrls, ExtCtrls, Menus, dxGridMenus, dxDBTLCl, dxGrClms,shellapi, Grids,
  Buttons, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxEdit, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, frxDesgn, frxClass, frxDMPExport, frxDBSet,
  cxGridBandedTableView, cxGridDBBandedTableView, Mask, ToolEdit;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrMainJadwalProduksi = class(TForm)
    ToolBar1: TToolBar;
    PopupMenu1: TPopupMenu;
    ExportExcel1: TMenuItem;
    N1: TMenuItem;
    ShowGrid1: TMenuItem;
    ShowHeader1: TMenuItem;
    Show1: TMenuItem;
    N2: TMenuItem;
    AutoFilter1: TMenuItem;
    ToolButton9: TToolButton;
    SaveDialog: TSaveDialog;
    MultiSelect1: TMenuItem;
    Sp_Batal: TADOStoredProc;
    dxDBGrid1: TdxDBGrid;
    PopupMenu2: TPopupMenu;
    TampilValid: TMenuItem;
    TampilBatal: TMenuItem;
    DsMaster: TDataSource;
    QuMaster: TADOQuery;
    Panel1: TPanel;
    dxDBGrid1Kodebrg: TdxDBGridMaskColumn;
    dxDBGrid1Qnt: TdxDBGridMaskColumn;
    dxDBGrid1Harga: TdxDBGridMaskColumn;
    dxDBGrid1DiscP1: TdxDBGridMaskColumn;
    dxDBGrid1DiscP2: TdxDBGridMaskColumn;
    dxDBGrid1discP3: TdxDBGridMaskColumn;
    dxDBGrid1DiscP4: TdxDBGridMaskColumn;
    dxDBGrid1Ndpp: TdxDBGridMaskColumn;
    dxDBGrid1NPpn: TdxDBGridMaskColumn;
    dxDBGrid1NNet: TdxDBGridMaskColumn;
    dxDBGrid1Namabrg: TdxDBGridMaskColumn;
    dxDBGrid1Satuan: TdxDBGridMaskColumn;
    dxDBGrid1Kodelokasi: TdxDBGridMaskColumn;
    dxDBGrid1NamaGdg: TdxDBGridMaskColumn;
    dxDBGrid1GroupNoBukti: TdxDBGridMaskColumn;
    QuDetail1: TADOQuery;
    DsDetail1: TDataSource;
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBTableView;
    tvDetail: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    tvDetailNoBukti: TcxGridDBColumn;
    tvDetailUrut: TcxGridDBColumn;
    tvDetailKodeBrg: TcxGridDBColumn;
    tvDetailNamaBrg: TcxGridDBColumn;
    tvDetailQnt: TcxGridDBColumn;
    tvDetailNoSat: TcxGridDBColumn;
    tvDetailIsi: TcxGridDBColumn;
    tvDetailSatuan: TcxGridDBColumn;
    QuDetail1NoBukti: TStringField;
    QuDetail1Urut: TIntegerField;
    QuDetail1KodeBrg: TStringField;
    QuDetail1NamaBrg: TStringField;
    QuDetail1Qnt: TBCDField;
    QuDetail1NoSat: TWordField;
    QuDetail1Isi: TBCDField;
    QuDetail1Satuan: TStringField;
    frxReport1: TfrxReport;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxDBDataset1: TfrxDBDataset;
    frxDataPerusahaan: TfrxDBDataset;
    QuBppB: TADOQuery;
    QuBppBKODEBRG: TStringField;
    QuBppBNAMABRG: TStringField;
    QuBppBSAT1: TStringField;
    QuBppBStockR: TBCDField;
    QuBppBOutPO: TBCDField;
    QuBppBOutSPK: TBCDField;
    QuBppBStockAV: TBCDField;
    QuBppBRowNum: TLargeintField;
    dsBppB: TDataSource;
    QuMasterTANGGAL: TDateTimeField;
    QuMasterJAMAWAL: TDateTimeField;
    QuMasterJAMAKHIR: TDateTimeField;
    QuMasterKodePrs: TStringField;
    QuMasterKODEMSN: TStringField;
    QuMasterNOSPK: TStringField;
    QuMasterKetProses: TStringField;
    QuMasterKetMesin: TStringField;
    tvMasterTANGGAL: TcxGridDBColumn;
    tvMasterJAMAWAL: TcxGridDBColumn;
    tvMasterJAMAKHIR: TcxGridDBColumn;
    tvMasterKodePrs: TcxGridDBColumn;
    tvMasterKODEMSN: TcxGridDBColumn;
    tvMasterNOSPK: TcxGridDBColumn;
    tvMasterKetProses: TcxGridDBColumn;
    tvMasterKetMesin: TcxGridDBColumn;
    Panel2: TPanel;
    Label42: TLabel;
    Label1: TLabel;
    Label13: TLabel;
    Label2: TLabel;
    TglAwal: TDateEdit;
    TglAkhir: TDateEdit;
    kodeMSn: TEdit;
    KodePRS: TEdit;
    BitBtn2: TBitBtn;
    QuMaster2: TADOQuery;
    DsMaster2: TDataSource;
    QuMaster2TANGGAL: TDateTimeField;
    QuMaster2KodePrs: TStringField;
    QuMaster2KODEMSN: TStringField;
    QuMaster2NOSPK: TStringField;
    QuMaster2KetProses: TStringField;
    QuMaster2KetMesin: TStringField;
    cxGrid1Level2: TcxGridLevel;
    tvMaster2: TcxGridDBTableView;
    tvMaster2TANGGAL: TcxGridDBColumn;
    tvMaster2KodePrs: TcxGridDBColumn;
    tvMaster2KODEMSN: TcxGridDBColumn;
    tvMaster2NOSPK: TcxGridDBColumn;
    tvMaster2KetProses: TcxGridDBColumn;
    tvMaster2KetMesin: TcxGridDBColumn;
    tvMaster2Jam0: TcxGridDBColumn;
    tvMaster2Jam1: TcxGridDBColumn;
    tvMaster2Jam2: TcxGridDBColumn;
    tvMaster2Jam3: TcxGridDBColumn;
    tvMaster2Jam4: TcxGridDBColumn;
    tvMaster2Jam5: TcxGridDBColumn;
    tvMaster2Jam6: TcxGridDBColumn;
    tvMaster2Jam7: TcxGridDBColumn;
    tvMaster2Jam8: TcxGridDBColumn;
    tvMaster2Jam9: TcxGridDBColumn;
    tvMaster2Jam10: TcxGridDBColumn;
    tvMaster2Jam11: TcxGridDBColumn;
    tvMaster2Jam12: TcxGridDBColumn;
    tvMaster2Jam13: TcxGridDBColumn;
    tvMaster2Jam14: TcxGridDBColumn;
    tvMaster2Jam15: TcxGridDBColumn;
    tvMaster2Jam16: TcxGridDBColumn;
    tvMaster2Jam17: TcxGridDBColumn;
    tvMaster2Jam18: TcxGridDBColumn;
    tvMaster2Jam19: TcxGridDBColumn;
    tvMaster2Jam20: TcxGridDBColumn;
    tvMaster2Jam21: TcxGridDBColumn;
    tvMaster2Jam22: TcxGridDBColumn;
    tvMaster2Jam23: TcxGridDBColumn;
    tvMaster3: TcxGridDBBandedTableView;
    QuMaster2Jam0A: TIntegerField;
    QuMaster2Jam0B: TIntegerField;
    QuMaster2Jam1A: TIntegerField;
    QuMaster2Jam1B: TIntegerField;
    QuMaster2Jam2A: TIntegerField;
    QuMaster2Jam2B: TIntegerField;
    QuMaster2Jam3A: TIntegerField;
    QuMaster2Jam3B: TIntegerField;
    QuMaster2Jam4A: TIntegerField;
    QuMaster2Jam4B: TIntegerField;
    QuMaster2Jam5A: TIntegerField;
    QuMaster2Jam5B: TIntegerField;
    QuMaster2Jam6A: TIntegerField;
    QuMaster2Jam6B: TIntegerField;
    QuMaster2Jam7A: TIntegerField;
    QuMaster2Jam7B: TIntegerField;
    QuMaster2Jam8A: TIntegerField;
    QuMaster2Jam8B: TIntegerField;
    QuMaster2Jam9A: TIntegerField;
    QuMaster2Jam9B: TIntegerField;
    QuMaster2Jam10A: TIntegerField;
    QuMaster2Jam10B: TIntegerField;
    QuMaster2Jam11A: TIntegerField;
    QuMaster2Jam11B: TIntegerField;
    QuMaster2Jam12A: TIntegerField;
    QuMaster2Jam12B: TIntegerField;
    QuMaster2Jam13A: TIntegerField;
    QuMaster2Jam13B: TIntegerField;
    QuMaster2Jam14A: TIntegerField;
    QuMaster2Jam14B: TIntegerField;
    QuMaster2Jam15A: TIntegerField;
    QuMaster2Jam15B: TIntegerField;
    QuMaster2Jam16A: TIntegerField;
    QuMaster2Jam16B: TIntegerField;
    QuMaster2Jam17A: TIntegerField;
    QuMaster2Jam17B: TIntegerField;
    QuMaster2Jam18A: TIntegerField;
    QuMaster2Jam18B: TIntegerField;
    QuMaster2Jam19A: TIntegerField;
    QuMaster2Jam19B: TIntegerField;
    QuMaster2Jam20A: TIntegerField;
    QuMaster2Jam20B: TIntegerField;
    QuMaster2Jam21A: TIntegerField;
    QuMaster2Jam21B: TIntegerField;
    QuMaster2Jam22A: TIntegerField;
    QuMaster2Jam22B: TIntegerField;
    QuMaster2Jam23A: TIntegerField;
    QuMaster2Jam23B: TIntegerField;
    tvMaster3TANGGAL: TcxGridDBBandedColumn;
    tvMaster3KodePrs: TcxGridDBBandedColumn;
    tvMaster3KODEMSN: TcxGridDBBandedColumn;
    tvMaster3NOSPK: TcxGridDBBandedColumn;
    tvMaster3KetProses: TcxGridDBBandedColumn;
    tvMaster3KetMesin: TcxGridDBBandedColumn;
    tvMaster3Jam0A: TcxGridDBBandedColumn;
    tvMaster3Jam0B: TcxGridDBBandedColumn;
    tvMaster3Jam1A: TcxGridDBBandedColumn;
    tvMaster3Jam1B: TcxGridDBBandedColumn;
    tvMaster3Jam2A: TcxGridDBBandedColumn;
    tvMaster3Jam2B: TcxGridDBBandedColumn;
    tvMaster3Jam3A: TcxGridDBBandedColumn;
    tvMaster3Jam3B: TcxGridDBBandedColumn;
    tvMaster3Jam4A: TcxGridDBBandedColumn;
    tvMaster3Jam4B: TcxGridDBBandedColumn;
    tvMaster3Jam5A: TcxGridDBBandedColumn;
    tvMaster3Jam5B: TcxGridDBBandedColumn;
    tvMaster3Jam6A: TcxGridDBBandedColumn;
    tvMaster3Jam6B: TcxGridDBBandedColumn;
    tvMaster3Jam7A: TcxGridDBBandedColumn;
    tvMaster3Jam7B: TcxGridDBBandedColumn;
    tvMaster3Jam8A: TcxGridDBBandedColumn;
    tvMaster3Jam8B: TcxGridDBBandedColumn;
    tvMaster3Jam9A: TcxGridDBBandedColumn;
    tvMaster3Jam9B: TcxGridDBBandedColumn;
    tvMaster3Jam10A: TcxGridDBBandedColumn;
    tvMaster3Jam10B: TcxGridDBBandedColumn;
    tvMaster3Jam11A: TcxGridDBBandedColumn;
    tvMaster3Jam11B: TcxGridDBBandedColumn;
    tvMaster3Jam12A: TcxGridDBBandedColumn;
    tvMaster3Jam12B: TcxGridDBBandedColumn;
    tvMaster3Jam13A: TcxGridDBBandedColumn;
    tvMaster3Jam13B: TcxGridDBBandedColumn;
    tvMaster3Jam14A: TcxGridDBBandedColumn;
    tvMaster3Jam14B: TcxGridDBBandedColumn;
    tvMaster3Jam15A: TcxGridDBBandedColumn;
    tvMaster3Jam15B: TcxGridDBBandedColumn;
    tvMaster3Jam16A: TcxGridDBBandedColumn;
    tvMaster3Jam16B: TcxGridDBBandedColumn;
    tvMaster3Jam17A: TcxGridDBBandedColumn;
    tvMaster3Jam17B: TcxGridDBBandedColumn;
    tvMaster3Jam18A: TcxGridDBBandedColumn;
    tvMaster3Jam18B: TcxGridDBBandedColumn;
    tvMaster3Jam19A: TcxGridDBBandedColumn;
    tvMaster3Jam19B: TcxGridDBBandedColumn;
    tvMaster3Jam20A: TcxGridDBBandedColumn;
    tvMaster3Jam20B: TcxGridDBBandedColumn;
    tvMaster3Jam21A: TcxGridDBBandedColumn;
    tvMaster3Jam21B: TcxGridDBBandedColumn;
    tvMaster3Jam22A: TcxGridDBBandedColumn;
    tvMaster3Jam22B: TcxGridDBBandedColumn;
    tvMaster3Jam23A: TcxGridDBBandedColumn;
    tvMaster3Jam23B: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GetData(bulan,tahun:integer);
    procedure tvMasterFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure KodePRSEnter(Sender: TObject);
    procedure KodePRSExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure kodeMSnKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tvMaster2Jam0CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGrid1ActiveTabChanged(Sender: TcxCustomGrid;
      ALevel: TcxGridLevel);
  private
    { Private declarations }
    mValid: Boolean;    
  public
    { Public declarations }
    mPosisi,MenuSPK : string;
    IsTambah,IsKoreksi,IsHapus, IsCetak, ModalKoreksi, IsExcel : Boolean;
    SortBy,Prioritas :String;
    xQnt,xDiskon,xDPP,xPPN,xJumlah : Real;
    SPKOL : Integer;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrMainJadwalProduksi: TFrMainJadwalProduksi;
  S: array[0..255] of char;

implementation

uses MyModul, MyProcedure, MyGlobal, FrmBrows;
{$R *.dfm}

procedure TFrMainJadwalProduksi.GetData(bulan,tahun:integer);
begin
  with QuMaster do
  begin
    Close;
    SQL.Strings[2]:='select @Tahun='+IntToStr(tahun)+', @Bulan='+IntToStr(bulan);
    Open;
  end;
{
  with QuBppB do
  begin
    Close;
    SQL.Strings[2]:='select @Tahun='+IntToStr(tahun)+', @Bulan='+IntToStr(bulan);
    Open;
  end;
}
end;

procedure TFrMainJadwalProduksi.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do
  begin
    DefaultExt := ADefaultExt;
    Filter := AFilter;
    FileName := AFileName;
    if Execute then
      AMethod(FileName, true);
  end;
end;


procedure TFrMainJadwalProduksi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
           MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
  begin
    //if Application.FindComponent('FrJadwalProduksi')<>nil then
    //begin
    //   MessageDlg('Modul '+FrJadwalProduksi.Caption+' belum ditutup !',mtWarning,[mbok],0);
    //   Action := caNone
    //end
    //else
      Action:=caFree;
  end
  else Action:=caNone;
end;

procedure TFrMainJadwalProduksi.FormDestroy(Sender: TObject);
begin
  FrMainJadwalProduksi:=nil;
end;

procedure TFrMainJadwalProduksi.FormShow(Sender: TObject);
begin
  TglAwal.Date := Now;
  TglAkhir.Date:= Now;
  ActiveControl:= TglAwal;
end;

procedure TFrMainJadwalProduksi.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrMainJadwalProduksi.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_ESCAPE then
   begin
      Close;
   end else
   if Key=VK_RETURN then
   begin
       //ToolButton2.Click;
     SendMessage(Handle,WM_NEXTDLGCTL,0,0);       
   end
   else if key=VK_INSERT then
   begin
       //ToolButton1.Click;
   end
   else if key=VK_Delete then
   begin
        //ToolButton3.Click;
   end;
end;

procedure TFrMainJadwalProduksi.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

procedure TFrMainJadwalProduksi.tvMasterFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
with QuDetail1 do
  begin
    Close;
    Open;
  end;
end;

procedure TFrMainJadwalProduksi.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
if CompareText(varName,'iduser')=0 then
        value:=IDUser;
end;

procedure TFrMainJadwalProduksi.KodePRSEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrMainJadwalProduksi.KodePRSExit(Sender: TObject);
begin
  if mValid then
  begin
{
    if (Length(KodeBrg.Text)<>0) and
      (DataBersyarat('select * from vwBarang where KodeBrg=:0',[KodeBrg.Text],DM.QuCari)=True) then
    begin
      KodeBrg.Text :=DM.QuCari.FieldByname('KodeBrg').AsString;
      LNamaBrg.Caption:='[ '+DM.QuCari.FieldByname('NamaBrg').AsString+' ]';
      LSatuan.Caption:=DM.QuCari.FieldByName('SAT1').AsString;
    end
    else
}
    begin
      KodeBrows:=91113;
      Application.CreateForm(TFrBrows, FrBrows);
      FrBrows.ShowModal;
      if FrBrows.ModalResult=mrOk then
      begin
        KodePrs.Text :=FrBrows.QuBrows.FieldByname('KodePrs').AsString;
        //LPrs.Caption:='[ '+FrBrows.QuBrows.FieldByname('Keterangan').AsString+' ]';
        //LSatuan.Caption:=FrBrows.QuBrows.FieldByName('SAT1').AsString;
      end
      else
        ActiveControl:=KodePrs;
    end;
  end;

end;

procedure TFrMainJadwalProduksi.BitBtn2Click(Sender: TObject);
begin
  if cxGrid1.ActiveLevel = cxGrid1Level1 then
    begin
      with QuMaster do
        begin
          Close;
          Parameters[0].Value := TglAwal.Date;
          Parameters[1].Value := TglAkhir.Date;
          Parameters[2].Value := KodePRS.Text;
          Parameters[3].Value := kodeMSn.Text;
          Open;
        end;
    end
  else if cxGrid1.ActiveLevel = cxGrid1Level2 then
    begin
      with QuMaster2 do
        begin
          Close;
          Parameters[0].Value := TglAwal.Date;
          Parameters[1].Value := TglAkhir.Date;
          Parameters[2].Value := KodePRS.Text;
          Parameters[3].Value := kodeMSn.Text;
          Open;
        end;
    end  
end;

procedure TFrMainJadwalProduksi.kodeMSnKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

  KodeBrows:=91114;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    kodeMSn.Text :=FrBrows.QuBrows.FieldByname('KodeMsn').AsString;
    //LPrs.Caption:='[ '+FrBrows.QuBrows.FieldByname('Keterangan').AsString+' ]';
    //LSatuan.Caption:=FrBrows.QuBrows.FieldByName('SAT1').AsString;
  end
  else
    ActiveControl:=kodeMSn;

end;

procedure TFrMainJadwalProduksi.tvMaster2Jam0CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if(AViewInfo.Value) = 1 then
    begin
      ACanvas.Canvas.Brush.Color := clRed;
      ACanvas.Font.Color := clRed;
    end
  else
    begin
      ACanvas.Canvas.Brush.Color := clGreen;
      ACanvas.Font.Color := clGreen;
    end;
end;

procedure TFrMainJadwalProduksi.cxGrid1ActiveTabChanged(
  Sender: TcxCustomGrid; ALevel: TcxGridLevel);
begin
  if cxGrid1.ActiveLevel = cxGrid1Level1 then
    begin
{
      TglAwal.Date := Now;
      TglAkhir.Date:= Now;
      KodePRS.Text := '';
      kodeMSn.Text := '';
}
      ActiveControl:= TglAwal;

      TglAkhir.Visible := True;
      Label1.Visible := True;
    end
  else
    begin
{
      TglAwal.Date := Now;
      TglAkhir.Date:= Now;
      KodePRS.Text := '';
      kodeMSn.Text := '';
}
      ActiveControl:= TglAwal;

      TglAkhir.Visible := False;
      Label1.Visible := False;
    end;
end;

end.
