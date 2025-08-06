unit FrmKoreksi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, wwdblook, Wwdbigrd, Wwdbgrid,
  DBCtrls, ppBands, ppCtrls, ppDB, jpeg, ppPrnabl, ppClass, ppCache,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, ImgList, StrUtils,
  dxTL, dxDBCtrl, dxDBGrid, dxCntner,dxGridMenus,DateUtils, frxClass,
  frxDMPExport, frxDBSet;

type
  TFrKoreksi = class(TForm)
    Panel1: TPanel;
    NoUrut: TEdit;
    TANGGAL: TDateEdit;
    Panel3: TPanel;
    Qnt: TPBNumEdit;
    Harga: TPBNumEdit;
    NamaBrg: TRxLabel;
    NamaSat: TRxLabel;
    QuBeli: TADOQuery;
    Sp_Beli: TADOStoredProc;
    DsQuBeli: TDataSource;
    QuUpdatedbbeli: TADOQuery;
    KodeBrg: TEdit;
    Label10: TLabel;
    Keterangan: TEdit;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText1: TppDBText;
    DataSource1: TDataSource;
    QuReport: TADOQuery;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel6: TppLabel;
    ppImage1: TppImage;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppDBText5: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel26: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppShape1: TppShape;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDBText10: TppDBText;
    ppLabel29: TppLabel;
    ppDBText11: TppDBText;
    ppLine6: TppLine;
    ppLabel30: TppLabel;
    NoBukti: TEdit;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    qntcr: TPBNumEdit;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1NAMABRG: TdxDBGridMaskColumn;
    dxDBGrid1QNTDB: TdxDBGridMaskColumn;
    dxDBGrid1QNTCR: TdxDBGridMaskColumn;
    dxDBGrid1SATUAN: TdxDBGridMaskColumn;
    dxDBGrid1HARGA: TdxDBGridMaskColumn;
    dxDBGrid1Total: TdxDBGridMaskColumn;
    dxDBGrid1KODEBRG: TdxDBGridColumn;
    PanelShow2: TPanel;
    BPrev: TSpeedButton;
    BNext: TSpeedButton;
    PanelShow1: TPanel;
    Cetak: TSpeedButton;
    HapusBtn: TSpeedButton;
    KoreksiBtn: TSpeedButton;
    TambahBtn: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Shape5: TShape;
    Label30: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    StockComp: TPBNumEdit;
    Label9: TLabel;
    QntOpname: TPBNumEdit;
    Label11: TLabel;
    Selisih: TPBNumEdit;
    QuBeliNobukti: TStringField;
    QuBeliTanggal: TDateTimeField;
    QuBelinote: TStringField;
    QuBeliISCetak: TBooleanField;
    QuBeliUrut: TIntegerField;
    QuBelikodebrg: TStringField;
    QuBelinamaBrg: TStringField;
    QuBeliKodeGdg: TStringField;
    QuBeliNamaGDG: TStringField;
    QuBeliSaldoComp: TBCDField;
    QuBeliQntOpname: TBCDField;
    QuBeliSelisih: TBCDField;
    QuBeliQntdb: TBCDField;
    QuBeliQntCr: TBCDField;
    QuBeliTotal: TBCDField;
    QuBeliHrgAdi: TBCDField;
    QuBeliHrgAdo: TBCDField;
    QuBeliSatuan: TStringField;
    Label6: TLabel;
    Kodegdg: TEdit;
    SpeedButton8: TSpeedButton;
    frxDBDataset1: TfrxDBDataset;
    frxDataPerusahaan: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxReport1: TfrxReport;
    Shape1: TShape;
    Label7: TLabel;
    Stock2Comp: TPBNumEdit;
    Label12: TLabel;
    Qnt2Opname: TPBNumEdit;
    Label13: TLabel;
    Selisih2: TPBNumEdit;
    Label14: TLabel;
    Qnt2: TPBNumEdit;
    Label15: TLabel;
    Qnt2Cr: TPBNumEdit;
    NamaSat2: TRxLabel;
    Label16: TLabel;
    PBNumEdit6: TPBNumEdit;
    isCek: TCheckBox;
    IsCek2: TCheckBox;
    QuBeliSaldo2Comp: TBCDField;
    QuBeliQnt2Opname: TBCDField;
    QuBeliSelisih2: TBCDField;
    QuBeliQnt2db: TBCDField;
    QuBeliQnt2Cr: TBCDField;
    QuBeliIscek: TBooleanField;
    QuBeliIscek2: TBooleanField;
    QuBeliSatuan2: TStringField;
    dxDBGrid1Column8: TdxDBGridColumn;
    dxDBGrid1Column9: TdxDBGridColumn;
    dxDBGrid1Column10: TdxDBGridColumn;
    QuBeliisi2: TBCDField;
    QuBeliHarga: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TampilData(No_Bukti:String);
    procedure UpdateDataBeli(Choice:Char;Kodet:String);
    Procedure AmBilDataBeli;
    procedure NoUrutEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TambahBtnClick(Sender: TObject);
    procedure ClearPanelDetail;
    procedure KodeBrgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RefreshAll;
    procedure QntKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TANGGALKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UpdatedbBeli;
    procedure KodeBrgEnter(Sender: TObject);
    procedure KoreksiBtnClick(Sender: TObject);
    procedure HapusBtnClick(Sender: TObject);
    procedure NoUrutKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TANGGALEnter(Sender: TObject);
    procedure TANGGALExit(Sender: TObject);
    procedure KodeBrgExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure KodegdgExit(Sender: TObject);
    procedure KodegdgEnter(Sender: TObject);
    Function CheckFormMaster:boolean;
    procedure QntChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure dxDBGrid1Exit(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure BPrevClick(Sender: TObject);
    procedure BNextClick(Sender: TObject);
    procedure HargaExit(Sender: TObject);
    procedure NoUrutChange(Sender: TObject);
    procedure QntOpnameChange(Sender: TObject);
    procedure QntOpnameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure CetakClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure Qnt2OpnameChange(Sender: TObject);
    procedure Qnt2OpnameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure frxReport1AfterPrintReport(Sender: TObject);
    procedure NoUrutExit(Sender: TObject);
  private
    { Private declarations }
    YY, MM, DD: Word;
    FTambah:Byte;
    XSat,XCariaBarang:string;
    XFix:Boolean;
    XIsi:Double;
    procedure IsiNoBuktiBaru;
    procedure TampilIsiBarang;
    procedure TampilIsiGudang;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure IsiHargaBrg;
  public
    { Public declarations }
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel,xModalKoreksi : Boolean;
  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrKoreksi: TFrKoreksi;
  mValid,mExit: Boolean;
  mBukti,Sat:String;
  mUrut,IsTutup,mPosisi:Integer;
  TipeTrans,PlusPPN,Nomor,Model,mKodegrp,mKodegdg:String;
  mBulan,mTahun:string;
  IsiBrg:real;
  Kuantiti1,Kuantiti2,Biaya:Real;
  BM : TBookMark;
  S:array[0..255]of char;

implementation
uses FrmBrows,MyProcedure,MyGlobal,MyModul, FrmMainKoreksi;
{$R *.DFM}

// PROCEDURE DAN FUNCTION PRIBADI

procedure TFrKoreksi.IsiHargaBrg;
begin
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    Sql.Add('Declare @Kodebrg varchar(20),@bulan int,@Tahun int,@Kodegdg varchar(20)');
    Sql.Add('Select @Kodebrg=:0,@bulan=:1,@Tahun=:2,@Kodegdg=:3');
    Sql.Add('Select @Bulan=Case when @bulan=1 then 12 else @bulan end');
    Sql.Add('Select @tahun=Case when @bulan=1 then @tahun-1 else @Tahun end');
    sql.add('Select HrgRata harga ');
    sql.add('from dbStockbrg where KodeBrg=@Kodebrg and Bulan=@bulan ');
    sql.add('and tahun=@tahun and Kodegdg=@kodegdg ');
    Parameters[0].Value := KodeBrg.Text;
    Parameters[1].Value := StrToInt(FormatDateTime('MM',TANGGAL.Date));
    Parameters[2].Value := StrToInt(FormatDateTime('YYYY',TANGGAL.Date));
    Parameters[3].Value := Kodegdg.Text;
    Open;
  end;
  if not DM.QuCari.IsEmpty then
  begin
    Harga.Value:=DM.QuCari.FieldByName('Harga').AsFloat;
  end
  else
  begin
    Harga.Value:=0;
  end
end;

procedure TFrKoreksi.IsiNoBuktiBaru;
begin
  DecodeDate(Date,YY,MM,DD);
  If DayOfTheMonth(Date)<=DD then
     DD:=DayOfTheMonth(date);
  Try
    TANGGAL.Date := EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),DD);
  Except
    TANGGAL.Date := EndOfAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln))
  end;
  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans ,Nomor,NomorBukti,Tanggal.Date);
  NoUrut.Text := NomorBukti;
  NOBUKTI.Text := Nomor;
end;

procedure TFrKoreksi.TampilIsiBarang;
begin
  KodeBrows:=2420112;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.brGudang:=Kodegdg.Text;
  FrBrows.brTahun:=YearOf(TANGGAL.Date);
  FrBrows.brBulan:=MonthOf(TANGGAL.Date);
  FrBrows.IsiData:=Kodegdg.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    KodeBrg.Text:=FrBrows.QuBrows.fieldbyname('KodeBrg').AsString;
    NamaBrg.Caption:='[ '+FrBrows.QuBrows.fieldbyname('NamaBrg').AsString+' ]';
    StockComp.Value:=FrBrows.QuBrows.FieldByName('QntSaldo').AsCurrency;
    Stock2Comp.Value:=FrBrows.QuBrows.FieldByName('Qnt2Saldo').AsCurrency;
    XSat:=FrBrows.QuBrows.FieldByName('Sat1').AsString;
    XFix:=FrBrows.QuBrows.FieldByName('NFix').AsBoolean;
    isCek.Checked:=FrBrows.QuBrows.FieldByName('NFix').AsBoolean=False;
    isCek2.Checked:=FrBrows.QuBrows.FieldByName('NFix').AsBoolean=False;
    isCek.Enabled:=FrBrows.QuBrows.FieldByName('NFix').AsBoolean=True;
    isCek2.Enabled:=FrBrows.QuBrows.FieldByName('NFix').AsBoolean=True;
    XIsi:=FrBrows.QuBrows.FieldByName('Isi2').AsFloat;
    NamaSat.Caption:='[ '+FrBrows.QuBrows.FieldByName('Sat1').AsString+' ]';
    NamaSat2.Caption:='[ '+FrBrows.QuBrows.FieldByName('Sat2').AsString+' = '+
                      FormatFloat(',0.00',FrBrows.QuBrows.FieldByname('Isi2').AsFloat)+' '+
                      FrBrows.QuBrows.FieldByName('Sat1').AsString+' ]';
    IsiHargaBrg;
  end
  else
    ActiveControl:=KodeBrg;
end;

procedure TFrKoreksi.TampilIsiGudang;
begin
  KodeBrows:=11003;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeGdg.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    KodeGdg.Text:=FrBrows.QuBrows.fieldbyname('KodeGdg').AsString;
  end
  else
    ActiveControl:=KodeGdg;
end;

procedure TFrKoreksi.TampilTombolDetail(pNilai: Boolean);
begin
  PanelShow1.Visible:=not pNilai;
  //PanelShow2.Visible:=not pNilai;
  Panel3.Visible:=pNilai;
  Panel4.Visible:=not pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  Panel3.Enabled:=pNilai;
end;

procedure TFrKoreksi.UpdatedbBeli;
begin
  with QuUpdatedbBeli do
  begin
     Close;
     SQL.Clear;
     SQL.Add('Update dbKoreksi');
     SQL.Add('Set Tanggal=:0,KodeGdg=:1, note=:2');
     SQL.Add('Where Nobukti=:3');
     Prepared;
     Parameters[0].Value:=TANGGAL.Date;
     Parameters[1].Value:=Kodegdg.Text;
     Parameters[2].Value:=Keterangan.Text;
     Parameters[3].Value:=NoBukti.Text;
     ExecSQL;
  end;
  QuBeli.Close;
  QuBeli.Open;
end;

Function TFrKoreksi.CheckFormMaster:boolean;
begin
   if CekPeriode(IdUser,TANGGAL.Date)=false then
   begin
      ShowMessage('Periode tidak sesuai !');
      CheckFormMaster:=false;
   end
   else
   CheckFormMaster:=true;
end;

procedure TFrKoreksi.ClearPanelDetail;
begin
   KodeBrg.Text:='';
   Qnt.Value:=0;
   Qnt2.Value:=0;
   qntcr.Value:=0;
   Qnt2Cr.Value:=0;
   
   QntOpname.Value:=0;
   Qnt2Opname.Value:=0;
   Harga.Value:=0;
   NamaBrg.Caption:='[ . . . ]';
   if LevelUserAccess=0 then
    begin
      Label34.Visible := False;
      Harga.Visible := False;
    end
    else
    begin
      Label34.Visible := True;
      Harga.Visible := True;
    end;
end;

procedure TFrKoreksi.RefreshAll;
var i:integer;
begin
   for i:= 0 to Panel1.ControlCount-1 do
   begin
      if (Panel1.Controls[i] is TEdit) then
         (Panel1.Controls[i] as TEdit).Clear;
      if (Panel1.Controls[i] is TPBNumEdit) then
         (Panel1.Controls[i] as TPBNumEdit).Value:=0;
   end;
   for i:= 0 to Panel3.ControlCount-1 do
   begin
      if (Panel3.Controls[i] is TEdit) then
         (Panel3.Controls[i] as TEdit).Clear;
      if (Panel3.Controls[i] is TPBNumEdit) then
         (Panel3.Controls[i] as TPBNumEdit).Value:=0;
   end;
   NamaBrg.Caption:='[ . . . ]';
   Qnt.Value:=1;
   Qnt2.Value:=1;
   KodeBrg.Text:='';
end;

procedure TFrKoreksi.UpdateDataBeli(Choice:Char;Kodet:String);
begin
   if Choice='I' then mUrut:=1
     else mUrut:=QuBeliUrut.AsInteger;

   BM:=QuBeli.GetBookmark;
   With Sp_Beli do
   begin
       Prepared;
       Parameters[1].Value:=Choice;
       Parameters[2].Value:=Nobukti.Text;
       Parameters[4].Value:=TANGGAL.Date;
       Parameters[3].Value:=NoUrut.Text;
       Parameters[5].Value:=Keterangan.Text;
       Parameters[6].Value:=mUrut;
       Parameters[7].Value:=KodeBrg.Text;
       Parameters[8].Value:=KodeGdg.Text;
       if (not isCek.Checked)and(XFix) Then
       QntOpname.AsFloat:=0;
       Parameters[9].Value:=StockComp.AsFloat;
       Parameters[10].Value:=QntOpname.AsFloat;
       Parameters[11].Value:=Selisih.AsFloat;
       Parameters[12].Value:=Qnt.AsFloat;
       Parameters[13].Value:=qntcr.AsFloat;
       Parameters[14].Value:=1;
       Parameters[15].Value:=1;
       Parameters[16].Value:=XSat;
       Parameters[17].Value:=Harga.AsFloat;
       Parameters[18].Value:=Keterangan.Text;
       if (not IsCek2.Checked)and(XFix) Then
       Qnt2Opname.AsFloat:=0;
       Parameters[19].Value:=Stock2Comp.AsFloat;
       Parameters[20].Value:=Qnt2Opname.AsFloat;
       Parameters[21].Value:=Selisih2.AsFloat;
       Parameters[22].Value:=Qnt2.AsFloat;
       Parameters[23].Value:=qnt2cr.AsFloat;
       Parameters[24].Value:=isCek.Checked;
       Parameters[25].Value:=isCek2.Checked;
       try
          ExecProc;
          if Choice='I' then
          begin
            TampilData(NOBUKTI.Text);
            QuBeli.Locate('kodebrg',KodeBrg.Text,[LOP,LOC]);
            LoggingData(IDuser,'I','Opname',NoBukti.Text,
                        'Nomor Bukti --> '+NOBUKTI.Text+#13+
                        'User '+IDUser+' Input Barang --> '+KodeBrg.Text+#13+
                        'Nama --> '+NamaBrg.Caption+#13+
                        'Qnt --> '+QuotedStr(Qnt.Text)+' '+Sat);
          end else if Choice='U' then
          begin
            TampilData(NOBUKTI.Text);
            if QuBeli.BookmarkValid(BM) then
            begin
              try
                 QuBeli.GotoBookmark(BM);
              finally
                 QuBeli.FreeBookmark(BM);
              end
            end else
            begin
              QuBeli.FreeBookmark(BM);
              QuBeli.Last;
            end;
            LoggingData(IdUser,'U','Opname',NoBukti.Text,
                        'Nomor Bukti --> '+NOBUKTI.Text+#13+
                        'User '+IDUser+' Koreksi Barang --> '+KodeBrg.Text+#13+
                        'Nama --> '+NamaBrg.Caption+#13+
                        'Qnt --> '+QuotedStr(Qnt.Text)+' '+Sat);
          end
          Else if Choice='D' then
          begin
            LoggingData(IdUser,'D','Opname',NoBukti.Text,
                        'Nomor Bukti --> '+QuBeli.Fieldbyname('Nobukti').AsString+#13+
                        'User '+IDUser+' Hapus Barang --> '+QuBeli.FieldbyName('Kodebrg').asstring+#13+
                        'Nama --> '+NamaBrg.Caption+#13+
                        'Qnt --> '+QuotedStr(QuBeli.Fieldbyname('QntDB').AsString)+' '+QuBeli.Fieldbyname('Satuan').AsString);
            TampilData(NOBUKTI.Text);
          end;
        except
          If (Choice='I') Or (Choice='U') then
             showmessage('Proses Gagal !, Data Sudah Ada.')
          else If (Choice='D') then
             showmessage('Proses Gagal !, Barang berkaitan dengan transaksi lain.');
        end;
   end;
end;

Procedure TFrKoreksi.AmBilDataBeli;
begin
   if not QuBeli.IsEmpty then
   begin
      Tanggal.Date:=QuBeli.fieldbyname('Tanggal').AsDateTime;
      Kodegdg.Text:=QuBeliKodeGdg.AsString;
      Keterangan.Text:=QuBeli.fieldbyname('note').AsString;

      mUrut := QuBeli.FieldByname('Urut').AsInteger;
   end;
end;

procedure TFrKoreksi.TampilData(No_Bukti:String);
begin
  QuBeli.close;
  QuBeli.SQL.Strings[2]:='select @NoBukti='+QuotedStr(No_Bukti);
  QuBeli.Open;
  if LevelUserAccess=0 then
  begin
    (QuBeli.FieldByName('Harga') as TNumericField).DisplayFormat :='*';
    (QuBeli.FieldByName('Total') as TNumericField).DisplayFormat :='*';
  end
  else
  begin
    (QuBeli.FieldByName('Harga') as TNumericField).DisplayFormat :=',0.00';
    (QuBeli.FieldByName('Total') as TNumericField).DisplayFormat :=',0.00';
  end;
end;

// PROCEDURE DAN FUNCTION MILIK DELPHI

procedure TFrKoreksi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if mExit=true then
  begin
     FrMainKoreksi.xStatus := 'M';
     Hapus_Daftar_Nomor(TipeTrans ,mBukti,IdUser);
     Action:=cafree;
  end
  else
  begin
     Action:=caNone;
  end;
end;

procedure TFrKoreksi.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0)
   else if key=38 then QuBeli.Prior
   else if key=40 then QuBeli.Next
   Else if key =VK_F3 then
  Begin
    KodeBrows:=2420112;
      Application.CreateForm(TFrBrows, FrBrows);
      Frbrows.nokira:=Nobukti.text;
      FrBrows.ShowModal;
      if FrBrows.ModalResult=mrOk then
      begin
        XCariaBarang:=FrBrows.QuBrows.fieldbyname('KOdebrg').AsString;
        ActiveControl:=dxDBGrid1;
        QuBeli.Locate('kodebrg',XCariaBarang,[LOP,LOC]);
      end
      else
        ActiveControl:=dxDBGrid1;
  End ;
end;

procedure TFrKoreksi.NoUrutEnter(Sender: TObject);
begin
  Hapus_Daftar_Nomor(TipeTrans ,nobukti.Text,IdUser);
  mValid:=True;
  mExit:=true;
end;

procedure TFrKoreksi.FormCreate(Sender: TObject);
begin
  TipeTrans :='OPN';
  Hapus_Daftar_Nomor_User(TipeTrans ,IDUser);
end;

procedure TFrKoreksi.TambahBtnClick(Sender: TObject);
begin
  if CheckFormMaster=true then
  begin
    Model:='write';
    TampilTombolDetail(True);
    KodeBrg.Enabled:=true;
    if LevelUserAccess=0 then
    begin
      Label34.Visible := False;
      Harga.Visible := False;
    end
    else
    begin
      Label34.Visible := True;
      Harga.Visible := True;
    end;
    ActiveControl:=KodeBrg;
  end
  else
  begin
     ShowMessage('Form Master Tidak Lengkap, Silahkan Anda Periksa !');
  end;
end;

procedure TFrKoreksi.KodeBrgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Escape then
  begin
     SpeedButton1.Click;
  end;
end;

procedure TFrKoreksi.QntKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_Escape then
   begin
      mValid:=false;
      KodeBrg.Enabled:=true;
      Panel2.Enabled:=true;
      ClearPanelDetail;
      if model='write' then
         ActiveControl:=KodeBrg
      else
      begin
         SpeedButton1.Click;
      end;
   end;
end;

procedure TFrKoreksi.TANGGALKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_Return then
  begin
    if CekPeriode(IDUser,TANGGAL.Date) then
    begin
       if  (FrMainKoreksi.ModalKoreksi ) then
       UpdatedbBeli;
    end
    else
    begin
       MessageDlg('Tanggal tidak sesuai periode transaksi.',mtWarning,[mbok],0);
       ActiveControl := TANGGAL;
    end;
   if (not FrMainKoreksi.ModalKoreksi) then
     begin
      with QuUpdatedbbeli do
       begin
        Close;
        SQL.Clear;
        SQL.Add('Select NoBukti From dbKoreksi Where Nobukti=:0');
        Parameters[0].Value:=NoBukti.Text;
        Open;
        if (Not QuUpdatedbbeli.IsEmpty) and (FTambah=1)then
         begin
          IsiNoBuktiBaru;
         end;
       end;
     end;
  end
  else if Key=Vk_Escape then
  begin
    If FrMainKoreksi.ModalKoreksi = False then
    begin
      Hapus_Daftar_Nomor_User(TipeTrans ,IDUser);
      IsiNoBuktiBaru;
      Keterangan.Text :='';
      TampilData(NOBUKTI.Text);
      if ((IsKoreksi=False) or (IsHapus=False)) then
       begin
        ActiveControl := Tanggal;
        mExit := true;
        close;
       end
      else  ActiveControl :=NoUrut;
    end
    else
    begin
      mExit := true;
      close;
    end;
  end;

end;

procedure TFrKoreksi.KodeBrgEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrKoreksi.KoreksiBtnClick(Sender: TObject);
begin
  if CheckFormMaster=true then
  begin
     mValid:=false;
     model:='koreksi';
     // data yang di update
     if QuBeli.IsEmpty=false then
     begin
        TampilTombolDetail(True);
        KodeBrg.Enabled:=false;
        KodeBrg.Text:=QuBeli.fieldbyname('KodeBrg').AsString;
        Kodegdg.Text:=QuBeli.fieldbyname('Kodegdg').AsString;
        StockComp.AsFloat:=Qubeli.fieldbyname('SaldoComp').AsFloat;
        QntOpname.AsFloat:=Qubeli.fieldbyname('Qntopname').AsFloat;
        Selisih.AsFloat:=Qubeli.fieldbyname('Selisih').AsFloat;
        Qnt.AsFloat:=Qubeli.fieldbyname('Qntdb').AsFloat;
        qntcr.AsFloat:=Qubeli.fieldbyname('Qntcr').AsFloat;
        //Harga.AsCurrency:=QuBeli.fieldbyname('Harga').AsCurrency;
        NamaBrg.Caption:='[ '+QuBeli.fieldbyname('namaBrg').AsString+' ]';
        mUrut := Qubeli.fieldbyname('urut').AsInteger;
        Harga.AsFloat:=Qubeli.fieldbyname('Harga').AsFloat;
        Stock2Comp.AsFloat:=Qubeli.fieldbyname('Saldo2Comp').AsFloat;
        Qnt2Opname.AsFloat:=Qubeli.fieldbyname('Qnt2opname').AsFloat;
        Selisih2.AsFloat:=Qubeli.fieldbyname('Selisih2').AsFloat;
        Qnt2.AsFloat:=Qubeli.fieldbyname('Qnt2db').AsFloat;
        qnt2cr.AsFloat:=Qubeli.fieldbyname('Qnt2cr').AsFloat;
        isCek.Checked:=QuBeliIscek.AsBoolean;
        IsCek2.Checked:=QuBeliIscek2.AsBoolean;
        XIsi:=QuBeliisi2.AsFloat;
        //IsiHargaBrg;
        if Qnt.Value = 0 then
           Harga.Value :=0;
        if LevelUserAccess=0 then
        begin
          Label34.Visible := False;
          Harga.Visible := False;
        end
        else
        begin
          Label34.Visible := True;
          Harga.Visible := True;
        end;
        ActiveControl:=QntOpname;
     end
     else
     begin
        ShowMessage('Tidak ada transaksi yang dikoreksi !');
     end;
  end else
  begin
     ShowMessage('Form Master Tidak Lengkap, Silahkan Anda Periksa !');
  end;
end;

procedure TFrKoreksi.HapusBtnClick(Sender: TObject);
begin
  if CheckFormMaster=true then
  begin
    if CekPeriode(IdUser,TANGGAL.Date)=true then
    begin
      if MyCek_Lock_Periode(mBukti)=false then
      begin
         if QuBeli.IsEmpty=true then
         begin
            Application.MessageBox('Tabel Kosong','Informasi'
            ,MB_OK Or MB_ICONWARNING);
         end
         else
         begin
            StrPCopy(S,Format('Anda yakin Kode %s dan Nama %s dihapus ?',
            [QuBeli.FieldByName('KodeBrg').asstring, QuBeli.FieldByName('NamaBrg').asstring]));
            if (Application.MessageBox(S,'Hapus Data',
               MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
            begin
               UpdateDataBeli('D','BL');
               ActiveControl := dxDBGrid1;
            end;
         end;
      end
      else
      begin
         ShowMessage('Periode Sudah Di Kunci !');
         ActiveControl:=KodeBrg;
      end;
    end
    else
      ShowMessage('Tanggal Periode Tidak Sesuai !');
  end
  else
  begin
     ShowMessage('Form Master Tidak Lengkap, Silahkan Anda Periksa !');
  end;
 if Qubeli.IsEmpty then
  Begin
   FTambah:=1;
  end;   
end;

procedure TFrKoreksi.NoUrutKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {if Key=Vk_Return then
  begin
    If Length(NoUrut.Text)<4 then
    begin
      MessageDlg('Nomor urut kurang '+InttoStr(4-Length(NoUrut.Text))+' digit.',mtWarning,[MbOk],0);
      ActiveControl := Tanggal;
    end
    else
    begin
      TampilData(nobukti.Text);
      if not QuBeli.IsEmpty then
      Begin
         AmBilDataBeli;
      end
      else
      Begin
        if FrMainKoreksi.ModalKoreksi then
        begin
          ActiveControl := Tanggal;
        end;
      end;
      If Not Daftar_Nomor(TipeTrans ,NoUrut.Text,NOBUKTI.Text,IsMax) then
      begin
        MessageDlg('Nomor : '+NOBUKTI.Text+' telah digunakan oleh '+MyUser+'.',mtWarning,[MbOk],0);
        ActiveControl := Tanggal;
      end;
    end;
  end
  else} if Key=Vk_Escape then
  begin
    mExit := True;
    Close;
  end;
end;

procedure TFrKoreksi.TANGGALEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrKoreksi.TANGGALExit(Sender: TObject);
begin
  if mValid then
  begin
     if CekPeriode(IdUser,TANGGAL.Date)=false then
     begin
        ShowMessage('Periode Tidak Sesuai !');
        ActiveControl:=tanggal;
     end;
  end;
end;

procedure TFrKoreksi.KodeBrgExit(Sender: TObject);
begin
  if mValid Then
  begin
     if length(KodeBrg.Text)=0 then TampilIsiBarang else
     begin
        if DataBersyarat('select Isnull(NFix,0)Nfix,a.isi2,a.KodeBrg, a.NamaBrg, a.Sat1,A.Sat2, isnull(b.SaldoQnt,0) SaldoQnt, isnull(b.Saldo2Qnt,0) Saldo2Qnt from dbBarang a '+
                         'left outer join (select KodeBrg,Sum(SaldoQnt)SaldoQnt,Sum(Saldo2Qnt)Saldo2Qnt from dbStockBrg where KodeGdg='+QuotedStr(Kodegdg.Text)+' and Tahun='+IntToStr(YearOf(TANGGAL.Date))+
                         ' and Bulan='+IntToStr(MonthOf(TANGGAL.Date))+' Group by KodeBrg) b on b.KodeBrg=a.KodeBrg '+
                         'where a.isAktif=1 and A.KodeGrp<>''BJ'' and a.KodeBrg=:0 ',
        [KodeBrg.Text], DM.QuCari)=True then
        begin
           KodeBrg.Text:=DM.QuCari.fieldbyname('KodeBrg').AsString;
           NamaBrg.Caption:='[ '+DM.QuCari.fieldbyname('NamaBrg').AsString+' ]';
           StockComp.Value:=DM.QuCari.FieldByName('SaldoQnt').AsCurrency;
           Stock2Comp.Value:=DM.QuCari.FieldByName('Saldo2Qnt').AsCurrency;
           XSat:=DM.QuCari.FieldByName('Sat1').AsString;
           XFix:=DM.QuCari.FieldByName('NFix').AsBoolean;
           isCek.Checked:=DM.QuCari.FieldByName('NFix').AsBoolean=False;
           isCek2.Checked:=DM.QuCari.FieldByName('NFix').AsBoolean=False;
           isCek.Enabled:=DM.QuCari.FieldByName('NFix').AsBoolean=True;
           isCek2.Enabled:=DM.QuCari.FieldByName('NFix').AsBoolean=True;
           XIsi:=DM.QuCari.FieldByName('Isi2').AsFloat;
           NamaSat.Caption:='[ '+DM.QuCari.FieldByName('Sat1').AsString+' ]';
           NamaSat2.Caption:='[ '+DM.QuCari.FieldByName('Sat2').AsString+' = '+
                      FormatFloat(',0.00',DM.QuCari.FieldByname('Isi2').AsFloat)+' '+
                      DM.QuCari.FieldByName('Sat1').AsString+' ]';
           IsiHargaBrg;
        end
        else TampilIsiBarang;
     end;
  end;
end;

procedure TFrKoreksi.BitBtn1Click(Sender: TObject);
begin
  if (not FrMainKoreksi.ModalKoreksi) then
     begin
      with QuUpdatedbbeli do
       begin
        Close;
        SQL.Clear;
        SQL.Add('Select NoBukti From dbKoreksi Where Nobukti=:0');
        Parameters[0].Value:=NoBukti.Text;
        Open;
        if (Not QuUpdatedbbeli.IsEmpty) and (FTambah=1)then
         begin
          IsiNoBuktiBaru;
         end;
       end;
     end;
   if CekPeriode(IdUser,TANGGAL.Date)=true then
   begin
      if MyCek_Lock_Periode(mBukti)=false then
      begin
         if model='write' then
         begin
            if length(Kodebrg.Text)>0 then
            begin
              UpdateDataBeli('I','BL');
              FTambah:=0;
              ClearPanelDetail;
              ActiveControl:=KodeBrg;
            end
            else
            begin
               ShowMessage('Kode barang tidak boleh kosong !');
               ActiveControl:=KodeBrg;
            end;
         end
         else if model='koreksi' then
         begin
            mValid:=false;
            UpdateDataBeli('U','BL');
            KodeBrg.Enabled:=True;
            TampilTombolDetail(False);
            ActiveControl:=dxDBGrid1;
            ClearPanelDetail;
         end;
      end
      else
      begin
         ShowMessage('Periode Sudah Di Kunci !');
      end;
   end
   else
     ShowMessage('Tanggal Periode Tidak Sesuai !');
   FrMainKoreksi.GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
end;

procedure TFrKoreksi.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
  ClearPanelDetail;
end;

procedure TFrKoreksi.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
   QuBeli.Sort:=AFieldName;
end;

procedure TFrKoreksi.KodegdgExit(Sender: TObject);
begin
  if mValid Then
  begin
     if length(KodeGdg.Text)=0 then TampilIsiGudang else
     begin
        if MyFindField('dbGudang','kodeGdg',KOdeGdg.Text)=true then
        begin
          KodeGdg.Text:=DM.QuCari.fieldbyname('KodeGdg').AsString;
        end
        else TampilIsiGudang;
     end;
  end;
end;

procedure TFrKoreksi.KodegdgEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrKoreksi.QntChange(Sender: TObject);
begin
  if Qnt.AsFloat <> 0  then
     qntcr.Value:=0;
  if Qnt2.AsFloat <> 0  then
     qnt2cr.Value:=0;
end;

procedure TFrKoreksi.FormShow(Sender: TObject);
begin
 If FrMainKoreksi.ModalKoreksi = False then
  begin
    FTambah:=1;
    IsiNoBuktiBaru;
    TampilData(NOBUKTI.Text);
  end
  else
  Begin
    NOBUKTI.Text := FrMainKoreksi.QuMaster.FieldByname('Nobukti').AsString;
    TampilData(NOBUKTI.Text);
    AmBilDataBeli;
    NoUrut.Text := RightStr(FrMainKoreksi.QuMaster.FieldByname('Nobukti').AsString,5);
  end;
end;

procedure TFrKoreksi.FormDestroy(Sender: TObject);
begin
  FrKoreksi:=nil;
end;

procedure TFrKoreksi.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Escape then
  begin
    Hapus_Daftar_Nomor_User(TipeTrans ,IDUser);
    if xmodalkoreksi then
    begin
      mExit := True;
      Close;
    end
    else
    begin
      RefreshAll;
      FTambah:=1;
      IsiNoBuktiBaru;
      Keterangan.Text :='';
      TampilData(NOBUKTI.Text);
      FrMainKoreksi.GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
      ActiveControl:=Tanggal;
    end;
  end
  else if key=VK_return then
  begin
    KoreksiBtn.Click;
  end
  else if key=VK_delete then
  begin
    HapusBtn.Click;
  end
  else if key=VK_insert then
  begin
    TambahBtn.Click;
  end
  Else if key =VK_F3 then
  Begin
    KodeBrows:=2420112;
      Application.CreateForm(TFrBrows, FrBrows);
      Frbrows.nokira:=Nobukti.text;
      FrBrows.ShowModal;
      if FrBrows.ModalResult=mrOk then
      begin
        XCariaBarang:=FrBrows.QuBrows.fieldbyname('KOdebrg').AsString;
        ActiveControl:=dxDBGrid1;
        QuBeli.Locate('kodebrg',XCariaBarang,[LOP,LOC]);
      end
      else
        ActiveControl:=dxDBGrid1;
  End ;
end;

procedure TFrKoreksi.dxDBGrid1Enter(Sender: TObject);
begin
  FrKoreksi.KeyPreview:=false;
  if CheckFormMaster=false then
  begin
     ShowMessage('Form Master Tidak Lengkap, Silahkan Anda Periksa !');
     Hapus_Daftar_Nomor(TipeTrans,mBukti,IdUser);
     ActiveControl:=NOBUKTI;
  end else
  Begin
     if  (FrMainKoreksi.ModalKoreksi ) then
       UpdatedbBeli;
  end;
end;

procedure TFrKoreksi.dxDBGrid1Exit(Sender: TObject);
begin
  FrKoreksi.KeyPreview:=true;
end;

procedure TFrKoreksi.dxDBGrid1DblClick(Sender: TObject);
begin
  KoreksiBtn.Click;
end;

procedure TFrKoreksi.BPrevClick(Sender: TObject);
begin
   Hapus_Daftar_Nomor(TipeTrans,mBukti,iduser);
   RefreshAll;
   ActiveControl:=TANGGAL;
   Hapus_Daftar_Nomor(TipeTrans ,mBukti,iduser);

   FrMainKoreksi.QuNavigator.Locate('nobukti',FrMainKoreksi.QuMaster.fieldbyname('nobukti').AsString,[LOC,LOP]);
   FrMainKoreksi.QuNavigator.Prior;
   FrMainKoreksi.QuMaster.Locate('nobukti',FrMainKoreksi.QuNavigator.fieldbyname('nobukti').AsString,[LOC,LOP]);

   FormShow(self);
end;

procedure TFrKoreksi.BNextClick(Sender: TObject);
begin
   Hapus_Daftar_Nomor(TipeTrans,mBukti,iduser);
   RefreshAll;
   ActiveControl:=TANGGAL;
   Hapus_Daftar_Nomor(TipeTrans ,mBukti,iduser);

   FrMainKoreksi.QuNavigator.Locate('nobukti',FrMainKoreksi.QuMaster.fieldbyname('nobukti').AsString,[LOC,LOP]);
   FrMainKoreksi.QuNavigator.Next;
   FrMainKoreksi.QuMaster.Locate('nobukti',FrMainKoreksi.QuNavigator.fieldbyname('nobukti').AsString,[LOC,LOP]);

   FormShow(self);
end;

procedure TFrKoreksi.HargaExit(Sender: TObject);
begin
 { if Qnt.Value = 0 then
     Harga.Value :=0;}
end;

procedure TFrKoreksi.NoUrutChange(Sender: TObject);
begin
  if Length(NoUrut.Text)=4 then
  begin
    Konfig(TipeTrans ,Nourut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date);
    NOBUKTI.Text := F1+Separator+F2+Separator+F3+Separator+F4;
  end
  else
    ActiveControl := NoUrut;
end;

procedure TFrKoreksi.QntOpnameChange(Sender: TObject);
begin
  Selisih.AsFloat := QntOpname.AsFloat-StockComp.AsFloat;
  if Selisih.AsFloat >= 0 then
  begin
    Qnt.AsFloat := Selisih.AsFloat;
    qntcr.AsFloat := 0;
  end
  else
  begin
    Qnt.AsFloat := 0;
    qntcr.AsFloat := Selisih.AsFloat*-1;
  end;
  if (QntOpname.Focused) and (IsCek2.Checked)and (XFix=False)Then
  Begin
    Qnt2Opname.AsFloat:=QntOpname.AsFloat/XIsi;
    Selisih2.AsFloat := Qnt2Opname.AsFloat-Stock2Comp.AsFloat;
    if Selisih2.AsFloat >= 0 then
     begin
      Qnt2.AsFloat := Selisih2.AsFloat;
      Qnt2Cr.AsFloat := 0;
     end
    else
    begin
     Qnt2.AsFloat := 0;
     qnt2cr.AsFloat := Selisih2.AsFloat*-1;
    end;
  end;
end;

procedure TFrKoreksi.QntOpnameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Escape then
   begin
      mValid:=false;
      KodeBrg.Enabled:=true;
      Panel2.Enabled:=true;
      ClearPanelDetail;
      if model='write' then
         ActiveControl:=KodeBrg
      else
      begin
         SpeedButton1.Click;
      end;
   end
  else if key=vk_Return then
  begin
    Selisih.AsFloat := QntOpname.AsFloat-StockComp.AsFloat;
    if Selisih.AsFloat >= 0 then
    begin
      Qnt.AsFloat := Selisih.AsFloat;
      qntcr.AsFloat := 0;
    end
    else
    begin
      Qnt.AsFloat := 0;
      qntcr.AsFloat := Selisih.AsFloat*-1;
    end;
    if (QntOpname.Focused) and (IsCek2.Checked)and (XFix=False)Then
  Begin
    Qnt2Opname.AsFloat:=QntOpname.AsFloat/XIsi;
    Selisih2.AsFloat := Qnt2Opname.AsFloat-Stock2Comp.AsFloat;
    if Selisih2.AsFloat >= 0 then
     begin
      Qnt2.AsFloat := Selisih2.AsFloat;
      Qnt2Cr.AsFloat := 0;
     end
    else
    begin
     Qnt2.AsFloat := 0;
     qnt2cr.AsFloat := Selisih2.AsFloat*-1;
    end;
  end;
  end;
end;

procedure TFrKoreksi.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrKoreksi.CetakClick(Sender: TObject);
begin
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
    Sql.Add('Exec CetakOpnamebahan '+QuotedStr(nobukti.Text));
    open
  end;
  frxDBDataset1.close;
  frxDBDataset1.Open;
  frxReport1.LoadFromFile(currDir+'Nota\NotaKoreksi.fr3');
  frxReport1.ShowReport;

end;

procedure TFrKoreksi.SpeedButton8Click(Sender: TObject);
begin
  frxReport1.LoadFromFile(currDir+'Nota\NotaKoreksi.fr3');
  frxReport1.DesignReport;
end;

procedure TFrKoreksi.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
  if VarName='StatusUser' then
     Value := LevelUserAccess;
end;

procedure TFrKoreksi.Qnt2OpnameChange(Sender: TObject);
begin
 Selisih2.AsFloat := Qnt2Opname.AsFloat-Stock2Comp.AsFloat;
  if Selisih2.AsFloat >= 0 then
  begin
    Qnt2.AsFloat := Selisih2.AsFloat;
    Qnt2Cr.AsFloat := 0;
  end
  else
  begin
    Qnt2.AsFloat := 0;
    qnt2cr.AsFloat := Selisih2.AsFloat*-1;
  end;
if (Qnt2Opname.Focused) and (IsCek.Checked)and (XFix=False)Then
  Begin
   QntOpname.AsFloat:=Qnt2Opname.AsFloat*XIsi;
   Selisih.AsFloat := QntOpname.AsFloat-StockComp.AsFloat;
   if Selisih.AsFloat >= 0 then
    begin
     Qnt.AsFloat := Selisih.AsFloat;
     qntcr.AsFloat := 0;
    end
   else
   begin
    Qnt.AsFloat := 0;
    qntcr.AsFloat := Selisih.AsFloat*-1;
   end;
  end;
end;

procedure TFrKoreksi.Qnt2OpnameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=VK_Escape then
   begin
      mValid:=false;
      KodeBrg.Enabled:=true;
      Panel2.Enabled:=true;
      ClearPanelDetail;
      if model='write' then
         ActiveControl:=KodeBrg
      else
      begin
         SpeedButton1.Click;
      end;
   end
  else if key=vk_Return then
  begin
    Selisih2.AsFloat := Qnt2Opname.AsFloat-Stock2Comp.AsFloat;
    if Selisih2.AsFloat >= 0 then
    begin
      Qnt2.AsFloat := Selisih2.AsFloat;
      qnt2cr.AsFloat := 0;
    end
    else
    begin
      Qnt2.AsFloat := 0;
      qnt2cr.AsFloat := Selisih2.AsFloat*-1;
    end;
    if (Qnt2Opname.Focused) and (IsCek.Checked)and (XFix=False)Then
  Begin
   QntOpname.AsFloat:=Qnt2Opname.AsFloat*XIsi;
   Selisih.AsFloat := QntOpname.AsFloat-StockComp.AsFloat;
   if Selisih.AsFloat >= 0 then
    begin
     Qnt.AsFloat := Selisih.AsFloat;
     qntcr.AsFloat := 0;
    end
   else
   begin
    Qnt.AsFloat := 0;
    qntcr.AsFloat := Selisih.AsFloat*-1;
   end;
  end;
  end;
end;

procedure TFrKoreksi.frxReport1AfterPrintReport(Sender: TObject);
begin
 NilaiCetak('NilaiCetak','DBKoreksi',NoBukti.Text);
end;

procedure TFrKoreksi.NoUrutExit(Sender: TObject);
var myTempNoUrut: String;
begin
 if FrKoreksi.IsKoreksi= false then
 begin
    if mValid then
    begin
      myTempNoUrut:=NoUrut.Text;
      NoUrut.Text:=RightStr('00000'+myTempNoUrut,5);
      Konfig(TipeTrans,NoUrut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date);
      NOBUKTI.Text:=MyNoBukti;
      TampilData(NoBukti.Text);
      If Length(NoUrut.Text)<4 then
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
            TampilData('');
            MsgDataSudahADA(NoBukti.Text);
            ActiveControl := NoUrut;
          end;
        end;
        If Not Daftar_Nomor(TipeTrans,NoUrut.Text, NOBUKTI.Text,isMax) then
        begin
          MessageDlg('Nomor : '+NOBUKTI.Text+' telah digunakan oleh '+MyUser+'.',mtWarning,[MbOk],0);
          ActiveControl := NoUrut;
        end;
      end;
    end;
 end;
end;

end.
