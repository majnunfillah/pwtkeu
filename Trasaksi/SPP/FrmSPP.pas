unit FrmSPP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, DBCtrls, ImgList, RxGIF, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  strUtils,DateUtils, Variants, dxmdaset, frxClass, frxDBSet, Math;

type
  TFrSPP = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    QuBeli: TADOQuery;
    Sp_Beli: TADOStoredProc;
    DsQuBeli: TDataSource;
    Label10: TLabel;
    Panel2: TPanel;
    dxDBGrid1: TdxDBGrid;
    Shape4: TShape;
    Label5: TLabel;
    Label12: TLabel;
    Label42: TLabel;
    NoUrut: TEdit;
    NoBukti: TEdit;
    TglKirim: TDateEdit;
    LNamaBrg: TRxLabel;
    LKodeBrg: TLabel;
    KodeBrg: TEdit;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    KodeCust: TEdit;
    Label4: TLabel;
    NoSC: TEdit;
    Label3: TLabel;
    Label13: TLabel;
    Tanggal: TDateEdit;
    Label16: TLabel;
    Label19: TLabel;
    Qnt: TPBNumEdit;
    LSatuan: TLabel;
    Qnt2: TPBNumEdit;
    LSatuan2: TLabel;
    KetDetail: TEdit;
    Shape6: TShape;
    LNamaCustSupp: TLabel;
    LAlamatCustSupp: TLabel;
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
    dxDBGrid1SAT_1: TdxDBGridMaskColumn;
    dxDBGrid1ISI: TdxDBGridMaskColumn;
    dxDBGrid1Keterangan: TdxDBGridMaskColumn;
    Nosat: TComboBox;
    LSatuan1: TLabel;
    Qnt1: TPBNumEdit;
    Label1: TLabel;
    NoPesan: TEdit;
    NoLC: TEdit;
    Label6: TLabel;
    Catatan: TMemo;
    Label7: TLabel;
    Label8: TLabel;
    NetW: TPBNumEdit;
    Label9: TLabel;
    GrossW: TPBNumEdit;
    Label11: TLabel;
    NamaBrg: TMemo;
    Label14: TLabel;
    NoShip: TEdit;
    Label15: TLabel;
    Mesurement: TPBNumEdit;
    QuUpdatedbbeli: TADOQuery;
    QuUpdate: TADOQuery;
    Label17: TLabel;
    ShippingMark: TMemo;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    Label18: TLabel;
    NoAlamatKirim: TEdit;
    Shape1: TShape;
    LAlamatKirim: TLabel;
    Label20: TLabel;
    NamaKirim: TEdit;
    Label21: TLabel;
    AlamatKirim: TMemo;
    Label22: TLabel;
    QuBeliNOBUKTI: TStringField;
    QuBeliNOURUT: TStringField;
    QuBeliTANGGAL: TDateTimeField;
    QuBeliTglKirim: TDateTimeField;
    QuBeliKODECUSTSUPP: TStringField;
    QuBeliNamaCustSupp: TStringField;
    QuBeliAlamat: TStringField;
    QuBeliKota: TStringField;
    QuBeliNOSHIP: TStringField;
    QuBeliNOPESAN: TStringField;
    QuBeliShippingMark: TStringField;
    QuBeliNoLC: TStringField;
    QuBeliCatatan: TStringField;
    QuBeliISCETAK: TBooleanField;
    QuBeliIDUser: TStringField;
    QuBeliURUT: TIntegerField;
    QuBeliKODEBRG: TStringField;
    QuBeliNamaBrg: TStringField;
    QuBeliQNT: TBCDField;
    QuBeliQNT2: TBCDField;
    QuBeliSAT_1: TStringField;
    QuBeliSAT_2: TStringField;
    QuBeliNoSat: TIntegerField;
    QuBeliISI: TBCDField;
    QuBeliKetDetail: TStringField;
    QuBeliUrutSO: TIntegerField;
    QuBeliNetW: TBCDField;
    QuBeliGrossW: TBCDField;
    QuBeliNoSO: TStringField;
    QuBeliNOPO: TStringField;
    QuBeliNamabrgKom: TStringField;
    QuBeliMesurement: TBCDField;
    QuBeliNamaKirim: TStringField;
    QuBeliAlamatkirim: TStringField;
    QuBeliSatuan: TStringField;
    QuBeliNoAlamatkirim: TIntegerField;
    Label23: TLabel;
    KodeGdg: TEdit;
    QuBelikodegdg: TStringField;
    dxDBGrid1kodegdg: TdxDBGridMaskColumn;
    QuBeliQNT1: TBCDField;
    frxDataPerusahaan: TfrxDBDataset;
    QuBeliFlagTipe: TWordField;
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
    procedure NoSCExit(Sender: TObject);
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
    procedure CatatanEnter(Sender: TObject);
    procedure CatatanExit(Sender: TObject);
    procedure NoUrutExit(Sender: TObject);
    procedure NamaBrgEnter(Sender: TObject);
    procedure NamaBrgExit(Sender: TObject);
    procedure CetakClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure NoAlamatKirimEnter(Sender: TObject);
    procedure NoAlamatKirimExit(Sender: TObject);
    procedure KodeGdgEnter(Sender: TObject);
    procedure KodeGdgExit(Sender: TObject);
    procedure frxReport1AfterPrintReport(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);

  private
    { Private declarations }
    mUrut, mUrutSHIP: Integer;
    mUbahHd, mUbahHdDet, mValid, mExit: Boolean;
    mNilaiEnter, mIsiBrg, QntSisa, Qnt2Sisa: Real;
    mSat_1, mSat_2, mStrMsg, mNoShip,Xcustsupp: String;
    IsPPn:Integer;
    function  CekSudahAdaProsesSelanjutnya: Boolean;
    procedure TampilanQntSatuan(pNilai: Integer);
    procedure TampilIsiBarang;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure UpdatedbBeli;
    procedure IsiNoBuktiBaru;
    procedure TampilIsiSC;
    procedure TampilIsiAlamatKirim;
    procedure TampilIsiGudang;


  public
    { Public declarations }
    Sat : String;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel, xModalKoreksi, xStatus: Boolean;
    Flagmenu : byte;
  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrSPP: TFrSPP;
  TipeTrans,PlusPPN,Nomor,Model:String;
  YY,MM,DD : Word;
  S:array[0..255]of char;
  bm,GBM : TBookmark;

implementation
uses FrmBrows, MyProcedure, MyGlobal, MyModul, FrmMainSPP;
{$R *.DFM}

function TFrSPP.CekSudahAdaProsesSelanjutnya: Boolean;
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

procedure TFrSPP.TampilanQntSatuan(pNilai: Integer);
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

procedure TFrSPP.TampilIsiBarang;
begin
  KodeBrows:=40402;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.NoKira:=NoShip.Text;
  FrBrows.IsiData:=KodeBrg.Text;
  FrBrows.NoKira2 := IntToStr(Flagmenu);
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.FieldByName('KodeBrg').AsString<>'') then
  begin
    with FrBrows.QuBrows do
    begin
      KodeBrg.Text:=FieldByName('KodeBrg').AsString;
      LNamaBrg.Caption:='[ '+FieldByName('NamaBrg').AsString+' ]';
      NamaBrg.Text := FieldByName('NamaBrgkom').AsString;
      mUrutShip:=FieldByName('Urut').AsInteger;
      mSat_1:=FieldByName('Sat1').AsString;
      mSat_2:=FieldByName('Sat2').AsString;
      mIsiBrg:=FieldByName('Isi').AsFloat;
      LSatuan2.Caption:='[ '+mSat_2+' ]';
      LSatuan1.Caption:='[ '+mSat_1+' ]';
      //Qnt2.Value:=FieldByName('Qnt2Sisa').AsFloat;
      Qnt1.Value:=FieldByName('QntSisa').AsFloat;
      QntSisa := Qnt1.Value;
      Qnt2Sisa := Qnt2.Value;
      Nosat.Items.Clear;
      Nosat.Items.Add('Pilih Satuan');
      Nosat.Items.Add(mSat_1);
      Nosat.Items.Add(mSat_2);
      Nosat.ItemIndex := FieldByName('nosat').AsInteger;
      if FieldByName('nosat').AsInteger=1 then
      begin
         Qnt.Value:=FieldByName('QntSisa').AsFloat;
         LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value/mIsiBrg)+' '+mSat_2+' ]';
         NetW.AsFloat := Qnt.Value;
      end
      else
      if FieldByName('nosat').AsInteger=2 then
      begin
         Qnt.Value:=FieldByName('QntSisa').AsFloat/mIsiBrg;
         LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value*mIsiBrg)+' '+mSat_1+' ]';
         NetW.AsFloat := Qnt.Value*mIsiBrg;
      end;
      //ShippingMark.Text :=FieldByName('ShippingMark').AsString;
    end;
  end
  else
    ActiveControl:=KodeBrg;
end;

procedure TFrSPP.TampilIsiSC;
begin
     KodeBrows:=40401;
     Application.CreateForm(TFrBrows, FrBrows);
     FrBrows.IsiData:=NoSC.Text;
     FrBrows.ShowModal;
     if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.FieldByName('NoBukti').AsString<>'') then
     begin
       with FrBrows.QuBrows do
       begin
         NoSC.Text:=FieldByName('NoSO').AsString;
         KodeCust.Text:=FieldByName('KodeCustSupp').AsString;
         LNamaCustSupp.Caption:=FieldByName('NamaCustSupp').AsString;
         LAlamatCustSupp.Caption:=FieldByName('Alamat').AsString+chr(13)+FieldByName('Kota').AsString;
         NoPesan.Text :=FieldByName('NOPO').AsString;
         NoLC.Text :=FieldByName('NoLC').AsString;
         NoShip.Text := FieldByName('NoBukti').AsString;
       end;
     end
     else ActiveControl:=NoSC;
end;

procedure TFrSPP.TampilTombolDetail(pNilai: Boolean);
begin
 //PanelShow1.Visible:=not pNilai;
  //PanelShow2.Visible:=not pNilai;
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  //Panel3.Enabled:=pNilai;
end;

procedure TFrSPP.UpdatedbBeli;
begin
  if (not QuBeli.IsEmpty) and (mUbahHd=True) then
  begin
    with QuUpdate do
    begin
       Close;
       Sql.Clear;
       if Flagmenu=0 then
          SQL.Add('Update dbSPP')
       else
          SQL.Add('Update dbSPPBHN');
       {SQL.Add('Set Tanggal='+QuotedStr(FormatDateTime('mm-dd-yyyy',Tanggal.Date))+
               ', NoSHIP='+QuotedStr(NoShip.Text)+', TglKirim='+QuotedStr(FormatDateTime('mm-dd-yyyy',TglKirim.Date))+
               ', NoPesan='+QuotedStr(NoPesan.Text)+
               ', NoLC='+QuotedStr(NoLC.Text)+',Catatan='+QuotedStr(Trim(Catatan.Text)));}
       SQL.Add('Set Tanggal=:0,  TglKirim=:1, NoPesan=:2, NoLC=:3,Catatan=:4, NoAlamatKirim=:5, NamaKirim=:6, AlamatKirim=:7');
       SQL.Add('Where NoBukti='+QuotedStr(NoBukti.Text));
       Prepared:=True;
       Parameters[0].Value := Tanggal.Date;
       //Parameters[1].Value := NoSC.Text;
       if TglKirim.Text='  /  /    ' then
         Parameters[1].Value := null
         else
       Parameters[1].Value := TglKirim.Date;
       Parameters[2].Value := NoPesan.Text;
       Parameters[3].Value := NoLC.Text;
       Parameters[4].Value := Catatan.Text;
       if NoAlamatKirim.Text='-' then Parameters[5].Value:=-1 else
        begin
          try
            Parameters[5].Value:=StrToInt(NoAlamatKirim.Text)
          except
            Parameters[5].Value:=0;
          end;
        end;
       Parameters[6].Value := NamaKirim.Text;
       Parameters[7].Value := AlamatKirim.Text;
       try
         ExecSQL;
       except
       end;
       mUbahHd:=False; mUbahHdDet:=False;
    end;
    TampilData(NoBukti.Text);
  end;
end;

procedure TFrSPP.TampilData(No_Bukti:String);
begin
  QuBeli.Close;
  QuBeli.SQL.Strings[2]:='select @NoBukti='+QuotedStr(No_Bukti);
  QuBeli.Open;
  KodeCust.Enabled:=QuBeli.IsEmpty;
  NoSC.Enabled:=QuBeli.IsEmpty;
  NoPesan.Enabled:=QuBeli.IsEmpty;
  if QuBeli.IsEmpty=false then
  begin
    dxDBGrid1.OptionsDB:=[edgoCanNavigation,edgoLoadAllRecords,edgoUseBookmarks]
  end
  else
  begin
    dxDBGrid1.OptionsDB:=[edgoCanNavigation,edgoUseBookmarks];
  end;
end;

procedure TFrSPP.IsiNoBuktiBaru;
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

Function TFrSPP.CheckFormMaster:boolean;
begin
   CheckFormMaster:=true;
end;

procedure TFrSPP.ClearPanelDetail;
begin
   KodeBrg.Text:='';
   LNamaBrg.Caption:='[ . . . ]';
   LSatuan2.Caption:='[ . . . ]';
   LSatuan1.Caption:='[ . . . ]';
   LSatuan.Caption:='[ . . . ]';
   KetDetail.Clear;
   Qnt.AsFloat:=0.00;
   NetW.AsFloat:=0.00;
   GrossW.AsFloat:=0.00;
   Mesurement.Value:=0.00;
   Qnt2.AsFloat:=0.00;
   Qnt1.AsFloat:=0.00;
end;

procedure TFrSPP.RefreshAll;
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
   LNamaCustSupp.Caption:='';
   LAlamatCustSupp.Caption:='';
   Catatan.Text:='';
   ClearPanelDetail;
end;

procedure TFrSPP.UpdateDataBeli(Choice:Char;Kodet:String);
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
      Parameters[5].Value:=NoShip.Text;
      Parameters[6].Value:=NoPesan.Text;
      Parameters[7].Value:=KodeCust.Text;
      if TglKirim.Text='  /  /    ' then
         Parameters[8].Value := null
         else
       Parameters[8].Value := TglKirim.Date;
      Parameters[9].Value:=ShippingMark.Text;
      Parameters[10].Value:=NoLC.Text;
      Parameters[11].Value:=Trim(Catatan.Text);
      Parameters[12].Value:=mUrut;
      Parameters[13].Value:=mUrutSHip;
      Parameters[14].Value:=KodeBrg.Text;
      if Nosat.Visible=True then
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
      end else
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
      Parameters[23].Value:=KetDetail.Text;
      Parameters[24].Value:=IDUser;
      if QuBeli.IsEmpty then
        Parameters[25].Value:=0
      else
        Parameters[25].Value:=1;
      Parameters[26].Value := Trim(NamaBrg.Text);
      Parameters[27].Value := Mesurement.Value;

      try
        if NoAlamatKirim.Text='' then
          Parameters[28].Value:=0
        else Parameters[28].Value:=StrToInt(NoAlamatKirim.Text);
      except
        Parameters[28].Value:=0;
      end;
      Parameters[29].Value := NamaKirim.Text;
      Parameters[30].Value := AlamatKirim.Text;
    end;
    Parameters[31].Value := Flagmenu;
    Parameters[32].Value := KodeGdg.Text;
    Parameters[33].Value := IsPPN;

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

Procedure TFrSPP.AmBilDataBeli;
begin
   if not QuBeli.IsEmpty then
   begin
      mValid := False;
      NoBukti.Text:=QuBeliNOBUKTI.AsString;
      Tanggal.Date:=QuBeliTanggal.AsDateTime;
      KodeCust.Text:=QuBeliKODECUSTSUPP.AsString;
      LNamaCustSupp.Caption:=QuBeliNamaCustSupp.AsString;
      LAlamatCustSupp.Caption:=QuBeliAlamat.AsString+chr(13)+QuBeliKota.AsString;
      NoSC.Text:=QuBeliNoSo.AsString;
      NoShip.Text := QuBeliNOSHIP.Value;
      NoPesan.Text:=QuBeliNOPESAN.AsString;
      TglKirim.Date:=QuBeliTglKirim.AsDateTime;
      NoLC.Text:=QuBeliNoLC.AsString;
      Catatan.Text:=QuBeliCatatan.AsString;
      NamaKirim.Text := QuBeliNamaKirim.Value;
      AlamatKirim.Text := QuBeliAlamatkirim.Value;
      NoAlamatKirim.Text := inttostr(QuBeliNoAlamatkirim.Value);
      IsPPn:=QuBeliFlagTipe.asInteger;
      Xcustsupp:=QuBeliKODECUSTSUPP.AsString;
      try
        if QuBeliNoAlamatKirim.IsNull then
           NoAlamatKirim.Text:='-'
        else
           NoAlamatKirim.Text:=IntToStr(QuBeliNoAlamatKirim.AsInteger);
      except
        NoAlamatKirim.Text:='-';
      end;
      mValid := True;
      NoAlamatKirimExit(NoAlamatKirim);
      mValid := False;
   end;
end;

// PROCEDURE DAN FUNCTION MILIK DELPHI

procedure TFrSPP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if mExit=true then
  begin
     FrMainSPP.ToolButton10.Click;
     Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
     Action:=cafree;
  end
  else
  begin
     Action:=caNone;
  end;
end;

procedure TFrSPP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then SendMessage(Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrSPP.FormShow(Sender: TObject);
begin
  RefreshAll;
  xModalKoreksi:=FrMainSPP.ModalKoreksi;
  If xModalKoreksi = False then
  begin
    IsiNoBuktiBaru;
    TampilData(NoBukti.Text);
    NoShip.Text:=gTempNoBukti;
    NoSC.Text := gTempNoBuktiSO;
    mValid:=True;
    NoSCExit(NoSC);
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

procedure TFrSPP.FormCreate(Sender: TObject);
begin
  TipeTrans:='SPP';
  Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
  Qnt2.Top:=Qnt.Top;
  Qnt2.Left:=Qnt.Left;
  LSatuan2.Top:=Qnt2.Top+4;
  LSatuan2.Left:=Qnt2.Left+Qnt2.Width+8;
  Qnt1.Top:=Qnt2.Top;
  Qnt1.Left:=Qnt2.Left+Qnt2.Width+70;
  LSatuan1.Top:=Qnt1.Top+4;
  LSatuan1.Left:=Qnt1.Left+Qnt1.Width+8;
  flagmenu := FrmainSpp.mMainSPP_FLagmenu;
end;

procedure TFrSPP.KoreksiBtnClick(Sender: TObject);
begin
    mValid:=false;
    Model:='koreksi';
    // data yang di update
    if QuBeli.IsEmpty=false then
    begin
      TampilTombolDetail(True);
      mUrut:=QuBeliURUT.AsInteger;
      mUrutSHip:=QuBeliUrutSo.AsInteger;
      KodeBrg.Text:=QuBeliKODEBRG.AsString;
      DataBersyarat('Declare @nobukti varchar(50), @kodebrg varchar(50) Select @Nobukti=:0, @kodebrg=:1 '+
                       ' Select A.KODEBRG, B.NAMABRG, A.Qnt2Sisa, B.Sat2, A.QntSisa, B.Sat1, A.Isi, A.NoBukti, A.Urut, A.Nosat, '+
                       ' A.namabrgkom '+
                       ' from vwOutSO_SPP A left outer join dbBarang B on B.KodeBrg=A.KodeBrg '+
                       '      left Outer join dbSO D on d.Nobukti=A.nobukti '+
                       ' where A.NoBukti=@nobukti and A.kodebrg=@kodebrg and A.Urut=:2'+
                       ' order by A.KodeBrg ',
      [noSC.text,KodeBrg.Text,QuBeliUrutSO.AsInteger], DM.QuCari);
      with DM.QuCari do
      begin
        Qnt2Sisa:=FieldByName('Qnt2Sisa').AsFloat;
        QntSisa:=FieldByName('QntSisa').AsFloat;
      end;
      KodeBrg.Enabled:=False;
      LNamaBrg.Caption:='[ '+QuBeliNamaBrg.AsString+' ]';
      LSatuan2.Caption:='[ '+QuBeliSat_2.AsString+' ]';
      mSat_2:=QuBeliSat_2.AsString;
      LSatuan1.Caption:='[ '+QuBeliSat_1.AsString+' ]';
      mSat_1:=QuBeliSat_1.AsString;
      mIsiBrg:=QuBeliIsi.AsFloat;
      mUrutSHIP := QuBeliUrutSO.AsInteger;
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
      KetDetail.Text:=QuBeliKetDetail.AsString;
      if Qnt.CanFocus then
        Qnt.SetFocus;
      if Qnt2.CanFocus then
        Qnt2.SetFocus;
      NamaBrg.Text := QuBeliNamabrgKom.Value;  
      NetW.Value := QuBeliNetW.Value;
      GrossW.Value := QuBeliGrossW.Value;
      Mesurement.Value := QuBeliMesurement.Value;
      //ShippingMark.Text:=QuBeliShippingMark.AsString;
      KodeGdg.Text := QuBelikodegdg.Value;
    end
    else
    begin
      MsgKoreksiDataKosong;
      ActiveControl:=dxDBGrid1;
    end;
end;

procedure TFrSPP.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
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
      IsiNoBuktiBaru;
      TampilData(NOBUKTI.Text);
      ActiveControl:=NoUrut;
    end;
    FrMainSPP.GetData(strtoint(PeriodBln),StrToInt(PeriodThn));
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

procedure TFrSPP.HapusBtnClick(Sender: TObject);
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

procedure TFrSPP.wwDBGrid1Enter(Sender: TObject);
begin
  FrSPP.KeyPreview:=False;
end;

procedure TFrSPP.wwDBGrid1Exit(Sender: TObject);
begin
  FrSPP.KeyPreview:=True;
end;

procedure TFrSPP.NoUrutKeyDown(Sender: TObject; var Key: Word;
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
    end;}
  end
  else if Key=Vk_Escape then
  begin
    mExit := True;
    Close;
  end;
end;

procedure TFrSPP.BitBtn1Click(Sender: TObject);
Var IsLanjut : Boolean;
    Pesan : String;
begin
  IsLanjut := false;
 if CekPeriode(IdUser,TANGGAL.Date)=true then
  begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      if (length(Kodebrg.Text)>0) then
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
            Case Nosat.ItemIndex of
               1 : IsLanjut := RoundTo(Qnt.Value,-2)<=RoundTo(QntSisa,-2);
               2 : IsLanjut := RoundTo(Qnt.Value,-2)<=RoundTo(Qnt2Sisa,-2);
            end;
            if IsLanjut then
            begin
              UpdateDataBeli('I','BL');
              ClearPanelDetail;
            end
            else
            begin
              Case Nosat.ItemIndex of
                1 : Pesan := 'Qnt tidak boleh Melebihi '+FormatFloat(',0.##',QntSisa)+' '+mSat_1;
                2 : Pesan := 'Qnt tidak boleh Melebihi '+FormatFloat(',0.##',Qnt2Sisa)+' '+mSat_2;
              end;
              MessageDlg(Pesan,mtWarning,[mbok],0);
            end;
            ActiveControl:=Kodebrg;
          end
          else if model='koreksi' then
          begin
            Case Nosat.ItemIndex of
               1 : IsLanjut := RoundTo(Qnt.Value,-2)<=RoundTo(QntSisa+QuBeliQNT.Value,-2);
               2 : IsLanjut := RoundTo(Qnt.Value,-2)<=RoundTo(Qnt2Sisa+QuBeliQNT2.Value,-2);
            end;
            if IsLanjut then
            begin
              UpdateDataBeli('U','BL');
              SpeedButton1.Click;
            end
            else
            begin
              Case Nosat.ItemIndex of
                1 : Pesan := 'Qnt tidak boleh Melebihi '+FormatFloat(',0.##',QntSisa+QuBeliQNT.AsFloat)+' '+mSat_1;
                2 : Pesan := 'Qnt tidak boleh Melebihi '+FormatFloat(',0.##',Qnt2Sisa+QuBeliQNT2.AsFloat)+' '+mSat_2;
              end;
              MessageDlg(Pesan,mtWarning,[mbok],0);
              ActiveControl := Qnt;
            end  
          end;
        end;
      end else
      begin
        MsgDataTidakBolehKosong('Kode Barang dan Net Weight ');
        if  kodebrg.CanFocus then
            ActiveControl:=KodeBrg
        else
            ActiveControl := Qnt;
      end;
    end else
    begin
      MsgPeriodeSudahDikunci;
    end;
  end
  else
    MsgTanggalTidakSesuaiPeriode;
end;

procedure TFrSPP.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
  ClearPanelDetail;
end;

procedure TFrSPP.FormDestroy(Sender: TObject);
begin
  FrSPP:=nil;
end;

procedure TFrSPP.dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
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

procedure TFrSPP.NoUrutChange(Sender: TObject);
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

procedure TFrSPP.KodeBrgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrSPP.NoUrutEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrSPP.NoSCExit(Sender: TObject);
begin
  if mValid Then
  begin
    if Length(NoSC.Text)=0 then TampilIsiSC else
    begin
      if DataBersyarat('Select distinct A.NoBukti, B.Tanggal, B.Kodecust KodeCustSupp, C.NamaCust NamaCustSupp, C.Alamat, C.kodekota Kota, '''' NoPO, null TGLPO, null Ship_Mark, A.Nobukti NoSO, '''' NoLC '+
                    'from vwBrowsOutSO_SPP A '+
                    '      left outer join dbSO B on B.NoBukti=A.NoBukti '+
                    ' left outer join vwBrowsCustomer C on C.KodeCust=B.KODECUST '+
                    ' where A.Nobukti =:0 ' +
                    ' order by B.Tanggal, A.NoBukti',[NoSC.Text],DM.QUCari)=True then
      begin
        with DM.QuCari do
        begin
          NoSC.Text:=FieldByName('NoSO').AsString;
          KodeCust.Text:=FieldByName('KodeCustSupp').AsString;
          LNamaCustSupp.Caption:=FieldByName('NamaCustSupp').AsString;
          LAlamatCustSupp.Caption:=FieldByName('Alamat').AsString+chr(13)+FieldByName('Kota').AsString;
          NoPesan.Text :=FieldByName('NOPO').AsString;
          NoLC.Text := FieldByName('NoLC').AsString;
          NoShip.Text := FieldByName('NoBukti').AsString;
        end;
      end
      else TampilIsiSC;
    end;
  end;
end;

procedure TFrSPP.KodeBrgExit(Sender: TObject);
begin
  if mValid Then
  begin
    if Length(KodeBrg.Text)=0 then TampilIsiBarang else
    begin
      if DataBersyarat(' Select A.Urut, A.KODEBRG, B.NAMABRG, '+
                    ' A.Satuan, A.QntSisa,  A.Isi, A.Nosat, A.Namabrgkom,B.Sat1,B.Sat2 '+
                     ' from vwBrowsOutSO_SPP A left outer join dbBarang B on B.KodeBrg=A.KodeBrg '+
                     '      left Outer join dbSO D on d.Nobukti=A.nobukti '+
                     ' where A.NoBukti=:0 and A.kodebrg=:1 and isnull(A.IsCLosedet,0)=0 '+
                     ' order by A.KodeBrg ',
      [noSC.text,KodeBrg.Text], DM.QuCari)=True then
      begin
        with DM.QuCari do
        begin
          KodeBrg.Text:=FieldByName('KodeBrg').AsString;
          LNamaBrg.Caption:='[ '+FieldByName('NamaBrg').AsString+' ]';
          NamaBrg.Text := FieldByName('NamaBrgkom').AsString;
          mUrutSHip:=FieldByName('Urut').AsInteger;
          mSat_1:=FieldByName('Sat1').AsString;
          mSat_2:=FieldByName('Sat2').AsString;
          mIsiBrg:=FieldByName('Isi').AsFloat;
          LSatuan2.Caption:='[ '+mSat_2+' ]';
          LSatuan1.Caption:='[ '+mSat_1+' ]';
          Qnt1.Value:=FieldByName('QntSisa').AsFloat;
          QntSisa := Qnt1.Value;
          Qnt2Sisa := Qnt2.Value;
          Nosat.Items.Clear;
          Nosat.Items.Add('Pilih Satuan');
          Nosat.Items.Add(mSat_1);
          Nosat.Items.Add(mSat_2);
          Nosat.ItemIndex := FieldByName('nosat').AsInteger;
          if FieldByName('nosat').AsInteger=1 then
          begin
             Qnt.Value:=FieldByName('QntSisa').AsFloat;
             LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value/mIsiBrg)+' '+mSat_2+' ]';
             NetW.AsFloat := Qnt.Value;
          end
          else
          if FieldByName('nosat').AsInteger=2 then
          begin
             Qnt.Value:=FieldByName('QntSisa').AsFloat/mIsiBrg;
             LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value*mIsiBrg)+' '+mSat_1+' ]';
             NetW.AsFloat := Qnt.Value*mIsiBrg;
          end;
          //ShippingMark.Text := FieldByName('ShippingMark').AsString;
        end;
      end
      else TampilIsiBarang;
    end;
    {if KodeBrg.Text<>'' then
    begin
      DataBersyarat('select cast(Konversi as int) Konversi from dbBarangJadi where KodeBrg=:0',[KodeBrg.Text],DM.QuCari);
      TampilanQntSatuan(DM.QuCari.FieldByName('Konversi').AsInteger);
      if Qnt.CanFocus then
        Qnt.SetFocus;
      if Qnt2.CanFocus then
        Qnt2.SetFocus;
    end; }
  end;
end;

procedure TFrSPP.TambahBtnClick(Sender: TObject);
begin
  model:='write';
  TampilTombolDetail(True);
  ClearPanelDetail;
  KodeBrg.Enabled:=True;
  ActiveControl:=KodeBrg;
end;

procedure TFrSPP.KodeBrgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
    SpeedButton1.Click;
end;

procedure TFrSPP.Qnt2Change(Sender: TObject);
begin
  if mValid then
  begin
    Qnt1.Value:=Qnt2.Value*mIsiBrg;
  end;
end;

procedure TFrSPP.TanggalKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrSPP.TanggalChange(Sender: TObject);
begin
  if mValid then
  begin
    mUbahHd:=True;
  end;
end;

procedure TFrSPP.TanggalExit(Sender: TObject);
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

procedure TFrSPP.NosatEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrSPP.NosatChange(Sender: TObject);
var xSatuan : string;
    xHarga : Real;
begin
  if mValid then
  begin
    CariSatuan(KodeBrg.Text,'',NoSat.ItemIndex,xHarga,misibrg,Sat,xSatuan,xStatus);
    if Nosat.ItemIndex=1 then
    begin
      LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value/mIsiBrg)+' '+mSat_2+' ]';
      NetW.AsFloat := Qnt.Value;
    end
    else
    if Nosat.ItemIndex=2 then
    begin
      LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value*mIsiBrg)+' '+mSat_1+' ]';
      NetW.AsFloat := Qnt.Value*mIsiBrg;
    end;

    if not xStatus then
    begin
      ShowMessage('Silahkan pilih satuan');
      ActiveControl:=NoSat;
    end;
  end;

end;

procedure TFrSPP.CatatanEnter(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TFrSPP.CatatanExit(Sender: TObject);
begin
    if mValid then
  begin
    if (CekPeriode(IDUser,TANGGAL.Date)=False) then
        Abort;
      UpdatedbBeli;
  end;
  KeyPreview := True;
end;

procedure TFrSPP.NoUrutExit(Sender: TObject);
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

procedure TFrSPP.NamaBrgEnter(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TFrSPP.NamaBrgExit(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TFrSPP.CetakClick(Sender: TObject);
begin
  MainCetak(frxDBDataset1,frxDataPerusahaan,DM.QuCari,Dm.QuCari2,'Cetakspp','Vwperusahaan',NoBukti.Text,'Nota\Spp.fr3',frxReport1);
end;

procedure TFrSPP.SpeedButton8Click(Sender: TObject);
begin
  frxDBDataset1.DataSet.Close;
  frxDBDataset1.DataSet := QuUpdatedbbeli;
  with QuUpdatedbbeli do
  begin
    close;
    sql.Clear;
    sql.Add('Exec Cetakspp '+QuotedStr(Nobukti.Text));
    Prepared;
    open;
  end;
  frxDBDataset1.DataSet.Open;
  with frxReport1 do
  begin
    LoadFromFile(ExtractFilePath(Application.ExeName)+'Nota\SPP.fr3');
    DesignReport;
  end;
end;

procedure TFrSPP.NoAlamatKirimEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrSPP.TampilIsiAlamatKirim;
begin
  KodeBrows:=11542;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.NoKira:=KodeCust.Text;
  try
    FrBrows.IsiData:='0';
  except
    FrBrows.IsiData:='0';
  end;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    with FrBrows.QuBrows do
    begin
       NoAlamatKirim.Text:=fieldbyname('Nomor').AsString;
       LAlamatKirim.Caption:=fieldbyname('Nama').AsString+Chr(13)+
                             fieldbyname('AlamatKirim').AsString;
    end;
  end
  else
    ActiveControl:=NoAlamatKirim;
end;

procedure TFrSPP.NoAlamatKirimExit(Sender: TObject);
var xNoAlamatKirim: Integer;
begin
  if mValid Then
  begin
    if NoAlamatKirim.Text<>'-' then
    begin
      try
        if NoAlamatKirim.Text='' then
          xNoAlamatKirim:=0
        else xNoAlamatKirim:=StrToInt(NoAlamatKirim.Text);
      except
        xNoAlamatKirim:=0;
      end;
      if length(NoAlamatKirim.Text)=0 then TampilIsiAlamatKirim else
      begin
        if DataBersyarat('Select Nomor, Nama,Alamat, Telp, Fax ' +
          'from vwAlamatcust a '+
          'where KodeCustSupp=:0 and Nomor=:1 Order by Nomor',[QuBeliKodeCustSupp.AsString,xNoAlamatKirim],Dm.Qucari)=true then
        begin
          with DM.QuCari do
          begin
             NoAlamatKirim.Text:=fieldbyname('Nomor').AsString;
             LAlamatKirim.Caption:=FieldByName('Nama').AsString+chr(13)+
                                   Fieldbyname('Alamat').AsString;
          end;
        end
        else TampilIsiAlamatKirim;
      end;
    end
    else
    xNoAlamatKirim := 0;
  end;

end;

procedure TFrSPP.KodeGdgEnter(Sender: TObject);
begin
  mValid := True;
end;
procedure TFrSPP.TampilIsiGudang;
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

procedure TFrSPP.KodeGdgExit(Sender: TObject);
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

procedure TFrSPP.frxReport1AfterPrintReport(Sender: TObject);
begin
 NilaiCetak('CetakKe','DbSPP',Nobukti.text);
end;

procedure TFrSPP.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
if CompareText(varName,'iduser')=0 then
        value:=IDUser;
end;

end.
