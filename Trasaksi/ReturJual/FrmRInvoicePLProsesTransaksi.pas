unit FrmRInvoicePLProsesTransaksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, dxTL,
  dxCntner, StdCtrls, Buttons, dxmdaset, frxClass, frxDMPExport, frxDBSet, DateUtils;

type
  TFrRInvoicePLProsesTransaksi = class(TForm)
    Label1: TLabel;
    BtnSimpan: TBitBtn;
    BtnBatal: TBitBtn;
    dxDBGrid1: TdxDBGrid;
    QuSO: TADOQuery;
    dxDBGrid1KeSJ: TdxDBGridCheckColumn;
    Cetak: TSpeedButton;
    QuCetakSO: TADOQuery;
    DsCetakSO: TDataSource;
    frxDBCetak: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    SpeedButton6: TSpeedButton;
    dxMemProsesSPP: TdxMemData;
    dxMemProsesSPPKeSJ: TBooleanField;
    dsMemProsesSPP: TDataSource;
    Sp_Beli: TADOStoredProc;
    QuSONoBukti: TStringField;
    QuSOTanggal: TDateTimeField;
    QuSOKodeCustSupp: TStringField;
    QuSOValas: TStringField;
    QuSOKurs: TBCDField;
    QuSOTIPEBAYAR: TWordField;
    QuSOHARI: TIntegerField;
    QuSOKodeSLS: TIntegerField;
    QuSOPPN: TWordField;
    QuSODISC: TBCDField;
    QuSONoSPB: TStringField;
    QuSOTglSPB: TDateTimeField;
    QuSOUrut: TIntegerField;
    QuSOUrutTrans: TIntegerField;
    QuSOKodeBrg: TStringField;
    QuSONAMABRG: TStringField;
    QuSOQNT1: TBCDField;
    QuSOQNT2: TBCDField;
    QuSOSAT_1: TStringField;
    QuSOSAT_2: TStringField;
    QuSOISI: TBCDField;
    QuSONOSAT: TIntegerField;
    QuSOHARGA: TBCDField;
    QuSODiscP: TBCDField;
    QuSODiscRp: TBCDField;
    QuSODISCTOT: TBCDField;
    QuSOQnt: TBCDField;
    QuSOSatuan: TStringField;
    QuSOSubTotal: TBCDField;
    dxMemProsesSPPKodebrg: TStringField;
    dxMemProsesSPPNamaBrg: TStringField;
    dxMemProsesSPPQnt1: TBCDField;
    dxMemProsesSPPQnt2: TBCDField;
    dxMemProsesSPPQnt: TBCDField;
    dxMemProsesSPPSat_1: TStringField;
    dxMemProsesSPPSat_2: TStringField;
    dxMemProsesSPPSatuan: TStringField;
    dxMemProsesSPPisi: TBCDField;
    dxMemProsesSPPNosat: TIntegerField;
    dxMemProsesSPPHarga: TBCDField;
    dxMemProsesSPPDisc: TBCDField;
    dxMemProsesSPPDiscP: TBCDField;
    dxMemProsesSPPDiscRp: TBCDField;
    dxMemProsesSPPDiscTot: TBCDField;
    dxMemProsesSPPNoInvoice: TStringField;
    dxMemProsesSPPUrutInvoice: TIntegerField;
    dxMemProsesSPPSubTotal: TBCDField;
    dxMemProsesSPPnDPP: TBCDField;
    dxMemProsesSPPnPPN: TBCDField;
    dxMemProsesSPPnNetto: TBCDField;
    dxMemProsesSPPKeyUrut: TStringField;
    QuSOKeyUrut: TStringField;
    dxMemProsesSPPValas: TStringField;
    dxMemProsesSPPPPN: TIntegerField;
    dxDBGrid1RecId: TdxDBGridColumn;
    dxDBGrid1Kodebrg: TdxDBGridMaskColumn;
    dxDBGrid1NamaBrg: TdxDBGridMaskColumn;
    dxDBGrid1Qnt: TdxDBGridMaskColumn;
    dxDBGrid1Satuan: TdxDBGridMaskColumn;
    dxDBGrid1Harga: TdxDBGridMaskColumn;
    dxDBGrid1DiscTot: TdxDBGridMaskColumn;
    dxDBGrid1SubTotal: TdxDBGridMaskColumn;
    dxDBGrid1nDPP: TdxDBGridMaskColumn;
    dxDBGrid1nPPN: TdxDBGridMaskColumn;
    dxDBGrid1nNetto: TdxDBGridMaskColumn;
    dxDBGrid1Valas: TdxDBGridMaskColumn;
    dxDBGrid1PPN: TdxDBGridMaskColumn;
    QuSOnDPP: TBCDField;
    QuSOnPPn: TBCDField;
    QuSOnNetto: TBCDField;
    dxMemProsesSPPTglInvoice: TDateTimeField;
    dxMemProsesSPPTipe: TIntegerField;
    dxMemProsesSPPSupp: TStringField;
    dxMemProsesSPPKurs: TBCDField;
    dxMemProsesSPPTotalDiskon: TBCDField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSimpanClick(Sender: TObject);
    procedure BtnBatalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBGrid1Edited(Sender: TObject; Node: TdxTreeListNode);
  private
    { Private declarations }

  public
    { Public declarations }
    mNOSO_SJProses: String;
    mCetakKitir_SJProses, NoUrut, NoBukti: String;
    TipeTrans,PlusPPN,Nomor,Model:String;
    Tanggal : TDatetime;
    procedure IsiNoBuktiBaru;
    procedure Simpandata(Choice:Char);
  end;

var
  FrRInvoicePLProsesTransaksi: TFrRInvoicePLProsesTransaksi;

implementation

uses FrmBrows, MyProcedure, MyGlobal, MyModul;

{$R *.dfm}

procedure TFrRInvoicePLProsesTransaksi.Simpandata(Choice:Char);
begin
  With Sp_Beli do
  begin
    close;
    Prepared;
    Parameters[1].Value:=Choice;
    Parameters[2].Value:=NoBukti;
    Parameters[3].Value := NoUrut;
    Parameters[4].Value := Tanggal;
    Parameters[5].Value := dxMemProsesSPPNoInvoice.Value;
    Parameters[6].Value := dxMemProsesSPPTglInvoice.Value;
    Parameters[7].Value := dxMemProsesSPPTipe.Value;
    Parameters[8].Value := dxMemProsesSPPSupp.Value;
    Parameters[9].Value := dxMemProsesSPPValas.Value;
    Parameters[10].Value:= dxMemProsesSPPKurs.Value;
    Parameters[11].Value:= dxMemProsesSPPPPN.Value;
    Parameters[12].Value:= '';
    Parameters[13].Value:= null;
    Parameters[14].Value:= '';
    Parameters[15].Value:= null;
    Parameters[16].Value:= '';
    Parameters[17].Value:= null;
    Parameters[18].Value:= 0;
    Parameters[19].Value:= dxMemProsesSPPKodebrg.Value;
    Parameters[20].Value:= dxMemProsesSPPNamaBrg.Value;
    Parameters[21].Value:= dxMemProsesSPPHarga.Value;

    if dxMemProsesSPPNosat.Value=1 then
    begin
      Parameters[22].Value:=dxMemProsesSPPQnt.Value;
      Parameters[23].Value:=dxMemProsesSPPQnt.Value/dxMemProsesSPPisi.Value;
      Parameters[31].Value:=0;
      Parameters[32].Value:=0;
    end
    else if dxMemProsesSPPNosat.Value=2 then
    begin
      Parameters[22].Value:=dxMemProsesSPPQnt.Value*dxMemProsesSPPisi.Value;
      Parameters[23].Value:=dxMemProsesSPPQnt.Value;
      Parameters[31].Value:=0;
      Parameters[32].Value:=0;
    end;

    Parameters[24].Value:=dxMemProsesSPPSat_1.Value;
    Parameters[25].Value:=dxMemProsesSPPSat_2.Value;
    Parameters[26].Value:=dxMemProsesSPPisi.Value;
    Parameters[27].Value:=dxMemProsesSPPNosat.Value;
    Parameters[28].Value:=dxMemProsesSPPUrutInvoice.Value;
    Parameters[29].Value:='';
    Parameters[30].Value:=IDUser;
    Parameters[33].Value:=0;
    Parameters[34].Value:=0;
    Parameters[35].Value:=0;
    Parameters[36].Value:=0;
    Parameters[37].Value:=0;
    Parameters[38].Value:=0;
    Parameters[39].Value := 0;
    Parameters[40].Value:='';
    Parameters[41].Value := null;
    Parameters[42].Value := dxMemProsesSPPDisc.Value;
    Parameters[43].Value := (dxDBGrid1SubTotal.SummaryFooterValue*dxMemProsesSPPDisc.Value)*100;
    Parameters[44].Value := dxMemProsesSPPDiscp.Value;
    Parameters[45].Value := dxMemProsesSPPDiscRp.Value;
    Parameters[46].Value := dxMemProsesSPPDiscTot.Value;
    try
      ExecProc;
        LoggingData(IDUser,Choice,'RJual',NoBukti,
                    'No Invoice '+dxMemProsesSPPNoInvoice.Value);
      UpdateUrutTransaksi('DBRInvoicePLDet',NoBukti);
    except
      MsgProsesGagal(Choice);
    end;
  end;
end;

procedure TFrRInvoicePLProsesTransaksi.IsiNoBuktiBaru;
var YY,MM,DD : Word;
begin
  DecodeDate(Date,YY,MM,DD);
  If DayOfTheMonth(Date)<=DD then
     DD:=DayOfTheMonth(Date);
  try
    TANGGAL := EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),DD);
  except
    TANGGAL:=EndOfAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln));
  end;
  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal);
  NoUrut:=NomorBukti;
  NOBUKTI:=Nomor;
end;

procedure TFrRInvoicePLProsesTransaksi.FormShow(Sender: TObject);
var xKeyUrut: Integer;
begin
  QuSO.Close;
  QuSO.SQL.Strings[2]:='select @NoBukti='+QuotedStr(mNOSO_SJProses)+', @Bulan='+PeriodBln+', @Tahun='+PeriodThn;
  QuSO.Open;
  xKeyUrut:=0;
  QuSO.DisableControls;
  QuSO.First;
  dxMemProsesSPP.Close;
  dxMemProsesSPP.Open;
  while (not QuSO.Eof) and (Not QuSO.IsEmpty)do
  begin
    xKeyUrut:=xKeyUrut+1;
    dxMemProsesSPP.Append;
    dxMemProsesSPPKeyUrut.Value:=QuSOKeyUrut.AsString;
    dxMemProsesSPPNoInvoice.Value:=QuSONoBukti.Value;
    dxMemProsesSPPTglInvoice.Value:=QuSOTanggal.Value;
    dxMemProsesSPPUrutInvoice.Value:=QuSOUrut.Value;
    dxMemProsesSPPKodebrg.Value := QuSOKodeBrg.Value;
    dxMemProsesSPPNamaBrg.Value := QuSONAMABRG.Value;
    dxMemProsesSPPQnt1.Value := QuSOQNT1.Value;
    dxMemProsesSPPQnt2.Value := QuSOQNT2.Value;
    dxMemProsesSPPQnt.Value := QuSOQnt.Value;
    dxMemProsesSPPNosat.Value:=QuSONOSAT.Value;
    dxMemProsesSPPisi.Value :=QuSOISI.Value;
    dxMemProsesSPPSat_1.Value := QuSOSAT_1.Value;
    dxMemProsesSPPSat_2.Value := QuSOSAT_2.Value;
    dxMemProsesSPPSatuan.Value := QuSOSatuan.Value;
    dxMemProsesSPPHarga.Value := QuSOHARGA.Value;
    dxMemProsesSPPDiscP.Value := QuSODiscP.Value;
    dxMemProsesSPPDiscRp.Value := QuSODiscRp.Value;
    dxMemProsesSPPDisc.Value := QuSODISC.Value;
    dxMemProsesSPPDiscTot.Value := QuSODISCTOT.Value;
    dxMemProsesSPPTotalDiskon.Value := QuSODISCTOT.Value+((QuSODISCTOT.Value*QuSODISC.Value)/100);
    dxMemProsesSPPPPN.Value := QuSOPPN.Value;
    dxMemProsesSPPSubTotal.Value := QuSOSubTotal.Value;
    dxMemProsesSPPnPPN.Value := QuSOnPPn.Value;
    dxMemProsesSPPnDPP.Value := QuSOnDPP.Value;
    dxMemProsesSPPnNetto.Value := QuSOnDPP.Value;
    dxMemProsesSPPValas.Value := QuSOValas.Value;
    dxMemProsesSPPKurs.Value := QuSOKurs.Value;
    dxMemProsesSPPSupp.Value := QuSOKodeCustSupp.Value;
    dxMemProsesSPPTipe.Value := QuSOTIPEBAYAR.Value;
    dxMemProsesSPP.Post;
    QuSO.Next;
  end;
  QuSO.EnableControls;
end;

procedure TFrRInvoicePLProsesTransaksi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrRInvoicePLProsesTransaksi.BtnSimpanClick(Sender: TObject);
var xAdaKeSJ: Boolean;
begin
  xAdaKeSJ:=False;
  dxMemProsesSPP.First;
  //IsiNoBuktiBaru;
  while not dxMemProsesSPP.Eof do
  begin
    if (dxMemProsesSPPKeSJ.Value=True) //and (dxMemProsesSPPQntSisa.Value <= dxMemProsesSPPQntStock.Value)
       then
    begin
      Simpandata('I');
    end;
    dxMemProsesSPP.Next;
  end;
  //if xAdaKeSJ then
    ModalResult:=mrOk
  {else
  begin
    MessageDlg('Pilih SO (Sales Order) yang akan dibuatkan Surat Perintah Pengiriman !',
      mtInformation, [mbOk], 0);
    ActiveControl:=dxDBGrid1;
  end; }
end;

procedure TFrRInvoicePLProsesTransaksi.BtnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFrRInvoicePLProsesTransaksi.FormCreate(Sender: TObject);
begin
  TipeTrans := 'INVC';
end;

procedure TFrRInvoicePLProsesTransaksi.dxDBGrid1Edited(Sender: TObject;
  Node: TdxTreeListNode);
  Var MySubTotal : Real;
begin
  with dxMemProsesSPP do
  begin
    edit;
    MySubTotal := ((dxMemProsesSPPHarga.Value-dxMemProsesSPPDiscTot.Value)*dxDBGrid1Qnt.Field.Value)-
                  (((((dxMemProsesSPPHarga.Value-dxMemProsesSPPDiscTot.Value)*dxDBGrid1Qnt.Field.Value))*dxMemProsesSPPDisc.Value)/100);
    dxMemProsesSPPSubTotal.Value := MySubTotal;
    dxMemProsesSPPQnt.Value:=dxDBGrid1Qnt.Field.Value;
    Case dxMemProsesSPPPPN.Value of
      0 : Begin
            dxMemProsesSPPnDPP.Value := MySubTotal;
            dxMemProsesSPPnPPN.Value := 0.00;
            dxMemProsesSPPnNetto.Value := MySubTotal;
          end;
      1 : Begin
            dxMemProsesSPPnDPP.Value := MySubTotal;
            dxMemProsesSPPnPPN.Value := MySubTotal*0.1;
            dxMemProsesSPPnNetto.Value :=MySubTotal+(MySubTotal*0.1);
          end;
      2 : Begin
            dxMemProsesSPPnDPP.Value := MySubTotal/1.1;
            dxMemProsesSPPnPPN.Value := (MySubTotal/1.1)*0.1;
            dxMemProsesSPPnNetto.Value :=(MySubTotal/1.1)+((MySubTotal/1.1)*0.1);
          end;
    end;
    Post;
    Refresh;
  end;
end;

end.
