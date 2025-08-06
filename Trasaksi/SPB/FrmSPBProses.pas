unit FrmSPBProses;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, dxTL,
  dxCntner, StdCtrls, Buttons, dxmdaset, frxClass, frxDMPExport, frxDBSet, DateUtils;

type
  TFrSPBProses = class(TForm)
    Label1: TLabel;
    BtnSimpan: TBitBtn;
    BtnBatal: TBitBtn;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1NoSO: TdxDBGridMaskColumn;
    dxDBGrid1TglSO: TdxDBGridDateColumn;
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
    dxMemProsesSPPNOSO: TStringField;
    dxMemProsesSPPTglSO: TDateField;
    dxMemProsesSPPKeSJ: TBooleanField;
    dsMemProsesSPP: TDataSource;
    dxMemProsesSPPKodeBrg: TStringField;
    dxMemProsesSPPNamaBrg: TStringField;
    dxMemProsesSPPSatuan: TStringField;
    dxMemProsesSPPKeyUrut: TStringField;
    dxMemProsesSPPQntStock: TBCDField;
    dxMemProsesSPPQntSisa: TBCDField;
    dxDBGrid1RecId: TdxDBGridColumn;
    dxDBGrid1KodeBrg: TdxDBGridMaskColumn;
    dxDBGrid1NamaBrg: TdxDBGridMaskColumn;
    dxDBGrid1Satuan: TdxDBGridMaskColumn;
    dxDBGrid1QntSPP: TdxDBGridMaskColumn;
    dxDBGrid1QntSPB: TdxDBGridMaskColumn;
    dxDBGrid1QntSisa: TdxDBGridMaskColumn;
    dxDBGrid1QntStock: TdxDBGridMaskColumn;
    dxDBGrid1KeyUrut: TdxDBGridMaskColumn;
    QuSONobukti: TStringField;
    QuSOTanggal: TDateTimeField;
    QuSOKodebrg: TStringField;
    QuSONamaBrg: TStringField;
    QuSOSatuan: TStringField;
    QuSONosat: TWordField;
    QuSOQnt1: TBCDField;
    QuSOQnt2: TBCDField;
    QuSOQnt: TBCDField;
    QuSOQnt1Sisa: TBCDField;
    QuSOQnt2Sisa: TBCDField;
    QuSOQntSisa: TBCDField;
    QuSOQntStock: TBCDField;
    QuSOKeyUrut: TStringField;
    dxMemProsesSPPQntSPP: TBCDField;
    dxMemProsesSPPQnt1SPP: TBCDField;
    dxMemProsesSPPQnt2SPP: TBCDField;
    dxMemProsesSPPQnt1SPB: TBCDField;
    dxMemProsesSPPQnt2SPB: TBCDField;
    dxMemProsesSPPQnt1Sisa: TBCDField;
    dxMemProsesSPPQnt2Sisa: TBCDField;
    dxMemProsesSPPNosat: TIntegerField;
    dxMemProsesSPPIsi: TBCDField;
    QuSOIsi: TBCDField;
    Sp_Beli: TADOStoredProc;
    dxMemProsesSPPSat1: TStringField;
    dxMemProsesSPPSAT2: TStringField;
    QuSOSAT1: TStringField;
    QuSOSAT2: TStringField;
    QuSONoPesanan: TStringField;
    QuSOTglKirim: TDateTimeField;
    QuSONoAlamatKirim: TIntegerField;
    dxMemProsesSPPNoPesanan: TStringField;
    dxMemProsesSPPTglKirim: TDateTimeField;
    dxMemProsesSPPNoAlamatKirim: TIntegerField;
    dxMemProsesSPPKodeCust: TStringField;
    QuSOKodeCust: TStringField;
    QuSOUrut: TIntegerField;
    dxMemProsesSPPUrut: TIntegerField;
    QuSOStock1: TFloatField;
    QuSOStock2: TFloatField;
    dxMemProsesSPPStock1: TBCDField;
    dxMemProsesSPPStock2: TBCDField;
    dxMemProsesSPPCatatan: TStringField;
    QuSOCatatan: TStringField;
    QuSOQnt1SPB: TBCDField;
    QuSOQnt2SPB: TBCDField;
    QuSOQntSPB: TBCDField;
    dxMemProsesSPPQntSPB: TBCDField;
    QuSOkodegdg: TStringField;
    dxMemProsesSPPKodegdg: TStringField;
    dxDBGrid1Kodegdg: TdxDBGridMaskColumn;
    dxMemProsesSPPSPB: TBCDField;
    dxDBGrid1SPB: TdxDBGridMaskColumn;
    QuSOIsCetakKitir: TBooleanField;
    QuSOFlagTipe: TWordField;
    dxMemProsesSPPFlagTipe: TSmallintField;
    QuSOHPP: TBCDField;
    dxMemProsesSPPHPP: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSimpanClick(Sender: TObject);
    procedure BtnBatalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CetakClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure dxDBGrid1Edited(Sender: TObject; Node: TdxTreeListNode);
    procedure frxReport1AfterPrintReport(Sender: TObject);
  private
    { Private declarations }
    Tanggal : TDatetime;
  public
    { Public declarations }
    mNOSO_SJProses: String;
    mCetakKitir_SJProses, NoUrut, NoBukti: String;
    TipeTrans,PlusPPN,Nomor,Model,XCustSupp:String;
    IsPPN :Integer;
    procedure IsiNoBuktiBaru;
    procedure Simpandata(Choice:Char);
  end;

var
  FrSPBProses: TFrSPBProses;

implementation

uses FrmBrows, MyProcedure, MyGlobal, MyModul;

{$R *.dfm}

procedure TFrSPBProses.Simpandata(Choice:Char);
begin
  With Sp_Beli do
  begin
    close;
    Prepared;
    Parameters[1].Value:=Choice;
    Parameters[2].Value:=NoBukti;
    Parameters[3].Value:=NoUrut;
    Parameters[4].Value:=Tanggal;
    Parameters[5].Value:=dxMemProsesSPPNOSO.Value;
    Parameters[6].Value:=dxMemProsesSPPKodeCust.Value;
    Parameters[7].Value:='';
    Parameters[8].Value:='';
    Parameters[9].Value:='';
    Parameters[10].Value:='';
    Parameters[11].Value:=dxMemProsesSPPCatatan.Value;
    Parameters[12].Value:=0;
    Parameters[13].Value:=dxMemProsesSPPUrut.Value;
    Parameters[14].Value:=dxMemProsesSPPKodeBrg.Value;
    Case dxMemProsesSPPNosat.Value of
      1 : begin
            {if dxMemProsesSPPSPB.Value<=dxMemProsesSPPQntStock.Value then
            Begin}
              if dxMemProsesSPPSPB.Value<=dxMemProsesSPPQnt1Sisa.Value then
              begin
                Parameters[15].Value := dxMemProsesSPPSPB.Value;
                Parameters[16].Value := dxMemProsesSPPSPB.Value/dxMemProsesSPPIsi.Value;
              end
              else
              begin
                Parameters[15].Value := dxMemProsesSPPQnt1Sisa.Value;
                Parameters[16].Value := dxMemProsesSPPQnt2Sisa.Value;//dxMemProsesSPPIsi.Value;
              end;
            {end
            else
            begin
               Parameters[15].Value := dxMemProsesSPPQntStock.Value;
               Parameters[16].Value := dxMemProsesSPPQntStock.Value/dxMemProsesSPPIsi.Value;
            end;}
          end;
      2 : begin
            {if dxMemProsesSPPSPB.Value<=dxMemProsesSPPQntStock.Value then
            Begin }
              if dxMemProsesSPPSPB.Value<=dxMemProsesSPPQnt2Sisa.Value then
              begin
                Parameters[15].Value := dxMemProsesSPPSPB.Value*dxMemProsesSPPIsi.Value;
                Parameters[16].Value := dxMemProsesSPPSPB.Value;
              end
              else
              begin
                Parameters[15].Value := dxMemProsesSPPQnt1Sisa.Value;//*dxMemProsesSPPIsi.Value;
                Parameters[16].Value := dxMemProsesSPPQnt2Sisa.Value;
              end;
            {end
            else
            begin
               Parameters[15].Value := dxMemProsesSPPQntStock.Value*dxMemProsesSPPIsi.Value;
               Parameters[16].Value := dxMemProsesSPPQntStock.Value;
            end;}
          end;
    end;
    Parameters[17].Value:=dxMemProsesSPPSat1.AsString;
    Parameters[18].Value:=dxMemProsesSPPSAT2.AsString;
    Parameters[19].Value:=dxMemProsesSPPNosat.AsInteger;
    Parameters[20].Value:=dxMemProsesSPPIsi.Value;
    Parameters[21].Value:=0;
    Parameters[22].Value:=0;
    Parameters[23].Value:=IDUser;
    Parameters[24].Value:=0;
    Parameters[25].Value:=dxMemProsesSPPNamaBrg.Value;
    Parameters[26].Value:='';
    Parameters[27].Value:=dxMemProsesSPPKodegdg.Value;
    Parameters[28].Value:='';
    Parameters[29].Value:='';
    Parameters[30].Value:=0;
    Parameters[31].Value:=IsPPN;
    Parameters[32].Value:=dxMemProsesSPPHPP.Value ;


    try
      ExecProc;
        LoggingData(IDUser,'I','SPB', NoBukti,
          'Kode Brg = '+dxMemProsesSPPKodeBrg.Value);
    except
      MsgProsesGagal(Choice);
    end;
  end;
end;

procedure TFrSPBProses.IsiNoBuktiBaru;
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
  //Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal);
   if IsPPN=1 then
  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal)
  else if IsPPN=0 then
  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal,Xcustsupp,False);
  NoUrut:=NomorBukti;
  NOBUKTI:=Nomor;
end;

procedure TFrSPBProses.FormShow(Sender: TObject);
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
    dxMemProsesSPPKeSJ.Value := QuSOIsCetakKitir.Value;
    dxMemProsesSPPKeyUrut.Value:=QuSOKeyUrut.AsString;
    dxMemProsesSPPNOSO.Value:=QuSONoBukti.AsString;
    dxMemProsesSPPTglSO.Value:=QuSOTanggal.AsDateTime;
    dxMemProsesSPPKodeBrg.Value:=QuSOKodebrg.AsString;
    dxMemProsesSPPNamaBrg.Value:=QuSONamaBrg.AsString;
    dxMemProsesSPPSatuan.Value:=QuSOSatuan.AsString;
    dxMemProsesSPPNosat.Value:=QuSONosat.AsInteger;
    dxMemProsesSPPIsi.Value:=QuSOIsi.AsInteger;
    dxMemProsesSPPQntSPP.Value:=QuSOQnt.AsFloat;
    dxMemProsesSPPQnt1SPP.Value:=QuSOQnt1.AsFloat;
    dxMemProsesSPPQnt2SPP.Value:=QuSOQnt2.AsFloat;
    dxMemProsesSPPQntSPB.Value:=QuSOQntSPB.AsFloat;
    dxMemProsesSPPQnt1SPB.Value:=QuSOQnt1SPB.AsFloat;
    dxMemProsesSPPQnt2SPB.Value:=QuSOQnt2SPB.AsFloat;
    dxMemProsesSPPQntSisa.Value:=QuSOQntSisa.AsFloat;
    dxMemProsesSPPQnt1Sisa.Value:=QuSOQnt1Sisa.AsFloat;
    dxMemProsesSPPQnt2Sisa.Value:=QuSOQnt2Sisa.AsFloat;
    dxMemProsesSPPQntStock.Value:=QuSOQntStock.AsFloat;
    dxMemProsesSPPSat1.Value:=QuSOSAT1.AsString;
    dxMemProsesSPPSAT2.Value:=QuSOSAT2.AsString;
    dxMemProsesSPPNoPesanan.Value:=QuSONoPesanan.AsString;
    dxMemProsesSPPTglKirim.Value:=QuSOTglKirim.AsDateTime;
    dxMemProsesSPPNoAlamatKirim.Value:=QuSONoAlamatKirim.AsInteger;
    dxMemProsesSPPKodeCust.Value:=QuSOKodeCust.AsString;
    dxMemProsesSPPUrut.Value:=QuSOUrut.AsInteger;
    dxMemProsesSPPStock1.Value := QuSOStock1.Value;
    dxMemProsesSPPStock2.Value := QuSOStock2.Value;
    dxMemProsesSPPCatatan.Value := QuSOCatatan.Value;
    dxMemProsesSPPKodegdg.Value := QuSOkodegdg.Value;
    dxMemProsesSPPHPP.Value := QuSOHPP.Value;
    if QuSONosat.Value=1 then
       dxMemProsesSPPSPB.Value:=QuSOQnt1Sisa.AsFloat
    else
       dxMemProsesSPPSPB.Value:=QuSOQnt2Sisa.AsFloat;
    //dxMemProsesSPPSPB.Value :=0.00;
    dxMemProsesSPP.Post;
    QuSO.Next;
  end;
  QuSO.EnableControls;
  IsPPn:=QuSOFlagTipe.AsInteger;
  XCustSupp:=QuSOKodeCust.AsString;
end;

procedure TFrSPBProses.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrSPBProses.BtnSimpanClick(Sender: TObject);
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
    MessageDlg('Pilih SPP (Surat Perintah Pengiriman) yang akan cetak !',
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

procedure TFrSPBProses.BtnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFrSPBProses.FormCreate(Sender: TObject);
begin
  TipeTrans := 'SPB';
end;

procedure TFrSPBProses.CetakClick(Sender: TObject);
var xSQLNOSO: String;
    xAdaKeSJ: Boolean;
begin
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
end;

procedure TFrSPBProses.SpeedButton6Click(Sender: TObject);
begin
  frxReport1.LoadFromFile(currDir+'Nota\OutSOUntukSJ.fr3');
  frxReport1.DesignReport;
end;

procedure TFrSPBProses.dxDBGrid1Edited(Sender: TObject;
  Node: TdxTreeListNode);
begin
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
end;

procedure TFrSPBProses.frxReport1AfterPrintReport(Sender: TObject);
var xSQLNOSO: String;
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
end;

end.
