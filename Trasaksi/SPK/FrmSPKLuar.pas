unit FrmSPKLuar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, DBCtrls, ImgList, dxDBTLCl, dxGrClms,
  dxTL, dxDBCtrl, dxDBGrid, dxCntner, variants, dxEditor, dxExEdtr, dxEdLib,
  Dateutils, raCodMod, frxClass, frxDMPExport, frxDBSet, frxDesgn, MyGlobal, strUtils;

type
  TFrSPKLuar = class(TForm)
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
    Label2: TLabel;
    NamaBrg: TRxLabel;
    NoUrut: TEdit;
    Tanggal: TDateEdit;
    NoBukti: TEdit;
    KdBrg: TEdit;
    LNamaBrg: TRxLabel;
    Label1: TLabel;
    Label4: TLabel;
    Qnt: TPBNumEdit;
    KodeBrg: TEdit;
    Label19: TLabel;
    NoSat: TPBNumEdit;
    LNamaSat: TRxLabel;
    Label3: TLabel;
    QntJ: TPBNumEdit;
    Label5: TLabel;
    NoSatJ: TPBNumEdit;
    NmSat: TRxLabel;
    CSPK: TCheckBox;
    QuBeliNoBukti: TStringField;
    QuBeliBrgJ: TStringField;
    QuBeliQntJ: TBCDField;
    QuBeliNosatJ: TWordField;
    QuBeliIsiJ: TBCDField;
    QuBeliSatJ: TStringField;
    QuBeliKodeBrg: TStringField;
    QuBeliQnt: TBCDField;
    QuBeliSatuan: TStringField;
    QuBeliisi: TBCDField;
    QuBeliNosat: TWordField;
    QuBeliNamaBrgJ: TStringField;
    QuBeliNamaBrg: TStringField;
    QuBeliNoUrut: TStringField;
    QuBeliurut: TIntegerField;
    QuBelitanggal: TDateTimeField;
    NoBatch: TEdit;
    Label6: TLabel;
    TglExpired: TDateEdit;
    Label7: TLabel;
    QuBeliNoBatch: TStringField;
    QuBeliTglExpired: TDateTimeField;
    KodeBOM: TEdit;
    Label8: TLabel;
    QuBeliKodeBOM: TStringField;
    Button1: TButton;
    QntBOMX: TPBNumEdit;
    Label9: TLabel;
    KodeBOMDet: TEdit;
    Label11: TLabel;
    IntLevelBOM: TPBNumEdit;
    StrLevelBOM: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure TampilData(No_Bukti:String);
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
    procedure KodeSuppEnter(Sender: TObject);
    procedure CetakClick(Sender: TObject);
    Function CheckFormMaster:boolean;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure NoDOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure KodeGdgEnter(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure BPrevClick(Sender: TObject);
    procedure BNextClick(Sender: TObject);
    procedure KodeBrgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton8Click(Sender: TObject);
    procedure KdBrgEnter(Sender: TObject);
    procedure KdBrgExit(Sender: TObject);
    procedure TanggalChange(Sender: TObject);
    procedure NoUrutEnter(Sender: TObject);
    procedure KodeBrgEnter(Sender: TObject);
    procedure KodeBrgExit(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure frxReport1AfterPrintReport(Sender: TObject);
    procedure NoUrutExit(Sender: TObject);
    procedure NoSatJExit(Sender: TObject);
    procedure KodeBOMExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
    mUbahHd, mUbahHdDet: Boolean;
    mNamaSatuan: TNamaSatuanBrg;
    mIsiSatuan: TIsiSatuanBrg;
    mNamaSatuanJ: TNamaSatuanBrg;
    mIsiSatuanJ: TIsiSatuanBrg;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure TampilIsiBrgJadi;
    procedure TampilIsiBarang;
    procedure IsiNoBuktiBaru;
    procedure IsiSatuan;
    procedure IsiSatuanJ;
    Procedure AmBilDataBeli;
    procedure TampilIsiGudang;
    procedure IsiBahanDariBOM;
    procedure IsiBahanDariCekBOM;
  public
    { Public declarations }
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel,xModalKoreksi: Boolean;
    yy,mm,dd : word;
    sishal, tothal : integer ;


  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrSPKLuar: TFrSPKLuar;
  mValid,mExit,mMasterKoreksi,xIsPpn: Boolean;
  Sat:String;
  mUrut,mUrutPO,IsTutup,mNosat,mPosisi,mUrutRO:Integer;
  TipeTrans,PlusPPN,Nomor,Model:String;
  mBulan,mTahun:string;
  S:array[0..255]of char;
  BM : TBookmark;

implementation
uses FrmBrows, MyProcedure, MyModul, FrmMainSPKLuar, FrmTempStockBOM;
{$R *.DFM}

// PROCEDURE DAN FUNCTION PRIBADI

procedure TFrSPKLuar.TampilTombolDetail(pNilai: Boolean);
begin
  //PanelShow1.Visible:=not pNilai;
  //PanelShow2.Visible:=not pNilai;
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  Panel3.Enabled:=pNilai;
end;

procedure TFrSPKLuar.TampilIsiBrgJadi;
begin
  KodeBrows:=2420111;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KdBrg.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    with FrBrows.QuBrows do
    begin
      KdBrg.Text:=fieldbyname('KodeBrg').AsString;
      NamaBrg.Caption:='[..'+fieldbyname('NamaBrg').AsString+'..]';
    end;
  end else
    ActiveControl:=KdBrg;
end;




procedure TFrSPKLuar.TampilIsiBarang;
begin
  KodeBrows:=24201122;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:='%'+KodeBrg.Text+'%';
  FrBrows.EditFilter.Text:=KodeBrg.Text;
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.IsEmpty=False) then
  begin
    with FrBrows.QuBrows do
    begin
      KodeBrg.Text:=fieldbyname('KodeBrg').AsString;
      LNamaBrg.Caption:='[ '+fieldbyname('NamaBrg').AsString+' ]';
      Qnt.AsFloat:=fieldbyname('QntSaldo').AsFloat;
      ActiveControl:=Qnt;
    end;
  end
  else
    ActiveControl:=KodeBrg;
end;



procedure TFrSPKLuar.IsiNoBuktiBaru;
begin
  DecodeDate(Date,YY,MM,DD);
  If DayOfTheMonth(Date)<=DD then
     DD:=DayOfTheMonth(date);
  Try
    TANGGAL.Date := EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),DD);
  Except
    TANGGAL.Date := EndOfAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln))
  end;
  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal.Date);
  NoUrut.Text := NomorBukti;
  NOBUKTI.Text := Nomor;
end;

procedure TFrSPKLuar.TampilData(No_Bukti:String);
begin
  QuBeli.Close;
  QuBeli.SQL.Strings[2]:='select @NoBukti='+QuotedStr(No_Bukti);
  QuBeli.Open;
  KdBrg.Enabled:=QuBeli.IsEmpty;
  KodeBOM.Enabled:=QuBeli.IsEmpty;
  if QuBeli.IsEmpty=false then
  begin
      dxDBGrid1.OptionsDB:=[edgoCanNavigation,edgoLoadAllRecords,edgoUseBookmarks]
  end
  else
  begin
      dxDBGrid1.OptionsDB:=[edgoCanNavigation,edgoUseBookmarks];
  end;
end;

Function TFrSPKLuar.CheckFormMaster:boolean;
begin
   CheckFormMaster:=true;
end;

procedure TFrSPKLuar.UpdatedbBeli;
begin
  if (not QuBeli.IsEmpty) and (mUbahHd=True)and(FrMainSPKLuar.ModalKoreksi) then
  begin
    with QuUpdatedbBeli do
    begin
       Close;
       Sql.Clear;
       SQL.Add('Update dbSPKLuar');
       SQL.Add('set TANGGAL=:0, KodeBrg=:1,Qnt=:2, NoBatch='+QuotedStr(NoBatch.Text)+', TglExpired=:3,Nosat=:4 ');
       SQL.Add('Where NoBukti='+QuotedStr(NoBukti.Text));
       Prepared;
       Parameters[0].Value := TANGGAL.Date;
       Parameters[1].Value := KdBrg.Text;
       Parameters[2].Value := Qntj.AsFloat;
       Parameters[3].Value := TglExpired.Date;
       Parameters[4].Value := NosatJ.AsInteger;
       ExecSQL;
       mUbahHd:=False; mUbahHdDet:=False;
    end;
    TampilData(NoBukti.Text);
  end;
end;

procedure TFrSPKLuar.ClearPanelDetail;
begin
   KodeBrg.Text:='';
   LNamaBrg.Caption:='[ . . . ]';
   Qnt.Value:=0;
   Nosat.AsInteger:=1;
   LNamaSat.Caption:='[. . . ]';
end;

procedure TFrSPKLuar.RefreshAll;
var i:integer;
begin
   mValid:=False;
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
   ClearPanelDetail;
end;

procedure TFrSPKLuar.UpdateDataBeli(Choice:Char;Kodet:String);
begin
   BM:=QuBeli.GetBookmark;
   With Sp_Beli do
   begin
       Parameters.Refresh;
       Parameters[1].Value:=Choice;
       Parameters[2].Value:=NoBukti.Text;
       Parameters[3].Value:=TANGGAL.Date;
       Parameters[4].Value:=KdBrg.Text;
       Parameters[5].Value:=QntJ.AsFloat;
       if Choice<>'I' then
       Parameters[6].Value:=CSPK.Checked;
       Parameters[7].Value:=NosatJ.AsInteger;
       Parameters[8].Value:=mNamaSatuanJ[NoSatJ.AsInteger];
       Parameters[9].Value:=mIsiSatuanJ[NoSatJ.AsInteger];
       Parameters[10].Value:=KodeBrg.Text;
       if Choice<>'I' then
       Parameters[11].Value:=QuBeliurut.AsInteger;
       Parameters[12].Value:=mIsiSatuan[NoSat.AsInteger];
       Parameters[13].Value:=Qnt.AsFloat;
       Parameters[14].Value:=NoSat.AsInteger;
       Parameters[15].Value:=mNamaSatuan[NoSat.AsInteger];
       Parameters[16].Value:=NoUrut.Text;
       Parameters[17].Value:=NoBatch.Text;
       Parameters[18].Value:=TglExpired.Date;
       Parameters[19].Value:=KodeBOM.Text;
       Parameters[20].Value:=KodeBOMDet.Text;
       Parameters[21].Value:=QntBOMX.AsFloat;
       Parameters[22].Value:=StrLevelBOM.Text;
       Parameters[23].Value:=IntLevelBOM.AsInteger;
       try
          ExecProc;
          if Choice='I' then
          begin
            TampilData(NOBUKTI.Text);
            //QuBeli.Locate('KodeBrg',KodeBrg.Text,[LOP,LOC]);
            LoggingData(IDUser,Choice,'SPKL',NoBukti.Text,
                    ' Barang = '+QuotedStr(KodeBrg.Text)+
                    ' Qnt = '+QuotedStr(Qnt.Text));
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
              //QuBeli.Last;
              //QuBeli.Locate('Urut', mUrut, []);
            end;
            //QuBeli.Locate('Urut', mUrut, []);
            LoggingData(IDUser,Choice,'SPKL',NoBukti.Text,
                    ' Barang = '+QuotedStr(KodeBrg.Text)+
                    ' Qnt = '+QuotedStr(Qnt.Text));
          end
          Else if Choice='D' then
          begin
            LoggingData(IDUser,Choice,'SPKL',NoBukti.Text,
                    ' Barang = '+QuotedStr(QuBeliKodeBrg.AsString)+
                    ' Qnt = '+QuotedStr(QuBeliQnt.DisplayText));
            TampilData(NOBUKTI.Text);
          end;
          //Hitung;
          QuBeli.Locate('Urut', mUrut, []);
       except
          If (Choice='I') Or (Choice='U') then
             showmessage('Proses Gagal !                   ')
          else If (Choice='D') then
             showmessage('Proses Gagal !, Barang berkaitan dengan transaksi lain.');
       end;

   end;
end;

Procedure TFrSPKLuar.AmBilDataBeli;
begin
   if not QuBeli.IsEmpty then
   begin
      Tanggal.Date:=QuBeliTanggal.AsDateTime;
      KdBrg.Text:=QuBeliBrgJ.AsString;
      NamaBrg.Caption:=QuBeliNamaBrgJ.AsString;
      NoBatch.Text:=QuBeliNoBatch.AsString;
      TglExpired.Date:=QuBeliTglExpired.AsDateTime;
      NosatJ.AsInteger:=QuBeliNosatJ.AsInteger;
      NmSat.Caption:=QuBeliSatJ.AsString;
      NosatJ.AsInteger:=QuBeliNosatJ.AsInteger;
      Qntj.AsFloat:=QuBeliQntJ.AsFloat;
      //IsiSatuanJ;
      KodeBOM.Text:=QuBeliKodeBOM.AsString;
   end;
end;

procedure TFrSPKLuar.IsiBahanDariBOM;
var xIsiBrgJadi: Real;
    xSatBrgJadi: String;
begin
  with DM.QuCari2 do
  begin
    Close;
    SQL.Clear;
    if NoSatJ.AsInteger=1 then
      SQL.Add('select Sat1 Satuan, Isi1 Isi from dbBarang where KodeBrg='+QuotedStr(KdBrg.Text))
    else
      SQL.Add('select Sat2 Satuan, Isi2 Isi from dbBarang where KodeBrg='+QuotedStr(KdBrg.Text));
    Open;
    xIsiBrgJadi:=FieldByName('Isi').AsCurrency;
    xSatBrgJadi:=FieldByName('Satuan').AsString;
    Close;
    SQL.Clear;
    SQL.Add('select A.* from dbBOMDet A, dbBOM B ');
    SQL.Add('where A.KodeBOM=B.KodeBOM');
    SQL.Add('and B.KodeBrg='+QuotedStr(KdBrg.Text)+' and B.KodeBOM='+QuotedStr(KodeBOM.Text));
    SQL.Add('order by A.Urut ');
    Open;
  end;
  DM.QuCari2.First;
  while not DM.QuCari2.Eof do
  begin
    KodeBrg.Text:=DM.QuCari2.FieldByName('KodeBrg').AsString;
    Qnt.Value:=DM.QuCari2.FieldByName('Qnt').AsCurrency*QntJ.AsCurrency*xIsiBrgJadi;
    NoSat.Value:=1;
    IsiSatuan;
    with Sp_Beli do
    begin
      Parameters.Refresh;
      Parameters[1].Value:='I';
      Parameters[2].Value:=NoBukti.Text;
      Parameters[3].Value:=TANGGAL.Date;
      Parameters[4].Value:=KdBrg.Text;
      Parameters[5].Value:=QntJ.AsFloat;
      Parameters[6].Value:=CSPK.Checked;
      Parameters[7].Value:=NosatJ.AsInteger;
      Parameters[8].Value:=xSatBrgJadi;
      Parameters[9].Value:=xIsiBrgJadi;
      Parameters[10].Value:=KodeBrg.Text;
      Parameters[11].Value:=1;
      Parameters[12].Value:=mIsiSatuan[NoSat.AsInteger];
      Parameters[13].Value:=Qnt.AsFloat;
      Parameters[14].Value:=NoSat.AsInteger;
      Parameters[15].Value:=mNamaSatuan[NoSat.AsInteger];
      Parameters[16].Value:=NoUrut.Text;
      Parameters[17].Value:=NoBatch.Text;
      Parameters[18].Value:=TglExpired.Date;
      Parameters[19].Value:=KodeBOM.Text;
      try
        ExecProc;
        TampilData(NoBukti.Text);
                      //QuBeli.Locate('KodeBrg',KodeBrg.Text,[LOP,LOC]);
        LoggingData(IDUser,'I','SPKL',NoBukti.Text,
        ' Barang = '+QuotedStr(KodeBrg.Text)+
        ' Qnt = '+QuotedStr(Qnt.Text));
      except
        showmessage('Proses Gagal !                   ') ;
      end;
      //TampilData(NoBukti.Text);
    end;
    DM.QuCari2.Next;
  end;
end;

procedure TFrSPKLuar.IsiBahanDariCekBOM;
var xIsiBrgJadi: Real;
    xSatBrgJadi: String;
begin
  with DM.QuCari2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('delete dbSPKDet where NoBukti='+QuotedStr(NoBukti.Text));
    ExecSQL;
    SQL.Clear;
    SQL.Add('delete dbSPK where NoBukti='+QuotedStr(NoBukti.Text));
    ExecSQL;
  end;
  FrTempStockBOM.QuBeli.First;
  while not FrTempStockBOM.QuBeli.Eof do
  begin
    KodeBrg.Text:=FrTempStockBOM.QuBeliKodeBrg.AsString;
    Qnt.Value:=FrTempStockBOM.QuBeliQntBOM.AsCurrency;
    QntBOMX.Value:=FrTempStockBOM.QuBeliQntBOMX.AsCurrency;
    KodeBOMDet.Text:=FrTempStockBOM.QuBeliKodeBOM.AsString;
    StrLevelBOM.Text:=FrTempStockBOM.QuBeliStrLevelBOM.AsString;
    IntLevelBOM.Value:=FrTempStockBOM.QuBeliIntLevelBOM.AsInteger;
    NoSat.Value:=1;
    IsiSatuan;
    with Sp_Beli do
    begin
      Parameters.Refresh;
      Parameters[1].Value:='I';
      Parameters[2].Value:=NoBukti.Text;
      Parameters[3].Value:=TANGGAL.Date;
      Parameters[4].Value:=KdBrg.Text;
      Parameters[5].Value:=QntJ.AsFloat;
      Parameters[6].Value:=CSPK.Checked;
      Parameters[7].Value:=NosatJ.AsInteger;
      Parameters[8].Value:=xSatBrgJadi;
      Parameters[9].Value:=xIsiBrgJadi;
      Parameters[10].Value:=KodeBrg.Text;
      Parameters[11].Value:=1;
      Parameters[12].Value:=mIsiSatuan[NoSat.AsInteger];
      Parameters[13].Value:=Qnt.AsFloat;
      Parameters[14].Value:=NoSat.AsInteger;
      Parameters[15].Value:=mNamaSatuan[NoSat.AsInteger];
      Parameters[16].Value:=NoUrut.Text;
      Parameters[17].Value:=NoBatch.Text;
      Parameters[18].Value:=TglExpired.Date;
      Parameters[19].Value:=KodeBOM.Text;
      Parameters[20].Value:=KodeBOMDet.Text;
      Parameters[21].Value:=QntBOMX.AsFloat;
      Parameters[22].Value:=StrLevelBOM.Text;
      Parameters[23].Value:=IntLevelBOM.AsInteger;
      try
        ExecProc;
        TampilData(NoBukti.Text);
                      //QuBeli.Locate('KodeBrg',KodeBrg.Text,[LOP,LOC]);
        LoggingData(IDUser,'I','SPKL',NoBukti.Text,
        ' Barang = '+QuotedStr(KodeBrg.Text)+
        ' Qnt = '+QuotedStr(Qnt.Text));
      except
        showmessage('Proses Gagal !                   ') ;
      end;
      //TampilData(NoBukti.Text);
    end;
    FrTempStockBOM.QuBeli.Next;
  end;
end;

// PROCEDURE DAN FUNCTION MILIK DELPHI

procedure TFrSPKLuar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if mExit=true then
  begin
     Hapus_Daftar_Nomor('SPKL',NoBukti.Text,IDUser);
     FrMainSPKLuar.GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
     Action:=cafree;
  end
  else
  begin
     Action:=caNone;
  end;
end;

procedure TFrSPKLuar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrSPKLuar.FormShow(Sender: TObject);

begin
  mValid:=False;

  xModalKoreksi:=FrMainSPKLuar.ModalKoreksi;
  CSPK.Enabled:=FrMainSPKLuar.ModalKoreksi;
  If FrMainSPKLuar.ModalKoreksi = False then
  begin
    RefreshAll;
    IsiNoBuktiBaru;
    TampilData(NoBukti.Text);
    NoUrut.Enabled:=True;
  end
  else
  Begin
    NOBUKTI.Text := FrMainSPKLuar.QuMaster.FieldByname('Nobukti').AsString;
    Hapus_Daftar_Nomor_User ('SPKL',IDUser);
    Daftar_Nomor('SPKL',NoUrut.Text,NOBUKTI.Text,IsMax);
    TampilData(NOBUKTI.Text);
    AmBilDataBeli;
    NoUrut.Text:=QuBeliNoUrut.AsString;
    NoUrut.Enabled:=False;
  end;
end;

procedure TFrSPKLuar.FormCreate(Sender: TObject);
begin
  TipeTrans := 'SPKL';
  Hapus_Daftar_Nomor_User('SPKL',IDUser);
end;

procedure TFrSPKLuar.TambahBtnClick(Sender: TObject);
begin
  if CheckFormMaster=true then
  begin
      Model:='write';
      TampilTombolDetail(True);
      KodeBrg.Enabled:=True;
      ActiveControl:=KodeBrg;
  end
  else
  begin
     ShowMessage('Form Master Tidak Lengkap, Silahkan Anda Periksa !');
  end;
end;

procedure TFrSPKLuar.QntKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key=VK_Escape then
   begin
      mValid:=false;
      KodeBrg.Enabled:=True;
      //Panel2.Enabled:=true;
      ClearPanelDetail;
      if Model='write' then
         ActiveControl:=KodeBrg
      else
      begin
         SpeedButton1.Click;
      end;
   end;
end;

procedure TFrSPKLuar.TanggalKeyDown(Sender: TObject; var Key: Word;
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
    If FrMainSPKLuar.ModalKoreksi = False then
    begin
      Hapus_Daftar_Nomor_User('SPKL',IDUser);
      mValid:=False;
      RefreshAll;
      IsiNoBuktiBaru;
      //Keterangan.Text :='';
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

procedure TFrSPKLuar.KoreksiBtnClick(Sender: TObject);
begin
  if CheckFormMaster=true then
  begin
     mValid:=false;
     model:='koreksi';
     // data yang di update
     if QuBeli.IsEmpty=false then
     begin
        TampilTombolDetail(True);
        KodeBrg.Enabled:=False;

        KodeBrg.Text:=QuBeliKODEBRG.AsString;
        LNamaBrg.Caption:='[ '+QuBeliNamaBrg.AsString+' ]';
        LNamaSat.Caption:='[ '+QuBeliSATUAN.AsString+' ]';
        NoSat.AsInteger:=QuBeliNOSAT.AsInteger;
        Qnt.AsFloat:=QuBeliQNT.AsFloat;
        mPosisi:=QuBeliURUT.AsInteger;
        IsiSatuan;
        ActiveControl:=Qnt;
     end
     else
     begin
        ShowMessage('Tidak ada transaksi yang dikoreksi !');
        ActiveControl:=dxDBGrid1;
     end;
  end else
  begin
     ShowMessage('Form Master Tidak Lengkap, Silahkan Anda Periksa !');
  end;
end;

procedure TFrSPKLuar.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Escape then
  begin
    Hapus_Daftar_Nomor_User('SPKL',IDUser);
    if xmodalkoreksi then
    begin
      mExit := True;
      Close;
    end
    else
    begin
      RefreshAll;
      IsiNoBuktiBaru;
      TampilData(NOBUKTI.Text);

      ActiveControl:=NoUrut;
    end;
  end
  else if key=VK_return then
  begin
    if QuBeli.IsEmpty then
      TambahBtn.Click
    else KoreksiBtn.Click;
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

procedure TFrSPKLuar.HapusBtnClick(Sender: TObject);
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

procedure TFrSPKLuar.wwDBGrid1Enter(Sender: TObject);
begin
  FrSPKLuar.KeyPreview:=false;
  if CheckFormMaster=false then
  begin
     ShowMessage('Form Master Tidak Lengkap, Silahkan Anda Periksa !');
     Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,iduser);
     ActiveControl:=NoUrut;
  end;
end;

procedure TFrSPKLuar.wwDBGrid1Exit(Sender: TObject);
begin
  FrSPKLuar.KeyPreview:=true;
end;

procedure TFrSPKLuar.wwDBGrid1DblClick(Sender: TObject);
begin
  KoreksiBtn.Click;
end;

procedure TFrSPKLuar.NoUrutKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {if Key=Vk_Return then
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
        if FrMainSPK.ModalKoreksi then
        begin
          ActiveControl := NoUrut;
        end;
      end;
      If Not Daftar_Nomor('SPK',NoUrut.Text,NOBUKTI.Text,IsMax) then
      begin
        MessageDlg('Nomor : '+NOBUKTI.Text+' telah digunakan oleh '+MyUser+'.',mtWarning,[MbOk],0);
        ActiveControl := NoUrut;
      end;
    end;
  end
  else }if Key=Vk_Escape then
  begin
    mExit := true;
    Close;
  end;
end;

procedure TFrSPKLuar.TanggalEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSPKLuar.TanggalExit(Sender: TObject);
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

procedure TFrSPKLuar.KodeSuppEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSPKLuar.CetakClick(Sender: TObject);
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
    Sql.Add('Exec cetakSPK '+QuotedStr(nobukti.Text));
    open
  end;
  frxDBDataset1.close;
  frxDBDataset1.Open;
  frxReport1.LoadFromFile(currDir+'Nota\NotaProduksiSPK.fr3');
  frxReport1.ShowReport;
end;

procedure TFrSPKLuar.BitBtn1Click(Sender: TObject);
begin
   if CekPeriode(IDUser, Tanggal.Date)=True then
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
                  ShowMessage('Kode barang tidak boleh kosong !');
                  ActiveControl:=KodeBrg;
               end;

         end
         else if model='koreksi' then
         begin
             if length(Kodebrg.Text)>0 then
             begin
                mValid:=false;
                UpdateDataBeli('U','BL');
                SpeedButton1.Click;
             end
             else
             begin
                ShowMessage('Kode barang tidak boleh kosong !');
                ActiveControl:=KodeBrg;
             end;
         end;
   end
   else
     ShowMessage('Tanggal Periode Tidak Sesuai !');
end;

procedure TFrSPKLuar.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
  ClearPanelDetail;
end;

procedure TFrSPKLuar.NoDOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Escape then
  begin
     mValid :=false;
     SpeedButton1.Click;
  end;
end;

procedure TFrSPKLuar.FormDestroy(Sender: TObject);
begin
  FrSPKLuar:=nil;
end;

procedure TFrSPKLuar.KodeGdgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrSPKLuar.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrSPKLuar.BPrevClick(Sender: TObject);
begin
        Hapus_Daftar_Nomor('SPKL',NoBukti.Text,iduser);
        RefreshAll;
        ActiveControl:=TANGGAL;
        Hapus_Daftar_Nomor('SPKL',NoBukti.Text,iduser);

        FormShow(self);
end;

procedure TFrSPKLuar.BNextClick(Sender: TObject);
begin
        Hapus_Daftar_Nomor('SPKL',NoBukti.Text,iduser);
        RefreshAll;
        ActiveControl:=TANGGAL;
        Hapus_Daftar_Nomor('SPKL',NoBukti.Text,iduser);

        FormShow(self);

end;

procedure TFrSPKLuar.KodeBrgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    mValid:=False;
    SpeedButton1.Click;
  end;
end;

procedure TFrSPKLuar.SpeedButton8Click(Sender: TObject);
begin
  frxReport1.LoadFromFile(currDir+'Nota\NotaProduksiSPK.fr3');
  frxReport1.DesignReport;
end;

procedure TFrSPKLuar.KdBrgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrSPKLuar.KdBrgExit(Sender: TObject);
begin
  if mValid Then
  begin
    if length(KdBrg.Text)=0 then TampilIsiBrgJadi else
    begin
      if DataBersyarat('Select A.KodeBrg, A.NamaBrg, Isnull(b.Qnt,0) QntSaldo '+
                       'from dbBarang A '+
                       'left Outer Join (select Kodebrg,Sum(SaldoQnt)Qnt from DBStockBrg a Left Outer Join dbGudang b On a.KodeGdg=b.KodeGdg where B.Nama not Like ''%Bahan%'' and Bulan='+PeriodBln+' and Tahun='+PeriodThn+' group by kodebrg)b On b.kodebrg=a.KodeBrg ' +
                       'where a.isAktif=1 and A.KodeGrp=''BJ'' and (a.KodeBrg like :0 or a.NamaBrg like :1) '+
                       'order by A.KodeBrg',['%'+KdBrg.Text+'%','%'+KdBrg.Text+'%'],Dm.Qucari)=True then
      begin
        with DM.QuCari do
        begin
           KdBrg.Text:=fieldbyname('KodeBrg').AsString;
           NamaBrg.Caption:='[..'+fieldbyname('NamaBrg').AsString+'..]';
           //QntJ.AsFloat:=0.00;
           //ActiveControl:=QntJ;
        end;
      end
      else TampilIsiBrgJadi;
    end;
    IsiSatuanJ;
  end;
end;


procedure TFrSPKLuar.TanggalChange(Sender: TObject);
begin
  mUbahHd:=True;
end;

procedure TFrSPKLuar.NoUrutEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrSPKLuar.IsiSatuan;
begin
  LNamaSat.Caption:=IsiSatuanBrg(KodeBrg.Text, mNamaSatuan, mIsiSatuan);
end;

procedure TFrSPKLuar.IsiSatuanJ;
begin
  NmSat.Caption:=IsiSatuanBrg(KdBrg.Text, mNamaSatuan, mIsiSatuan);
  //NosatJ.Value :=1;
end;

procedure TFrSPKLuar.KodeBrgEnter(Sender: TObject);
begin
mValid:=True;
end;

procedure TFrSPKLuar.KodeBrgExit(Sender: TObject);
begin
  if mValid Then
  begin
     if length(KodeBrg.Text)=0 then TampilIsiBarang else
        begin
          if DataBersyarat('Select A.KodeBrg, A.NamaBrg, Isnull(b.Qnt,0) QntSaldo '+
                           'from dbBarang A '+
                           'left Outer Join (select Kodebrg,Sum(SaldoQnt)Qnt from DBStockBrg a Left Outer Join dbGudang b On a.Kodegdg=b.Kodegdg where b.Nama Like ''%Bahan%'' and Bulan='+PeriodBln+' and Tahun='+PeriodThn+' group by kodebrg)b On b.kodebrg=a.KodeBrg ' +
                           'where  a.isAktif=1 and (a.KodeBrg like :0 or a.NamaBrg like :1) '+
                           'order by A.KodeBrg ',['%'+KodeBrg.Text+'%','%'+KodeBrg.Text+'%'],Dm.Qucari)=true then
          begin
            with DM.QuCari do
            begin
             KodeBrg.Text:=fieldbyname('KodeBrg').AsString;
             LNamaBrg.Caption:='[ '+fieldbyname('NamaBrg').AsString+' ]';
             Qnt.AsFloat:=fieldbyname('QntSaldo').AsFloat;
             ActiveControl:=Qnt;
            end;
          end
          else TampilIsiBarang;
        end;
         IsiSatuan;   
      end;

end;
procedure TFrSPKLuar.TampilIsiGudang;
begin

end;

procedure TFrSPKLuar.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
if CompareText(varName,'iduser')=0 then
        value:=IDUser;
end;

procedure TFrSPKLuar.frxReport1AfterPrintReport(Sender: TObject);
begin
NilaiCetak('CetakKe','DBSPK',nobukti.Text);
end;

procedure TFrSPKLuar.NoUrutExit(Sender: TObject);
var myTempNoUrut: String;
begin
  if mValid then
  begin
    myTempNoUrut:=NoUrut.Text;
    NoUrut.Text:=RightStr('00000'+myTempNoUrut,4);
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

procedure TFrSPKLuar.NoSatJExit(Sender: TObject);
var xsat:string;xisi:Double;
begin
  DataBersyarat('Select * from Dbbarang where kodebrg=:0',[KdBrg.text],Dm.Qucari);
  if NoSatJ.AsInteger=1 then
  begin
    xsat:=Dm.Qucari.Fieldbyname('Sat1').asstring;
    xisi:=Dm.Qucari.Fieldbyname('Isi1').AsFloat ;
  end
  else if nosatj.value=2 then
  begin
    xsat:=Dm.Qucari.Fieldbyname('Sat2').asstring;
    xisi:=Dm.Qucari.Fieldbyname('Isi2').asfloat ;
  end;
  {
  if  DataBersyarat('Select * from DbBOM where KOdebrgJd =:0',[KdBrg.text],Dm.Qucari2) =True then
  begin
    if CekPeriode(IDUser, Tanggal.Date)=True then
         begin
           while not Dm.Qucari2.Eof do
           Begin
            ClearPanelDetail;
            KOdebrg.Text :=Dm.QuCari2.Fieldbyname('KOdebrgBhn').asstring;
            Qnt.Value:= Dm.QuCari2.Fieldbyname('Qnt').AsFloat * QntJ.Value * xisi;
            NoSat.Value:=1;
            //UpdateDataBeli('I','BL');
            IsiSatuan;
            BM:=QuBeli.GetBookmark;
             With Sp_Beli do
             begin
                 Parameters.Refresh;
                 Parameters[1].Value:='I';
                 Parameters[2].Value:=NoBukti.Text;
                 Parameters[3].Value:=TANGGAL.Date;
                 Parameters[4].Value:=KdBrg.Text;
                 Parameters[5].Value:=QntJ.AsFloat;
                 if Parameters[1].Value='I' then
                 Parameters[6].Value:=CSPK.Checked;
                 Parameters[7].Value:=NosatJ.AsInteger;
                 Parameters[8].Value:=xsat;
                 Parameters[9].Value:=xisi;
                 Parameters[10].Value:=KodeBrg.Text;
                 if Parameters[1].Value='I' then
                 Parameters[11].Value:=QuBeliurut.AsInteger;
                 Parameters[12].Value:=mIsiSatuan[NoSat.AsInteger];
                 Parameters[13].Value:=Qnt.AsFloat;
                 Parameters[14].Value:=NoSat.AsInteger;
                 Parameters[15].Value:=mNamaSatuan[NoSat.AsInteger];
                 Parameters[16].Value:=NoUrut.Text;
                 Parameters[17].Value:=NoBatch.Text;
                 Parameters[18].Value:=TglExpired.Date;
                 try
                    ExecProc;
                     if Parameters[1].Value='I' then
                    begin
                      TampilData(NOBUKTI.Text);
                      //QuBeli.Locate('KodeBrg',KodeBrg.Text,[LOP,LOC]);
                      LoggingData(IDUser,'I','SPK',NoBukti.Text,
                              ' Barang = '+QuotedStr(KodeBrg.Text)+
                              ' Qnt = '+QuotedStr(Qnt.Text));
                    end ;
                 except
                   showmessage('Proses Gagal !                   ') ;

                 end;
              TampilData(NoBukti.Text);
             end;
            Dm.Qucari2.Next;
           End;
         End
     else ShowMessage('Tanggal Periode Tidak Sesuai !');
  End
  Else
    Begin
    ShowMessage('Data B.O.M untuk Barang Jadi : '+KdBrg.Text+' Tidak Terdaftar');
    End;
 ActiveControl:=dxDBGrid1;}
end;

procedure TFrSPKLuar.KodeBOMExit(Sender: TObject);
var xIsiBrgJadi: Real;
begin
  if mValid Then
  begin
    if (length(KodeBOM.Text)=0) and
      (DataBersyarat('Select A.* from dbBOM A where A.KodeBrg='+QuotedStr(KdBrg.Text)+
      ' and A.KodeBOM=:0 '+
      ' order by A.KodeBOM ',
      [KodeBOM.Text],DM.QuCari)=True) then
    begin
      KodeBOM.Text:=DM.QuCari.FieldByName('KodeBOM').AsString;
    end else
    begin
      KodeBrows:=50402;
      Application.CreateForm(TFrBrows, FrBrows);
      FrBrows.NoKira:=KdBrg.Text;
      FrBrows.IsiData:=KodeBOM.Text;
      FrBrows.ShowModal;
      if FrBrows.ModalResult=mrOK then
      begin
        KodeBOM.Text:=FrBrows.QuBrows.FieldByName('KodeBOM').AsString;
      end else
        ActiveControl:=KodeBOM;
    end;
    {
    if KodeBOM.Text<>'' then
    begin
      if CekPeriode(IDUser,Tanggal.Date)=True then
      begin
        IsiBahanDariBOM;
      end else
      begin
        MsgTanggalTidakSesuaiPeriode;
      end;
    end;
    }
  end;
end;

procedure TFrSPKLuar.Button1Click(Sender: TObject);
begin
  Application.CreateForm(TFrTempStockBOM, FrTempStockBOM);
  FrTempStockBOM.KodeBrg.Text:=KdBrg.Text;
  DataBersyarat('select * from dbBarang where KodeBrg=:0',[KdBrg.Text],DM.QuCari);
  if NoSatJ.AsInteger=1 then
    FrTempStockBOM.Qnt.AsCurrency:=QntJ.AsCurrency
  else
    FrTempStockBOM.Qnt.AsCurrency:=QntJ.AsCurrency*DM.QuCari.FieldByName('Isi2').AsCurrency;
  FrTempStockBOM.NamaBrg.Caption:='[ '+DM.QuCari.FieldByName('NamaBrg').AsString+' ]';
  FrTempStockBOM.LSatuanQnt.Caption:='[ '+DM.QuCari.FieldByName('Sat1').AsString+' ]';
  FrTempStockBOM.KodeBOM.Text:=KodeBOM.Text;
  FrTempStockBOM.mNoSPK_TempStockBOM:=NoBukti.Text;
  FrTempStockBOM.ShowModal;
  if FrTempStockBOM.ModalResult=mrOK then
  begin
    IsiBahanDariCekBOM;
  end;
end;

end.
