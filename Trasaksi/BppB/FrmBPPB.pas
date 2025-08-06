unit FrmBPPB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, DBCtrls, ImgList, dxDBTLCl, dxGrClms,
  dxTL, dxDBCtrl, dxDBGrid, dxCntner, variants, dxEditor, dxExEdtr, dxEdLib,
  Dateutils, raCodMod, frxClass, frxDMPExport, frxDBSet, frxDesgn, MyGlobal, strutils;

type
  TFrBPPB = class(TForm)
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
    KodeBrg: TEdit;
    NoSat: TPBNumEdit;
    Ket: TEdit;
    Qnt2: TPBNumEdit;
    Qnt1: TPBNumEdit;
    QuBeliNOBUKTI: TStringField;
    QuBeliNOURUT: TStringField;
    QuBeliTANGGAL: TDateTimeField;
    QuBeliKDDEP: TStringField;
    QuBeliNMDEP: TStringField;
    QuBeliKodeGdg: TStringField;
    QuBeliKodeGdgT: TStringField;
    QuBeliURUT: TIntegerField;
    QuBeliKODEBRG: TStringField;
    QuBeliNAMABRG: TStringField;
    QuBeliNFix: TBooleanField;
    QuBeliQNT: TBCDField;
    QuBeliNOSAT: TWordField;
    QuBeliSATUAN: TStringField;
    QuBeliISI: TBCDField;
    QuBeliQnt2: TBCDField;
    QuBeliQnt2M: TBCDField;
    QuBeliQnt2P: TBCDField;
    dxDBGrid1URUT: TdxDBGridMaskColumn;
    dxDBGrid1NFix: TdxDBGridCheckColumn;
    dxDBGrid1NOSAT: TdxDBGridMaskColumn;
    dxDBGrid1ISI: TdxDBGridMaskColumn;
    dxDBGrid1Qnt2: TdxDBGridMaskColumn;
    dxDBGrid1Qnt2M: TdxDBGridMaskColumn;
    dxDBGrid1Qnt2P: TdxDBGridMaskColumn;
    QuBeliQnt1: TBCDField;
    Label5: TLabel;
    NoBppB: TEdit;
    Label8: TLabel;
    QuBelinospk: TStringField;
    Label9: TLabel;
    QuBeliketerangan: TStringField;
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
    procedure KodeBrgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton8Click(Sender: TObject);
    procedure KdDepEnter(Sender: TObject);
    procedure KdDepExit(Sender: TObject);
    procedure TanggalChange(Sender: TObject);
    procedure NoUrutEnter(Sender: TObject);
    procedure KodeBrgEnter(Sender: TObject);
    procedure KodeBrgExit(Sender: TObject);
    procedure KodeGdgExit(Sender: TObject);
    procedure QntChange(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure NoSatChange(Sender: TObject);
    procedure frxReport1AfterPrintReport(Sender: TObject);
    procedure NoUrutExit(Sender: TObject);
    procedure NoBppBEnter(Sender: TObject);
    procedure NoBppBExit(Sender: TObject);
    procedure NoBppBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
    mUbahHd, mUbahHdDet: Boolean;
    mNamaSatuan: TNamaSatuanBrg;
    mIsiSatuan: TIsiSatuanBrg;
    IsTampil1:Boolean;
    IsTampil:Boolean;
    Isi2:double;
    mNFixBarang: Boolean;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure TampilIsiDept;
    procedure TampilIsiBarang;
    procedure IsiNoBuktiBaru;
    procedure IsiSatuan;
    Procedure AmBilDataBeli;
    procedure TampilIsiGudang;
    procedure TampilanQnt1Qnt2;
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
  FrBPPB: TFrBPPB;
  mValid,mExit,mMasterKoreksi,xIsPpn: Boolean;
  Sat:String;
  mUrut,mUrutPO,IsTutup,mNosat,mPosisi,mUrutRO:Integer;
  TipeTrans,PlusPPN,Nomor,Model:String;
  mBulan,mTahun:string;
  S:array[0..255]of char;
  BM : TBookmark;

implementation
uses FrmBrows, MyProcedure, MyModul, FrmMainBPPB;
{$R *.DFM}

// PROCEDURE DAN FUNCTION PRIBADI

procedure TFrBPPB.TampilTombolDetail(pNilai: Boolean);
begin
  //PanelShow1.Visible:=not pNilai;
  //PanelShow2.Visible:=not pNilai;
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  Panel3.Enabled:=pNilai;
end;

procedure TFrBPPB.TampilIsiDept;
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

procedure TFrBPPB.TampilIsiBarang;
begin
  KodeBrows:=2420112;
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
      mNFixBarang:=FieldByName('NFix').AsBoolean;
      IsiSatuan;
      TampilanQnt1Qnt2;
      //Qnt.AsFloat:=fieldbyname('QntSaldo').AsFloat;
      //Qnt2.AsFloat:=fieldbyname('Qnt2Saldo').AsFloat;
      ActiveControl:=Qnt;
    end;
  end
  else
    ActiveControl:=KodeBrg;
end;



procedure TFrBPPB.IsiNoBuktiBaru;
begin
  DecodeDate(Date,YY,MM,DD);
  If DayOfTheMonth(Date)<=DD then
     DD:=DayOfTheMonth(date);
  Try
    TANGGAL.Date := EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),DD);
  Except
    TANGGAL.Date := EndOfAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln))
  end;
  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),'BPPB',Nomor,NomorBukti,Tanggal.Date);
  NoUrut.Text := NomorBukti;
  NOBUKTI.Text := Nomor;
end;

procedure TFrBPPB.TampilData(No_Bukti:String);
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

Function TFrBPPB.CheckFormMaster:boolean;
begin
   CheckFormMaster:=true;
end;

procedure TFrBPPB.UpdatedbBeli;
begin
  if (not QuBeli.IsEmpty) and (mUbahHd=True)and(FrMainBPPB.ModalKoreksi) then
  begin
    with QuUpdatedbBeli do
    begin
       Close;
       Sql.Clear;
       SQL.Add('Update dbBPPB');
       SQL.Add('set TANGGAL=:0, KDDEP=:1, KodegdgT=:2');
       SQL.Add('Where NoBukti='+QuotedStr(NoBukti.Text));
       Prepared;
       Parameters[0].Value := TANGGAL.Date;
       Parameters[1].Value := KdDep.Text;
       Parameters[2].Value := KodeGdg.Text;
       ExecSQL;
       mUbahHd:=False; mUbahHdDet:=False;
    end;
    TampilData(NoBukti.Text);
  end;
end;

procedure TFrBPPB.ClearPanelDetail;
begin
   mValid:=False;
   KodeBrg.Text:='';
   LNamaBrg.Caption:='[ . . . ]';
   Qnt.Value:=0;
   Qnt1.Value:=0;
   Qnt2.Value:=0;
   LabelSatuan1.Caption:='[ ]';
   LabelSatuan2.Caption:='[ ]';
   NoSat.AsInteger:=1;
   LNamaSat.Caption:='[. . . ]';
end;

procedure TFrBPPB.RefreshAll;
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
//   KodeGdg.Text :='G002';
end;

procedure TFrBPPB.UpdateDataBeli(Choice:Char;Kodet:String);
begin
   if Choice='I' then
   begin
     DataBuka('select top 1 Urut from DBBPPBDET where NoBukti='+QuotedStr(NoBukti.Text)+
      ' order by Urut desc ', DM.QuCari2);
    if DM.QuCari2.IsEmpty then
      mUrut:=1
    else mUrut:=DM.QuCari2.FieldByName('Urut').AsInteger+1;
   end
   else mUrut:=QuBeliUrut.AsInteger;

   FrMainBPPB.mMainBPPB_NoBukti:=NoBukti.Text;
   With Sp_Beli do
   begin
       Parameters.Refresh;
       Parameters[1].Value:=Choice;
       Parameters[2].Value:=NoBukti.Text;
       Parameters[3].Value:=NoUrut.Text;
       Parameters[4].Value:=TANGGAL.Date;
       Parameters[5].Value:='004';//KdDep.Text
       Parameters[6].Value:=mUrut;
       Parameters[7].Value:=KodeBrg.Text;
       Parameters[8].Value:=Qnt1.AsFloat;
       Parameters[9].Value:=NoSat.AsInteger;
       Parameters[10].Value:=mNamaSatuan[NoSat.AsInteger];
       Parameters[11].Value:=mIsiSatuan[NoSat.AsInteger];
       Parameters[12].Value:=KodeGdg.Text;
       Parameters[13].Value:=Qnt2.AsFloat;
       Parameters[14].Value:='';
       Parameters[15].Value:='M';
       Parameters[16].Value:=0;
       Parameters[17].Value:=0;
       Parameters[18].Value:=NoBppB.Text;
       Parameters[19].Value:=ket.Text;

       try
          ExecProc;
          if Choice='I' then
          begin
            TampilData(NoBukti.Text);
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
            TampilData(NoBukti.Text);
            QuBeli.Locate('Urut', mUrut, []);
          end
          Else if Choice='D' then
          begin
            LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                    'Kode Barang = '+QuBeliKodeBrg.AsString+' , No. Sat = '+QuBeliNOSAT.AsString+' , Qnt1 = '+QuBeliQnt.DisplayText+
                    ' , Qnt2 = '+QuBeliQnt2.DisplayText);
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

Procedure TFrBPPB.AmBilDataBeli;
begin
   if not QuBeli.IsEmpty then
   begin
      Tanggal.Date:=QuBeliTanggal.AsDateTime;
      KdDep.Text:=QuBeliKDDEP.AsString;
      NamaDept.Caption:=QuBeliNmDEP.AsString;
      KodeGdg.Text:=QuBeliKodeGdgT.AsString;
      NoBppB.Text:=QuBelinospk.AsString;
      NoBppBExit(NoBppB);

   end;
end;

// PROCEDURE DAN FUNCTION MILIK DELPHI

procedure TFrBPPB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if mExit=true then
  begin
     Hapus_Daftar_Nomor('BPPB',NoBukti.Text,IDUser);
     FrMainBPPB.GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
     Action:=cafree;
  end
  else
  begin
     Action:=caNone;
  end;
end;

procedure TFrBPPB.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrBPPB.FormShow(Sender: TObject);
begin
  mValid:=False;
  IsTampil:=False;
  IsTampil1:=False;
  xModalKoreksi:=FrMainBPPB.ModalKoreksi;
  If FrMainBPPB.ModalKoreksi = False then
  begin
    RefreshAll;
    IsiNoBuktiBaru;
    TampilData(NoBukti.Text);
    NoUrut.Enabled:=True;
  end
  else
  Begin
    NOBUKTI.Text := FrMainBPPB.QuMaster.FieldByname('Nobukti').AsString;
    Hapus_Daftar_Nomor_User ('BPPB',IDUser);
    Daftar_Nomor('BPPB',NoUrut.Text,NOBUKTI.Text,isMax);
    TampilData(NOBUKTI.Text);
    AmBilDataBeli;
    NoUrut.Text:=QuBeliNoUrut.AsString;
    NoUrut.Enabled:=False;

  end;
  NoSat.OnChange:=NoSatChange;
  Qnt.OnChange:=QntChange;
end;

procedure TFrBPPB.FormCreate(Sender: TObject);
begin
  TipeTrans:='BPPB';
  Hapus_Daftar_Nomor_User('BPPB',IDUser);
  Isi2:=0;
end;

procedure TFrBPPB.TambahBtnClick(Sender: TObject);
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

procedure TFrBPPB.QntKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrBPPB.TanggalKeyDown(Sender: TObject; var Key: Word;
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
    If FrMainBPPB.ModalKoreksi = False then
    begin
      Hapus_Daftar_Nomor_User('BPPB',IDUser);
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

procedure TFrBPPB.KoreksiBtnClick(Sender: TObject);
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
      mUrut:=QuBeliURUT.AsInteger;
      KodeBrg.Text:=QuBeliKODEBRG.AsString;
      LNamaBrg.Caption:='[ '+QuBeliNamaBrg.AsString+' ]';
      NoSat.AsInteger:=QuBeliNOSAT.AsInteger;
      Qnt.Value:=QuBeliQNT.AsCurrency;
      Qnt1.Value:=QuBeliQnt1.AsCurrency;
      Qnt2.Value:=QuBeliQnt2.AsCurrency;
      mNFixBarang:=QuBeliNFix.AsBoolean;
      ket.Text :=QuBeliketerangan.AsString;
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

procedure TFrBPPB.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Escape then
  begin
    Hapus_Daftar_Nomor_User('BPPB',IDUser);
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
  else if Key=VK_Return then
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

procedure TFrBPPB.HapusBtnClick(Sender: TObject);
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

procedure TFrBPPB.wwDBGrid1Enter(Sender: TObject);
begin
  FrBPPB.KeyPreview:=false;
  if CheckFormMaster=false then
  begin
     ShowMessage('Form Master Tidak Lengkap, Silahkan Anda Periksa !');
     Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,iduser);
     ActiveControl:=NoUrut;
  end;
end;

procedure TFrBPPB.wwDBGrid1Exit(Sender: TObject);
begin
  FrBPPB.KeyPreview:=true;
end;

procedure TFrBPPB.wwDBGrid1DblClick(Sender: TObject);
begin
  KoreksiBtn.Click;
end;

procedure TFrBPPB.NoUrutKeyDown(Sender: TObject; var Key: Word;
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
        if FrMainBPPB.ModalKoreksi then
        begin
          ActiveControl := NoUrut;
        end;
      end;
      If Not Daftar_Nomor('BPPB',NoUrut.Text,NOBUKTI.Text,IsMax) then
      begin
        MessageDlg('Nomor : '+NOBUKTI.Text+' telah digunakan oleh '+MyUser+'.',mtWarning,[MbOk],0);
        ActiveControl := NoUrut;
      end;
    end;
  end
  else}
  if Key=Vk_Escape then
  begin
    mExit := true;
    Close;
  end;
end;

procedure TFrBPPB.TanggalEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrBPPB.TanggalExit(Sender: TObject);
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

procedure TFrBPPB.KodeSuppEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrBPPB.CetakClick(Sender: TObject);
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
    Sql.Add('Exec CetakPermintaanbahan '+QuotedStr(nobukti.Text));
    open
  end;
  frxDBDataset1.close;
  frxDBDataset1.Open;
  frxReport1.LoadFromFile(currDir+'Nota\NotaPermintaanGudang.fr3');
  frxReport1.ShowReport;


end;

procedure TFrBPPB.BitBtn1Click(Sender: TObject);
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

procedure TFrBPPB.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
  ClearPanelDetail;
end;

procedure TFrBPPB.NoDOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Escape then
  begin
     mValid :=false;
     SpeedButton1.Click;
  end;
end;

procedure TFrBPPB.FormDestroy(Sender: TObject);
begin
  FrBPPB:=nil;
end;

procedure TFrBPPB.KodeGdgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrBPPB.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrBPPB.KodeBrgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    mValid:=False;
    SpeedButton1.Click;
  end;
end;

procedure TFrBPPB.SpeedButton8Click(Sender: TObject);
begin
  frxReport1.LoadFromFile(currDir+'Nota\NotaPermintaanGudang.fr3');
  frxReport1.DesignReport;
end;

procedure TFrBPPB.KdDepEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrBPPB.KdDepExit(Sender: TObject);
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


procedure TFrBPPB.TanggalChange(Sender: TObject);
begin
  mUbahHd:=True;
end;

procedure TFrBPPB.NoUrutEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrBPPB.IsiSatuan;
begin
  LNamaSat.Caption:=IsiSatuanBrg(KodeBrg.Text, mNamaSatuan, mIsiSatuan);
  LabelSatuan1.Caption:='['+mNamaSatuan[1]+']';
  LabelSatuan2.Caption:='['+mNamaSatuan[2]+']';
end;

procedure TFrBPPB.KodeBrgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrBPPB.KodeBrgExit(Sender: TObject);
begin
  if mValid Then
  begin
    {if length(KodeBrg.Text)=0 then TampilIsiBarang else
    begin
      if DataBersyarat('Select Isnull(nFix,0)Nfix,Isi2,A.KodeBrg, A.NamaBrg, Isnull(b.Qnt,0) QntSaldo, Isnull(b.Qnt2,0) Qnt2Saldo '+
                       'from dbBarang A '+
                       'left Outer Join (select Kodebrg,Sum(SaldoQnt)Qnt,Sum(Saldo2Qnt)Qnt2 from DBStockBrg a Left Outer Join dbGudang b On a.Kodegdg=b.Kodegdg where b.Nama not Like ''%Bahan%'' and Bulan='+PeriodBln+' and Tahun='+PeriodThn+' group by kodebrg)b On b.kodebrg=a.KodeBrg ' +
                       'where A.KodeGrp<>''BJ'' and Isnull(b.Qnt,0)>0 and a.isAktif=1 and (a.KodeBrg like :0 or a.NamaBrg like :1) '+
                       'order by A.KodeBrg ',['%'+KodeBrg.Text+'%','%'+KodeBrg.Text+'%'],Dm.Qucari)=true then
      begin
        with DM.QuCari do
        begin
         KodeBrg.Text:=fieldbyname('KodeBrg').AsString;
         LNamaBrg.Caption:='[ '+fieldbyname('NamaBrg').AsString+' ]';
         Qnt.AsFloat:=fieldbyname('QntSaldo').AsFloat;
         Qnt2.AsFloat:=fieldbyname('Qnt2Saldo').AsFloat;
         Isi2:=fieldbyname('Isi2').AsFloat;
         Qnt2.Enabled:=FieldByname('nFix').AsBoolean;
         ActiveControl:=Qnt;
        end;
      end
      else TampilIsiBarang;
    end;
     IsiSatuan;
     }
    TampilIsiBarang;
  end;

end;
procedure TFrBPPB.TampilIsiGudang;
begin
  //KodeBrows:=11003;
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

procedure TFrBPPB.TampilanQnt1Qnt2;
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

procedure TFrBPPB.KodeGdgExit(Sender: TObject);
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

procedure TFrBPPB.QntChange(Sender: TObject);
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

procedure TFrBPPB.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
if CompareText(varName,'iduser')=0 then
        value:=IDUser;
end;

procedure TFrBPPB.NoSatChange(Sender: TObject);
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

procedure TFrBPPB.frxReport1AfterPrintReport(Sender: TObject);
begin
  NilaiCetak('CetakKe','DBBPPB',NoBukti.Text);
end;

procedure TFrBPPB.NoUrutExit(Sender: TObject);
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

procedure TFrBPPB.NoBppBEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrBPPB.NoBppBExit(Sender: TObject);
begin
  if (mValid) and (NoBppB.Text<>'-') Then
  begin
    if (length(NoBPPB.Text)>0) and
      (DataBersyarat('Select NoBukti,noso,kodebrg from dbSPK  '+
      ' where NoBukti=:0 order by NoBukti',[NoBPPB.Text],DM.Qucari)=True) then
    begin
      NoBPPB.Text:=DM.QuCari.FieldByName('NoBukti').AsString;
      label8.Caption :=DM.QuCari.FieldByName('Noso').AsString;
      //kodebrgjd:=DM.QuCari.FieldByName('kodebrg').AsString;
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
          NoBPPB.Text:=FieldByName('NoBukti').AsString;
          Label8.Caption := FieldByName('Noso').AsString + ' ' + FieldByName(
            'namacustsupp').AsString +' '+FieldByName('NamaBrgJ').AsString;
          //KdbrgPrf:= FieldByName('BrgJ').asstring;
          //if KdbrgPrf<>'PBJ.PROFF.00' then
          {if KdbrgPrf<>'PBJ.Proff' then
            Perkiraan.Enabled:=false;}
        end;
      end else
        ActiveControl:=NoBPPB;
    end;
  end
  else
  begin
  if
    DataBersyarat('select a.nobukti nospk,c.namacustsupp from dbspk a left outer join dbso b on b.nobukti = a.noso left outer join dbcustsupp c on c.kodecustsupp=b.kodecust '+
      ' where a.NoBukti=:0 order by a.NoBukti',[NoBPPB.Text],DM.Qucari) then
    Begin
        label8.Caption :=DM.QuCari.FieldByName('namacustsupp').AsString;
    end;



  end;
  mvalid:=false;


end;

procedure TFrBPPB.NoBppBKeyDown(Sender: TObject; var Key: Word;
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
    If FrMainBPPB.ModalKoreksi = False then
    begin
      if (KodeGdg.Text <> '-') or (QuBeli.IsEmpty) then
        begin
          Hapus_Daftar_Nomor_User(TipeTrans ,IDUser);
          mValid:=False;
          RefreshAll;
          IsiNoBuktiBaru;
          //TampilData(NOBUKTI.Text,'0');
          //ActiveControl := NoUrut;
          ActiveControl := Tanggal;
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

end.
