unit FrmAjcTransferPajak;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ADODB, Menus, DB, StdCtrls, Buttons, dxDBTLCl,
  dxGrClms, dxDBCtrl, dxDBGrid, dxTL, dxCntner, ExtCtrls, StrUtils,
  XiProgressBar;

type
  TFrAjcTransferPajak = class(TForm)
    QuSource: TADOQuery;
    DsSource: TDataSource;
    QuAjcTransfer: TADOQuery;
    DsBackup: TDataSource;
    Panel2: TPanel;
    dxDBGrid1: TdxDBGrid;
    PanelShow1: TPanel;
    HapusBtn: TSpeedButton;
    KoreksiBtn: TSpeedButton;
    TambahBtn: TSpeedButton;
    Panel1: TPanel;
    Panel3: TPanel;
    BtnAmbilData: TBitBtn;
    Memo1: TMemo;
    PeriodeTransfer: TDateTimePicker;
    Label3: TLabel;
    XiProgressBar1: TXiProgressBar;
    LblKeterangan: TLabel;
    dxDBGrid1KeyUrut: TdxDBGridMaskColumn;
    dxDBGrid1NamaTabel: TdxDBGridMaskColumn;
    gbTujuanTransfer: TGroupBox;
    Label2: TLabel;
    sbTujuan: TSpeedButton;
    dxDBGrid1Column4: TdxDBGridColumn;
    QuAjcTransferKeyUrut: TAutoIncField;
    QuAjcTransferNamaTabel: TStringField;
    QuAjcTransferSelectTabel: TStringField;
    QuAjcTransferIsTipe: TStringField;
    procedure BtnAmbilDataClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TambahBtnClick(Sender: TObject);
    procedure KoreksiBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure HapusBtnClick(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    mKey1, mKey2, mKey3: String;
    mTujuanTransferData: String;
    XKey: array [1..10] of String;
    XKey1: array [1..10] of String;
    DxKey,i,j:integer;
    DxKey1,i1,j1:integer;
    Filter,Filter1:string;
    XBulan,XTahun:string;
    mFlagSimbol,XKolom: String;
    procedure TampilIsiTujuanTransferData;
    procedure BukaSourceTabel;
    procedure AmbilData;
    Function GetNamaField(Const NamaTabel:string):string;
    Procedure GetPrimaryKey;
  public
    { Public declarations }
    procedure TampilData;
  end;

var
  FrAjcTransferPajak: TFrAjcTransferPajak;

implementation

uses MyModul, MyGlobal, FrmSubAjcTransferPajak;

{$R *.dfm}

procedure TFrAjcTransferPajak.TampilIsiTujuanTransferData;

begin

end;

procedure TFrAjcTransferPajak.BukaSourceTabel;
begin

end;

Function TFrAjcTransferPajak.GetNamaField(Const NamaTabel:string):String;
Begin
 with QuSource do
    begin
      Close;
      SQL.Clear;
      SQL.Add('declare @id int');
      SQL.Add('select @id=[id] from sysobjects where [name]='+QuotedStr(NamaTabel));
      SQL.Add('select [name] NamaField from syscolumns where [id]=@id and colstat=0 ');
      SQL.Add('order by colid ');
      Open;
    end;
   Result:='';
   Xkolom:='';
   QuSource.First;
    while not QuSource.Eof do
    begin
      if UpperCase( QuSource.FieldByName('NamaField').AsString)='MYID' Then
      Begin
      end
      else
      if QuSource.RecNo=1 Then
      Result:=QuSource.FieldByName('NamaField').AsString
      else
      Result:=Result+','+QuSource.FieldByName('NamaField').AsString;
      Xkolom:=Result;
      QuSource.Next;
    end;
end;

Procedure TFrAjcTransferPajak.GetPrimaryKey;

Begin

end;

procedure TFrAjcTransferPajak.AmbilData;

begin

end;

procedure TFrAjcTransferPajak.TampilData;
begin
  QuAjcTransfer.Close;
  QuAjcTransfer.Open;
  if QuAjcTransfer.IsEmpty=false then
  begin
    dxDBGrid1.OptionsDB:=[edgoCanNavigation,edgoLoadAllRecords,edgoUseBookmarks]
  end
  else
  begin
    dxDBGrid1.OptionsDB:=[edgoCanNavigation,edgoUseBookmarks];
  end;
  XBulan:=FormatDateTime('M',PeriodeTransfer.Date);
  XTahun:=FormatDateTime('YYYY',PeriodeTransfer.Date);
end;

procedure TFrAjcTransferPajak.BtnAmbilDataClick(Sender: TObject);
begin
  XBulan:=FormatDateTime('M',PeriodeTransfer.Date);
  XTahun:=FormatDateTime('YYYY',PeriodeTransfer.Date);
  QuAjcTransfer.First;
  XiProgressBar1.Max:=QuAjcTransfer.RecordCount;
  while not QuAjcTransfer.Eof do
  begin
    LblKeterangan.Caption:='Transfer Tabel...'+QuAjcTransferNamaTabel.asstring;
    Application.ProcessMessages;
    GetNamaField(QuAjcTransferNamaTabel.asstring);
    QuSource.Close;
    QuSource.SQL.Clear;
    if QuAjcTransferIsTipe.AsString='M' Then
    Begin
    QuSource.SQL.Add('Insert Into dbHJS..'+QuAjcTransferNamaTabel.AsString+'('+XKolom+')');
    QuSource.SQL.Add('Select '+XKolom+' From '+ QuAjcTransferSelectTabel.AsString);
    QuSource.ExecSQL;
    end;
    if QuAjcTransferIsTipe.AsString='T' Then
    Begin
    QuSource.SQL.Add('Delete dbHJS..'+ QuAjcTransferSelectTabel.AsString);
    QuSource.SQL.Add('and FlagSimbol='+QuotedStr('+'));
    QuSource.Parameters[0].Value:=XBulan;
    QuSource.Parameters[1].Value:=XTahun;
    QuSource.ExecSQL;
    QuSource.Close;
    QuSource.SQL.Clear;
    QuSource.SQL.Add('Insert Into dbHJS..'+QuAjcTransferNamaTabel.AsString+'('+XKolom+')');
    XKolom:=AnsiReplaceStr(XKolom, 'FlagSimbol', QuotedStr('+')+' FlagSimbol');
    QuSource.SQL.Add('Select '+XKolom+' From '+ QuAjcTransferSelectTabel.AsString);
    QuSource.Parameters[0].Value:=XBulan;
    QuSource.Parameters[1].Value:=XTahun;
    QuSource.ExecSQL;
    end;
    XiProgressBar1.Position:=QuAjcTransfer.RecNo;
    QuAjcTransfer.Next;
  end;

  XiProgressBar1.Position:=0;
  LblKeterangan.Caption:='Proses Transfer Data Selesai !';
end;

procedure TFrAjcTransferPajak.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrAjcTransferPajak.TambahBtnClick(Sender: TObject);
begin
  Application.CreateForm(TFrSubAjcTransferPajak, FrSubAjcTransferPajak);
  FrSubAjcTransferPajak.IsSimpan:=True;
  FrSubAjcTransferPajak.ShowModal;
end;

procedure TFrAjcTransferPajak.KoreksiBtnClick(Sender: TObject);
begin
  Application.CreateForm(TFrSubAjcTransferPajak, FrSubAjcTransferPajak);
  FrSubAjcTransferPajak.IsSimpan:=False;

  FrSubAjcTransferPajak.NamaTabel.Text:=QuAjcTransferNamaTabel.AsString;
  FrSubAjcTransferPajak.SelectTabel.Text:=QuAjcTransferSelectTabel.AsString;
  FrSubAjcTransferPajak.Tipe.Text:=QuAjcTransferIsTipe.AsString;
  FrSubAjcTransferPajak.ShowModal;
end;

procedure TFrAjcTransferPajak.FormShow(Sender: TObject);
begin

  PeriodeTransfer.Date:=EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),1);
  TampilData;
end;

procedure TFrAjcTransferPajak.HapusBtnClick(Sender: TObject);
begin
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('delete TransferDataPajak where KeyUrut='+IntToStr(QuAjcTransferKeyUrut.AsInteger));
    ExecSQL;
  end;
  QuAjcTransfer.Close;
  QuAjcTransfer.Open;
end;

procedure TFrAjcTransferPajak.dxDBGrid1DblClick(Sender: TObject);
begin
KoreksiBtn.Click;
end;

end.
