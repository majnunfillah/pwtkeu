unit FrmAktivitasUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, ADODB, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  dxDBTLCl, dxGrClms, StdCtrls, Buttons, Mask, ToolEdit, ComCtrls;

type
  TFrAktivitasUser = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    QuAktivitas: TADOQuery;
    DsAktivitas: TDataSource;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Tahun: TdxDBGridMaskColumn;
    dxDBGrid1Bulan: TdxDBGridMaskColumn;
    dxDBGrid1Tanggal: TdxDBGridDateColumn;
    dxDBGrid1Pemakai: TdxDBGridMaskColumn;
    dxDBGrid1Aktivitas: TdxDBGridMaskColumn;
    dxDBGrid1Sumber: TdxDBGridMaskColumn;
    dxDBGrid1NoBukti: TdxDBGridMaskColumn;
    BtnShow: TBitBtn;
    dxDBGrid1Keterangan: TdxDBGridMemoColumn;
    dxDBGrid1NamaAktivitas: TdxDBGridMaskColumn;
    GroupTanggal: TGroupBox;
    SemuaTgl: TRadioButton;
    SebagianTgl: TRadioButton;
    Tgl1: TDateEdit;
    Tgl2: TDateEdit;
    Label1: TLabel;
    GroupPeriode: TGroupBox;
    SemuaPeriode: TRadioButton;
    SebagianPeriode: TRadioButton;
    Periode: TDateTimePicker;
    cmbPemakai: TComboBox;
    cmbSumber: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    cmbAktivitas: TComboBox;
    Label4: TLabel;
    QuAktivitasTahun: TIntegerField;
    QuAktivitasBulan: TIntegerField;
    QuAktivitasTanggal: TDateTimeField;
    QuAktivitasPemakai: TStringField;
    QuAktivitasAktivitas: TStringField;
    QuAktivitasNamaAktivitas: TStringField;
    QuAktivitasSumber: TStringField;
    QuAktivitasNoBukti: TStringField;
    QuAktivitasKeterangan: TMemoField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnShowClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrAktivitasUser: TFrAktivitasUser;

implementation

uses MyModul, MyGlobal;

{$R *.dfm}

procedure TFrAktivitasUser.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrAktivitasUser.BtnShowClick(Sender: TObject);
begin
  with QuAktivitas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * ');
    SQL.Add('from vwAktivitasUser ');
    SQL.Add('where 1=1 ');
    if SebagianTgl.Checked=True then
    begin
      SQL.Add('and ( cast(cast(Tanggal as float) as int) between cast(cast(cast('+QuotedStr(FormatDateTime('yyyyMMDD',Tgl1.Date))+' as datetime) as float) as int)');
      SQL.Add(' and cast(cast(cast('+QuotedStr(FormatDateTime('MM/dd/yyyy',Tgl2.Date))+' as datetime) as float) as int) )');
    end;
    if SebagianPeriode.Checked=True then
      SQL.Add('and Tahun='+QuotedStr(FormatDateTime('yyyy',Periode.Date))+' and Bulan='+QuotedStr(FormatDateTime('MM',Periode.Date)));
    if cmbPemakai.ItemIndex<>0 then
      SQL.Add('and Pemakai='+QuotedStr(cmbPemakai.Text));
    if cmbSumber.ItemIndex<>0 then
      SQL.Add('and Sumber='+QuotedStr(cmbSumber.Text));
    if cmbAktivitas.ItemIndex<>0 then
      SQL.Add('and Aktivitas='+QuotedStr(Copy(cmbAktivitas.Text,1,1)));
    SQL.Add('order by Tanggal desc ');
    Open;
  end;
end;

procedure TFrAktivitasUser.FormCreate(Sender: TObject);
begin
  Tgl1.Date:=Now;
  Tgl2.Date:=Now;
  Periode.DateTime:=EncodeDate(StrToInt(PeriodThn), StrToInt(PeriodBln),1);
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select UserID from dbflpass');
    Open;
    First;
    cmbPemakai.Items.Clear;
    cmbPemakai.Items.Add('Semua');
    while not eof do
    begin
      cmbPemakai.Items.Add(FieldByName('UserID').AsString);
      Next;
    end;
    cmbPemakai.ItemIndex:=0;
    Close;
    SQL.Clear;
    SQL.Add('select * from vwSumberAktivitasUser order by Urutan');
    Open;
    First;
    cmbSumber.Items.Clear;
    cmbSumber.Items.Add('Semua');
    while not eof do
    begin
      cmbSumber.Items.Add(FieldByName('NamaSumber').AsString);
      Next;
    end;
    cmbSumber.ItemIndex:=0;
  end;
  BtnShow.Click;
end;

procedure TFrAktivitasUser.FormDestroy(Sender: TObject);
begin
  FrAktivitasUser:=nil;
end;

end.
