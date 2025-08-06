unit FrmBOMGanti;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxEdit, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, PBNumEdit, RXCtrls, ADODB,
  cxGridBandedTableView, cxGridDBBandedTableView;

type
  TFrBOMGanti = class(TForm)
    Bevel2: TBevel;
    Label12: TLabel;
    Image1: TImage;
    Label11: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    DsView: TDataSource;
    QuView: TADOQuery;
    QuViewKodeBrgJd: TStringField;
    QuViewKodebrgBhn: TStringField;
    QuViewQnt: TBCDField;
    QuViewNamaBrg: TStringField;
    PButton: TPanel;
    Button1: TButton;
    cxGrid1: TcxGrid;
    tvMaster4: TcxGridDBBandedTableView;
    tvMaster4NoBukti: TcxGridDBBandedColumn;
    tvMaster4Tanggal: TcxGridDBBandedColumn;
    tvDetail4: TcxGridDBBandedTableView;
    tvDetail4Kodebrg: TcxGridDBBandedColumn;
    tvDetail4NAMABRG: TcxGridDBBandedColumn;
    tvDetail4DBBandedColumn1: TcxGridDBBandedColumn;
    tvSPB: TcxGridDBBandedTableView;
    tvSPBNoBukti: TcxGridDBBandedColumn;
    tvSPBTanggal: TcxGridDBBandedColumn;
    tvSPBSAT_2: TcxGridDBBandedColumn;
    tvSPBQnt2: TcxGridDBBandedColumn;
    tvSPBSAT_1: TcxGridDBBandedColumn;
    tvSPBQnt: TcxGridDBBandedColumn;
    tvSPBMySHIP: TcxGridDBBandedColumn;
    tvSPBMyKey: TcxGridDBBandedColumn;
    cxGridLevel7: TcxGridLevel;
    cxGridLevel8: TcxGridLevel;
    Qudetail: TADOQuery;
    DsDetail: TDataSource;
    Panel1: TPanel;
    Panel3: TPanel;
    QuViewSat1: TStringField;
    tvMaster4Qnt: TcxGridDBBandedColumn;
    tvMaster4Sat1: TcxGridDBBandedColumn;
    tvDetail4Sat1: TcxGridDBBandedColumn;
    QudetailKodeBrgJd: TStringField;
    QudetailKodeBrgBhn: TStringField;
    QudetailKodeBrgBhnGanti: TStringField;
    QudetailQnt: TBCDField;
    QudetailNamaBrg: TStringField;
    QudetailSat1: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure refresh(XBrgjadi:String);
    procedure tvMaster4FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure Panel1Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    IsSimpan : boolean;
    xsimpan: String;
  end;

var
  FrBOMGanti: TFrBOMGanti;
  mValid:Boolean;
implementation
uses  FrmGudang,MyGlobal,Myprocedure, MyModul, FrmBrows, FrmBOM,
  FrmSUBBOMGanti;
{$R *.DFM}


procedure TFrBOMGanti.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrBOMGanti.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then close;
end;


procedure TFrBOMGanti.refresh(XBrgjadi:String);
begin
 Quview.Close;
 Quview.SQL.Strings[2]:='Select @KodebrgJd='+QuotedStr(XBrgjadi)+'';
 Quview.Open;

  Qudetail.Close;
  Qudetail.Parameters[0].Value:=XBrgjadi;
  Qudetail.Parameters[1].Value:=QuViewKodebrgBhn.AsString;
  QuDetail.Open;
End;

procedure TFrBOMGanti.tvMaster4FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
{  with QuDetail do
  begin
    Close;
    Parameters[0].Value:=QuViewKodeBrgJd.AsString;
    Parameters[1].Value:=QuViewKodebrgBhn.AsString;
    Open;
  end;}
end;

procedure TFrBOMGanti.Panel1Click(Sender: TObject);
begin
  //frBOMGanti.refresh(QuViewKodeBrgJd.AsString);
end;

procedure TFrBOMGanti.Panel3Click(Sender: TObject);
begin
{    Application.CreateForm(TfrSubBOMGanti, frSubBOMGanti);
    frSubBOMGanti.IsSimpan:=True;
    frSubBOMGanti.Label3.Caption:='Kode Barang : '+QuViewKodebrgBhn.AsString + #13 +
                             'Nama Barang : '+QuViewNAMABRG.AsString;
    frSubBOMGanti.refresh(FrBOM.QuViewKODEBRG.AsString,FrBOMGanti.QuViewKodebrgBhn.AsString);
    frSubBOMGanti.ShowModal;}
end;

end.
