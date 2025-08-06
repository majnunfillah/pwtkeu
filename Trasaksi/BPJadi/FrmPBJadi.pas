unit FrmPBJadi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, DBCtrls, ImgList, dxDBTLCl, dxGrClms,
  dxTL, dxDBCtrl, dxDBGrid, dxCntner, variants, dxEditor, dxExEdtr, dxEdLib,
  Dateutils, raCodMod, frxClass, frxDMPExport, frxDBSet, frxDesgn, MyGlobal,StrUtils;

type
  TFrPBJadi = class(TForm)
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
    PanelShow2: TPanel;
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
    NoUrut: TEdit;
    Tanggal: TDateEdit;
    NoBukti: TEdit;
    LNamaBrg: TRxLabel;
    Label1: TLabel;
    Label4: TLabel;
    Qnt: TPBNumEdit;
    KodeBrg: TEdit;
    Label19: TLabel;
    NoSat: TPBNumEdit;
    LNamaSat: TRxLabel;
    QuBeliNOBUKTI: TStringField;
    QuBeliNOURUT: TStringField;
    QuBeliTANGGAL: TDateTimeField;
    QuBeliURUT: TIntegerField;
    QuBeliKODEBRG: TStringField;
    QuBeliQNT: TBCDField;
    QuBeliNOSAT: TWordField;
    QuBeliISI: TBCDField;
    QuBeliNamaBrg: TStringField;
    Label2: TLabel;
    Ket: TEdit;
    QuBeliSat: TStringField;
    QuBeliKodegdg: TStringField;
    Label6: TLabel;
    KodeGdg: TEdit;
    Label3: TLabel;
    Label5: TLabel;
    NoBppB: TEdit;
    QuBeliNoBPPB: TStringField;
    QuBeliStok: TBCDField;
    QuBeliQntBppB: TBCDField;
    QuBelisisa: TBCDField;
    QuBeliQntBP: TBCDField;
    QuBeliNfix: TBooleanField;
    Label7: TLabel;
    Qnt2: TPBNumEdit;
    QuBeliIsi2: TBCDField;
    QuBeliQnt2: TBCDField;
    LabelSatuan1: TLabel;
    LabelSatuan2: TLabel;
    Qnt1: TPBNumEdit;
    QuBeliUrutSPK: TIntegerField;
    QuBeliNoSatSPK: TWordField;
    QuBeliQnt1: TBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure TampilData(No_Bukti,ID:String);
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
    procedure CetakClick(Sender: TObject);
    Function CheckFormMaster:boolean;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
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
    procedure TanggalChange(Sender: TObject);
    procedure NoUrutEnter(Sender: TObject);
    procedure KodeBrgEnter(Sender: TObject);
    procedure KodeBrgExit(Sender: TObject);
    procedure KodeGdgExit(Sender: TObject);
    procedure QntChange(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure NoSatChange(Sender: TObject);
    procedure NoBppBExit(Sender: TObject);
    procedure frxReport1AfterPrintReport(Sender: TObject);
    procedure NoUrutExit(Sender: TObject);

  private
    { Private declarations }
    mUbahHd, mUbahHdDet: Boolean;
    mNamaSatuan: TNamaSatuanBrg;
    mIsiSatuan: TIsiSatuanBrg;
    IsTampil1:Boolean;
    IsTampil:Boolean;
    mNFixBarang: Boolean;
    mUrutSPK, mNoSatSPK: Integer;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure TampilIsiDept;
    procedure TampilIsiBarang;
    procedure TampilIsiGudang;
    procedure IsiNoBuktiBaru;
    procedure IsiSatuan;
    Procedure AmBilDataBeli;
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
  FrPBJadi: TFrPBJadi;
  mValid,mExit,mMasterKoreksi,xIsPpn: Boolean;
  Sat:String;
  mUrut,mUrutPO,IsTutup,mNosat,mPosisi,mUrutRO:Integer;
  TipeTrans,PlusPPN,Nomor,Model:String;
  mBulan,mTahun:string;
  S:array[0..255]of char;
  BM : TBookmark;

implementation
uses FrmBrows, MyProcedure, MyModul, FrmMainPBJadi;
{$R *.DFM}

// PROCEDURE DAN FUNCTION PRIBADI

procedure TFrPBJadi.TampilTombolDetail(pNilai: Boolean);
begin
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  Panel3.Enabled:=pNilai;
end;

procedure TFrPBJadi.TampilIsiDept;
begin

end;




procedure TFrPBJadi.TampilIsiBarang;
begin
//2420119
  //KodeBrows:=300165;
  kodebrows:=3001101;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:='%'+KodeBrg.Text+'%';
  FrBrows.EditFilter.Text:=KodeBrg.Text;
  FrBrows.NoKira1:=NoBppB.Text;
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.IsEmpty=False) then
  begin
    with FrBrows.QuBrows do
    begin
      KodeBrg.Text:=fieldbyname('KodeBrg').AsString;
      LNamaBrg.Caption:='[ '+fieldbyname('NamaBrg').AsString+' ]';
      //mNFixBarang:=FieldByName('NFix').AsBoolean;
      //NoSat.Value:=FieldByName('NoSat').AsInteger;
      //mNoSatSPK:=FieldByName('NoSat').AsInteger;
      //mUrutSPK:=FieldByName('Urut').AsInteger;
      IsiSatuan;
      TampilanQnt1Qnt2;
      //Qnt.AsFloat:=FieldByName('QntSisa').AsFloat;
      ActiveControl:=Qnt;
    end;
    IsiSatuan;
  end
  else
    ActiveControl:=KodeBrg;
end;



procedure TFrPBJadi.IsiNoBuktiBaru;
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
end;

procedure TFrPBJadi.TampilData(No_Bukti,ID:String);
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

Function TFrPBJadi.CheckFormMaster:boolean;
begin
   CheckFormMaster:=true;
end;

procedure TFrPBJadi.UpdatedbBeli;
begin
  if (not QuBeli.IsEmpty)and(FrMainPBJadi.ModalKoreksi) then
  begin
    with QuUpdatedbBeli do
    begin
       Close;
       Sql.Clear;
       SQL.Add('Update dbPenyerahanBhn');
       SQL.Add('set TANGGAL=:0,Kodegdg=:1,NoBPPB=:2');
       SQL.Add('Where NoBukti='+QuotedStr(NoBukti.Text));
       Prepared;
       Parameters[0].Value := TANGGAL.Date;
       Parameters[1].Value := KodeGdg.Text;
       Parameters[2].Value := NoBppB.Text;
       ExecSQL;

    end;
    TampilData(NoBukti.Text,'0');
  end;
end;

procedure TFrPBJadi.ClearPanelDetail;
begin
   mValid:=False;
   KodeBrg.Text:='';
   LNamaBrg.Caption:='[ . . . ]';
   Qnt.Value:=0;
   Qnt1.Value:=0;
   Qnt2.Value:=0;
   Nosat.AsInteger:=1;
   LNamaSat.Caption:='[. . . ]';
   LabelSatuan1.Caption:='[ ]';
   LabelSatuan2.Caption:='[ ]';
   Ket.Text:='';
end;

procedure TFrPBJadi.RefreshAll;
begin
  mValid:=False;
  KodeGdg.Text:='-';
  NoBppB.Text:='';
  ClearPanelDetail;
end;

procedure TFrPBJadi.UpdateDataBeli(Choice:Char;Kodet:String);
begin
   if Choice='I' then
   begin
     DataBuka('select top 1 Urut from DBPenyerahanBhnDET where NoBukti='+QuotedStr(NoBukti.Text)+
      ' order by Urut desc ', DM.QuCari2);
    if DM.QuCari2.IsEmpty then
      mUrut:=1
    else mUrut:=DM.QuCari2.FieldByName('Urut').AsInteger+1;
   end
   else mUrut:=QuBeliUrut.AsInteger;

   FrMainPBJadi.mMainPB_NoBukti:=NoBukti.Text;
   With Sp_Beli do
   begin
       Parameters.Refresh;
       Parameters[1].Value:=Choice;
       Parameters[2].Value:=NoBukti.Text;
       Parameters[3].Value:=NoUrut.Text;
       Parameters[4].Value:=TANGGAL.Date;
       Parameters[5].Value:=Kodegdg.Text;
       Parameters[6].Value:=mUrut;
       Parameters[7].Value:=KodeBrg.Text;
       Parameters[8].Value:=Qnt1.AsFloat;
       Parameters[9].Value:=NoSat.AsInteger;
       Parameters[10].Value:=mNamaSatuan[NoSat.AsInteger];
       Parameters[11].Value:=mIsiSatuan[NoSat.AsInteger];
       Parameters[12].Value:=NoBppB.Text;
       Parameters[13].Value:=Qnt2.AsFloat;
       Parameters[14].Value:=mUrutSPK;
       Parameters[15].Value:=mNoSatSPK;
       Parameters[16].Value:=2;
       try
          ExecProc;
          if Choice='I' then
          begin
            TampilData(NoBukti.Text,'1');
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
            TampilData(NoBukti.Text,'1');
            QuBeli.Locate('Urut', mUrut, []);
          end
          else if Choice='D' then
          begin
            LoggingData(IDUser,Choice,TipeTrans,NoBukti.Text,
                    'Kode Barang = '+QuBeliKodeBrg.AsString+' , No. Sat = '+QuBeliNOSAT.AsString+' , Qnt1 = '+QuBeliQnt.DisplayText+
                    ' , Qnt2 = '+QuBeliQnt2.DisplayText);
            TampilData(NoBukti.Text,'1');
          end;
       except
          on E: Exception do
          begin
            Application.MessageBox(StrPCopy(S,E.Message),'Error',MB_OK or MB_ICONSTOP);
          end;
       end;
   end;
end;

Procedure TFrPBJadi.AmBilDataBeli;
begin
   if not QuBeli.IsEmpty then
   begin
      Tanggal.Date:=QuBeliTanggal.AsDateTime;
      KodeGdg.Text:=QuBeliKodegdg.AsString;
      NoBppB.Text:=QuBeliNoBPPB.AsString;
   end;
end;

procedure TFrPBJadi.TampilanQnt1Qnt2;
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

// PROCEDURE DAN FUNCTION MILIK DELPHI

procedure TFrPBJadi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (KodeGdg.Text <> '-') or (QuBeli.IsEmpty) then
    begin
      if mExit=true then
      begin
         Hapus_Daftar_Nomor(TipeTrans ,NoBukti.Text,IDUser);
         FrMainPBJadi.GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
         Action:=cafree;
      end
      else
      begin
         Action:=caNone;
      end;
    end
  else
    begin
      ShowMessage('Belum memilih Gudang !');
      ActiveControl := KodeGdg;
      Action:=caNone;      
    end;
    
end;

procedure TFrPBJadi.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrPBJadi.FormShow(Sender: TObject);
begin
  mValid:=False;
  xModalKoreksi:=FrMainPBJadi.ModalKoreksi;
  IsTampil:=False;
  IsTampil1:=False;
  If FrMainPBJadi.ModalKoreksi = False then
  begin
    RefreshAll;
    IsiNoBuktiBaru;
    //NoBppB.Text:=FrMainPBJadi.QuBPPBNOBUKTI.AsString;
    TampilData(NoBukti.Text,'0');
    NoUrut.Enabled:=True;
  end
  else
  Begin
    NOBUKTI.Text := FrMainPBJadi.QuMaster.FieldByname('Nobukti').AsString;
    Hapus_Daftar_Nomor_User (TipeTrans ,IDUser);
    Daftar_Nomor(TipeTrans ,NoUrut.Text,NOBUKTI.Text,isMax);
    TampilData(NOBUKTI.Text,'1');
    AmBilDataBeli;
    NoUrut.Text:=QuBeliNOURUT.AsString;
    NoUrut.Enabled:=False;
  end;
  NoSat.OnChange:=NoSatChange;
  Qnt.OnChange:=QntChange;
end;

procedure TFrPBJadi.FormCreate(Sender: TObject);
begin
  TipeTrans := 'BP';
  Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
end;

procedure TFrPBJadi.TambahBtnClick(Sender: TObject);
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

procedure TFrPBJadi.QntKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrPBJadi.TanggalKeyDown(Sender: TObject; var Key: Word;
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
    If FrMainPBJadi.ModalKoreksi = False then
    begin
      if (KodeGdg.Text <> '-') or (QuBeli.IsEmpty) then
        begin
          Hapus_Daftar_Nomor_User(TipeTrans ,IDUser);
          mValid:=False;
          RefreshAll;
          IsiNoBuktiBaru;
          TampilData(NOBUKTI.Text,'0');
          ActiveControl := NoUrut;
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

procedure TFrPBJadi.KoreksiBtnClick(Sender: TObject);
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
      mUrutSPK:=QuBeliUrutSPK.AsInteger;
      mNoSatSPK:=QuBeliNoSatSPK.AsInteger;
      KodeBrg.Text:=QuBeliKODEBRG.AsString;
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

procedure TFrPBJadi.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Escape then
  begin
    Hapus_Daftar_Nomor_User(TipeTrans ,IDUser);
    mExit := True;
      Close;
  end
  else if key=VK_return then
  begin
  if FrMainPBJadi.ModalKoreksi Then
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

procedure TFrPBJadi.HapusBtnClick(Sender: TObject);
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
               MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
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

procedure TFrPBJadi.wwDBGrid1Enter(Sender: TObject);
begin
  FrPBJadi.KeyPreview:=false;
  if CheckFormMaster=false then
  begin
     ShowMessage('Form Master Tidak Lengkap, Silahkan Anda Periksa !');
     Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,iduser);
     ActiveControl:=NoUrut;
  end;
end;

procedure TFrPBJadi.wwDBGrid1Exit(Sender: TObject);
begin
  FrPBJadi.KeyPreview:=true;
end;

procedure TFrPBJadi.wwDBGrid1DblClick(Sender: TObject);
begin
  KoreksiBtn.Click;
end;

procedure TFrPBJadi.NoUrutKeyDown(Sender: TObject; var Key: Word;
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
      TampilData(nobukti.Text,'0');
      if not QuBeli.IsEmpty then
      Begin
         AmBilDataBeli;
      end
      else
      Begin
        if FrMainPB.ModalKoreksi then
        begin
          ActiveControl := NoUrut;
        end;
      end;
      If Not Daftar_Nomor(TipeTrans ,NoUrut.Text,NOBUKTI.Text,IsMax) then
      begin
        MessageDlg('Nomor : '+NOBUKTI.Text+' telah digunakan oleh '+MyUser+'.',mtWarning,[MbOk],0);
        ActiveControl := NoUrut;
      end;
    end;
  end
  else} if Key=Vk_Escape then
  begin
    mExit := true;
    Close;
  end;
end;

procedure TFrPBJadi.TanggalEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrPBJadi.TanggalExit(Sender: TObject);
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

procedure TFrPBJadi.CetakClick(Sender: TObject);
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
    Sql.Add('Exec CetakPemakaianBahan '+QuotedStr(nobukti.Text));
    open
  end;
  frxDBDataset1.close;
  frxDBDataset1.Open;
  frxReport1.LoadFromFile(currDir+'Nota\NotaPemakaianBahan.fr3');
  frxReport1.ShowReport;


end;

procedure TFrPBJadi.BitBtn1Click(Sender: TObject);
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

procedure TFrPBJadi.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
  ClearPanelDetail;
end;

procedure TFrPBJadi.FormDestroy(Sender: TObject);
begin
  FrPBJadi:=nil;
end;

procedure TFrPBJadi.KodeGdgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrPBJadi.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrPBJadi.KodeBrgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    mValid:=False;
    SpeedButton1.Click;
  end;
end;

procedure TFrPBJadi.SpeedButton8Click(Sender: TObject);
begin
  frxReport1.LoadFromFile(currDir+'Nota\NotaPemakaianBahan.fr3');
  frxReport1.DesignReport;
end;

procedure TFrPBJadi.TanggalChange(Sender: TObject);
begin
  mUbahHd:=True;
end;

procedure TFrPBJadi.NoUrutEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrPBJadi.IsiSatuan;
begin
  LNamaSat.Caption:=IsiSatuanBrg(KodeBrg.Text, mNamaSatuan, mIsiSatuan);
  LabelSatuan1.Caption:='['+mNamaSatuan[1]+']';
  LabelSatuan2.Caption:='['+mNamaSatuan[2]+']';
end;

procedure TFrPBJadi.KodeBrgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrPBJadi.KodeBrgExit(Sender: TObject);
begin
  if mValid Then
  begin
  {
     if length(KodeBrg.Text)=0 then TampilIsiBarang else
        begin
          if DataBersyarat('select a.Kodebrg,d.NAMABRG,Isnull(c.Qnt,0)Stok,Isnull(SUM(a.QNT*isi),0)QntBPPB,Isnull(b.Qnt,0)QntBP,Isnull(SUM(a.QNT*isi),0)-Isnull(b.Qnt,0)Sisa from DBSPKDET a  '+
                      'left Outer Join (select Kodebrg,SUM(Qnt*isi)Qnt from DBPenyerahanBhnDET group by kodebrg)b On b.kodebrg=a.KodeBrg  '+
                      'left Outer Join (select Kodebrg,SUM(SALDOQNT)Qnt from DBSTOCKBRG group by kodebrg)c On c.kodebrg=a.KodeBrg '+
                      'Left Outer Join DBBARANG d On a.KODEBRG=d.kodebrg  ' +
                      'where d.isAktif=1 and (a.KodeBrg like :0 or a.NamaBrg like :1) '+
                      'group by a.KodeBrg,b.Qnt,c.Qnt,d.NAMABRG  '+
                      'having Isnull(SUM(a.QNT*isi),0)-Isnull(b.Qnt,0)<>0 '+
                      'order by A.KodeBrg',['%'+KodeBrg.Text+'%','%'+KodeBrg.Text+'%'],Dm.Qucari)=true then
          begin
            with DM.QuCari do
            begin
             KodeBrg.Text:=fieldbyname('KodeBrg').AsString;
             LNamaBrg.Caption:='[ '+fieldbyname('NamaBrg').AsString+' ]';
             Qnt.AsFloat:=fieldbyname('Sisa').AsFloat;
             IsiSatuan;
             ActiveControl:=Qnt;
            end;
          end
          else TampilIsiBarang;
        end;
  }
    TampilIsiBarang;
  end;

end;

procedure TFrPBJadi.TampilIsiGudang;
begin
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

procedure TFrPBJadi.KodeGdgExit(Sender: TObject);
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
   {if MessageDlg('Ambil Semua SPK?',mtInformation,[mbYes,MbNo],0)=IdYes Then
   Begin
    Qubeli.DisableControls;
    Qubeli.First;
    While Not Qubeli.Eof Do
    Begin
    With Sp_Beli do
     begin
       Parameters.Refresh;
       Parameters[1].Value:='I';
       Parameters[2].Value:=NoBukti.Text;
       Parameters[3].Value:=NoUrut.Text;
       Parameters[4].Value:=TANGGAL.Date;
       Parameters[5].Value:=Kodegdg.Text;
       Parameters[6].Value:=0;
       Parameters[7].Value:=QuBeliKODEBRG.AsString;
       Parameters[8].Value:=QuBeliQntBppB.AsFloat;
       Parameters[9].Value:=QuBeliNOSAT.AsInteger;
       Parameters[10].Value:=QuBeliSat.AsString;
       if QuBeliNOSAT.AsInteger=1 Then
       Parameters[11].Value:=1
       else
       Parameters[11].Value:=QuBeliIsi2.AsFloat;
       Parameters[12].Value:=NoBppB.Text;
       if QuBeliNOSAT.AsInteger=1  Then
         Parameters[13].Value:=QuBeliQntBppB.AsFloat/QuBeliIsi2.AsFloat
       else
         Parameters[13].Value:=QuBeliQntBppB.AsFloat;
       try
          ExecProc;
       except
         showmessage('Proses Gagal ! ');
       end;
    end;
    Qubeli.Next;
    end;
    Qubeli.EnableControls;
   end
   else TambahBtn.Visible:=True;
   TampilData(NoBukti.Text,'1');
   }
  end;
end;

procedure TFrPBJadi.QntChange(Sender: TObject);
begin
  if mValid then
  begin
    if NoSat.AsInteger=1 then
    begin
      Qnt1.Value:=Qnt.AsFloat;
      //if mNFixBarang=False then
      if mIsiSatuan[2] <> 0 then
        Qnt2.Value:=Qnt.AsFloat/mIsiSatuan[2]
      else
        Qnt2.Value:= 0;
    end else
    begin
      //if mNFixBarang=False then
      Qnt1.Value:=Qnt.AsFloat*mIsiSatuan[2];
      Qnt2.Value:=Qnt.AsFloat;
    end;
  end;
end;

procedure TFrPBJadi.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
if CompareText(varName,'iduser')=0 then
        value:=IDUser;
end;

procedure TFrPBJadi.NoSatChange(Sender: TObject);
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

procedure TFrPBJadi.NoBppBExit(Sender: TObject);
begin
  if mValid Then
  begin
    if (length(NoBPPB.Text)>0) and
      (DataBersyarat('Select NoBukti from dbSPK '+
      ' where NoBukti=:0 order by NoBukti',[NoBPPB.Text],DM.Qucari)=True) then
    begin
      NoBPPB.Text:=DM.QuCari.FieldByName('NoBukti').AsString;
    end else
    begin
      KodeBrows:=243013;
      Application.CreateForm(TFrBrows, FrBrows);
      FrBrows.IsiData:=NoBPPB.Text;
      FrBrows.ShowModal;
      if FrBrows.ModalResult=mrOk then
      begin
        with FrBrows.QuBrows do
        begin
          NoBPPB.Text:=FieldByName('NoBukti').AsString;
        end;
      end else
        ActiveControl:=NoBPPB;
    end;
  end;
end;

procedure TFrPBJadi.frxReport1AfterPrintReport(Sender: TObject);
begin
NilaiCetak('CetakKe','DbpenyerahanBhn',NoBukti.Text);
end;

procedure TFrPBJadi.NoUrutExit(Sender: TObject);
var myTempNoUrut: String;
begin
  if mValid then
  begin
    myTempNoUrut:=NoUrut.Text;
    NoUrut.Text:=RightStr('00000'+myTempNoUrut,4);
    Konfig(TipeTrans,NoUrut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date);
    NOBUKTI.Text:=MyNoBukti;
    TampilData(NoBukti.Text,'');
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
          TampilData('','');
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

end.
