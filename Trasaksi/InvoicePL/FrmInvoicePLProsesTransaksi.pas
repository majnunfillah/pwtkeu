unit FrmInvoicePLProsesTransaksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, dxTL,
  dxCntner, StdCtrls, Buttons, dxmdaset, frxClass, frxDMPExport, frxDBSet, DateUtils;

type
  TFrInvoicePLProsesTransaksi = class(TForm)
    Label1: TLabel;
    BtnSimpan: TBitBtn;
    BtnBatal: TBitBtn;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1NoSPB: TdxDBGridMaskColumn;
    dxDBGrid1TglSPB: TdxDBGridDateColumn;
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
    dxMemProsesSPPNOSPB: TStringField;
    dxMemProsesSPPTglSPB: TDateField;
    dxMemProsesSPPKeSJ: TBooleanField;
    dsMemProsesSPP: TDataSource;
    dxMemProsesSPPKeyUrut: TStringField;
    dxDBGrid1RecId: TdxDBGridColumn;
    dxDBGrid1KeyUrut: TdxDBGridMaskColumn;
    Sp_Beli: TADOStoredProc;
    dxMemProsesSPPNoso: TStringField;
    dxMemProsesSPPTglSO: TDateTimeField;
    QuSONobukti: TStringField;
    QuSOTanggal: TDateTimeField;
    QuSONoso: TStringField;
    QuSOTGLSO: TDateTimeField;
    QuSOKeyUrut: TStringField;
    dxDBGrid1Noso: TdxDBGridMaskColumn;
    dxDBGrid1TglSO: TdxDBGridDateColumn;
    dxMemProsesSPPkodecust: TStringField;
    QuSOkodecust: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSimpanClick(Sender: TObject);
    procedure BtnBatalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  FrInvoicePLProsesTransaksi: TFrInvoicePLProsesTransaksi;

implementation

uses FrmBrows, MyProcedure, MyGlobal, MyModul,FrmInvoicepl,
  FrmInvoicePLProses, FrmMainInvoicePL;

{$R *.dfm}

procedure TFrInvoicePLProsesTransaksi.Simpandata(Choice:Char);
begin
  with DM.QuCari do
  begin
    close;
    sql.Clear;
{    SQL.Add('declare @NoBukti varchar(30), @Bulan int, @Tahun int');
    SQL.Add('select @NoBukti=:0, @Bulan=:1, @Tahun=:2');
    SQL.Add('Select A.Nobukti, A.Tanggal, B.Kodebrg, C.NamaBrg,');
    SQL.Add('       Case when B.Nosat=1 then B.SAT_1');
    SQL.Add('            when B.Nosat=2 then B.SAT_2');
    SQL.Add('            else ''''');
    SQL.Add('       end Satuan, B.Nosat,B.Isi, B.Qnt Qnt1, B.Qnt2,');
    SQL.Add('       Case when B.Nosat=1 then B.Qnt');
    SQL.Add('            when B.Nosat=2 then B.Qnt2');
    SQL.Add('            else 0.00');
    SQL.Add('       end Qnt, Isnull(D.Qnt1,0) Qnt1Inv, isnull(D.Qnt2,0) Qnt2Inv, isnull(D.Qnt,0) QntInv,');
    SQL.Add('       B.Qnt-isnull(D.Qnt1,0)-isnull(H.QntRSPB,0) Qnt1Sisa, B.Qnt2-Isnull(D.Qnt2,0)-isnull(H.Qnt2RSPB,0) Qnt2Sisa,');
    SQL.Add('       Case when B.Nosat=1 then B.Qnt');
    SQL.Add('            when B.Nosat=2 then B.Qnt2');
    SQL.Add('            else 0');
    SQL.Add('       end-isnull(D.Qnt,0)-');
    Sql.add('        Case when B.Nosat=1 then isnull(H.QntRSPB,0)');
    SQL.Add('             when B.Nosat=2 then isnull(H.Qnt2RSPB,0)');
    SQL.Add('             else 0');
    SQL.Add('       end  QntSisa, G.HARGA, G.DISCP1, G.DISCRP1, G.DISCTOT, G.kodevls,G.KURS, G.PPN, G.TIPEBAYAR, G.HARI, G.Disc,');
    SQL.Add('       A.nobukti+Cast(B.Urut as Varchar(5)) KeyUrut,');
    SQL.Add('       C.SAT1, C.SAT2, F.NoPesan NoPesanan, F.TglKirim, F.NoAlamatKirim, A.KodeCustSupp KodeCust, B.Urut,B.kodegdg,');
    SQL.Add('       A.Catatan, G.NoBukti Noso, G.Tanggal TglSO, F.NoBukti NoSPP, F.Tanggal TglSPP');
    SQL.Add('From DBSPB A');
    SQL.Add('     Left Outer join dbSPBDet B on B.Nobukti=A.Nobukti');
    SQL.Add('     Left Outer join dbBarang C on C.kodebrg=B.Kodebrg');
    SQL.Add('     Left Outer join (Select y.NoSPB, y.UrutSPB, Sum(y.Qnt) Qnt1, Sum(y.Qnt2) Qnt2,');
    SQL.Add('                             Sum(Case when y.Nosat=1 then y.Qnt');
    SQL.Add('                                      when y.Nosat=2 then y.Qnt2');
    SQL.Add('                                      else 0.00');
    SQL.Add('                                 end) Qnt');
    SQL.Add('                      from DBInvoicePL x');
    SQL.Add('                           Left Outer Join dbInvoicePLDet y on y.nobukti=x.nobukti');
    SQL.Add('                      Group by  y.NoSPB, y.UrutSPB) D on D.NoSPB=A.Nobukti and D.UrutSPB=B.Urut');
    SQL.Add('     Left Outer join (Select x.NoBukti, y.Urut, y.NoSO, y.UrutSO, x.NoPesan, x.TglKirim, x.NoAlamatKirim, x.Tanggal');
    SQL.Add('                      From dbSPP x');
    SQL.Add('                           Left Outer join dbSPPDet y on y.NoBukti=x.NoBukti) F on F.NoBukti=B.NoSPP and F.Urut=B.UrutSPP');
    SQL.Add('     Left Outer join (Select x.NoBukti,x.Tanggal, y.Urut, x.NoPesanan, x.TglKirim, x.NoAlamatKirim,');
    SQL.Add('                             y.HARGA, y.DISCP1, y.DISCRP1, y.DISCTOT, x.KODEVLS, x.KURS, x.TIPEBAYAR, x.PPN, x.HARI, x.Disc');
    SQL.Add('                      From dbSO x');
    SQL.Add('                           Left Outer join DBSODET y on y.NoBukti=x.NoBukti) G on G.NoBukti=F.NoSo and G.Urut=F.UrutSO');
     SQL.add('     Left Outer join (Select x.NoSPB, x.UrutSPB, sum(Qnt) QntRSPB, sum(Qnt2) Qnt2RSPB,');
    SQL.add('                             SUM(x.NetW) NetWRSPB, SUM(x.GrossW) GrossWRSPB');
    SQL.add('                      from DBRSPBDet x');
    SQL.add('                      Group by  x.NoSPB, x.UrutSPB) H on H.NoSPB=B.NoBukti and H.UrutSPB=B.Urut');
    SQL.Add('Where A.NoBukti=@nobukti and');
    SQL.Add('      Case when B.Nosat=1 then B.Qnt');
    SQL.Add('           when B.Nosat=2 then B.Qnt2');
    SQL.Add('           else 0.00');
    SQL.Add('      end-isnull(D.Qnt,0)-');
    Sql.add('        Case when B.Nosat=1 then isnull(H.QntRSPB,0)');
    SQL.Add('             when B.Nosat=2 then isnull(H.Qnt2RSPB,0)');
    SQL.Add('             else 0');
    SQL.Add('       end >0');
    SQL.Add('Order by B.Urut');
        Prepared;
    Parameters[0].Value := dxMemProsesSPPNOSPB.Value;
    Parameters[1].Value := StrToInt(PeriodBln);
    Parameters[2].Value := StrToInt(PeriodThn);
    }
    SQL.Add('declare @NoBukti varchar(30), @Bulan int, @Tahun int');
    SQL.Add('select @NoBukti=:0, @Bulan=:1, @Tahun=:2');
    SQL.Add('Select DP,A.Nobukti, A.Tanggal, B.Kodebrg, C.NamaBrg,');
    SQL.Add('       Case when B.Nosat=1 then B.SAT_1');
    SQL.Add('            when B.Nosat=2 then B.SAT_2');
    SQL.Add('            else ''''');
    SQL.Add('       end Satuan, B.Nosat,B.Isi, B.Qnt Qnt1, B.Qnt2,');
    SQL.Add('       Case when B.Nosat=1 then B.Qnt');
    SQL.Add('            when B.Nosat=2 then B.Qnt2');
    SQL.Add('            else 0.00');
    SQL.Add('       end Qnt, Isnull(D.Qnt1,0) Qnt1Inv, isnull(D.Qnt2,0) Qnt2Inv, isnull(D.Qnt,0) QntInv,');
    SQL.Add('       B.Qnt-isnull(D.Qnt1,0)+isnull(H.QntRSPB,0) Qnt1Sisa, B.Qnt2-Isnull(D.Qnt2,0)+isnull(H.Qnt2RSPB,0) Qnt2Sisa,');
    SQL.Add('       Case when B.Nosat=1 then B.Qnt');
    SQL.Add('            when B.Nosat=2 then B.Qnt2');
    SQL.Add('            else 0');
    SQL.Add('       end-isnull(D.Qnt,0)-');
    Sql.add('        Case when B.Nosat=1 then isnull(H.QntRSPB,0)');
    SQL.Add('             when B.Nosat=2 then isnull(H.Qnt2RSPB,0)');
    SQL.Add('             else 0');
    SQL.Add('       end QntSisa, G.HARGA, G.DISCP1, G.DISCRP1, G.DISCTOT, G.kodevls,G.KURS, G.PPN, G.TIPEBAYAR, G.HARI, G.Disc,');
    SQL.Add('       A.nobukti+Cast(B.Urut as Varchar(5)) KeyUrut,');
    SQL.Add('       C.SAT1, C.SAT2, F.NoPesan NoPesanan, F.TglKirim, F.NoAlamatKirim, A.KodeCustSupp KodeCust, B.Urut,B.kodegdg,');
    SQL.Add('       A.Catatan, G.NoBukti Noso, G.Tanggal TglSO, F.NoBukti NoSPP, F.Tanggal TglSPP,G.Discp2,G.Discp3,Discp4,Discp5,g.ppnp');
    SQL.Add('From DBSPB A');
    SQL.Add('     Left Outer join dbSPBDet B on B.Nobukti=A.Nobukti');
    SQL.Add('     Left Outer join dbBarang C on C.kodebrg=B.Kodebrg');
    SQL.Add('     Left Outer join (Select y.NoSPB, y.UrutSPB, Sum(y.Qnt) Qnt1, Sum(y.Qnt2) Qnt2,');
    SQL.Add('                             Sum(Case when y.Nosat=1 then y.Qnt');
    SQL.Add('                                      when y.Nosat=2 then y.Qnt2');
    SQL.Add('                                      else 0.00');
    SQL.Add('                                 end) Qnt');
    SQL.Add('                      from DBInvoicePL x');
    SQL.Add('                           Left Outer Join dbInvoicePLDet y on y.nobukti=x.nobukti');
    SQL.Add('                      Group by  y.NoSPB, y.UrutSPB) D on D.NoSPB=A.Nobukti and D.UrutSPB=B.Urut');
    SQL.Add('     Left Outer join (Select x.NoBukti, y.Urut, y.NoSO, y.UrutSO, x.NoPesan, x.TglKirim, x.NoAlamatKirim, x.Tanggal');
    SQL.Add('                      From dbSPP x');
    SQL.Add('                           Left Outer join dbSPPDet y on y.NoBukti=x.NoBukti) F on F.NoBukti=B.NoSPP and F.Urut=B.UrutSPP');
    SQL.Add('     Left Outer join (Select x.NoBukti,x.Tanggal, y.Urut, x.NoPesanan, x.TglKirim, x.NoAlamatKirim,');
    SQL.Add('                             y.HARGA, y.DISCP1, y.DISCRP1, y.DISCTOT, x.KODEVLS, x.KURS, x.TIPEBAYAR, x.PPN, x.HARI, x.Disc,Y.Discp2,Discp3,Discp4,Discp5,ppnp');
    SQL.Add('                      From dbSO x');
    SQL.Add('                           Left Outer join DBSODET y on y.NoBukti=x.NoBukti) G on G.NoBukti=F.NoSo and G.Urut=F.UrutSO');
    SQL.add('     Left Outer join (Select x.NoSPB, x.UrutSPB, sum(Qnt) QntRSPB, sum(Qnt2) Qnt2RSPB,');
    SQL.add('                             SUM(x.NetW) NetWRSPB, SUM(x.GrossW) GrossWRSPB');
    SQL.add('                      from DBRSPBDet x');
    SQL.add('                      Group by  x.NoSPB, x.UrutSPB) H on H.NoSPB=B.NoBukti and H.UrutSPB=B.Urut');
    sql.Add('left outer join ( select NoBukti ,ContractNo ,DP from dbInvoiceUM  ) I  on i.ContractNo=g.NOBUKTI  ');
    //SQL.Add('Where A.NoBukti=@nobukti and');
    SQL.Add('Where A.KodeCustSupp=@nobukti and');
    SQL.Add('      Case when B.Nosat=1 then B.Qnt');
    SQL.Add('           when B.Nosat=2 then B.Qnt2');
    SQL.Add('           else 0.00');
    SQL.Add('      end-isnull(D.Qnt,0)+');
    Sql.add('        Case when B.Nosat=1 then isnull(H.QntRSPB,0)');
    SQL.Add('             when B.Nosat=2 then isnull(H.Qnt2RSPB,0)');
    SQL.Add('             else 0');
    SQL.Add('       end>0');
    SQL.Add('Order by B.Urut');
    Prepared;
    Parameters[0].Value := dxMemProsesSPPkodecust.Value;//dxMemProsesSPPNOSPB.Value;
    Parameters[1].Value := StrToInt(PeriodBln);
    Parameters[2].Value := StrToInt(PeriodThn);
    //SQL.SaveToFile('d:\tes.txt');
    Open;
  end;
  DM.QuCari.DisableControls;
  DM.QuCari.First;
  while (Not DM.QuCari.IsEmpty) and (not DM.QuCari.Eof) do
  begin
    With Sp_Beli do
    begin
      close;
      Prepared;
      {Parameters[1].Value := Choice;
      Parameters[2].Value := NoBukti;
      Parameters[3].Value := NoUrut;
      Parameters[4].Value := Tanggal;
      Parameters[5].Value := DM.QuCari.FieldByname('NOBukti').Value;
      Parameters[6].Value := DM.QuCari.FieldByname('KodeCust').Value;
      Parameters[7].Value := '';
      Parameters[8].Value := '';
      Parameters[9].Value := DM.QuCari.FieldByname('NOBukti').Value;
      Parameters[10].Value:= DM.QuCari.FieldByname('NoPesanan').Value;
      Parameters[11].Value:= '';
      Parameters[12].Value:= '';
      Parameters[13].Value:= '';
      Parameters[14].Value:= '';
      Parameters[15].Value:= '';
      parameters[16].Value:= null;
      Parameters[17].Value:= '';
      Parameters[18].Value:= '';
      Parameters[19].Value:= IDUser;
      Parameters[20].Value:= 0;
      Parameters[21].Value:= DM.QuCari.FieldByname('Urut').Value;
      Parameters[22].Value:= DM.QuCari.FieldByname('KodeBrg').Value;
      Parameters[23].Value:= DM.QuCari.FieldByname('PPn').Value;
      Parameters[24].Value:= DM.QuCari.FieldByname('Disc').Value;
      Parameters[25].Value:= DM.QuCari.FieldByname('kurs').Value;
      Parameters[26].Value:= DM.QuCari.FieldByname('Qnt1Sisa').Value;
      Parameters[27].Value:= DM.QuCari.FieldByname('Qnt2Sisa').Value;
      Parameters[28].Value:= DM.QuCari.FieldByname('Sat1').Value;
      Parameters[29].Value:= DM.QuCari.FieldByname('SAT2').Value;
      Parameters[30].Value:= DM.QuCari.FieldByname('Nosat').Value;
      Parameters[31].Value:= DM.QuCari.FieldByname('Isi').Value;
      Parameters[32].Value:= 0;
      Parameters[33].Value:= 0;
      Parameters[34].Value:= DM.QuCari.FieldByname('Harga').Value;
      Parameters[35].Value:= DM.QuCari.FieldByname('DiscP1').Value;
      Parameters[36].Value:= DM.QuCari.FieldByname('DiscRp1').Value;
      Parameters[37].Value:= DM.QuCari.FieldByname('DiscTot').Value;
      Parameters[38].Value:= '';
      Parameters[39].Value:= DM.QuCari.FieldByname('Kodevls').Value;
      Parameters[40].Value:= 0;
      Parameters[41].Value := '';
      Parameters[42].Value := '';
      Parameters[43].Value := '';
      Parameters[44].Value := '';
      Parameters[45].Value := '';
      Parameters[46].Value := '';
      Parameters[47].Value := '';
      Parameters[48].Value := 0;
      Parameters[49].Value := null;
      Parameters[50].Value := '';
      Parameters[51].Value := '';
      Parameters[52].Value := '';
      Parameters[53].Value := DM.QuCari.FieldByname('NamaBrg').Value;
      Parameters[54].Value := DM.QuCari.FieldByname('NoSPP').Value;
      Parameters[55].Value := DM.QuCari.FieldByname('TglSPP').Value;
      Parameters[56].Value := DM.QuCari.FieldByname('Noso').Value;
      Parameters[57].Value := DM.QuCari.FieldByname('TglSO').Value; }
      Parameters[1].Value := Choice;
      Parameters[2].Value := NoBukti;
      Parameters[3].Value := FrInvoicepl.NoUrut.Text;
      Parameters[4].Value := FrInvoicepl.Tanggal.Date;
      Parameters[5].Value := DM.QuCari.FieldByname('NOBukti').Value;
      Parameters[6].Value := DM.QuCari.FieldByname('KodeCust').Value;
      Parameters[7].Value := '';
      Parameters[8].Value := '';
      Parameters[9].Value := DM.QuCari.FieldByname('NOBukti').Value;
      Parameters[10].Value:= DM.QuCari.FieldByname('NoPesanan').Value;
      Parameters[11].Value:= '';
      Parameters[12].Value:= '';
      Parameters[13].Value:= '';
      Parameters[14].Value:= '';
      Parameters[15].Value:= '';
      parameters[16].Value:= null;
      Parameters[17].Value:= '';
      Parameters[18].Value:= '';
      Parameters[19].Value:= IDUser;
      Parameters[20].Value:= 0;
      Parameters[21].Value:= DM.QuCari.FieldByname('Urut').Value;
      Parameters[22].Value:= DM.QuCari.FieldByname('KodeBrg').Value;
      Parameters[23].Value:= DM.QuCari.FieldByname('PPn').Value;
      Parameters[24].Value:= DM.QuCari.FieldByname('Disc').Value;
      Parameters[25].Value:= DM.QuCari.FieldByname('kurs').Value;
      Parameters[26].Value:= DM.QuCari.FieldByname('Qnt1Sisa').Value;
      Parameters[27].Value:= DM.QuCari.FieldByname('Qnt2Sisa').Value;
      Parameters[28].Value:= DM.QuCari.FieldByname('Sat1').Value;
      Parameters[29].Value:= DM.QuCari.FieldByname('SAT2').Value;
      Parameters[30].Value:= DM.QuCari.FieldByname('Nosat').Value;
      Parameters[31].Value:= DM.QuCari.FieldByname('Isi').Value;
      Parameters[32].Value:= 0;
      Parameters[33].Value:= 0;
      Parameters[34].Value:= DM.QuCari.FieldByname('Harga').Value;
      Parameters[35].Value:= DM.QuCari.FieldByname('DiscP1').Value;
      Parameters[36].Value:= DM.QuCari.FieldByname('DiscRp1').Value;
      Parameters[37].Value:= DM.QuCari.FieldByname('DiscTot').Value;
      Parameters[38].Value:= '';
      Parameters[39].Value:= DM.QuCari.FieldByname('Kodevls').Value;
      Parameters[40].Value:= 0;
      Parameters[41].Value := '';
      Parameters[42].Value := '';
      Parameters[43].Value := '';
      Parameters[44].Value := '';
      Parameters[45].Value := '';
      Parameters[46].Value := '';
      Parameters[47].Value := '';
      Parameters[48].Value := 0;//DM.QuCari.FieldByname('PPNP').Value;//0;
      Parameters[49].Value := null;
      Parameters[50].Value := '';
      Parameters[51].Value := '';
      Parameters[52].Value := '';
      Parameters[53].Value := DM.QuCari.FieldByname('NamaBrg').Value;
      Parameters[54].Value := DM.QuCari.FieldByname('NoSPP').Value;
      Parameters[55].Value := DM.QuCari.FieldByname('TglSPP').Value;
      Parameters[56].Value := DM.QuCari.FieldByname('Noso').Value;
      Parameters[57].Value := DM.QuCari.FieldByname('TglSO').Value;
      Parameters[58].Value:= DM.QuCari.FieldByname('DiscP2').Value;
      Parameters[59].Value:= DM.QuCari.FieldByname('DiscP3').Value;
      Parameters[60].Value:= DM.QuCari.FieldByname('DiscP4').Value;
      Parameters[61].Value:= DM.QuCari.FieldByname('DiscP5').Value;
      Parameters[62].Value:= FrInvoicepl.PPN.ItemIndex;
      Parameters[63].Value:= DM.QuCari.FieldByname('DP').Value;
      Parameters[64].Value:= DM.QuCari.FieldByname('PPNP').Value;


      try
        ExecProc;
        UpdateUrutTransaksi('DbInvoicePLDet',NoBukti);
      except
        MsgProsesGagal(Choice);
      end;
    end;
    dm.QuCari.Next;
  end;
end;

procedure TFrInvoicePLProsesTransaksi.IsiNoBuktiBaru;
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

procedure TFrInvoicePLProsesTransaksi.FormShow(Sender: TObject);
var xKeyUrut: Integer;
begin
  QuSO.Close;
//  QuSO.SQL.Strings[2]:='select @NoBukti='+QuotedStr(mNOSO_SJProses)+', @Bulan='+PeriodBln+', @Tahun='+PeriodThn;
  if FrMainInvoicePL.ModalKoreksi=false then
      mNOSO_SJProses:=FrMainInvoicePL.QuMaster4KodeCustSupp.AsString
  else
        mNOSO_SJProses:=FrInvoicePL.KodeCust.Text;
  QuSO.SQL.Strings[2]:='select @NoBukti='+QuotedStr(mNOSO_SJProses)+', @Bulan='+PeriodBln+', @Tahun='+PeriodThn;
  //quso.sql.SaveToFile('d:\tes.txt');
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
    dxMemProsesSPPNOSPB.Value:=QuSONoBukti.AsString;
    dxMemProsesSPPTglSPB.Value:=QuSOTanggal.AsDateTime;
    dxMemProsesSPPNoso.Value := QuSONoso.Value;
    dxMemProsesSPPTglSO.Value := QuSOTglSO.Value;
    dxMemProsesSPPKodecust.Value := QuSOkodecust.Value;
    dxMemProsesSPP.Post;
    QuSO.Next;
  end;
  QuSO.EnableControls;
end;

procedure TFrInvoicePLProsesTransaksi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrInvoicePLProsesTransaksi.BtnSimpanClick(Sender: TObject);
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

procedure TFrInvoicePLProsesTransaksi.BtnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFrInvoicePLProsesTransaksi.FormCreate(Sender: TObject);
begin
  TipeTrans := 'INVC';
end;

end.
