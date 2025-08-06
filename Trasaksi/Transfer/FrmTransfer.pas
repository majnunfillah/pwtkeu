unit FrmTransfer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, DBCtrls, ImgList, RxGIF, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, frxClass, frxDMPExport,
  frxDBSet, strUtils,DateUtils, frxDesgn, frxBarcode,Variants, dxmdaset,
  frxRich;

type
  TFrTransfer = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    QuBeli: TADOQuery;
    Sp_Beli: TADOStoredProc;
    DsQuBeli: TDataSource;
    QuUpdatedbbeli: TADOQuery;
    Label10: TLabel;
    Panel2: TPanel;
    dxDBGrid1: TdxDBGrid;
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
    Label13: TLabel;
    Tanggal: TDateEdit;
    Label16: TLabel;
    Label19: TLabel;
    Qnt: TPBNumEdit;
    LSatuan: TLabel;
    Qnt2: TPBNumEdit;
    LSatuan2: TLabel;
    PanelShow1: TPanel;
    Cetak: TSpeedButton;
    HapusBtn: TSpeedButton;
    KoreksiBtn: TSpeedButton;
    TambahBtn: TSpeedButton;
    SpeedButton8: TSpeedButton;
    dxDBGrid1URUT: TdxDBGridMaskColumn;
    dxDBGrid1KODEBRG: TdxDBGridMaskColumn;
    dxDBGrid1NamaBrg: TdxDBGridMaskColumn;
    dxDBGrid1QNT: TdxDBGridMaskColumn;
    dxDBGrid1QNT2: TdxDBGridMaskColumn;
    dxDBGrid1SAT_1: TdxDBGridMaskColumn;
    dxDBGrid1SAT_2: TdxDBGridMaskColumn;
    dxDBGrid1ISI: TdxDBGridMaskColumn;
    Nosat: TComboBox;
    LSatuan1: TLabel;
    Qnt1: TPBNumEdit;
    Catatan: TMemo;
    Label7: TLabel;
    dxDBGrid1Jns_Kertas: TdxDBGridMaskColumn;
    dxDBGrid1Ukr_Kertas: TdxDBGridMaskColumn;
    QuBeliNOBUKTI: TStringField;
    QuBeliNOURUT: TStringField;
    QuBeliTANGGAL: TDateTimeField;
    QuBeliKeterangan: TStringField;
    QuBeliURUT: TIntegerField;
    QuBeliKODEBRG: TStringField;
    QuBeliNamaBrg: TStringField;
    QuBeliJns_Kertas: TStringField;
    QuBeliUkr_Kertas: TStringField;
    QuBeliQNT: TBCDField;
    QuBeliQNT2: TBCDField;
    QuBeliSAT_1: TStringField;
    QuBeliSAT_2: TStringField;
    QuBeliNoSat: TWordField;
    QuBeliISI: TBCDField;
    QuBeliGSM: TBCDField;
    dxDBGrid1GSM: TdxDBGridMaskColumn;
    QuBeligdgAsal: TStringField;
    QuBeliNamaGgdAsal: TStringField;
    QuBeligdgTujuan: TStringField;
    QuBeliNamaGgdTujuan: TStringField;
    Label6: TLabel;
    GdgAsal: TEdit;
    Label2: TLabel;
    GdgTujuan: TEdit;
    dxDBGrid1NamaGgdAsal: TdxDBGridMaskColumn;
    dxDBGrid1NamaGgdTujuan: TdxDBGridMaskColumn;
    Label1: TLabel;
    NoPenyerahan: TEdit;
    QuBeliNoPenyerahan: TStringField;
    frxDBDataset2: TfrxDBDataset;
    frxDBCetak: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxRichObject1: TfrxRichObject;
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
    procedure GdgAsalEnter(Sender: TObject);
    procedure GdgAsalExit(Sender: TObject);
    procedure GdgTujuanEnter(Sender: TObject);
    procedure GdgTujuanExit(Sender: TObject);
    procedure NoUrutExit(Sender: TObject);
    procedure CetakClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
  private
    { Private declarations }
    mUrut, mUrutSC: Integer;
    mUbahHd, mUbahHdDet, mValid, mExit: Boolean;
    mNilaiEnter, mIsiBrg: Real;
    mSat_1, mSat_2, mStrMsg: String;
    function  CekSudahAdaProsesSelanjutnya: Boolean;
    procedure TampilanQntSatuan(pNilai: Integer);
    procedure TampilIsiBarang;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure UpdatedbBeli;
    procedure IsiNoBuktiBaru;
    procedure TampilIsiSC;
  public
    { Public declarations }
    Sat : String;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel, xModalKoreksi, xStatus: Boolean;
    procedure TampilIsiGudang(Var Gudang,xGudang:Tedit);
  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrTransfer: TFrTransfer;
  TipeTrans,PlusPPN,Nomor,Model:String;
  YY,MM,DD : Word;
  S:array[0..255]of char;
  bm,GBM : TBookmark;

implementation
uses FrmBrows, MyProcedure, MyGlobal, MyModul, FrmMainTransfer;
{$R *.DFM}

procedure TFrTransfer.TampilIsiGudang(Var Gudang,xGudang:TEdit);
begin
  KodeBrows:=100101;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=gudang.Text;
  FrBrows.Gudang := xGudang.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    Gudang.Text :=FrBrows.QuBrows.FieldByName('KodeGdg').AsString;
  end
  else
    ActiveControl:=Gudang;
end;

function TFrTransfer.CekSudahAdaProsesSelanjutnya: Boolean;
var xStrMsg, xStrMsgDet: String;
begin
  xStrMsg:='';
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select distinct NoBukti from DBSPBDET ');
    SQL.Add('where NoSPP='+QuotedStr(QuBeliNobukti.AsString)+' and UrutSPP='+IntToStr(QuBeliurut.AsInteger));
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

procedure TFrTransfer.TampilanQntSatuan(pNilai: Integer);
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

procedure TFrTransfer.TampilIsiBarang;
begin
  KodeBrows:=300161;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.NoKira := IntToStr(FrMainTransfer.mMainTransfer_Flagmenu);
  FrBrows.IsiData:=KodeBrg.Text;
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.FieldByName('KodeBrg').AsString<>'') then
  begin
    with FrBrows.QuBrows do
    begin
      KodeBrg.Text:=FieldByName('KodeBrg').AsString;
      LNamaBrg.Caption:='[ '+FieldByName('NamaBrg').AsString+' ]';
      mSat_1:=FieldByName('Sat_1').AsString;
      mSat_2:=FieldByName('Sat_2').AsString;
      mIsiBrg:=FieldByName('Isi').AsFloat;
      LSatuan2.Caption:='[ '+mSat_2+' ]';
      LSatuan1.Caption:='[ '+mSat_1+' ]';
      Nosat.Items.Clear;
      Nosat.Items.Add('Pilih Satuan');
      Nosat.Items.Add(mSat_1);
      Nosat.Items.Add(mSat_2);
      Nosat.ItemIndex := 1;
      
    end;
  end
  else
    ActiveControl:=KodeBrg;
end;

procedure TFrTransfer.TampilIsiSC;
begin

end;

procedure TFrTransfer.TampilTombolDetail(pNilai: Boolean);
begin
 //PanelShow1.Visible:=not pNilai;
  //PanelShow2.Visible:=not pNilai;
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  //Panel3.Enabled:=pNilai;
end;

procedure TFrTransfer.UpdatedbBeli;
begin
  if (not QuBeli.IsEmpty) and (mUbahHd=True) then
  begin
    with QuUpdatedbBeli do
    begin
       Close;
       Sql.Clear;
       SQL.Add('Update dbTransfer');
       SQL.Add('Set Tanggal=:0, note=:1, IDuSER=:2, NoPenyerahan=:3 ');
       SQL.Add('Where NoBukti='+QuotedStr(NoBukti.Text));
       Prepared;
       Parameters[0].Value := Tanggal.Date;
       Parameters[1].Value := Catatan.Text;
       Parameters[2].Value := IDUser;
       Parameters[3].Value := NoPenyerahan.Text;
       try
         ExecSQL;
       except
       end;
       mUbahHd:=False; mUbahHdDet:=False;
    end;
    TampilData(NoBukti.Text);
  end;
end;

procedure TFrTransfer.TampilData(No_Bukti:String);
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
end;

procedure TFrTransfer.IsiNoBuktiBaru;
begin
  NoUrut.Enabled:=True;
  DecodeDate(Date,YY,MM,DD);
  If DayOfTheMonth(Date)<=DD then
     DD:=DayOfTheMonth(Date);
  try
    TANGGAL.Date := EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),DD);
  except
    TANGGAL.Date:=EndOfAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln));
  end;
  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal.Date);
  NoUrut.Text:=NomorBukti;
  NOBUKTI.Text:=Nomor;
end;

Function TFrTransfer.CheckFormMaster:boolean;
begin
   CheckFormMaster:=true;
end;

procedure TFrTransfer.ClearPanelDetail;
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

procedure TFrTransfer.RefreshAll;
var i:integer;
begin
   mValid:=False;
   mUbahHd:=False; mUbahHdDet:=False;
   for i:= 0 to Panel1.ControlCount-1 do
   begin
      if (Panel1.Controls[i] is TEdit) then
         (Panel1.Controls[i] as TEdit).Clear;
   end;
   for i:= 0 to Panel3.ControlCount-1 do
   begin
      if (Panel3.Controls[i] is TEdit) then
         (Panel3.Controls[i] as TEdit).Clear;
      if (Panel3.Controls[i] is TPBNumEdit) then
         (Panel3.Controls[i] as TPBNumEdit).Clear;
   end;

   Catatan.Text:='';
   ClearPanelDetail;
end;

procedure TFrTransfer.UpdateDataBeli(Choice:Char;Kodet:String);
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
      Parameters[6].Value:=QuBeliURUT.AsInteger;
    end
    else
    begin
      Parameters[3].Value:=NoUrut.Text;
      Parameters[4].Value:=Tanggal.Date;
      Parameters[5].Value:=Trim(Catatan.Text);
      Parameters[6].Value:=mUrut;
      Parameters[7].Value:=KodeBrg.Text;
      Parameters[8].Value:=GdgAsal.Text;
      Parameters[9].Value:=GdgTujuan.Text;
      Parameters[10].Value:=mSat_1;
      Parameters[11].Value:=mSat_2;
      {if Nosat.Visible=True then
      begin
        if Nosat.ItemIndex=1 then
        begin
          Parameters[12].Value:=Qnt.AsFloat;
          Parameters[13].Value:=Qnt.AsFloat/mIsiBrg;
        end
        else if Nosat.ItemIndex=2 then
        begin
          Parameters[12].Value:=Qnt.AsFloat*mIsiBrg;
          Parameters[13].Value:=Qnt.AsFloat;
        end;
      end else }
      begin
        Parameters[12].Value:=Qnt1.AsFloat;
        Parameters[13].Value:=Qnt2.AsFloat;
      end;
      Parameters[14].Value:=Nosat.ItemIndex;
      Parameters[15].Value:=mIsiBrg;
      Parameters[16].Value:=IDUser;
    end;
    Parameters[17].Value := NoPenyerahan.Text;
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
        LoggingData(IDUser,'U', TipeTrans, NoBukti.Text,
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

Procedure TFrTransfer.AmBilDataBeli;
begin
   if not QuBeli.IsEmpty then
   begin
      NoBukti.Text:=QuBeliNOBUKTI.AsString;
      Tanggal.Date:=QuBeliTanggal.AsDateTime;
      Catatan.Text:=QuBeliKeterangan.AsString;
      NoPenyerahan.Text := QuBeliNoPenyerahan.AsString;
   end;
end;

// PROCEDURE DAN FUNCTION MILIK DELPHI

procedure TFrTransfer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if mExit=true then
  begin
     FrMainTransfer.ToolButton10.Click;
     Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
     Action:=cafree;
  end
  else
  begin
     Action:=caNone;
  end;
end;

procedure TFrTransfer.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then SendMessage(Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrTransfer.FormShow(Sender: TObject);
begin
  RefreshAll;
  xModalKoreksi:=FrMainTransfer.ModalKoreksi;
  If xModalKoreksi = False then
  begin
    IsiNoBuktiBaru;
    TampilData(NoBukti.Text);
    mValid:=True;
    mValid:=False;
    NoUrut.Enabled:=True;
    ActiveControl:=NoUrut;
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
    else ActiveControl:=dxDBGrid1;
  end;
end;

procedure TFrTransfer.FormCreate(Sender: TObject);
begin
  TipeTrans:='TRS';
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

procedure TFrTransfer.KoreksiBtnClick(Sender: TObject);
begin
    mValid:=false;
    Model:='koreksi';
    // data yang di update
    if QuBeli.IsEmpty=false then
    begin
      TampilTombolDetail(True);
      mUrut:=QuBeliURUT.AsInteger;
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
      GdgAsal.Text := QuBeligdgAsal.Value;
      GdgTujuan.Text := QuBeligdgTujuan.Value;
      if Qnt.CanFocus then
        Qnt.SetFocus;
      if Qnt2.CanFocus then
        Qnt2.SetFocus;

    end
    else
    begin
      MsgKoreksiDataKosong;
      ActiveControl:=dxDBGrid1;
    end;
end;

procedure TFrTransfer.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,IDUser);
    RefreshAll;
    if xModalKoreksi then
    begin
      mExit:=True;
      Close;
    end
    else
    begin
      IsiNoBuktiBaru;
      TampilData(NOBUKTI.Text);
      ActiveControl:=NoUrut;
    end;
    FrMainTransfer.GetData(strtoint(PeriodBln),StrToInt(PeriodThn));
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

procedure TFrTransfer.HapusBtnClick(Sender: TObject);
begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      if QuBeli.IsEmpty=true then
      begin
        MsgHapusDataKosong;
        ActiveControl:=dxDBGrid1;
      end else
      begin
        if CekSudahAdaProsesSelanjutnya=True then
        begin
          MessageDlg('Data tidak dapat dihapus, sudah ada transaksi'+chr(13)+mStrMsg, mtInformation,[mbOK],0);
          ActiveControl:=dxDBGrid1;
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
      ActiveControl:=dxDBGrid1;
    end;
end;

procedure TFrTransfer.wwDBGrid1Enter(Sender: TObject);
begin
  FrTransfer.KeyPreview:=False;
end;

procedure TFrTransfer.wwDBGrid1Exit(Sender: TObject);
begin
  FrTransfer.KeyPreview:=True;
end;

procedure TFrTransfer.NoUrutKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_Return then
  begin
    
  end
  else if Key=Vk_Escape then
  begin
    mExit := True;
    Close;
  end;
end;

procedure TFrTransfer.BitBtn1Click(Sender: TObject);
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

procedure TFrTransfer.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
  ClearPanelDetail;
end;

procedure TFrTransfer.FormDestroy(Sender: TObject);
begin
  FrTransfer:=nil;
end;

procedure TFrTransfer.dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
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

procedure TFrTransfer.NoUrutChange(Sender: TObject);
begin
  if mValid then
  begin
    if Length(NoUrut.Text)=5 then
    begin
      Konfig(TipeTrans,Nourut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date);
      NOBUKTI.Text:=MyNoBukti;
    end
    else
      ActiveControl:=NoUrut;
  end;
end;

procedure TFrTransfer.KodeBrgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrTransfer.NoUrutEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrTransfer.KodeBrgExit(Sender: TObject);
begin
  if mValid Then
  begin
    if Length(KodeBrg.Text)=0 then TampilIsiBarang else
    begin
      if DataBersyarat('Select A.KODEBRG, A.NAMABRG, A.SAT1 Sat_1, A.Sat2 Sat_2, A.Isi2 Isi, 0 IsSet, 0 IsInspeksi '+
                       'from dbBarang A, dbGudang B where A.KodeGdg=B.KodeGdg and A.KodeBrg=:0  order by A.KodeBrg ',
      [KodeBrg.Text], DM.QuCari)=True then
      begin
        with DM.QuCari do
        begin
          KodeBrg.Text:=FieldByName('KodeBrg').AsString;
          LNamaBrg.Caption:='[ '+FieldByName('NamaBrg').AsString+' ]';
          mSat_1:=FieldByName('Sat_1').AsString;
          mSat_2:=FieldByName('Sat_2').AsString;
          mIsiBrg:=FieldByName('Isi').AsFloat;
          LSatuan2.Caption:='[ '+mSat_2+' ]';
          LSatuan1.Caption:='[ '+mSat_1+' ]';
          Nosat.Items.Clear;
          Nosat.Items.Add('Pilih Satuan');
          Nosat.Items.Add(mSat_1);
          Nosat.Items.Add(mSat_2);
          Nosat.ItemIndex := 1;
          
        end;
      end
      else TampilIsiBarang;
    end;
    
  end;
end;

procedure TFrTransfer.TambahBtnClick(Sender: TObject);
begin
  model:='write';
  TampilTombolDetail(True);
  ClearPanelDetail;
  KodeBrg.Enabled:=True;
  ActiveControl:=KodeBrg;
end;

procedure TFrTransfer.KodeBrgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
    SpeedButton1.Click;
end;

procedure TFrTransfer.Qnt2Change(Sender: TObject);
begin
  if mValid then
  begin
    Qnt1.Value:=Qnt2.Value*mIsiBrg;
  end;
end;

procedure TFrTransfer.TanggalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
  begin
      if  (CekPeriode(IDUser,TANGGAL.Date)=False) then
        Abort;
      UpdatedbBeli;
  end
  else if Key=Vk_Escape then
  begin
    Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,IDUser);
    If xModalKoreksi = False then
    begin
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

procedure TFrTransfer.TanggalChange(Sender: TObject);
begin
  if mValid then
  begin
    mUbahHd:=True;
  end;
end;

procedure TFrTransfer.TanggalExit(Sender: TObject);
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

procedure TFrTransfer.NosatEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrTransfer.NosatChange(Sender: TObject);
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

procedure TFrTransfer.GdgAsalEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrTransfer.GdgAsalExit(Sender: TObject);
begin
  if mValid  Then
  begin
    if Length(GdgAsal.Text)=0 then TampilIsiGudang(GdgAsal,GdgTujuan) else
    begin
      if MyFindField('dbGudang','KodeGdg',GdgAsal.Text)=true then
      begin
        GdgAsal.Text:=DM.QuCari.FieldByName('KodeGdg').AsString;
      end
      else TampilIsiGudang(GdgAsal,GdgTujuan);
    end;
  end;
end;

procedure TFrTransfer.GdgTujuanEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrTransfer.GdgTujuanExit(Sender: TObject);
begin
  if mValid  Then
  begin
    if Length(GdgTujuan.Text)=0 then TampilIsiGudang(GdgTujuan,GdgAsal) else
    begin
      if MyFindField('dbGudang','KodeGdg',GdgTujuan.Text)=true then
      begin
        GdgTujuan.Text:=DM.QuCari.FieldByName('KodeGdg').AsString;
      end
      else TampilIsiGudang(GdgTujuan,GdgAsal);
    end;
  end;
end;

procedure TFrTransfer.NoUrutExit(Sender: TObject);
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
      If Not Daftar_Nomor(TipeTrans,NoUrut.Text, NOBUKTI.Text,isMax) then
      begin
        MessageDlg('Nomor : '+NOBUKTI.Text+' telah digunakan oleh '+MyUser+'.',mtWarning,[MbOk],0);
        ActiveControl := NoUrut;
      end;
    end;
  end;
end;

procedure TFrTransfer.CetakClick(Sender: TObject);
begin
    frxDBCetak.DataSet.Close;
    frxDBCetak.DataSet := QuUpdatedbbeli;
    //frxDBDataset2.DataSet.Close;
    //frxDBDataset2.DataSet := QuBeli1;
    with QuUpdatedbbeli do
    begin
      close;
      sql.Clear;
      sql.Add('Exec CetakTransfer '+QuotedStr(Nobukti.text));
      Prepared;
      open;
    end;
    frxDBCetak.DataSet.Open;
    //frxDBDataset2.DataSet.Open;
    with frxReport1 do
    begin
      LoadFromFile(ExtractFilePath(Application.ExeName)+'Nota\NotaTransfer1.fr3');
      ShowReport;
    end;
end;

procedure TFrTransfer.SpeedButton8Click(Sender: TObject);
begin
    frxDBCetak.DataSet.Close;
    frxDBCetak.DataSet := QuUpdatedbbeli;
    //frxDBDataset2.DataSet.Close;
    //frxDBDataset2.DataSet := QuBeli1;
    with QuUpdatedbbeli do
    begin
      close;
      sql.Clear;
      sql.Add('Exec CetakTransfer '+QuotedStr(Nobukti.text));
      Prepared;
      open;
    end;
    frxDBCetak.DataSet.Open;
    //frxDBDataset2.DataSet.Open;
    with frxReport1 do
    begin
      LoadFromFile(ExtractFilePath(Application.ExeName)+'Nota\NotaTransfer1.fr3');
      DesignReport;
    end;
end;

end.
