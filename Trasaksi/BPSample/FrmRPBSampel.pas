unit FrmRPBSampel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, DBCtrls, ImgList, dxDBTLCl, dxGrClms,
  dxTL, dxDBCtrl, dxDBGrid, dxCntner, variants, dxEditor, dxExEdtr, dxEdLib,
  Dateutils, raCodMod, frxClass, frxDMPExport, frxDBSet, frxDesgn, MyGlobal, strutils;

type
  TFrRPBSampel = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    QuBeli: TADOQuery;
    Sp_Beli: TADOStoredProc;
    DsQuBeli: TDataSource;
    QuUpdatedbbeli: TADOQuery;
    Label10: TLabel;
    DataSource1: TDataSource;
    QuReport: TADOQuery;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    PanelShow2: TPanel;
    PanelShow1: TPanel;
    Cetak: TSpeedButton;
    HapusBtn: TSpeedButton;
    KoreksiBtn: TSpeedButton;
    TambahBtn: TSpeedButton;
    frxDataPerusahaan: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    SpeedButton8: TSpeedButton;
    frxReport1: TfrxReport;
    frxDesigner1: TfrxDesigner;
    dxDBGrid1KodeBrg: TdxDBGridMaskColumn;
    dxDBGrid1NamaBrg: TdxDBGridMaskColumn;
    dxDBGrid1Satuan: TdxDBGridMaskColumn;
    dxDBGrid1Qnt: TdxDBGridMaskColumn;
    QuByAngkut: TADOQuery;
    Label26: TLabel;
    Label42: TLabel;
    Shape4: TShape;
    Label12: TLabel;
    NoUrut: TEdit;
    Tanggal: TDateEdit;
    NoBukti: TEdit;
    LNamaBrg: TRxLabel;
    Label1: TLabel;
    Label4: TLabel;
    Qnt: TPBNumEdit;
    KodeBrg: TEdit;
    Label19: TLabel;
    NoSat: TPBNumEdit;
    LNamaSat: TRxLabel;
    QuBeliNOBUKTI: TStringField;
    QuBeliNOURUT: TStringField;
    QuBeliTANGGAL: TDateTimeField;
    QuBeliURUT: TIntegerField;
    QuBeliKODEBRG: TStringField;
    QuBeliQNT: TBCDField;
    QuBeliNOSAT: TWordField;
    QuBeliISI: TBCDField;
    QuBeliNamaBrg: TStringField;
    Label2: TLabel;
    Ket: TEdit;
    QuBeliSat: TStringField;
    QuBeliKodegdg: TStringField;
    Label6: TLabel;
    KodeGdg: TEdit;
    Label3: TLabel;
    Label5: TLabel;
    NoBppB: TEdit;
    QuBeliStok: TBCDField;
    QuBelisisa: TBCDField;
    QuBeliQntBP: TBCDField;
    QuBeliNfix: TBooleanField;
    QuBeliIsi2: TBCDField;
    QuBeliNoPenyerahanBhn: TStringField;
    QuBeliStok2: TBCDField;
    QuBeliQnt2BP: TBCDField;
    QuBeliQntRBP: TBCDField;
    QuBeliQnt2RBP: TBCDField;
    QuBeliQnt2: TBCDField;
    Label7: TLabel;
    Qnt1: TPBNumEdit;
    LabelSatuan1: TLabel;
    Qnt2: TPBNumEdit;
    LabelSatuan2: TLabel;
    QuBeliUrutPenyerahanBHN: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure TampilData(No_Bukti,ID:String);
    procedure UpdateDataBeli(Choice:Char;Kodet:String);
    procedure FormCreate(Sender: TObject);
    procedure TambahBtnClick(Sender: TObject);
    procedure ClearPanelDetail;
    procedure RefreshAll;
    procedure QntKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TanggalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UpdatedbBeli;
    procedure KoreksiBtnClick(Sender: TObject);
    procedure wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure HapusBtnClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure NoUrutKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TanggalEnter(Sender: TObject);
    procedure TanggalExit(Sender: TObject);
    procedure CetakClick(Sender: TObject);
    Function CheckFormMaster:boolean;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure KodeGdgEnter(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure KodeBrgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton8Click(Sender: TObject);
    procedure TanggalChange(Sender: TObject);
    procedure NoUrutEnter(Sender: TObject);
    procedure KodeBrgEnter(Sender: TObject);
    procedure KodeBrgExit(Sender: TObject);
    procedure KodeGdgExit(Sender: TObject);
    procedure QntChange(Sender: TObject);
    procedure NoBppBExit(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure NoSatChange(Sender: TObject);
    procedure frxReport1AfterPrintReport(Sender: TObject);
    procedure NoUrutExit(Sender: TObject);

  private
    { Private declarations }
    mUbahHd, mUbahHdDet: Boolean;
    mNamaSatuan: TNamaSatuanBrg;
    mIsiSatuan: TIsiSatuanBrg;
    IsTampil1:Boolean;
    IsTampil:Boolean;
    XIs12:Double;
    XnFix:Boolean;
    mNFixBarang: Boolean;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure TampilIsiDept;
    procedure TampilIsiBarang;
    procedure TampilIsiGudang;
    procedure IsiNoBuktiBaru;
    procedure IsiSatuan;
    Procedure AmBilDataBeli;
    procedure TampilIsiBeli;
    procedure TampilanQnt1Qnt2;
  public
    { Public declarations }
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel,xModalKoreksi: Boolean;
    yy,mm,dd : word;
    sishal, Tothal, mUrutPenyerahan : Integer;
  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrRPBSampel: TFrRPBSampel;
  mValid,mExit,mMasterKoreksi,xIsPpn: Boolean;
  Sat:String;
  mUrut,mUrutPO,IsTutup,mNosat,mPosisi,mUrutRO:Integer;
  TipeTrans,PlusPPN,Nomor,Model:String;
  mBulan,mTahun:string;
  S:array[0..255]of char;
  BM : TBookmark;

implementation
uses FrmBrows, MyProcedure, MyModul, FrmMainRPBSampel;
{$R *.DFM}

// PROCEDURE DAN FUNCTION PRIBADI

procedure TFrRPBSampel.TampilTombolDetail(pNilai: Boolean);
begin
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  Panel3.Enabled:=pNilai;
end;

procedure TFrRPBSampel.TampilIsiDept;
begin

end;

procedure TFrRPBSampel.TampilIsiBarang;
begin
  //KodeBrows:=300161;
  KodeBrows:=242017;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.GrpTipe:=1;  
  FrBrows.IsiData:='%'+NoBppB.Text+'%';
  FrBrows.NoKira := NoBppB.Text;
  FrBrows.EditFilter.Text:=KodeBrg.Text;
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.IsEmpty=False) then
  begin
    with FrBrows.QuBrows do
    begin
      KodeBrg.Text:=fieldbyname('KodeBrg').AsString;
      LNamaBrg.Caption:='[ '+fieldbyname('NamaBrg').AsString+' ]';
      mNFixBarang:=FieldByName('NFix').AsBoolean;
      mUrutPenyerahan := fieldbyname('Urut').AsInteger;
      IsiSatuan;
      TampilanQnt1Qnt2;
      {Qnt.AsFloat:=fieldbyname('QntSisa').AsFloat;
      Qnt2.AsFloat:=fieldbyname('Qnt2Sisa').AsFloat; }
      XnFix:=fieldbyname('nFix').AsBoolean;
      //XIs12:=fieldbyname('Qnt2Sisa').AsFloat;
      ActiveControl:=Qnt;
    end;
    IsiSatuan;
  end
  else
    ActiveControl:=KodeBrg;
end;



procedure TFrRPBSampel.IsiNoBuktiBaru;
begin
  DecodeDate(Date,YY,MM,DD);
  If DayOfTheMonth(Date)<=DD then
     DD:=DayOfTheMonth(date);
  Try
    TANGGAL.Date := EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),DD);
  Except
    TANGGAL.Date := EndOfAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln))
  end;
  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),'RPBS',Nomor,NomorBukti,Tanggal.Date);
  NoUrut.Text := NomorBukti;
  NOBUKTI.Text := Nomor;
end;

procedure TFrRPBSampel.TampilData(No_Bukti,ID:String);
begin
if FrMainRPBSampel.ModalKoreksi Then
 Begin
   QuBeli.Close;
   QuBeli.SQL.Clear;
   QuBeli.SQL.Add('declare @NoBukti varchar(50)');
   QuBeli.SQL.Add('select 	@NoBukti='''' ');
   QuBeli.SQL.Add('Select 	d.isi2,d.Nfix,A.NoBukti,A.Nourut,A.Tanggal,A.Kodegdg,A.NoPenyerahanBhn,B.urut,B.Kodebrg,B.Qnt,B.Qnt2,B.Isi,B.Nosat,B.Sat,D.NamaBrg,Convert(Numeric(18,2),0) Stok,Convert(Numeric(18,2),0) Stok2');
   QuBeli.SQL.Add(',Convert(Numeric(18,2),0) Sisa,Convert(Numeric(18,2),0) Sisa2,Convert(Numeric(18,2),0) QntBP');
   QuBeli.SQL.Add(',Convert(Numeric(18,2),0) Qnt2BP,Convert(Numeric(18,2),0) QntRBP,Convert(Numeric(18,2),0) Qnt2RBP, B.UrutPenyerahanBHN');
   QuBeli.SQL.Add('From dbRPenyerahanBhn A');
   QuBeli.SQL.Add('Left Outer join dbRPenyerahanBhnDet B on B.NoBukti=a.NoBukti');
   QuBeli.SQL.Add('Left Outer join dbBarang D on D.KodeBrg=B.Kodebrg');
   QuBeli.SQL.Add('where	A.NoBukti=@NoBukti');
   QuBeli.SQL.Add('order by B.Urut');
   QuBeli.SQL.Strings[1]:='select @NoBukti='+QuotedStr(No_Bukti);
   QuBeli.Open;
 end
else if  ID='1' Then
Begin
   QuBeli.Close;
   QuBeli.SQL.Clear;
   QuBeli.SQL.Add('declare @NoBukti varchar(50)');
   QuBeli.SQL.Add('select 	@NoBukti='''' ');
   QuBeli.SQL.Add('Select 	d.isi2,d.Nfix,A.NoBukti,A.Nourut,A.Tanggal,A.Kodegdg,A.NoPenyerahanBhn,B.urut,B.Kodebrg,B.Qnt,B.Qnt2,B.Isi,B.Nosat,B.Sat,D.NamaBrg,Convert(Numeric(18,2),0) Stok,Convert(Numeric(18,2),0) Stok2');
   QuBeli.SQL.Add(',Convert(Numeric(18,2),0) Sisa,Convert(Numeric(18,2),0) Sisa2,Convert(Numeric(18,2),0) QntBP');
   QuBeli.SQL.Add(',Convert(Numeric(18,2),0) Qnt2BP,Convert(Numeric(18,2),0) QntRBP,Convert(Numeric(18,2),0) Qnt2RBP, B.UrutPenyerahanBHN');
   QuBeli.SQL.Add('From dbRPenyerahanBhn A');
   QuBeli.SQL.Add('Left Outer join dbRPenyerahanBhnDet B on B.NoBukti=a.NoBukti');
   QuBeli.SQL.Add('Left Outer join dbBarang D on D.KodeBrg=B.Kodebrg');
   QuBeli.SQL.Add('where	A.NoBukti=@NoBukti');
   QuBeli.SQL.Add('order by B.Urut');
   QuBeli.SQL.Strings[1]:='select @NoBukti='+QuotedStr(No_Bukti);
   QuBeli.Open;
end
else if FrMainRPBSampel.ModalKoreksi=False Then
 Begin
   QuBeli.Close;
   QuBeli.SQL.Clear;
   QuBeli.SQL.Add('Declare @Bulan Int,@Tahun Int');
   QuBeli.SQL.Add('Select @Bulan=1,@Tahun=2012');
   QuBeli.SQL.Add('Select 	d.isi2,d.Nfix,a.NoBukti, '''' NoPenyerahanBhn,'''' Nourut,A1.Tanggal,'''' Kodegdg,0 urut,A.Kodebrg,Convert(Numeric(18,2),0) Sisa,Convert(Numeric(18,2),0) Isi,a.Nosat');
   QuBeli.SQL.Add(',Isnull(c.Qnt,0)Stok,Isnull(c.Qnt2,0)Stok2,Isnull(SUM(a.QNT),0)QntBP,Isnull(SUM(a.QNT2),0)Qnt2BP,Isnull(b.Qnt,0)QntRBP,Isnull(b.Qnt2,0)Qnt2RBP,Isnull(SUM(a.QNT),0)-Isnull(b.Qnt,0)Qnt,Isnull(SUM(a.QNT2),0)-Isnull(b.Qnt2,0)Qnt2,a.Sat,D.NamaBrg,');
   Qubeli.SQL.add('A.Urut UrutPenyerahanBHN');
   QuBeli.SQL.Add('From DBPenyerahanBhnDET A');
   QuBeli.SQL.Add('left Outer Join DBPenyerahanBhn A1 On A1.NoBukti=A.noBukti');
   QuBeli.SQL.Add('left Outer Join (select Kodebrg,SUM(Qnt)Qnt,SUM(Qnt2)Qnt2 from DBRPenyerahanBhnDET group by kodebrg)b On b.kodebrg=a.KodeBrg');
   QuBeli.SQL.Add('left Outer Join (select Kodebrg,SUM(SALDOQNT)Qnt,SUM(SALDO2QNT)Qnt2 from DBSTOCKBRG where Bulan=@Bulan and Tahun=@Tahun group by kodebrg )c On c.kodebrg=a.KodeBrg');
   QuBeli.SQL.Add('Left Outer join dbBarang D on D.KodeBrg=A.Kodebrg');
   QuBeli.SQL.Add('where	A.NoBukti='+QuotedStr(NoBppB.Text));
   QuBeli.SQL.Add('group by a.NOBUKTI,a.KodeBrg,b.Qnt,b.Qnt2,c.Qnt,c.Qnt2,d.NAMABRG,a1.tanggal,a.Sat,a.Nosat,d.NFix,d.isi2, a.Urut');
   QuBeli.SQL.Strings[1]:='Select @Bulan='+(PeriodBln)+',@Tahun='+PeriodThn;
   QuBeli.Open;
 end;
   if QuBeli.IsEmpty=false then
   begin
      dxDBGrid1.OptionsDB:=[edgoCanNavigation,edgoLoadAllRecords,edgoUseBookmarks]
   end
   else
   begin
      dxDBGrid1.OptionsDB:=[edgoCanNavigation,edgoUseBookmarks];
   end;
   //Hitung;
end;

Function TFrRPBSampel.CheckFormMaster:boolean;
begin
   CheckFormMaster:=true;
end;

procedure TFrRPBSampel.UpdatedbBeli;
begin
  if (not QuBeli.IsEmpty)and(FrMainRPBSampel.ModalKoreksi) then
  begin
    with QuUpdatedbBeli do
    begin
       Close;
       Sql.Clear;
       SQL.Add('Update dbRPenyerahanBhn');
       SQL.Add('set TANGGAL=:0,Kodegdg=:1,NoBPPB=:2');
       SQL.Add('Where NoBukti='+QuotedStr(NoBukti.Text));
       Prepared;
       Parameters[0].Value := TANGGAL.Date;
       Parameters[1].Value := KodeGdg.Text;
       Parameters[2].Value := NoBppB.Text;
       ExecSQL;

    end;
    TampilData(NoBukti.Text,'1');
  end;
end;

procedure TFrRPBSampel.ClearPanelDetail;
begin
   mValid:=False;
   KodeBrg.Text:='';
   LNamaBrg.Caption:='[ . . . ]';
   Qnt.Value:=0;
   Qnt1.Value:=0;
   Qnt2.Value:=0;
   LabelSatuan1.Caption:='[ ]';
   LabelSatuan2.Caption:='[ ]';
   Nosat.AsInteger:=1;
   LNamaSat.Caption:='[. . . ]';
   Ket.Text:='';
end;

procedure TFrRPBSampel.RefreshAll;
begin
  mValid:=False;
  KodeGdg.Text:='';
  NoBppB.Text:='';
  ClearPanelDetail;
end;

procedure TFrRPBSampel.UpdateDataBeli(Choice:Char;Kodet:String);
begin
   if Choice='I' then
   begin
     DataBuka('select top 1 Urut from DBRPenyerahanBhnDET where NoBukti='+QuotedStr(NoBukti.Text)+
      ' order by Urut desc ', DM.QuCari2);
    if DM.QuCari2.IsEmpty then
      mUrut:=1
    else mUrut:=DM.QuCari2.FieldByName('Urut').AsInteger+1;
   end
   else mUrut:=QuBeliUrut.AsInteger;

   FrMainRPBSampel.mMainRPB_NoBukti:=NoBukti.Text;
   With Sp_Beli do
   begin
       Parameters.Refresh;
       Parameters[1].Value:=Choice;
       Parameters[2].Value:=NoBukti.Text;
       Parameters[3].Value:=NoUrut.Text;
       Parameters[4].Value:=TANGGAL.Date;
       Parameters[5].Value:=Kodegdg.Text;
       Parameters[6].Value:=mUrut;
       Parameters[7].Value:=KodeBrg.Text;
       Parameters[8].Value:=Qnt1.AsFloat;
       Parameters[9].Value:=NoSat.AsInteger;
       Parameters[10].Value:=mNamaSatuan[NoSat.AsInteger];
       Parameters[11].Value:=mIsiSatuan[NoSat.AsInteger];
       Parameters[12].Value:=NoBppB.Text;
       Parameters[13].Value:=Qnt2.AsFloat;
       Parameters[14].Value:=mUrutPenyerahan;
       Parameters[15].Value:=True;
       try
          ExecProc;
          if Choice='I' then
          begin
            TampilData(NoBukti.Text,'1');
            QuBeli.Locate('Urut', mUrut, []);
            LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                    'Kode Barang = '+KodeBrg.Text+' , No. Sat = '+NoSat.Text+
                    ' , Qnt1 = '+Qnt1.Text+' , Qnt2 = '+Qnt2.Text);
          end else if Choice='U' then
          begin
            LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                    'Kode Barang = '+QuBeliKodeBrg.AsString+' , No. Sat = '+QuBeliNOSAT.AsString+' , Qnt1 = '+QuBeliQnt.DisplayText+
                    ' , Qnt2 = '+QuBeliQnt2.DisplayText+chr(10)+
                    '===> Kode Barang = '+KodeBrg.Text+' , No. Sat = '+NoSat.Text+
                    ' , Qnt1 = '+Qnt1.Text+' , Qnt2 = '+Qnt2.Text);
            TampilData(NoBukti.Text,'1');
            QuBeli.Locate('Urut', mUrut, []);
          end
          Else if Choice='D' then
          begin
            LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                    'Kode Barang = '+QuBeliKodeBrg.AsString+' , No. Sat = '+QuBeliNOSAT.AsString+' , Qnt1 = '+QuBeliQnt.DisplayText+
                    ' , Qnt2 = '+QuBeliQnt2.DisplayText);
            TampilData(NoBukti.Text,'1');
          end;
       except
          on E: Exception do
          begin
            Application.MessageBox(StrPCopy(S,E.Message),'Error',MB_OK or MB_ICONSTOP);
          end;
       end;
   end;
end;

Procedure TFrRPBSampel.AmBilDataBeli;
begin
   if not QuBeli.IsEmpty then
   begin
      Tanggal.Date:=QuBeliTanggal.AsDateTime;
      KodeGdg.Text:=QuBeliKodegdg.AsString;
      NoBppB.Text:=QuBeliNoPenyerahanBhn.AsString;
   end;
end;

// PROCEDURE DAN FUNCTION MILIK DELPHI

procedure TFrRPBSampel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (KodeGdg.Text <> '-') or (QuBeli.IsEmpty) then
    begin
      if mExit=true then
      begin
         Hapus_Daftar_Nomor(TipeTrans ,NoBukti.Text,IDUser);
         FrMainRPBSampel.GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
         Action:=cafree;
      end
      else
      begin
         Action:=caNone;
      end;
    end
  else
    begin
      ShowMessage('Belum memilih Gudang !');
      ActiveControl := KodeGdg;
      Action:=caNone;      
    end;
end;

procedure TFrRPBSampel.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrRPBSampel.FormShow(Sender: TObject);
begin
  mValid:=False;
  xModalKoreksi:=FrMainRPBSampel.ModalKoreksi;
  IsTampil:=False;
  IsTampil1:=False;
  If FrMainRPBSampel.ModalKoreksi = False then
  begin
    RefreshAll;
    IsiNoBuktiBaru;
    TampilData(NoBukti.Text,'0');
    NoUrut.Enabled:=True;
  end
  else
  Begin
    NOBUKTI.Text := FrMainRPBSampel.QuMaster.FieldByname('Nobukti').AsString;
    Hapus_Daftar_Nomor_User (TipeTrans ,IDUser);
    Daftar_Nomor(TipeTrans ,NoUrut.Text,NOBUKTI.Text,IsMax);
    TampilData(NOBUKTI.Text,'1');
    AmBilDataBeli;
    NoUrut.Text:=QuBeliNOURUT.AsString;
    NoUrut.Enabled:=False;
  end;
  NoSat.OnChange:=NoSatChange;
  Qnt.OnChange:=QntChange;
end;

procedure TFrRPBSampel.FormCreate(Sender: TObject);
begin
  TipeTrans :='RPBS';
  Hapus_Daftar_Nomor_User(TipeTrans ,IDUser);
end;

procedure TFrRPBSampel.TambahBtnClick(Sender: TObject);
begin
  if CheckFormMaster=True then
  begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      Model:='write';
      TampilTombolDetail(True);
      KodeBrg.Enabled:=True;
      ActiveControl:=KodeBrg;
    end else
    begin
      MsgPeriodeSudahDikunci;
      ActiveControl:=dxDBGrid1;
    end;
  end;
end;

procedure TFrRPBSampel.QntKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    mValid:=False;
    KodeBrg.Enabled:=True;
    if Model='write' then
    begin
      ClearPanelDetail;
      ActiveControl:=KodeBrg;
    end else
      SpeedButton1.Click;
  end;
end;

procedure TFrRPBSampel.TanggalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_Return then
  begin
    if (Sender=Tanggal) and (CekPeriode(IDUser,TANGGAL.Date)=False) then
      Abort;
    UpdatedbBeli;
  end
  else if Key=Vk_Escape then
  begin
    If FrMainRPBSampel.ModalKoreksi = False then
    begin
      if (KodeGdg.Text <> '-') or (QuBeli.IsEmpty) then
        begin
          Hapus_Daftar_Nomor_User(TipeTrans ,IDUser);
          mValid:=False;
          RefreshAll;
          IsiNoBuktiBaru;
          TampilData(NOBUKTI.Text,'0');
          ActiveControl := NoUrut;
        end
      else
        begin
          ShowMessage('Belum memilih Gudang !');
          ActiveControl := KodeGdg;
        end;
    end
    else
    begin
      mExit := true;
      close;
    end;
  end;
end;

procedure TFrRPBSampel.KoreksiBtnClick(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    mValid:=False;
    Model:='koreksi';
    // data yang di update
    if QuBeli.IsEmpty=False then
    begin
      TampilTombolDetail(True);
      KodeBrg.Enabled:=False;
      KodeBrg.Text:=QuBeliKODEBRG.AsString;
      LNamaBrg.Caption:='[ '+QuBeliNamaBrg.AsString+' ]';
      NoSat.AsInteger:=QuBeliNOSAT.AsInteger;
      if NoSat.AsInteger=1 then
        Qnt.Value:=QuBeliQNT.AsCurrency
      else
        Qnt.Value:=QuBeliQnt2.AsCurrency;
      Qnt1.Value:=QuBeliQNT.AsCurrency;
      Qnt2.Value:=QuBeliQnt2.AsCurrency;
      mNFixBarang:=QuBeliNFix.AsBoolean;
      mUrutPenyerahan := QuBeliUrutPenyerahanBHN.AsInteger;
      IsiSatuan;
      TampilanQnt1Qnt2;
      ActiveControl:=Qnt;
    end
    else
    begin
      MsgKoreksiDataKosong;
      ActiveControl:=dxDBGrid1;
    end;
  end else
  begin
    MsgPeriodeSudahDikunci;
    ActiveControl:=dxDBGrid1;
  end;
end;

procedure TFrRPBSampel.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Escape then
  begin
    Hapus_Daftar_Nomor_User(TipeTrans ,IDUser);
    mExit := True;
      Close;
  end
  else if key=VK_return then
  begin
  if FrMainRPBSampel.ModalKoreksi Then
    KoreksiBtn.Click
  else
    TambahBtn.Click;
  end
  else if key=VK_delete then
  begin
    HapusBtn.Click;
  end
  else if key=VK_insert then
  begin
    TambahBtn.Click;
  end;
end;

procedure TFrRPBSampel.HapusBtnClick(Sender: TObject);
begin
      if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
      begin
         if QuBeli.IsEmpty=true then
         begin
            Application.MessageBox('Tabel Kosong','Informasi',
            MB_OK Or MB_ICONWARNING);
         end
         else
         begin
            StrPCopy(S,Format('Anda yakin NO %s dan Nama %s dihapus ?',
            [QuBeli.Fields[0].asstring,
            QuBeli.Fields[2].asstring]));
            if (Application.MessageBox(S,'Hapus Data',
               MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
            begin
               UpdateDataBeli('D','BL');
            end;
         end;
      end
      else
      begin
         ShowMessage('Periode Sudah Di Kunci !');
         ActiveControl:=dxDBGrid1;
      end;
end;

procedure TFrRPBSampel.wwDBGrid1Enter(Sender: TObject);
begin
  FrRPBSampel.KeyPreview:=false;
  if CheckFormMaster=false then
  begin
     ShowMessage('Form Master Tidak Lengkap, Silahkan Anda Periksa !');
     Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,iduser);
     ActiveControl:=NoUrut;
  end;
end;

procedure TFrRPBSampel.wwDBGrid1Exit(Sender: TObject);
begin
  FrRPBSampel.KeyPreview:=true;
end;

procedure TFrRPBSampel.wwDBGrid1DblClick(Sender: TObject);
begin
  KoreksiBtn.Click;
end;

procedure TFrRPBSampel.NoUrutKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_Return then
  begin
    If Length(NoUrut.Text)<5 then
    begin
      MessageDlg('Nomor urut kurang '+InttoStr(5-Length(NoUrut.Text))+' digit.',mtWarning,[MbOk],0);
      ActiveControl := NoUrut;
    end
    else
    begin
      TampilData(nobukti.Text,'0');
    {  if not QuBeli.IsEmpty then
      Begin
         AmBilDataBeli;
      end
      else
      Begin
        if FrMainRPB.ModalKoreksi then
        begin
          ActiveControl := NoUrut;
        end;
      end;}
      If Not Daftar_Nomor(TipeTrans ,NoUrut.Text,NOBUKTI.Text,IsMax) then
      begin
        MessageDlg('Nomor : '+NOBUKTI.Text+' telah digunakan oleh '+MyUser+'.',mtWarning,[MbOk],0);
        ActiveControl := NoUrut;
      end;
    end;
  end
  else if Key=Vk_Escape then
  begin
    mExit := true;
    Close;
  end;
end;

procedure TFrRPBSampel.TanggalEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrRPBSampel.TanggalExit(Sender: TObject);
begin
  if mValid then
  begin
     if CekPeriode(IDUser,TANGGAL.Date)=false then
     begin
        MessageDlg('Tanggal tidak sesuai periode transaksi.',mtWarning,[mbok],0);
        ActiveControl:=Tanggal;
     end;
  end;
end;

procedure TFrRPBSampel.CetakClick(Sender: TObject);
var N1, N2, N3 : string;
    T1, T2 : Real;
    Tot : byte;
    H1  : real;
begin
  tothal :=(QuBeli.RecordCount div 10);
  sishal :=(QuBeli.RecordCount mod 10);
  if sishal>0 then tothal :=tothal+1;
  With QuUpdatedbbeli do
  begin
    close;
    sql.clear;
    sql.add('Select * From vwPerusahaan ');
    Open;
  end;
  frxDBDataset1.DataSet:=Qureport;
  with qureport do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Exec CetakRPemakaianBahan '+QuotedStr(nobukti.Text));
    open
  end;
  frxDBDataset1.close;
  frxDBDataset1.Open;
  frxReport1.LoadFromFile(currDir+'Nota\NotareturPemakaianBahan.fr3');
  frxReport1.ShowReport;


end;

procedure TFrRPBSampel.BitBtn1Click(Sender: TObject);
begin
  if Model='write' then
  begin
    if length(Kodebrg.Text)>0 then
    begin
      UpdateDataBeli('I','BL');
      ClearPanelDetail;
      ActiveControl:=KodeBrg;
    end
    else
    begin
      MsgDataTidakBolehKosong('Kode Barang');
      ActiveControl:=KodeBrg;
    end;
  end
  else if Model='koreksi' then
  begin
    UpdateDataBeli('U','BL');
    SpeedButton1.Click;
  end;
end;

procedure TFrRPBSampel.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
  ClearPanelDetail;
end;

procedure TFrRPBSampel.FormDestroy(Sender: TObject);
begin
  FrRPBSampel:=nil;
end;

procedure TFrRPBSampel.KodeGdgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrRPBSampel.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
    if ANode.HasChildren then
      Exit;

    if not AFocused then
    begin
      if ANode.Index mod 2 =0 then
         AColor:=clWhite
      else
         AColor:=$00E1FFFF;
    end;
end;

procedure TFrRPBSampel.KodeBrgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    mValid:=False;
    SpeedButton1.Click;
  end;
end;

procedure TFrRPBSampel.SpeedButton8Click(Sender: TObject);
begin
  frxReport1.LoadFromFile(currDir+'Nota\NotareturPemakaianBahan.fr3');
  frxReport1.DesignReport;
end;

procedure TFrRPBSampel.TanggalChange(Sender: TObject);
begin
  mUbahHd:=True;
end;

procedure TFrRPBSampel.NoUrutEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrRPBSampel.IsiSatuan;
begin
  LNamaSat.Caption:=IsiSatuanBrg(KodeBrg.Text, mNamaSatuan, mIsiSatuan);
  LabelSatuan1.Caption:='['+mNamaSatuan[1]+']';
  LabelSatuan2.Caption:='['+mNamaSatuan[2]+']';
end;

procedure TFrRPBSampel.KodeBrgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrRPBSampel.KodeBrgExit(Sender: TObject);
begin
  if mValid Then
  begin
     TampilIsiBarang;
     IsiSatuan;
  end;
end;

procedure TFrRPBSampel.TampilIsiGudang;
begin
  KodeBrows:=11009;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeGdg.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    KodeGdg.Text:=FrBrows.QuBrows.FieldByName('KodeGdg').AsString;
  end
  else
    ActiveControl:=KodeGdg;
end;

procedure TFrRPBSampel.KodeGdgExit(Sender: TObject);
begin
 if mValid Then
  begin
     if Length(KodeGdg.Text)=0 then TampilIsiGudang else
     begin
        if DataBersyarat('select * from dbGudang where KodeGdg=:0 ',[KodeGdg.Text], DM.QuCari)=True then
        begin
          KodeGdg.Text:=DM.QuCari.fieldbyname('KodeGdg').AsString;
        end
        else TampilIsiGudang;
     end;
  end;
end;

procedure TFrRPBSampel.QntChange(Sender: TObject);
begin
  if mValid then
  begin
    if NoSat.AsInteger=1 then
    begin
      Qnt1.Value:=Qnt.AsFloat;
      //if mNFixBarang=False then
      if mIsiSatuan[2] <> 0 then
        Qnt2.Value:=Qnt.AsFloat/mIsiSatuan[2]
      else
        Qnt2.Value:=0;
    end else
    begin
      //if mNFixBarang=False then
        Qnt1.Value:=Qnt.AsFloat*mIsiSatuan[2];
      Qnt2.Value:=Qnt.AsFloat;
    end;
  end;
end;

procedure TFrRPBSampel.TampilIsiBeli;
begin
  KodeBrows:=242016;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.GrpTipe:=1;
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.IsEmpty=False) then
  begin
       NoBppB.Text:=FrBrows.QuBrows.fieldbyname('NoBukti').AsString;
  end
  else
    ActiveControl:=NoBppB;
end;

procedure TFrRPBSampel.TampilanQnt1Qnt2;
begin
  Qnt1.Enabled:=False;
  Qnt2.Enabled:=False;
  if mNFixBarang then
  begin
    if NoSat.AsInteger=1 then
    begin
      Qnt2.Enabled:=True;
    end else
    begin
      Qnt1.Enabled:=True;
    end;
  end
end;


procedure TFrRPBSampel.NoBppBExit(Sender: TObject);
begin
  if mValid Then
  begin
    if NoBppB.Text<>'-' then
    begin
      if length(NoBppB.Text)=0 then TampilIsiBeli else
      begin
        if DataBersyarat('Select A.Nobukti, C.Tanggal'+#13+
                     'From DBPenyerahanBhnDET A'+#13+
                     '     left outer join (Select x.NoPenyerahanBHN,  SUM(x.Qnt) Qnt, SUM(x.Qnt2) Qnt2'+#13+
                     '                      from DBRPenyerahanBhnDET x'+#13+
                     '                           left outer join DBRPenyerahanBhn y on y.Nobukti=x.Nobukti'+#13+
                     '                      Group by x.NoPenyerahanBHN) B on B.NoPenyerahanBHN=A.Nobukti'+#13+
                     '     left outer join DBPenyerahanBhn c on c.Nobukti=A.Nobukti'+#13+
                     'where Cast(Case when Case when C.IsOtorisasi1=1 then 1 else 0 end+'+#13+
                     '                       Case when C.IsOtorisasi2=1 then 1 else 0 end+'+#13+
                     '                       Case when C.IsOtorisasi3=1 then 1 else 0 end+'+#13+
                     '                       Case when C.IsOtorisasi4=1 then 1 else 0 end+'+#13+
                     '                       Case when C.IsOtorisasi5=1 then 1 else 0 end=C.MaxOL then 0'+#13+
                     '                  else 1'+#13+
                     '             end As Bit)=0 and ((A.Qnt-isnull(B.Qnt,0)>0) or (A.Qnt2-isnull(B.Qnt2,0)>0))'+#13+
                     '      and A.nobukti=:0 and c.IsSampel=1'+#13+
                     'Group by A.Nobukti, C.Tanggal',[NoBppB.text],Dm.Qucari)=true then
        begin
             NoBppB.Text:=DM.QuCari.fieldbyname('NoBukti').AsString;
        end
        else TampilIsiBeli;
      end;
    end
  end;
end;

procedure TFrRPBSampel.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
if CompareText(varName,'iduser')=0 then
        value:=IDUser;
end;

procedure TFrRPBSampel.NoSatChange(Sender: TObject);
begin
  if mValid then
  begin
    TampilanQnt1Qnt2;
    if NoSat.AsInteger=1 then
    begin
      Qnt1.Value:=Qnt.AsFloat;
      //if mNFixBarang=False then
        Qnt2.Value:=Qnt.AsFloat/mIsiSatuan[2];
    end else
    begin
      //if mNFixBarang=False then
        Qnt1.Value:=Qnt.AsFloat*mIsiSatuan[2];
      Qnt2.Value:=Qnt.AsFloat;
    end;
  end;
end;

procedure TFrRPBSampel.frxReport1AfterPrintReport(Sender: TObject);
begin
  NilaiCetak('CetakKe','DbRpenyerahan',NoBukti.Text);
end;

procedure TFrRPBSampel.NoUrutExit(Sender: TObject);
var myTempNoUrut: String;
begin
  if mValid then
  begin
    myTempNoUrut:=NoUrut.Text;
    NoUrut.Text:=RightStr('00000'+myTempNoUrut,5);
    Konfig(TipeTrans,NoUrut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date);
    NOBUKTI.Text:=MyNoBukti;
    TampilData(NoBukti.Text,'1');
    If Length(NoUrut.Text)<5 then
    begin
      MessageDlg('Nomor urut kurang '+InttoStr(5-Length(NoUrut.Text))+' digit.',mtWarning,[MbOk],0);
      ActiveControl := NoUrut;
    end
    else
    begin
      if (not QuBeli.IsEmpty) then
      Begin
        if (xModalKoreksi=True)  then
           AmBilDataBeli
        else
        Begin
          TampilData('','1');
          MsgDataSudahADA(NoBukti.Text);
          ActiveControl := NoUrut;
        end;
      end;
      If Not Daftar_Nomor(TipeTrans,NoUrut.Text, NOBUKTI.Text,IsMax) then
      begin
        MessageDlg('Nomor : '+NOBUKTI.Text+' telah digunakan oleh '+MyUser+'.',mtWarning,[MbOk],0);
        ActiveControl := NoUrut;
      end;
    end;
  end;

end;

end.
