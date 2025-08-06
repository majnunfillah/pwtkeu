unit FrmRBeliGdg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, wwdblook, Wwdbigrd, Wwdbgrid,
  DBCtrls, ppBands, ppCtrls, ppDB, jpeg, ppPrnabl, ppClass, ppCache,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, ImgList, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ppVar,variants, dxEditor,
  dxExEdtr, dxEdLib, ppStrtch, ppMemo,Dateutils, ppModule, raCodMod,
  frxClass, frxDMPExport, frxDBSet, frxDesgn, MyGlobal, Math, StrUtils;

type
  TFrRBeliGdg = class(TForm)
    Panel1: TPanel;
    NoUrut: TEdit;
    TANGGAL: TDateEdit;
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
    Label14: TLabel;
    NoSuratJalan: TEdit;
    Label17: TLabel;
    Keterangan: TEdit;
    Label12: TLabel;
    dxDBGrid1Kodebrg: TdxDBGridMaskColumn;
    dxDBGrid1Qnt: TdxDBGridMaskColumn;
    dxDBGrid1Harga: TdxDBGridMaskColumn;
    dxDBGrid1Satuan: TdxDBGridMaskColumn;
    dxDBGrid1NamaBrg: TdxDBGridColumn;
    frxDataPerusahaan: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    DsgCetakBtn: TSpeedButton;
    Label2: TLabel;
    NoBeli: TEdit;
    frxDesigner1: TfrxDesigner;
    frxReport1: TfrxReport;
    frxDesigner2: TfrxDesigner;
    KodeExp: TEdit;
    NamaExp: TRxLabel;
    dxDBGrid1TotalUSD: TdxDBGridMaskColumn;
    dxDBGrid1TotalIDR: TdxDBGridMaskColumn;
    dxDBGrid1Beban: TdxDBGridMaskColumn;
    dxDBGrid1Total: TdxDBGridMaskColumn;
    QuByAngkut: TADOQuery;
    Label8: TLabel;
    Label9: TLabel;
    Label19: TLabel;
    LNamaSat: TRxLabel;
    LNamaBrg: TRxLabel;
    KodeBrg: TEdit;
    Qnt: TPBNumEdit;
    NoSat: TPBNumEdit;
    KodeSupp: TEdit;
    LnamaSupp: TLabel;
    LAlamatSupp: TLabel;
    Shape6: TShape;
    dxDBGrid1Urut: TdxDBGridMaskColumn;
    dxDBGrid1DiscTot: TdxDBGridMaskColumn;
    dxDBGrid1KodeGdg: TdxDBGridColumn;
    Label20: TLabel;
    KodeGdg: TEdit;
    Label21: TLabel;
    Qnt1: TPBNumEdit;
    Label13: TLabel;
    LabelSatuan1: TLabel;
    Qnt2: TPBNumEdit;
    LabelSatuan2: TLabel;
    QuBeliNOBUKTI: TStringField;
    QuBeliNOURUT: TStringField;
    QuBeliTANGGAL: TDateTimeField;
    QuBeliTGLJATUHTEMPO: TDateTimeField;
    QuBeliKODESUPP: TStringField;
    QuBeliNamaCustSupp: TStringField;
    QuBeliAlamat1: TStringField;
    QuBeliAlamat2: TStringField;
    QuBeliKota: TStringField;
    QuBeliAlamat: TStringField;
    QuBeliNOBELI: TStringField;
    QuBeliKodeGdg: TStringField;
    QuBeliKODEEXP: TStringField;
    QuBeliHANDLING: TBCDField;
    QuBeliKETERANGAN: TWideStringField;
    QuBeliFAKTURSUPP: TStringField;
    QuBeliKODEVLS: TStringField;
    QuBeliKURS: TBCDField;
    QuBeliPPN: TWordField;
    QuBeliTIPEBAYAR: TWordField;
    QuBeliHARI: TIntegerField;
    QuBeliTipeDisc: TWordField;
    QuBeliDISC: TFloatField;
    QuBeliDISCRP: TBCDField;
    QuBeliNILAIPOT: TBCDField;
    QuBeliNILAIDPP: TBCDField;
    QuBeliNILAIPPN: TBCDField;
    QuBeliNILAINET: TBCDField;
    QuBeliISCETAK: TBooleanField;
    QuBeliNilaiCetak: TIntegerField;
    QuBeliURUT: TSmallintField;
    QuBeliKODEBRG: TStringField;
    QuBeliQNT: TBCDField;
    QuBeliNOSAT: TWordField;
    QuBeliSATUAN: TStringField;
    QuBeliISI: TBCDField;
    QuBeliDISCP: TBCDField;
    QuBeliDISCTOT: TBCDField;
    QuBeliBYANGKUT: TBCDField;
    QuBeliNOPBL: TStringField;
    QuBeliURUTPBL: TIntegerField;
    QuBeliQnt2: TBCDField;
    QuBeliQnt1: TBCDField;
    QuBeliHPP: TBCDField;
    QuBeliHRGNETTO: TBCDField;
    QuBeliNDISKON: TFloatField;
    QuBeliSUBTOTAL: TBCDField;
    QuBeliNDPP: TFloatField;
    QuBeliNPPN: TFloatField;
    QuBeliNNET: TFloatField;
    QuBeliNamaBrg: TStringField;
    QuBeliNFix: TBooleanField;
    Sp_Rbeli: TADOStoredProc;
    QuBeliHARGA: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure TampilData(No_Bukti:String);
    Procedure Hitung;
    procedure UpdateDataBeli(Choice:Char;Kodet:String);
    procedure FormCreate(Sender: TObject);
    procedure TambahBtnClick(Sender: TObject);
    procedure ClearPanelDetail;
    procedure RefreshAll;
    procedure QntKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TANGGALKeyDown(Sender: TObject; var Key: Word;
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
    procedure TANGGALExit(Sender: TObject);
    procedure KodeSuppEnter(Sender: TObject);
    procedure KodeSuppExit(Sender: TObject);
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
    procedure DsgCetakBtnClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure NoUrutChange(Sender: TObject);
    procedure KodeExpExit(Sender: TObject);
    procedure KodeGdgExit(Sender: TObject);
    procedure NoBeliExit(Sender: TObject);
    procedure KodeBrgEnter(Sender: TObject);
    procedure KodeBrgExit(Sender: TObject);
    procedure TANGGALChange(Sender: TObject);
    procedure QntChange(Sender: TObject);
    procedure NoSatChange(Sender: TObject);
    procedure NoUrutExit(Sender: TObject);
    procedure KodeSuppKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
    mUrutPBL: Integer;
    mNamaSatuan: TNamaSatuanBrg;
    mIsiSatuan: TIsiSatuanBrg;
    mUbahHd, mUbahHdDet: Boolean;
    mNilaiDiscEnter: Real;
    mNFixBarang: Boolean;
    pphp : Real;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure TampilIsiSupplier;
    procedure TampilIsiEkspedisi;
    procedure TampilIsiGudang;
    procedure TampilIsiValas;
    procedure IsiSatuan;
    procedure TampilIsiBarang;
    procedure TampilIsiBarangBeli;
    procedure IsiNoBuktiBaru;
    procedure IsiDariNoBeli;
    procedure TampilIsiNoBeli;
    procedure UpdateBiayaAngkut(pNoBukti: String);
    function  CekQntBarang: Boolean;
    procedure TampilHrgTerakhir;
    procedure TampilanQnt1Qnt2;
  public
    { Public declarations }
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel,xmodalkoreksi: Boolean;
    NDiskon,NSubTotal,NDPP,NPPN,NNet,DiskonTotal:real;
    yy,mm,dd : word;
    IsPPN:Integer;
    XCustSupp:String;
    Procedure AmBilDataBeli;
  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrRBeliGdg: TFrRBeliGdg;
  mValid,mExit,mMasterKoreksi: Boolean;
  mUrut,MurutPO,IsTutup,mNosat,mPosisi:Integer;
  TipeTrans,PlusPPN,Nomor,Model:String;
  mBulan,mTahun:string;
  Biaya,IsiBrg,potongan:Real;
  S:array[0..255]of char;
  BM : TBookmark;

implementation
uses FrmBrows,MyProcedure, MyModul, FrmMainRBeliGdg;
{$R *.DFM}

// PROCEDURE DAN FUNCTION PRIBADI

procedure TFrRBeliGdg.TampilTombolDetail(pNilai: Boolean);
begin
  PanelShow1.Enabled:=not pNilai;
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  Panel3.Enabled:=pNilai;

end;

procedure TFrRBeliGdg.TampilIsiSupplier;
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
      IsPPN:=fieldbyname('PPN').AsInteger;
      XCUstSupp:=fieldbyname('KodeCustSupp').Asstring;
      IsiNoBuktiBaru;
      Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,isMax);
    end;
  end else
    ActiveControl:=KodeSupp;
end;

procedure TFrRBeliGdg.TampilIsiEkspedisi;
begin
  KodeBrows:=1250;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeExp.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    with FrBrows.QuBrows do
    begin
      KodeExp.Text:=FieldByName('KodeExp').AsString;
      NamaExp.Caption:='[ '+FieldByName('NamaExp').AsString+' ]';
    end;
  end
end;

procedure TFrRBeliGdg.TampilIsiGudang;
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

procedure TFrRBeliGdg.TampilIsiValas;
begin
end;

procedure TFrRBeliGdg.IsiSatuan;
begin
  LNamaSat.Caption:=IsiSatuanBrg(KodeBrg.Text, mNamaSatuan, mIsiSatuan);
  LabelSatuan1.Caption:='['+mNamaSatuan[1]+']';
  LabelSatuan2.Caption:='['+mNamaSatuan[2]+']';
end;

procedure TFrRBeliGdg.TampilIsiBarang;
begin
  KodeBrows:=24201;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:='%'+KodeBrg.Text+'%';
  FrBrows.NoKira1:=KodeGdg.Text;
    FrBrows.ShowModal;
    if FrBrows.ModalResult=mrOk then
    begin
      with FrBrows.QuBrows do
      begin
        KodeBrg.Text:=fieldbyname('KodeBrg').AsString;
        LNamaBrg.Caption:='[ '+fieldbyname('NamaBrg').AsString+' ]';
        Qnt.Value:=1;
        Qnt.MaxValue :=0;
        NoSat.Value:=1;
        mUrutPBL:=0;
        TampilHrgTerakhir;
      end;
      IsiSatuan;
    end
    else
      ActiveControl:=KodeBrg;
end;

procedure TFrRBeliGdg.TampilIsiBarangBeli;
begin
  if Nobeli.Text<>'-' then
  begin
          KodeBrows:=23301;
          Application.CreateForm(TFrBrows, FrBrows);
          FrBrows.IsiData:=KodeBrg.Text;
          FrBrows.NoKira1:=NoBeli.Text;
          FrBrows.ShowModal;
          if FrBrows.ModalResult=mrOk then
          begin
            with FrBrows.QuBrows do
            begin
              KodeBrg.Text:=FieldByName('KodeBrg').AsString;
              LNamaBrg.Caption:='[ '+FieldByName('NamaBrg').AsString+' ]';
              NoSat.Value:=FieldByName('NoSat').AsInteger;
              mUrutPBL:=FieldByName('Urut').AsInteger;
              mNFixBarang:=FieldByName('NFix').AsBoolean;
              IsiSatuan;
              TampilanQnt1Qnt2;
              Qnt.Value:=FieldByName('Qnt').AsFloat;
              pphp:=Fieldbyname('PPhp').asFloat;
              //Qnt1.Value :=Fieldbyname('Qnt1').AsFloat;
              //Qnt2.Value:=Fieldbyname('Qnt2').AsFloat;
            end;
          end
          else
            ActiveControl:=KodeBrg;
   End
   Else
   Begin
          KodeBrows:=9149;
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
              IsiSatuan;
              ActiveControl:=Qnt;
            end;
          end
          else
            ActiveControl:=KodeBrg;
   End;
end;

procedure TFrRBeliGdg.TampilHrgTerakhir;
begin

end;

procedure TFrRBeliGdg.TampilanQnt1Qnt2;
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

procedure TFrRBeliGdg.IsiNoBuktiBaru;
begin
  DecodeDate(Date,YY,MM,DD);
  If DayOfTheMonth(Date)<=DD then
     DD:=DayOfTheMonth(date);
  Try
    TANGGAL.Date := EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),DD);
  Except
    TANGGAL.Date := EndOfAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln))
  end;
 // Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal.Date);
 if IsPPN=0 then
  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal.Date,Xcustsupp,False)
  else if IsPPN=1 then
  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal.Date);
  NoUrut.Text := NomorBukti;
  NOBUKTI.Text := Nomor;
end;

procedure TFrRBeliGdg.IsiDariNoBeli;
begin
{  with DM.QuCari do
  begin
     Close;
     SQL.Clear;
     SQL.Add('select A.Handling, A.KodeExp, G.NamaExp, A.Keterangan, A.FakturSupp, ');
     SQL.Add('	A.KodeVls, D.NamaVls, A.Kurs, A.PPN, A.TipeBayar, A.Hari, A.Disc,B.KodeGdg ');
     SQL.Add('From dbBeli A Left Outer Join dbBeliDet B On A.NoBukti=B.NoBukti');
     SQL.Add('Left Outer Join dbCustSupp C on C.KodeCustSupp=A.KodeSupp ');
     SQL.Add('Left Outer join dbValas D on D.KodeVls=A.KodeVls ');
     SQL.Add('Left Outer Join dbExpedisi G on G.KodeExp=A.KodeExp ');
     SQL.Add('where A.NoBukti='+QuotedStr(NoBeli.Text));
     Open;
     HandlingFee.AsFloat:=FieldByname('Handling').AsFloat;
     KodeExp.Text:=FieldByName('KodeExp').AsString;
     NamaExp.Caption:='[ '+FieldByName('NamaExp').AsString+' ]';
     NoSuratJalan.Text:=fieldbyname('FakturSupp').AsString;
     Valas.Text:=fieldbyname('KodeVls').AsString;
     Kurs.AsFloat:=fieldbyname('Kurs').AsFloat;
     PPN.ItemIndex:=fieldbyname('PPN').AsInteger;
     Hari.AsInteger:=fieldbyname('Hari').AsInteger;
     Diskon.AsFloat:=Fieldbyname('Disc').AsFloat;
     KodeGdg.Text:=Fieldbyname('Kodegdg').AsString;
     KodeExp.Enabled:=FieldByName('KodeExp').AsString<>'';
     HandlingFee.Enabled:=FieldByname('Handling').AsFloat<>0.0;
     keterangan.Text:=FieldByName('Keterangan').AsString;
  end; }
end;

procedure TFrRBeliGdg.TampilIsiNoBeli;
begin
  KodeBrows:=23302;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=NoBeli.Text;
  FrBrows.NoKira1:=KodeSupp.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    NoBeli.Text:=FrBrows.QuBrows.FieldbyName('NoBukti').AsString;
    IsiDariNoBeli;
    if Length(NoBeli.Text)=0 then
      ActiveControl:=NoBeli;
  end else
    ActiveControl:=NoBeli;
end;

procedure TFrRBeliGdg.UpdateBiayaAngkut(pNoBukti: String);
begin
  QuByAngkut.Close;
  QuByAngkut.SQL.Strings[2]:='select @NoBukti='+QuotedStr(pNoBukti);
  QuByAngkut.ExecSQL;
end;

Procedure TFrRBeliGdg.Hitung;
begin
  //DiskonRp.Value:=QuBeliTotDiskon.AsFloat;
  //DPP.Value:=QuBeliTotDPP.AsFloat;
  //Pajak.Value:=QuBeliTotPPN.AsFloat;
  //GrandTotal.Value:=QuBeliTotNet.AsFloat;
end;

procedure TFrRBeliGdg.TampilData(No_Bukti:String);
begin
   with QuBeli do
   begin
       Close;
       SQL.Strings[2]:='select @NoBukti='+QuotedStr(No_Bukti);
       Open;
   end;
   KodeSupp.Enabled:=QuBeli.IsEmpty;
   NoBeli.Enabled:=QuBeli.IsEmpty;
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

Function TFrRBeliGdg.CheckFormMaster:boolean;
begin
   if (length(KodeSupp.Text)=0) then
   CheckFormMaster:=false
   else
   CheckFormMaster:=true;
end;

procedure TFrRBeliGdg.UpdatedbBeli;
begin
  if (not QuBeli.IsEmpty) and (mUbahHd=True) then
  begin
    with QuUpdatedbBeli do
    begin
       Close;
       Sql.Clear;
       SQL.Add('Update dbRBeli');
       SQL.Add('Set Tanggal=:0,KodeSupp=:1,');
       Sql.Add('    NoBeli=:2, KodeExp=:3, Keterangan=:4, kodegdg=:5 ');
       SQL.Add('Where Nobukti='+QuotedStr(NoBukti.Text));
       Prepared;
       Parameters[0].Value := TANGGAL.Date;
       Parameters[1].Value := KodeSupp.Text;
       Parameters[2].Value := NoBeli.Text;
       Parameters[3].Value := KodeExp.Text;
       Parameters[4].Value := Keterangan.Text;
       Parameters[5].Value := KodeGdg.Text;
       ExecSQL;
         Close;
         SQL.Clear;
         SQL.Add('exec sp_UpdateRBeli '+QuotedStr(NoBukti.Text));
         ExecSQL;
       mUbahHd:=False; mUbahHdDet:=False;
    end;
    TampilData(NoBukti.Text);
  end;
end;

procedure TFrRBeliGdg.ClearPanelDetail;
begin
   KodeBrg.Text:='';
   Qnt.Value:=0;
   Qnt1.Value:=0;
   Qnt2.Value:=0;
   LNamaBrg.Caption:='[ . . . ]';
   LNamaSat.Caption:='[ . . . ]';
   Nosat.AsInteger:=1;
end;

procedure TFrRBeliGdg.RefreshAll;
var i:integer;
begin
   mValid:=False;
   KodeSupp.Enabled:=true;
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
   LnamaSupp.caption:='';
   LAlamatSupp.caption:='';
   KodeSupp.Text:='';
   ClearPanelDetail;
end;

procedure TFrRBeliGdg.UpdateDataBeli(Choice:Char;Kodet:String);
begin
   if Choice='I' then mUrut:=1
     else mUrut:=QuBeliUrut.AsInteger;

    if NoBeli.Text<>'-' then
    begin
         BM:=QuBeli.GetBookmark;
         With Sp_Beli do
         begin
             Parameters.Refresh;
             Parameters[1].Value:=Choice;
             Parameters[2].Value:=NoBukti.Text;
             Parameters[3].Value:=NoUrut.Text;
             Parameters[4].Value:=TANGGAL.Date;
             Parameters[5].Value:=KodeSupp.Text;
             Parameters[6].Value:=KodeGdg.Text;
             Parameters[7].Value:=NoBeli.Text;
             Parameters[8].Value:=Keterangan.Text;
             Parameters[9].Value:=NoSuratJalan.Text;
             Parameters[10].Value:=mUrut;
             Parameters[11].Value:=KodeBrg.Text;
             Parameters[12].Value:=mUrutPBL;
             Parameters[13].Value:=Qnt.AsFloat;
             Parameters[14].Value:=NoSat.AsInteger;
             Parameters[15].Value:=mNamaSatuan[NoSat.AsInteger];
             Parameters[16].Value:=mIsiSatuan[NoSat.AsInteger];
             Parameters[17].Value:=Qnt1.AsFloat;
             Parameters[18].Value:=Qnt2.AsFloat;
             Parameters[19].Value :=IsPPN;
             Parameters[20].Value :=pphp;

             try
                ExecProc;
                //UpdateBiayaAngkut(NoBukti.Text);
                if Choice='I' then
                begin
                  TampilData(NOBUKTI.Text);
                  QuBeli.Locate('kodebrg',KodeBrg.Text,[LOP,LOC]);
                  LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                          'Kode Brg = '+KodeBrg.Text+' , Qnt = '+Qnt.Text+' '+mNamaSatuan[NoSat.AsInteger]+
                          ' , Harga = ');
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
                  LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                          'Kode Brg = '+KodeBrg.Text+' , Qnt = '+Qnt.Text+' '+mNamaSatuan[NoSat.AsInteger]+
                          ' , Harga = ');
                end
                Else if Choice='D' then
                begin
                  LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                          'Kode Brg = '+QuBeliKodebrg.AsString+' , Qnt = '+QuBeliQnt.DisplayText+' '+QuBeliSatuan.AsString+
                          ' , Harga = '+QuBeliHarga.DisplayText);
                  TampilData(NOBUKTI.Text);
                end;
                Hitung;
             except
                If (Choice='I') Or (Choice='U') then
                   showmessage('Proses Gagal !, Data Sudah Ada.')
                else If (Choice='D') then
                   showmessage('Proses Gagal !, Barang berkaitan dengan transaksi lain.');
             end;
         end;
    End
     Else
     Begin
     BM:=QuBeli.GetBookmark;
           With Sp_RBeli do
           begin
               Parameters.Refresh;
               Parameters[1].Value:=Choice;
               Parameters[2].Value:=NoBukti.Text;
               Parameters[3].Value:=NoUrut.Text;
               Parameters[4].Value:=TANGGAL.Date;
               Parameters[5].Value:=Null;   //TgljatuhTempo
               Parameters[6].Value:=KodeSupp.Text;
               Parameters[7].Value:=NoBeli.Text;
               Parameters[8].Value:=KodeGdg.Text;
               Parameters[9].Value:=0;  //handling
               Parameters[10].Value:=KodeExp.Text;
               Parameters[11].Value:=Keterangan.Text;
               Parameters[12].Value:=NoSuratJalan.Text; //faktursupp
               Parameters[13].Value:='IDR';  //valas
               Parameters[14].Value:=0;  //Kurs
               Parameters[15].Value:=0;  //PPN
               Parameters[16].Value:=0;  //Tipebayar
               Parameters[17].Value:=0;  //hari
               Parameters[18].Value:=0;  //TipeDisc
               Parameters[19].Value:=0;  //Disc
               Parameters[20].Value:=0;  //DiscRp
               Parameters[21].Value:=mUrut;
               Parameters[22].Value:=KodeBrg.Text;
               Parameters[23].Value:=Qnt.AsFloat;
               Parameters[24].Value:=NoSat.AsInteger;
               Parameters[25].Value:=mIsiSatuan[NoSat.AsInteger];
               Parameters[26].Value:=mNamaSatuan[NoSat.AsInteger];
               Parameters[27].Value:=0;  //harga
               Parameters[28].Value:=0;  //discp
               Parameters[29].Value:=0;  //DiscTot
               Parameters[30].Value:=mUrutPBL;
               Parameters[31].Value:=Qnt2.AsFloat;
               Parameters[32].Value:=Qnt1.AsFloat;
               try
                  ExecProc;
                  //UpdateBiayaAngkut(NoBukti.Text);
                  if Choice='I' then
                  begin
                    TampilData(NOBUKTI.Text);
                    QuBeli.Locate('kodebrg',KodeBrg.Text,[LOP,LOC]);
                    LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                            'Kode Brg = '+KodeBrg.Text+' , Qnt = '+Qnt.Text+' '+mNamaSatuan[NoSat.AsInteger]+
                            ' , Harga = ');
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
                    LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                            'Kode Brg = '+KodeBrg.Text+' , Qnt = '+Qnt.Text+' '+mNamaSatuan[NoSat.AsInteger]+
                            ' , Harga = ');
                  end
                  Else if Choice='D' then
                  begin
                    LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                            'Kode Brg = '+QuBeliKodebrg.AsString+' , Qnt = '+QuBeliQnt.DisplayText+' '+QuBeliSatuan.AsString+
                            ' , Harga = '+QuBeliHarga.DisplayText);
                    TampilData(NOBUKTI.Text);
                  end;
                  Hitung;
               except
                  If (Choice='I') Or (Choice='U') then
                     showmessage('Proses Gagal !, Data Sudah Ada.')
                  else If (Choice='D') then
                     showmessage('Proses Gagal !, Barang berkaitan dengan transaksi lain.');
               end;
           end;
     End;
end;

Procedure TFrRBeliGdg.AmBilDataBeli;
begin
   if not QuBeli.IsEmpty then
   begin
      Tanggal.Date:=QuBeliTANGGAL.AsDateTime;
      KodeSupp.Text:=QuBeliKODESUPP.AsString;
      NoBeli.Text:=QuBeliNoBeli.AsString;
      KodeGdg.Text:=QuBeliKodeGdg.AsString;
      KodeExp.Text:=QuBeliKodeExp.AsString;
      //NamaExp.Caption:='[ '+QuBeliNamaExp.AsString+' ]';
      NoSuratJalan.Text:=QuBeliFAKTURSUPP.AsString;
      Keterangan.Text:=QuBeliKETERANGAN.AsString;
      LnamaSupp.Caption:=QuBeli.fieldbyname('NamaCustSupp').AsString;
      LAlamatSupp.Caption:=QuBeli.fieldbyname('Alamat').AsString;
   end;
end;

function  TFrRBeliGdg.CekQntBarang: Boolean;
var iQntSisa: Real;
    xResult: Boolean;
begin
  xResult:=True;
  if NoBeli.Text<>'-' then
  begin
    DataBersyarat('Select A.URUT, A.KODEBRG, Br.NAMABRG, A.NOSAT, A.ISI, A.SATUAN, A.QntTerima,'+#13+
                      '       A.QntTerima-Sum(Case when A.NOSAT=1 then Case when B.NOSAT=1 then B.QntReject'+#13+
                      '                                                     when B.NOSAT=2 then B.QntReject*Br.ISI2'+#13+
                      '                                                     else 0'+#13+
                      '                                                end'+#13+
                      '                            when A.NOSAT=2 then Case when B.NOSAT=1 then B.QntReject/Br.ISI2'+#13+
                      '                                                     when B.NOSAT=2 then B.QntReject'+#13+
                      '                                                     else 0'+#13+
                      '                                                end'+#13+
                      '                        else 0'+#13+
                      '                   end)-isnull(D.Qnt,0) Qnt,'+#13+
                      '       A.Qnt1Terima-Sum(Case when A.NOSAT=1 then Case when B.NOSAT=1 then B.Qnt1Reject'+#13+
                      '                                                      when B.NOSAT=2 then B.Qnt1Reject'+#13+
                      '                                                      else 0'+#13+
                      '                                                 end'+#13+
                      '                             when A.NOSAT=2 then Case when B.NOSAT=1 then B.Qnt1Reject'+#13+
                      '                                                      when B.NOSAT=2 then B.Qnt1Reject'+#13+
                      '                                                      else 0'+#13+
                      '                                                 end'+#13+
                      '                        else 0'+#13+
                      '                   end)-isnull(D.Qnt1,0) Qnt1,'+#13+
                      '       A.Qnt2Terima-Sum(Case when A.NOSAT=1 then Case when B.NOSAT=1 then B.Qnt2Reject'+#13+
                      '                                                      when B.NOSAT=2 then B.Qnt2Reject'+#13+
                      '                                                      else 0'+#13+
                      '                                                 end'+#13+
                      '                             when A.NOSAT=2 then Case when B.NOSAT=1 then B.Qnt2Reject'+#13+
                      '                                                      when B.NOSAT=2 then B.Qnt2Reject'+#13+
                      '                                                      else 0'+#13+
                      '                                                 end'+#13+
                      '                        else 0'+#13+
                      '                   end)-isnull(D.Qnt2,0) Qnt2, Br.NFix'+#13+
                      'from (Select urut, kodebrg, QNT, QntTerima,Qnt1Terima, Qnt2Terima, NOSAT, ISI, SATUAN, NOBUKTI'+#13+
                      '      from DBBELIDET'+#13+
                      '      where QntTerima<>0) A'+#13+
                      '      Left Outer join (Select urut, kodebrg, QNT,  QntReject, Qnt1Reject, Qnt2Reject,  NOSAT, ISI, SATUAN, NOBUKTI'+#13+
                      '                       from DBBELIDET'+#13+
                      '                       where Qnt1Reject<>0) B on B.NOBUKTI=A.NOBUKTI and B.KODEBRG=A.KODEBRG'+#13+
                      '      left outer join DBBARANG Br on Br.KODEBRG=A.KODEBRG'+#13+
                      '      Left Outer join (Select x.NOPBL, x.URUTPBL, SUM(x.QNT) Qnt, SUM(x.Qnt1) Qnt1, SUM(x.Qnt2) Qnt2'+#13+
                      '                       from DBRBELIDET x'+#13+
                      '                       group by x.NOPBL, x.URUTPBL) D on D.NOPBL=A.NOBUKTI and D.URUTPBL=A.URUT'+#13+
                      'where A.Nobukti=:0 and A.Urut=:1'+#13+
                      'Group by A.URUT, A.KODEBRG, Br.NAMABRG, A.NOSAT, A.ISI, A.SATUAN, Br.NFix, A.QntTerima, A.Qnt1Terima, A.Qnt2Terima,D.Qnt,D.Qnt1, D.Qnt2'+#13+
                      'Having A.QntTerima-Sum(Case when A.NOSAT=1 then Case when B.NOSAT=1 then B.QntReject'+#13+
                      '                                                     when B.NOSAT=2 then B.QntReject*Br.ISI2'+#13+
                      '                                                     else 0'+#13+
                      '                                                end'+#13+
                      '                            when A.NOSAT=2 then Case when B.NOSAT=1 then B.QntReject/Br.ISI2'+#13+
                      '                                                     when B.NOSAT=2 then B.QntReject'+#13+
                      '                                                     else 0'+#13+
                      '                                                end'+#13+
                      '                        else 0'+#13+
                      '                   end)-isnull(D.Qnt,0)>0'+#13+
                      'order by A.Urut', [NoBeli.Text, mUrutPBL], DM.QuCari);
    if DM.QuCari.IsEmpty then iQntSisa:=0
      else iQntSisa:=DM.QuCari.FieldByName('Qnt').AsFloat;
    if Model='koreksi' then
      iQntSisa:=iQntSisa+QuBeliQnt.AsFloat;

    if RoundTo(Qnt.Value,-2)>RoundTo(iQntSisa,-2) then
    begin
      xResult:=False;
      ShowMessage('Qnt tidak boleh lebih dari '+FormatFloat(',0.00', iQntSisa)+' '+mNamaSatuan[NoSat.AsInteger]+' !!!');
      ActiveControl:=Qnt;
    end;
  end;
  Result:=xResult;
end;

// PROCEDURE DAN FUNCTION MILIK DELPHI

procedure TFrRBeliGdg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if mExit=true then
  begin
     Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,IDUser);
     FrMainRBeliGdg.ToolButton10.Click;
     Action:=cafree;
  end
  else
  begin
     Action:=caNone;
  end;
end;

procedure TFrRBeliGdg.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0)
   else if key=38 then QuBeli.Prior
   else if key=40 then QuBeli.Next;
end;

procedure TFrRBeliGdg.FormShow(Sender: TObject);
begin
  mValid:=False;
  xModalKoreksi:=FrMainRBeliGdg.ModalKoreksi;
  If xModalKoreksi=False then
  begin
    RefreshAll;
   // IsiNoBuktiBaru;
    TampilData(NoBukti.Text);
   // NoUrut.Enabled:=True;
   ActiveControl:=KodeSupp;
  end
  else
  Begin
    NOBUKTI.Text:=FrMainRBeliGdg.QuMasterNoBukti.AsString;
    Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,isMax);
    TampilData(NOBUKTI.Text);
    AmBilDataBeli;
    NoUrut.Text:=QuBeliNoUrut.AsString;
    NoUrut.Enabled:=False;
    ActiveControl:=TANGGAL;
  end;
  NoSat.OnChange:=NoSatChange;
  Qnt.OnChange:=QntChange;
end;

procedure TFrRBeliGdg.FormCreate(Sender: TObject);
begin
  TipeTrans:='RPB';
  LnamaSupp.Caption:='';
  LAlamatSupp.Caption:='';
  Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
  mUbahHd:=False;
  mUbahHdDet:=False;
end;

procedure TFrRBeliGdg.TambahBtnClick(Sender: TObject);
begin
  if CheckFormMaster=true then
  begin
      Model:='write';
      TampilTombolDetail(True);
      KodeBrg.Enabled:=True;
      ActiveControl:=Kodebrg;
  end
  else
  begin
     ShowMessage('Form Master Tidak Lengkap, Silahkan Anda Periksa !');
  end;
end;

procedure TFrRBeliGdg.QntKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_Escape then
   begin
      mValid:=false;
      KodeBrg.Enabled:=true;
      Panel2.Enabled:=true;
      ClearPanelDetail;
      SpeedButton1.Click;
   end;
end;

procedure TFrRBeliGdg.TANGGALKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
  begin
      if (CekPeriode(IDUser,TANGGAL.Date)=False) then
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
      TampilData(NOBUKTI.Text);
      ActiveControl:=KodeSupp;
      mExit:=True;

    end
    else
    begin
      mExit:=True;
      Close;
    end;
  end;
end;

procedure TFrRBeliGdg.KoreksiBtnClick(Sender: TObject);
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
        mUrutPBL:= QuBeliUrutPBL.AsInteger;
        KodeBrg.Text:=QuBeliKodeBrg.AsString;
        LNamaBrg.Caption:='[ '+QuBeliNamaBrg.AsString+' ]';
        mUrut:=QuBeliUrut.AsInteger;
        Qnt.AsFloat:=QuBeliQnt.AsFloat;
        Qnt1.Value:=QuBeliQnt1.AsFloat;
        Qnt2.AsFloat:=QuBeliQnt2.AsFloat;
        NoSat.Value:=QuBeliNoSat.AsInteger;
        mPosisi:=QuBeliUrut.AsInteger;
        mNFixBarang:=QuBeliNFix.AsBoolean;
        IsiSatuan;
        TampilanQnt1Qnt2;
        ActiveControl:=Qnt;
     end
     else
     begin
        MsgKoreksiDataKosong;
        ActiveControl:=dxDBGrid1;
     end;
  end;
end;

procedure TFrRBeliGdg.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
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
      //IsiNoBuktiBaru;
      TampilData(NOBUKTI.Text);
      FrMainRBeliGdg.GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
      ActiveControl:=KodeSupp;
    end;
  end
  else if key=VK_return then
  begin
   if xmodalkoreksi Then
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

procedure TFrRBeliGdg.HapusBtnClick(Sender: TObject);
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
          StrPCopy(S,Format('Anda yakin Kode %s dan Nama %s dihapus ?',
          [QuBeliKodeBrg.asstring, QuBeliNamaBrg.asstring]));
          if (Application.MessageBox(S,'Hapus Data',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
          begin
             UpdateDataBeli('D','BL');
          end;
       end;
    end else
    begin
      MsgPeriodeSudahDikunci;
      ActiveControl:=dxDBGrid1;
    end;
  end
  else
  begin
    MsgTglTidakSesuaiPeriode;
  end;
end;

procedure TFrRBeliGdg.wwDBGrid1Enter(Sender: TObject);
begin
  FrRBeliGdg.KeyPreview:=false;
  CheckFormMaster;
end;

procedure TFrRBeliGdg.wwDBGrid1Exit(Sender: TObject);
begin
  FrRBeliGdg.KeyPreview:=true;
end;

procedure TFrRBeliGdg.wwDBGrid1DblClick(Sender: TObject);
begin
  KoreksiBtn.Click;
end;

procedure TFrRBeliGdg.NoUrutKeyDown(Sender: TObject; var Key: Word;
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
        if FrMainRBeliGdg.ModalKoreksi then
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

procedure TFrRBeliGdg.TANGGALExit(Sender: TObject);
begin
  if mValid then
  begin
     if CekPeriode(IdUser,TANGGAL.Date)=false then
     begin
        MsgTglTidakSesuaiPeriode;
        ActiveControl:=tanggal;
     end;
  end;
end;

procedure TFrRBeliGdg.KodeSuppEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrRBeliGdg.KodeSuppExit(Sender: TObject);
begin
  if mValid Then
  begin
    if length(KodeSupp.Text)=0 then TampilIsiSupplier else
    begin
      Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,IDUser);
      if DataBersyarat(' select X.KodeCustSupp, Y.NamaCustSupp, '+
                        ' rtrim(ltrim(isnull(Y.Alamat1,'''')+case when isnull(Y.Alamat2,'''')='''' then '''' else '' ''+Y.Alamat2 end)) Alamat, '+
                        ' Y.Kota,Y.PPN '+
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
           IsPPN:=fieldbyname('PPN').AsInteger;
           XCUstSupp:=fieldbyname('KodeCustSupp').Asstring;
           IsiNoBuktiBaru;
           Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,isMax);
        end;
      end
      else TampilIsiSupplier;
    end;

  end;
end;

procedure TFrRBeliGdg.CetakClick(Sender: TObject);
var N1, N2, N3 : string;
    T1, T2 : Real;
    Tot : byte;
    H1  : real;
begin
{  N3  := FloatToStr(GrandTotal.Value);
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
  H1  := (GrandTotal.Value);
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

  if QuUpdatedbbeli.FieldByName('Nama').AsString='Zona Accessories' then
       frxReport1.LoadFromFile(currDir+'Nota\NOTARBeliZ.fr3') else

  frxReport1.LoadFromFile(currDir+'Nota\NotaRBELI01.fr3');
  frxReport1.ShowReport; }
end;

procedure TFrRBeliGdg.BitBtn1Click(Sender: TObject);
begin
  if CekPeriode(IdUser,TANGGAL.Date) then
  begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      if CekQntBarang then
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
        else if model='koreksi' then
        begin
          UpdateDataBeli('U','BL');
          SpeedButton1.Click;
        end
      end;
    end else
    begin
      MsgPeriodeSudahDikunci;
      if Qnt.CanFocus then
        ActiveControl:=Qnt;
    end;
  end
  else
    MsgTglTidakSesuaiPeriode;
end;

procedure TFrRBeliGdg.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  ClearPanelDetail;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
end;

procedure TFrRBeliGdg.FormDestroy(Sender: TObject);
begin
  FrRBeliGdg:=nil;
end;

procedure TFrRBeliGdg.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrRBeliGdg.DsgCetakBtnClick(Sender: TObject);
begin
  With QuUpdatedbbeli do
  begin
    close;
    sql.clear;
    sql.add('Select * From vwPerusahaan ');
    Open;
  end;

  if QuUpdatedbbeli.FieldByName('Nama').AsString='Zona Accessories' then
       frxReport1.LoadFromFile(currDir+'Nota\NOTARBeliZ.fr3') else
  frxReport1.LoadFromFile(currDir+'Nota\NotaRBELI01.fr3');
  frxReport1.DesignReport;
end;

procedure TFrRBeliGdg.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
  if comparetext(varname,'Terbilang')=0 then
  value := '# '+TempCode+' #';
end;

procedure TFrRBeliGdg.NoUrutChange(Sender: TObject);
begin
 { if mValid then
  begin
    if Length(NoUrut.Text)=4 then
    begin
      Konfig(TipeTrans,Nourut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date);
      NOBUKTI.Text:=MyNoBukti;
    end
    else
      ActiveControl := NoUrut;
  end;   }
end;

procedure TFrRBeliGdg.KodeExpExit(Sender: TObject);
begin
  if mValid Then
  begin
    if Length(KodeExp.Text)=0 then TampilIsiEkspedisi else
    begin
      if DataBersyarat('Select * from dbExpedisi where KodeExp=:0', [KodeExp.Text], DM.QuCari)=True then
      begin
        with DM.QuCari do
        begin
          KodeExp.Text:=FieldByName('KodeExp').AsString;
          NamaExp.Caption:='[ '+FieldByName('NamaExp').AsString+' ]';
        end;
      end
      else TampilIsiEkspedisi;
    end;
  end;
end;

procedure TFrRBeliGdg.KodeGdgExit(Sender: TObject);
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

procedure TFrRBeliGdg.NoBeliExit(Sender: TObject);
begin
  if mValid=True then
  begin
    if NoBeli.Text<>'-' then
    begin
      if Length(NoBeli.Text)=0 then TampilIsiNoBeli else
      begin
        if DataBersyarat('select A.NoBukti from dbBeli A where A.NoBukti=:0 and Cast(Case when Case when A.IsOtorisasi1=1 then 1 else 0 end+ '+
                      '                   Case when A.IsOtorisasi2=1 then 1 else 0 end+ '+
                      '                   Case when A.IsOtorisasi3=1 then 1 else 0 end+ '+
                      '                   Case when A.IsOtorisasi4=1 then 1 else 0 end+ '+
                      '                   Case when A.IsOtorisasi5=1 then 1 else 0 end=A.MaxOL then 0'+
                      '              else 1'+
                      '            end As Bit)=0 ', [NoBeli.Text], DM.QuCari)=True then
          begin
            NoBeli.Text:=DM.QuCari.FieldByName('NoBukti').AsString;
            IsiDariNoBeli;
            if Length(NoBeli.Text)=0 then
              ActiveControl:=NoBeli;
          end else
            TampilIsiNoBeli;
      end;
    end;
    //ActiveControl:=NoSuratJalan;
  end;
end;

procedure TFrRBeliGdg.KodeBrgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrRBeliGdg.KodeBrgExit(Sender: TObject);
begin
  if mValid then
  begin
     TampilIsiBarangBeli;
     //Nosat.Enabled:=False;
     //Nosat2.Enabled:=False;
  end;
end;

procedure TFrRBeliGdg.TANGGALChange(Sender: TObject);
begin
  mUbahHd:=True;
end;

procedure TFrRBeliGdg.QntChange(Sender: TObject);
begin
  if mValid then
  begin
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

procedure TFrRBeliGdg.NoSatChange(Sender: TObject);
begin
  if mValid then
  begin
    TampilanQnt1Qnt2;
    if NoSat.AsInteger=1 then
    begin
      Qnt1.Value:=Qnt.AsFloat;
      if mNFixBarang=False then
        Qnt2.Value:=Qnt.AsFloat/mIsiSatuan[2];
    end else
    begin
      if mNFixBarang=False then
        Qnt1.Value:=Qnt.AsFloat*mIsiSatuan[2];
      Qnt2.Value:=Qnt.AsFloat;
    end;
  end;
end;

procedure TFrRBeliGdg.NoUrutExit(Sender: TObject);
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

procedure TFrRBeliGdg.KodeSuppKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=Vk_Escape then
  begin
    If xModalKoreksi = False then
    begin
      Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
      mValid:=False;
      RefreshAll;
      mExit:=True;
      Close;
    end
  End;
end;

end.
