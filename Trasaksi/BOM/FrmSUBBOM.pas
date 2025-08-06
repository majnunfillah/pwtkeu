unit FrmSubBOM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxEdit, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, PBNumEdit, RXCtrls, ADODB, dxTL,
  dxDBCtrl, dxDBGrid, dxCntner, cxGridBandedTableView,
  cxGridDBBandedTableView, Mask, ToolEdit;

type
  TFrSubBOM = class(TForm)
    Panel1: TPanel;
    Label12: TLabel;
    Label28: TLabel;
    PanelShow2: TPanel;
    NoUrut: TEdit;
    KodeBOM: TEdit;
    Handling: TPBNumEdit;
    IsDefault: TCheckBox;
    TglAwal: TDateEdit;
    TglAkhir: TDateEdit;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    LNamaBrg: TRxLabel;
    Label2: TLabel;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    KodeBrg: TEdit;
    Qnt: TPBNumEdit;
    Panel2: TPanel;
    dxDBGrid1: TdxDBGrid;
    PanelShow1: TPanel;
    Cetak: TSpeedButton;
    HapusBtn: TSpeedButton;
    KoreksiBtn: TSpeedButton;
    TambahBtn: TSpeedButton;
    SpeedButton8: TSpeedButton;
    QuBeli: TADOQuery;
    DsQuBeli: TDataSource;
    Sp_Beli: TADOStoredProc;
    QuBeliKodeBOM: TStringField;
    QuBeliKodeBrgHd: TStringField;
    QuBeliNoUrut: TStringField;
    QuBeliIsDefault: TBooleanField;
    QuBeliTglAwal: TDateTimeField;
    QuBeliTglAkhir: TDateTimeField;
    QuBeliUrut: TIntegerField;
    QuBeliKodeBrg: TStringField;
    QuBeliNAMABRG: TStringField;
    QuBeliSAT1: TStringField;
    QuBeliQnt: TFloatField;
    dxDBGrid1Urut: TdxDBGridMaskColumn;
    dxDBGrid1KodeBrg: TdxDBGridMaskColumn;
    dxDBGrid1NAMABRG: TdxDBGridMaskColumn;
    dxDBGrid1SAT1: TdxDBGridMaskColumn;
    dxDBGrid1Qnt: TdxDBGridMaskColumn;
    LSatuan: TRxLabel;
    Numerator: TPBNumEdit;
    Label1: TLabel;
    Denominator: TPBNumEdit;
    Label3: TLabel;
    LossRatio: TPBNumEdit;
    Label4: TLabel;
    QuBeliNumerator: TBCDField;
    QuBeliDenominator: TBCDField;
    QuBeliLossRatio: TBCDField;
    QuBeliPlaceCD: TStringField;
    dxDBGrid1Numerator: TdxDBGridMaskColumn;
    dxDBGrid1Denominator: TdxDBGridMaskColumn;
    dxDBGrid1LossRatio: TdxDBGridMaskColumn;
    dxDBGrid1PlaceCD: TdxDBGridMaskColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeBrgExit(Sender: TObject);
    procedure KodeBrgEnter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SimpanData(Mode:Char);
    procedure TambahBtnClick(Sender: TObject);
    procedure KoreksiBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure KodeBrgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QntKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure HapusBtnClick(Sender: TObject);
  private
    { Private declarations }
    Model: String;
    S: array [0..255] of char;
    mUrut: Integer;
    mValid: Boolean;
    procedure ClearKomponen;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure TampilData;
    procedure AmBilData;
    procedure IsiNoBuktiBaru;
  public
    { Public declarations }
    IsSimpan : Boolean;
    mSubBOM_KodeBrg: String;
  end;

var
  FrSubBOM: TFrSubBOM;

implementation
uses  MyGlobal, Myprocedure, MyModul, FrmBrows, FrmBOM;
{$R *.DFM}

procedure TFrSubBOM.ClearKomponen;
begin
  KodeBrg.Text:='';
  LNamaBrg.Caption:='[ . . . ]';
  Qnt.Value:=0;
  Numerator.Value:=0;
  Denominator.Value:=0;
  LossRatio.Value:=0;
end;

procedure TFrSubBOM.TampilTombolDetail(pNilai: Boolean);
begin
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  Panel3.Enabled:=pNilai;
end;

procedure TFrSubBOM.TampilData;
begin
  QuBeli.Close;
  QuBeli.SQL.Strings[2]:='select @KodeBOM='+QuotedStr(KodeBOM.Text);
  QuBeli.Open;
  if QuBeli.IsEmpty=False then
  begin
    dxDBGrid1.OptionsDB:=[edgoCanNavigation,edgoLoadAllRecords,edgoUseBookmarks]
  end
  else
  begin
    dxDBGrid1.OptionsDB:=[edgoCanNavigation,edgoUseBookmarks];
  end;
end;

procedure TFrSubBOM.AmBilData;
begin
  IsDefault.Checked:=QuBeliIsDefault.AsBoolean;
  TglAwal.Date:=QuBeliTglAwal.AsDateTime;
  TglAkhir.Date:=QuBeliTglAkhir.AsDateTime;
end;

procedure TFrSubBOM.IsiNoBuktiBaru;
begin
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select cast(max(NoUrut) as int) NoUrut from dbBOM where KodeBrg='+QuotedStr(mSubBOM_KodeBrg));
    SQL.Add('and isnumeric(NoUrut)=1');
    Open;
    if IsEmpty then
    begin
      NoUrut.Text:='01';
    end else
    begin
      NoUrut.Text:=FormatFloat('00',FieldByName('NoUrut').AsInteger+1);
    end;
    KodeBOM.Text:=mSubBOM_KodeBrg+'-'+NoUrut.Text;
  end;
end;

procedure TFrSubBOM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrSubBOM.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then SendMessage(Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrSubBOM.KodeBrgExit(Sender: TObject);
begin
  if mValid then
  begin
    if (Length(KodeBrg.Text)<>0) and
      (DataBersyarat('select * from vwBarang where KodeBrg=:0',[KodeBrg.Text],DM.QuCari)=True) then
    begin
      KodeBrg.Text :=DM.QuCari.FieldByname('KodeBrg').AsString;
      LNamaBrg.Caption:='[ '+DM.QuCari.FieldByname('NamaBrg').AsString+' ]';
      LSatuan.Caption:=DM.QuCari.FieldByName('SAT1').AsString;
    end
    else
    begin
      KodeBrows:=120302;
      Application.CreateForm(TFrBrows, FrBrows);
      FrBrows.ShowModal;
      if FrBrows.ModalResult=mrOk then
      begin
        KodeBrg.Text :=FrBrows.QuBrows.FieldByname('KodeBrg').AsString;
        LNamaBrg.Caption:='[ '+FrBrows.QuBrows.FieldByname('NamaBrg').AsString+' ]';
        LSatuan.Caption:=FrBrows.QuBrows.FieldByName('SAT1').AsString;
      end
      else
        ActiveControl:=KodeBrg;
    end;
  end;
end;

procedure TFrSubBOM.KodeBrgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrSubBOM.BitBtn1Click(Sender: TObject);
begin
  if length(KodeBrg.Text)>0 then
  begin
    if Model='write' then
    begin
      SimpanData('I');
      ClearKomponen;
      ActiveControl:=KodeBrg;
    end
    else if Model='koreksi' then
    begin
      SimpanData('U');
      SpeedButton1.Click;
    end;
  end else
  begin
    MsgDataTidakBolehKosong('Kode Barang');
    ActiveControl:=Kodebrg;
  end;
end;

procedure TFrSubBOM.SimpanData(Mode: Char);
begin
  if Mode='I' then
  begin
    DataBuka('select top 1 Urut from dbBOMDet where KodeBOM='+QuotedStr(KodeBOM.Text)+
      ' order by Urut desc ', DM.QuCariUrut);
    if DM.QuCariUrut.IsEmpty then
      mUrut:=1
    else mUrut:=DM.QuCariUrut.FieldByName('Urut').AsInteger+1;
  end
  else mUrut:=QuBeliUrut.AsInteger;

  With Sp_Beli do
  begin
    Parameters.Refresh;
    Parameters[1].Value:=Mode;
    Parameters[2].Value:=KodeBOM.Text;
    Parameters[3].Value:=mSubBOM_KodeBrg;
    Parameters[4].Value:=NoUrut.Text;
    Parameters[5].Value:=IsDefault.Checked;
    Parameters[6].Value:=TglAwal.Date;
    Parameters[7].Value:=TglAkhir.Date;
    Parameters[8].Value:=mUrut;
    Parameters[9].Value:=KodeBrg.Text;
    Parameters[10].Value:=Qnt.AsFloat;
    Parameters[11].Value:=Numerator.AsFloat;
    Parameters[12].Value:=Denominator.AsFloat;
    Parameters[13].Value:=LossRatio.AsFloat;
    Parameters[14].Value:='';
    try
      ExecProc;
      if Mode='I' then
      begin
        LoggingData(IDUser,Mode,'BOM',KodeBOM.Text,
        ' Kode Brg = '+KodeBrg.Text+' ,  Qnt = '+Qnt.Text);
        TampilData;
        QuBeli.Locate('Urut',mUrut,[]);
      end else if Mode='U' then
      begin
        LoggingData(IDUser,Mode,'BOM',KodeBOM.Text,
        ' Kode Brg = '+QuBeliKodeBrg.AsString+' , Qnt = '+QuBeliQnt.DisplayText+chr(13)+
        ' ==> Kode Brg = '+KodeBrg.Text+' , Qnt = '+Qnt.Text);
        TampilData;
        QuBeli.Locate('Urut',mUrut,[]);
      end
      else if Mode='D' then
      begin
        LoggingData(IDUser,Mode,'BOM',KodeBOM.Text,
        ' Kode Brg = '+QuBeliKodeBrg.AsString+' , Qnt = '+QuBeliQnt.DisplayText);
        TampilData;
      end;
    except
      on E: Exception do
      begin
        Application.MessageBox(StrPCopy(S,E.Message),'Peringatan',MB_OK or MB_ICONSTOP);
      end;
    end;
  end;
end;

procedure TFrSubBOM.TambahBtnClick(Sender: TObject);
begin
  Model:='write';
  TampilTombolDetail(True);
  KodeBrg.Enabled:=True;
  ActiveControl:=KodeBrg;
end;

procedure TFrSubBOM.KoreksiBtnClick(Sender: TObject);
begin
  if QuBeli.IsEmpty then
  begin
    ActiveControl:=dxDBGrid1;
    MsgKoreksiDataKosong;
  end else
  begin
    Model:='koreksi';
    TampilTombolDetail(True);
    KodeBrg.Enabled:=True;
    KodeBrg.Text:=QuBeliKodeBrg.AsString;
    LNamaBrg.Caption:='[ '+QuBeliNAMABRG.AsString+' ]';
    Qnt.Value:=QuBeliQnt.AsCurrency;
    LSatuan.Caption:=QuBeliSAT1.AsString;
    Numerator.Value:=QuBeliNumerator.AsFloat;
    Denominator.Value:=QuBeliDenominator.AsFloat;
    LossRatio.Value:=QuBeliLossRatio.AsFloat;
    ActiveControl:=KodeBrg;
  end;
end;

procedure TFrSubBOM.FormShow(Sender: TObject);
begin
  mValid:=False;
  If IsSimpan=True then
  begin
    IsiNoBuktiBaru;
    TampilData;
    NoUrut.Enabled:=True;
    ActiveControl:=dxDBGrid1;
  end
  else
  begin
    KodeBOM.Text:=FrBOM.QuHdBOMKodeBOM.AsString;
    TampilData;
    AmBilData;
    NoUrut.Text:=QuBeliNoUrut.AsString;
    NoUrut.Enabled:=False;
    ActiveControl:=dxDBGrid1;
  end;
end;

procedure TFrSubBOM.KodeBrgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    SpeedButton1.Click;
  end;
end;

procedure TFrSubBOM.QntKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    ClearKomponen;
    if Model='write' then
      ActiveControl:=KodeBrg
    else
      SpeedButton1.Click;
  end;
end;

procedure TFrSubBOM.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
  ClearKomponen;
end;

procedure TFrSubBOM.HapusBtnClick(Sender: TObject);
begin
  if QuBeli.IsEmpty then
  begin
    ActiveControl:=dxDBGrid1;
    MsgHapusDataKosong;
  end
  else
  begin
    StrPCopy(S,Format('Anda yakin Kode %s dan Nama %s dihapus ?',
    [QuBeliKodeBrg.AsString, QuBeliNamaBrg.AsString]));
    if (Application.MessageBox(S,'Hapus Data',
      MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
    begin
      SimpanData('D');
    end;
  end;
end;

end.
