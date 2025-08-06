unit FrmJenisBrg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxEdit,
  DB, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  ADODB, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  ExtCtrls;

type
  TfrJenisBrg = class(TForm)
    Panel1: TPanel;
    vwJenisBrg: TcxGridDBTableView;
    GRDLevel1: TcxGridLevel;
    GRD: TcxGrid;
    QuJenisBrg: TADOQuery;
    dsJenisBrg: TDataSource;
    QuJenisBrgKODEJenisBrg: TStringField;
    QuJenisBrgKeterangan: TStringField;
    vwJenisBrgKODEJenisBrg: TcxGridDBColumn;
    vwJenisBrgKeterangan: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frJenisBrg: TfrJenisBrg;

implementation
 Uses MyModul,MyGlobal;
{$R *.dfm}

procedure TfrJenisBrg.FormCreate(Sender: TObject);
begin
QuJenisBrg.Close;
QuJenisBrg.Open;
end;

procedure TfrJenisBrg.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=VK_Escape then
   Close
else if Key=VK_F5 then
  begin
   QuJenisBrg.Close;
   QuJenisBrg.Open;
  end;
end;

procedure TfrJenisBrg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=Cafree;
  frJenisBrg:=Nil;
end;

end.
