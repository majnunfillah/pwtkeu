unit FrmKreditN;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, wwdblook, Wwdbigrd, Wwdbgrid,
  DBCtrls, ppBands, ppCtrls, ppDB, jpeg, ppPrnabl, ppClass, ppCache,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, ImgList, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ppVar,variants, dxEditor,
  dxExEdtr, dxEdLib, ppStrtch, ppMemo,Dateutils, ppModule, raCodMod,
  frxClass, frxDMPExport, frxDBSet, frxDesgn, MyGlobal, dxmdaset, StrUtils;

type
  TFrKreditN = class(TForm)
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
    Label12: TLabel;
    frxDataPerusahaan: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    DsgCetakBtn: TSpeedButton;
    frxDesigner1: TfrxDesigner;
    frxReport1: TfrxReport;
    Label8: TLabel;
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
    QuBeliNoUrut: TStringField;
    QuBeliUrut: TIntegerField;
    dxDBGrid1NoBukti: TdxDBGridMaskColumn;
    dxDBGrid1tanggal: TdxDBGridDateColumn;
    dxDBGrid1Keterangan: TdxDBGridMaskColumn;
    dxDBGrid1NoBeli: TdxDBGridMaskColumn;
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
    Label17: TLabel;
    Keterangan: TEdit;
    Label4: TLabel;
    Nilai: TPBNumEdit;
    dxDBGrid1Column10: TdxDBGridColumn;
    QuBeliNilai: TBCDField;
    Label1: TLabel;
    Valas: TEdit;
    Label2: TLabel;
    Kurs: TPBNumEdit;
    NilaiRp: TPBNumEdit;
    Label3: TLabel;
    QuBelikodeVls: TStringField;
    QuBeliKurs: TBCDField;
    QuBeliNilaiRp: TBCDField;
    dxDBGrid1NNETRp: TdxDBGridMaskColumn;
    dxDBGrid1kodeVls: TdxDBGridMaskColumn;
    dxDBGrid1Kurs: TdxDBGridMaskColumn;
    dxDBGrid1NilaiRp: TdxDBGridMaskColumn;
    QuBeliNilaiValas: TBCDField;
    QuBeliSaldo: TBCDField;
    QuBeliSaldoD: TBCDField;
    QuBeliNoInv: TStringField;
    QuBeliurutinvoicepl: TIntegerField;
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
    procedure NilaiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TanggalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KoreksiBtnClick(Sender: TObject);
    procedure wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure HapusBtnClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
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
    procedure ValasEnter(Sender: TObject);
    procedure ValasExit(Sender: TObject);
    procedure NilaiEnter(Sender: TObject);
    procedure NilaiChange(Sender: TObject);

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
  FrKreditN: TFrKreditN;
  mValid,mExit,mMasterKoreksi: Boolean;
  mUrut,mUrutPO,IsTutup,mNosat,mPosisi:Integer;
  TipeTrans,PlusPPN,Nomor,Model:String;
  mBulan,mTahun:string;
  Biaya,IsiBrg,potongan:Real;
  S:array[0..255]of char;
  BM : TBookmark;
  mDiskon, mDiskon2 : currency;

implementation
uses FrmBrows,MyProcedure, MyModul, FrmKreditB,
  FrmMainKreditN;
{$R *.DFM}

// PROCEDURE DAN FUNCTION PRIBADI

procedure TFrKreditN.TampilTombolDetail(pNilai: Boolean);
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

procedure TFrKreditN.TampilIsiSupplier;
begin
  KodeBrows:=110701;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeSupp.Text;
  FrBrows.NoKira:='PT';
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

procedure TFrKreditN.TampilIsiGudang;
begin

end;



procedure TFrKreditN.IsiSatuan;
begin

end;

procedure TFrKreditN.TampilIsiBarang;
begin

end;

procedure TFrKreditN.TampilIsiBarangPO;
begin

end;

procedure TFrKreditN.TampilIsiEkspedisi;
begin

end;

procedure TFrKreditN.IsiNoBuktiBaru;
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

procedure TFrKreditN.TampilIsiBeli;
begin
  KodeBrows:=2420182;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.IsEmpty=False) then
  begin
       NoBeli.Text:=FrBrows.QuBrows.fieldbyname('NoBukti').AsString;
  end
  else
    ActiveControl:=NoBeli;
end;

procedure TFrKreditN.TampilData(No_Bukti:String);
begin
   QuBeli.Close;
   QuBeli.SQL.Strings[2]:='select @NoBukti='+QuotedStr(No_Bukti);
   QuBeli.Open;
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

Function TFrKreditN.CheckFormMaster:boolean;
begin
   if (length(KodeSupp.Text)=0) then
   CheckFormMaster:=false
   else
   CheckFormMaster:=true;
end;

procedure TFrKreditN.ClearPanelDetail;
begin
   NoBeli.Text:='';
   Keterangan.Text:='';
   Nilai.AsFloat:=0.0;
end;

procedure TFrKreditN.RefreshAll;
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

procedure TFrKreditN.IsiHargaBrg;
begin


end;

procedure TFrKreditN.UpdateDataBeli(Choice:Char;Kodet:String);
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
       Parameters[7].Value:=KodeSupp.Text;
       Parameters[8].Value:=Nilai.AsFloat;
       Parameters[9].Value:=Valas.Text;
       Parameters[10].Value:=Kurs.Value;
       Parameters[11].Value:=NilaiRp.Value;
       Parameters[12].Value:=NoUrut.Text;
       Parameters[13].Value:=NoUrut.Text;

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

Procedure TFrKreditN.AmBilDataBeli;
begin
   if not QuBeli.IsEmpty then
   begin
      Tanggal.Date:=QuBeli.fieldbyname('Tanggal').AsDateTime;
      Keterangan.Text:=QuBeli.fieldbyname('keterangan').AsString;
      KodeSupp.Text:= QuBeli.fieldbyname('Kodesupp').AsString;
      LnamaSupp.Caption:=QuBeli.fieldbyname('NamaCustSupp').AsString;
      LAlamatSupp.Caption:=QuBeli.fieldbyname('Alamat1').AsString;
   end;
end;

procedure TFrKreditN.UpdatedbBeli;
begin
  if (not QuBeli.IsEmpty) and (FrMainKreditN.ModalKoreksi=True) then
  begin
    with QuUpdatedbBeli do
    begin
       Close;
       Sql.Clear;
       SQL.Add('Update dbKreditNote');
       SQL.Add('Set KodeSupp=:0 ');
       SQL.Add('Where NoBukti=:1');
       Prepared;
       Parameters[0].Value := KodeSupp.Text;
       Parameters[1].Value := NoBukti.Text;
       ExecSQL;
    end;
    TampilData(NoBukti.Text);
  end;
end;


// PROCEDURE DAN FUNCTION MILIK DELPHI

procedure TFrKreditN.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFrKreditN.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrKreditN.FormShow(Sender: TObject);
begin
  mValid:=False;
  xModalKoreksi:=FrMainKreditN.ModalKoreksi;
  If xModalKoreksi=False then
  begin
    RefreshAll;
    IsiNoBuktiBaru;
    TampilData(NoBukti.Text);
    //NoUrut.Enabled:=True;
  end
  else
  Begin
    NOBUKTI.Text:=FrMainKreditN.QuMasterNoBukti.AsString;
    Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,isMax);
    TampilData(NOBUKTI.Text);
    AmBilDataBeli;
    NoUrut.Text:=QuBeliNoUrut.AsString;
    //NoUrut.Enabled:=False;
    ActiveControl:=Tanggal;
  end;
end;

procedure TFrKreditN.FormCreate(Sender: TObject);
begin
  TipeTrans:='KN';
  Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
  mUbahHd:=False;
  mUbahHdDet:=False;
end;

procedure TFrKreditN.TambahBtnClick(Sender: TObject);
begin
  if CheckFormMaster=true then
  begin
      Model:='write';
      {TampilTombolDetail(True);
      noBeli.Enabled:=True;
      ActiveControl:=noBeli;}
    if Assigned(FrKreditB) then FrKreditB.Showmodal else
      begin
        Application.CreateForm(TFrKreditB,FrKreditB);
        FrKreditB.Showmodal;
      end;
  end
  else
  begin
     ShowMessage('Form Master Tidak Lengkap, Silahkan Anda Periksa !');
  end;
end;

procedure TFrKreditN.NilaiKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrKreditN.TanggalKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrKreditN.KoreksiBtnClick(Sender: TObject);
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
        noBeli.Text:=QuBeliNoInv.AsString;
        Keterangan.Text:=QuBeliKeterangan.AsString;
        Valas.Text := QuBelikodeVls.Value;
        Kurs.Value := QuBeliKurs.Value;
        Nilai.AsFloat:=QuBeliNilai.AsFloat;
        NilaiRp.Value := QuBeliNilaiRp.Value;
        ActiveControl:=Keterangan;
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

procedure TFrKreditN.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrKreditN.HapusBtnClick(Sender: TObject);
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
          [QuBeliNoInv.asstring]));
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

procedure TFrKreditN.wwDBGrid1Enter(Sender: TObject);
begin
  FrKreditN.KeyPreview:=false;
  CheckFormMaster;
end;

procedure TFrKreditN.wwDBGrid1Exit(Sender: TObject);
begin
  FrKreditN.KeyPreview:=true;
end;

procedure TFrKreditN.NoUrutKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var myTempNoUrut: String;
begin
  if Key=Vk_Return then
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

procedure TFrKreditN.TanggalEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrKreditN.TanggalExit(Sender: TObject);
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

procedure TFrKreditN.KodeSuppEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrKreditN.CetakClick(Sender: TObject);
var N1, N2, N3 : string;
    T1, T2 : Real;
    Tot : byte;
    H1  : real;
begin
{  tothal :=(QuBeli.RecordCount div 10);
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

    if QuUpdatedbbeli.FieldByName('Nama').AsString='Zona Accessories' then
       frxReport1.LoadFromFile(currDir+'Nota\NOTABeliZ.fr3') else
   }
  frxDBDataset1.DataSet:=Qureport;
  with Qureport do
  begin
    close;
    sql.Clear;
    Sql.add('exec CetakKreditNote '+QuotedStr(Nobukti.Text));
    OPen;
  end;
  frxDBDataset1.Close;
  frxDBDataset1.Open;
  frxReport1.LoadFromFile(currDir+'Nota\NotaKreditNote.fr3');
  frxReport1.ShowReport;
end;

procedure TFrKreditN.BitBtn1Click(Sender: TObject);
begin
  mValid:=False;
  if CekPeriode(IDUser, Tanggal.Date)=True then
  begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      if Model='write' then
      begin
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

procedure TFrKreditN.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  ClearPanelDetail;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
end;

procedure TFrKreditN.FormDestroy(Sender: TObject);
begin
  FrKreditN:=nil;
end;

procedure TFrKreditN.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrKreditN.BPrevClick(Sender: TObject);
begin
  Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,IDUser);
  FrMainKreditN.QuNavigator.Locate('NoBukti',NoBukti.Text,[LOC,LOP]);
  FrMainKreditN.QuNavigator.Prior;
  FrMainKreditN.QuMaster.Locate('NoBukti',FrMainKreditN.QuNavigatorNoBukti.AsString,[LOC,LOP]);
  FormShow(Self);
end;

procedure TFrKreditN.BNextClick(Sender: TObject);
begin
  Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,IDUser);
  FrMainKreditN.QuNavigator.Locate('NoBukti',NoBukti.Text,[LOC,LOP]);
  FrMainKreditN.QuNavigator.Next;
  FrMainKreditN.QuMaster.Locate('NoBukti',FrMainKreditN.QuNavigatorNoBukti.AsString,[LOC,LOP]);
  FormShow(Self);
end;

procedure TFrKreditN.DsgCetakBtnClick(Sender: TObject);
begin
  With QuUpdatedbbeli do
  begin
    close;
    sql.clear;
    sql.add('Select * From vwPerusahaan ');
    Open;
  end;
  frxReport1.LoadFromFile(currDir+'Nota\NotaKreditNote.fr3');
  frxReport1.DesignReport;

end;

procedure TFrKreditN.frxReport1GetValue(const VarName: String;
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

procedure TFrKreditN.NoUrutChange(Sender: TObject);
begin
  if mValid then
  begin
    if Length(NoUrut.Text)=5 then
    begin
      Konfig(TipeTrans,Nourut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date);
      NOBUKTI.Text:=MyNoBukti;
    end
    else
      ActiveControl := NoUrut;
  end;
end;

procedure TFrKreditN.KodeBrgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrKreditN.noBeliEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrKreditN.noBeliExit(Sender: TObject);
begin
  if mValid Then
  begin
    if length(noBeli.Text)=0 then TampilIsiBeli else
      begin
        if DataBersyarat('select a.NoBukti,a.KodeSupp,NamaSupp,Sum(NDPP)NDPP,Sum(NPPN)NPPN,Sum(NNET)NNET from dbInvoicePL a  '+
                         'Left Outer Join dbInvoicePLDet b On a.NoBukti=b.noBukti      '+
                         'Left Outer join dbCustSupp c On c.KodeCustSupp=a.KodeSupp  '+
                         'where a.NoBukti Not in(select NoBeli from dbInvoicePLDet) and a.NoBukti=:0 '+
                         'Group by a.NoBukti,a.KodeSupp,NamaSupp',[noBeli.text],Dm.Qucari)=true then
        begin
             noBeli.Text:=DM.QuCari.fieldbyname('NoBukti').AsString;
        end
      else TampilIsiBeli  ;
    end;
  end;
end;

Procedure TFrKreditN.Hitung;
begin

end;

procedure TFrKreditN.noBeliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key=Vk_Escape then
 begin
   SpeedButton1.Click;
 end
end;

procedure TFrKreditN.KodeSuppExit(Sender: TObject);
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
                        '   where B.Perkiraan=A.Perkiraan and B.Kode=''PT'' '+
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

procedure TFrKreditN.TampilIsiValas;
begin
  KodeBrows:=11001;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=Valas.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    with FrBrows.QuBrows do
    begin
       Valas.Text:=fieldbyname('KodeVls').AsString;
       if model<>'koreksi' then
              Kurs.Value:=fieldbyname('Kurs').AsCurrency;

       if UpperCase(Valas.Text)='IDR' then
          Kurs.ReadOnly:=true
       else
          Kurs.ReadOnly:=false;
    end;
  end
  else
    ActiveControl:=Valas;
end;

procedure TFrKreditN.ValasEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrKreditN.ValasExit(Sender: TObject);
begin
  if mValid Then
  begin
    if length(Valas.Text)=0 then TampilIsiValas else
    begin
      if MyFindField('dbValas','KodeVls',Valas.Text)=true then
      begin
        with DM.QuCari do
        begin
           Valas.Text:=fieldbyname('KodeVls').AsString;
           if model<>'koreksi' then
              Kurs.Value:=fieldbyname('Kurs').AsCurrency;
           if UpperCase(Valas.Text)='IDR' then
              Kurs.ReadOnly:=true
           else
              Kurs.ReadOnly:=false;
        end;
      end
      else TampilIsiValas;
    end;
  end;
end;

procedure TFrKreditN.NilaiEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrKreditN.NilaiChange(Sender: TObject);
begin
  if mValid then
  begin
   // NilaiRp.Value := Nilai.Value*Kurs.Value;
  end;
end;

end.
