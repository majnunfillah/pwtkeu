unit FrmHasilP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, wwdblook, Wwdbigrd, Wwdbgrid,
  DBCtrls, ppBands, ppCtrls, ppDB, jpeg, ppPrnabl, ppClass, ppCache,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, ImgList, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ppVar,variants, dxEditor,
  dxExEdtr, dxEdLib, ppStrtch, ppMemo,Dateutils, ppModule, raCodMod,
  frxClass, frxDMPExport, frxDBSet, frxDesgn, MyGlobal, dxmdaset, strutils;

type
  TFrHasilP = class(TForm)
    Panel1: TPanel;
    NoUrut: TEdit;
    Tanggal: TDateEdit;
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
    Label1: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    frxDataPerusahaan: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    DsgCetakBtn: TSpeedButton;
    frxDesigner1: TfrxDesigner;
    frxReport1: TfrxReport;
    Label19: TLabel;
    LNamaSat: TRxLabel;
    LNamaBrg: TRxLabel;
    KodeBrg: TEdit;
    Qnt: TPBNumEdit;
    NoSat: TPBNumEdit;
    dxDBGrid1URUT: TdxDBGridMaskColumn;
    dxDBGrid1KODEBRG: TdxDBGridMaskColumn;
    dxDBGrid1NAMABRG: TdxDBGridMaskColumn;
    dxDBGrid1QNT: TdxDBGridMaskColumn;
    dxDBGrid1NOSAT: TdxDBGridMaskColumn;
    QuBeliNOBUKTI: TStringField;
    QuBeliNOURUT: TStringField;
    QuBeliTANGGAL: TDateTimeField;
    QuBeliKETERANGAN: TStringField;
    QuBeliURUT: TIntegerField;
    QuBeliKODEBRG: TStringField;
    QuBeliNAMABRG: TStringField;
    QuBeliNFix: TBooleanField;
    QuBeliQNT: TBCDField;
    QuBeliNOSAT: TWordField;
    QuBeliSATUAN: TStringField;
    QuBeliISI: TBCDField;
    QuBeliKodeGdg: TStringField;
    Label2: TLabel;
    NoSPK: TEdit;
    QuBeliNoSPK: TStringField;
    Label6: TLabel;
    KodeGdg: TEdit;
    NamaGdg: TRxLabel;
    QuBeliNama: TStringField;
    dxDBGrid1NoSPK: TdxDBGridMaskColumn;
    QuBeliHPP: TBCDField;
    Label3: TLabel;
    HPP: TPBNumEdit;
    dxDBGrid1Column7: TdxDBGridColumn;
    Label7: TLabel;
    GroupBox1: TGroupBox;
    NPR3: TPBNumEdit;
    NPR4: TPBNumEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    NPR1: TPBNumEdit;
    NPR2: TPBNumEdit;
    GroupBox2: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    PR3: TPBNumEdit;
    PR4: TPBNumEdit;
    PR1: TPBNumEdit;
    PR2: TPBNumEdit;
    GroupBox3: TGroupBox;
    Label18: TLabel;
    TK1: TEdit;
    Label20: TLabel;
    TK2: TEdit;
    LTK1: TRxLabel;
    LTK2: TRxLabel;
    JamTK1: TPBNumEdit;
    JamTK2: TPBNumEdit;
    Label23: TLabel;
    Label24: TLabel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    dxDBGrid2: TdxDBGrid;
    Shift: TPBNumEdit;
    QuTenaker: TADOQuery;
    Sp_BeliTenaker: TADOStoredProc;
    DSTenaker: TDataSource;
    QuBelikodemsn: TStringField;
    QuBelishift: TWordField;
    QuBeliket: TStringField;
    QuBeliNPR1: TBCDField;
    QuBeliNPR2: TBCDField;
    QuBeliNPR3: TBCDField;
    QuBeliNPR4: TBCDField;
    QuBeliPR1: TBCDField;
    QuBeliPR2: TBCDField;
    QuBeliPR3: TBCDField;
    QuBeliPR4: TBCDField;
    QuTenakerNobukti: TStringField;
    QuTenakerUrut: TIntegerField;
    QuTenakerNik: TStringField;
    QuTenakerUrutNiK: TIntegerField;
    QuTenakerJam: TBCDField;
    QuTenakerNama: TStringField;
    dxDBGrid2Nobukti: TdxDBGridMaskColumn;
    dxDBGrid2Urut: TdxDBGridMaskColumn;
    dxDBGrid2Nik: TdxDBGridMaskColumn;
    dxDBGrid2UrutNiK: TdxDBGridMaskColumn;
    dxDBGrid2Jam: TdxDBGridMaskColumn;
    dxDBGrid2Nama: TdxDBGridMaskColumn;
    QuBelitk1: TStringField;
    QuBelitk2: TStringField;
    QuBelitk3: TStringField;
    QuBelitk4: TStringField;
    QuBelijam1: TBCDField;
    QuBelijam2: TBCDField;
    QuBelijam3: TBCDField;
    QuBelijam4: TBCDField;
    Label21: TLabel;
    TK3: TEdit;
    JamTK3: TPBNumEdit;
    Label22: TLabel;
    LTK3: TRxLabel;
    Label25: TLabel;
    TK4: TEdit;
    JamTk4: TPBNumEdit;
    Label27: TLabel;
    LTK4: TRxLabel;
    Label5: TLabel;
    KodeMesin: TEdit;
    NamaMesin: TRxLabel;
    dxDBGrid1Column8: TdxDBGridColumn;
    QuBeliTglHasilP: TDateTimeField;
    TglSPKmsn: TDateEdit;
    Label28: TLabel;
    QuBeliTglSpkMsn: TDateTimeField;
    TarifMesin: TPBNumEdit;
    QuBelitarifmesin: TBCDField;
    dxDBGrid1Column9: TdxDBGridColumn;
    dxDBGrid1Column10: TdxDBGridColumn;
    QuBelijamproduksi: TBCDField;
    QuBeliJmlTarifPrd: TBCDField;
    QuBelitrftenaker1: TBCDField;
    QuBelitrftenaker2: TBCDField;
    QuBelitrftenaker3: TBCDField;
    QuBelitrftenaker4: TBCDField;
    QuTenakerTrfTenaker: TBCDField;
    TarifTenaker1: TPBNumEdit;
    TarifTenaker2: TPBNumEdit;
    TarifTenaker3: TPBNumEdit;
    TarifTenaker4: TPBNumEdit;
    dxDBGrid2Column7: TdxDBGridColumn;
    CSPK: TCheckBox;
    QuBeliisclosespk: TBooleanField;
    QuTenakerJmLTrfTenaker: TBCDField;
    UrutMesin: TPBNumEdit;
    QuBeliurutmesin: TIntegerField;
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
    procedure KodeSuppExit(Sender: TObject);
    procedure CetakClick(Sender: TObject);
    Function CheckFormMaster:boolean;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
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
    procedure NoSPKExit(Sender: TObject);
    procedure frxReport1AfterPrintReport(Sender: TObject);
    procedure NoUrutExit(Sender: TObject);
    procedure KodeMesinExit(Sender: TObject);
    procedure PR4Exit(Sender: TObject);
    procedure UpdateDataBeliTenaker(Choice:Char;Kodet:String);
    procedure TK2Exit(Sender: TObject);
    procedure TK4Exit(Sender: TObject);
    procedure TK3Exit(Sender: TObject);
    procedure TK1Exit(Sender: TObject);


  private
    { Private declarations }
    mNamaSatuan: TNamaSatuanBrg;
    mIsiSatuan: TIsiSatuanBrg;
    mUbahHd, mUbahHdDet: Boolean;
    mNilaiDiscEnter: Real;
    IsTampil1:Boolean;
    IsTampil:Boolean;
    mNFixBarang: Boolean;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure TampilIsiSupplier;
    procedure TampilIsiEkspedisi;
    procedure TampilIsiGudang;
    procedure TampilIsiMesin;
    procedure IsiSatuan;
    procedure TampilIsiBarang;
    procedure IsiNoBuktiBaru;
    procedure TampilIsiNoSPK;
    procedure TampilIsiBarangPO;
    procedure IsiHargaBrg;
    procedure TampilanQnt1Qnt2;
    procedure TampilISiKaryawan;
    procedure TampilISiKaryawan1;
    procedure TampilISiKaryawan2;
    procedure TampilISiKaryawan3;
    procedure IsiTenaker (Choice:Char);
  public
    { Public declarations }
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel,xmodalkoreksi: Boolean;
    yy,mm,dd : word;
    sishal, tothal : integer ;
    Procedure AmBilDataBeli;

  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrHasilP: TFrHasilP;
  mValid,mExit,mMasterKoreksi: Boolean;
  mUrut,Durut,mUrutPO,IsTutup,mNosat,mPosisi:Integer;
  TipeTrans,PlusPPN,Nomor,Model:String;
  mBulan,mTahun:string;
  Biaya,IsiBrg,potongan:Real;
  S:array[0..255]of char;
  BM : TBookmark;
  mDiskon, mDiskon2 : currency;

implementation
uses FrmBrows,MyProcedure, MyModul, FrmMainHasilP;
{$R *.DFM}

// PROCEDURE DAN FUNCTION PRIBADI

procedure TFrHasilP.TampilTombolDetail(pNilai: Boolean);
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

procedure TFrHasilP.TampilIsiSupplier;
begin

end;

procedure TFrHasilP.TampilIsiGudang;
begin
  KodeBrows:=11002;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeGdg.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    KodeGdg.Text:=FrBrows.QuBrows.FieldByName('KodeGdg').AsString;
    NamaGdg.Caption:='[ '+FrBrows.QuBrows.FieldByName('Nama').AsString+' ]';

  end
  else
    ActiveControl:=KodeGdg;
end;

procedure TFrHasilP.TampilIsiMesin;
begin
  KodeBrows:=91116;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=nospk.Text;
  FrBrows.JnsPakai:=UrutMesin.AsInteger;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    kodemesin.text:=FrBrows.QuBrows.FieldByName('KOdemsn').AsString;
    Namamesin.Caption:='[ '+FrBrows.QuBrows.FieldByName('Ket').AsString+' ]';
    TglSpkMsn.Date :=FrBrows.QuBrows.FieldByName('Tanggal').AsDateTime ;
    Tarifmesin.Value := FrBrows.QuBrows.FieldByName('Tarif').AsFloat ;
    Urutmesin.Value :=      FrBrows.QuBrows.FieldByName('Urut').AsInteger ;
  end
  else
    ActiveControl:=Kodemesin;
end;

procedure TFrHasilP.IsiSatuan;
begin
  LNamaSat.Caption:=IsiSatuanBrg(KodeBrg.Text, mNamaSatuan, mIsiSatuan);
end;

procedure TFrHasilP.TampilIsiBarang;
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
      LNamaBrg.Caption:='[ '+FieldByName('NamaBrg').AsString+' ]';
    end;
    mUrutPO:=0;
    IsiSatuan;
  end
   else
    ActiveControl:=KodeBrg;
end;

procedure TFrHasilP.TampilIsiBarangPO;
begin

end;

procedure TFrHasilP.TampilIsiEkspedisi;
begin

end;

procedure TFrHasilP.IsiNoBuktiBaru;
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

procedure TFrHasilP.TampilIsiNoSPK;
begin
  KodeBrows:=101412;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:='%'+NoSPK.Text+'%';
  FrBrows.NoKira1:=NoSPK.Text;

  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.IsEmpty=False) then
  begin
    with FrBrows.QuBrows do
    begin
      NoSPK.Text:=FieldByName('NoBukti').AsString;
      Kodebrg.Text:=FieldByName('BrgJ').AsString;
      LNamaBrg.Caption:='[ '+FieldByName('NamaBrgJ').AsString+' ]';
      Qnt.AsFloat:=FieldByName('QntJ').AsFloat;
      NoSat.AsInteger:=FieldByName('NosatJ').AsInteger;
      LNamaSat.Caption:='[ '+FieldByName('Satj').AsString+' ]';
    end;
  end
   else
    ActiveControl:=NoSPK;
end;

procedure TFrHasilP.TampilData(No_Bukti:String);
begin
   QuBeli.Close;
   QuBeli.SQL.Strings[2]:='select @NoBukti='+QuotedStr(No_Bukti);
   QuBeli.Open;
   if QuBeli.IsEmpty=false then
   begin
      dxDBGrid1.OptionsDB:=[edgoCanNavigation,edgoLoadAllRecords,edgoUseBookmarks]
   end
   else
   begin
      dxDBGrid1.OptionsDB:=[edgoCanNavigation,edgoUseBookmarks];
   end;
   //Hitung;
   QuTenaker.Close;
   //QuBeli.SQL.Strings[2]:='select @NoBukti='+QuotedStr(No_Bukti);
   QuTenaker.Open;
end;

Function TFrHasilP.CheckFormMaster:boolean;
begin
   CheckFormMaster:=True;
end;

procedure TFrHasilP.UpdatedbBeli;
begin
  if (not QuBeli.IsEmpty) and (mUbahHd=True) then
  begin
    with QuUpdatedbBeli do
    begin
       Close;
       Sql.Clear;
       SQL.Add('Update dbHasilPRD');
       SQL.Add('Set Tanggal=:0');
       SQL.Add('Where NoBukti='+QuotedStr(NoBukti.Text));
       Prepared;
       Parameters[0].Value:=TANGGAL.Date;
       ExecSQL;
       mUbahHd:=False; mUbahHdDet:=False;
    end;

  end;
end;

procedure TFrHasilP.ClearPanelDetail;
begin
   KodeBrg.Text:='';
   NoSPK.Text:='';
   NoSat.Value:=1;
   LNamaBrg.Caption:='[ . . . ]';
   LNamaSat.Caption:='[ . . . ]';
   KodeMesin.Text:='';
   NamaMesin.Caption:='';
   TK1.Text:='';
   TK2.Text:='';
   TK3.Text:='';
   TK4.Text:='';
   Npr1.Value:=0;
   Npr2.Value:=0;
   Npr3.Value:=0;
   Npr4.Value:=0;
   pr1.Value:=0;
   pr2.Value:=0;
   pr3.Value:=0;
   pr4.Value:=0;
   Jamtk1.Value:=0;
   Jamtk2.Value:=0;
   Jamtk3.Value:=0;
   Jamtk4.Value:=0;
   LTK1.Caption:='[ . . . ]';
   LTK2.Caption:='[ . . . ]';
   LTK3.Caption:='[ . . . ]';
   LTK4.Caption:='[ . . . ]';
   Qnt.AsFloat:=0;
   tarifmesin.Value :=0;
     TarifTenaker1.Value :=0;
   TarifTenaker2.Value :=0;
    TarifTenaker3.Value :=0;
     TarifTenaker4.Value :=0;
     cspk.Checked :=false;
     urutmesin.Value:=0;
end;

procedure TFrHasilP.IsiTenaker(choice:char);
begin
 { with QuBeli do
    begin
      //Close;
      //Parameters[0].Value :=nobukti.Text;
      //Parameters[1].Value := KodePrs1.Text;
      //Open;
      //First;

      while not Eof do
        begin

          Next;
        end;
    end; }
         UpdateDataBeliTenaker(choice,'BL');
  {with QuBeli do
    begin
      Close;
     sql.Strings[2] := NoBukti.Text;
      Open;
    end;}

end;

procedure TFrHasilP.RefreshAll;
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
   ClearPanelDetail;
end;

procedure TFrHasilP.IsiHargaBrg;
begin
end;

procedure TFrHasilP.TampilanQnt1Qnt2;
begin

end;

procedure TFrHasilP.UpdateDataBeliTenaker(Choice:Char;Kodet:String);
begin
  { if Choice='I' then mUrut:=1
     else mUrut:=QuBeliUrut.AsInteger;}

   BM:=QuBeli.GetBookmark;
   With Sp_BeliTenaker do
   begin
       Parameters.Refresh;
       Parameters[1].Value:=Choice;
       if Choice = 'D' then
         begin
           Parameters[2].Value:=NOBUKTI.Text ;
           Parameters[3].Value:=durut;
           //Parameters[11].Value:=Tanggal.Date;
         end
       else
         begin
           Parameters[2].Value:=NoBukti.Text;
           Parameters[3].Value:=durut;
           Parameters[4].Value:=TK1.Text;
           Parameters[5].Value:=jamtk1.value;
           {Parameters[6].Value:=QuMesinJAMAWAL.AsDateTime;
           Parameters[7].Value:=QuMesinJAMAKHIR.AsDateTime;
           Parameters[8].Value:=QuMesinQNTSPK.AsCurrency;
           Parameters[9].Value:=NoUrut.Text;
           Parameters[10].Value:=Tanggal.Date;
           Parameters[11].Value:=NoSPK.Text;
           Parameters[12].Value:=KodePrs1.Text;}
         end;
         try
          ExecProc;
                except
          MsgProsesGagal(Choice);
         end;
   end;
end;

procedure TFrHasilP.UpdateDataBeli(Choice:Char;Kodet:String);
begin
   if Choice='I' then
        begin
        mUrut:=1;
        Durut:=murut;
        end
     else
        begin
          mUrut:=QuBeliUrut.AsInteger;
          Durut:=QuBeliUrut.AsInteger
        end;
   BM:=QuBeli.GetBookmark;
   With Sp_Beli do
   begin
       Parameters.Refresh;
       Parameters[1].Value:=Choice;
       Parameters[2].Value:=NoBukti.Text;
       Parameters[3].Value:=NoUrut.Text;
       Parameters[4].Value:=TANGGAL.Date;
       Parameters[5].Value:=KodeGdg.Text;
       Parameters[6].Value:='';
       Parameters[7].Value:=mUrut;
       Parameters[8].Value:=KodeBrg.Text;
       Parameters[9].Value:=Qnt.AsFloat;
       Parameters[10].Value:=NoSat.AsInteger;
       Parameters[11].Value:=mNamaSatuan[NoSat.AsInteger];
       Parameters[12].Value:=mIsiSatuan[NoSat.AsInteger];
       Parameters[13].Value:=NoSPK.Text;
       Parameters[14].Value:=HPP.Value;
       Parameters[15].Value:=kodemesin.Text;
       Parameters[16].Value:=shift.Value ;
       Parameters[17].Value:=NPR1.Value ;
       Parameters[18].Value:=NPR2.Value ;
       Parameters[19].Value:=NPR3.Value ;
       Parameters[20].Value:=NPR4.Value ;
       Parameters[21].Value:=PR1.Value ;
       Parameters[22].Value:=PR2.Value ;
       Parameters[23].Value:=PR3.Value ;
       Parameters[24].Value:=PR4.Value ;
       Parameters[25].Value:=tk1.Text ;
       Parameters[26].Value:=JamTK1.Value ;
       Parameters[27].Value:=tk2.Text  ;
       Parameters[28].Value:=jamtk2.Value;
       Parameters[29].Value:= tk3.Text;
       Parameters[30].Value:=JamTK3.Value ;
       Parameters[31].Value:=tk4.Text ;
       Parameters[32].Value:=JamTK4.Value ;
       Parameters[33].Value:=TglSpkmsn.Date ;
       Parameters[34].Value:=tarifmesin.Value ;
       Parameters[35].Value:=TarifTenaker1.Value ;
       Parameters[36].Value:= TarifTenaker2.Value ;
       Parameters[37].Value:= TarifTenaker3.Value ;
       Parameters[38].Value:= TarifTenaker4.Value ;
       if CSPK.Checked=true  then
         Parameters[39].Value:= 1
       else
         Parameters[39].Value:= 0;
       Parameters[40].Value:= urutmesin.Value ;
         

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
            TampilData(NOBUKTI.Text);
            QuBeli.Locate('KodeBrg',KodeBrg.Text,[LOP,LOC]);
            //LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
            //        'Kode Brg = '+KodeBrg.Text+' , Qnt = '+Qnt.Text+' '+mNamaSatuan[NoSat.AsInteger]+
            //        ' , Harga = '+Harga.Text);
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
            //LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
            //        'Kode Brg = '+KodeBrg.Text+' , Qnt = '+Qnt.Text+' '+mNamaSatuan[NoSat.AsInteger]+
            //        ' , Harga = '+Harga.Text);
          end
          Else if Choice='D' then
          begin
            //LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
            //        'Kode Brg = '+QuBeliKodeBrg.AsString+' , Qnt = '+QuBeliQntB.DisplayText+' '+QuBeliSatBG.AsString+
            //        ' , Harga = '+QuBeliHarga.DisplayText);
            TampilData(NOBUKTI.Text);
          end;
          //Hitung;
          QuBeli.Locate('Urut', mUrut, []);
       except
          MsgProsesGagal(Choice);
       end;

   end;
end;

Procedure TFrHasilP.AmBilDataBeli;
begin
if Not QuBeli.IsEmpty Then
Begin
  Tanggal.Date:=QuBeliTANGGAL.AsDateTime;
  KodeGdg.Text:=QuBeliKodeGdg.AsString;
  Namagdg.Caption:=QuBeliNama.AsString;
  Shift.Value := QuBelishift.AsInteger ;
  NPR1.Value :=QuBeliNPR1.AsInteger;
  NPR2.Value :=QuBeliNPR2.AsInteger;
  NPR3.Value :=QuBeliNPR3.AsInteger;
  NPR4.Value :=QuBeliNPR4.AsInteger;
  PR1.Value :=QuBeliNPR1.AsInteger;
  PR2.Value :=QuBeliNPR2.AsInteger;
  PR3.Value :=QuBeliNPR3.AsInteger;
  PR4.Value :=QuBeliNPR4.AsInteger;
  tk1.Text := QuBelitk1.AsString;
  tk2.Text := QuBelitk2.AsString;
  tk3.Text := QuBelitk3.AsString;
  tk4.Text := QuBelitk4.AsString;
  jamtk1.Value:=QuBelijam1.AsFloat;
  jamtk2.Value:=QuBelijam2.AsFloat;
  jamtk3.Value:=QuBelijam3.AsFloat;
  jamtk4.Value:=QuBelijam4.AsFloat;
  TarifMesin.Value :=QuBelitarifmesin.AsFloat;
  TarifTenaker1.Value :=QuBeliTrfTenaker1.asfloat;
   TarifTenaker2.Value :=QuBeliTrfTenaker2.asfloat;
    TarifTenaker3.Value :=QuBeliTrfTenaker3.asfloat;
     TarifTenaker4.Value :=QuBeliTrfTenaker4.asfloat;
     if QuBeliisclosespk.AsBoolean then
         cspk.Checked :=true
     else cspk.Checked :=false;
     urutmesin.Value :=QuBeliurutmesin.AsInteger
end;
end;



// PROCEDURE DAN FUNCTION MILIK DELPHI

procedure TFrHasilP.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFrHasilP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrHasilP.FormShow(Sender: TObject);
begin
  mValid:=False;
  xModalKoreksi:=FrMainHasilP.ModalKoreksi;
  IsTampil:=False;
  If xModalKoreksi=False then
  begin
    RefreshAll;
    IsiNoBuktiBaru;
    TampilData(NoBukti.Text);
    NoUrut.Enabled:=True;
  end
  else
  Begin
    NOBUKTI.Text:=FrMainHasilP.QuMasterNoBukti.AsString;
    Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,IsMax);
    TampilData(NOBUKTI.Text);

    NoUrut.Text:=QuBeliNoUrut.AsString;
    NoUrut.Enabled:=False;
    ActiveControl:=Tanggal;
  end;
  AmBilDataBeli;

end;

procedure TFrHasilP.FormCreate(Sender: TObject);
begin
  mValid:=False;
  TipeTrans:='HPD';
  Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
  mUbahHd:=False;
  mUbahHdDet:=False;
end;

procedure TFrHasilP.TambahBtnClick(Sender: TObject);
begin
  if CheckFormMaster=True then
  begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      Model:='write';
       ClearPanelDetail;
      TampilTombolDetail(True);
      ActiveControl:=NoSPK;
    end else
    begin
      MsgPeriodeSudahDikunci;
      ActiveControl:=dxDBGrid1;
    end;
  end;
end;

procedure TFrHasilP.QntKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key=VK_Escape then
   begin
      mValid:=False;
      ClearPanelDetail;
      SpeedButton1.Click;
   end;
end;

procedure TFrHasilP.TanggalKeyDown(Sender: TObject; var Key: Word;
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
      ActiveControl:=NoUrut;
    end
    else
    begin
      mExit:=True;
      Close;
    end;
  end;
end;

procedure TFrHasilP.KoreksiBtnClick(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    mValid:=False;
    Model:='koreksi';
    // data yang di update
    if QuBeli.IsEmpty=False then
    begin
      TampilTombolDetail(True);
      NoSPK.Text:=QuBeliNoSPK.AsString;
      KodeBrg.Enabled:=False;
      HPP.Value := QuBeliHPP.AsInteger ;
      KodeBrg.Text:=QuBeliKodeBrg.AsString;
      LNamaBrg.Caption:='[ '+QuBeliNamaBrg.AsString+' ]';
      Qnt.AsFloat:=QuBeliQnt.AsFloat;
      NoSat.Value:=QuBeliNOSAT.AsInteger;
      mNFixBarang:=QuBeliNFix.AsBoolean;
      Npr1.Value:=QuBeliNPR1.Value;
      Npr2.Value:=QuBeliNPR2.Value;
      Npr3.Value:=QuBeliNPR3.Value;
      Npr4.Value:=QuBeliNPR4.Value;
      pr1.Value:=QuBeliPR1.Value;
      pr2.Value:=QuBeliPR2.Value;
      pr3.Value:=QuBeliPR3.Value;
      pr4.Value:=QuBeliPR4.Value;
      Tk1.Text:=QuBelitk1.AsString;
      Tk2.Text:=QuBelitk2.AsString;
      Tk3.Text:=QuBelitk3.AsString;
      Tk4.Text:=QuBelitk4.AsString;
      if length(tk1.Text)<>0 then
      begin
      mvalid:=true;
      TK1Exit(KodeBrg);
      end;
      if length(tk2.Text)<>0 then
      begin
      mvalid:=true;
      TK2Exit(TK2);
      end;
      if length(tk3.Text)<>0 then
      begin
      mvalid:=true;
      TK3Exit(TK3);
      end;
      if length(tk4.Text)<>0 then
      begin
      mvalid:=true;
      TK4Exit(TK4);
      end;
      mvalid:=False;
      JamTK1.Value :=QuBelijam1.AsFloat;
      JamTK2.Value :=QuBelijam2.AsFloat;
      JamTK3.Value :=QuBelijam3.AsFloat;
      JamTK4.Value :=QuBelijam4.AsFloat;
            TarifTenaker1.Value :=QuBelitrftenaker1.AsFloat;
      TarifTenaker2.Value :=QuBelitrftenaker2.AsFloat;
      TarifTenaker3.Value :=QuBelitrftenaker3.AsFloat;
      TarifTenaker4.Value :=QuBelitrftenaker4.AsFloat;
      KOdemesin.Text:=QuBelikodemsn.AsString;
      TglSPKmsn.Date:=QuBeliTglSpkMsn.AsDateTime;
  //KodeMesinExit(kodemesin);
      namamesin.Caption:=QuBeliket.AsString;
      tarifmesin.Value :=QuBelitarifmesin.AsFloat;
           if QuBeliisclosespk.AsBoolean then
         cspk.Checked :=true
     else cspk.Checked :=false;
      IsiSatuan;
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

procedure TFrHasilP.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
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
   if FrMainHasilP.ModalKoreksi Then
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

procedure TFrHasilP.HapusBtnClick(Sender: TObject);
begin
//  if CekPeriode(IdUser,TANGGAL.Date)=true then
//  begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
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
             //IsiTenaker('D');
          end;
       end;
    end
    else
    begin
         MsgPeriodeSudahDikunci;
         ActiveControl:=dxDBGrid1;
    end;
  //end
  //else
  //    MsgTanggalTidakSesuaiPeriode;
end;

procedure TFrHasilP.wwDBGrid1Enter(Sender: TObject);
begin
  FrHasilP.KeyPreview:=false;
  CheckFormMaster;
end;

procedure TFrHasilP.wwDBGrid1Exit(Sender: TObject);
begin
  FrHasilP.KeyPreview:=true;
end;

procedure TFrHasilP.wwDBGrid1DblClick(Sender: TObject);
begin
  KoreksiBtn.Click;
end;

procedure TFrHasilP.NoUrutKeyDown(Sender: TObject; var Key: Word;
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
      TampilData(NoBukti.Text);
      if not QuBeli.IsEmpty then
      Begin
         AmBilDataBeli;
      end
      else
      Begin
        if FrMainHasilP.ModalKoreksi then
        begin
          ActiveControl := NoUrut;
        end;
      end;
      If Not Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,IsMax) then
      begin
        MessageDlg('Nomor : '+NOBUKTI.Text+' telah digunakan oleh '+MyUser+'.',mtWarning,[MbOk],0);
        ActiveControl := NoUrut;
      end;
    end;
  end
  else} if Key=Vk_Escape then
  begin
    mExit := True;
    Close;
  end;
end;

procedure TFrHasilP.TanggalEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrHasilP.TanggalExit(Sender: TObject);
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

procedure TFrHasilP.KodeSuppEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrHasilP.KodeSuppExit(Sender: TObject);
begin
  //
end;

procedure TFrHasilP.CetakClick(Sender: TObject);
var N1, N2, N3 : string;
    T1, T2 : Real;
    Tot : byte;
    H1  : real;
begin
  QuReport.Close;
  QuReport.SQL.Strings[2]:='select @NoBukti='+QuotedStr(NoBukti.Text);
  QuReport.Open;
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

  if Iscetak then
    MainCetak(frxDBDataset1,frxDataPerusahaan,DM.QuCari,Dm.QuCari2,'CetakHasilproduksi','Vwperusahaan',Nobukti.text,'Nota\NotaHasilproduksi.fr3',frxReport1)
else
   MsgTidakBerhakCetakData

end;

procedure TFrHasilP.BitBtn1Click(Sender: TObject);
begin
  mValid:=False;
  //if CekPeriode(IDUser, Tanggal.Date)=True then
  //begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      if Model='write' then
      begin
        if (length(Kodebrg.Text)>0) or (length(KodeGdg.Text)>0) then
        begin
          UpdateDataBeli('I','BL');
          //IsiTenaker('I');
          ClearPanelDetail;
          ActiveControl:=NoSPK;
          // SpeedButton1.Click;
        end
        else
        begin
          MsgDataTidakBolehKosong('Kode Barang atau Gudang');
          ActiveControl:=Qnt;
        end;
      end
      else if model='koreksi' then
      begin
        UpdateDataBeli('U','BL');
        //IsiTenaker('U');
        SpeedButton1.Click;
      end
    end else
    begin
      MsgPeriodeSudahDikunci;
      if Qnt.CanFocus then
        ActiveControl:=Qnt;
    end;
    ClearPanelDetail;
  //end
  //else
  //  MsgTanggalTidakSesuaiPeriode;
end;

procedure TFrHasilP.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  ClearPanelDetail;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
end;

procedure TFrHasilP.FormDestroy(Sender: TObject);
begin
  FrHasilP:=nil;
end;

procedure TFrHasilP.KodeGdgExit(Sender: TObject);
begin
  if mValid Then
  begin
     if Length(KodeGdg.Text)=0 then TampilIsiGudang else
     begin
        if DataBersyarat('select KodeGdg,Nama from dbGudang where KodeGdg=:0',[KodeGdg.Text], DM.QuCari)=True then
        begin
          KodeGdg.Text:=DM.QuCari.fieldbyname('KodeGdg').AsString;
          NamaGdg.Caption:='[ '+DM.QuCari.FieldByName('Nama').AsString+' ]';
        end
        else TampilIsiGudang;
     end;
  end;
end;

procedure TFrHasilP.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrHasilP.DsgCetakBtnClick(Sender: TObject);
begin
{  With QuUpdatedbbeli do
  begin
    close;
    sql.clear;
    sql.add('Select * From vwPerusahaan ');
    Open;
  end;    }

  frxReport1.LoadFromFile(currDir+'Nota\NotaHasilproduksi.fr3');
  frxReport1.DesignReport;
end;

procedure TFrHasilP.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
{  if comparetext(varname,'Terbilang')=0 then
  value := '# '+TempCode+' #';
  if comparetext(varname,'Total')=0 then
     value := GrandTotal.Value+Handling.AsFloat;
  if comparetext(varname,'Tothal')=0 then
      value := tothal;}
  if CompareText(varName,'iduser')=0 then
        value:=IDUser;
end;

procedure TFrHasilP.NoUrutChange(Sender: TObject);
begin
  if mValid then
  begin
    if Length(NoUrut.Text)=4 then
    begin
      Konfig(TipeTrans,Nourut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date);
      NOBUKTI.Text:=MyNoBukti;
    end
    else
      ActiveControl := NoUrut;
  end;
end;

procedure TFrHasilP.KodeBrgExit(Sender: TObject);
begin
{  if mValid then
  begin
      if Length(TK1.Text)=0 then TampilIsiKaryawan else
      begin
          if DataBersyarat('Select a.nik, b.nama  from dbhasilprdtenaker a      '+
                           'Left Outer Join dbkaryawan b on b.nik =a.nik '+
                           //'on a.NoBuKti=b.NoPo left Outer Join dbBarang c on a.Kodebrg=c.Kodebrg ' +
                           'where A.Nik=:0 ',
                     [TK1.Text], DM.QuCari)=True then
        begin
             TK1.Text:=DM.QuCari.FieldByName('Nik').AsString;
             LTK1.Caption:='[ '+DM.QuCari.FieldByName('nama').AsString+' ]';
             {Qnt.MaxValue:=DM.QuCari.FieldByName('QntSisa').AsFloat+0.01;
             Qnt.AsFloat:=DM.QuCari.FieldByName('QntSisa').AsFloat;
             Harga.AsFloat:=DM.QuCari.FieldByName('Harga').AsFloat;
             IsiSatuan;
        end
        else
             TampilIsiKaryawan;
      end;
  end;}
end;

procedure TFrHasilP.TampilISiKaryawan;
begin
 KodeBrows:=15780;
 Application.CreateForm(TFrBrows, FrBrows);
 FrBrows.ShowModal;
 if FrBrows.ModalResult=mrOk then
 begin
     //NIk.Text:=IntToStr(FrBrows.QuBrows.FieldByName('NIK').as);
     TK1.Text:=FrBrows.QuBrows.FieldByName('NIK').AsString;
     Ltk1.Caption:='[ '+FrBrows.QuBrows.FieldByName('Nama').AsString+' ]';
     TarifTenaker1.Value :=FrBrows.QuBrows.FieldByName('Tarif').AsInteger;
     //Keynik:= FrBrows.QuBrows.FieldByName('Keynik').AsInteger;
 end
 else
    ActiveControl:=TK1;
end;

procedure TFrHasilP.TampilISiKaryawan2;
begin
 KodeBrows:=15780;
 Application.CreateForm(TFrBrows, FrBrows);
 FrBrows.ShowModal;
 if FrBrows.ModalResult=mrOk then
 begin
     //NIk.Text:=IntToStr(FrBrows.QuBrows.FieldByName('NIK').as);
     TK3.Text:=FrBrows.QuBrows.FieldByName('NIK').AsString;
     Ltk3.Caption:='[ '+FrBrows.QuBrows.FieldByName('Nama').AsString+' ]';
     TarifTenaker3.Value :=FrBrows.QuBrows.FieldByName('Tarif').AsInteger;
     //Keynik:= FrBrows.QuBrows.FieldByName('Keynik').AsInteger;
 end
 else
    ActiveControl:=TK3;
end;

procedure TFrHasilP.TampilISiKaryawan3;
begin
 KodeBrows:=15780;
 Application.CreateForm(TFrBrows, FrBrows);
 FrBrows.ShowModal;
 if FrBrows.ModalResult=mrOk then
 begin
     //NIk.Text:=IntToStr(FrBrows.QuBrows.FieldByName('NIK').as);
     TK4.Text:=FrBrows.QuBrows.FieldByName('NIK').AsString;
     Ltk4.Caption:='[ '+FrBrows.QuBrows.FieldByName('Nama').AsString+' ]';
     TarifTenaker4.Value :=FrBrows.QuBrows.FieldByName('Tarif').AsInteger;
     //Keynik:= FrBrows.QuBrows.FieldByName('Keynik').AsInteger;
 end
 else
    ActiveControl:=TK4;
end;

procedure TFrHasilP.TampilISiKaryawan1;
begin
 KodeBrows:=15780;
 Application.CreateForm(TFrBrows, FrBrows);
 FrBrows.ShowModal;
 if FrBrows.ModalResult=mrOk then
 begin
     //NIk.Text:=IntToStr(FrBrows.QuBrows.FieldByName('NIK').as);
     TK2.Text:=FrBrows.QuBrows.FieldByName('NIK').AsString;
     Ltk2.Caption:='[ '+FrBrows.QuBrows.FieldByName('Nama').AsString+' ]';
     TarifTenaker2.Value :=FrBrows.QuBrows.FieldByName('Tarif').AsInteger;
     //Keynik:= FrBrows.QuBrows.FieldByName('Keynik').AsInteger;
 end
 else
    ActiveControl:=TK1;
end;

procedure TFrHasilP.KodeBrgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrHasilP.NoPOEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrHasilP.NoPOExit(Sender: TObject);
begin
  {if mValid Then
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
  end;}
end;

procedure TFrHasilP.TanggalChange(Sender: TObject);
begin
  mUbahHd:=True;
end;

procedure TFrHasilP.NoSatChange(Sender: TObject);
begin
 { if mValid then
  begin
    if NoSat.AsInteger=1 then
    begin
        Qnt.Value:=Qnt.AsFloat/mIsiSatuan[2];
    end else
    begin
        Qnt.Value:=Qnt.AsFloat*mIsiSatuan[2];
    end;
  end;}
end;

procedure TFrHasilP.NoSPKExit(Sender: TObject);
begin
 if mValid Then
  begin
    if NoSPK.Text<>'-' then
    begin
      if length(NoSPK.Text)=0 then TampilIsiNoSPK else
      begin
        if DataBersyarat('Select A.NoBukti,A.KodeBrg BrgJ,E.NamaBrg NamaBrgJ ,A.Qnt QntJ,A.Nosat NosatJ,A.Isi IsiJ,A.Satuan SatJ,   '+
                       '       ISNULL(Case when A.Nosat=1 then B.QntHasilPrd       '+
                       '                   when A.Nosat=2 then B.QntHasilPrd/A.isi      '+
                       '                   else 0         '+
                       '              end,0) QntH,        '+
                       '       A.QNT-                  '+
                       '       ISNULL(Case when A.Nosat=1 then B.QntHasilPrd      '+
                       '                   when A.Nosat=2 then B.QntHasilPrd/A.isi   '+
                       '                   else 0  '+
                       '              end,0) SisaSPK            '+
                       'From [vwSPK] A          '+
                       '     Left Outer join dbBarang E on E.KodeBrg=A.Kodebrg       '+
                       '     Left Outer join (Select y.NoSPK,y.KODEBRG, y.KodeGdg ,Sum( y.QNT*y.ISI)QntHasilPrd  from DBHASILPRD x       '+
                       '                           left Outer join DBHASILPRDDET y on y.NOBUKTI=x.NOBUKTI Group by y.NoSPK,y.KODEBRG, y.KodeGdg) B on B.NoSPK=A.NOBUKTI and B.KODEBRG=A.KODEBRG '+
                       'where A.QNT-        '+
                       '       ISNULL(Case when A.Nosat=1 then B.QntHasilPrd        '+
                       '                   when A.Nosat=2 then B.QntHasilPrd/A.isi   '+
                       '                   else 0        '+
                       '              end,0)>0  and A.NoBukti=:0        '+
                       'Order by A.NoBukti',[NoSPK.text],Dm.Qucari)=true then
        begin
           with DM.QuCari do
            Begin
             NoSPK.Text:=fieldbyname('NoBukti').AsString;
             Kodebrg.Text:=FieldByName('BrgJ').AsString;
             LNamaBrg.Caption:='[ '+FieldByName('NamaBrgJ').AsString+' ]';
             Qnt.AsFloat:=FieldByName('QntJ').AsFloat;
             NoSat.AsInteger:=FieldByName('NosatJ').AsInteger;
             LNamaSat.Caption:='[ '+FieldByName('Satj').AsString+' ]';
            end;
        end
        else TampilIsiNoSPK;
      end;
    end;
    IsiSatuan;
  end;
end;

procedure TFrHasilP.frxReport1AfterPrintReport(Sender: TObject);
begin
NilaiCetak('CetakKe','DBHasilPrd',Nobukti.Text);
end;

procedure TFrHasilP.NoUrutExit(Sender: TObject);
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

procedure TFrHasilP.KodeMesinExit(Sender: TObject);
begin

  if mValid Then
  begin
     if Length(Kodemesin.Text)=0 then TampilIsiMesin else
     begin
        {if DataBersyarat('select KodeMsn,ket from dbMesin where KodeMsn=:0',[KodeMesin.Text], DM.QuCari)=True then
        begin
          KodeMesin.Text:=DM.QuCari.fieldbyname('KodeMsn').AsString;
          NamaMesin.Caption:='[ '+DM.QuCari.FieldByName('Ket').AsString+' ]';
        end
        else TampilIsiMesin;   }
     end;
  end;

end;

procedure TFrHasilP.PR4Exit(Sender: TObject);
begin
//ActiveControl:=TK1;
end;

procedure TFrHasilP.TK2Exit(Sender: TObject);
begin
  if mValid then
  begin
      if Length(TK2.Text)=0 then TampilIsiKaryawan1 else
      begin
          if DataBersyarat('Select a.nik, b.nama  from dbhasilprdtenaker a      '+
                           'Left Outer Join dbkaryawan b on b.nik =a.nik '+
                           //'on a.NoBuKti=b.NoPo left Outer Join dbBarang c on a.Kodebrg=c.Kodebrg ' +
                           'where A.Nik=:0 ',
                     [TK2.Text], DM.QuCari)=True then
        begin
             TK2.Text:=DM.QuCari.FieldByName('Nik').AsString;
             LTK2.Caption:='[ '+DM.QuCari.FieldByName('nama').AsString+' ]';
             {Qnt.MaxValue:=DM.QuCari.FieldByName('QntSisa').AsFloat+0.01;
             Qnt.AsFloat:=DM.QuCari.FieldByName('QntSisa').AsFloat;
             Harga.AsFloat:=DM.QuCari.FieldByName('Harga').AsFloat;
             IsiSatuan;}
        end
        else
             TampilIsiKaryawan1;
      end;
  end;
  mvalid:=false;
end;


procedure TFrHasilP.TK4Exit(Sender: TObject);
begin
  if mValid then
  begin
      if Length(TK4.Text)=0 then TampilIsiKaryawan3 else
      begin
          if DataBersyarat('Select a.nik, b.nama  from dbhasilprdtenaker a      '+
                           'Left Outer Join dbkaryawan b on b.nik =a.nik '+
                           //'on a.NoBuKti=b.NoPo left Outer Join dbBarang c on a.Kodebrg=c.Kodebrg ' +
                           'where A.Nik=:0 ',
                     [TK4.Text], DM.QuCari)=True then
        begin
             TK4.Text:=DM.QuCari.FieldByName('Nik').AsString;
             LTK4.Caption:='[ '+DM.QuCari.FieldByName('nama').AsString+' ]';
             {Qnt.MaxValue:=DM.QuCari.FieldByName('QntSisa').AsFloat+0.01;
             Qnt.AsFloat:=DM.QuCari.FieldByName('QntSisa').AsFloat;
             Harga.AsFloat:=DM.QuCari.FieldByName('Harga').AsFloat;
             IsiSatuan;}
        end
        {else
             TampilIsiKaryawan3; }
      end;
  end;
 mvalid:=false;
end;

procedure TFrHasilP.TK3Exit(Sender: TObject);
begin
  if mValid then
  begin
      if Length(TK3.Text)=0 then TampilIsiKaryawan2 else
      begin
          if DataBersyarat('Select a.nik, b.nama  from dbhasilprdtenaker a      '+
                           'Left Outer Join dbkaryawan b on b.nik =a.nik '+
                           //'on a.NoBuKti=b.NoPo left Outer Join dbBarang c on a.Kodebrg=c.Kodebrg ' +
                           'where A.Nik=:0 ',
                     [TK3.Text], DM.QuCari)=True then
        begin
             TK3.Text:=DM.QuCari.FieldByName('Nik').AsString;
             LTK3.Caption:='[ '+DM.QuCari.FieldByName('nama').AsString+' ]';
             {Qnt.MaxValue:=DM.QuCari.FieldByName('QntSisa').AsFloat+0.01;
             Qnt.AsFloat:=DM.QuCari.FieldByName('QntSisa').AsFloat;
             Harga.AsFloat:=DM.QuCari.FieldByName('Harga').AsFloat;
             IsiSatuan;}
        end
        {else
             TampilIsiKaryawan2; }
      end;
  end;
  mvalid:=false;
end;


procedure TFrHasilP.TK1Exit(Sender: TObject);
begin
  if mValid then
  begin
      if Length(TK1.Text)=0 then TampilIsiKaryawan else
      begin
          if DataBersyarat('Select a.nik, b.nama  from dbhasilprdtenaker a      '+
                           'Left Outer Join dbkaryawan b on b.nik =a.nik '+
                           //'on a.NoBuKti=b.NoPo left Outer Join dbBarang c on a.Kodebrg=c.Kodebrg ' +
                           'where A.Nik=:0 ',
                     [TK1.Text], DM.QuCari)=True then
        begin
             TK1.Text:=DM.QuCari.FieldByName('Nik').AsString;
             LTK1.Caption:='[ '+DM.QuCari.FieldByName('nama').AsString+' ]';
             {Qnt.MaxValue:=DM.QuCari.FieldByName('QntSisa').AsFloat+0.01;
             Qnt.AsFloat:=DM.QuCari.FieldByName('QntSisa').AsFloat;
             Harga.AsFloat:=DM.QuCari.FieldByName('Harga').AsFloat;
             IsiSatuan;}
        end
        {else
             TampilIsiKaryawan;}
      end;
  end;
  mvalid:=false;
end;

end.
