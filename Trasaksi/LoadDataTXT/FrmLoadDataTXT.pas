unit FrmLoadDataTXT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, dxmdaset, dxCntner, dxTL, dxDBCtrl, dxDBGrid, StdCtrls,
  Buttons, xmldom, XMLIntf, msxmldom, XMLDoc, ComCtrls, ADODB,
  dxPageControl, ExtCtrls, DBCtrls,ShellApi, dxDBTLCl, dxGrClms, cxExportGrid4Link,
  StrUtils;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;
  TFrLoadDataTXT = class(TForm)
    dxData: TdxMemData;
    dxDataMPI_No: TStringField;
    dxDataProduce_No: TStringField;
    dxDataCCC_Code: TStringField;
    dxDataPurchase_DetailID: TStringField;
    dxDataMaterialID: TStringField;
    dxDataDescription: TStringField;
    dxDataUnit: TStringField;
    dxDataCurrency: TStringField;
    dxDataUnit_Price: TFloatField;
    dxDataQTY: TFloatField;
    OpenDialog1: TOpenDialog;
    FileXML: TXMLDocument;
    QuXML: TADOQuery;
    QuXLSPembelian: TADOQuery;
    DsQuXLSPembelian: TDataSource;
    Panel1: TPanel;
    dxPageControl1: TdxPageControl;
    dxTSDafSJ: TdxTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxTSDafSO: TdxTabSheet;
    Panel2: TPanel;
    PB: TProgressBar;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    QuKePOImport: TADOQuery;
    QuKePOImportKeyUrut: TAutoIncField;
    QuKePOImportMPI_No: TStringField;
    QuKePOImportProduce_No: TStringField;
    QuKePOImportCCC_Code: TStringField;
    QuKePOImportPurchase_DetailID: TIntegerField;
    QuKePOImportMaterialID: TIntegerField;
    QuKePOImportDescription: TStringField;
    QuKePOImportUnit: TStringField;
    QuKePOImportCurrency: TStringField;
    QuKePOImportUnit_Price: TFloatField;
    QuKePOImportQTY: TFloatField;
    QuKePOImportKodeBrgPH: TStringField;
    QuKePOImportNamaBrgPH: TStringField;
    QuKePOImportSatPH: TStringField;
    QuKePOImportQNT: TFloatField;
    QuKePOImportNameXML: TStringField;
    SaveDialog: TSaveDialog;
    OpenDialog2: TOpenDialog;
    QuExecD: TADOQuery;
    LblKodeBrgBelumSesuai: TLabel;
    dxDBGrid1KeyUrut: TdxDBGridMaskColumn;
    dxDBGrid1NoBukti: TdxDBGridMaskColumn;
    dxDBGrid1Urut: TdxDBGridMaskColumn;
    dxDBGrid1Tanggal: TdxDBGridDateColumn;
    dxDBGrid1JatuhTempo: TdxDBGridDateColumn;
    dxDBGrid1PPn: TdxDBGridMaskColumn;
    dxDBGrid1KodeCustSupp: TdxDBGridMaskColumn;
    dxDBGrid1KodeTipe: TdxDBGridMaskColumn;
    dxDBGrid1KodeSubTipe: TdxDBGridMaskColumn;
    dxDBGrid1Qnt: TdxDBGridMaskColumn;
    dxDBGrid1Harga: TdxDBGridMaskColumn;
    dxDBGrid1NDPP: TdxDBGridMaskColumn;
    dxDBGrid1NPPN: TdxDBGridMaskColumn;
    dxDBGrid1NNet: TdxDBGridMaskColumn;
    dxDBGrid1AccPersediaan: TdxDBGridMaskColumn;
    dxDBGrid1AccPPN: TdxDBGridMaskColumn;
    dxDBGrid1AccHutPiut: TdxDBGridMaskColumn;
    dxDBGrid1IsExcel: TdxDBGridCheckColumn;
    QuXLSPembelianKeyUrut: TAutoIncField;
    QuXLSPembelianNoBukti: TStringField;
    QuXLSPembelianUrut: TIntegerField;
    QuXLSPembelianTanggal: TDateTimeField;
    QuXLSPembelianJatuhTempo: TDateTimeField;
    QuXLSPembelianPPn: TWordField;
    QuXLSPembelianKodeCustSupp: TStringField;
    QuXLSPembelianKodeTipe: TStringField;
    QuXLSPembelianKodeSubTipe: TStringField;
    QuXLSPembelianQnt: TBCDField;
    QuXLSPembelianHarga: TBCDField;
    QuXLSPembelianNDPP: TBCDField;
    QuXLSPembelianNPPN: TBCDField;
    QuXLSPembelianNNet: TBCDField;
    QuXLSPembelianAccPersediaan: TStringField;
    QuXLSPembelianAccPPN: TStringField;
    QuXLSPembelianAccHutPiut: TStringField;
    QuXLSPembelianIsExcel: TBooleanField;
    sp_Pembelian: TADOStoredProc;
    sp_Penjualan: TADOStoredProc;
    QuXLSPembelianNAMACUSTSUPP: TStringField;
    QuXLSPembelianNamaTipe: TStringField;
    QuXLSPembelianNamaSubTipe: TStringField;
    dxDBGrid1NAMACUSTSUPP: TdxDBGridMaskColumn;
    dxDBGrid1NamaTipe: TdxDBGridMaskColumn;
    dxDBGrid1NamaSubTipe: TdxDBGridMaskColumn;
    sp_RPembelian: TADOStoredProc;
    sp_RPenjualan: TADOStoredProc;
    QuXLSPembelianKodeVls: TStringField;
    QuXLSPembelianKurs: TBCDField;
    QuXLSPembelianNDPPD: TBCDField;
    QuXLSPembelianNPPND: TBCDField;
    QuXLSPembelianNNetD: TBCDField;
    dxDBGrid1Kurs: TdxDBGridMaskColumn;
    dxDBGrid1NDPPD: TdxDBGridMaskColumn;
    dxDBGrid1NPPND: TdxDBGridMaskColumn;
    dxDBGrid1NNetD: TdxDBGridMaskColumn;
    dxDBGrid1KodeVls: TdxDBGridMaskColumn;
    FMemo: TMemo;
    QuXLSPembelianNoBukti_: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure FormCreate(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    mDataKe: array [1..13] of String;
    procedure KosongkanDataTemp;
    procedure RefreshData;
    procedure TampilIsiData;
    procedure SimpanDataPembelian;
    procedure SimpanDataRPembelian;
    procedure SimpanDataPenjualan;
    procedure SimpanDataRPenjualan;
  public
    { Public declarations }
    mPengirimLoadData: Integer;
  end;

var
  FrLoadDataTXT: TFrLoadDataTXT;

implementation

uses MyProcedure, MyGlobal, MyModul, FrmBrows;

{$R *.dfm}

procedure TFrLoadDataTXT.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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

procedure TFrLoadDataTXT.KosongkanDataTemp;
begin
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('truncate table XLSPembelian ');
    ExecSQL;
  end;
end;

procedure TFrLoadDataTXT.RefreshData;
begin
  QuXLSPembelian.Close;
  QuXLSPembelian.Open;
end;

procedure TFrLoadDataTXT.TampilIsiData;
var i, j, xJmlBaris, xPosTab: Integer;
    sLineAsli, xChrTab, sLineTemp, sSQLText: String;
begin
  LblKodeBrgBelumSesuai.Visible:=False;
  PB.Visible:=True;
  xChrTab:=chr(9);
  xJmlBaris:=FMemo.Lines.Count;
  PB.Max:=xJmlBaris;
  sLineAsli:=FMemo.Lines.Strings[0];
  i:=1;
  while i<xJmlBaris do
  begin
    sSQLText:='';
    sLineAsli:=FMemo.Lines.Strings[i];
    for j := 1 to 13 do
    begin
      xPosTab:=Pos(xChrTab, sLineAsli);
      if xPosTab=0 then mDataKe[j]:=sLineAsli
      else if xPosTab=1 then
      begin
        mDataKe[j]:='';
        sLineTemp:=copy(sLineAsli,xPosTab+1,length(sLineAsli)-xPosTab);
      end else
      begin
        mDataKe[j]:=copy(sLineAsli,1,xPosTab-1);
        sLineTemp:=copy(sLineAsli,xPosTab+1,length(sLineAsli)-xPosTab);
      end;
      sLineAsli:=sLineTemp;
    end;
    with QuExecD do
    begin
      Close;
      SQL.Clear;
      if (mPengirimLoadData=3) or (mPengirimLoadData=4) then
      SQL.Add('insert into XLSPembelian(NoBukti,Tanggal,NoBukti_,  KodeCustSupp,KodeTipe,KodeSubTipe,')
      else
      SQL.Add('insert into XLSPembelian(NoBukti,Tanggal,JatuhTempo,KodeCustSupp,KodeTipe,KodeSubTipe,');
      //                                   0       1         2          3           4          5
      SQL.Add('Qnt,Harga,KodeVls,Kurs,NDPP,NPPN,NNet,NDPPD,NPPND,NNetD)');
      //        6    7      8      9   10   11   12   13    14     15
      SQL.Add('values(:0,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15)');
      Prepared;
      Parameters[0].Value:=mDataKe[2];
      try
        Parameters[1].Value:=StrToDate(mDataKe[1]);
      except
        Parameters[1].Value:=null;
      end;
      try
        if (mPengirimLoadData=3) or (mPengirimLoadData=4) then
        Parameters[2].Value:=mDataKe[3]
        else
        Parameters[2].Value:=StrToDate(mDataKe[3]);
      except
        Parameters[2].Value:=null;
      end;
      Parameters[3].Value:=mDataKe[4];
      Parameters[4].Value:=mDataKe[13];
      Parameters[5].Value:=mDataKe[12];
      try
        Parameters[6].Value:=StrToFloat(mDataKe[5]);
      except
        Parameters[6].Value:=0;
      end;
      try
        Parameters[7].Value:=StrToFloat(mDataKe[6]);
      except
        Parameters[7].Value:=0;
      end;
      Parameters[8].Value:=trim(mDataKe[7]);
      try
        Parameters[9].Value:=StrToFloat(mDataKe[8]);
      except
        Parameters[9].Value:=0;
      end;
      try
        Parameters[10].Value:=StrToFloat(mDataKe[9])*StrToFloat(mDataKe[8]);
      except
        Parameters[10].Value:=0;
      end;
      try
        Parameters[11].Value:=StrToFloat(mDataKe[10])*StrToFloat(mDataKe[8]);
      except
        Parameters[11].Value:=0;
      end;
      try
        Parameters[12].Value:=StrToFloat(mDataKe[11])*StrToFloat(mDataKe[8]);
      except
        Parameters[12].Value:=0;
      end;
      try
        if trim(mDataKe[7])='IDR' then
          Parameters[13].Value:=0
        else Parameters[13].Value:=StrToFloat(mDataKe[9]);
      except
        Parameters[13].Value:=0;
      end;
      try
        if trim(mDataKe[7])='IDR' then
          Parameters[14].Value:=0
        else Parameters[14].Value:=StrToFloat(mDataKe[10]);
      except
        Parameters[14].Value:=0;
      end;
      try
        if trim(mDataKe[7])='IDR' then
          Parameters[15].Value:=0
        else Parameters[15].Value:=StrToFloat(mDataKe[11]);
      except
        Parameters[15].Value:=0;
      end;
      try
        ExecSQL;
      except
      end;
    end;
    i:=i+1;
    PB.Position:=i;
    Application.ProcessMessages;
  end;
  PB.Position:=0;
  RefreshData;
end;

procedure TFrLoadDataTXT.SimpanDataPembelian;
var xUrut: Integer;
begin
  PB.Position:=0;
  if QuXLSPembelian.IsEmpty then
    PB.Max:=1
  else
    PB.Max:=QuXLSPembelian.RecordCount;
  QuXLSPembelian.First;
  while not QuXLSPembelian.Eof do
  begin
    with DM.QuCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select top 1 Urut from dbPembelian where NoBukti='+QuotedStr(QuXLSPembelianNoBukti.AsString));
      SQL.Add('order by Urut desc ');
      Open;
      if IsEmpty then
        xUrut:=1
      else
        xUrut:=FieldByName('Urut').AsInteger+1;
    end;

    with sp_Pembelian do
    begin
      Prepared;
      Parameters[1].Value:='I';
      Parameters[2].Value:=QuXLSPembelianNoBukti.AsString;
      Parameters[3].Value:=xUrut;
      Parameters[4].Value:=QuXLSPembelianTanggal.AsDateTime;
      Parameters[5].Value:=QuXLSPembelianJatuhTempo.AsDateTime;
      Parameters[6].Value:=QuXLSPembelianKodeCustSupp.AsString;
      Parameters[7].Value:=0;
      Parameters[8].Value:=QuXLSPembelianKodeTipe.AsString;
      Parameters[9].Value:=QuXLSPembelianKodeSubTipe.AsString;
      Parameters[10].Value:=QuXLSPembelianQnt.AsFloat;
      Parameters[11].Value:=QuXLSPembelianHarga.AsFloat;
      Parameters[12].Value:=QuXLSPembelianNDPP.AsFloat;
      Parameters[13].Value:=QuXLSPembelianNPPN.AsFloat;
      Parameters[14].Value:=QuXLSPembelianNNet.AsFloat;
      Parameters[15].Value:=QuXLSPembelianAccPersediaan.AsString;
      Parameters[16].Value:=QuXLSPembelianAccPPN.AsString;
      Parameters[17].Value:=QuXLSPembelianAccHutPiut.AsString;
      Parameters[18].Value:=True;
      Parameters[19].Value:=QuXLSPembelianKodeVls.AsString;
      Parameters[20].Value:=QuXLSPembelianKurs.AsFloat;
      Parameters[21].Value:=QuXLSPembelianNDPPD.AsFloat;
      Parameters[22].Value:=QuXLSPembelianNPPND.AsFloat;
      Parameters[23].Value:=QuXLSPembelianNNetD.AsFloat;
      try
        ExecProc;
      except
      end;
    end;
    PB.Position:=QuXLSPembelian.RecNo;
    Application.ProcessMessages;
    QuXLSPembelian.Next;
  end;
  PB.Position:=0;
  ModalResult:=mrOK;
end;

procedure TFrLoadDataTXT.SimpanDataRPembelian;
var xUrut: Integer;
begin
  PB.Position:=0;
  if QuXLSPembelian.IsEmpty then
    PB.Max:=1
  else
    PB.Max:=QuXLSPembelian.RecordCount;
  QuXLSPembelian.First;
  while not QuXLSPembelian.Eof do
  begin
    with DM.QuCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select top 1 Urut from dbRPembelian where NoBukti='+QuotedStr(QuXLSPembelianNoBukti.AsString));
      SQL.Add('order by Urut desc ');
      Open;
      if IsEmpty then
        xUrut:=1
      else
        xUrut:=FieldByName('Urut').AsInteger+1;
    end;

    with sp_RPembelian do
    begin
      Prepared;
      Parameters[1].Value:='I';
      Parameters[2].Value:=QuXLSPembelianNoBukti.AsString;
      Parameters[3].Value:=xUrut;
      Parameters[4].Value:=QuXLSPembelianTanggal.AsDateTime;
      Parameters[5].Value:=QuXLSPembelianTanggal.AsDateTime;
      Parameters[6].Value:=QuXLSPembelianKodeCustSupp.AsString;
      Parameters[7].Value:=0;
      Parameters[8].Value:=QuXLSPembelianKodeTipe.AsString;
      Parameters[9].Value:=QuXLSPembelianKodeSubTipe.AsString;
      Parameters[10].Value:=QuXLSPembelianQnt.AsFloat;
      Parameters[11].Value:=QuXLSPembelianHarga.AsFloat;
      Parameters[12].Value:=QuXLSPembelianNDPP.AsFloat;
      Parameters[13].Value:=QuXLSPembelianNPPN.AsFloat;
      Parameters[14].Value:=QuXLSPembelianNNet.AsFloat;
      Parameters[15].Value:=QuXLSPembelianAccPersediaan.AsString;
      Parameters[16].Value:=QuXLSPembelianAccPPN.AsString;
      Parameters[17].Value:=QuXLSPembelianAccHutPiut.AsString;
      Parameters[18].Value:=True;
      Parameters[19].Value:=QuXLSPembelianKodeVls.AsString;
      Parameters[20].Value:=QuXLSPembelianKurs.AsFloat;
      Parameters[21].Value:=QuXLSPembelianNDPPD.AsFloat;
      Parameters[22].Value:=QuXLSPembelianNPPND.AsFloat;
      Parameters[23].Value:=QuXLSPembelianNNetD.AsFloat;
      Parameters[24].Value:=QuXLSPembelianNoBukti_.AsString;
      try
        ExecProc;
      except
      end;
    end;
    PB.Position:=QuXLSPembelian.RecNo;
    Application.ProcessMessages;
    QuXLSPembelian.Next;
  end;
  PB.Position:=0;
  ModalResult:=mrOK;
end;

procedure TFrLoadDataTXT.SimpanDataPenjualan;
var xUrut: Integer;
begin
  PB.Position:=0;
  if QuXLSPembelian.IsEmpty then
    PB.Max:=1
  else
    PB.Max:=QuXLSPembelian.RecordCount;
  QuXLSPembelian.First;
  while not QuXLSPembelian.Eof do
  begin
    with DM.QuCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select top 1 Urut from dbPenjualan where NoBukti='+QuotedStr(QuXLSPembelianNoBukti.AsString));
      SQL.Add('order by Urut desc ');
      Open;
      if IsEmpty then
        xUrut:=1
      else
        xUrut:=FieldByName('Urut').AsInteger+1;
    end;

    with sp_Penjualan do
    begin
      Prepared;
      Parameters[1].Value:='I';
      Parameters[2].Value:=QuXLSPembelianNoBukti.AsString;
      Parameters[3].Value:=xUrut;
      Parameters[4].Value:=QuXLSPembelianTanggal.AsDateTime;
      Parameters[5].Value:=QuXLSPembelianJatuhTempo.AsDateTime;
      Parameters[6].Value:=QuXLSPembelianKodeCustSupp.AsString;
      Parameters[7].Value:=0;
      Parameters[8].Value:=QuXLSPembelianKodeTipe.AsString;
      Parameters[9].Value:=QuXLSPembelianKodeSubTipe.AsString;
      Parameters[10].Value:=QuXLSPembelianQnt.AsFloat;
      Parameters[11].Value:=QuXLSPembelianHarga.AsFloat;
      Parameters[12].Value:=QuXLSPembelianNDPP.AsFloat;
      Parameters[13].Value:=QuXLSPembelianNPPN.AsFloat;
      Parameters[14].Value:=QuXLSPembelianNNet.AsFloat;
      Parameters[15].Value:=QuXLSPembelianAccPersediaan.AsString;
      Parameters[16].Value:=QuXLSPembelianAccPPN.AsString;
      Parameters[17].Value:=QuXLSPembelianAccHutPiut.AsString;
      Parameters[18].Value:=True;
      Parameters[19].Value:=QuXLSPembelianKodeVls.AsString;
      Parameters[20].Value:=QuXLSPembelianKurs.AsFloat;
      Parameters[21].Value:=QuXLSPembelianNDPPD.AsFloat;
      Parameters[22].Value:=QuXLSPembelianNPPND.AsFloat;
      Parameters[23].Value:=QuXLSPembelianNNetD.AsFloat;
      try
        ExecProc;
      except
      end;
    end;
    PB.Position:=QuXLSPembelian.RecNo;
    Application.ProcessMessages;
    QuXLSPembelian.Next;
  end;
  PB.Position:=0;
  ModalResult:=mrOK;
end;

procedure TFrLoadDataTXT.SimpanDataRPenjualan;
var xUrut: Integer;
begin
  PB.Position:=0;
  if QuXLSPembelian.IsEmpty then
    PB.Max:=1
  else
    PB.Max:=QuXLSPembelian.RecordCount;
  QuXLSPembelian.First;
  while not QuXLSPembelian.Eof do
  begin
    with DM.QuCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select top 1 Urut from dbRPenjualan where NoBukti='+QuotedStr(QuXLSPembelianNoBukti.AsString));
      SQL.Add('order by Urut desc ');
      Open;
      if IsEmpty then
        xUrut:=1
      else
        xUrut:=FieldByName('Urut').AsInteger+1;
    end;

    with sp_RPenjualan do
    begin
      Prepared;
      Parameters[1].Value:='I';
      Parameters[2].Value:=QuXLSPembelianNoBukti.AsString;
      Parameters[3].Value:=xUrut;
      Parameters[4].Value:=QuXLSPembelianTanggal.AsDateTime;
      Parameters[5].Value:=QuXLSPembelianTanggal.AsDateTime;
      Parameters[6].Value:=QuXLSPembelianKodeCustSupp.AsString;
      Parameters[7].Value:=0;
      Parameters[8].Value:=QuXLSPembelianKodeTipe.AsString;
      Parameters[9].Value:=QuXLSPembelianKodeSubTipe.AsString;
      Parameters[10].Value:=QuXLSPembelianQnt.AsFloat;
      Parameters[11].Value:=QuXLSPembelianHarga.AsFloat;
      Parameters[12].Value:=QuXLSPembelianNDPP.AsFloat;
      Parameters[13].Value:=QuXLSPembelianNPPN.AsFloat;
      Parameters[14].Value:=QuXLSPembelianNNet.AsFloat;
      Parameters[15].Value:=QuXLSPembelianAccPersediaan.AsString;
      Parameters[16].Value:=QuXLSPembelianAccPPN.AsString;
      Parameters[17].Value:=QuXLSPembelianAccHutPiut.AsString;
      Parameters[18].Value:=True;
      Parameters[19].Value:=QuXLSPembelianKodeVls.AsString;
      Parameters[20].Value:=QuXLSPembelianKurs.AsFloat;
      Parameters[21].Value:=QuXLSPembelianNDPPD.AsFloat;
      Parameters[22].Value:=QuXLSPembelianNPPND.AsFloat;
      Parameters[23].Value:=QuXLSPembelianNNetD.AsFloat;
      Parameters[24].Value:=QuXLSPembelianNoBukti_.AsString;
      try
        ExecProc;
      except
      end;
    end;
    PB.Position:=QuXLSPembelian.RecNo;
    Application.ProcessMessages;
    QuXLSPembelian.Next;
  end;
  PB.Position:=0;
  ModalResult:=mrOK;
end;

procedure TFrLoadDataTXT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrLoadDataTXT.FormActivate(Sender: TObject);
begin
  if (mPengirimLoadData=1) or (mPengirimLoadData=3) then
  begin
    dxDBGrid1KodeCustSupp.Caption:='Supplier';
    dxDBGrid1NAMACUSTSUPP.Caption:='Nama Supplier';
  end
  else
  if (mPengirimLoadData=2) or (mPengirimLoadData=4) then
  begin
    dxDBGrid1KodeCustSupp.Caption:='Customer';
    dxDBGrid1NAMACUSTSUPP.Caption:='Nama Customer';
  end;
  Application.ProcessMessages;
  KosongkanDataTemp;
  Application.ProcessMessages;
  TampilIsiData;
  ActiveControl:=dxDBGrid1;
end;

procedure TFrLoadDataTXT.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrLoadDataTXT.BitBtn1Click(Sender: TObject);
begin
  if mPengirimLoadData=1 then
  begin
    SimpanDataPembelian;
  end else
  if mPengirimLoadData=2 then
  begin
    SimpanDataPenjualan;
  end else
  if mPengirimLoadData=3 then
  begin
    SimpanDataRPembelian;
  end else
  if mPengirimLoadData=4 then
  begin
    SimpanDataRPenjualan;
  end;
end;

procedure TFrLoadDataTXT.FormCreate(Sender: TObject);
begin
  WindowState:=wsMaximized;
end;

procedure TFrLoadDataTXT.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    Close;
  end
  else
  if Key=VK_Return then
  begin
  end;
end;

end.
