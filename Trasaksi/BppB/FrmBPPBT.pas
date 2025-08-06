unit FrmBPPBT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, DBCtrls, ImgList, dxDBTLCl, dxGrClms,
  dxTL, dxDBCtrl, dxDBGrid, dxCntner, variants, dxEditor, dxExEdtr, dxEdLib,
  Dateutils, raCodMod, frxClass, frxDMPExport, frxDBSet, frxDesgn, MyGlobal, Strutils;

type
  TFrBPPBT = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    QuBeli: TADOQuery;
    Sp_Beli: TADOStoredProc;
    DsQuBeli: TDataSource;
    QuUpdatedbbeli: TADOQuery;
    Label10: TLabel;
    DataSource1: TDataSource;
    QuReport: TADOQuery;
    Panel2: TPanel;
    Panel4: TPanel;
    dxDBGrid1: TdxDBGrid;
    PanelShow2: TPanel;
    BPrev: TSpeedButton;
    BNext: TSpeedButton;
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
    NamaDept: TRxLabel;
    NoUrut: TEdit;
    Tanggal: TDateEdit;
    NoBukti: TEdit;
    KdDep: TEdit;
    Label6: TLabel;
    KodeGdg: TEdit;
    SpeedButton1: TSpeedButton;
    LNamaBrg: TRxLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label19: TLabel;
    LNamaSat: TRxLabel;
    Label3: TLabel;
    Label7: TLabel;
    LabelSatuan1: TLabel;
    LabelSatuan2: TLabel;
    BitBtn1: TBitBtn;
    Qnt: TPBNumEdit;
    NoSPK: TEdit;
    NoSat: TPBNumEdit;
    Ket: TEdit;
    Qnt2: TPBNumEdit;
    Qnt1: TPBNumEdit;
    Label5: TLabel;
    NoBPPB: TEdit;
    dxDBGrid1URUT: TdxDBGridMaskColumn;
    dxDBGrid1Qnt1: TdxDBGridMaskColumn;
    dxDBGrid1NOSAT: TdxDBGridMaskColumn;
    dxDBGrid1ISI: TdxDBGridMaskColumn;
    dxDBGrid1Qnt2: TdxDBGridMaskColumn;
    Label8: TLabel;
    Ket2: TEdit;
    Kontribusi: TComboBox;
    Label9: TLabel;
    QntPesan: TPBNumEdit;
    Label11: TLabel;
    QntCetak: TPBNumEdit;
    Label13: TLabel;
    QntBaik: TPBNumEdit;
    Label14: TLabel;
    QntRusak: TPBNumEdit;
    Label15: TLabel;
    GroupBox1: TGroupBox;
    PR1: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    QR1: TPBNumEdit;
    KetR1: TEdit;
    Label20: TLabel;
    Label21: TLabel;
    PR2: TEdit;
    QR2: TPBNumEdit;
    KetR2: TEdit;
    Label22: TLabel;
    PR3: TEdit;
    QR3: TPBNumEdit;
    KetR3: TEdit;
    Label23: TLabel;
    PR4: TEdit;
    QR4: TPBNumEdit;
    KetR4: TEdit;
    Label24: TLabel;
    PR5: TEdit;
    QR5: TPBNumEdit;
    KetR5: TEdit;
    Label25: TLabel;
    PR6: TEdit;
    QR6: TPBNumEdit;
    KetR6: TEdit;
    Label27: TLabel;
    PR7: TEdit;
    QR7: TPBNumEdit;
    KetR7: TEdit;
    Label28: TLabel;
    PR8: TEdit;
    QR8: TPBNumEdit;
    KetR8: TEdit;
    Label29: TLabel;
    PR9: TEdit;
    QR9: TPBNumEdit;
    KetR9: TEdit;
    kodeMSn: TEdit;
    Label30: TLabel;
    NmMsn: TLabel;
    Label31: TLabel;
    Permintaan: TComboBox;
    Label32: TLabel;
    KodeBrg: TEdit;
    RxLabel1: TRxLabel;
    QuBeliNOBUKTI: TStringField;
    QuBeliNOURUT: TStringField;
    QuBeliTANGGAL: TDateTimeField;
    QuBeliKDDEP: TStringField;
    QuBeliNMDEP: TStringField;
    QuBeliKodeGdg: TStringField;
    QuBeliKodeGdgT: TStringField;
    QuBeliNoBPPB: TStringField;
    QuBeliUrutBPPB: TIntegerField;
    QuBeliNoSatBPPB: TWordField;
    QuBeliURUT: TIntegerField;
    QuBeliKODEBRG: TStringField;
    QuBeliNAMABRG: TStringField;
    QuBeliNFix: TBooleanField;
    QuBeliQNT: TBCDField;
    QuBeliJEnisminta: TWordField;
    QuBeliQnt1: TBCDField;
    QuBeliNOSAT: TWordField;
    QuBeliSATUAN: TStringField;
    QuBeliISI: TBCDField;
    QuBeliQnt2: TBCDField;
    QuBeliQnt2M: TBCDField;
    QuBeliQnt2P: TBCDField;
    QuBeliPr1: TStringField;
    QuBeliPr2: TStringField;
    QuBeliPr3: TStringField;
    QuBeliPr4: TStringField;
    QuBeliPr5: TStringField;
    QuBeliPr6: TStringField;
    QuBeliPr7: TStringField;
    QuBeliPr8: TStringField;
    QuBeliPr9: TStringField;
    QuBeliJml1: TBCDField;
    QuBeliJml2: TBCDField;
    QuBeliJml3: TBCDField;
    QuBeliJml4: TBCDField;
    QuBeliJml5: TBCDField;
    QuBeliJml6: TBCDField;
    QuBeliJml7: TBCDField;
    QuBeliJml8: TBCDField;
    QuBeliJml9: TBCDField;
    QuBeliKetR1: TStringField;
    QuBeliKetR2: TStringField;
    QuBeliKetR3: TStringField;
    QuBeliKetR4: TStringField;
    QuBeliKetR5: TStringField;
    QuBeliKetR6: TStringField;
    QuBeliKetR7: TStringField;
    QuBeliKetR8: TStringField;
    QuBeliketr9: TStringField;
    QuBeliqntbaik: TBCDField;
    QuBeliqntrusak: TBCDField;
    QuBeliqntcetak: TBCDField;
    QuBeliket1: TStringField;
    QuBeliket2: TStringField;
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
    procedure NoSPKKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton8Click(Sender: TObject);
    procedure KdDepEnter(Sender: TObject);
    procedure KdDepExit(Sender: TObject);
    procedure TanggalChange(Sender: TObject);
    procedure NoUrutEnter(Sender: TObject);
    procedure NoSPKEnter(Sender: TObject);
    procedure NoSPKExit(Sender: TObject);
    procedure KodeGdgExit(Sender: TObject);
    procedure QntChange(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure NoSatChange(Sender: TObject);
    procedure NoBPPBEnter(Sender: TObject);
    procedure NoBPPBExit(Sender: TObject);
    procedure frxReport1AfterPrintReport(Sender: TObject);
    procedure NoUrutExit(Sender: TObject);
    procedure NoUrutChange(Sender: TObject);
    procedure kodeMSnExit(Sender: TObject);

  private
    { Private declarations }
    mUbahHd, mUbahHdDet: Boolean;
    mNamaSatuan: TNamaSatuanBrg;
    mIsiSatuan: TIsiSatuanBrg;
    IsTampil1:Boolean;
    IsTampil:Boolean;
    mNFixBarang: Boolean;
    mUrut, mUrutBPPB, mNoSatBPPB: Integer;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure TampilIsiDept;
    procedure TampilIsiBarang;
    procedure IsiNoBuktiBaru;
    procedure IsiSatuan;
    Procedure AmBilDataBeli;
    procedure TampilIsiGudang;
    procedure TampilanQnt1Qnt2;
    procedure TampilIsiMesin;
  public
    { Public declarations }
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel,xModalKoreksi: Boolean;
    yy,mm,dd : word;
    sishal, tothal : integer ;
    KodegdgT : String;

  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrBPPBT: TFrBPPBT;
  mValid,mExit,mMasterKoreksi,xIsPpn: Boolean;
  Sat:String;
  mUrut,mUrutPO,IsTutup,mNosat,mPosisi,mUrutRO:Integer;
  TipeTrans,PlusPPN,Nomor,Model:String;
  mBulan,mTahun:string;
  S:array[0..255]of char;
  BM : TBookmark;

implementation
uses FrmBrows, MyProcedure, MyModul, FrmMainBPPBT;
{$R *.DFM}

// PROCEDURE DAN FUNCTION PRIBADI

procedure TFrBPPBT.TampilTombolDetail(pNilai: Boolean);
begin
  //PanelShow1.Visible:=not pNilai;
  //PanelShow2.Visible:=not pNilai;
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  Panel3.Enabled:=pNilai;
end;

procedure TFrBPPBT.TampilIsiDept;
begin
  KodeBrows:=10021;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KdDep.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    with FrBrows.QuBrows do
    begin
      KdDep.Text:=fieldbyname('KdDep').AsString;
      NamaDept.Caption:='[..'+fieldbyname('NmDep').AsString+'..]';
    end;
  end else
    ActiveControl:=KdDep;
end;




procedure TFrBPPBT.TampilIsiBarang;
begin
  KodeBrows:=243011;
  Application.CreateForm(TFrBrows, FrBrows);
//  FrBrows.IsiData:='%'+KodeBrg.Text+'%';
//  FrBrows.EditFilter.Text:=KodeBrg.Text;
  FrBrows.NoKira1:=NoBPPB.Text;
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.IsEmpty=False) then
  begin
    with FrBrows.QuBrows do
    begin
      mUrutBPPB:=FieldByName('Urut').AsInteger;
      //KodeBrg.Text:=fieldbyname('KodeBrg').AsString;
      LNamaBrg.Caption:='[ '+fieldbyname('NamaBrg').AsString+' ]';
      mNoSatBPPB:=FieldByName('NoSat').AsInteger;
      NoSat.AsInteger:=FieldByName('NoSat').AsInteger;
      mNFixBarang:=FieldByName('NFix').AsBoolean;
      IsiSatuan;
      TampilanQnt1Qnt2;
      Qnt.AsFloat:=fieldbyname('QntSisa').AsFloat;
      ActiveControl:=Qnt;
    end;
  end
  else
//    ActiveControl:=KodeBrg;
end;



procedure TFrBPPBT.IsiNoBuktiBaru;
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

procedure TFrBPPBT.TampilData(No_Bukti:String);
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
end;

Function TFrBPPBT.CheckFormMaster:boolean;
begin
   CheckFormMaster:=true;
end;

procedure TFrBPPBT.UpdatedbBeli;
begin
  if (not QuBeli.IsEmpty) and (mUbahHd=True)and(FrMainBPPBT.ModalKoreksi) then
  begin
    with QuUpdatedbBeli do
    begin
       Close;
       Sql.Clear;
       SQL.Add('Update dbBPPBT');
       SQL.Add('set TANGGAL=:0, KDDEP=:1, Kodegdg=:2');
       SQL.Add('Where NoBukti='+QuotedStr(NoBukti.Text));
       Prepared;
       Parameters[0].Value := TANGGAL.Date;
       Parameters[1].Value := KdDep.Text;
       Parameters[1].Value :=  kodegdg.Text;
       ExecSQL;
       mUbahHd:=False; mUbahHdDet:=False;
    end;
    TampilData(NoBukti.Text);
  end;
end;

procedure TFrBPPBT.ClearPanelDetail;
begin
   mValid:=False;
//   KodeBrg.Text:='';
   LNamaBrg.Caption:='[ . . . ]';
   Qnt.Value:=0;
   Qnt1.Value:=0;
   Qnt2.Value:=0;
   LabelSatuan1.Caption:='[ ]';
   LabelSatuan2.Caption:='[ ]';
   Nosat.AsInteger:=1;
   LNamaSat.Caption:='[. . . ]';
end;

procedure TFrBPPBT.RefreshAll;
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
   KodeGdg.Text :='G001';
end;

procedure TFrBPPBT.UpdateDataBeli(Choice:Char;Kodet:String);
begin
   if Choice='I' then
   begin
     DataBuka('select top 1 Urut from DBBPPBTDET where NoBukti='+QuotedStr(NoBukti.Text)+
      ' order by Urut desc ', DM.QuCari2);
    if DM.QuCari2.IsEmpty then
      mUrut:=1
    else mUrut:=DM.QuCari2.FieldByName('Urut').AsInteger+1;
   end
   else mUrut:=QuBeliUrut.AsInteger;
   
   BM:=QuBeli.GetBookmark;
   With Sp_Beli do
   begin
       Parameters.Refresh;
       Parameters[1].Value:=Choice;
       Parameters[2].Value:=NoBukti.Text;
       Parameters[3].Value:=NoUrut.Text;
       Parameters[4].Value:=TANGGAL.Date;
       Parameters[5].Value:=kodeMSn.Text;
       Parameters[6].Value:=mUrut;
       Parameters[7].Value:=KodeBrg.Text;
       Parameters[8].Value:=Qnt.Value;
       Parameters[9].Value:=NoSat.AsInteger;
       Parameters[10].Value:=mNamaSatuan[NoSat.AsInteger];
       Parameters[11].Value:=mIsiSatuan[NoSat.AsInteger];
       Parameters[12].Value:=KodeGdg.Text;
       Parameters[13].Value:=Qnt2.AsFloat;
       Parameters[14].Value:=NoSPK.Text;
       Parameters[15].Value:=mUrutBPPB;
       Parameters[16].Value:=mNoSatBPPB;
       Parameters[17].Value:=KodegdgT;
       Parameters[18].Value:=Permintaan.ItemIndex;
       Parameters[19].Value:=PR1.Text;
       Parameters[20].Value:=PR2.Text;
       Parameters[21].Value:=PR3.Text;
       Parameters[22].Value:=PR4.Text;
       Parameters[23].Value:=PR5.Text;
       Parameters[24].Value:=PR6.Text;
       Parameters[25].Value:=PR7.Text;
       Parameters[26].Value:=PR8.Text;
       Parameters[27].Value:=PR9.Text;
       Parameters[28].Value:=QR1.Value;
       Parameters[29].Value:=QR2.Value;
       Parameters[30].Value:=QR3.Value;
       Parameters[31].Value:=QR4.Value;
       Parameters[32].Value:=QR5.Value;
       Parameters[33].Value:=QR6.Value;
       Parameters[34].Value:=QR7.Value;
       Parameters[35].Value:=QR8.Value;
       Parameters[36].Value:=QR9.Value;
       Parameters[37].Value:=ketR1.Text;
       Parameters[38].Value:=ketR2.Text;
       Parameters[39].Value:=ketR3.Text;
       Parameters[40].Value:=ketR4.Text;
       Parameters[41].Value:=ketR5.Text;
       Parameters[42].Value:=ketR6.Text;
       Parameters[43].Value:=ketR7.Text;
       Parameters[44].Value:=ketR8.Text;
       Parameters[45].Value:=ketR9.Text;
       Parameters[46].Value:=QntCetak.Value;
       Parameters[47].Value:=QntBaik.Value;
       Parameters[48].Value:=QntRusak.Value;
       Parameters[49].Value:=ket.Text;
       Parameters[50].Value:=ket2.Text;



       try
          ExecProc;
          if Choice='I' then
          begin
            TampilData(NoBukti.Text);
            QuBeli.Locate('Urut', mUrut, []);
{            LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                    'Kode Barang = '+KodeBrg.Text+' , No. Sat = '+NoSat.Text+
                    ' , Qnt1 = '+Qnt1.Text+' , Qnt2 = '+Qnt2.Text);}
          end else if Choice='U' then
          begin
            {LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                    'Kode Barang = '+QuBeliKodeBrg.AsString+' , No. Sat = '+QuBeliNOSAT.AsString+' , Qnt1 = '+QuBeliQnt.DisplayText+
                    ' , Qnt2 = '+QuBeliQnt2.DisplayText+chr(10)+
                    '===> Kode Barang = '+KodeBrg.Text+' , No. Sat = '+NoSat.Text+
                    ' , Qnt1 = '+Qnt1.Text+' , Qnt2 = '+Qnt2.Text);               }
            TampilData(NoBukti.Text);
            QuBeli.Locate('Urut', mUrut, []);
          end
          Else if Choice='D' then
          begin
            {LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                    'Kode Barang = '+QuBeliKodeBrg.AsString+' , No. Sat = '+QuBeliNOSAT.AsString+' , Qnt1 = '+QuBeliQnt.DisplayText+
                    ' , Qnt2 = '+QuBeliQnt2.DisplayText);}
            TampilData(NoBukti.Text);
          end;
       except
          on E: Exception do
          begin
            Application.MessageBox(StrPCopy(S,E.Message),'Error',MB_OK or MB_ICONSTOP);
          end;
       end;

   end;
end;

Procedure TFrBPPBT.AmBilDataBeli;
begin
   if not QuBeli.IsEmpty then
   begin
      Tanggal.Date:=QuBeliTanggal.AsDateTime;
      KdDep.Text:=QuBeliKDDEP.AsString;
      NamaDept.Caption:=QuBeliNmDEP.AsString;
      Nospk.Text:=QuBeliNoBPPB.AsString;
      kodemsn.Text:=QuBeliKDDEP.AsString;
      KodeGdg.Text:=QuBeliKodeGdg.AsString;
      KodegdgT := QuBeliKodeGdgT.AsString;
      QntCetak.Value:=QuBeliqntcetak.AsFloat;
      qntrusak.Value:=QuBeliqntrusak.AsFloat;
      QntBaik.Value:=QuBeliqntbaik.AsFloat;
      Permintaan.ItemIndex:=QuBeliJEnisminta.AsInteger;
      Pr1.Text:=QuBeliPr1.AsString;
      Pr2.Text:=QuBeliPr2.AsString;
      Pr3.Text:=QuBeliPr3.AsString;
      Pr4.Text:=QuBeliPr4.AsString;
      Pr5.Text:=QuBeliPr5.AsString;
      Pr6.Text:=QuBeliPr6.AsString;
      Pr7.Text:=QuBeliPr7.AsString;
      Pr8.Text:=QuBeliPr8.AsString;
      Pr9.Text:=QuBeliPr9.AsString;
      KetR1.Text:=QuBeliKetR1.AsString;
      KetR2.Text:=QuBeliKetR2.AsString;
      KetR3.Text:=QuBeliKetR3.AsString;
      KetR4.Text:=QuBeliKetR4.AsString;
      KetR5.Text:=QuBeliKetR5.AsString;
      KetR6.Text:=QuBeliKetR6.AsString;
      KetR7.Text:=QuBeliKetR7.AsString;
      KetR8.Text:=QuBeliKetR8.AsString;
      KetR9.Text:=QuBeliKetR9.AsString;
      QR1.Value:=QuBeliJml1.AsVariant;
      QR2.Value:=QuBeliJml2.AsVariant;
      QR3.Value:=QuBeliJml3.AsVariant;
      QR4.Value:=QuBeliJml4.AsVariant;
      QR5.Value:=QuBeliJml5.AsVariant;
      QR6.Value:=QuBeliJml6.AsVariant;
      QR7.Value:=QuBeliJml7.AsVariant;
      QR8.Value:=QuBeliJml8.AsVariant;
      QR9.Value:=QuBeliJml9.AsVariant;
      ket.Text:=QuBeliket1.AsString;
      ket2.Text:=QuBeliket2.AsString;

   end;
end;

// PROCEDURE DAN FUNCTION MILIK DELPHI

procedure TFrBPPBT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if mExit=true then
  begin
     Hapus_Daftar_Nomor('BPPB',NoBukti.Text,IDUser);
     FrMainBPPBT.GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
     Action:=cafree;
  end
  else
  begin
     Action:=caNone;
  end;
end;

procedure TFrBPPBT.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrBPPBT.FormShow(Sender: TObject);
begin
{    mValid:=False;
    IsTampil:=False;
    IsTampil1:=False;
    if FrMainBPPBT.dxPageControl1.ActivePageIndex=1 Then
    Begin
     NOBUKTI.Text := FrMainBPPBT.QuMaster.FieldByname('Nobukti').AsString;
    end
    else
     NOBUKTI.Text := FrMainBPPBT.QumasterPONoBukti.AsString;
    //Hapus_Daftar_Nomor_User ('BPPB',IDUser);
    //Daftar_Nomor('BPPB',NoUrut.Text,NOBUKTI.Text,IsMax);
    TampilData(NOBUKTI.Text);
    AmBilDataBeli;
    NoUrut.Text:=QuBeliNoUrut.AsString;
    NoUrut.Enabled:=False;
    KoreksiBtn.Click; }
  mValid:=False;
  IsTampil:=False;
  IsTampil1:=False;
  xModalKoreksi:=FrMainBPPBT.ModalKoreksi;
  If FrMainBPPBT.ModalKoreksi = False then
  begin
    RefreshAll;
    IsiNoBuktiBaru;
    TampilData(NoBukti.Text);
    NoBPPB.Text := gTempNoBukti;
    mValid := True;
    NoBPPBExit(NoBPPB);

    mValid := False;
    NoUrut.Enabled:=True;
  end
  else
  Begin
    NoBukti.Text:= FrMainBPPBT.QuMasterNoBukti.AsString;
    Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
    Daftar_Nomor(TipeTrans,NoUrut.Text,NoBukti.Text,isMax);
    TampilData(NoBukti.Text);
    AmBilDataBeli;
    mValid := true;
        kodeMSnExit(kodemsn);
    mValid := false;
    NoUrut.Text:=QuBeliNoUrut.AsString;
    NoUrut.Enabled:=False;
  end;
  NoSat.OnChange:=NoSatChange;
  Qnt.OnChange:=QntChange;
end;

procedure TFrBPPBT.FormCreate(Sender: TObject);
begin
  //TipeTrans:='BPSB';
  TipeTrans:='BPPBT';
  Hapus_Daftar_Nomor_User(TipeTrans ,IDUser);
end;

procedure TFrBPPBT.TambahBtnClick(Sender: TObject);
begin
  if CheckFormMaster=True then
  begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      Model:='write';
      TampilTombolDetail(True);
//      KodeBrg.Enabled:=True;
      ActiveControl:=NOspk;
    end else
    begin
      MsgPeriodeSudahDikunci;
      ActiveControl:=dxDBGrid1;
    end;
  end;
end;

procedure TFrBPPBT.QntKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    mValid:=False;
    //KodeBrg.Enabled:=True;
    if Model='write' then
    begin
      ClearPanelDetail;
//      ActiveControl:=KodeBrg;
    end else
      SpeedButton1.Click;
  end;
end;

procedure TFrBPPBT.TanggalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_Return then
  begin
    if (CekPeriode(IDUser,TANGGAL.Date)=False) then
      Abort;
    UpdatedbBeli;
  end
  else if Key=Vk_Escape then
  begin
      mExit := true;
      close;
  end;
end;

procedure TFrBPPBT.KoreksiBtnClick(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    mValid:=False;
    Model:='koreksi';
    // data yang di update
    if QuBeli.IsEmpty=False then
    begin
      TampilTombolDetail(True);
//      KodeBrg.Enabled:=False;
      mUrut:=QuBeliURUT.AsInteger;
      mUrutBPPB:=QuBeliUrutBPPB.AsInteger;
      mNoSatBPPB:=QuBeliNoSatBPPB.AsInteger;
      mValid:=True;
      NoSPKExit(nospk);
      mValid:=False;
//      KodeBrg.Text:=QuBeliKODEBRG.AsString;
      LNamaBrg.Caption:='[ '+QuBeliNamaBrg.AsString+' ]';
      NoSat.AsInteger:=QuBeliNOSAT.AsInteger;
      Qnt.Value:=QuBeliQNT.AsCurrency;
      Qnt1.Value:=QuBeliQnt1.AsCurrency;
      Qnt2.Value:=QuBeliQnt2.AsCurrency;
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
  end else
  begin
    MsgPeriodeSudahDikunci;
    ActiveControl:=dxDBGrid1;
  end;
end;

procedure TFrBPPBT.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Escape then
  begin
    Hapus_Daftar_Nomor_User('BPPB',IDUser);
    mExit := True;
    Close;
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

procedure TFrBPPBT.HapusBtnClick(Sender: TObject);
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

procedure TFrBPPBT.wwDBGrid1Enter(Sender: TObject);
begin
  FrBPPBT.KeyPreview:=false;
  if CheckFormMaster=false then
  begin
     ShowMessage('Form Master Tidak Lengkap, Silahkan Anda Periksa !');
     Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,iduser);
     ActiveControl:=NoUrut;
  end;
end;

procedure TFrBPPBT.wwDBGrid1Exit(Sender: TObject);
begin
  FrBPPBT.KeyPreview:=true;
end;

procedure TFrBPPBT.wwDBGrid1DblClick(Sender: TObject);
begin
  KoreksiBtn.Click;
end;

procedure TFrBPPBT.NoUrutKeyDown(Sender: TObject; var Key: Word;
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
      end;
      If Not Daftar_Nomor('BPPB',NoUrut.Text,NOBUKTI.Text,IsMax) then
      begin
        MessageDlg('Nomor : '+NOBUKTI.Text+' telah digunakan oleh '+MyUser+'.',mtWarning,[MbOk],0);
        ActiveControl := NoUrut;
      end;
    end;
  end
  else }
  if Key=Vk_Escape then
  begin
    mExit := true;
    Close;
  end;
end;

procedure TFrBPPBT.TanggalEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrBPPBT.TanggalExit(Sender: TObject);
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

procedure TFrBPPBT.KodeSuppEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrBPPBT.CetakClick(Sender: TObject);
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
    Sql.Add('Exec cetakBPPBT '+QuotedStr(nobukti.Text));
    open
  end;
  frxDBDataset1.close;
  frxDBDataset1.Open;
  frxReport1.LoadFromFile(currDir+'Nota\NotaPermintaanBahanTambahan.fr3');
  frxReport1.ShowReport;


end;

procedure TFrBPPBT.BitBtn1Click(Sender: TObject);
begin
  if Model='write' then
  begin
    if length(nospk.Text)>0 then
    begin
      UpdateDataBeli('I','BL');
      ClearPanelDetail;
      ActiveControl:=Nospk;
    end
    else
    begin
      MsgDataTidakBolehKosong('Kode Barang');
      ActiveControl:=Nospk;
    end;
  end
  else if Model='koreksi' then
  begin
    UpdateDataBeli('U','BL');
    SpeedButton1.Click;
  end;
end;

procedure TFrBPPBT.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
  ClearPanelDetail;
end;

procedure TFrBPPBT.NoDOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Escape then
  begin
     mValid :=false;
     SpeedButton1.Click;
  end;
end;

procedure TFrBPPBT.FormDestroy(Sender: TObject);
begin
  FrBPPBT:=nil;
end;

procedure TFrBPPBT.KodeGdgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrBPPBT.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrBPPBT.BPrevClick(Sender: TObject);
begin
        Hapus_Daftar_Nomor('BPPB',NoBukti.Text,iduser);
        RefreshAll;
        ActiveControl:=TANGGAL;
        Hapus_Daftar_Nomor('BPPB',NoBukti.Text,iduser);

        FrMainBPPBT.QuNavigator.Locate('nobukti',FrMainBPPBT.QuMaster.fieldbyname('nobukti').AsString,[LOC,LOP]);
        FrMainBPPBT.QuNavigator.Prior;
        FrMainBPPBT.QuMaster.Locate('nobukti',FrMainBPPBT.QuNavigator.fieldbyname('nobukti').AsString,[LOC,LOP]);

        FormShow(self);
end;

procedure TFrBPPBT.BNextClick(Sender: TObject);
begin
        Hapus_Daftar_Nomor('BPPB',NoBukti.Text,iduser);
        RefreshAll;
        ActiveControl:=TANGGAL;
        Hapus_Daftar_Nomor('BPPB',NoBukti.Text,iduser);

        FrMainBPPBT.QuNavigator.Locate('nobukti',FrMainBPPBT.QuMaster.fieldbyname('nobukti').AsString,[LOC,LOP]);
        FrMainBPPBT.QuNavigator.Next;
        FrMainBPPBT.QuMaster.Locate('nobukti',FrMainBPPBT.QuNavigator.fieldbyname('nobukti').AsString,[LOC,LOP]);

        FormShow(self);

end;

procedure TFrBPPBT.NoSPKKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    mValid:=False;
    SpeedButton1.Click;
  end;
end;

procedure TFrBPPBT.SpeedButton8Click(Sender: TObject);
begin
  frxReport1.LoadFromFile(currDir+'Nota\NotaPermintaanBahanTambahan.fr3');
  frxReport1.DesignReport;
end;

procedure TFrBPPBT.KdDepEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrBPPBT.KdDepExit(Sender: TObject);
begin
  if mValid Then
  begin
    if length(KdDep.Text)=0 then TampilIsiDept else
    begin
      if DataBersyarat('Select KdDep, NmDep from dbDepart '+
                    'where KdDep=:0 Order by kdDep',[KdDep.Text],Dm.Qucari)=True then
      begin
        with DM.QuCari do
        begin
           KdDep.Text:=fieldbyname('KdDep').AsString;
           NamaDept.Caption:='[..'+fieldbyname('NmDep').AsString+'..]';
        end;
      end
      else TampilIsiDept;
    end;
  end;
end;


procedure TFrBPPBT.TanggalChange(Sender: TObject);
begin
  mUbahHd:=True;
end;

procedure TFrBPPBT.NoUrutEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrBPPBT.IsiSatuan;
begin
//  LNamaSat.Caption:=IsiSatuanBrg(KodeBrg.Text, mNamaSatuan, mIsiSatuan);
  LabelSatuan1.Caption:='['+mNamaSatuan[1]+']';
  LabelSatuan2.Caption:='['+mNamaSatuan[2]+']';
end;

procedure TFrBPPBT.NoSPKEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrBPPBT.NoSPKExit(Sender: TObject);
begin
  if (mValid) and (NoSPK.Text<>'-') Then
  begin
    if (length(NoSPK.Text)>0) and
      (DataBersyarat('Select NoBukti,noso,a.kodebrg,qnt,namabrg from dbSPK  a'+
      ' left outer join dbbarang b on b.kodebrg=a.kodebrg '+
      ' where NoBukti=:0 order by NoBukti',[NoSPK.Text],DM.Qucari)=True) then
    begin
      NoSPK.Text:=DM.QuCari.FieldByName('NoBukti').AsString;
      RxLabel1.Caption :=DM.QuCari.FieldByName('namabrg').AsString;
      //kodebrgjd:=DM.QuCari.FieldByName('kodebrg').AsString;
      kodebrg.Text:=DM.QuCari.FieldByName('Kodebrg').AsString;
      qntpesan.Value :=dm.QuCari.FieldByName('qnt').AsVariant;

    end else
    begin
      //KodeBrows:=2430121;
      KodeBrows:=1014121;
      Application.CreateForm(TFrBrows, FrBrows);
      FrBrows.TglAwal:=tanggal.Date;
      FrBrows.ShowModal;
      if FrBrows.ModalResult=mrOk then
      begin
        with FrBrows.QuBrows do
        begin
          NoSPK.Text:=FieldByName('NoBukti').AsString;
          Label8.Caption := FieldByName('Noso').AsString + ' ' + FieldByName(
            'namacustsupp').AsString +' '+FieldByName('NamaBrgJ').AsString;
          LNamaBrg.Caption:= FieldByName('namacustsupp').AsString;
          KodeBrg.Text:= FieldByName('brgj').AsString;
          RxLabel1.Caption:= FieldByName('NamaBrgJ').AsString;
          QntPesan.Value:=FieldByName('QntJ').AsInteger;
          //KdbrgPrf:= FieldByName('BrgJ').asstring;
          //if KdbrgPrf<>'PBJ.PROFF.00' then
          {if KdbrgPrf<>'PBJ.Proff' then
            Perkiraan.Enabled:=false;}
        end;
      end else
        ActiveControl:=NoSPK;
    end;
  end;
  mvalid:=false;

end;
procedure TFrBPPBT.TampilIsiGudang;
begin
  KodeBrows:=11003;
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

procedure TFrBPPBT.TampilanQnt1Qnt2;
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

procedure TFrBPPBT.KodeGdgExit(Sender: TObject);
begin
  if mValid Then
  begin
     if Length(KodeGdg.Text)=0 then TampilIsiGudang else
     begin
        if DataBersyarat('select * from dbGudang where KodeGdg=:0 and Nama Like ''%Bahan%'' ',[KodeGdg.Text], DM.QuCari)=True then
        begin
          KodeGdg.Text:=DM.QuCari.fieldbyname('KodeGdg').AsString;
        end
        else TampilIsiGudang;
     end;
  end;
end;

procedure TFrBPPBT.QntChange(Sender: TObject);
begin
  if mValid then
  begin
    if NoSat.AsInteger=1 then
    begin
      Qnt1.Value:=Qnt.AsFloat;
      //if mNFixBarang=False then
        //Qnt2.Value:=Qnt.AsFloat/mIsiSatuan[2];
    end else
    begin
      //if mNFixBarang=False then
        Qnt1.Value:=Qnt.AsFloat*mIsiSatuan[2];
      //Qnt2.Value:=Qnt.AsFloat;
    end;
  end;
end;

procedure TFrBPPBT.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
if CompareText(varName,'iduser')=0 then
        value:=IDUser;
end;

procedure TFrBPPBT.NoSatChange(Sender: TObject);
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

procedure TFrBPPBT.NoBPPBEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrBPPBT.NoBPPBExit(Sender: TObject);
begin
 { if mValid Then
  begin
    if (length(NoBPPB.Text)>0) and
      (DataBersyarat('Select NoBukti, KdDep,kodegdgT from dbBPPB '+
      ' where NoBukti=:0 order by NoBukti',[NoBPPB.Text],DM.Qucari)=True) then
    begin
      NoBPPB.Text:=DM.QuCari.FieldByName('NoBukti').AsString;
      KdDep.Text:=DM.QuCari.FieldByName('KdDep').AsString;
      KodegdgT :=DM.QuCari.FieldByName('KodegdgT').AsString;
    end else
    begin
      KodeBrows:=243010;
      Application.CreateForm(TFrBrows, FrBrows);
      FrBrows.IsiData:=NoBPPB.Text;
      FrBrows.ShowModal;
      if FrBrows.ModalResult=mrOk then
      begin
        with FrBrows.QuBrows do
        begin
          NoBPPB.Text:=FieldByName('NoBukti').AsString;
          KdDep.Text:=FieldByName('KdDep').AsString;
          NamaDept.Caption:='[..'+FieldByName('NmDep').AsString+'..]';
          KodegdgT :=FieldByName('KodegdgT').AsString;
        end;
      end else
        ActiveControl:=NoBPPB;
    end;
  end;}
end;

procedure TFrBPPBT.frxReport1AfterPrintReport(Sender: TObject);
begin
  NilaiCetak('CetakKe','DBBPPBT',NoBukti.Text);
end;

procedure TFrBPPBT.TampilIsiMesin;
begin
  KodeBrows:=91114;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=kodemsn.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    Kodemsn.Text:=FrBrows.QuBrows.FieldByName('KodeMsn').AsString;
    NmMsn.Caption:='[ '+FrBrows.QuBrows.FieldByName('Ket').AsString+' ]';
    //trfmsn := FrBrows.QuBrows.FieldByName('Tarif').AsInteger;
  end
  else
    ActiveControl:=KodeMsn;
end;

procedure TFrBPPBT.NoUrutExit(Sender: TObject);
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

procedure TFrBPPBT.NoUrutChange(Sender: TObject);
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

procedure TFrBPPBT.kodeMSnExit(Sender: TObject);
begin
  if mValid Then
  begin
     if Length(Kodemsn.Text)=0 then TampilIsiMesin else
     begin
        if DataBersyarat('select KodeMsn,ket from dbMesin where KodeMsn=:0',[KodeMsn.Text], DM.QuCari)=True then
        begin
          Kodemsn.Text:=DM.QuCari.fieldbyname('KodeMsn').AsString;
          NmMsn.Caption:='[ '+DM.QuCari.FieldByName('Ket').AsString+' ]';
        end
        else TampilIsiMesin;
     end;
  end;
end;

end.
