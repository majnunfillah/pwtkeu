unit FrmSetAkesPerkiraan;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, Db, ADODB, Wwdbigrd,
  Wwdbgrid, ppBands, ppCache, ppClass, ppProd, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, PBNumEdit, ppCtrls, ppPrnabl, ComCtrls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxEdit, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TFrSetAksesPerkiraan = class(TForm)
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ok: TBitBtn;
    QuPerkiraan: TADOQuery;
    DsPerkiraan: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    tvDaftarIn: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsakses: TDataSource;
    quakses: TADOQuery;
    tvDaftarInPerkiraan: TcxGridDBColumn;
    tvDaftarInKeterangan: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    tvDaftarOut: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure okClick(Sender: TObject);
    procedure DivisiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mValid: Boolean;
    MyUser : String;
    procedure Tampildata;
  end;

var
  FrSetAksesPerkiraan: TFrSetAksesPerkiraan;

implementation
Uses MyModul, MyGlobal, MyProcedure;
{$R *.DFM}

procedure TFrSetAksesPerkiraan.Tampildata;
begin
  with QuPerkiraan do
  begin
    close;
    Prepared;
    Parameters[0].Value:=Myuser;
    Open;
  end;
  with quakses do
  begin
    close;
    Prepared;
    Parameters[0].Value:=Myuser;
    Open;
  end;
end;

procedure TFrSetAksesPerkiraan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrSetAksesPerkiraan.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
     SendMessage(Handle, WM_NEXTDLGCTL, 0, 0) else
  if key = 27 then
  begin
    mValid := false;
    FormShow(Sender);
  end;
end;

procedure TFrSetAksesPerkiraan.FormShow(Sender: TObject);
begin
  Tampildata;
  
end;

procedure TFrSetAksesPerkiraan.BitBtn2Click(Sender: TObject);
begin
  with dm.QuCari do
  begin
    close;
    SQL.Clear;
    sql.Add('insert into dbaksesperkiraan');
    SQL.Add('Select '+QuotedStr(Myuser)+',Perkiraan from dbperkiraan ');
    sql.add('where Tipe=1 and perkiraan not in(select perkiraan from dbaksesperkiraan where userid='+QuotedStr(Myuser)+')');
    ExecSQL;
  end;
  Tampildata;
end;

procedure TFrSetAksesPerkiraan.BitBtn3Click(Sender: TObject);
begin
  with dm.QuCari do
  begin
    close;
    SQL.Clear;
    sql.Add('delete dbaksesperkiraan where userid='+QuotedStr(Myuser));
    ExecSQL;
  end;
  Tampildata;
end;

procedure TFrSetAksesPerkiraan.wwDBGrid1DblClick(Sender: TObject);
begin
  BitBtn2Click(Sender);
end;

procedure TFrSetAksesPerkiraan.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
     BitBtn2Click(Sender) else
  if key = 27 then
  begin
    mValid := false;
  end;
end;

procedure TFrSetAksesPerkiraan.okClick(Sender: TObject);
begin
  ModalResult:=mrOK;
end;

procedure TFrSetAksesPerkiraan.DivisiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=27 then
  begin
    mValid := false;
    Close;
  end;
end;

procedure TFrSetAksesPerkiraan.BitBtn1Click(Sender: TObject);
begin

  with dm.QuCari do
  begin
    close;
    SQL.Clear;
    sql.Add('insert into dbaksesperkiraan');
    SQL.Add('Select '+QuotedStr(Myuser)+',Perkiraan from dbperkiraan ');
    sql.add('where perkiraan not in(select perkiraan from dbaksesperkiraan where userid='+QuotedStr(Myuser)+')');
    sql.add('and Perkiraan='+QuotedStr(QuPerkiraan.Fieldbyname('Perkiraan').AsString));
    ExecSQL;
  end;
  Tampildata;
end;

procedure TFrSetAksesPerkiraan.BitBtn4Click(Sender: TObject);
begin
  with dm.QuCari do
  begin
    close;
    SQL.Clear;
    sql.Add('delete dbaksesperkiraan where userid='+QuotedStr(Myuser)+' and Perkiraan='+QuotedStr(quakses.Fieldbyname('Perkiraan').AsString));
    ExecSQL;
  end;
  Tampildata;
end;

end.

