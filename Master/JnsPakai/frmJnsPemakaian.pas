unit frmJnsPemakaian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxEdit,
  DB, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  ADODB, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  ExtCtrls;

type
  TFrJenisPemakaian = class(TForm)
    Panel1: TPanel;
    VWJenisPemakaian: TcxGridDBTableView;
    GRDLevel1: TcxGridLevel;
    GRD: TcxGrid;
    QuJnsPemakaian: TADOQuery;
    dsJnsPemakaian: TDataSource;
    QuJnsPemakaianKODEPemakaian: TStringField;
    QuJnsPemakaianPerkiraan: TStringField;
    VWJenisPemakaianKODEPemakaian: TcxGridDBColumn;
    VWJenisPemakaianPerkiraan: TcxGridDBColumn;
    QuPerkiraan: TADOQuery;
    QuPerkiraanPerkiraan: TStringField;
    QuPerkiraanKeterangan: TStringField;
    QuPerkiraanKelompok: TIntegerField;
    QuPerkiraanTipe: TIntegerField;
    QuPerkiraanValas: TStringField;
    QuPerkiraanDK: TIntegerField;
    QuPerkiraanNeraca: TStringField;
    QuPerkiraanFlagCashFlow: TStringField;
    QuPerkiraanSimbol: TStringField;
    QuPerkiraanIsPPN: TBooleanField;
    dsPerkiraan: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrJenisPemakaian: TFrJenisPemakaian;

implementation
 Uses MyModul,MyGlobal;
{$R *.dfm}

procedure TFrJenisPemakaian.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FrJenisPemakaian:=Nil;
end;

procedure TFrJenisPemakaian.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=VK_Escape then
   Close;
end;

procedure TFrJenisPemakaian.FormCreate(Sender: TObject);
begin
  QuJnsPemakaian.Close;
  QuJnsPemakaian.Open;
  QuPerkiraan.Close;
  QuPerkiraan.Open;
end;

end.
