unit FrmRSPB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, DBCtrls, ImgList, RxGIF, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, frxClass, frxDMPExport,
  frxDBSet, strUtils,DateUtils, frxDesgn, frxBarcode,Variants, dxmdaset,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxEdit,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView,
  cxGridLevel, cxGrid;

type
  TFrRSPB = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    QuBeli: TADOQuery;
    Sp_Beli: TADOStoredProc;
    DsQuBeli: TDataSource;
    QuUpdatedbbeli: TADOQuery;
    Label10: TLabel;
    Panel2: TPanel;
    Shape4: TShape;
    Label5: TLabel;
    Label12: TLabel;
    NoUrut: TEdit;
    NoBukti: TEdit;
    LNamaBrg: TRxLabel;
    LKodeBrg: TLabel;
    KodeBrg: TEdit;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    KodeCust: TEdit;
    Label4: TLabel;
    NoSPP: TEdit;
    Label13: TLabel;
    Tanggal: TDateEdit;
    NoPolKend: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Qnt: TPBNumEdit;
    LSatuan: TLabel;
    Qnt2: TPBNumEdit;
    LSatuan2: TLabel;
    Shape6: TShape;
    LNamaCustSupp: TLabel;
    LAlamatCustSupp: TLabel;
    PanelShow1: TPanel;
    Cetak: TSpeedButton;
    HapusBtn: TSpeedButton;
    KoreksiBtn: TSpeedButton;
    TambahBtn: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Nosat: TComboBox;
    LSatuan1: TLabel;
    Qnt1: TPBNumEdit;
    Label1: TLabel;
    NoSC: TEdit;
    frxReport1: TfrxReport;
    frxDBCetak: TfrxDBDataset;
    QuReport: TADOQuery;
    Label6: TLabel;
    Container: TEdit;
    NoContainer: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    NoSeal: TEdit;
    Label3: TLabel;
    NetW: TPBNumEdit;
    Label9: TLabel;
    GrossW: TPBNumEdit;
    Label11: TLabel;
    NamaBrg: TMemo;
    RekapBrgBtn: TSpeedButton;
    Label14: TLabel;
    Catatan: TMemo;
    QuReportLampiran: TADOQuery;
    frxDBCetakLampiran: TfrxDBDataset;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBBandedTableView;
    TvDetailSPB: TcxGridDBBandedTableView;
    cxGrid1Level2: TcxGridLevel;
    tvMasterKODEBRG: TcxGridDBBandedColumn;
    tvMasterNamaBrg: TcxGridDBBandedColumn;
    tvMasterJns_Kertas: TcxGridDBBandedColumn;
    tvMasterUkr_Kertas: TcxGridDBBandedColumn;
    tvMasterQNT: TcxGridDBBandedColumn;
    tvMasterQNT2: TcxGridDBBandedColumn;
    tvMasterSAT_1: TcxGridDBBandedColumn;
    tvMasterSAT_2: TcxGridDBBandedColumn;
    tvMasternetW: TcxGridDBBandedColumn;
    tvMasterGrossW: TcxGridDBBandedColumn;
    tvMasterGSM: TcxGridDBBandedColumn;
    QuDetailSPB: TADOQuery;
    DSQuDetailSPB: TDataSource;
    TvDetailSPBNoPallet: TcxGridDBBandedColumn;
    TvDetailSPBNOROLL: TcxGridDBBandedColumn;
    TvDetailSPBNOLOT: TcxGridDBBandedColumn;
    TvDetailSPBNetW: TcxGridDBBandedColumn;
    TvDetailSPBGrossW: TcxGridDBBandedColumn;
    TvDetailSPBkodebrg: TcxGridDBBandedColumn;
    TvDetailSPBNamabrg: TcxGridDBBandedColumn;
    TvDetailSPBSat_1: TcxGridDBBandedColumn;
    TvDetailSPBSat_2: TcxGridDBBandedColumn;
    TvDetailSPBQnt: TcxGridDBBandedColumn;
    TvDetailSPBQnt2: TcxGridDBBandedColumn;
    TvDetailSPBKeterangan: TcxGridDBBandedColumn;
    TvDetailSPBMyKey: TcxGridDBBandedColumn;
    QuDetailSPBurut: TIntegerField;
    QuDetailSPBNOENQDET: TStringField;
    QuDetailSPBUrutENQ: TIntegerField;
    QuDetailSPBNoPallet: TStringField;
    QuDetailSPBNOROLL: TStringField;
    QuDetailSPBNOLOT: TStringField;
    QuDetailSPBNetW: TBCDField;
    QuDetailSPBGrossW: TBCDField;
    QuDetailSPBkodebrg: TStringField;
    QuDetailSPBNamabrg: TStringField;
    QuDetailSPBSat_1: TStringField;
    QuDetailSPBSat_2: TStringField;
    QuDetailSPBQnt: TBCDField;
    QuDetailSPBQnt2: TBCDField;
    QuDetailSPBNosat: TWordField;
    QuDetailSPBISI: TBCDField;
    QuDetailSPBKeterangan: TStringField;
    QuDetailSPBMyKey: TStringField;
    Label15: TLabel;
    NoSPB: TEdit;
    Label18: TLabel;
    NoShip: TEdit;
    Label20: TLabel;
    TglSPB: TDateEdit;
    Label21: TLabel;
    TglSPP: TDateEdit;
    Label22: TLabel;
    TglSC: TDateEdit;
    TglShip: TDateEdit;
    Label23: TLabel;
    QuBeliNOBUKTI: TStringField;
    QuBeliNOURUT: TStringField;
    QuBeliTANGGAL: TDateTimeField;
    QuBeliKODECUSTSUPP: TStringField;
    QuBeliNamaCustSupp: TStringField;
    QuBeliAlamat: TStringField;
    QuBeliKota: TStringField;
    QuBeliNoSPB: TStringField;
    QuBeliTglSPB: TDateTimeField;
    QuBeliNoSPP: TStringField;
    QuBeliTglSPP: TDateTimeField;
    QuBeliNoPolKend: TStringField;
    QuBeliContainer: TStringField;
    QuBeliNoContainer: TStringField;
    QuBeliNoSeal: TStringField;
    QuBeliISCETAK: TBooleanField;
    QuBeliIDUser: TStringField;
    QuBeliURUT: TIntegerField;
    QuBeliKODEBRG: TStringField;
    QuBeliNamaBrg: TStringField;
    QuBeliJns_Kertas: TStringField;
    QuBeliUkr_Kertas: TStringField;
    QuBeliQNT: TBCDField;
    QuBeliQNT2: TBCDField;
    QuBeliSAT_1: TStringField;
    QuBeliSAT_2: TStringField;
    QuBeliNoSat: TIntegerField;
    QuBeliISI: TBCDField;
    QuBeliUrutSPB: TIntegerField;
    QuBelinetW: TBCDField;
    QuBeliGrossW: TBCDField;
    QuBeliNamabrgkom: TStringField;
    QuBeliGSM: TBCDField;
    QuBeliMykey: TStringField;
    ComboBox1: TComboBox;
    QuBeliNOSO: TStringField;
    QuBeliTglSO: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure TampilData(No_Bukti:String);
    procedure UpdateDataBeli(Choice:Char;Kodet:String);
    Procedure AmBilDataBeli;
    procedure FormCreate(Sender: TObject);
    procedure ClearPanelDetail;
    procedure RefreshAll;
    procedure KoreksiBtnClick(Sender: TObject);
    procedure wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure HapusBtnClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure NoUrutKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    Function CheckFormMaster:boolean;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure NoUrutChange(Sender: TObject);
    procedure KodeBrgEnter(Sender: TObject);
    procedure NoUrutEnter(Sender: TObject);
    procedure KodeBrgExit(Sender: TObject);
    procedure TambahBtnClick(Sender: TObject);
    procedure KodeBrgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Qnt2Change(Sender: TObject);
    procedure TanggalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TanggalChange(Sender: TObject);
    procedure TanggalExit(Sender: TObject);
    procedure NosatEnter(Sender: TObject);
    procedure NosatChange(Sender: TObject);
    procedure CetakClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure NamaBrgEnter(Sender: TObject);
    procedure NamaBrgExit(Sender: TObject);
    procedure RekapBrgBtnClick(Sender: TObject);
    procedure NoUrutExit(Sender: TObject);
    procedure CatatanEnter(Sender: TObject);
    procedure CatatanExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure tvMasterFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure NoSPBExit(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure NoSPBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    mUrut, mUrutSPP,MLembarKe,IsPPN: Integer;
    mUbahHd, mUbahHdDet, mValid, mExit,CrNomor: Boolean;
    mNilaiEnter, mIsiBrg: Real;
    mSat_1, mSat_2, mStrMsg,XCustSupp: String;
    function  CekSudahAdaProsesSelanjutnya: Boolean;
    procedure TampilanQntSatuan(pNilai: Integer);
    procedure TampilIsiBarang;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure UpdatedbBeli;
    procedure IsiNoBuktiBaru;
    procedure TampilIsiSPB;
  public
    { Public declarations }
    Sat : String;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel, xModalKoreksi, xStatus: Boolean;
    Flagmenu : integer;
  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrRSPB: TFrRSPB;
  TipeTrans,PlusPPN,Nomor,Model:String;
  YY,MM,DD : Word;
  S:array[0..255]of char;
  bm,GBM : TBookmark;

implementation
uses FrmBrows, MyProcedure, MyGlobal, MyModul, FrmMainRSPB, FrmRSPBKirim;
{$R *.DFM}

function TFrRSPB.CekSudahAdaProsesSelanjutnya: Boolean;
var xStrMsg, xStrMsgDet: String;
begin
  xStrMsg:='';
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select distinct NoBukti from DBRBELIDET ');
    SQL.Add('where NoPBL='+QuotedStr(QuBeliNobukti.AsString)+' and UrutPBL='+IntToStr(QuBeliurut.AsInteger));
    Open;
    xStrMsgDet:='';
    if not IsEmpty then
    begin
      while not Eof do
      begin
        if xStrMsgDet='' then xStrMsgDet:=FieldByName('NoBukti').AsString
          else xStrMsgDet:=xStrMsgDet+', '+FieldByName('NoBukti').AsString;
        Next;
      end;
      if xStrMsg='' then
        xStrMsg:=xStrMsg+'Retur Barang No. Bukti : '+xStrMsgDet
      else xStrMsg:=xStrMsg+chr(13)+'Retur Barang No. Bukti : '+xStrMsgDet;
    end;
  end;
  mStrMsg:=xStrMsg;
  if xStrMsg='' then
  begin
    Result:=False
  end else
  begin
    Result:=True;
  end;
end;

procedure TFrRSPB.TampilanQntSatuan(pNilai: Integer);
begin
  if pNilai=0 then
  begin
    Qnt.Visible:=True;
    Qnt2.Visible:=False;
  end else
  begin
    Qnt.Visible:=False;
    Qnt2.Visible:=True;
  end;
  Nosat.Visible:=Qnt.Visible;
  LSatuan.Visible:=Qnt.Visible;
  LSatuan2.Visible:=Qnt2.Visible;
  Qnt1.Visible:=Qnt2.Visible;
  LSatuan1.Visible:=Qnt2.Visible;
end;

procedure TFrRSPB.TampilIsiBarang;
begin
  KodeBrows:=404302;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.NoKira:=NoSPB.Text;
  FrBrows.IsiData:=KodeBrg.Text;
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) then
  begin
    with FrBrows.QuBrows do
    begin
      KodeBrg.Text:=FieldByName('KodeBrg').AsString;
      NamaBrg.Text:=FieldByName('NamaBrgkom').AsString;
      LNamaBrg.Caption:='[ '+FieldByName('NamaBrg').AsString+' ]';
      mUrutSPP:=FieldByName('Urut').AsInteger;
      mSat_1:=FieldByName('Sat_1').AsString;
      mSat_2:=FieldByName('Sat_2').AsString;
      mIsiBrg:=FieldByName('Isi').AsFloat;
      LSatuan2.Caption:='[ '+mSat_2+' ]';
      LSatuan1.Caption:='[ '+mSat_1+' ]';
      Qnt2.Value:=FieldByName('Qnt2Sisa').AsFloat;
      Qnt1.Value:=FieldByName('QntSisa').AsFloat;
      Nosat.Items.Clear;
      Nosat.Items.Add('Pilih Satuan');
      Nosat.Items.Add(mSat_1);
      Nosat.Items.Add(mSat_2);
      Nosat.ItemIndex := FieldByName('nosat').AsInteger;
      Qnt2.Enabled:= FieldByName('NFIX').AsBoolean;
      if FieldByName('nosat').AsInteger=1 then
      begin
         Qnt.Value:=FieldByName('QntSisa').AsFloat;
         LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value/mIsiBrg)+' '+mSat_2+' ]'
      end
      else
      if FieldByName('nosat').AsInteger=2 then
      begin
         Qnt.Value:=FieldByName('Qnt2Sisa').AsFloat;
         LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value*mIsiBrg)+' '+mSat_1+' ]';
      end;
      NetW.Value:=FieldByName('Netw').AsFloat;
      GrossW.Value:=FieldByName('GrossW').AsFloat;
    end;
  end
  else
    ActiveControl:=KodeBrg;
end;

procedure TFrRSPB.TampilIsiSPB;
begin
     KodeBrows:=404301;
     Application.CreateForm(TFrBrows, FrBrows);
     FrBrows.IsiData:=NoSPB.Text;
     FrBrows.NoKira :=IntToStr(flagmenu);
     FrBrows.ShowModal;
     if (FrBrows.ModalResult=mrOk) then
     begin
       with FrBrows.QuBrows do
       begin
         if not IsEmpty then
         begin
           NoSPB.Text:=FieldByName('NoSPB').AsString;
           TglSPB.Date:=FieldByName('TglSPB').AsDateTime;
           NoSPP.Text:=FieldByName('NoSPP').AsString;
           TglSPP.Date:=FieldByName('TglSPP').AsDateTime;
           NoSC.Text:=FieldByName('NoSC').AsString;
           TglSC.Date:=FieldByName('TglSC').AsDateTime;
           //NoShip.Text:=FieldByName('NoShip').AsString;
           //TglShip.Date:=FieldByName('TglShip').AsDateTime;
           KodeCust.Text:=FieldByName('KodeCustSupp').AsString;
           LNamaCustSupp.Caption:=FieldByName('NamaCustSupp').AsString;
           LAlamatCustSupp.Caption:=FieldByName('Alamat').AsString;
           IsPPN:=FieldByName('FlagTipe').AsInteger;
           XCustSupp:= FieldByName('KodeCustSUpp').AsString;
            CrNomor:=True;
         end
         else ActiveControl := NoSPB;
       end;
     end
     else ActiveControl:=NoSPB;
end;

procedure TFrRSPB.TampilTombolDetail(pNilai: Boolean);
begin
 //PanelShow1.Visible:=not pNilai;
  //PanelShow2.Visible:=not pNilai;
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  //Panel3.Enabled:=pNilai;
end;

procedure TFrRSPB.UpdatedbBeli;
begin
  if (not QuBeli.IsEmpty) and (mUbahHd=True) then
  begin
    with QuUpdatedbBeli do
    begin
       Close;
       Sql.Clear;
       if Flagmenu=0 then
          SQL.Add('Update dbRSPB')
       else
          SQL.Add('Update dbRSPBBHN');
       SQL.Add('Set Tanggal=:0, NoSPB=:1, NoPolKend=:2, Container=:3, NoContainer=:4, NoSeal=:5, KodeCustSupp=:6, Catatan=:7 ');
       SQL.Add('Where NoBukti='+QuotedStr(NoBukti.Text));
       Prepared;
       Parameters[0].Value := Tanggal.Date;
       Parameters[1].Value := NoSPB.Text;
       Parameters[2].Value := NoPolKend.Text;
       Parameters[3].Value := Container.Text;
       Parameters[4].Value := NoContainer.Text;
       Parameters[5].Value := NoSeal.Text;
       Parameters[6].Value := KodeCust.Text;
       Parameters[7].Value := Catatan.Lines.Text;
       try
         ExecSQL;
       except
       end;
       mUbahHd:=False; mUbahHdDet:=False;
    end;
    TampilData(NoBukti.Text);
  end;
end;

procedure TFrRSPB.TampilData(No_Bukti:String);
begin
  QuBeli.Close;
  QuBeli.SQL.Strings[2]:='select @NoBukti='+QuotedStr(No_Bukti);
  QuBeli.Open;
  NoSPB.Enabled := QuBeli.IsEmpty;
end;

procedure TFrRSPB.IsiNoBuktiBaru;
begin
  //NoUrut.Enabled:=True;
  DecodeDate(Date,YY,MM,DD);
  If DayOfTheMonth(Date)<=DD then
     DD:=DayOfTheMonth(Date);
  try
    TANGGAL.Date := EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),DD);
  except
    TANGGAL.Date:=EndOfAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln));
  end;
  //Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal.Date);
  if IsPPN=0 then
  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal.Date,Xcustsupp,False)
  else if IsPPN=1 then
  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal.Date);
  NoUrut.Text:=NomorBukti;
  NOBUKTI.Text:=Nomor;
end;

Function TFrRSPB.CheckFormMaster:boolean;
begin
   CheckFormMaster:=true;
end;

procedure TFrRSPB.ClearPanelDetail;
begin
   KodeBrg.Text:='';
   LNamaBrg.Caption:='[ . . . ]';
   LSatuan2.Caption:='[ . . . ]';
   LSatuan1.Caption:='[ . . . ]';
   LSatuan.Caption:='[ . . . ]';
   Qnt.AsFloat:=0.00;
   Qnt2.AsFloat:=0.00;
   Qnt1.AsFloat:=0.00;
end;

procedure TFrRSPB.RefreshAll;
var i:integer;
begin
   mValid:=False;
   mUbahHd:=False; mUbahHdDet:=False;
   {for i:= 0 to Panel1.ControlCount-1 do
   begin
      if (Panel1.Controls[i] is TEdit) then
         (Panel1.Controls[i] as TEdit).Clear;
   end;}
   for i:= 0 to Panel3.ControlCount-1 do
   begin
      if (Panel3.Controls[i] is TEdit) then
         (Panel3.Controls[i] as TEdit).Clear;
      if (Panel3.Controls[i] is TPBNumEdit) then
         (Panel3.Controls[i] as TPBNumEdit).Clear;
   end;
   for i:= 0 to Panel1.ControlCount-1 do
   begin
      if (Panel1.Controls[i] is TEdit) then
         (Panel1.Controls[i] as TEdit).Clear;
      if (Panel1.Controls[i] is TPBNumEdit) then
         (Panel1.Controls[i] as TPBNumEdit).Clear;
   end;
   //LNamaCustSupp.Caption:='';
   //LAlamatCustSupp.Caption:='';
   ClearPanelDetail;
end;

procedure TFrRSPB.UpdateDataBeli(Choice:Char;Kodet:String);
begin
  BM:=QuBeli.GetBookmark;
  With Sp_Beli do
  begin
    close;
    Prepared;
    Parameters[1].Value:=Choice;
    Parameters[2].Value:=NoBukti.Text;
    if Choice='D' then
    begin
      Parameters[12].Value:=QuBeliURUT.AsInteger;
    end
    else
    begin
      Parameters[3].Value:=NoUrut.Text;
      Parameters[4].Value:=Tanggal.Date;
      Parameters[5].Value:=NoSPB.Text;
      Parameters[6].Value:=KodeCust.Text;
      Parameters[7].Value:=NoPolKend.Text;
      Parameters[8].Value:=Container.Text;
      Parameters[9].Value:=NoContainer.Text;
      Parameters[10].Value:=NoSeal.Text;
      Parameters[11].Value:='';
      Parameters[12].Value:=mUrut;
      Parameters[13].Value:=mUrutSPP;
      Parameters[14].Value:=KodeBrg.Text;
     { if Nosat.Visible=True then
      begin
        if Nosat.ItemIndex=1 then
        begin
          Parameters[15].Value:=Qnt.AsFloat;
          Parameters[16].Value:=Qnt.AsFloat/mIsiBrg;
        end
        else if Nosat.ItemIndex=2 then
        begin
          Parameters[15].Value:=Qnt.AsFloat*mIsiBrg;
          Parameters[16].Value:=Qnt.AsFloat;
        end;
      end else }
      begin
        Parameters[15].Value:=Qnt1.AsFloat;
        Parameters[16].Value:=Qnt2.AsFloat;
      end;
      Parameters[17].Value:=mSat_1;
      Parameters[18].Value:=mSat_2;
      Parameters[19].Value:=Nosat.ItemIndex;
      Parameters[20].Value:=mIsiBrg;
      Parameters[21].Value:=NetW.Value;
      Parameters[22].Value:=GrossW.Value;
      Parameters[23].Value:=IDUser;
      if QuBeli.IsEmpty then
        Parameters[24].Value:=0
      else
        Parameters[24].Value:=1;
      Parameters[25].Value:=NamaBrg.Text;  
    end;
    Parameters[26].Value:=Flagmenu;
    Parameters[27].Value:=IsPPN;
    try
      ExecProc;
      if Choice='I' then
      begin
        TampilData(NoBukti.Text);
        QuBeli.Locate('KodeBrg',KodeBrg.Text,[LOP,LOC]);
        LoggingData(IDUser,'I',TipeTrans, NOBUKTI.Text,
          'Kode Brg = '+KodeBrg.Text);
      end else if Choice='U' then
      begin
        QuBeli.Requery;
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
        LoggingData(IDUser,'U',TipeTrans, NoBukti.Text,
          'Kode Brg = '+KodeBrg.Text);
      end
      Else if Choice='D' then
      begin
        LoggingData(IDUser,'D',TipeTrans ,NoBukti.Text,
          'Kode Brg = '+QuBeliKODEBRG.AsString);
        TampilData(NoBukti.Text);
      end;
    except
      MsgProsesGagal(Choice);
    end;
  end;
end;

Procedure TFrRSPB.AmBilDataBeli;
begin
   if not QuBeli.IsEmpty then
   begin

      NoBukti.Text:=QuBeliNOBUKTI.AsString;
      Tanggal.Date:=QuBeliTanggal.AsDateTime;
      KodeCust.Text:=QuBeliKODECUSTSUPP.AsString;
      LNamaCustSupp.Caption:=QuBeliNamaCustSupp.AsString;
      LAlamatCustSupp.Caption:=QuBeliAlamat.AsString+chr(13)+QuBeliKota.AsString;
      NoSC.Text:=QuBeliNOSO.Text;
      TglSC.Date := QuBeliTglSO.AsDateTime;
      NoSPB.Text:=QuBeliNOSPB.AsString;
      TglSPB.Date := QuBeliTglSPB.AsDateTime;
      NoSPP.Text := QuBeliNoSPP.AsString;
      TglSPP.Date := QuBeliTglSPP.AsDateTime;
      //NoShip.Text := QuBeliNoship.AsString;
      //TglShip.Date := QuBeliTglShip.AsDateTime;
      NoPolKend.Text:=QuBeliNoPolKend.AsString;
      Container.Text:=QuBeliContainer.AsString;
      NoContainer.Text:=QuBeliNoContainer.AsString;
      NoSeal.Text:=QuBeliNoSeal.AsString;
   end;
end;

// PROCEDURE DAN FUNCTION MILIK DELPHI

procedure TFrRSPB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if mExit=true then
  begin
     FrMainRSPB.ToolButton10.Click;
     Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
     Action:=cafree;
  end
  else
  begin
     Action:=caNone;
  end;
end;

procedure TFrRSPB.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then SendMessage(Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrRSPB.FormShow(Sender: TObject);
begin
  RefreshAll;
  xModalKoreksi:=FrMainRSPB.ModalKoreksi;
  Flagmenu := FrMainRSPB.mMainRSPB_Flagmenu;
  If xModalKoreksi = False then
  begin
    //IsiNoBuktiBaru;
    TampilData(NoBukti.Text);
    //NoUrut.Enabled:=True;
    ActiveControl:=NoSPB;
  end
  else
  Begin
    NOBUKTI.Text:=gTempNoBukti;
    //Nourut.Text  := FrMainBP.QuMasterBPNoUrut.AsString;
    TampilData(NoBukti.Text);
    AmBilDataBeli;
    NoUrut.Text:=QuBeliNOURUT.AsString;
    Daftar_Nomor(TipeTrans,NoUrut.Text,NoBukti.Text,1);
    NoUrut.Enabled:=False;
    Tanggal.Enabled:=CekPeriode(IDUser,Tanggal.Date);
    if Tanggal.CanFocus then
      ActiveControl:=Tanggal
    else ActiveControl:=cxGrid1;
  end;
end;

procedure TFrRSPB.FormCreate(Sender: TObject);
begin
  TipeTrans:='RSPB';
  Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
  {Qnt2.Top:=Qnt.Top;
  Qnt2.Left:=Qnt.Left;
  LSatuan2.Top:=Qnt2.Top+4;
  LSatuan2.Left:=Qnt2.Left+Qnt2.Width+8;
  Qnt1.Top:=Qnt2.Top;
  Qnt1.Left:=Qnt2.Left+Qnt2.Width+70;
  LSatuan1.Top:=Qnt1.Top+4;
  LSatuan1.Left:=Qnt1.Left+Qnt1.Width+8;}
end;

procedure TFrRSPB.KoreksiBtnClick(Sender: TObject);
begin
    mValid:=false;
    Model:='koreksi';
    // data yang di update
    if QuBeli.IsEmpty=false then
    begin
      TampilTombolDetail(True);
      mUrut:=QuBeliURUT.AsInteger;
      mUrutSPP:=QuBeliUrutSPB.AsInteger;
      NamaBrg.Text:=QuBeliNamaBrgKom.AsString;
      KodeBrg.Text:=QuBeliKODEBRG.AsString;
      KodeBrg.Enabled:=False;
      LNamaBrg.Caption:='[ '+QuBeliNamaBrg.AsString+' ]';
      LSatuan2.Caption:='[ '+QuBeliSat_2.AsString+' ]';
      mSat_2:=QuBeliSat_2.AsString;
      LSatuan1.Caption:='[ '+QuBeliSat_1.AsString+' ]';
      mSat_1:=QuBeliSat_1.AsString;
      mIsiBrg:=QuBeliIsi.AsFloat;
      Qnt2.Value:=QuBeliQnt2.AsFloat;
      Qnt1.Value:=QuBeliQnt.AsFloat;
      Nosat.Items.Clear;
      Nosat.Items.Add('Pilih Satuan');
      Nosat.Items.Add(mSat_1);
      Nosat.Items.Add(mSat_2);
      Nosat.ItemIndex := QuBeliNosat.AsInteger;
      if QuBeliNosat.AsInteger=1 then
      begin
         Qnt.Value:=Qubeli.FieldByName('Qnt').AsFloat;
         LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value/mIsiBrg)+' '+mSat_2+' ]'
      end
      else
      if QuBeliNosat.AsInteger=2 then
      begin
         Qnt.Value:=Qubeli.FieldByName('Qnt2').AsFloat;
         LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value*mIsiBrg)+' '+mSat_1+' ]';
      end;
      NetW.Value:=QuBelinetW.AsFloat;
      GrossW.Value:=QuBeliGrossW.AsFloat;
      if Qnt.CanFocus then
        Qnt.SetFocus;
      if Qnt2.CanFocus then
        Qnt2.SetFocus;

    end
    else
    begin
      MsgKoreksiDataKosong;
      ActiveControl:=cxGrid1;
    end;
end;

procedure TFrRSPB.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
    RefreshAll;
    if xModalKoreksi then
    begin
      mExit:=True;
      Close;
    end
    else
    begin
     // IsiNoBuktiBaru;
      TampilData(NOBUKTI.Text);
      ActiveControl:=NosPB;
    end;
    FrMainRSPB.GetData(strtoint(PeriodBln),StrToInt(PeriodThn));
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

procedure TFrRSPB.HapusBtnClick(Sender: TObject);
begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      if QuBeli.IsEmpty=true then
      begin
        MsgHapusDataKosong;
        ActiveControl:=cxGrid1;
      end else
      begin
        if CekSudahAdaProsesSelanjutnya=True then
        begin
          MessageDlg('Data tidak dapat dihapus, sudah ada transaksi'+chr(13)+mStrMsg, mtInformation,[mbOK],0);
          ActiveControl:=cxGrid1;
        end else
        begin
          StrPCopy(S,Format('Anda yakin Kode %s dan Nama %s dihapus ?',
          [QuBeliKodeBrg.AsString, QuBeliNamaBrg.AsString]));
          if (Application.MessageBox(S,'Hapus Data',
            MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
          begin
           UpdateDataBeli('D','BL');
          end;
        end;
      end;
    end
    else
    begin
      MsgPeriodeSudahDikunci;
      ActiveControl:=cxGrid1;
    end;
end;

procedure TFrRSPB.wwDBGrid1Enter(Sender: TObject);
begin
  FrRSPB.KeyPreview:=False;
end;

procedure TFrRSPB.wwDBGrid1Exit(Sender: TObject);
begin
  FrRSPB.KeyPreview:=True;
end;

procedure TFrRSPB.NoUrutKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_Return then
  begin
    {If Length(NoUrut.Text)<5 then
    begin
      MessageDlg('Nomor urut kurang '+InttoStr(5-Length(NoUrut.Text))+' digit.',mtWarning,[MbOk],0);
      ActiveControl := NoUrut;
    end
    else
    begin
      TampilData(NoBukti.Text);
      if not QuBeli.IsEmpty then
      Begin
         AmBilDataBeli;
      end
    end; }
  end
  else if Key=Vk_Escape then
  begin
    mExit := True;
    Close;
  end;
end;

procedure TFrRSPB.BitBtn1Click(Sender: TObject);
begin
 if CekPeriode(IdUser,TANGGAL.Date)=true then
  begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      if length(Kodebrg.Text)>0 then
      begin
        if (Nosat.Visible=True) and (Nosat.ItemIndex=0) then
        begin
          MsgDataTidakBolehKosong('Satuan');
          try
            ActiveControl:=Nosat;
          except
          end;
        end else
        begin
          if model='write' then
          begin
                UpdateDataBeli('I','BL');
                ClearPanelDetail;
                ActiveControl:=Kodebrg;
          end
          else if model='koreksi' then
          begin
              UpdateDataBeli('U','BL');
              SpeedButton1.Click;
          end;
        end;
      end else
      begin
        MsgDataTidakBolehKosong('Kode Barang');
        ActiveControl:=KodeBrg;
      end;
    end else
    begin
      MsgPeriodeSudahDikunci;
    end;
  end
  else
    MsgTanggalTidakSesuaiPeriode;
end;

procedure TFrRSPB.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  TampilTombolDetail(False);
  ActiveControl:=cxGrid1;
  ClearPanelDetail;
end;

procedure TFrRSPB.FormDestroy(Sender: TObject);
begin
  FrRSPB:=nil;
end;

procedure TFrRSPB.dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
  ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
  var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
  var ADone: Boolean);
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

procedure TFrRSPB.NoUrutChange(Sender: TObject);
begin
 { if mValid then
  begin
    if Length(NoUrut.Text)=5 then
    begin
      Konfig(TipeTrans,Nourut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date);
      NOBUKTI.Text:=MyNoBukti;
    end
    else
      ActiveControl:=NoUrut;
  end;}
end;

procedure TFrRSPB.KodeBrgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrRSPB.NoUrutEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrRSPB.KodeBrgExit(Sender: TObject);
begin
  if mValid Then
  begin
    if DataBersyarat('Select a.nobukti, a.urut, a.kodebrg, b.Namabrg, a.Namabrg NamabrgKom, '+
                     '       Case when a.nosat=1 then a.QntSisa '+
                     '            when a.nosat=2 then a.Qnt2Sisa '+
                     '            else 0 '+
                     '       end Qty,'+
                     '       Case when a.nosat=1 then a.Sat_1 '+
                     '            when a.nosat=2 then a.Sat_2 '+
                     '            else '''' '+
                     '       end Satuan,'+
                     'a.Sat_1, a.sat_2, a.nosat, a.isi, a.qnt, a.qnt2, a.qntRSPB, a.Qnt2RSPB,'+
                     '       a.QntSisa, A.qnt2Sisa, a.netw, a.GrossW '+
                     'from vwBrowsOutspB_RSPB a '+
                     '     left Outer join (Select Kodebrg, Namabrg from DBBARANG) b on b.KODEBRG=a.kodebrg '+
                     'Where a.nobukti=:0 and a.kodebrg=:1 '+
                     'Order by a.nobukti,a.urut ',
      [NOSPB.Text,KodeBrg.Text], DM.QuCari)=True then
    begin
      with DM.QuCari do
      begin
        KodeBrg.Text:=FieldByName('KodeBrg').AsString;
        NamaBrg.Text :=FieldByName('NamaBrgKom').AsString;
        LNamaBrg.Caption:='[ '+FieldByName('NamaBrg').AsString+' ]';
        mUrutSPP:=FieldByName('Urut').AsInteger;
        mSat_1:=FieldByName('Sat_1').AsString;
        mSat_2:=FieldByName('Sat_2').AsString;
        mIsiBrg:=FieldByName('Isi').AsFloat;
        LSatuan2.Caption:='[ '+mSat_2+' ]';
        LSatuan1.Caption:='[ '+mSat_1+' ]';
        Qnt2.Value:=FieldByName('Qnt2Sisa').AsFloat;
        Qnt1.Value:=FieldByName('QntSisa').AsFloat;
        Nosat.Items.Clear;
        Nosat.Items.Add('Pilih Satuan');
        Nosat.Items.Add(mSat_1);
        Nosat.Items.Add(mSat_2);
        Nosat.ItemIndex := FieldByName('nosat').AsInteger;
        if FieldByName('nosat').AsInteger=1 then
        begin
           Qnt.Value:=FieldByName('QntSisa').AsFloat;
           LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value/mIsiBrg)+' '+mSat_2+' ]'
        end
        else
        if FieldByName('nosat').AsInteger=2 then
        begin
           Qnt.Value:=FieldByName('Qnt2Sisa').AsFloat;
           LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value*mIsiBrg)+' '+mSat_1+' ]';
        end;
      end;
    end
    else TampilIsiBarang;
    {if KodeBrg.Text<>'' then
    begin
      DataBersyarat('select cast(Konversi as int) Konversi from dbBarang where KodeBrg=:0',[KodeBrg.Text],DM.QuCari);
      TampilanQntSatuan(DM.QuCari.FieldByName('Konversi').AsInteger);
      if Qnt.CanFocus then
        Qnt.SetFocus;
      if Qnt2.CanFocus then
        Qnt2.SetFocus;
    end;}
  end;
end;

procedure TFrRSPB.TambahBtnClick(Sender: TObject);
begin
  model:='write';
  TampilTombolDetail(True);
  ClearPanelDetail;
  KodeBrg.Enabled:=True;
  ActiveControl:=KodeBrg;
end;

procedure TFrRSPB.KodeBrgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
    SpeedButton1.Click;
end;

procedure TFrRSPB.Qnt2Change(Sender: TObject);
begin
  if mValid then
  begin
    Qnt1.Value:=Qnt2.Value*mIsiBrg;
  end;
end;

procedure TFrRSPB.TanggalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
  begin
      if //(Sender=Tanggal) and
      (CekPeriode(IDUser,TANGGAL.Date)=False) then
        Abort;
      UpdatedbBeli;
  end
  else if Key=Vk_Escape then
  begin
    If xModalKoreksi = False then
    begin
      Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
      mValid:=False;
      RefreshAll;
      //IsiNoBuktiBaru;
      TampilData(NOBUKTI.Text);
      ActiveControl:=NoSPB;
    end
    else
    begin
      mExit:=True;
      Close;
    end;
  end;
end;

procedure TFrRSPB.TanggalChange(Sender: TObject);
begin
  if mValid then
  begin
    mUbahHd:=True;
  end;
end;

procedure TFrRSPB.TanggalExit(Sender: TObject);
begin
  if mValid then
  begin
     if CekPeriode(IdUser,Tanggal.Date)=false then
     begin
        MsgTanggalTidakSesuaiPeriode;
        ActiveControl:=tanggal;
     end;
  end;
end;

procedure TFrRSPB.NosatEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrRSPB.NosatChange(Sender: TObject);
var xSatuan : string;
    xHarga : Real;
begin
  if mValid then
  begin
    CariSatuan(KodeBrg.Text,'',NoSat.ItemIndex,xHarga,misibrg,Sat,xSatuan,xStatus);
    if Nosat.ItemIndex=1 then
    begin
      LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value/mIsiBrg)+' '+mSat_2+' ]';
    end
    else
    if Nosat.ItemIndex=2 then
    begin
      LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value*mIsiBrg)+' '+mSat_1+' ]';
    end;

    if not xStatus then
    begin
      ShowMessage('Silahkan pilih satuan');
      ActiveControl:=NoSat;
    end;
  end;

end;

procedure TFrRSPB.CetakClick(Sender: TObject);
var LembarKe : string;
    i,j : Integer;
begin
  {frxDBcetak.DataSet.Close;
  QuReport.Close;
  frxDBcetak.DataSet := QuReport;
  with QuReport do
  begin
    close;
    sql.Clear;
    sql.Add('select * from vwcetakspb');
    sql.Add('where nobukti =:0 Order by urut');
    Parameters[0].Value :=NoBukti.text;
    open;
  end;

  frxDBCetakLampiran.DataSet.Close;
  QuReportLampiran.Close;
  frxDBCetakLampiran.DataSet := QuReportLampiran;

  with QuReportLampiran do
  begin
    close;
    sql.Clear;
    sql.Add('select * from vwcetakspbLampiran');
    sql.Add('where nobukti =:0 order by nobukti,UrutSPB');
    Parameters[0].Value :=NoBukti.text;
    open;
  end;

  frxDBCetak.DataSet.Open;
  frxDBCetakLampiran.DataSet.Open;
  with frxReport1 do
  begin
    LoadFromFile(CurrDir+'nota\suratpengantarbarang.fr3');
    ShowReport;
  end;}
  {Case ComboBox1.ItemIndex of
    0 : begin }
          InputQuery('Cetak Berapa Lembar ? ','Lembar : ',LembarKe);
          if Length(LembarKe)=0 then
             j := 1
          else
             j := StrToInt(LembarKe);
         // frxDBcetak.DataSet.Close;
          QuReport.Close;
          frxDBcetak.DataSet := QuReport;
          with QuReport do
          begin
            close;
            sql.Clear;
            sql.Add('Exec cetakRSPB '+QuotedStr(Nobukti.text));
            open;
          end;

          //frxDBCetakLampiran.DataSet.Close;
          QuReportLampiran.Close;
          frxDBCetakLampiran.DataSet := QuReportLampiran;

          with QuReportLampiran do
          begin
            close;
            sql.Clear;
            sql.Add('Exec cetakRSPBLampiran '+QuotedStr(Nobukti.text));
            open;
          end;

          frxDBCetak.DataSet.Open;
          frxDBCetakLampiran.DataSet.Open;
          with frxReport1 do
          begin
            for I := 1 to J do
            begin
              MLembarKe := I;
              LoadFromFile(CurrDir+'nota\suratpengantarbarangRetur.fr3');
              if MLembarKe>1 then
              begin
                PrepareReport;
                PrintOptions.ShowDialog := False;
                Print;
              end
              else
              ShowReport;
            end;
          end;
    {    end;
    1 : begin
          //frxDBcetak.DataSet.Close;
          frxDBcetak.DataSet := QuReport;
          with QuReport do
          begin
            close;
            sql.Clear;
            sql.Add('Exec cetakRSPB '+QuotedStr(Nobukti.text));
            open;
          end;
          frxDBCetak.DataSet.open;
          with frxReport1 do
          begin
            LoadFromFile(CurrDir+'nota\notaBPBJRetur.fr3');
            ShowReport;
          end;
        end;
  end;          }

end;

procedure TFrRSPB.SpeedButton8Click(Sender: TObject);
begin
  {frxDBcetak.DataSet.Close;
  QuReport.Close;
  frxDBcetak.DataSet := QuReport;
  with QuReport do
  begin
    close;
    sql.Clear;
    sql.Add('select * from vwcetakspb');
    sql.Add('where nobukti =:0 Order by urut');
    Parameters[0].Value :=NoBukti.text;
    open;
  end;

  frxDBCetakLampiran.DataSet.Close;
  QuReportLampiran.Close;
  frxDBCetakLampiran.DataSet := QuReportLampiran;

  with QuReportLampiran do
  begin
    close;
    sql.Clear;
    sql.Add('select * from vwcetakspbLampiran');
    sql.Add('where nobukti =:0 order by nobukti,UrutSPB');
    Parameters[0].Value :=NoBukti.text;
    open;
  end;
  
  frxDBCetak.DataSet.Open;
  frxDBCetakLampiran.DataSet.Open;
  with frxReport1 do
  begin
    LoadFromFile(CurrDir+'nota\suratpengantarbarang.fr3');
    DesignReport;
  end;  }
  {Case ComboBox1.ItemIndex of
    0 : begin }
          //frxDBcetak.DataSet.Close;
          QuReport.Close;
          frxDBcetak.DataSet := QuReport;
          with QuReport do
          begin
            close;
            sql.Clear;
            sql.Add('Exec CetakRSPB '+QuotedStr(nobukti.Text));
            open;
          end;

          //frxDBCetakLampiran.DataSet.Close;
          QuReportLampiran.Close;
          frxDBCetakLampiran.DataSet := QuReportLampiran;

          with QuReportLampiran do
          begin
            close;
            sql.Clear;
            sql.Add('Exec CetakRSPBLampiran '+QuotedStr(nobukti.Text));
            open;
          end;
  
          frxDBCetak.DataSet.Open;
          frxDBCetakLampiran.DataSet.Open;
          with frxReport1 do
          begin
            LoadFromFile(CurrDir+'nota\suratpengantarbarangRetur.fr3');
            DesignReport;
          end;
    {    end;
    1 : begin
          //frxDBcetak.DataSet.Close;
          frxDBcetak.DataSet := QuReport;
          with QuReport do
          begin
            close;
            sql.Clear;
            sql.Add('Exec CetakRSPB '+QuotedStr(nobukti.Text));
            open;
          end;
          frxDBCetak.DataSet.open;
          with frxReport1 do
          begin
            LoadFromFile(CurrDir+'nota\notaBPBJRetur.fr3');
            designreport;
          end;
        end;
  end;    }
end;

procedure TFrRSPB.NamaBrgEnter(Sender: TObject);
begin
  KeyPreview := false;
end;

procedure TFrRSPB.NamaBrgExit(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TFrRSPB.RekapBrgBtnClick(Sender: TObject);
begin
  if not QuBeli.IsEmpty then
  begin
    Application.CreateForm(TFrRSPBKirim,FrRSPBKirim);
    FrRSPBKirim.ShowModal
  end
  else
  begin
    MsgTglKirimDataKosong;
    ActiveControl := cxGrid1
  end;
end;

procedure TFrRSPB.NoUrutExit(Sender: TObject);
var myTempNoUrut: String;
begin
  if mValid then
  begin
    myTempNoUrut:=NoUrut.Text;
    NoUrut.Text:=RightStr('00000'+myTempNoUrut,5);
    Konfig(TipeTrans,NoUrut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date);
    NOBUKTI.Text:=MyNoBukti;
    TampilData(NoBukti.Text);
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
          TampilData('');
          MsgDataSudahADA(NoBukti.Text);
          ActiveControl := NoUrut;
        end;
      end;
      If Not Daftar_Nomor(TipeTrans,Nourut.Text,NoBukti.Text,isMax) then
      begin
        MessageDlg('Nomor : '+NOBUKTI.Text+' telah digunakan oleh '+MyUser+'.',mtWarning,[MbOk],0);
        ActiveControl := NoUrut;
      end;
    end;
  end;
end;

procedure TFrRSPB.CatatanEnter(Sender: TObject);
begin
  mValid := True;
  KeyPreview := False;
end;

procedure TFrRSPB.CatatanExit(Sender: TObject);
begin
  KeyPreview := True;
  if mValid then
  begin
    if (CekPeriode(IDUser,TANGGAL.Date)=False) then
        Abort;
      UpdatedbBeli;
  end;
end;

procedure TFrRSPB.SpeedButton2Click(Sender: TObject);
begin
  frxDBcetak.DataSet.Close;
  frxDBcetak.DataSet := QuReport;
  with QuReport do
  begin
    close;
    sql.Clear;
    sql.Add('select * from vwcetakspb');
    sql.Add('where nobukti =:0');
    Parameters[0].Value :=NoBukti.text;
    open;
  end;
  frxDBCetak.DataSet.open;
  with frxReport1 do
  begin
    LoadFromFile(CurrDir+'nota\notaBPBJ.fr3');
    ShowReport;
  end;
end;

procedure TFrRSPB.SpeedButton3Click(Sender: TObject);
begin
  frxDBcetak.DataSet.Close;
  frxDBcetak.DataSet := QuReport;
  with QuReport do
  begin
    close;
    sql.Clear;
    sql.Add('select * from vwcetakspb');
    sql.Add('where nobukti =:0');
    Parameters[0].Value :=NoBukti.text;
    open;
  end;
  frxDBCetak.DataSet.open;
  with frxReport1 do
  begin
    LoadFromFile(CurrDir+'nota\notaBPBJ.fr3');
    designreport;
  end;
end;

procedure TFrRSPB.tvMasterFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  with QuDetailSPB do
  begin
    close;
    open;
  end;
end;

procedure TFrRSPB.NoSPBExit(Sender: TObject);
begin
  if mValid Then
  begin
    CrNomor:=False;
    Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
    if DataBersyarat('Select  Distinct B.NoSPB, B.TglSPB, B.NoSPP, B.TglSPP, B.Noship, B.TglShip, B.NoSC, B.TglSC, B.IsLokal,'+
                    'B.KodecustSupp,c.NAMACUSTSUPP, c.Alamat+'' ''+c.Kota+'' ''+c.NEGARA Alamat,A.FlagTipe '+
                    'from vwbrowsOutSPB_RSPB a '+
                    '     left Outer join vwSPB b on b.noSPB=a.nobukti '+
                    '     left Outer join vwBrowsCust c on c.KODECUSTSUPP=b.kodecustSupp '+
                    'where b.nospb=:0 '+
                    'Order by b.nospb',
                    [NoSPB.Text],DM.QUCari)=True then
    begin
      with DM.QuCari do
      begin
        NoSPB.Text:=FieldByName('NoSPB').AsString;
         TglSPB.Date:=FieldByName('TglSPB').AsDateTime;
         NoSPP.Text:=FieldByName('NoSPP').AsString;
         TglSPP.Date:=FieldByName('TglSPP').AsDateTime;
         NoSC.Text:=FieldByName('NoSC').AsString;
         TglSC.Date:=FieldByName('TglSC').AsDateTime;
         //NoShip.Text:=FieldByName('NoShip').AsString;
         //TglShip.Date:=FieldByName('TglShip').AsDateTime;
         KodeCust.Text:=FieldByName('KodeCustSupp').AsString;
         LNamaCustSupp.Caption:=FieldByName('NamaCustSupp').AsString;
         LAlamatCustSupp.Caption:=FieldByName('Alamat').AsString;
         IsPPN:=FieldByName('FlagTipe').AsInteger;
         XCustSupp:= FieldByName('KodeCustSUpp').AsString;
         CrNomor:=True;
      end;
    end
    else TampilIsiSPB;
  end;

  if CrNomor then
  begin
      IsiNoBuktiBaru;
      Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,isMax);
  End
  Else ActiveControl:=NoSPB;
end;

procedure TFrRSPB.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
if VarName='LembarKe' then
     Value := MLembarKe;
end;

procedure TFrRSPB.NoSPBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=Vk_Escape then
  begin
    If xModalKoreksi = False then
    begin
     if Length(Nospb.Text)<>0 then
     begin
      Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
      mValid:=False;
      RefreshAll;
     End
     Else
     Begin
      Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
      mValid:=False;
      RefreshAll;
      mExit:=True;
      Close;
     End;
    end
  End;
end;

end.
