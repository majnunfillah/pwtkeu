unit FrmSPKPesanProses;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, dxTL,
  dxCntner, StdCtrls, Buttons, dxmdaset, frxClass, frxDMPExport, frxDBSet, DateUtils;

type
  TFrSPKPesanProses = class(TForm)
    Label1: TLabel;
    BtnSimpan: TBitBtn;
    BtnBatal: TBitBtn;
    dxDBGrid1: TdxDBGrid;
    QuSO: TADOQuery;
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
    dxMemProsesSPPNoBukti: TStringField;
    dxMemProsesSPPUrut: TIntegerField;
    dxMemProsesSPPTanggal: TDateTimeField;
    dxMemProsesSPPKodeBrg: TStringField;
    dxMemProsesSPPNamaBrg: TStringField;
    dxMemProsesSPPHarga: TCurrencyField;
    dxMemProsesSPPQnt: TIntegerField;
    dxDBGrid1KeSJ: TdxDBGridCheckColumn;
    dxDBGrid1NoBukti: TdxDBGridMaskColumn;
    dxDBGrid1Urut: TdxDBGridMaskColumn;
    dxDBGrid1Tanggal: TdxDBGridDateColumn;
    dxDBGrid1KodeBrg: TdxDBGridMaskColumn;
    dxDBGrid1NamaBrg: TdxDBGridMaskColumn;
    dxDBGrid1Qnt: TdxDBGridMaskColumn;
    dxDBGrid1Harga: TdxDBGridCurrencyColumn;
    QuSONOBUKTI: TStringField;
    QuSOURUT: TIntegerField;
    QuSOKodeBrg: TStringField;
    QuSOHARGA: TBCDField;
    QuSONAMABRG: TStringField;
    QuSOTANGGAL: TDateTimeField;
    QuSONoSPK: TStringField;
    QuSOQnt: TBCDField;
    QuSOSAT1: TStringField;
    QuSOISI1: TBCDField;
    dxMemProsesSPPSat1: TStringField;
    dxMemProsesSPPIsi1: TFloatField;
    dxDBGrid1Sat1: TdxDBGridMaskColumn;
    dxDBGrid1Isi1: TdxDBGridMaskColumn;
    QuSOBuktiUrut: TStringField;
    dxMemProsesSPPBuktiUrut: TStringField;
    dxDBGrid1BuktiUrut: TdxDBGridMaskColumn;
    QuSOAlamat: TStringField;
    QuSOTelepon: TStringField;
    QuSOPemesan: TStringField;
    QuSOTanggalAmbil: TDateTimeField;
    dxMemProsesSPPPemesan: TStringField;
    dxMemProsesSPPAlamat: TStringField;
    dxMemProsesSPPTelepon: TStringField;
    dxMemProsesSPPTanggalAmbil: TDateTimeField;
    dxDBGrid1Pemesan: TdxDBGridMaskColumn;
    dxDBGrid1Alamat: TdxDBGridMaskColumn;
    dxDBGrid1Telepon: TdxDBGridMaskColumn;
    dxDBGrid1TanggalAmbil: TdxDBGridDateColumn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSimpanClick(Sender: TObject);
    procedure BtnBatalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CetakClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure dxDBGrid1Edited(Sender: TObject; Node: TdxTreeListNode);
    procedure frxReport1AfterPrintReport(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    Tanggal : TDatetime;
  public
    { Public declarations }
    mNOSO_SJProses: String;
    mCetakKitir_SJProses, NoUrut, NoBukti: String;
    TipeTrans,PlusPPN,Nomor,Model:String;
    procedure IsiNoBuktiBaru;
    procedure Simpandata(Choice:Char);
  end;

var
  FrSPKPesanProses: TFrSPKPesanProses;

implementation

uses FrmBrows, MyProcedure, MyGlobal, MyModul, FrmSPKPesan;

{$R *.dfm}

procedure TFrSPKPesanProses.Simpandata(Choice:Char);
begin
{
  With Sp_Beli do
  begin
       Parameters.Refresh;
       Parameters[1].Value:=Choice;
       Parameters[2].Value:=FrSPKPesan.NoBukti.Text;
       Parameters[3].Value:=FrSPKPesan.TANGGAL.Date;
       Parameters[4].Value:=FrSPKPesan.KdBrg.Text;
       Parameters[5].Value:=dxMemProsesSPPQnt.AsInteger;
       Parameters[6].Value:=0;
       Parameters[7].Value:=1;
       Parameters[8].Value:=FrSPKPesan.mNamaSatuanJ[FrSPKPesan.NoSatJ.AsInteger];
       Parameters[9].Value:=FrSPKPesan.mIsiSatuanJ[FrSPKPesan.NoSatJ.AsInteger];
       Parameters[10].Value:=dxMemProsesSPPKodeBrg.AsString;
       Parameters[11].Value:=0;
       Parameters[12].Value:=dxMemProsesSPPIsi1.AsFloat;
       Parameters[13].Value:=dxMemProsesSPPQnt.AsFloat;
       Parameters[14].Value:=1;
       Parameters[15].Value:=dxMemProsesSPPSat1.AsString;
       Parameters[16].Value:=FrSPKPesan.NoUrut.Text;
       Parameters[17].Value:=FrSPKPesan.NoBatch.Text;
       Parameters[18].Value:=FrSPKPesan.TglExpired.Date;
       Parameters[19].Value:=1;
       Parameters[20].Value:=dxMemProsesSPPNoBukti.AsString;
       Parameters[21].Value:=dxMemProsesSPPUrut.AsInteger;
    try
      ExecProc;

    except
      MsgProsesGagal(Choice);
    end;
  end;
}
  with DM.QuCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add('update DBPesanTunaiDet set NoSPK = :0 where NoBukti = :1 and Urut = :2');
      Parameters[0].Value := FrSPKPesan.NoBukti.Text;
      Parameters[1].Value := dxMemProsesSPPNoBukti.AsString;
      Parameters[2].Value := dxMemProsesSPPUrut.AsInteger;
      try
        ExecSQL;
      except
        ShowMessage('Proses Gagal !');
      end;
    end;
end;

procedure TFrSPKPesanProses.IsiNoBuktiBaru;
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

procedure TFrSPKPesanProses.FormShow(Sender: TObject);
var xKeyUrut: Integer;
begin
  QuSO.Close;
  QuSO.Parameters[0].Value := FrSPKPesan.KdBrg.Text;
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
    dxMemProsesSPPKeSJ.Value := True;
    dxMemProsesSPPNoBukti.Value := QuSONOBUKTI.AsString;
    dxMemProsesSPPUrut.Value    := QuSOURUT.AsInteger;
    dxMemProsesSPPTanggal.Value := QuSOTANGGAL.AsDateTime;
    dxMemProsesSPPKodeBrg.Value := QuSOKodeBrg.AsString;
    dxMemProsesSPPNamaBrg.Value := QuSONAMABRG.AsString;
    dxMemProsesSPPQnt.Value     := QuSOQnt.AsInteger;
    dxMemProsesSPPHarga.Value   := QuSOHARGA.AsCurrency;
    dxMemProsesSPPIsi1.Value    := QuSOISI1.AsFloat;
    dxMemProsesSPPSat1.Value    := QuSOSAT1.AsString;
    dxMemProsesSPPBuktiUrut.Value := QuSOBuktiUrut.AsString;
    dxMemProsesSPPPemesan.Value := QuSOPemesan.AsString;
    dxMemProsesSPPAlamat.Value  := QuSOAlamat.AsString;
    dxMemProsesSPPTelepon.Value := QuSOTelepon.AsString;
    dxMemProsesSPPTanggalAmbil.Value := QuSOTanggalAmbil.AsDateTime;
    dxMemProsesSPP.Post;
    QuSO.Next;
  end;
  QuSO.EnableControls;
end;

procedure TFrSPKPesanProses.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrSPKPesanProses.BtnSimpanClick(Sender: TObject);
var xAdaKeSJ: Boolean;
begin
  xAdaKeSJ:=False;
  dxMemProsesSPP.First;
  IsiNoBuktiBaru;
  while not dxMemProsesSPP.Eof do
  begin
    if dxMemProsesSPPKeSJ.Value=True then
    begin
      xAdaKeSJ:=True;
      dxMemProsesSPP.Last;
    end;
    dxMemProsesSPP.Next;
  end;
  if not xAdaKeSJ then
  begin
    MessageDlg('Pilih No Bukti yang akan dibuatkan SPK !',
      mtInformation, [mbOk], 0);
    ActiveControl:=dxDBGrid1;
  end else
  begin
    dxMemProsesSPP.First;
    while not dxMemProsesSPP.Eof do
    begin
      if (dxMemProsesSPPKeSJ.Value=True) //and (dxMemProsesSPPQntSPB.Value <= dxMemProsesSPPQntStock.Value)
      then
      begin
        Simpandata('I');
      end;
      dxMemProsesSPP.Next;
    end;
  end;
  if xAdaKeSJ then
    ModalResult:=mrOk
  else
  begin

    ActiveControl:=dxDBGrid1;
  end;
end;

procedure TFrSPKPesanProses.BtnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFrSPKPesanProses.FormCreate(Sender: TObject);
begin
  TipeTrans := 'SPK';
end;

procedure TFrSPKPesanProses.CetakClick(Sender: TObject);
var xSQLNOSO: String;
    xAdaKeSJ: Boolean;
begin
{
  xAdaKeSJ:=False;
  dxMemProsesSPP.First;
  while not dxMemProsesSPP.Eof do
  begin
    if dxMemProsesSPPKeSJ.Value=True then
    begin
      xAdaKeSJ:=True;
      dxMemProsesSPP.Last;
    end;
    dxMemProsesSPP.Next;
  end;
  if not xAdaKeSJ then
  begin
    MessageDlg('Pilih SPP (Surat Perintah Pengiriman) yang akan cetak !',
      mtInformation, [mbOk], 0);
    ActiveControl:=dxDBGrid1;
  end else
  begin
    xSQLNOSO:='';
    dxMemProsesSPP.First;
    while not dxMemProsesSPP.Eof do
    begin
      if dxMemProsesSPPKeSJ.Value=True then
      begin
        if xSQLNOSO='' then
          xSQLNOSO:=xSQLNOSO+QuotedStr(dxMemProsesSPPNOSO.AsString)
        else
          xSQLNOSO:=xSQLNOSO+','+QuotedStr(dxMemProsesSPPNOSO.AsString);
      end;
      dxMemProsesSPP.Next;
    end;
    frxDBCetak.DataSet.Close;
    frxDBCetak.DataSet:=QuCetakSO;
    with QuCetakSO do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Select 	A.NoBukti, A.NOURUT, A.Tanggal, A.KodecustSupp KodeCUST, C.NamaCUST, C.Alamat, J.Alamat AlamatKirim, ');
      SQL.Add('	B.KodeGdg, A.Catatan, ');
      SQL.Add('	B.Urut, B.UrutSO, B.KodeBrg, H.NamaBrg, B.Qnt Qnt1, ');
      SQL.Add('	Case when B.Nosat=1 then B.Qnt when B.Nosat=2 then B.Qnt2 else 0 End Qnt,');
      SQL.Add('	Case when B.Nosat=1 then H.Sat1 when B.Nosat=2 then H.Sat2 else '''' End  Satuan, ');
      SQL.Add(' B.Qnt2, H.Sat2 SatuanRoll,  ');
      SQL.Add('	case when B.Qnt2=0 then B.Qnt else B.Qnt2 end QntTampil, ');
      SQL.Add('	case when B.Qnt2=0 then H.Sat1 else H.Sat2 end SatuanTampil');
      SQL.Add('From dbSPP A ');
      SQL.Add('Left Outer join dbSPPDet B on B.NoBukti=a.NoBukti ');
      Sql.Add('Left Outer join dbSO SO on SO.Nobukti=B.Noso');
      SQL.Add('Left Outer Join vwBrowsCustomer C on c.KodeCust=a.KodeCustsupp and c.Sales=SO.Kodesls ');
      SQL.Add('left outer join dbKaryawan F on F.KeyNik=SO.KodeSls ');
      SQL.Add('Left Outer Join vwSatuanBrg H on H.KodeBrg=B.KodeBrg ');
      SQL.Add('left outer join vwAlamatCust J on J.KodeCustSupp=A.KodeCustSupp and J.Nomor=A.NoAlamatKirim ');
      SQL.Add('where A.NoBukti in ('+xSQLNOSO+')');
      SQL.Add('order by A.NoBukti, B.Urut ');
      //Sql.add('Exec CetakProsesBuatSPB '+xSQLNOSO+'');
      //sql.SaveToFile('C:\Testing.Sql');
      Open;
    end;
    frxDBCetak.Close;
    frxDBCetak.Open;
    frxReport1.LoadFromFile(currDir+'Nota\OutSOUntukSJ.fr3');
    frxReport1.ShowReport;
  end;
}
end;

procedure TFrSPKPesanProses.SpeedButton6Click(Sender: TObject);
begin
  frxReport1.LoadFromFile(currDir+'Nota\OutSOUntukSJ.fr3');
  frxReport1.DesignReport;
end;

procedure TFrSPKPesanProses.dxDBGrid1Edited(Sender: TObject;
  Node: TdxTreeListNode);
begin
{
  with dxMemProsesSPP do
  begin
    if (dxMemProsesSPPQntSPP.Value-(dxDBGrid1SPB.Field.Value+dxMemProsesSPPQntSPB.Value))>=0 then
    begin
      edit;
      dxMemProsesSPPQntSisa.Value := dxMemProsesSPPQntSPP.Value-(dxDBGrid1SPB.Field.Value+dxMemProsesSPPQntSPB.Value);
      Post;
    end
    else
    begin
      edit;
      dxMemProsesSPPSPB.Value := dxMemProsesSPPQntSPP.Value;
      dxMemProsesSPPQntSisa.Value := 0;
      Post;
    end;
    Refresh;
  end;
}

end;

procedure TFrSPKPesanProses.frxReport1AfterPrintReport(Sender: TObject);
var xSQLNOSO: String;
begin
{
  xSQLNOSO:='';
    dxMemProsesSPP.First;
    while not dxMemProsesSPP.Eof do
    begin
      if dxMemProsesSPPKeSJ.Value=True then
      begin
        if xSQLNOSO='' then
          xSQLNOSO:=xSQLNOSO+QuotedStr(dxMemProsesSPPNOSO.AsString)
        else
          xSQLNOSO:=xSQLNOSO+','+QuotedStr(dxMemProsesSPPNOSO.AsString);
      end;
      dxMemProsesSPP.Next;
    end;
  with QuCetakSO do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select 	A.NoBukti, A.NOURUT, A.Tanggal, A.KodeCUSTSUPP, C.NamaCUST, C.Alamat, J.Alamat AlamatKirim, ');
    SQL.Add('	B.Noso, B.KodeGdg, '''' Keterangan, A.Catatan, ');
    SQL.Add('	B.Urut, B.UrutSO, B.KodeBrg, H.NamaBrg, B.Qnt Qnt1, ');
    SQL.Add('	Case when B.Nosat=1 then B.Qnt when B.Nosat=2 then B.Qnt2 else 0 End Qnt,');
    SQL.Add('	Case when B.Nosat=1 then H.Sat1 when B.Nosat=2 then H.Sat2 else '''' End  Satuan, ');
    SQL.Add(' B.Qnt2, H.Sat2 SatuanRoll, '''' KodeExp, ');
    SQL.Add('	case when B.Qnt2=0 then B.Qnt else B.Qnt2 end QntTampil, ');
    SQL.Add('	case when B.Qnt2=0 then H.Sat1 else H.Sat2 end SatuanTampil');
    SQL.Add('From dbSPP A ');
    SQL.Add('Left Outer join dbSPPDet B on B.NoBukti=a.NoBukti ');
    SQL.Add('Left Outer Join DBSO SO On SO.NoBukti=B.NoSO');
    SQL.Add('Left Outer Join vwBrowsCustomer C on c.KodeCust=a.KodeCustSupp and c.Sales=SO.Kodesls ');
    SQL.Add('left outer join dbKaryawan F on F.KeyNik=SO.KodeSls ');
    SQL.Add('Left Outer Join vwSatuanBrg H on H.KodeBrg=B.KodeBrg ');
    SQL.Add('left outer join vwAlamatCust J on J.KodeCustSupp=A.KodeCustSupp and J.Nomor=A.NoAlamatKirim ');
    SQL.Add('where A.NoBukti in ('+xSQLNOSO+')');
    Sql.add('and b.IsCetakkitir=0');
    SQL.Add('order by A.NoBukti, B.Urut ');
    Open;
  end;
  while not QuCetakSO.Eof do
  begin
    with Dm.QuCari do
    begin
      close;
      sql.Clear;
      sql.add('update dbsPPdet set IsCetakKitir=1 where Nobukti=:0 and urut=:1');
      Prepared;
      Parameters[0].Value := QuCetakSO.Fieldbyname('nobukti').AsString;
      Parameters[1].Value := QuCetakSO.Fieldbyname('Urut').AsInteger;
      ExecSQL;
    end;
    QuCetakSO.next;
  end;
}
end;

procedure TFrSPKPesanProses.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_Escape then
  begin
    Close;
  end;
end;

end.
