unit FrmUbahKemasan;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, wwdblook, Wwdbigrd, Wwdbgrid,
  DBCtrls, ppBands, ppCtrls, ppDB, jpeg, ppPrnabl, ppClass, ppCache,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, ImgList,
  dxTL, dxDBCtrl, dxDBGrid, dxCntner,dxGridMenus,DateUtils,StrUtils,
  frxDesgn, frxClass, frxDBSet;

type
  TFrUbahKemasan = class(TForm)
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
    Kodegdg: TEdit;
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
    Label6: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    NoSat: TPBNumEdit;
    frxDesigner1: TfrxDesigner;
    SpeedButton8: TSpeedButton;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TampilData(No_Bukti:String);
    procedure UpdateDataBeli(Choice:Char;Kodet:String);
    Procedure AmBilDataBeli;
    procedure NoUrutEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ViewDetailBarang(NoBrg:String;var nama:string);
    procedure TambahBtnClick(Sender: TObject);
    procedure ClearPanelDetail;
    procedure KodeBrgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RefreshAll;
    procedure BtValidateEnter(Sender: TObject);
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
    procedure BukaNoBukti(Bukti:String);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure KodegdgExit(Sender: TObject);
    procedure KodegdgEnter(Sender: TObject);
    Function CheckFormMaster:boolean;
    procedure QntChange(Sender: TObject);
    procedure KodegrpEnter(Sender: TObject);
    procedure KodegrpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeLokasiEnter(Sender: TObject);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure dxDBGrid1Exit(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure BPrevClick(Sender: TObject);
    procedure BNextClick(Sender: TObject);
    procedure HargaExit(Sender: TObject);
    procedure qntcrChange(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure NoUrutChange(Sender: TObject);
    procedure NoUrutExit(Sender: TObject);
    procedure CetakClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
  private
    { Private declarations }
    procedure TampilIsiBarang;
    procedure TampilIsiGudang;
    procedure IsiHargaBrg;
  public
    { Public declarations }
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel,xModalKoreksi : Boolean;
  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrUbahKemasan: TFrUbahKemasan;
  mValid,mExit: Boolean;
  mBukti,Sat:String;
  mUrut,IsTutup,mPosisi:Integer;
  TipeTrans,PlusPPN,Nomor,Model,mKodegrp,mKodegdg:String;
  mBulan,mTahun:string;
  IsiBrg:real;
  YY,MM,DD : Word;
  Kuantiti1,Kuantiti2,Biaya:Real;
  BM : TBookMark;
  S:array[0..255]of char;

implementation
uses FrmBrows,MyProcedure,MyGlobal,MyModul, FrmMainUbahKemasan;
{$R *.DFM}

// PROCEDURE DAN FUNCTION PRIBADI

procedure TFrUbahKemasan.UpdatedbBeli;
begin
      with QuUpdatedbBeli do
      begin
         Close;
         Sql.Clear;
         SQL.Add('Update dbUbahKemasan');
         SQL.Add('Set tanggal=:0,note=:1');
         SQL.Add('Where Nobukti=:2');
         Prepared;
         Parameters[0].Value:=Datetostr(Tanggal.date);
         Parameters[1].Value:=Keterangan.Text;
         Parameters[2].Value:=NoBukti.Text;
         ExecSQL;
      end;
end;

Function TFrUbahKemasan.CheckFormMaster:boolean;
begin
   if CekPeriode(IdUser,TANGGAL.Date)=false then
   begin
      ShowMessage('Periode tidak sesuai !');
      CheckFormMaster:=false;
   end
   else
   CheckFormMaster:=true;
end;


procedure TFrUbahKemasan.ClearPanelDetail;
begin
   KodeBrg.Text:='';
   Qnt.Value:=0;
   qntcr.Value:=0;
   NoSat.Value:=1;
   Harga.Value:=0;
   NamaBrg.Caption:='[ . . . ]';
   NamaSat.Caption:='[ . . . ]';
end;

procedure TFrUbahKemasan.RefreshAll;
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
   NamaSat.Caption:='[ . . . ]';
   Qnt.Value:=1;
   NoSat.Value:=1;
   KodeBrg.Text:='';
end;

procedure TFrUbahKemasan.BukaNoBukti(Bukti:String);
begin
   with DM.QuBukaKunci do
   begin
      Close;
      SQL.Clear;
      SQL.Add('Update dbUbahKemasan set tutup=0');
      SQL.Add('Where NoBukti=:0');
      Prepared;
      Parameters[0].Value:=Bukti;
      ExecSQL;
   end;
end;


procedure TFrUbahKemasan.ViewDetailBarang(NoBrg:String;var nama:string);
begin
   with DM.QuCari do
   begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from dbBarang');
      SQL.Add('Where KodeBrg=:0');
      Prepared;
      Parameters[0].Value:=NoBrg;
      Open;
   end;
   Nama:=DM.QuCari.fieldbyname('NamaBrg').AsString;
   NamaSat.Caption:='[1] '+DM.QuCari.fieldbyname('Sat_1').AsString+' [2] '+
                     DM.QuCari.fieldbyname('Sat_2').AsString;
end;

procedure TFrUbahKemasan.UpdateDataBeli(Choice:Char;Kodet:String);
begin
   BM:=QuBeli.GetBookmark;
   With Sp_Beli do
   begin
       Prepared;
       Parameters[1].Value:=Choice;
       Parameters[2].Value:=Nobukti.Text;
       Parameters[3].Value:=TANGGAL.Date;
       Parameters[4].Value:=Keterangan.Text;
       if (choice='D') then
          Parameters[5].Value:=QuBeli.fieldbyname('Urut').asinteger
       else
          Parameters[5].Value:=mUrut;
       Parameters[6].Value:=KodeBrg.Text;
       Parameters[7].Value:=KodeGdg.Text;
       Parameters[8].Value:=Sat;
       Parameters[9].Value:=NoSat.AsInteger;
       Parameters[10].Value:=IsiBrg;
       Parameters[11].Value:=Qnt.AsFloat;
       Parameters[12].Value:=qntcr.AsFloat;
       Parameters[13].Value:=Harga.AsFloat;
       Parameters[14].Value:=NoUrut.Text;
       Parameters[15].Value:=0;
       try
          execproc;
          if Choice='I' then
          begin
            TampilData(NOBUKTI.Text);
            QuBeli.Locate('kodebrg',KodeBrg.Text,[LOP,LOC]);
            LoggingData(IDUser,'I','Ubah Kemas',NoBukti.Text,
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
            LoggingData(Iduser,'U','Ubah Kemas',NoBukti.Text,
                        'Nomor Bukti --> '+NOBUKTI.Text+#13+
                        'User '+IDUser+' Koreksi Barang --> '+KodeBrg.Text+#13+
                        'Nama --> '+NamaBrg.Caption+#13+
                        'Qnt --> '+QuotedStr(Qnt.Text)+' '+Sat);
          end
          Else if Choice='D' then
          begin
            LoggingData(Iduser,'D','Ubah Kemas',NoBukti.Text,
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

Procedure TFrUbahKemasan.AmBilDataBeli;
begin
   if not QuBeli.IsEmpty then
   begin
      Tanggal.Date:=QuBeli.fieldbyname('Tanggal').AsDateTime;
      Keterangan.Text:=QuBeli.fieldbyname('note').AsString;
      mUrut := QuBeli.FieldByname('Urut').AsInteger;
   end;
end;

procedure TFrUbahKemasan.TampilData(No_Bukti:String);
begin
  with qubeli do
  begin
    close;
    sql.Clear;
    sql.Add('Select * from vwDetailUbahKemasan '+
             'Where NoBukti = :0 '+
             'Order by NoBukti, Urut');
    Prepared;
    Parameters[0].Value := No_Bukti;
    open;
  end;
   (QuBeli.FieldByName('Qntdb') As TNumericField).DisplayFormat:=',0.00';
   (QuBeli.FieldByName('Qntcr') As TNumericField).DisplayFormat:=',0.00';
   (QuBeli.FieldByName('Harga') As TNumericField).DisplayFormat:=',0.00';
   (QuBeli.FieldByName('total') As TNumericField).DisplayFormat:=',0.00';
   QuBeli.First;
end;

// PROCEDURE DAN FUNCTION MILIK DELPHI

procedure TFrUbahKemasan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if mExit=true then
begin
   FrMainUbahKemasan.xStatus := 'M';
   Hapus_Daftar_Nomor(TipeTrans ,mBukti,IdUser);
   Action:=cafree;
end
else
begin
   Action:=caNone;
end;
end;

procedure TFrUbahKemasan.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0)
   else if key=38 then QuBeli.Prior
   else if key=40 then QuBeli.Next;
end;

procedure TFrUbahKemasan.NoUrutEnter(Sender: TObject);
begin
Hapus_Daftar_Nomor(TipeTrans ,nobukti.Text,IdUser);
mValid:=True;
mExit:=true;
end;

procedure TFrUbahKemasan.FormCreate(Sender: TObject);
begin
TipeTrans := 'KMS';
Hapus_Daftar_Nomor_User(TipeTrans ,IDUser);
end;

procedure TFrUbahKemasan.TambahBtnClick(Sender: TObject);
begin
  if CheckFormMaster=true then
  begin
      Model:='write';
      PanelShow1.Visible:=false;
      PanelShow2.Visible:=false;
      Panel3.Visible:=true;
      Panel4.Visible:=False;
      Panel1.Enabled:=false;
      Panel2.Enabled:=false;
      Panel3.Enabled:=True;
      KodeBrg.Enabled:=true;
      Kodegdg.Text:='';
      ActiveControl:=Kodegdg;
  end
  else
  begin
     ShowMessage('Form Master Tidak Lengkap, Silahkan Anda Periksa !');
  end;
end;

procedure TFrUbahKemasan.KodeBrgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_Escape then
begin
   SpeedButton1.Click;
end;
end;

procedure TFrUbahKemasan.BtValidateEnter(Sender: TObject);
begin
TambahBtn.Click;
end;

procedure TFrUbahKemasan.QntKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrUbahKemasan.TANGGALKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=Vk_Return then
  begin
    if CekPeriode(IDUser,TANGGAL.Date) then
    begin
       UpdatedbBeli;
    end
    else
    begin
       MessageDlg('Tanggal tidak sesuai periode taransaksi.',mtWarning,[mbok],0);
       ActiveControl := TANGGAL;
    end;
  end
  else if Key=Vk_Escape then
  begin
    If FrMainUbahKemasan.ModalKoreksi = False then
    begin
      Hapus_Daftar_Nomor_User(TipeTrans ,IDUser);
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
      Keterangan.Text :='';
      TampilData(NOBUKTI.Text);
      ActiveControl := NoUrut;
    end
    else
    begin
      mExit := true;
      close;
    end;
  end;

end;

procedure TFrUbahKemasan.KodeBrgEnter(Sender: TObject);
begin
mValid:=true;
end;

procedure TFrUbahKemasan.KoreksiBtnClick(Sender: TObject);
begin
  if CheckFormMaster=true then
  begin
     mValid:=false;
     model:='koreksi';
     // data yang di update
     if QuBeli.IsEmpty=false then
     begin
        PanelShow1.Visible:=false;
        PanelShow2.Visible:=false;
        Panel3.Visible:=true;
        Panel1.Enabled:=false;
        Panel2.Enabled:=false;
        Panel3.Enabled:=True;
        Panel4.Visible:=False;
        KodeBrg.Enabled:=false;
        KodeBrg.Text:=QuBeli.fieldbyname('KodeBrg').AsString;
        Kodegdg.Text:=QuBeli.fieldbyname('Kodegdg').AsString;
        Qnt.AsFloat:=Qubeli.fieldbyname('Qntdb').AsFloat;
        qntcr.AsFloat:=Qubeli.fieldbyname('Qntcr').AsFloat;
        NoSat.AsInteger:=QuBeli.fieldbyname('noSat').AsInteger;
        Harga.AsCurrency:=QuBeli.fieldbyname('Harga').AsCurrency;
        NamaBrg.Caption:='[ '+QuBeli.fieldbyname('namaBrg').AsString+' ]';
               NamaSat.Caption:='[ '+QuBeli.fieldbyname('Satuan').AsString+' ]';
        mUrut := Qubeli.fieldbyname('urut').AsInteger;
        ActiveControl:=Qnt;
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

procedure TFrUbahKemasan.HapusBtnClick(Sender: TObject);
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
            StrPCopy(S,Format('Anda yakin NO %s dan Nama %s dihapus ?',
            [QuBeli.Fields[0].asstring,
            QuBeli.Fields[1].asstring]));
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
end;

procedure TFrUbahKemasan.NoUrutKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=Vk_Return then
  begin
    If Length(NoUrut.Text)<4 then
    begin
      MessageDlg('Nomor urut kurang '+InttoStr(4-Length(NoUrut.Text))+' digit.',mtWarning,[MbOk],0);
      ActiveControl := NoUrut;
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
        if FrMainUbahKemasan.ModalKoreksi then
        begin
          ActiveControl := NoUrut;
        end;
      end;
      If Not Daftar_Nomor(TipeTrans ,NoUrut.Text,NOBUKTI.Text,isMax) then
      begin
        MessageDlg('Nomor : '+NOBUKTI.Text+' telah digunakan oleh '+MyUser+'.',mtWarning,[MbOk],0);
        ActiveControl := NoUrut;
      end;
    end;
  end
  else if Key=Vk_Escape then
  begin
    mExit := True;
    Close;
  end;
end;

procedure TFrUbahKemasan.TANGGALEnter(Sender: TObject);
begin
mValid:=true;
end;

procedure TFrUbahKemasan.TANGGALExit(Sender: TObject);
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

procedure TFrUbahKemasan.IsiHargaBrg;
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
procedure TFrUbahKemasan.TampilIsiBarang;
begin
  KodeBrows:=2420112;
  Application.CreateForm(TFrBrows, FrBrows);
  //FrBrows.brGudang:=Kodegdg.Text;
  FrBrows.brTahun:=YearOf(TANGGAL.Date);
  FrBrows.brBulan:=MonthOf(TANGGAL.Date);
  FrBrows.IsiData:=Kodegdg.Text;//KodeBrg.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    KodeBrg.Text:=FrBrows.QuBrows.fieldbyname('KodeBrg').AsString;
    NamaBrg.Caption:='[ '+FrBrows.QuBrows.fieldbyname('NamaBrg').AsString+' ]';
    IsiHargaBrg;
  end
  else
    ActiveControl:=KodeBrg;
end;
procedure TFrUbahKemasan.KodeBrgExit(Sender: TObject);
begin
  if mValid Then
  begin
     if length(KodeBrg.Text)=0 then TampilIsiBarang else
     begin
        if DataBersyarat('select a.KodeBrg, a.NamaBrg, a.Sat1 from dbBarang a '+
                         'where a.isAktif=1 and A.KodeGrp<>''BJ'' and  a.KodeBrg=:0 ',
        [KodeBrg.Text], DM.QuCari)=True then
        begin
           KodeBrg.Text:=DM.QuCari.fieldbyname('KodeBrg').AsString;
           NamaBrg.Caption:='[ '+DM.QuCari.fieldbyname('NamaBrg').AsString+' ]';
           IsiHargaBrg;
        end
        else TampilIsiBarang;
     end;
  end;
end;

procedure TFrUbahKemasan.BitBtn1Click(Sender: TObject);
begin
   if CekPeriode(IdUser,TANGGAL.Date)=true then
   begin
      if MyCek_Lock_Periode(mBukti)=false then
      begin
         if model='write' then
         begin
            if length(Kodebrg.Text)>0 then
            begin
               begin
                  UpdateDataBeli('I','BL');
                  ClearPanelDetail;
                  ActiveControl:=KodeGdg;
               end;
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
                KodeBrg.Enabled:=true;
                PanelShow1.Visible:=true;
                if xModalKoreksi then
                     PanelShow2.Visible:=true;
                Panel1.Enabled:=true;
                Panel2.Enabled:=true;
                Panel3.Enabled:=false;
                Panel3.Visible:=false;
                Panel4.Visible:=True;
                ActiveControl:=dxDBGrid1;
                ClearPanelDetail;
         end;

      end
      else
      begin
         ShowMessage('Periode Sudah Di Kunci !');
         if model='Koreksi' then
            ActiveControl:=Qnt
         else
            ActiveControl:=Qnt;
      end;
   end
   else
     ShowMessage('Tanggal Periode Tidak Sesuai !');
   FrMainUbahKemasan.GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
end;

procedure TFrUbahKemasan.SpeedButton1Click(Sender: TObject);
begin
      mValid:=false;
      PanelShow1.Visible:=true;
      if xModalKoreksi then
         PanelShow2.Visible:=true;

      Panel1.Enabled:=true;
      Panel2.Enabled:=true;
      Panel3.Enabled:=false;
      Panel3.Visible:=false;
      Panel4.Visible:=True;
      ActiveControl:=dxDBGrid1;
      ClearPanelDetail;
end;

procedure TFrUbahKemasan.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
   QuBeli.Sort:=AFieldName;
end;

procedure TFrUbahKemasan.TampilIsiGudang;
begin
  KodeBrows:=11009;
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

procedure TFrUbahKemasan.KodegdgExit(Sender: TObject);
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

procedure TFrUbahKemasan.KodegdgEnter(Sender: TObject);
begin
mValid:=true;
end;

procedure TFrUbahKemasan.KodegrpEnter(Sender: TObject);
begin
mExit:=true;
mValid:=true;
end;

procedure TFrUbahKemasan.KodegrpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_ESCAPE then
begin
  mValid:=false;
  Hapus_Daftar_Nomor(TipeTrans ,mBukti,IdUser);
  Close;
end;
end;

procedure TFrUbahKemasan.FormShow(Sender: TObject);
var yy,mm,dd : word;
begin
  If FrMainUbahKemasan.ModalKoreksi = False then
  begin
    DecodeDate(Date,YY,MM,DD);
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
    nourut.Enabled:=true;
  end
  else
  Begin
    NOBUKTI.Text := FrMainUbahKemasan.QuMaster.FieldByname('Nobukti').AsString;
    //Hapus_Daftar_Nomor_User (TipeTrans ,IDUser);

    //Daftar_Nomor(TipeTrans ,NoUrut.Text,NOBUKTI.Text,IsMax);
     TampilData(NOBUKTI.Text);
    AmBilDataBeli;
    NoUrut.Text :=  leftStr(NOBUKTI.Text,5);
    nourut.Enabled:=false;
  end;
  TampilData(NOBUKTI.Text);
end;

procedure TFrUbahKemasan.FormDestroy(Sender: TObject);
begin
FrUbahKemasan:=nil;
end;

procedure TFrUbahKemasan.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
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
      Keterangan.Text :='';
      TampilData(NOBUKTI.Text);
      FrMainUbahKemasan.GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
      nourut.Enabled:=true;
      ActiveControl:=NoUrut;
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
  end;

end;

procedure TFrUbahKemasan.KodeLokasiEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrUbahKemasan.dxDBGrid1Enter(Sender: TObject);
begin
  FrUbahKemasan.KeyPreview:=false;
  if CheckFormMaster=false then
  begin
     ShowMessage('Form Master Tidak Lengkap, Silahkan Anda Periksa !');
     Hapus_Daftar_Nomor(TipeTrans,mBukti,IdUser);
     ActiveControl:=NOBUKTI;
  end else UpdatedbBeli
end;

procedure TFrUbahKemasan.dxDBGrid1Exit(Sender: TObject);
begin
  FrUbahKemasan.KeyPreview:=true;
end;

procedure TFrUbahKemasan.dxDBGrid1DblClick(Sender: TObject);
begin
     KoreksiBtn.Click;
end;

procedure TFrUbahKemasan.BPrevClick(Sender: TObject);
begin
   Hapus_Daftar_Nomor(TipeTrans,mBukti,iduser);
   RefreshAll;
   ActiveControl:=TANGGAL;
   Hapus_Daftar_Nomor(TipeTrans ,mBukti,iduser);

   FrMainUbahKemasan.QuNavigator.Locate('nobukti',FrMainUbahKemasan.QuMaster.fieldbyname('nobukti').AsString,[LOC,LOP]);
   FrMainUbahKemasan.QuNavigator.Prior;
   FrMainUbahKemasan.QuMaster.Locate('nobukti',FrMainUbahKemasan.QuNavigator.fieldbyname('nobukti').AsString,[LOC,LOP]);

   FormShow(self);
end;

procedure TFrUbahKemasan.BNextClick(Sender: TObject);
begin
   Hapus_Daftar_Nomor(TipeTrans,mBukti,iduser);
   RefreshAll;
   ActiveControl:=TANGGAL;
   Hapus_Daftar_Nomor(TipeTrans ,mBukti,iduser);

   FrMainUbahKemasan.QuNavigator.Locate('nobukti',FrMainUbahKemasan.QuMaster.fieldbyname('nobukti').AsString,[LOC,LOP]);
   FrMainUbahKemasan.QuNavigator.Next;
   FrMainUbahKemasan.QuMaster.Locate('nobukti',FrMainUbahKemasan.QuNavigator.fieldbyname('nobukti').AsString,[LOC,LOP]);

   FormShow(self);

end;

procedure TFrUbahKemasan.HargaExit(Sender: TObject);
begin
  {if Qnt.Value = 0 then
     Harga.Value :=0;}
end;

procedure TFrUbahKemasan.qntcrChange(Sender: TObject);
begin
  if qntcr.AsFloat<>0 then
    Qnt.AsFloat := 0;
end;

procedure TFrUbahKemasan.QntChange(Sender: TObject);
begin
  if qnt.AsFloat<>0 then
  qntcr.Value:=0;
end;

procedure TFrUbahKemasan.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrUbahKemasan.NoUrutChange(Sender: TObject);
begin
  if mValid then
  begin
    if Length(NoUrut.Text)=4 then
    begin
      Konfig(TipeTrans,Nourut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date);
      NOBUKTI.Text:=MyNoBukti;
    end
    else
      //ActiveControl := NoUrut;
  end;
end;

procedure TFrUbahKemasan.NoUrutExit(Sender: TObject);
var myTempNoUrut: String;
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

procedure TFrUbahKemasan.CetakClick(Sender: TObject);
var N1, N2, N3 : string;
    T1, T2 : Real;
    Tot : byte;
    H1  : real;
begin
//  tothal :=(QuBeli.RecordCount div 10);
  //sishal :=(QuBeli.RecordCount mod 10);
  //if sishal>0 then tothal :=tothal+1;
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
    Sql.Add('Exec CetakUbahKemasan '+QuotedStr(nobukti.Text));
    open
  end;
  frxDBDataset1.close;
  frxDBDataset1.Open;
{if ComboBox1.ItemIndex=0 then
  frxReport1.LoadFromFile(currDir+'Nota\NotaPemakaianBahan.fr3')
else
  if ComboBox1.ItemIndex=1 then}
  //frxReport1.LoadFromFile(currDir+'Nota\NotaPemakaianBahanProduksi.fr3')
  {else
  if ComboBox1.ItemIndex=2 then
   frxReport1.LoadFromFile(currDir+'Nota\NotaPemakaianBahanPrePress.fr3');}
  frxReport1.LoadFromFile(currDir+'Nota\NotaUbahKemasan.fr3');
  frxReport1.ShowReport;


end;

procedure TFrUbahKemasan.SpeedButton8Click(Sender: TObject);
begin
frxReport1.LoadFromFile(currDir+'Nota\NotaUbahKemasan.fr3');
frxReport1.DesignReport;

end;

end.
