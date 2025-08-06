unit dxGridMenus;

interface

uses Classes, Forms, Menus, Windows, dxDBGrid, dxTL, dxDBCtrl;

type
  TdxCustomDBGridPopupMenu = class
  private
    fPopupMenu: TPopupMenu;
    fGridColumn: TdxDBGridColumn;
  protected
    procedure CreateMenuItems; virtual; abstract;
    procedure BeforePopup; virtual;

    function AddSubMenuItem(AMenuItem: TMenuItem; ACaption: String; AOnClick: TNotifyEvent; ATag: Integer): TMenuItem;
    function AddMenuItem(ACaption: String; AOnClick: TNotifyEvent; ATag: Integer): TMenuItem;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Popup(AGridColumn: TdxDBGridColumn; X, Y: Integer); virtual;
    procedure PopupFromCursor(AGridColumn: TdxDBGridColumn);
  end;

  TdxDBGridHeaderPopupMenu = class(TdxCustomDBGridPopupMenu)
  private
    fSortAscendingItem: TMenuItem;
    fSortDescendingItem: TMenuItem;
    fGroupByColumn: TMenuItem;
    fColumnSelector: TMenuItem;
    fHeaderAlignmentItems: Array[TAlignment] of TMenuItem;

    procedure DoSortColumn(Sender: TObject);
    procedure DoGroupByColumn(Sender: TObject);
    procedure DoRemoveColumn(Sender: TObject);
    procedure DOColumnSelector(Sender: TObject);
    procedure DoAlign(Sender: TObject);
    procedure DoBestFit(Sender: TObject);
    procedure DoBestFitAllColumns(Sender: TObject);
    procedure DoAutoFilter(Sender: TObject);
  protected
    procedure BeforePopup; override;  
    procedure CreateMenuItems; override;
  end;

  TdxDBGridFooterPopupMenu = class(TdxCustomDBGridPopupMenu)
  private
    fIsRowFooter: Boolean;
    fItems: Array[TdxSummaryType] of TMenuItem;
    fSummaryItem: TdxDBGridSummaryItem;
    fSummaryGroup: TdxDBGridSummaryGroup;

    procedure DoFooterSummary(ASummaryType: TdxSummaryType);
    procedure DoRowFooterSummary(ASummaryType: TdxSummaryType);
    procedure DoSummary(Sender: TObject);
  protected
    procedure BeforePopup; override;
    procedure CreateMenuItems; override;
    property SummaryGroup: TdxDBGridSummaryGroup read fSummaryGroup write fSummaryGroup;
    property SummaryItem: TdxDBGridSummaryItem read fSummaryItem write fSummaryItem;
  public
    property IsRowFooter: Boolean read fIsRowFooter write fIsRowFooter;
  end;

  TdxDBGridPopupMenuManager = class
  private
    GridHeaderPopupMenu: TdxDBGridHeaderPopupMenu;
    GridFooterPopupMenu: TdxDBGridFooterPopupMenu;
  protected
    constructor CreateInstance;
    class function AccessInstance(Request: Integer): TdxDBGridPopupMenuManager;
  public
    constructor Create;
    destructor Destroy; override;
    class function Instance: TdxDBGridPopupMenuManager;
    class procedure ReleaseInstance;
    function ShowGridPopupMenu(Grid: TdxDBGrid): Boolean;
  end;

implementation

uses DB, SysUtils;

const
  StSortAscending = 'Sort &Ascending';
  StSortDescending = 'Sort &Descending';
  StGroupByThisColumn = '&Group By This Column';
  StRemoveThisColumn = '&Remove This Column';
  StColumnSelector = 'Column &Selector...';
  StAlignment = '&Alignment';
  StAlignments : Array[TAlignment] of String = ('Align &Left', 'Align &Right', 'Align &Center');
  StBestFit = 'Best &Fit';
  StBestFitAllColumns = 'Best Fit (All Columns)';
  StAutoFilters = 'Auto Filter';
  StSummaryItems: Array[TdxSummaryType] of String = ('None', 'Summary', 'Minimum', 'Maximum', 'Count', 'Average');

{TdxDBGridPopupMenu}
constructor TdxCustomDBGridPopupMenu.Create;
begin
  inherited Create;
  fPopupMenu := TPopupMenu.Create(nil);
  CreateMenuItems;
end;

destructor TdxCustomDBGridPopupMenu.Destroy;
begin
  fPopupMenu.Free;
  inherited Destroy;
end;

function TdxCustomDBGridPopupMenu.AddSubMenuItem(AMenuItem: TMenuItem; ACaption: String; AOnClick: TNotifyEvent; ATag: Integer): TMenuItem;
begin
  Result := TMenuItem.Create(nil);
  Result.Caption := ACaption;
  Result.OnClick := AOnClick;
  Result.Tag := ATag;
  AMenuItem.Add(Result);
end;

function TdxCustomDBGridPopupMenu.AddMenuItem(ACaption: String; AOnClick: TNotifyEvent; ATag: Integer): TMenuItem;
begin
  Result := AddSubMenuItem(fPopupMenu.Items, ACaption, AOnClick, ATag);
end;

procedure TdxCustomDBGridPopupMenu.BeforePopup;
begin
end;

procedure TdxCustomDBGridPopupMenu.Popup(AGridColumn: TdxDBGridColumn; X, Y: Integer);
begin
  fGridColumn := AGridColumn;
  BeforePopup;
  fPopupMenu.Popup(X, Y);
end;

procedure TdxCustomDBGridPopupMenu.PopupFromCursor(AGridColumn: TdxDBGridColumn);
var
  Point: TPoint;
begin
  GetCursorPos(Point);
  Popup(AGridColumn, Point.X, Point.Y);
end;

{TdxDBGridHeaderPopupMenu}
procedure TdxDBGridHeaderPopupMenu.BeforePopup;
var
  Align : TAlignment;
begin
  Assert(fGridColumn <> nil, 'Parameter column is NULL');
  fSortAscendingItem.Checked := fGridColumn.Sorted = csDown;
  fSortDescendingItem.Checked := fGridColumn.Sorted = csUp;
  fGroupByColumn.Enabled := TdxDBGrid(fGridColumn.TreeList).CanAddGroupColumn(fGridColumn);
  fColumnSelector.Checked := fGridColumn.TreeList.IsCustomizing;
  for Align := Low(TAlignment) to High(TAlignment) do
    fHeaderAlignmentItems[Align].Checked := fGridColumn.Alignment = Align;
end;

procedure TdxDBGridHeaderPopupMenu.CreateMenuItems;
var
  MenuItem: TMenuItem;
  Align : TAlignment;
begin
  fSortAscendingItem := AddMenuItem(StSortAscending, DoSortColumn, Integer(csDown));
  fSortDescendingItem := AddMenuItem(StSortDescending, DoSortColumn, Integer(csUp));
  AddMenuItem('-', nil, -1);
  fGroupByColumn := AddMenuItem(StGroupByThisColumn, DoGroupByColumn, -1);
  AddMenuItem(StRemoveThisColumn, DoRemoveColumn, -1);
  fColumnSelector := AddMenuItem(StColumnSelector, DoColumnSelector, -1);
  AddMenuItem('-', nil, -1);
  MenuItem := AddMenuItem(StAlignment, nil, -1);
  for Align := Low(TAlignment) to High(TAlignment) do
    fHeaderAlignmentItems[Align] := AddSubMenuItem(MenuItem, StAlignments[Align], DoAlign, Integer(Align));
  AddMenuItem(StBestFit, DoBestFit, -1);
  AddMenuItem('-', nil, -1);
  AddMenuItem(StBestFitAllColumns, DoBestFitAllColumns, -1);
  AddMenuItem(StAutoFilters,DoAutoFilter,-1);
end;

procedure TdxDBGridHeaderPopupMenu.DoSortColumn(Sender: TObject);
begin
  fGridColumn.TreeList.BeginSorting;
  try
    fGridColumn.TreeList.ClearColumnsSorted;
    fGridColumn.Sorted := TdxTreeListColumnSort(TMenuItem(Sender).Tag);
  finally
      fGridColumn.TreeList.EndSorting;
  end;
end;

procedure TdxDBGridHeaderPopupMenu.DoGroupByColumn(Sender: TObject);
begin
  fGridColumn.GroupIndex := TdxDBGrid(fGridColumn.TreeList).GroupColumnCount;
end;

procedure TdxDBGridHeaderPopupMenu.DoRemoveColumn(Sender: TObject);
begin
  fGridColumn.Visible := False;
end;

procedure TdxDBGridHeaderPopupMenu.DoColumnSelector(Sender: TObject);
begin
  if fGridColumn.TreeList.IsCustomizing then
    fGridColumn.TreeList.EndColumnsCustomizing
  else fGridColumn.TreeList.ColumnsCustomizing;
end;

procedure TdxDBGridHeaderPopupMenu.DoAlign(Sender: TObject);
begin
  fGridColumn.Alignment := TAlignment(TMenuItem(Sender).Tag);
end;

procedure TdxDBGridHeaderPopupMenu.DoBestFit(Sender: TObject);
begin
  fGridColumn.TreeList.ApplyBestFit(fGridColumn);
end;

procedure TdxDBGridHeaderPopupMenu.DoBestFitAllColumns(Sender: TObject);
begin
  fGridColumn.TreeList.ApplyBestFit(nil);
end;

procedure TdxDBGridHeaderPopupMenu.DoAutoFilter(Sender: TObject);
begin

   TdxDBGrid(fGridColumn.TreeList).Filter.Active:=true;
end;

{TdxDBGridFooterPopupMenu}
procedure TdxDBGridFooterPopupMenu.BeforePopup;
var
  SummaryType: TdxSummaryType;
begin
  Assert(fGridColumn <> nil, 'Parameter column is NULL');
  if IsRowFooter then
    SummaryType := SummaryItem.SummaryType
  else SummaryType := fGridColumn.SummaryFooterType;
  fItems[SummaryType].Checked := True;
  fItems[cstMin].Enabled := (fGridColumn.Field.DataType in
     [ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftDate, ftTime, ftDateTime, ftAutoInc]);
  fItems[cstMax].Enabled := fItems[cstMin].Enabled;
  fItems[cstSum].Enabled := (fGridColumn.Field.DataType in [ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftAutoInc]);
  fItems[cstAvg].Enabled := fItems[cstSum].Enabled;
end;

procedure TdxDBGridFooterPopupMenu.CreateMenuItems;
var
  SummaryType: TdxSummaryType;
begin
  for SummaryType := Low(TdxSummaryType) to High(TdxSummaryType) do
  begin
    fItems[SummaryType] := AddMenuItem(StSummaryItems[SummaryType], DoSummary, Integer(SummaryType));
    fItems[SummaryType].RadioItem := True;
    fItems[SummaryType].GroupIndex := 1;
  end;
  AddMenuItem('-', nil, -1);
  fItems[cstNone].MenuIndex :=  Integer(High(TdxSummaryType)) + 1;
end;

procedure TdxDBGridFooterPopupMenu.DoFooterSummary(ASummaryType: TdxSummaryType);
begin
  fGridColumn.SummaryFooterType := ASummaryType;
  fGridColumn.SummaryFooterField := fGridColumn.FieldName;
end;

procedure TdxDBGridFooterPopupMenu.DoRowFooterSummary(ASummaryType: TdxSummaryType);
begin
  SummaryItem.SummaryType := ASummaryType;
end;

procedure TdxDBGridFooterPopupMenu.DoSummary(Sender: TObject);
begin
  if IsRowFooter then
    DoRowFooterSummary(TdxSummaryType(TMenuItem(Sender).Tag))
  else  DoFooterSummary(TdxSummaryType(TMenuItem(Sender).Tag));
  TdxDBGrid(fGridColumn.TreeList).RefreshGroupColumns;
end;

{TdxDBGridPopupMenuManager}
class function TdxDBGridPopupMenuManager.AccessInstance(Request: Integer): TdxDBGridPopupMenuManager;
var FInstance: TdxDBGridPopupMenuManager;
begin
  FInstance := nil;
  case Request of
    0 : ;
    1 : if not Assigned(FInstance) then FInstance := CreateInstance;
    2 : FInstance := nil;
  else
    raise Exception.CreateFmt('Illegal request %d in AccessInstance',
      [Request]);
  end;
  Result := FInstance;
end;

constructor TdxDBGridPopupMenuManager.Create;
begin
  inherited Create;
  raise Exception.CreateFmt('Access class %s through Instance only',
    [ClassName]);
end;

constructor TdxDBGridPopupMenuManager.CreateInstance;
begin
  inherited Create;
  GridHeaderPopupMenu := TdxDBGridHeaderPopupMenu.Create;
  GridFooterPopupMenu := TdxDBGridFooterPopupMenu.Create;
end;

destructor TdxDBGridPopupMenuManager.Destroy;
begin
  if AccessInstance(0) = Self then AccessInstance(2);
  GridHeaderPopupMenu.Free;
  GridFooterPopupMenu.Free;

  inherited Destroy;
end;

class function TdxDBGridPopupMenuManager.Instance: TdxDBGridPopupMenuManager;
begin
  Result := AccessInstance(1);
end;

class procedure TdxDBGridPopupMenuManager.ReleaseInstance;
begin
  AccessInstance(0).Free;
end;

function TdxDBGridPopupMenuManager.ShowGridPopupMenu(Grid: TdxDBGrid): Boolean;
var
  hTest : TdxTreeListHitTest;
  GridColumn: TdxDBGridColumn;
  SummaryGroup: TdxDBGridSummaryGroup;
  p: TPoint;
begin
  GetCursorPos(p);
  p := Grid.ScreenToClient(p);
  hTest := Grid.GetHitTestInfoAt(p.X, p.Y);
  GridColumn := nil;
  case hTest of
   htColumn, htColumnEdge:
   begin
     GridColumn := TdxDBGridColumn(Grid.GetColumnAt(p.X, p.Y));
     if GridColumn <> nil then
       GridHeaderPopupMenu.PopupFromCursor(GridColumn);
   end;
   htSummaryFooter:
   begin
     GridColumn := TdxDBGridColumn(Grid.GetFooterColumnAt(p.X, p.Y));
     if GridColumn <> nil then
     begin
       GridFooterPopupMenu.IsRowFooter := False;
       GridFooterPopupMenu.PopupFromCursor(GridColumn);
     end;
   end;
   htSummaryNodeFooter:
   begin

     GridFooterPopupMenu.SummaryItem := Grid.GetSummaryItemAt(p.X, p.Y, SummaryGroup, TdxDBTreeListColumn(GridColumn), True);
     if GridColumn <> nil then
     begin
       GridFooterPopupMenu.SummaryGroup := SummaryGroup;
       GridFooterPopupMenu.IsRowFooter := True;
       GridFooterPopupMenu.PopupFromCursor(GridColumn);
     end;
   end;
  end;
  Result := GridColumn <> nil;
end;

initialization

finalization
  TdxDBGridPopupMenuManager.ReleaseInstance;
  
end.
