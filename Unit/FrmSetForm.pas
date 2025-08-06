unit FrmSetForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxClasses, cxGridTableView, ComCtrls, ToolWin,
  ExtCtrls, cxGridBandedTableView, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  cxCustomData, cxGraphics, cxFilter, cxData, cxEdit, DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridDBTableView, cxControls,
  cxGridCustomView, cxGrid, ShellApi, cxGridDBBandedTableView;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrSetForm = class(TForm)
    PanelMain: TPanel;
    ToolBarMain: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton10: TToolButton;
    ToolButton7: TToolButton;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton4: TToolButton;
    ToolButton11: TToolButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxGridStyleHd: TcxGridTableViewStyleSheet;
    cxGridStyleDt: TcxGridTableViewStyleSheet;
    cxGridBandStyleHd: TcxGridBandedTableViewStyleSheet;
    cxGridBandStyleDt: TcxGridBandedTableViewStyleSheet;
    cxGridStyle: TcxGridTableViewStyleSheet;
    cxGridBandStyle: TcxGridBandedTableViewStyleSheet;
    PanelTransaksi: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridColumn;
    dxDBGrid1Column3: TdxDBGridColumn;
    dxDBGrid1Column4: TdxDBGridColumn;
    dxDBGrid1Column5: TdxDBGridColumn;
    dxDBGrid1Column6: TdxDBGridColumn;
    dxDBGrid1Column7: TdxDBGridColumn;
    dxDBGrid1Column8: TdxDBGridColumn;
    dxDBGrid1Column9: TdxDBGridColumn;
    dxDBGrid1Column10: TdxDBGridColumn;
    dxDBGrid1Column11: TdxDBGridColumn;
    dxDBGrid1Column12: TdxDBGridColumn;
    dxDBGrid1Column13: TdxDBGridColumn;
    dxDBGrid1Column14: TdxDBGridColumn;
    dxDBGrid1Column15: TdxDBGridColumn;
    dxDBGrid1Column16: TdxDBGridColumn;
    dxDBGrid1Column17: TdxDBGridColumn;
    dxDBGrid1Column18: TdxDBGridColumn;
    dxDBGrid1Column19: TdxDBGridColumn;
    dxDBGrid1Column20: TdxDBGridColumn;
    SaveDialog: TSaveDialog;
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBBandedTableView;
    tvMasterNobukti: TcxGridDBBandedColumn;
    tvMasterNourut: TcxGridDBBandedColumn;
    tvMasterTanggal: TcxGridDBBandedColumn;
    tvMasterNoPPL: TcxGridDBBandedColumn;
    tvMasterTglPPL: TcxGridDBBandedColumn;
    tvMasterKodeCustSupp: TcxGridDBBandedColumn;
    tvMasterNamaCustSupp: TcxGridDBBandedColumn;
    tvMasterIsCetak: TcxGridDBBandedColumn;
    tvMasterNilaiCetak: TcxGridDBBandedColumn;
    tvDetail: TcxGridDBBandedTableView;
    tvDetailNoBukti: TcxGridDBBandedColumn;
    tvDetailUrut: TcxGridDBBandedColumn;
    tvDetailUrutPO: TcxGridDBBandedColumn;
    tvDetailKodeBrg: TcxGridDBBandedColumn;
    tvDetailNamaBrg: TcxGridDBBandedColumn;
    tvDetailQnt: TcxGridDBBandedColumn;
    tvDetailSatuan: TcxGridDBBandedColumn;
    tvDetailNosat: TcxGridDBBandedColumn;
    tvDetailIsi: TcxGridDBBandedColumn;
    tvDetailKetDetail: TcxGridDBBandedColumn;
    tvDetailQntPO: TcxGridDBBandedColumn;
    tvDetailSatuanPO: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    FormMain: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  private
    { Private declarations }
  public
    { Public declarations }
    WarnaRowGridMain1, WarnaRowGridMain2, WarnaRowGridTrans1, WarnaRowGridTrans2,
    WarnaRowGridSub1, WarnaRowGridSub2, WarnaHeaderGrid: TColor;
    procedure SaveCxGridKeExcel(pCxGrid: TcxGridDBTableView; pDataSource: TDataSource; pKeyField, pNamaFile: String);
    procedure SaveCxGridKeExcel2(pCxGrid: TcxGridDBBandedTableView; pDataSource: TDataSource; pKeyField, pNamaFile: String);
  end;

var
  FrSetForm: TFrSetForm;

implementation

uses cxGridDBDataDefinitions;

{$R *.dfm}

procedure TFrSetForm.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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

procedure TFrSetForm.SaveCxGridKeExcel(pCxGrid: TcxGridDBTableView; pDataSource: TDataSource;  pKeyField, pNamaFile: String);
var xI: Integer;
begin
  dxDBGrid1.KeyField:=pKeyField;
  dxDBGrid1.DataSource:=pDataSource;
  for xI:=0 to pCxGrid.ColumnCount-1 do
  begin
    dxDBGrid1.Columns[xI].HeaderAlignment:=pCxGrid.Columns[xI].HeaderAlignmentHorz;
    dxDBGrid1.Columns[xI].FieldName:=pCxGrid.Columns[xI].DataBinding.FieldName;
    dxDBGrid1.Columns[xI].Width:=pCxGrid.Columns[xI].Width;
    dxDBGrid1.Columns[xI].Caption:=pCxGrid.Columns[xI].Caption;
    dxDBGrid1.Columns[xI].Visible:=pCxGrid.Columns[xI].Visible;
  end;
  for xI:=pCxGrid.ColumnCount to dxDBGrid1.ColumnCount-1 do
  begin
    dxDBGrid1.Columns[xI].Visible:=False;
  end;

  //for xI:=0 to pCxGrid.DataController.Summary.FooterSummaryItems.Count-1 do
  //begin
    //dxDBGrid1.ColumnByFieldName(pCxGrid.DataController.Summary.FooterSummaryItems[xI].Field.DataController.).SummaryFooterType:=pCxGrid.DataController.Summary.FooterSummaryItems[xI].Field;
  //end;
  Save('xls', 'Microsoft Excel (*.xls)|*.xls', pNamaFile, dxDBGrid1.SaveToXLS);
  ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
end;

procedure TFrSetForm.SaveCxGridKeExcel2(pCxGrid: TcxGridDBBandedTableView; pDataSource: TDataSource;  pKeyField, pNamaFile: String);
var xI: Integer;
begin
  dxDBGrid1.KeyField:=pKeyField;
  dxDBGrid1.DataSource:=pDataSource;
  for xI:=0 to pCxGrid.ColumnCount-1 do
  begin
    dxDBGrid1.Columns[xI].HeaderAlignment:=pCxGrid.Columns[xI].HeaderAlignmentHorz;
    dxDBGrid1.Columns[xI].FieldName:=pCxGrid.Columns[xI].DataBinding.FieldName;
    dxDBGrid1.Columns[xI].Width:=pCxGrid.Columns[xI].Width;
    dxDBGrid1.Columns[xI].Caption:=pCxGrid.Columns[xI].Caption;
    dxDBGrid1.Columns[xI].Visible:=pCxGrid.Columns[xI].Visible;
  end;
  for xI:=pCxGrid.ColumnCount to dxDBGrid1.ColumnCount-1 do
  begin
    dxDBGrid1.Columns[xI].Visible:=False;
  end;

  //for xI:=0 to pCxGrid.DataController.Summary.FooterSummaryItems.Count-1 do
  //begin
    //dxDBGrid1.ColumnByFieldName(pCxGrid.DataController.Summary.FooterSummaryItems[xI].Field.DataController.).SummaryFooterType:=pCxGrid.DataController.Summary.FooterSummaryItems[xI].Field;
  //end;
  Save('xls', 'Microsoft Excel (*.xls)|*.xls', pNamaFile, dxDBGrid1.SaveToXLS);
  ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
end;

procedure TFrSetForm.FormCreate(Sender: TObject);
begin
  //WarnaRowGridMain1:=$009CF5C0;
  //WarnaRowGridMain2:=$00C3FFEC;
  //WarnaRowGridTrans1:=$00E5EEE3;
  //WarnaRowGridTrans2:=$00C3FFEC;
  //WarnaRowGridSub1:=$00D6E5EC;
  //WarnaRowGridSub2:=$00C3FFEC;
  WarnaRowGridMain1:=$00efd7c9;
  WarnaRowGridMain2:=$00ffefe1;
  WarnaRowGridTrans1:=$00efd7c9;
  WarnaRowGridTrans2:=$00ffefe1;
  WarnaRowGridSub1:=$00efd7c9;
  WarnaRowGridSub2:=$00ffefe1;
  WarnaHeaderGrid:=$00F1927D;
  cxStyle1.Color:=WarnaHeaderGrid;
  cxStyle6.Color:=WarnaHeaderGrid;
  cxStyle2.Color:=$00A6D0E2;
  cxStyle5.Color:=WarnaRowGridMain1;
  cxStyle4.Color:=WarnaRowGridMain2;
  //PanelTransaksi.Color:=$0067C0A0;
  PanelTransaksi.Color:=$00efd7c9;
  Color:=$00efd7c9;
  //Panel2.Color:=$0067C0A0;
  //Panel3.Color:=$0067C0A0;
end;

end.
