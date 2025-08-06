unit FrmBeliRe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, wwdblook, Wwdbigrd, Wwdbgrid,
  DBCtrls, ppBands, ppCtrls, ppDB, jpeg, ppPrnabl, ppClass, ppCache,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, ImgList, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ppVar,variants, dxEditor,
  dxExEdtr, dxEdLib, ppStrtch, ppMemo,Dateutils, ppModule, raCodMod,
  frxClass, frxDMPExport, frxDBSet, frxDesgn, MyGlobal, dxmdaset;

type
  TFrBeliRe = class(TForm)
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
    Label27: TLabel;
    Label42: TLabel;
    Shape4: TShape;
    Label1: TLabel;
    Label4: TLabel;
    Label14: TLabel;
    FakturSupp: TEdit;
    Label17: TLabel;
    Keterangan: TEdit;
    Label12: TLabel;
    frxDataPerusahaan: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    DsgCetakBtn: TSpeedButton;
    frxDesigner1: TfrxDesigner;
    QuByAngkut: TADOQuery;
    frxReport1: TfrxReport;
    KodeSupp: TEdit;
    LnamaSupp: TLabel;
    LAlamatSupp: TLabel;
    Shape6: TShape;
    Label19: TLabel;
    KodeBrg: TEdit;
    QntReject: TPBNumEdit;
    NoSat: TPBNumEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label8: TLabel;
    NoPO: TEdit;
    Label6: TLabel;
    KodeGdg: TEdit;
    dxMem: TdxMemData;
    Label13: TLabel;
    Qnt1Reject: TPBNumEdit;
    LabelSatuan1: TLabel;
    QuBeliNOBUKTI: TStringField;
    QuBeliNOURUT: TStringField;
    QuBeliTANGGAL: TDateTimeField;
    QuBeliTglJatuhTempo: TDateTimeField;
    QuBeliKODESUPP: TStringField;
    QuBeliHANDLING: TBCDField;
    QuBeliKETERANGAN: TStringField;
    QuBeliFAKTURSUPP: TStringField;
    QuBeliKODEVLS: TStringField;
    QuBeliKURS: TBCDField;
    QuBeliPPN: TWordField;
    QuBeliTIPEBAYAR: TWordField;
    QuBeliHARI: TIntegerField;
    QuBeliTipeDisc: TWordField;
    QuBeliDISC: TFloatField;
    QuBeliDISCRP: TBCDField;
    QuBeliISCETAK: TBooleanField;
    QuBeliNilaiCetak: TIntegerField;
    QuBeliKodeExp: TStringField;
    QuBeliURUT: TIntegerField;
    QuBeliKODEBRG: TStringField;
    QuBeliNAMABRG: TStringField;
    QuBeliNFix: TBooleanField;
    QuBeliQNT: TBCDField;
    QuBeliNOSAT: TWordField;
    QuBeliSATUAN: TStringField;
    QuBeliISI: TBCDField;
    QuBeliHARGA: TBCDField;
    QuBeliDISCP: TBCDField;
    QuBeliDISCTOT: TBCDField;
    QuBeliBYANGKUT: TBCDField;
    QuBeliHRGNETTO: TBCDField;
    QuBeliNDISKON: TFloatField;
    QuBeliSUBTOTAL: TBCDField;
    QuBeliNDPP: TFloatField;
    QuBeliNPPN: TFloatField;
    QuBeliNNET: TFloatField;
    QuBeliNoPO: TStringField;
    QuBeliUrutPO: TIntegerField;
    QuBeliHPP: TBCDField;
    QuBeliKodeGdg: TStringField;
    QuBeliQntTerima: TBCDField;
    QuBeliQnt1Terima: TBCDField;
    QuBeliQnt2Terima: TBCDField;
    dxDBGrid1URUT: TdxDBGridMaskColumn;
    dxDBGrid1KODEBRG: TdxDBGridMaskColumn;
    dxDBGrid1NAMABRG: TdxDBGridMaskColumn;
    dxDBGrid1NFix: TdxDBGridCheckColumn;
    dxDBGrid1QNT: TdxDBGridMaskColumn;
    dxDBGrid1NOSAT: TdxDBGridMaskColumn;
    dxDBGrid1SATUAN: TdxDBGridMaskColumn;
    dxDBGrid1QntTerima: TdxDBGridMaskColumn;
    dxDBGrid1Qnt1Terima: TdxDBGridMaskColumn;
    dxDBGrid1Qnt2Terima: TdxDBGridMaskColumn;
    Qnt2Reject: TPBNumEdit;
    LabelSatuan2: TLabel;
    QuBeliNAMACUSTSUPP: TStringField;
    QuBeliQntReject: TBCDField;
    QuBeliQnt1Reject: TBCDField;
    QuBeliQnt2Reject: TBCDField;
    dxDBGrid1QntReject: TdxDBGridMaskColumn;
    dxDBGrid1Qnt1Reject: TdxDBGridMaskColumn;
    dxDBGrid1Qnt2Reject: TdxDBGridMaskColumn;
    QuBeliSAT1: TStringField;
    QuBeliSAT2: TStringField;
    dxDBGrid1SAT1: TdxDBGridMaskColumn;
    dxDBGrid1SAT2: TdxDBGridMaskColumn;
    QuBeliUrutBeli: TIntegerField;
    KetReject: TMemo;
    Label2: TLabel;
    QuBeliKetReject: TStringField;
    QuBeliSatuanTerima: TStringField;
    QuBeliSatuanReject: TStringField;
    dxDBGrid1KetReject: TdxDBGridMaskColumn;
    dxDBGrid1SatuanTerima: TdxDBGridMaskColumn;
    dxDBGrid1SatuanReject: TdxDBGridMaskColumn;
    ComboBox1: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure TampilData(No_PO:String;No_Bukti:String);
    Procedure Hitung;
    procedure UpdateDataBeli(Choice:Char;Kodet:String);
    procedure FormCreate(Sender: TObject);
    procedure ClearPanelDetail;
    procedure RefreshAll;
    procedure QntRejectKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TanggalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UpdatedbBeli;
    procedure KoreksiBtnClick(Sender: TObject);
    procedure wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure NoUrutKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TanggalEnter(Sender: TObject);
    procedure TanggalExit(Sender: TObject);
    procedure KodeSuppEnter(Sender: TObject);
    procedure KodeSuppExit(Sender: TObject);
    procedure CetakClick(Sender: TObject);
    Function CheckFormMaster:boolean;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure UpdateValas;
    procedure FormDestroy(Sender: TObject);

    procedure KodeGdgExit(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DsgCetakBtnClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure NoUrutChange(Sender: TObject);
    procedure KodeBrgExit(Sender: TObject);
    procedure KodeBrgEnter(Sender: TObject);
    procedure NoPOEnter(Sender: TObject);
    procedure NoPOExit(Sender: TObject);
    procedure TanggalChange(Sender: TObject);
    procedure NoSatChange(Sender: TObject);
    procedure QntRejectChange(Sender: TObject);
    procedure TambahBtnClick(Sender: TObject);
    procedure HapusBtnClick(Sender: TObject);
  private
    { Private declarations }
    mNamaSatuan: TNamaSatuanBrg;
    mIsiSatuan: TIsiSatuanBrg;
    mUbahHd, mUbahHdDet: Boolean;
    mNilaiDiscEnter: Real;
    IsTampil1:Boolean;
    IsTampil:Boolean;
    mNFixBarang: Boolean;
    mUrutBeli: Integer;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure TampilIsiSupplier;
    procedure TampilIsiEkspedisi;
    procedure TampilIsiGudang;
    procedure IsiSatuan;
    procedure TampilIsiBarang;
    procedure IsiNoBuktiBaru;
    procedure TampilIsiPO;
    procedure TampilIsiBarangPO;
    procedure IsiHargaBrg;
    procedure TampilanQnt1Qnt2;
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
  FrBeliRe: TFrBeliRe;
  mValid,mExit,mMasterKoreksi: Boolean;
  mUrut,mUrutPO,IsTutup,mNosat,mPosisi:Integer;
  TipeTrans,PlusPPN,Nomor,Model:String;
  mBulan,mTahun:string;
  Biaya,IsiBrg,potongan:Real;
  S:array[0..255]of char;
  BM : TBookmark;
  mDiskon, mDiskon2 : currency;

implementation
uses FrmBrows,MyProcedure, MyModul, FrmMainBeliRe;
{$R *.DFM}

// PROCEDURE DAN FUNCTION PRIBADI

procedure TFrBeliRe.TampilTombolDetail(pNilai: Boolean);
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
  SpeedButton2.Enabled:=not pNilai;
  SpeedButton3.Enabled:=not pNilai;
end;

procedure TFrBeliRe.TampilIsiSupplier;
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
      //Hari.AsInteger:=FieldByName('DueDate').AsInteger;
    end;
  end else
    ActiveControl:=KodeSupp;
end;

procedure TFrBeliRe.TampilIsiGudang;
begin
  KodeBrows:=11002;
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

procedure TFrBeliRe.IsiSatuan;
begin
  //LNamaSat.Caption:=IsiSatuanBrg(KodeBrg.Text, mNamaSatuan, mIsiSatuan);
  //LabelSatuan1.Caption:='['+mNamaSatuan[1]+']';
  //LabelSatuan2.Caption:='['+mNamaSatuan[2]+']';
end;

procedure TFrBeliRe.TampilIsiBarang;
begin
//  KodeBrows:=23101;
  KodeBrows:=24201;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:='%'+KodeBrg.Text+'%';
  FrBrows.NoKira1:=KodeGdg.Text;
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.IsEmpty=False) then
  begin
    with FrBrows.QuBrows do
    begin
      KodeBrg.Text:=FieldByName('KodeBrg').AsString;
     // LNamaBrg.Caption:='[ '+FieldByName('NamaBrg').AsString+' ]';
    end;
    mUrutPO:=0;
    IsiSatuan;
  end
   else
    ActiveControl:=KodeBrg;
end;

procedure TFrBeliRe.TampilIsiBarangPO;
begin
end;

procedure TFrBeliRe.TampilIsiEkspedisi;
begin
end;

procedure TFrBeliRe.IsiNoBuktiBaru;
begin
  //
end;

procedure TFrBeliRe.TampilIsiPO;
begin
end;

Procedure TFrBeliRe.Hitung;
begin
   //DiskonRp.Value := QuBeliTotDiskon.AsFloat;
   //Dpp.Value := QuBeliTotDPP.AsFloat;
   //Pajak.Value := QuBeliTotPPN.AsFloat;
   //GrandTotal.Value := QuBeliTotNet.AsFloat;
end;

procedure TFrBeliRe.TampilData(No_PO:String;No_Bukti:String);
begin
   QuBeli.Close;
   QuBeli.SQL.Strings[2]:='select @NoBukti='+QuotedStr(No_Bukti);
   QuBeli.Open;
   KodeSupp.Enabled:=QuBeli.IsEmpty;
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

Function TFrBeliRe.CheckFormMaster:boolean;
begin
   CheckFormMaster:=True;
end;

procedure TFrBeliRe.UpdatedbBeli;
begin
  if (not QuBeli.IsEmpty) and (mUbahHd=True) then
  begin
    {with QuUpdatedbBeli do
    begin
       Close;
       Sql.Clear;
       SQL.Add('Update dbBeli');
       SQL.Add('Set Tanggal=:0, KodeSupp=:1, Handling=:2, FakturSupp=:3, Keterangan=:4, KodeVls=:5, Kurs=:6, PPN=:7, ');
       SQL.Add('TipeBayar=:8, Hari=:9, TglJatuhTempo=:10, Disc=:11 ');
       SQL.Add('Where NoBukti=:13');
       Prepared;
       Parameters[0].Value := TANGGAL.Date;
       Parameters[1].Value := KodeSupp.Text;
       Parameters[2].Value := Handling.AsFloat;
       Parameters[3].Value := FakturSupp.Text;
       Parameters[4].Value := Keterangan.Text;
       Parameters[5].Value := Valas.Text;
       Parameters[6].Value := Kurs.Value;
       Parameters[7].Value := PPN.ItemIndex;
       Parameters[8].Value := TIPE.ItemIndex;
       Parameters[9].Value := Hari.AsInteger;
       Parameters[10].Value := TANGGAL.Date+Hari.AsInteger;
       Parameters[11].Value := Diskon.AsFloat;
       Parameters[12].Value := NoBukti.Text;

       ExecSQL;
       if mUbahHdDet=True then
       begin
         Close;
         SQL.Clear;
         SQL.Add('exec sp_UpdateBeli '+QuotedStr(NoBukti.Text));
         ExecSQL;
       end;
       mUbahHd:=False; mUbahHdDet:=False;
    end;
    TampilData(NoPO.Text,NoBukti.Text);
    }
  end;
end;

procedure TFrBeliRe.UpdateValas;
begin
{      with QuUpdatedbBeli do
      begin
         Close;
         Sql.Clear;
         SQL.Add('Update dbValas');
         SQL.Add('Set Kurs=:0');
         SQL.Add('Where KOdeVls=:1');
         Prepared;
         Parameters[0].Value:=Kurs.Value;
         Parameters[1].Value:=Valas.Text;
         ExecSQL;
      end;
}
end;


procedure TFrBeliRe.ClearPanelDetail;
begin
   KodeBrg.Text:='';
   QntReject.Value:=0;
   Qnt1Reject.Value:=0;
   Qnt2Reject.Value:=0;
   NoSat.Value:=1;
  // LNamaBrg.Caption:='[ . . . ]';
   //LNamaSat.Caption:='[ . . . ]';
end;

procedure TFrBeliRe.RefreshAll;
var i:integer;
begin
   mValid:=False;
   mUbahHd:=False; mUbahHdDet:=False;
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
   LnamaSupp.Caption:='';
   LAlamatSupp.Caption:='';
   ClearPanelDetail;
end;

procedure TFrBeliRe.IsiHargaBrg;
begin
end;

procedure TFrBeliRe.TampilanQnt1Qnt2;
begin
  Qnt1Reject.Enabled:=False;
  Qnt2Reject.Enabled:=False;
  if mNFixBarang then
  begin
    if NoSat.AsInteger=1 then
    begin
      Qnt2Reject.Enabled:=True;
    end else
    begin
      Qnt1Reject.Enabled:=True;
    end;
  end
end;

procedure TFrBeliRe.UpdateDataBeli(Choice:Char;Kodet:String);
begin
   if Choice='I' then mUrut:=1
     else mUrut:=QuBeliUrut.AsInteger;

   BM:=QuBeli.GetBookmark;
   With Sp_Beli do
   begin
       Parameters.Refresh;
       Parameters[1].Value:=Choice;
       Parameters[2].Value:=NoBukti.Text;
       Parameters[3].Value:=mUrut;
       Parameters[4].Value:=QntReject.AsFloat;
       Parameters[5].Value:=Qnt1Reject.AsFloat;
       Parameters[6].Value:=Qnt2Reject.AsFloat;
       Parameters[7].Value:=NoSat.AsInteger;
       Parameters[8].Value:=mNamaSatuan[NoSat.AsInteger];
       Parameters[9].Value:=mIsiSatuan[NoSat.AsInteger];
       Parameters[10].Value:=mUrutBeli;
       Parameters[11].Value:=Trim(KetReject.Text);
       try
          ExecProc;
          //if Handling.Value<>0 then
          //begin
          //  QuUpdatedbbeli.Close;
          //  QuUpdatedbbeli.SQL.Clear;
          //  QuUpdatedbbeli.SQL.Add('exec sp_UpdateBeli '+QuotedStr(NoBukti.Text));
          //  QuUpdatedbbeli.ExecSQL;
          //end;
          if Choice='I' then
          begin
            TampilData(NoPO.Text,NOBUKTI.Text);
            QuBeli.Locate('KodeBrg',KodeBrg.Text,[LOP,LOC]);
            LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                    'Kode Brg = '+KodeBrg.Text+' , Qnt = '+QntReject.Text+' '+mNamaSatuan[NoSat.AsInteger]+
                    ' , Harga = ');
          end else if Choice='U' then
          begin
            TampilData(NoPO.Text,NOBUKTI.Text);
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
                    'Kode Brg = '+KodeBrg.Text+' , Qnt = '+QntReject.Text+' '+mNamaSatuan[NoSat.AsInteger]+
                    ' , Harga = ');
          end
          Else if Choice='D' then
          begin
            LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                    'Kode Brg = '+QuBeliKodeBrg.AsString+' , Qnt = '+QuBeliQNT.DisplayText+' '+QuBeliSATUAN.AsString+
                    ' , Harga = '+QuBeliHarga.DisplayText);
            TampilData(NoPO.Text,NOBUKTI.Text);
          end;
          Hitung;
          QuBeli.Locate('Urut', mUrut, []);
       except
          MsgProsesGagal(Choice);
       end;

   end;
end;

Procedure TFrBeliRe.AmBilDataBeli;
begin
  //Tanggal.Date:=QuBeliTANGGAL.AsDateTime;
  KodeSupp.Text:=QuBeliKODESUPP.AsString;
  KodeGdg.Text:=QuBeliKodeGdg.AsString;
  FakturSupp.Text:=QuBeliFAKTURSUPP.AsString;
  LnamaSupp.Caption:=QuBeliNAMACUSTSUPP.AsString;
  //LAlamatSupp.Caption:=QuBeli.fieldbyname('Alamat').AsString;
  Keterangan.Text:=QuBeliKETERANGAN.AsString;
end;



// PROCEDURE DAN FUNCTION MILIK DELPHI

procedure TFrBeliRe.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFrBeliRe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrBeliRe.FormShow(Sender: TObject);
begin
  mValid:=False;
  xModalKoreksi:=FrMainBeliRe.ModalKoreksi;
  NoPO.Text:=FrMainBeliRe.QuMasterNoBukti.AsString;
  KodeSupp.Text:=FrMainBeliRe.QuMasterKodeSupp.AsString;
  LnamaSupp.Caption:= FrMainBeliRe.QuMasterNamaCustSupp.AsString;
  IsTampil:=False;
  IsTampil1:=False;
  If xModalKoreksi=False then
  begin
   // RefreshAll;
    IsiNoBuktiBaru;
    TampilData(NoPO.Text,NoBukti.Text);
    NoUrut.Enabled:=True;
  end
  else
  Begin
    NOBUKTI.Text:=FrMainBeliRe.QuMasterNoBukti.AsString;
    NoPO.Text:=FrMainBeliRe.QuMasterNoPO.AsString;
    Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,isMax);
    TampilData(NoPO.Text,NOBUKTI.Text);
    NoUrut.Text:=QuBeliNoUrut.AsString;
    NoUrut.Enabled:=False;
   // ActiveControl:=Tanggal;
  end;
  AmBilDataBeli;
  NoSat.OnChange:=NoSatChange;
  QntReject.OnChange:=QntRejectChange;
end;

procedure TFrBeliRe.FormCreate(Sender: TObject);
begin
  TipeTrans:='PBL';
  LnamaSupp.Caption:='';
  LAlamatSupp.Caption:='';
  Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
  mUbahHd:=False;
  mUbahHdDet:=False;
end;

procedure TFrBeliRe.QntRejectKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key=VK_Escape then
   begin
      mValid:=False;
      ClearPanelDetail;
      SpeedButton1.Click;
   end;
end;

procedure TFrBeliRe.TanggalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
  begin
     // if (Sender=Tanggal) and (CekPeriode(IDUser,TANGGAL.Date)=False) then
      //  Abort;
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
      TampilData(NoPO.Text,NOBUKTI.Text);
      ActiveControl:=NoUrut;
    end
    else
    begin
      mExit:=True;
      Close;
    end;
  end;
end;

procedure TFrBeliRe.KoreksiBtnClick(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if QuBeliUrutBeli.AsInteger=0 then
    begin
      ActiveControl:=dxDBGrid1;
      MessageDlg('Penerimaan tidak boleh dikoreksi !!!',mtInformation,[mbOK],0);
    end else
    begin
      mValid:=False;
      Model:='koreksi';
      // data yang di update
      if QuBeli.IsEmpty=False then
      begin
        TampilTombolDetail(True);
        KodeBrg.Enabled:=False;
        KodeBrg.Text:=QuBeliKodeBrg.AsString;
        //LNamaBrg.Caption:='[ '+QuBeliNamaBrg.AsString+' ]';
        mUrutBeli:=QuBeliUrutBeli.AsInteger;
        mUrut:=QuBeliURUT.AsInteger;
        KetReject.Text:=QuBeliKetReject.AsString;
        QntReject.Value:=QuBeliQntReject.AsFloat;
        NoSat.Value:=QuBeliNOSAT.AsInteger;
        Qnt1Reject.Value:=QuBeliQnt1Reject.AsFloat;
        Qnt2Reject.Value:=QuBeliQnt2Reject.AsFloat;
        mNFixBarang:=QuBeliNFix.AsBoolean;
        IsiSatuan;
        TampilanQnt1Qnt2;
        ActiveControl:=QntReject;
      end
      else
      begin
        MsgKoreksiDataKosong;
        ActiveControl:=dxDBGrid1;
      end;
    end;
  end else
  begin
    MsgPeriodeSudahDikunci;
    ActiveControl:=dxDBGrid1;
  end;
end;

procedure TFrBeliRe.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
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
      TampilData(NoPO.Text,NOBUKTI.Text);
      ActiveControl:=NoUrut;
    end;
  end
  else if key=VK_return then
  begin
   if FrMainBeliRe.ModalKoreksi Then
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

procedure TFrBeliRe.wwDBGrid1Enter(Sender: TObject);
begin
  FrBeliRe.KeyPreview:=false;
  CheckFormMaster;
end;

procedure TFrBeliRe.wwDBGrid1Exit(Sender: TObject);
begin
  FrBeliRe.KeyPreview:=true;
end;

procedure TFrBeliRe.wwDBGrid1DblClick(Sender: TObject);
begin
  KoreksiBtn.Click;
end;

procedure TFrBeliRe.NoUrutKeyDown(Sender: TObject; var Key: Word;
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
      TampilData(NoPO.Text,NoBukti.Text);
      if not QuBeli.IsEmpty then
      Begin
         AmBilDataBeli;
      end
      else
      Begin
        if FrMainBeliRe.ModalKoreksi then
        begin
          ActiveControl := NoUrut;
        end;
      end;
      If Not Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,isMax) then
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

procedure TFrBeliRe.TanggalEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrBeliRe.TanggalExit(Sender: TObject);
begin
  if mValid then
  begin
    { if CekPeriode(IdUser,TANGGAL.Date)=false then
     begin
        MsgTanggalTidakSesuaiPeriode;
        ActiveControl:=tanggal;
     end;}
  end;
end;

procedure TFrBeliRe.KodeSuppEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrBeliRe.KodeSuppExit(Sender: TObject);
begin
  //
end;

procedure TFrBeliRe.CetakClick(Sender: TObject);
var N1, N2, N3 : string;
    T1, T2 : Real;
    Tot : byte;
    H1  : real;
begin
{  QuReport.Close;
  QuReport.SQL.Strings[2]:='select @NoPO='+QuotedStr(NoPO.Text)+',@NoBukti='+QuotedStr(NoBukti.Text);
  QuReport.Open;
  tothal :=(QuBeli.RecordCount div 10);
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

  frxReport1.LoadFromFile(currDir+'Nota\NotaTerimaGudang.fr3');
  frxReport1.ShowReport; }
  if Iscetak then
  begin
    Case ComboBox1.ItemIndex of
     0 : MainCetak(frxDBDataset1,frxDataPerusahaan,DM.QuCari,Dm.QuCari2,'CetakInspeksigudang','Vwperusahaan',
              Nobukti.Text,'Nota\NotaInspeksiGudang.fr3',frxReport1);
     1 : MainCetak(frxDBDataset1,frxDataPerusahaan,DM.QuCari,Dm.QuCari2,'CetakLBMgudang','Vwperusahaan',
              Nobukti.Text,'Nota\NotaLBMGudang.fr3',frxReport1)
    end;
  end
else
   MsgTidakBerhakCetakData

end;

procedure TFrBeliRe.BitBtn1Click(Sender: TObject);
begin
  mValid:=False;
  //if CekPeriode(IDUser, Tanggal.Date)=True then
  //begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      if Model='write' then
      begin
        UpdateDataBeli('I','BL');
        SpeedButton1.Click;
      end else
      begin
        UpdateDataBeli('U','BL');
        SpeedButton1.Click;
      end;
    end else
    begin
      MsgPeriodeSudahDikunci;
      if QntReject.CanFocus then
        ActiveControl:=QntReject;
    end;
  //end
  //else
  //  MsgTanggalTidakSesuaiPeriode;
end;

procedure TFrBeliRe.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  ClearPanelDetail;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
end;

procedure TFrBeliRe.FormDestroy(Sender: TObject);
begin
  FrBeliRe:=nil;
end;

procedure TFrBeliRe.KodeGdgExit(Sender: TObject);
begin
  if mValid Then
  begin
     if Length(KodeGdg.Text)=0 then TampilIsiGudang else
     begin
        if DataBersyarat('select * from dbGudang where KodeGdg=:0',[KodeGdg.Text], DM.QuCari)=True then
        begin
          KodeGdg.Text:=DM.QuCari.fieldbyname('KodeGdg').AsString;
        end
        else TampilIsiGudang;
     end;
  end;
end;

procedure TFrBeliRe.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrBeliRe.DsgCetakBtnClick(Sender: TObject);
begin
{  With QuUpdatedbbeli do
  begin
    close;
    sql.clear;
    sql.add('Select * From vwPerusahaan ');
    Open;
  end; }
  Case ComboBox1.ItemIndex of
     0 : frxReport1.LoadFromFile(currDir+'Nota\NotaInspeksiGudang.fr3');
     1 : frxReport1.LoadFromFile(currDir+'Nota\NotaLBMGudang.fr3');
  end;

  frxReport1.DesignReport;
end;

procedure TFrBeliRe.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
{  if comparetext(varname,'Terbilang')=0 then
  value := '# '+TempCode+' #';
  if comparetext(varname,'Total')=0 then
     value := GrandTotal.Value+Handling.AsFloat;
  if comparetext(varname,'Tothal')=0 then
      value := tothal;  }
  if CompareText(varName,'iduser')=0 then
        value:=IDUser;
end;

procedure TFrBeliRe.NoUrutChange(Sender: TObject);
begin
  if mValid then
  begin
    if Length(NoUrut.Text)=4 then
    begin
     // Konfig(TipeTrans,Nourut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date);
      NOBUKTI.Text:=MyNoBukti;
    end
    else
      ActiveControl := NoUrut;
  end;
end;

procedure TFrBeliRe.KodeBrgExit(Sender: TObject);
begin
  if mValid then
  begin
    TampilIsiBarangPO;
    {if NoPO.Text<>'-' then
    begin
      if Length(KodeBrg.Text)=0 then TampilIsiBarangPO else
      begin
          if DataBersyarat('Select A.KodeBrg,c.NamaBrg,A.Qnt,A.Satuan,((A.Qnt*A.Isi)-Isnull(B.QntJ,0))QntSisa,A.Harga,A.HrgNetto  from dbPOdet a      '+
                           'Left Outer Join(select KodeBrg,NoPO,Satuan,Sum(Qnt*Isi)QntB from dbBeliDet Group by KodeBrg,NoPO,Satuan) b  '+
                           'on a.NoBuKti=b.NoPo left Outer Join dbBarang c on a.Kodebrg=c.Kodebrg ' +
                           'where A.NoBukti=:0 and a.Kodebrg=:1)',
                     [Nopo.Text,KodeBrg.Text], DM.QuCari)=True then
        begin
             KodeBrg.Text:=DM.QuCari.FieldByName('KodeBrg').AsString;
             LNamaBrg.Caption:='[ '+DM.QuCari.FieldByName('NamaBrg').AsString+' ]';
             Qnt.MaxValue:=DM.QuCari.FieldByName('QntSisa').AsFloat+0.01;
             Qnt.AsFloat:=DM.QuCari.FieldByName('QntSisa').AsFloat;
             Harga.AsFloat:=DM.QuCari.FieldByName('Harga').AsFloat;
             IsiSatuan;
        end
        else
             TampilIsiBarangPO;
      end;
    end
    else
    begin
      TampilIsiBarangPO;
    end;}
  end;
end;

procedure TFrBeliRe.KodeBrgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrBeliRe.NoPOEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrBeliRe.NoPOExit(Sender: TObject);
begin
  if mValid Then
  begin
    if NoPO.Text<>'-' then
    begin
      if length(NoPO.Text)=0 then TampilIsiPO else
      begin
        if DataBersyarat('Select distinct A.NoBukti, A.Tanggal from dbPO A, vwOutstandingPO B '+
                         'where A.NoBukti=B.NoBukti and A.NoBukti=:0',[NoPO.text],Dm.Qucari)=true then
        begin
             NoPO.Text:=DM.QuCari.fieldbyname('NoBukti').AsString;
        end
        else TampilIsiPO;
      end;
    end
  end;
end;

procedure TFrBeliRe.TanggalChange(Sender: TObject);
begin
  mUbahHd:=True;
end;

procedure TFrBeliRe.NoSatChange(Sender: TObject);
begin
  if mValid then
  begin
    TampilanQnt1Qnt2;
    if NoSat.AsInteger=1 then
    begin
      Qnt1Reject.Value:=QntReject.AsFloat;
      //if mNFixBarang=False then
        Qnt2Reject.Value:=QntReject.AsFloat/mIsiSatuan[2];
    end else
    begin
      Qnt2Reject.Value:=QntReject.AsFloat;
      //if mNFixBarang=False then
        Qnt1Reject.Value:=QntReject.AsFloat*mIsiSatuan[2];
    end;
  end;
end;

procedure TFrBeliRe.QntRejectChange(Sender: TObject);
begin
  if mValid then
  begin
    if NoSat.AsInteger=1 then
    begin
      Qnt1Reject.Value:=QntReject.AsFloat;
      //if mNFixBarang=False then
        Qnt2Reject.Value:=QntReject.AsFloat/mIsiSatuan[2];
    end else
    begin
      //if mNFixBarang=False then
        Qnt1Reject.Value:=QntReject.AsFloat*mIsiSatuan[2];
      Qnt2Reject.Value:=QntReject.AsFloat;
    end;
  end;
end;

procedure TFrBeliRe.TambahBtnClick(Sender: TObject);
begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      mValid:=False;
      mUrutBeli:=QuBeliUrutBeli.AsInteger;
      if mUrutBeli=0 then
      begin
        Model:='write';
        TampilTombolDetail(True);
        KodeBrg.Enabled:=False;
        KodeBrg.Text:=QuBeliKodeBrg.AsString;
        //LNamaBrg.Caption:='[ '+QuBeliNamaBrg.AsString+' ]';
        mUrutBeli:=QuBeliUrut.AsInteger;
        mUrut:=QuBeliURUT.AsInteger;
        KetReject.Text:=QuBeliKetReject.AsString;
        QntReject.Value:=QuBeliQntReject.AsFloat;
        NoSat.Value:=QuBeliNOSAT.AsInteger;
        Qnt1Reject.Value:=QuBeliQnt1Reject.AsFloat;
        Qnt2Reject.Value:=QuBeliQnt2Reject.AsFloat;
        mNFixBarang:=QuBeliNFix.AsBoolean;
        IsiSatuan;
        TampilanQnt1Qnt2;
        ActiveControl:=QntReject;
      end else
      begin
        ActiveControl:=dxDBGrid1;
        MessageDlg('Pilih penerimaan yang akan direject !!!',mtInformation,[mbOK],0);
      end;
    end else
    begin
      MsgPeriodeSudahDikunci;
      ActiveControl:=dxDBGrid1;
    end;
end;

procedure TFrBeliRe.HapusBtnClick(Sender: TObject);
begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      if QuBeliUrutBeli.AsInteger=0 then
      begin
        ActiveControl:=dxDBGrid1;
        MessageDlg('Penerimaan tidak boleh dihapus !!!',mtInformation,[mbOK],0);
      end else
      begin
       if QuBeli.IsEmpty=True then
       begin
          MsgHapusDataKosong;
          ActiveControl:=dxDBGrid1;
       end
       else
       begin
          StrPCopy(S,Format('Anda yakin Kode %s dan Nama %s dihapus ?',
          [QuBeliKodeBrg.AsString, QuBeliNamabrg.AsString]));
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
         ActiveControl:=dxDBGrid1;
    end;
end;

end.
