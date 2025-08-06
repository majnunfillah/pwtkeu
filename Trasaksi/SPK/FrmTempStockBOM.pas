unit FrmTempStockBOM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, dxDBGrid, dxTL, dxDBCtrl,
  dxCntner, Buttons, PBNumEdit, RXCtrls;

type
  TFrTempStockBOM = class(TForm)
    Panel1: TPanel;
    QuBeli: TADOQuery;
    DsQuBeli: TDataSource;
    Panel2: TPanel;
    Panel4: TPanel;
    PanelShow1: TPanel;
    dxDBGrid1: TdxDBGrid;
    QuBeliIDUser: TStringField;
    QuBeliKodeBrg: TStringField;
    QuBeliKodeBOM: TStringField;
    QuBeliStrLevelBOM: TStringField;
    QuBeliIntLevelBOM: TIntegerField;
    QuBeliUrut1: TIntegerField;
    QuBeliUrut2: TIntegerField;
    QuBeliQntBOM: TBCDField;
    QuBeliIsBarang: TIntegerField;
    QuBeliQntStock: TBCDField;
    dxDBGrid1IDUser: TdxDBGridMaskColumn;
    dxDBGrid1KodeBrg: TdxDBGridMaskColumn;
    dxDBGrid1KodeBOM: TdxDBGridMaskColumn;
    dxDBGrid1StrLevelBOM: TdxDBGridMaskColumn;
    dxDBGrid1IntLevelBOM: TdxDBGridMaskColumn;
    dxDBGrid1Urut1: TdxDBGridMaskColumn;
    dxDBGrid1Urut2: TdxDBGridMaskColumn;
    dxDBGrid1QntBOM: TdxDBGridMaskColumn;
    dxDBGrid1IsBarang: TdxDBGridMaskColumn;
    dxDBGrid1QntStock: TdxDBGridMaskColumn;
    QuBeliNAMABRG: TStringField;
    dxDBGrid1NAMABRG: TdxDBGridMaskColumn;
    QuBeliL1: TStringField;
    QuBeliL2: TStringField;
    QuBeliL3: TStringField;
    QuBeliL4: TStringField;
    QuBeliL5: TStringField;
    QuBeliL6: TStringField;
    QuBeliL7: TStringField;
    QuBeliL8: TStringField;
    dxDBGrid1L1: TdxDBGridMaskColumn;
    dxDBGrid1L2: TdxDBGridMaskColumn;
    dxDBGrid1L3: TdxDBGridMaskColumn;
    dxDBGrid1L4: TdxDBGridMaskColumn;
    dxDBGrid1L5: TdxDBGridMaskColumn;
    dxDBGrid1L6: TdxDBGridMaskColumn;
    dxDBGrid1L7: TdxDBGridMaskColumn;
    dxDBGrid1L8: TdxDBGridMaskColumn;
    KodeBrg: TEdit;
    Label2: TLabel;
    NamaBrg: TRxLabel;
    Qnt: TPBNumEdit;
    Label3: TLabel;
    Label8: TLabel;
    KodeBOM: TEdit;
    RefreshBtn: TBitBtn;
    TambahBtn: TSpeedButton;
    KoreksiBtn: TSpeedButton;
    HapusBtn: TSpeedButton;
    QuBeliQntBOM_: TFloatField;
    QuBeliQntSisaStock: TBCDField;
    QuBeliQntProduksi: TBCDField;
    dxDBGrid1QntBOM_: TdxDBGridMaskColumn;
    dxDBGrid1QntSisaStock: TdxDBGridMaskColumn;
    dxDBGrid1QntProduksi: TdxDBGridMaskColumn;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    Label11: TLabel;
    BitBtn1: TBitBtn;
    QntProduksi: TPBNumEdit;
    QuBeliQntBOMX: TBCDField;
    dxDBGrid1QntBOMX: TdxDBGridMaskColumn;
    QuBeliQntStockR: TBCDField;
    QuBeliQntOutPO: TBCDField;
    QuBeliQntOutSPK: TBCDField;
    dxDBGrid1QntStockR: TdxDBGridMaskColumn;
    dxDBGrid1QntOutPO: TdxDBGridMaskColumn;
    dxDBGrid1QntOutSPK: TdxDBGridMaskColumn;
    SimpanBOMBtn: TSpeedButton;
    QuBeliQntOutPrd: TBCDField;
    dxDBGrid1QntOutPrd: TdxDBGridMaskColumn;
    LSatuanQnt: TRxLabel;
    QuBeliSat1: TStringField;
    dxDBGrid1Sat1: TdxDBGridMaskColumn;
    procedure KodeBOMEnter(Sender: TObject);
    procedure KodeBOMExit(Sender: TObject);
    procedure RefreshBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeBrgEnter(Sender: TObject);
    procedure KodeBrgExit(Sender: TObject);
    procedure KoreksiBtnClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SimpanBOMBtnClick(Sender: TObject);
  private
    { Private declarations }
    mValid: Boolean;
    Model: String;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure TampilData;
  public
    { Public declarations }
    mNoSPK_TempStockBOM: String;
  end;

var
  FrTempStockBOM: TFrTempStockBOM;

implementation

uses MyModul, MyProcedure, MyGlobal, FrmBrows;

{$R *.dfm}

procedure TFrTempStockBOM.TampilTombolDetail(pNilai: Boolean);
begin
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  Panel3.Enabled:=pNilai;
end;

procedure TFrTempStockBOM.TampilData;
begin
  QuBeli.Close;
  QuBeli.SQL.Strings[2]:='select @IDUser='+QuotedStr(IDUser);
  QuBeli.Open;
end;

procedure TFrTempStockBOM.KodeBOMEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrTempStockBOM.KodeBOMExit(Sender: TObject);
begin
  if mValid Then
  begin
    if (length(KodeBOM.Text)=0) and
      (DataBersyarat('Select A.* from dbBOM A where A.KodeBrg='+QuotedStr(KodeBrg.Text)+
      ' and A.KodeBOM=:0 '+
      ' order by A.KodeBOM ',
      [KodeBOM.Text],DM.QuCari)=True) then
    begin
      KodeBOM.Text:=DM.QuCari.FieldByName('KodeBOM').AsString;
    end else
    begin
      KodeBrows:=50402;
      Application.CreateForm(TFrBrows, FrBrows);
      FrBrows.NoKira:=KodeBrg.Text;
      FrBrows.IsiData:=KodeBOM.Text;
      FrBrows.ShowModal;
      if FrBrows.ModalResult=mrOK then
      begin
        KodeBOM.Text:=FrBrows.QuBrows.FieldByName('KodeBOM').AsString;
      end else
        ActiveControl:=KodeBOM;
    end;
    if KodeBOM.Text<>'' then
    begin
    end;
  end;
end;

procedure TFrTempStockBOM.RefreshBtnClick(Sender: TObject);
begin
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('exec sp_ProsesTempStockBOM '+QuotedStr(IDUser)+','+QuotedStr(KodeBrg.Text)+', ');
    SQL.Add(QuotedStr(KodeBOM.Text)+', :0, '+IntToStr(StrToInt(PeriodThn))+','+IntToStr(StrToInt(PeriodBln))+', ');
    SQL.Add(QuotedStr(mNoSPK_TempStockBOM));
    Prepared;
    Parameters[0].Value:=Qnt.AsCurrency;
    ExecSQL;
  end;
  TampilData;
end;

procedure TFrTempStockBOM.FormShow(Sender: TObject);
begin
  RefreshBtn.Click;
  TampilData;
end;

procedure TFrTempStockBOM.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
end;

procedure TFrTempStockBOM.KodeBrgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrTempStockBOM.KodeBrgExit(Sender: TObject);
begin
  if mValid Then
  begin
    if (length(KodeBrg.Text)<>0) and
      (DataBersyarat('Select A.KodeBrg, A.NamaBrg, A.Sat1, A.Sat2 '+
      ' from dbBarang A '+
      ' where A.IsAktif=1 and A.KodeBrg=:0 '+
      ' order by A.KodeBrg',[KodeBrg.Text],DM.QuCari)=True) then
    begin
        with DM.QuCari do
        begin
           KodeBrg.Text:=fieldbyname('KodeBrg').AsString;
           NamaBrg.Caption:='['+fieldbyname('NamaBrg').AsString+']';
           LSatuanQnt.Caption:='['+FieldByName('Sat1').AsString+']';
        end;
    end else
    begin
      KodeBrows:=2420111;
      Application.CreateForm(TFrBrows, FrBrows);
      FrBrows.IsiData:=KodeBrg.Text;
      FrBrows.ShowModal;
      if FrBrows.ModalResult=mrOk then
      begin
        with FrBrows.QuBrows do
        begin
          KodeBrg.Text:=fieldbyname('KodeBrg').AsString;
          NamaBrg.Caption:='['+fieldbyname('NamaBrg').AsString+']';
          LSatuanQnt.Caption:='['+FieldByName('Sat1').AsString+']';
        end;
      end else
        ActiveControl:=KodeBrg;
    end;
  end;
end;

procedure TFrTempStockBOM.KoreksiBtnClick(Sender: TObject);
begin
  if QuBeliKodeBOM.AsString<>'' then
  begin
     mValid:=False;
     Model:='koreksi';
     if QuBeli.IsEmpty=False then
     begin
       TampilTombolDetail(True);
       QntProduksi.Value:=QuBeliQntProduksi.AsCurrency;
       ActiveControl:=QntProduksi;
     end;
  end;
end;

procedure TFrTempStockBOM.SpeedButton1Click(Sender: TObject);
begin
  mValid:=False;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
end;

procedure TFrTempStockBOM.BitBtn1Click(Sender: TObject);
begin
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('exec sp_ProsesTempStockBOM2 '+QuotedStr(IDUser)+','+QuotedStr(QuBeliKodeBrg.AsString)+', ');
    SQL.Add(QuotedStr(QuBeliKodeBOM.AsString)+', :0, '+IntToStr(StrToInt(PeriodThn))+','+IntToStr(StrToInt(PeriodBln))+', ');
    SQL.Add(QuotedStr(QuBeliStrLevelBOM.AsString)+', ');
    SQL.Add(QuotedStr(mNoSPK_TempStockBOM));
    Prepared;
    Parameters[0].Value:=QntProduksi.AsCurrency;
    ExecSQL;
  end;
  TampilData;
  SpeedButton1.Click;
end;

procedure TFrTempStockBOM.SimpanBOMBtnClick(Sender: TObject);
begin
  ModalResult:=mrOK;
end;

end.
