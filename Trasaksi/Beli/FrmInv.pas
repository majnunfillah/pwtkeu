unit FrmInv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, wwdblook, Wwdbigrd, Wwdbgrid,
  DBCtrls, ppBands, ppCtrls, ppDB, jpeg, ppPrnabl, ppClass, ppCache,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, ImgList, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ppVar,variants, dxEditor,
  dxExEdtr, dxEdLib, ppStrtch, ppMemo,Dateutils, ppModule, raCodMod,
  frxClass, frxDMPExport, frxDBSet, frxDesgn, MyGlobal, dxmdaset, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  dxPageControl;

type
  TFrInv = class(TForm)
    Panel1: TPanel;
    NoUrut: TEdit;
    Panel3: TPanel;
    QuBeli: TADOQuery;
    Sp_Beli: TADOStoredProc;
    DsQuBeli: TDataSource;
    QuUpdatedbbeli: TADOQuery;
    Label10: TLabel;
    DataSource1: TDataSource;
    QuReport: TADOQuery;
    NoBukti: TEdit;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    PanelShow2: TPanel;
    BPrev: TSpeedButton;
    BNext: TSpeedButton;
    PanelShow1: TPanel;
    Cetak: TSpeedButton;
    HapusBtn: TSpeedButton;
    KoreksiBtn: TSpeedButton;
    TambahBtn: TSpeedButton;
    Label26: TLabel;
    Label42: TLabel;
    Shape4: TShape;
    Label17: TLabel;
    Keterangan: TEdit;
    Label12: TLabel;
    frxDataPerusahaan: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    DsgCetakBtn: TSpeedButton;
    frxDesigner1: TfrxDesigner;
    frxReport1: TfrxReport;
    noBeli: TEdit;
    PanelShowTotal: TPanel;
    LDiskonP: TLabel;
    Label25: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    LDiskonRp: TLabel;
    DiskonP: TPBNumEdit;
    GrandTotal: TPBNumEdit;
    Pajak: TPBNumEdit;
    DPP: TPBNumEdit;
    DiskonRp: TPBNumEdit;
    QuBeliNoBukti: TStringField;
    QuBelitanggal: TDateTimeField;
    QuBeliKeterangan: TStringField;
    QuBeliNoBeli: TStringField;
    QuBeliNDPP: TFloatField;
    QuBeliNPPN: TFloatField;
    QuBeliNNET: TFloatField;
    QuBeliUrut: TIntegerField;
    dxDBGrid1NoBukti: TdxDBGridMaskColumn;
    dxDBGrid1tanggal: TdxDBGridDateColumn;
    dxDBGrid1Keterangan: TdxDBGridMaskColumn;
    dxDBGrid1NoBeli: TdxDBGridMaskColumn;
    dxDBGrid1NDPP: TdxDBGridMaskColumn;
    dxDBGrid1NPPN: TdxDBGridMaskColumn;
    dxDBGrid1NNET: TdxDBGridMaskColumn;
    dxDBGrid1NoUrut: TdxDBGridMaskColumn;
    dxDBGrid1Urut: TdxDBGridMaskColumn;
    Shape6: TShape;
    KodeSupp: TEdit;
    Label27: TLabel;
    LnamaSupp: TLabel;
    LAlamatSupp: TLabel;
    QuBeliKodeSupp: TStringField;
    QuBeliNamaCustSupp: TStringField;
    QuBeliAlamat1: TStringField;
    Label29: TLabel;
    Valas: TEdit;
    Label30: TLabel;
    Kurs: TPBNumEdit;
    Label31: TLabel;
    PPN: TComboBox;
    Label32: TLabel;
    TIPE: TComboBox;
    Label33: TLabel;
    Hari: TPBNumEdit;
    Ltanggal: TLabel;
    Label1: TLabel;
    NoFaktur: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    NoPO: TEdit;
    QuBeliNoPO: TStringField;
    QuBeliNoFaktur: TStringField;
    QuBeliTglFaktur: TDateTimeField;
    QuBeliKodeVls: TStringField;
    QuBeliKurs: TBCDField;
    QuBeliPPN: TWordField;
    QuBeliTipeBayar: TWordField;
    QuBeliHari: TIntegerField;
    QuDetail: TADOQuery;
    QuDetailKodebrg: TStringField;
    QuDetailQnt: TBCDField;
    QuDetailSatuan: TStringField;
    QuDetailNosat: TWordField;
    QuDetailIsi: TBCDField;
    QuDetailHarga: TBCDField;
    QuDetailDiscP: TBCDField;
    QuDetailDiscTot: TBCDField;
    QuDetailTotal: TBCDField;
    QuDetailTotalDPP: TFloatField;
    QuDetailTotalPPn: TFloatField;
    QuDetailTotalNetto: TFloatField;
    QuDetailNAMABRG: TStringField;
    QuDetailNobukti: TStringField;
    DSDetail: TDataSource;
    dxPageControl1: TdxPageControl;
    dxTabSheet2: TdxTabSheet;
    Label9: TLabel;
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBBandedTableView;
    tvMasterNoBeli: TcxGridDBBandedColumn;
    tvMasterNDPP: TcxGridDBBandedColumn;
    tvMasterNPPN: TcxGridDBBandedColumn;
    tvMasterNNET: TcxGridDBBandedColumn;
    TvDetailSPB: TcxGridDBBandedTableView;
    TvDetailSPBKodebrg: TcxGridDBBandedColumn;
    TvDetailSPBNAMABRG: TcxGridDBBandedColumn;
    TvDetailSPBQnt: TcxGridDBBandedColumn;
    TvDetailSPBSatuan: TcxGridDBBandedColumn;
    TvDetailSPBNosat: TcxGridDBBandedColumn;
    TvDetailSPBIsi: TcxGridDBBandedColumn;
    TvDetailSPBHarga: TcxGridDBBandedColumn;
    TvDetailSPBDiscP: TcxGridDBBandedColumn;
    TvDetailSPBDiscTot: TcxGridDBBandedColumn;
    TvDetailSPBTotal: TcxGridDBBandedColumn;
    TvDetailSPBTotalDPP: TcxGridDBBandedColumn;
    TvDetailSPBTotalPPn: TcxGridDBBandedColumn;
    TvDetailSPBTotalNetto: TcxGridDBBandedColumn;
    TvDetailSPBNobukti: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    QuBeliNoUrut: TStringField;
    Tanggal: TDateEdit;
    TglFaktur: TDateEdit;
    PpnP: TPBNumEdit;
    Label46: TLabel;
    QuBelippnp: TBCDField;
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
    procedure FormDestroy(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure BPrevClick(Sender: TObject);
    procedure BNextClick(Sender: TObject);
    procedure DsgCetakBtnClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure NoUrutChange(Sender: TObject);
    procedure KodeBrgEnter(Sender: TObject);
    procedure noBeliEnter(Sender: TObject);
    procedure noBeliExit(Sender: TObject);
    procedure noBeliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeSuppExit(Sender: TObject);
    procedure NoPOExit(Sender: TObject);
    procedure HariExit(Sender: TObject);
    procedure tvMasterFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tvMasterKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KeteranganExit(Sender: TObject);
    procedure NoPOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
    mNamaSatuan: TNamaSatuanBrg;
    mIsiSatuan: TIsiSatuanBrg;
    mUbahHd, mUbahHdDet: Boolean;
    mNilaiDiscEnter: Real;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure TampilIsiSupplier;
    procedure TampilIsiEkspedisi;
    procedure TampilIsiGudang;
    procedure TampilIsiValas;
    procedure IsiSatuan;
    procedure TampilIsiBarang;
    procedure IsiNoBuktiBaru;
    procedure TampilIsiBeli;
    procedure TampilIsiBarangPO;
    procedure IsiHargaBrg;
    Procedure Hitung;
    procedure UpdatedbBeli;
    procedure TampilIsiPO;

  public
    { Public declarations }
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel,xmodalkoreksi: Boolean;
    NDiskon,NSubTotal,NDPP,NPPN,NNet,DiskonTotal:real;
    yy,mm,dd : word;
    sishal, tothal : integer ;
    Procedure AmBilDataBeli;

  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrInv: TFrInv;
  mValid,mExit,mMasterKoreksi: Boolean;
  mUrut,mUrutPO,IsTutup,mNosat,mPosisi:Integer;
  TipeTrans,PlusPPN,Nomor,Model:String;
  mBulan,mTahun:string;
  Biaya,IsiBrg,potongan:Real;
  S:array[0..255]of char;
  BM : TBookmark;
  mDiskon, mDiskon2 : currency;

implementation
uses FrmBrows,MyProcedure, MyModul, FrmMainInv,FrmDPPOut;
{$R *.DFM}

// PROCEDURE DAN FUNCTION PRIBADI

procedure TFrInv.TampilTombolDetail(pNilai: Boolean);
begin
  PanelShow1.Enabled:=not pNilai;
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  Panel3.Enabled:=pNilai;
  TambahBtn.Enabled:=not pNilai;
  KoreksiBtn.Enabled:=not pNilai;
  HapusBtn.Enabled:=not pNilai;
  Cetak.Enabled:=not pNilai;
  DsgCetakBtn.Enabled:=not pNilai;
end;

procedure TFrInv.TampilIsiSupplier;
begin
  KodeBrows:=110701;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeSupp.Text;
  FrBrows.NoKira:='HT';
  FrBrows.EditFilter.Text:=KodeSupp.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    with FrBrows.QuBrows do
    begin
      KodeSupp.Text:=fieldbyname('KodeCustSupp').AsString;
      LnamaSupp.Caption:=fieldbyname('NamaCustSupp').AsString;
      LAlamatSupp.Caption:=fieldbyname('Alamat').AsString;

    end;
  end else
    ActiveControl:=KodeSupp;
end;

procedure TFrInv.TampilIsiGudang;
begin

end;

procedure TFrInv.TampilIsiValas;
begin

end;

procedure TFrInv.IsiSatuan;
begin

end;

procedure TFrInv.TampilIsiBarang;
begin

end;

procedure TFrInv.TampilIsiBarangPO;
begin

end;

procedure TFrInv.TampilIsiEkspedisi;
begin

end;

procedure TFrInv.IsiNoBuktiBaru;
begin
  DecodeDate(Date,YY,MM,DD);
  If DayOfTheMonth(Date)<=DD then
     DD:=DayOfTheMonth(date);
  Try
    TANGGAL.Date := EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),DD);
  Except
    TANGGAL.Date := EndOfAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln))
  end;
  //Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal.Date);
Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans ,Nomor,NomorBukti,
  Tanggal.Date);
  NoUrut.Text := NomorBukti;
  NOBUKTI.Text := Nomor;
end;

procedure TFrInv.TampilIsiBeli;
begin
  KodeBrows:=242018;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.IsEmpty=False) then
  begin
       NoBeli.Text:=FrBrows.QuBrows.fieldbyname('NoBukti').AsString;
  end
  else
    ActiveControl:=NoBeli;
end;

procedure TFrInv.TampilData(No_Bukti:String);
begin
   QuBeli.Close;
   QuBeli.SQL.Strings[2]:='select @NoBukti='+QuotedStr(No_Bukti);
   QuBeli.Open;
   ////
  
//   KodeGdg.Enabled:=QuBeli.IsEmpty;
   if QuBeli.IsEmpty=false then
   begin
      dxDBGrid1.OptionsDB:=[edgoCanNavigation,edgoLoadAllRecords,edgoUseBookmarks]
   end
   else
   begin
      dxDBGrid1.OptionsDB:=[edgoCanNavigation,edgoUseBookmarks];
   end;
   Hitung;
end;

Function TFrInv.CheckFormMaster:boolean;
begin
  CheckFormMaster:=True;
end;

procedure TFrInv.ClearPanelDetail;
begin
   NoBeli.Text:='';
end;

procedure TFrInv.RefreshAll;
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

procedure TFrInv.IsiHargaBrg;
begin


end;

procedure TFrInv.UpdateDataBeli(Choice:Char;Kodet:String);
begin
   if Choice='I' then mUrut:=1
     else mUrut:=QuBeliUrut.AsInteger;

   BM:=QuBeli.GetBookmark;
   With Sp_Beli do
   begin
       Parameters.Refresh;
       Parameters[1].Value:=Choice;
       Parameters[2].Value:=NoBukti.Text;
       Parameters[3].Value:=Tanggal.Date;
       Parameters[4].Value:=Keterangan.Text;
       if  Choice<>'I' Then
       Parameters[5].Value:=QuBeliUrut.AsInteger
       else
       Parameters[5].Value:=0;
       Parameters[6].Value:=noBeli.Text;
       Parameters[7].Value:='';
       Parameters[8].Value:=FrInv.NoPO.Text;
       Parameters[9].Value:=FrInv.NoFaktur.Text;
       Parameters[10].Value:=FrInv.TglFaktur.Date;
       Parameters[11].Value:=FrInv.Valas.Text;
       Parameters[12].Value:=FrInv.Kurs.AsFloat;
       Parameters[13].Value:=FrInv.PPN.ItemIndex;
       Parameters[14].Value:=FrInv.TIPE.ItemIndex;
       Parameters[15].Value:=FrInv.Hari.AsInteger;
       Parameters[16].Value:=nourut.text;

      try
          ExecProc;
        if Choice='I' then
          begin
            TampilData(NOBUKTI.Text);
            LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                    'No. Beli = '+noBeli.Text);
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
            LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                    'No. Beli = '+noBeli.Text);
          end
          Else if Choice='D' then
          begin
            LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                    'No. Beli = '+noBeli.Text);
            TampilData(NOBUKTI.Text);
          end;
          QuBeli.Locate('Urut', mUrut, []);
       except
          MsgProsesGagal(Choice);
       end;

   end;
end;

Procedure TFrInv.AmBilDataBeli;
begin
   if not QuBeli.IsEmpty then
   begin
      Tanggal.Date:=QuBeli.fieldbyname('Tanggal').AsDateTime;
      Keterangan.Text:=QuBeli.fieldbyname('keterangan').AsString;
      KodeSupp.Text:= QuBeli.fieldbyname('Kodesupp').AsString;
      LnamaSupp.Caption:=QuBeli.fieldbyname('NamaCustSupp').AsString;
      LAlamatSupp.Caption:=QuBeli.fieldbyname('Alamat1').AsString;
      NoPO.Text:=QuBeliNoPO.AsString;
      Valas.Text:=QuBeliKodeVls.AsString;
      NoFaktur.Text:=QuBeliNoFaktur.AsString;
      TglFaktur.Date:=QuBeliTglFaktur.AsDateTime;
      Kurs.AsFloat:=QuBeliKurs.AsFloat;
      PPN.ItemIndex:=QuBeliPPN.AsInteger;
      TIPE.ItemIndex:=QuBeliTipeBayar.AsInteger;
      Hari.AsInteger:=QuBeliHari.AsInteger;
      ppnp.Value:=qubelippnp.asfloat;
   end;
end;

procedure TFrInv.UpdatedbBeli;
begin
  if (not QuBeli.IsEmpty) and (FrMainInv.ModalKoreksi=True) then
  begin
    with QuUpdatedbBeli do
    begin
       Close;
       Sql.Clear;
       SQL.Add('Update dbInvoice');
       SQL.Add('Set KodeSupp=:0, Keterangan=:1,NoPO=:2,Kurs=:3,Hari=:4,KodeVls=:5,Tipebayar=:6,PPN=:7 ');
       SQL.Add('Where NoBukti=:8');
       Prepared;
       Parameters[0].Value := KodeSupp.Text;
       Parameters[1].Value := Keterangan.Text;
       Parameters[2].Value := NoPO.Text;
       Parameters[3].Value := Kurs.AsFloat;
       Parameters[4].Value := Hari.AsInteger;
       Parameters[5].Value := Valas.Text;
       Parameters[6].Value := TIPE.ItemIndex;
       Parameters[7].Value := PPN.ItemIndex;
       Parameters[8].Value := NoBukti.Text;
       ExecSQL;
    end;
    TampilData(NoBukti.Text);
  end;
end;




// PROCEDURE DAN FUNCTION MILIK DELPHI

procedure TFrInv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if mExit=true then
  begin
     Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,IDUser);
     Action:=cafree;
  end
  else
  begin
     Action:=caNone;
  end;
end;

procedure TFrInv.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrInv.FormShow(Sender: TObject);
begin
  mValid:=False;
  xModalKoreksi:=FrMainInv.ModalKoreksi;
  If xModalKoreksi=False then
  begin
    RefreshAll;
    IsiNoBuktiBaru;
    TampilData(NoBukti.Text);
    //NoUrut.Enabled:=True;
  end
  else
  Begin
    NOBUKTI.Text:=FrMainInv.QuMasterNoBukti.AsString;
    Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,isMax);
    TampilData(NOBUKTI.Text);
    AmBilDataBeli;
    NoUrut.Text:=QuBeliNoUrut.AsString;
    NoUrut.Enabled:=False;
    ActiveControl:=Tanggal;
  end;
end;

procedure TFrInv.FormCreate(Sender: TObject);
begin
  TipeTrans:='INV';
  Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
  mUbahHd:=False;
  mUbahHdDet:=False;
end;

procedure TFrInv.TambahBtnClick(Sender: TObject);
begin
  if CheckFormMaster=true then
  begin
      Model:='write';
      {TampilTombolDetail(True);
      noBeli.Enabled:=True;
      ActiveControl:=noBeli;}
   if Assigned(FrDPPOut) then FrDPPOut.Showmodal else
      begin
        Application.CreateForm(TFrDPPOut,FrDPPOut);
        FrDPPOut.Showmodal;
      end;
  end
  else
  begin
     ShowMessage('Form Master Tidak Lengkap, Silahkan Anda Periksa !');
  end;
end;

procedure TFrInv.QntKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_Escape then
   begin
      mValid:=False;
      noBeli.Enabled:=True;
      ClearPanelDetail;
      if model='write' then
         ActiveControl:=noBeli
      else
      begin
         SpeedButton1.Click;
      end;
   end;
end;

procedure TFrInv.TanggalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
  begin
      if (Sender=Tanggal) and (CekPeriode(IDUser,TANGGAL.Date)=False) then
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
      IsiNoBuktiBaru;
      TampilData(NOBUKTI.Text);
      if nourut.Enabled then
      ActiveControl:=NoUrut;
    end
    else
    begin
      mExit:=True;
      Close;
    end;
  end;
end;

procedure TFrInv.KoreksiBtnClick(Sender: TObject);
begin
  if CheckFormMaster=true then
  begin
     mValid:=false;
     model:='koreksi';
     // data yang di update
  if QuBeli.IsEmpty=false then
     begin
        TampilTombolDetail(True);
        noBeli.Enabled:=False;
        noBeli.Text:=QuBeliNoBeli.AsString;
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

procedure TFrInv.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Escape then
  begin
    Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
    if xmodalkoreksi then
    begin
      mExit := True;
      Close;
    end
    else
    begin
      Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
      RefreshAll;
      IsiNoBuktiBaru;
      TampilData(NOBUKTI.Text);
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

procedure TFrInv.HapusBtnClick(Sender: TObject);
begin
  if CekPeriode(IdUser,TANGGAL.Date)=true then
  begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
     if QuBeli.IsEmpty=true then
       begin
          MsgHapusDataKosong;
       end
       else
       begin
          StrPCopy(S,Format('Anda yakin No. Beli %s dihapus ?',
          [QuBeliNoBeli.asstring]));
          if (Application.MessageBox(S,'Hapus Data',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
          begin
             UpdateDataBeli('D','IV');
          end;
       end;
    end
    else
    begin
         MsgPeriodeSudahDikunci;
         ActiveControl:=dxDBGrid1;
    end;
  end
  else
      MsgTanggalTidakSesuaiPeriode;
end;

procedure TFrInv.wwDBGrid1Enter(Sender: TObject);
begin
  FrInv.KeyPreview:=false;
  CheckFormMaster;
end;

procedure TFrInv.wwDBGrid1Exit(Sender: TObject);
begin
  FrInv.KeyPreview:=true;
end;

procedure TFrInv.wwDBGrid1DblClick(Sender: TObject);
begin
  KoreksiBtn.Click;
end;

procedure TFrInv.NoUrutKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_Return then
  begin
    If Length(NoUrut.Text)<4 then
    begin
      MessageDlg('Nomor urut kurang '+InttoStr(5-Length(NoUrut.Text))+' digit.',mtWarning,[MbOk],0);
      if nourut.Enabled then

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
        if FrMainInv.ModalKoreksi then
        begin
          if nourut.Enabled  then

          ActiveControl := NoUrut;
        end;
      end;
      If Not Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,isMax) then
      begin
        MessageDlg('Nomor : '+NOBUKTI.Text+' telah digunakan oleh '+MyUser+'.',mtWarning,[MbOk],0);
        if nourut.Enabled then

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

procedure TFrInv.TanggalEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrInv.TanggalExit(Sender: TObject);
begin
  if mValid then
  begin
     if CekPeriode(IdUser,TANGGAL.Date)=false then
     begin
        MsgTanggalTidakSesuaiPeriode;
        ActiveControl:=tanggal;
     end;
  end;
end;

procedure TFrInv.KodeSuppEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrInv.CetakClick(Sender: TObject);
var N1, N2, N3 : string;
    T1, T2 : Real;
    Tot : byte;
    H1  : real;
begin
  {tothal :=(QuBeli.RecordCount div 10);
  sishal :=(QuBeli.RecordCount mod 10);
  if sishal>0 then tothal :=tothal+1;
  N3  := FloatToStr(GrandTotal.Value+Handling.AsFloat);
  Tot := CariKoma(N3);
  if Tot <> 0 then
  begin
    N1  := copy(N3, 1, Tot-1);
    N2  := copy(N3, Tot+1, 2);
  end else
  begin
    N1  := N3;
    N2  := '0';
  end;
  //H1  := (GrandTotal.Value+HandlingFee.AsFloat);
  T1  := StrToFloat(N1);
  T2  := StrToFloat(N2);
  N1  := KonversiKeTeks(T1);
  if T2 <> 0 then
  begin
    if T2 < 10 then
       N2 := KonversiKeTeks(T2)
    else
       N2 := KonversiKeTeks(T2);
    if N1 = '' then
       TempCode:=N2+'Sen'
    else
       TempCode:=N1+'Rupiah '+N2+'Sen';
  end
  else
    TempCode:=N1+'Rupiah ';

  With QuUpdatedbbeli do
  begin
    close;
    sql.clear;
    sql.add('Select * From vwPerusahaan ');
    Open;
  end;

  with Qureport do
  begin
    Close;
    Sql.Clear;
    Sql.add('Exec CetakInvoicePembelian '+QuotedStr(Nobukti.text));
    Open;
  end;
  frxDBDataset1.Close;
  frxDBDataset1.Open;
    if QuUpdatedbbeli.FieldByName('Nama').AsString='Zona Accessories' then
       frxReport1.LoadFromFile(currDir+'Nota\NOTABeliZ.fr3') else

  frxReport1.LoadFromFile(currDir+'Nota\NotaBELI01.fr3');
  frxReport1.ShowReport;  }

end;

procedure TFrInv.BitBtn1Click(Sender: TObject);
begin
  mValid:=False;
  if CekPeriode(IDUser, Tanggal.Date)=True then
  begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      if Model='write' then
      begin
       if dxPageControl1.ActivePageIndex=0 Then
       Begin
        if (length(noBeli.Text)>0) or (length(noBeli.Text)>0) then
        begin
          UpdateDataBeli('I','IV');
          ClearPanelDetail;
          ActiveControl:=NoBeli;
        end
        else
        begin
          MsgDataTidakBolehKosong('no Beli Tidak Boleh Kosong');
          ActiveControl:=NoBeli;
        end;
        end
        else
        Begin

        end;
      end
      else if model='koreksi' then
      begin
        UpdateDataBeli('U','IV');
        SpeedButton1.Click;
      end
    end else
    begin
      MsgPeriodeSudahDikunci;
    end;
  end
  else
    MsgTanggalTidakSesuaiPeriode;
end;

procedure TFrInv.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  ClearPanelDetail;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
  xmodalkoreksi:=true;
end;

procedure TFrInv.FormDestroy(Sender: TObject);
begin
  FrInv:=nil;
end;

procedure TFrInv.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrInv.BPrevClick(Sender: TObject);
begin
  Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,IDUser);
  FrMainInv.QuNavigator.Locate('NoBukti',NoBukti.Text,[LOC,LOP]);
  FrMainInv.QuNavigator.Prior;
  FrMainInv.QuMaster.Locate('NoBukti',FrMainInv.QuNavigatorNoBukti.AsString,[LOC,LOP]);
  FormShow(Self);
end;

procedure TFrInv.BNextClick(Sender: TObject);
begin
  Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,IDUser);
  FrMainInv.QuNavigator.Locate('NoBukti',NoBukti.Text,[LOC,LOP]);
  FrMainInv.QuNavigator.Next;
  FrMainInv.QuMaster.Locate('NoBukti',FrMainInv.QuNavigatorNoBukti.AsString,[LOC,LOP]);
  FormShow(Self);
end;

procedure TFrInv.DsgCetakBtnClick(Sender: TObject);
begin
  With QuUpdatedbbeli do
  begin
    close;
    sql.clear;
    sql.add('Select * From vwPerusahaan ');
    Open;
  end;


end;

procedure TFrInv.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
{  if comparetext(varname,'Terbilang')=0 then
  value := '# '+TempCode+' #';
  if comparetext(varname,'Total')=0 then
     value := GrandTotal.Value+Handling.AsFloat;
  if comparetext(varname,'Tothal')=0 then
      value := tothal;  }
end;

procedure TFrInv.NoUrutChange(Sender: TObject);
begin
  if mValid then
  begin
    if Length(NoUrut.Text)=5 then
    begin
      Konfig(TipeTrans,Nourut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date);
      NOBUKTI.Text:=MyNoBukti;
    end
    else
     if NoUrut.Enabled then

      ActiveControl := NoUrut;
  end;
end;

procedure TFrInv.KodeBrgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrInv.noBeliEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrInv.noBeliExit(Sender: TObject);
begin
  if mValid Then
  begin
    if length(noBeli.Text)=0 then TampilIsiBeli else
      begin
        if DataBersyarat('select a.NoBukti,a.KodeSupp,NamaSupp,Sum(NDPP)NDPP,Sum(NPPN)NPPN,Sum(NNET)NNET from dbBeli a  '+
                         'Left Outer Join dbBeliDet b On a.NoBukti=b.noBukti      '+
                         'Left Outer join dbCustSupp c On c.KodeCustSupp=a.KodeSupp  '+
                         'where a.NoBukti Not in(select NoBeli from dbInvoiceDet) and a.NoBukti=:0 Group by a.NoBukti,a.KodeSupp,NamaSupp',[noBeli.text],Dm.Qucari)=true then
        begin
             noBeli.Text:=DM.QuCari.fieldbyname('NoBukti').AsString;
        end
      else TampilIsiBeli  ;
    end;
  end;
end;

Procedure TFrInv.Hitung;
begin
   {Dpp.Value := QuBeliNDPP.AsFloat;
   Pajak.Value := QuBeliNPPN.AsFloat;
   GrandTotal.Value := QuBeliNNET.AsFloat;}
end;

procedure TFrInv.noBeliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key=Vk_Escape then
 begin
   mvalid:=False;
   SpeedButton1.Click;

 end
end;

procedure TFrInv.KodeSuppExit(Sender: TObject);
begin
if mValid Then
  begin
    if length(KodeSupp.Text)=0 then TampilIsiSupplier else
    begin
      if DataBersyarat(' select X.KodeCustSupp, Y.NamaCustSupp, '+
                        ' rtrim(ltrim(isnull(Y.Alamat1,'''')+case when isnull(Y.Alamat2,'''')='''' then '''' else '' ''+Y.Alamat2 end)) Alamat, '+
                        ' Y.Kota '+
                        ' from '+
                        '  (select A.KodeCustSupp from DBPERKCUSTSUPP A, DBPOSTHUTPIUT B '+
                        '   where B.Perkiraan=A.Perkiraan and B.Kode=''HT'' '+
                        '   group by A.KodeCustSupp '+
                        '  ) X, DBCUSTSUPP Y '+
                        ' where X.KodeCustSupp=Y.KodeCustSupp '+
                        ' and (Y.KodeCustSupp like :0 or Y.NamaCustSupp like :1) '+
                        ' order by X.KodeCustSupp',['%'+KOdeSupp.Text+'%','%'+KOdeSupp.Text+'%'],Dm.Qucari)=true then
      begin
        with DM.QuCari do
        begin
           KodeSupp.Text:=fieldbyname('KodeCustSupp').AsString;
           LnamaSupp.Caption:=fieldbyname('NamaCustSupp').AsString;
           LAlamatSupp.Caption:=fieldbyname('Alamat').AsString;
        end;
      end
      else TampilIsiSupplier;
    end;
  end;
end;

procedure TFrInv.TampilIsiPO;
begin
  KodeBrows:=2420181;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeSupp.Text;
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.IsEmpty=False) then
  begin
       NoPO.Text:=FrBrows.QuBrows.fieldbyname('NoBukti').AsString;
       Valas.Text:=FrBrows.QuBrows.fieldbyname('KodeVls').AsString;
       Kurs.AsFloat:=FrBrows.QuBrows.fieldbyname('Kurs').AsFloat;
       PPN.ItemIndex:=FrBrows.QuBrows.fieldbyname('PPN').AsInteger;
       TIPE.ItemIndex:=FrBrows.QuBrows.fieldbyname('TipeBayar').AsInteger;
       Hari.AsInteger:=FrBrows.QuBrows.fieldbyname('Hari').AsInteger;
  end
  else
    ActiveControl:=NoPO;
end;

procedure TFrInv.NoPOExit(Sender: TObject);
begin
 if mValid Then
  begin
    if length(NoPO.Text)=0 then TampilIsiPO else
      begin
        if DataBersyarat('Select NoBukti,KodeVls,Kurs,PPN,TipeBayar,Hari from dbPO '+
                         'where KodeSupp='+QuotedStr(KodeSupp.Text)+' and NoBukti Not in(select Isnull(NoPO,'''') from dbInvoice)and A.NoBukti=:0',[NoPO.text],Dm.Qucari)=true then
        begin
             NoPO.Text:=DM.QuCari.fieldbyname('NoBukti').AsString;
             Valas.Text:=DM.QuCari.fieldbyname('KodeVls').AsString;
             Kurs.AsFloat:=DM.QuCari.fieldbyname('Kurs').AsFloat;
             PPN.ItemIndex:=DM.QuCari.fieldbyname('PPN').AsInteger;
             TIPE.ItemIndex:=DM.QuCari.fieldbyname('TipeBayar').AsInteger;
             Hari.AsInteger:=DM.QuCari.fieldbyname('Hari').AsInteger;
        end
        else TampilIsiPO;
      end;
   end;
end;

procedure TFrInv.HariExit(Sender: TObject);
begin
Ltanggal.Caption:='Jatuh Tempo : '+FormatDateTime('dd/mm/yyyy',TANGGAL.Date+Hari.AsInteger);
end;

procedure TFrInv.tvMasterFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  with QuDetail do
  begin
    close;
    Open;
  end;
end;

procedure TFrInv.tvMasterKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
    if xModalKoreksi then
    begin
      mExit := True;
      Close;
    end
    else
    begin
      RefreshAll;
      IsiNoBuktiBaru;
      TampilData(NOBUKTI.Text);
      if nourut.Enabled then

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

procedure TFrInv.KeteranganExit(Sender: TObject);
begin
 if mValid Then
  begin
    if length(NoPO.Text)=0 then TampilIsiPO else
      begin
        if DataBersyarat('Select NoBukti,KodeVls,Kurs,PPN,TipeBayar,Hari from dbPO '+
                         'where KodeSupp='+QuotedStr(KodeSupp.Text)+' and NoBukti Not in(select Isnull(NoPO,'''') from dbInvoice)and A.NoBukti=:0',[NoPO.text],Dm.Qucari)=true then
        begin
             NoPO.Text:=DM.QuCari.fieldbyname('NoBukti').AsString;
             Valas.Text:=DM.QuCari.fieldbyname('KodeVls').AsString;
             Kurs.AsFloat:=DM.QuCari.fieldbyname('Kurs').AsFloat;
             PPN.ItemIndex:=DM.QuCari.fieldbyname('PPN').AsInteger;
             TIPE.ItemIndex:=DM.QuCari.fieldbyname('TipeBayar').AsInteger;
             Hari.AsInteger:=DM.QuCari.fieldbyname('Hari').AsInteger;
        end
        else TampilIsiPO;
      end;
   end;

end;

procedure TFrInv.NoPOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key=VK_Return then
  begin
      if (Sender=Tanggal) and (CekPeriode(IDUser,TANGGAL.Date)=False) then
        Abort;
      UpdatedbBeli;
  end
  else if Key=Vk_Escape then
  begin
    {If xModalKoreksi = False then
    begin
      Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
      mValid:=False;
      RefreshAll;
      IsiNoBuktiBaru;
      TampilData(NOBUKTI.Text);
      if nourut.Enabled then
      ActiveControl:=NoUrut;
    end
    else }
    begin
      mExit:=True;
      Close;
    end;
  end;
end;

end.
