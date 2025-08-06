unit FrmBOM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  StdCtrls, ExtCtrls, Menus, dxGridMenus, dxDBTLCl, dxGrClms,ShellApi,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxGridBandedTableView,
  cxGridDBBandedTableView;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrBOM = class(TForm)
    QuBJ: TADOQuery;
    DsQuBJ: TDataSource;
    PopupMenu1: TPopupMenu;
    ExportExcel1: TMenuItem;
    N1: TMenuItem;
    ShowGrid1: TMenuItem;
    ShowHeader1: TMenuItem;
    Show1: TMenuItem;
    N2: TMenuItem;
    AutoFilter1: TMenuItem;
    SaveDialog: TSaveDialog;
    MultiSelect1: TMenuItem;
    sp_barang: TADOStoredProc;
    PopupMenu2: TPopupMenu;
    Semua: TMenuItem;
    Aktif: TMenuItem;
    TidakAktif: TMenuItem;
    Panel1: TPanel;
    DsQuHdBOM: TDataSource;
    QuHdBOM: TADOQuery;
    PanelBJ: TPanel;
    PanelBOM: TPanel;
    PanelBOM_Hd: TPanel;
    PanelBOM_Dt: TPanel;
    QuDtBOM: TADOQuery;
    DsQuDtBOM: TDataSource;
    QuHdBOMKodeBOM: TStringField;
    QuHdBOMKodeBrg: TStringField;
    QuHdBOMIsDefault: TBooleanField;
    QuHdBOMTglAwal: TDateTimeField;
    QuHdBOMTglAkhir: TDateTimeField;
    QuDtBOMKodeBOM: TStringField;
    QuDtBOMUrut: TIntegerField;
    QuDtBOMKodeBrg: TStringField;
    QuDtBOMQnt: TFloatField;
    QuDtBOMNAMABRG: TStringField;
    QuDtBOMSAT1: TStringField;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1KodeBrg: TdxDBGridMaskColumn;
    dxDBGrid1NamaBrg: TdxDBGridMaskColumn;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid3: TdxDBGrid;
    dxDBGrid3KodeBOM: TdxDBGridMaskColumn;
    dxDBGrid3Urut: TdxDBGridMaskColumn;
    dxDBGrid3KodeBrg: TdxDBGridMaskColumn;
    dxDBGrid3Qnt: TdxDBGridMaskColumn;
    dxDBGrid3NAMABRG: TdxDBGridMaskColumn;
    dxDBGrid3SAT1: TdxDBGridMaskColumn;
    dxDBGrid2KodeBOM: TdxDBGridMaskColumn;
    dxDBGrid2KodeBrg: TdxDBGridMaskColumn;
    dxDBGrid2NoUrut: TdxDBGridMaskColumn;
    dxDBGrid2IsDefault: TdxDBGridCheckColumn;
    dxDBGrid2TglAwal: TdxDBGridDateColumn;
    dxDBGrid2TglAkhir: TdxDBGridDateColumn;
    QuHdBOMNoUrut: TStringField;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton4: TToolButton;
    ToolButton10: TToolButton;
    ToolButton7: TToolButton;
    ToolButton6: TToolButton;
    ToolButton11: TToolButton;
    ToolButton9: TToolButton;
    QuBJKodeBrg: TStringField;
    QuBJNamaBrg: TStringField;
    QuBJSat1: TStringField;
    PanelJudulBJ: TPanel;
    PanelJudulHdBOM: TPanel;
    PanelJudulDtBOM: TPanel;
    QuDtBOMNumerator: TBCDField;
    QuDtBOMDenominator: TBCDField;
    QuDtBOMLossRatio: TBCDField;
    QuDtBOMPlaceCD: TStringField;
    dxDBGrid3Numerator: TdxDBGridMaskColumn;
    dxDBGrid3Denominator: TdxDBGridMaskColumn;
    dxDBGrid3LossRatio: TdxDBGridMaskColumn;
    dxDBGrid3PlaceCD: TdxDBGridMaskColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure QuBJAfterScroll(DataSet: TDataSet);
    procedure QuHdBOMAfterScroll(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
    mPosisi : string;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel : Boolean;
    CountSelected : integer;
    ISTampil : byte;
    Procedure Tampildata(xIsTampil:byte);
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;
var
  FrBOM: TFrBOM;
  S: array[0..255] of char;

implementation
uses myModul, Myprocedure, MyGlobal, FrmSetForm, PBNumEdit,
  FrmBOMGanti, FrmSUBBOM;

{$R *.dfm}

Procedure TFrBOM.Tampildata(xIsTampil:byte);
begin
  QuBJ.Close;
  QuBJ.Open;
  QuHdBOM.Close;
  QuHdBOM.Open;
  QuDtBOM.Close;
  QuDtBOM.Open;
end;

procedure TFrBOM.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrBOM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
    begin
        Action:=caFree;
    end
    else
        Action:=caNone;
end;

procedure TFrBOM.FormDestroy(Sender: TObject);
begin
  FrBOM:=nil;
end;

procedure TFrBOM.FormShow(Sender: TObject);
begin
  Tampildata(0);
  ActiveControl:=dxDBGrid1;
end;

procedure TFrBOM.ToolButton10Click(Sender: TObject);
begin
  Tampildata(isTampil);
end;

procedure TFrBOM.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrBOM.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_ESCAPE then
   begin
      Close;
   end else
   if Key=VK_RETURN then
   begin
       //ToolButton2.Click;
   end
   else if key=VK_INSERT then
   begin
       ToolButton1.Click;
   end
   else if key=VK_Delete then
   begin
       // ToolButton3.Click;
   end;
end;

procedure TFrBOM.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

procedure TFrBOM.FormCreate(Sender: TObject);
begin
  Panel1.Color:=FrSetForm.PanelMain.Color;
  ToolBar1.Color:=FrSetForm.ToolBarMain.Color;
end;

procedure TFrBOM.ToolButton1Click(Sender: TObject);
begin
  if IsTambah then
  begin
    Application.CreateForm(TFrSubBOM, FrSubBOM);
    FrSubBOM.IsSimpan:=True;
    FrSubBOM.mSubBOM_KodeBrg:=QuBJKodeBrg.AsString;
    FrSubBOM.ShowModal;
  end
  else
  begin
    MsgTidakBerhakTambahData;
    ActiveControl:=dxDBGrid1;
  end;
end;

procedure TFrBOM.ToolButton2Click(Sender: TObject);
begin
  if IsTambah then
  begin
    Application.CreateForm(TFrSubBOM, FrSubBOM);
    FrSubBOM.IsSimpan:=False;
    FrSubBOM.mSubBOM_KodeBrg:=QuBJKodeBrg.AsString;
    FrSubBOM.ShowModal;
  end
  else
  begin
    MsgTidakBerhakKoreksiData;
    ActiveControl:=dxDBGrid1;
  end;
end;

procedure TFrBOM.QuBJAfterScroll(DataSet: TDataSet);
begin
  PanelJudulHdBOM.Caption:='   Daftar BOM untuk Kode Barang : '+QuBJKodeBrg.AsString;
end;

procedure TFrBOM.QuHdBOMAfterScroll(DataSet: TDataSet);
begin
  PanelJudulDtBOM.Caption:='   Detail BOM : '+QuHdBOMKodeBOM.AsString;
end;

end.
