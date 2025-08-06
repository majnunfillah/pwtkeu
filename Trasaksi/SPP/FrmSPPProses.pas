unit FrmSPPProses;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, dxTL,
  dxCntner, StdCtrls, Buttons, dxmdaset, frxClass, frxDMPExport, frxDBSet, DateUtils,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxEdit, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ExtCtrls;

type
  TFrSPPProses = class(TForm)
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
    dxMemProsesSPPQntSPP: TBCDField;
    dxMemProsesSPPQntStock: TBCDField;
    dxMemProsesSPPQntSisa: TBCDField;
    dxDBGrid1RecId: TdxDBGridColumn;
    dxDBGrid1KodeBrg: TdxDBGridMaskColumn;
    dxDBGrid1NamaBrg: TdxDBGridMaskColumn;
    dxDBGrid1Satuan: TdxDBGridMaskColumn;
    dxDBGrid1Qnt: TdxDBGridMaskColumn;
    dxDBGrid1QntSPP: TdxDBGridMaskColumn;
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
    QuSOQnt1SPP: TBCDField;
    QuSOQnt2SPP: TBCDField;
    QuSOQntSPP: TBCDField;
    QuSOQnt1Sisa: TBCDField;
    QuSOQnt2Sisa: TBCDField;
    QuSOQntSisa: TBCDField;
    QuSOQntStock: TBCDField;
    QuSOKeyUrut: TStringField;
    dxMemProsesSPPQntSO: TBCDField;
    dxMemProsesSPPQnt1SO: TBCDField;
    dxMemProsesSPPQnt2SO: TBCDField;
    dxMemProsesSPPQnt1SPP: TBCDField;
    dxMemProsesSPPQnt2SPP: TBCDField;
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
    QuSOkodegdg: TStringField;
    dxMemProsesSPPKodegdg: TStringField;
    dxDBGrid1Kodegdg: TdxDBGridMaskColumn;
    Kodegdg: TComboBox;
    Label2: TLabel;
    dxMemProsesSPPQntTelahSPP: TBCDField;
    dxDBGrid1QntTelahSPP: TdxDBGridMaskColumn;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    Label4: TLabel;
    Panel1: TPanel;
    Button1: TButton;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    vwPiutang: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    dsQucari: TDataSource;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    vwPiutangDBColumn1: TcxGridDBColumn;
    Panel3: TPanel;
    Button2: TButton;
    Panel4: TPanel;
    cxGrid2: TcxGrid;
    vwPiutangJT: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dsQucari2: TDataSource;
    Qucari: TADOQuery;
    Qucari2: TADOQuery;
    vwPiutangDBColumn2: TcxGridDBColumn;
    QuSONDPP: TFloatField;
    QuSONNET: TFloatField;
    dxMemProsesSPPNDPP: TFloatField;
    dxMemProsesSPPNNET: TFloatField;
    dxMemProsesSPPFlagTipe: TSmallintField;
    QuSOFlagTipe: TWordField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSimpanClick(Sender: TObject);
    procedure BtnBatalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CetakClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure frxReport1AfterPrintReport(Sender: TObject);
    procedure dxMemProsesSPPAfterPost(DataSet: TDataSet);
    procedure dxDBGrid1Edited(Sender: TObject; Node: TdxTreeListNode);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure cxGridDBColumn2GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure KodegdgCloseUp(Sender: TObject);
  private
    { Private declarations }
    Tanggal : TDatetime;
    XNamaGdg:array[0..20]of String;
  public
    { Public declarations }
    mNOSO_SJProses: String;
    mCetakKitir_SJProses, NoUrut, NoBukti: String;
    TipeTrans,PlusPPN,Nomor,Model:String;
    XCUstSupp:String   ;
    IsPPn:Integer;
    procedure IsiNoBuktiBaru;
    procedure Simpandata(Choice:Char);
    procedure Tampildata;
  end;

var
  FrSPPProses: TFrSPPProses;

implementation

uses FrmBrows, MyProcedure, MyGlobal, MyModul, FrmMainSPP;

{$R *.dfm}
procedure TFrSPPProses.Tampildata;
var xKeyUrut: Integer;
begin
  QuSO.Close;
  QuSO.SQL.Strings[2]:='select @NoBukti='+QuotedStr(mNOSO_SJProses)+', @Bulan='+PeriodBln+', @Tahun='+PeriodThn;
  //if Kodegdg.Items.Strings[Kodegdg.ItemIndex]<>'Semua' then
  //QuSO.SQL.Strings[37]:='and E.Kodegdg='+QuotedStr(Kodegdg.Items.Strings[Kodegdg.ItemIndex]);
  {else
  QuSO.SQL.Strings[36]:='';}
  QuSO.Parameters[0].Value:=Kodegdg.Items.Strings[Kodegdg.ItemIndex];
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
    dxMemProsesSPPNOSO.Value:=QuSONoBukti.AsString;
    dxMemProsesSPPTglSO.Value:=QuSOTanggal.AsDateTime;
    dxMemProsesSPPKodeBrg.Value:=QuSOKodebrg.AsString;
    dxMemProsesSPPNamaBrg.Value:=QuSONamaBrg.AsString;
    dxMemProsesSPPSatuan.Value:=QuSOSatuan.AsString;
    dxMemProsesSPPNosat.Value:=QuSONosat.AsInteger;
    dxMemProsesSPPIsi.Value:=QuSOIsi.AsInteger;
    dxMemProsesSPPQntSO.Value:=QuSOQnt.AsFloat;
    dxMemProsesSPPQnt1SO.Value:=QuSOQnt1.AsFloat;
    dxMemProsesSPPQnt2SO.Value:=QuSOQnt2.AsFloat;
    if QuSOQntSisa.Value<=QuSOQntStock.Value then
    begin
      dxMemProsesSPPQntSPP.Value:=QuSOQntSisa.AsFloat;
      dxMemProsesSPPQnt1SPP.Value:=QuSOQnt1Sisa.AsFloat;
      dxMemProsesSPPQnt2SPP.Value:=QuSOQnt2Sisa.AsFloat;

      dxMemProsesSPPQntSisa.Value:=QuSOQnt.AsFloat-QuSOQntSisa.AsFloat;
      dxMemProsesSPPQnt1Sisa.Value:=QuSOQnt1.AsFloat-QuSOQnt1Sisa.AsFloat;
      dxMemProsesSPPQnt2Sisa.Value:=QuSOQnt2.AsFloat-QuSOQnt2Sisa.AsFloat;
    end
    else
    begin
      {dxMemProsesSPPQntSPP.Value:=QuSOQntStock.AsFloat;
      dxMemProsesSPPQnt1SPP.Value:=QuSOStock1.AsFloat;
      dxMemProsesSPPQnt2SPP.Value:=QuSOStock2.AsFloat;

      dxMemProsesSPPQntSisa.Value:=QuSOQnt.AsFloat-(QuSOQntSPP.Value+QuSOQntStock.AsFloat);
      dxMemProsesSPPQnt1Sisa.Value:=QuSOQnt1.AsFloat-(QuSOQnt1SPP.Value+QuSOStock1.AsFloat);
      dxMemProsesSPPQnt2Sisa.Value:=QuSOQnt2.AsFloat-(QuSOQnt2SPP.Value+QuSOStock2.AsFloat);  }
      dxMemProsesSPPQntSPP.Value:=QuSOQntSisa.AsFloat;
      dxMemProsesSPPQnt1SPP.Value:=QuSOQnt1Sisa.AsFloat;
      dxMemProsesSPPQnt2SPP.Value:=QuSOQnt2Sisa.AsFloat;

      dxMemProsesSPPQntSisa.Value:=QuSOQnt.AsFloat-QuSOQntSisa.AsFloat;
      dxMemProsesSPPQnt1Sisa.Value:=QuSOQnt1.AsFloat-QuSOQnt1Sisa.AsFloat;
      dxMemProsesSPPQnt2Sisa.Value:=QuSOQnt2.AsFloat-QuSOQnt2Sisa.AsFloat;
    end;
    dxMemProsesSPPQntTelahSPP.Value:=QuSOQntSPP.Value;
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
    dxMemProsesSPPNDPP.Value := QuSONNET.AsFloat;
    dxMemProsesSPPNNET.Value := QuSONDPP.AsFloat;
    dxMemProsesSPPFlagTipe.Value:=QuSOFlaGtipe.AsInteger;
    dxMemProsesSPP.Post;
    QuSO.Next;
  end;
  QuSO.EnableControls;
 XCUstSupp:=QuSOKodeCust.asstring;
 IsPPn:=QuSOFlaGtipe.asInteger;
end;

procedure TFrSPPProses.Simpandata(Choice:Char);
begin
  With Sp_Beli do
  begin
    close;
    Prepared;
    Parameters[1].Value:='I';
    Parameters[2].Value:=NoBukti;
    Parameters[3].Value:=NoUrut;
    Parameters[4].Value:=Tanggal;
    Parameters[5].Value:=QuSONobukti.AsString;
    Parameters[6].Value:=dxMemProsesSPPNoPesanan.AsString;
    Parameters[7].Value:=dxMemProsesSPPKodeCust.AsString;
    Parameters[8].Value := dxMemProsesSPPTglKirim.AsDateTime;
    Parameters[9].Value:='';
    Parameters[10].Value:='';
    Parameters[11].Value:=dxMemProsesSPPCatatan.Value;
    Parameters[12].Value:=0;
    Parameters[13].Value:=dxMemProsesSPPUrut.AsInteger;
    Parameters[14].Value:=dxMemProsesSPPKodeBrg.AsString;
    Case dxMemProsesSPPNosat.Value of
      1 : Begin
            Parameters[15].Value := dxMemProsesSPPQntSPP.Value;
            Parameters[16].Value := dxMemProsesSPPQntSPP.Value/dxMemProsesSPPIsi.Value;
          end;
      2 : Begin
            Parameters[15].Value := dxMemProsesSPPQntSPP.Value*dxMemProsesSPPIsi.Value;
            Parameters[16].Value := dxMemProsesSPPQntSPP.Value;
          End;
    end;
    Parameters[17].Value:=dxMemProsesSPPSat1.AsString;
    Parameters[18].Value:=dxMemProsesSPPSAT2.AsString;
    Parameters[19].Value:=dxMemProsesSPPNosat.AsInteger;
    Parameters[20].Value:=dxMemProsesSPPIsi.Value;
    Parameters[21].Value:=0;
    Parameters[22].Value:=0;
    Parameters[23].Value:='';
    Parameters[24].Value:=IDUser;
    Parameters[25].Value:=1;
    Parameters[26].Value := Trim(dxMemProsesSPPNamaBrg.Value);
    Parameters[27].Value :=0;
    Parameters[28].Value:=dxMemProsesSPPNoAlamatKirim.AsInteger;
    Parameters[29].Value := '';
    Parameters[30].Value := '';
    Parameters[31].Value := 0;
   // Parameters[32].Value := dxMemProsesSPPKodegdg.Value;
    Parameters[32].Value := KodeGdg.text;
    Parameters[33].Value := IsPPn;
    try
      ExecProc;
      
    except
      MsgProsesGagal(Choice);
    end;
  end;
end;

procedure TFrSPPProses.IsiNoBuktiBaru;
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

procedure TFrSPPProses.FormShow(Sender: TObject);
begin
  Tampildata;
  BitBtn1.Click;
end;

procedure TFrSPPProses.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrSPPProses.BtnSimpanClick(Sender: TObject);
var xAdaKeSJ: Boolean;
    TotQnt : Real;
begin
  xAdaKeSJ:=False;
  dxMemProsesSPP.First;
  IsiNoBuktiBaru;
  TotQnt := 0;
  while not dxMemProsesSPP.Eof do
  begin
    if (dxMemProsesSPPKeSJ.Value=True) {and (dxMemProsesSPPQntSPP.Value>0)} then
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

procedure TFrSPPProses.BtnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFrSPPProses.FormCreate(Sender: TObject);
begin
  TipeTrans := 'SPP';
  with DM.QuCari do
  begin
    close;
    sql.Clear;
    sql.Add('Select Kodegdg,Nama from dbgudang order by kodegdg');
    open;
    DisableControls;
    Kodegdg.Items.Clear;
    First;
    while (not IsEmpty) and (not Eof) do
    begin
      Kodegdg.Items.Add(fieldbyname('kodegdg').AsString);
      XNamaGdg[RecNo-1]:='[ '+fieldbyname('Nama').AsString+' ]';
      next;
    end;
    //Kodegdg.Items.Add('Semua');
    Kodegdg.ItemIndex := 0;
    Label4.Caption:=XNamaGdg[0];
  end;

end;

procedure TFrSPPProses.CetakClick(Sender: TObject);
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
    MessageDlg('Pilih SO (Sales Order) yang akan cetak !',
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
      SQL.Add('Select 	A.NoBukti, A.NOURUT, A.Tanggal, A.KodeCUST, C.NamaCUST, C.Alamat, J.Alamat AlamatKirim, ');
      SQL.Add('	A.NOSPB, A.KodeGdg, A.Keterangan, A.Catatan, ');
      SQL.Add('	B.Urut, B.UrutSPB, B.KodeBrg, H.NamaBrg, B.Qnt Qnt1, ');
      SQL.Add('	Case when B.Nosat=1 then B.Qnt when B.Nosat=2 then B.Qnt2 else 0 End Qnt,');
      SQL.Add('	Case when B.Nosat=1 then H.Sat1 when B.Nosat=2 then H.Sat2 else '''' End  Satuan, ');
      SQL.Add(' B.Qnt2, H.Sat2 SatuanRoll, A.KodeExp, ');
      SQL.Add('	case when B.Qnt2=0 then B.Qnt else B.Qnt2 end QntTampil, ');
      SQL.Add('	case when B.Qnt2=0 then H.Sat1 else H.Sat2 end SatuanTampil');
      SQL.Add('From dbSO A ');
      SQL.Add('Left Outer join dbSODet B on B.NoBukti=a.NoBukti ');
      SQL.Add('Left Outer Join vwBrowsCustomer C on c.KodeCust=a.KodeCust and c.Sales=A.Kodesls ');
      SQL.Add('left outer join dbKaryawan F on F.KeyNik=A.KodeSls ');
      SQL.Add('Left Outer Join vwSatuanBrg H on H.KodeBrg=B.KodeBrg ');
      SQL.Add('left outer join vwAlamatCust J on J.KodeCustSupp=A.KodeCust and J.Nomor=A.NoAlamatKirim ');
      SQL.Add('where A.NoBukti in ('+xSQLNOSO+')');
      SQL.Add('order by A.NoBukti, B.Urut ');
      //Sql.SaveToFile('C:\Testing.Sql');
      Open;
    end;
    frxDBCetak.Close;
    frxDBCetak.Open;
    frxReport1.LoadFromFile(currDir+'Nota\OutSOUntukSJ.fr3');
    frxReport1.ShowReport;
  end;
end;

procedure TFrSPPProses.SpeedButton6Click(Sender: TObject);
begin
  frxReport1.LoadFromFile(currDir+'Nota\OutSOUntukSJ.fr3');
  frxReport1.DesignReport;
end;

procedure TFrSPPProses.frxReport1AfterPrintReport(Sender: TObject);
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
    SQL.Add('Select 	A.NoBukti, A.NOURUT, A.Tanggal, A.KodeCUST, C.NamaCUST, C.Alamat, J.Alamat AlamatKirim, ');
    SQL.Add('	A.NOSPB, A.KodeGdg, A.Keterangan, A.Catatan, ');
    SQL.Add('	B.Urut, B.UrutSPB, B.KodeBrg, H.NamaBrg, B.Qnt Qnt1, ');
    SQL.Add('	Case when B.Nosat=1 then B.Qnt when B.Nosat=2 then B.Qnt2 else 0 End Qnt,');
    SQL.Add('	Case when B.Nosat=1 then H.Sat1 when B.Nosat=2 then H.Sat2 else '''' End  Satuan, ');
    SQL.Add(' B.Qnt2, H.Sat2 SatuanRoll, A.KodeExp, ');
    SQL.Add('	case when B.Qnt2=0 then B.Qnt else B.Qnt2 end QntTampil, ');
    SQL.Add('	case when B.Qnt2=0 then H.Sat1 else H.Sat2 end SatuanTampil');
    SQL.Add('From dbSO A ');
    SQL.Add('Left Outer join dbSODet B on B.NoBukti=a.NoBukti ');
    SQL.Add('Left Outer Join vwBrowsCustomer C on c.KodeCust=a.KodeCust and c.Sales=A.Kodesls ');
    SQL.Add('left outer join dbKaryawan F on F.KeyNik=A.KodeSls ');
    SQL.Add('Left Outer Join vwSatuanBrg H on H.KodeBrg=B.KodeBrg ');
    SQL.Add('left outer join vwAlamatCust J on J.KodeCustSupp=A.KodeCust and J.Nomor=A.NoAlamatKirim ');
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
      sql.add('update dbsodet set IsCetakKitir=1 where Nobukti=:0 and urut=:1');
      Prepared;
      Parameters[0].Value := QuCetakSO.Fieldbyname('nobukti').AsString;
      Parameters[1].Value := QuCetakSO.Fieldbyname('Urut').AsInteger;
      ExecSQL;
    end;
    QuCetakSO.next;
  end;
end;

procedure TFrSPPProses.dxMemProsesSPPAfterPost(DataSet: TDataSet);
begin
  {with dxMemProsesSPP do
  begin
    edit;
    dxMemProsesSPPQntSisa.Value := dxMemProsesSPPQntSO.Value-dxMemProsesSPPQntSPP.Value;
    Post;
  end;}
end;

procedure TFrSPPProses.dxDBGrid1Edited(Sender: TObject;
  Node: TdxTreeListNode);
begin
  with dxMemProsesSPP do
  begin
    if ((dxDBGrid1Qnt.Field.Value-dxDBGrid1QntSPP.Field.Value)>=0) then
    begin
      if (dxDBGrid1QntSPP.Field.Value<=dxMemProsesSPPQntStock.Value) then
      begin
        edit;
        dxMemProsesSPPQntSisa.Value := dxMemProsesSPPQntSO.Value-dxDBGrid1QntSPP.Field.Value;
        Post;
      end
      else
      begin
        edit;
        if dxDBGrid1QntSPP.Field.Value<=dxDBGrid1QntStock.Field.Value then
        begin
           dxMemProsesSPPQntSPP.Value := dxDBGrid1QntSPP.Field.Value;
           dxMemProsesSPPQntSisa.Value := dxMemProsesSPPQntSO.Value-dxDBGrid1QntSPP.Field.Value;
        end
        else
        begin
           //dxMemProsesSPPQntSPP.Value := dxDBGrid1QntStock.Field.Value;
           //dxMemProsesSPPQntSisa.Value := dxMemProsesSPPQntSO.Value-dxDBGrid1QntStock.Field.Value;
           dxMemProsesSPPQntSisa.Value := dxMemProsesSPPQntSO.Value-dxMemProsesSPPQntSPP.Value;
        end;
        Post;
      end
    end
    else
    begin
      edit;
      dxMemProsesSPPQntSPP.Value := dxDBGrid1QntSisa.Field.Value;
      Post;
    end;
    Refresh;
  end;
   BitBtn1.Click;
end;

procedure TFrSPPProses.BitBtn1Click(Sender: TObject);
Var JT,TJT:Integer;
begin
  With DM.QuCari do
  Begin
   Close;
   SQL.Clear;
   SQL.Add('exec sp_vwSisaPiutang :0,:1');
   Parameters[0].Value:=dxMemProsesSPPTglSO.Value;
   Parameters[1].Value:=FrMainSPP.QuMasterKodeCust.AsString;
   Open;
  end;
  Label3.Visible:=True;
  if DM.QuCari.RecordCount>0 Then
  Begin
    if dxMemProsesSPPKeSJ.AsBoolean Then
    Begin
    Label3.Caption:='Plafon ='+FormatCurr(',0.00',DM.QuCari.FieldByName('Plafon').AsFloat)+#13+
                    'Sisa Piutang ='+FormatCurr(',0.00',DM.QuCari.FieldByName('Sisa').AsFloat+dxMemProsesSPPNNET.AsFloat)+#13+
                    'Sisa Plafon ='+FormatCurr(',0.00',DM.QuCari.FieldByName('SisaP').AsFloat-dxMemProsesSPPNNET.AsFloat);
    end
    else
    Begin
    Label3.Caption:='Plafon ='+FormatCurr(',0.00',DM.QuCari.FieldByName('Plafon').AsFloat)+#13+
                    'Sisa Piutang ='+FormatCurr(',0.00',DM.QuCari.FieldByName('Sisa').AsFloat)+#13+
                    'Sisa Plafon ='+FormatCurr(',0.00',DM.QuCari.FieldByName('SisaP').AsFloat);
    end;
  end
  else
  Begin
    With DM.QuCari do
    Begin
     Close;
     SQL.Clear;
     SQL.Add('exec sp_vwPlafon :0');
     Parameters[0].Value:=FrMainSPP.QuMasterKodeCust.AsString;
     Open;
    end;
    Label3.Caption:='Plafon ='+FormatCurr(',0.00',DM.QuCari.FieldByName('Plafon').AsFloat)+#13+
                  'Sisa Piutang ='+FormatCurr(',0.00',0.0);

  end;
  With QuCari do
  Begin
   Close;
   SQL.Clear;
   SQL.Add('exec sp_vwPiutangJT :0');
   Parameters[0].Value:=FrMainSPP.QuMasterKodeCust.AsString;
   Open;
  end;
  BitBtn1.Visible:=QuCari.RecordCount>0;
  if QuCari.RecordCount>0 Then
  Begin
  Label3.Visible:=True;
  Label3.Caption:=Label3.Caption+#13+
                  'Piutang Jatuh Tempo =No Faktur.'+QuCari.FieldByName('Nofaktur').AsString+'; '+ FormatCurr(',0.00',QuCari.FieldByName('Sisa').AsFloat);
  end
  else
  Label3.Caption:=Label3.Caption+#13+'Piutang Jatuh Tempo = Tidak Ada';
  With QuCari2 do
  Begin
   Close;
   SQL.Clear;
   SQL.Add('exec sp_vwCustJT :0,:1');
   Parameters[0].Value:=FrMainSPP.QuMasterKodeCust.AsString;
   Parameters[1].Value:=0;
   Open;
  end;
  JT:=QuCari2.RecordCount;
  With QuCari2 do
  Begin
   Close;
   SQL.Clear;
   SQL.Add('exec sp_vwCustJT :0,:1');
   Parameters[0].Value:=FrMainSPP.QuMasterKodeCust.AsString;
   Parameters[1].Value:=1;
   Open;
  end;
  TJT:=QuCari2.RecordCount;
  if (JT>0)or(TJT>0) Then
  Begin
  Label3.Visible:=True;
  Label3.Caption:=Label3.Caption+#13+
                  'Piutang Jatuh Tempo (1 Tahun ) ada='+IntToStr(JT)+ '  dan Piutang Tidak Jatuh Tempo(1 Tahun)='+IntToStr(TJT);
  end
  else Label3.Caption:=Label3.Caption+#13+
                  'Piutang Jatuh Tempo (1 Tahun)=Tidak Ada';
  With QuCari2 do
  Begin
   Close;
   SQL.Clear;
   SQL.Add('exec sp_vwCustJT :0,:1');
   Parameters[0].Value:=FrMainSPP.QuMasterKodeCust.AsString;
   Parameters[1].Value:=3;
   Open;
  end;
  BitBtn3.Visible:=QuCari2.RecordCount>0;
end;

procedure TFrSPPProses.BitBtn2Click(Sender: TObject);
begin
Panel1.Visible:=True;
end;

procedure TFrSPPProses.BitBtn3Click(Sender: TObject);
begin
Panel3.Visible:=True;
end;

procedure TFrSPPProses.cxGridDBColumn2GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
if  Qucari2.FieldByName('Urut').AsInteger=0 Then AText:='Piutang Jatuh Tempo'
 else AText:='Lunas';
end;

procedure TFrSPPProses.Button2Click(Sender: TObject);
begin
 Panel3.Visible:=False;
end;

procedure TFrSPPProses.Button1Click(Sender: TObject);
begin
Panel1.Visible:=False;
end;

procedure TFrSPPProses.KodegdgCloseUp(Sender: TObject);
begin
 Label4.Caption:=XNamaGdg[Kodegdg.ItemIndex];
 Tampildata;
 BitBtn1.Click;
end;

end.
