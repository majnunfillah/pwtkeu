unit FrmBuatBeliBAhan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, ToolEdit, MyGlobal, DateUtils,
  StrUtils, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, DB,
  ADODB, Math;

type
  TFrBuatBeliBAhan = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Shape4: TShape;
    Panel3: TPanel;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    Tanggal: TDateEdit;
    NoBukti: TEdit;
    NoUrut: TEdit;
    NOPO: TEdit;
    KodeGdg: TEdit;
    Panel2: TPanel;
    dxDBGrid1: TdxDBGrid;
    QuView: TADOQuery;
    DsView: TDataSource;
    QuViewIDUser: TStringField;
    QuViewIsTerima: TBooleanField;
    QuViewNOBUKTI: TStringField;
    QuViewTanggal: TDateTimeField;
    QuViewKeyNoBukti: TStringField;
    QuViewURUT: TIntegerField;
    QuViewFlagTipe: TStringField;
    QuViewKODEBRG: TStringField;
    QuViewNAMABRG: TStringField;
    QuViewPPN: TWordField;
    QuViewDISC: TFloatField;
    QuViewKurs: TBCDField;
    QuViewQNT: TBCDField;
    QuViewNOSAT: TWordField;
    QuViewSATUAN: TStringField;
    QuViewISI: TBCDField;
    QuViewHARGA: TBCDField;
    QuViewDISCP: TBCDField;
    QuViewDISCTOT: TBCDField;
    QuViewBYANGKUT: TBCDField;
    QuViewKetDetail: TStringField;
    QuViewQntSisa: TBCDField;
    QuViewQntTerima: TBCDField;
    dxDBGrid1IDUser: TdxDBGridMaskColumn;
    dxDBGrid1IsTerima: TdxDBGridCheckColumn;
    dxDBGrid1NOBUKTI: TdxDBGridMaskColumn;
    dxDBGrid1Tanggal: TdxDBGridDateColumn;
    dxDBGrid1KeyNoBukti: TdxDBGridMaskColumn;
    dxDBGrid1URUT: TdxDBGridMaskColumn;
    dxDBGrid1FlagTipe: TdxDBGridMaskColumn;
    dxDBGrid1KODEBRG: TdxDBGridMaskColumn;
    dxDBGrid1NAMABRG: TdxDBGridMaskColumn;
    dxDBGrid1PPN: TdxDBGridMaskColumn;
    dxDBGrid1DISC: TdxDBGridMaskColumn;
    dxDBGrid1Kurs: TdxDBGridMaskColumn;
    dxDBGrid1QNT: TdxDBGridMaskColumn;
    dxDBGrid1NOSAT: TdxDBGridMaskColumn;
    dxDBGrid1SATUAN: TdxDBGridMaskColumn;
    dxDBGrid1ISI: TdxDBGridMaskColumn;
    dxDBGrid1HARGA: TdxDBGridMaskColumn;
    dxDBGrid1DISCP: TdxDBGridMaskColumn;
    dxDBGrid1DISCTOT: TdxDBGridMaskColumn;
    dxDBGrid1BYANGKUT: TdxDBGridMaskColumn;
    dxDBGrid1KetDetail: TdxDBGridMaskColumn;
    dxDBGrid1QntSisa: TdxDBGridMaskColumn;
    QuViewKodeWarna: TStringField;
    QuViewCollyTerima: TBCDField;
    dxDBGrid1KodeWarna: TdxDBGridMaskColumn;
    dxDBGrid1CollyTerima: TdxDBGridMaskColumn;
    Label1: TLabel;
    FakturSupp: TEdit;
    Label7: TLabel;
    Keterangan: TEdit;
    dxDBGrid1QntTerima: TdxDBGridMaskColumn;
    QuBeli: TADOQuery;
    QuViewDiscP2: TBCDField;
    QuViewDiscP3: TBCDField;
    QuViewDiscP4: TBCDField;
    QuViewDiscP5: TBCDField;
    QuViewKodeCustSupp: TStringField;
    Edit1: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Keterangan1: TEdit;
    procedure FormShow(Sender: TObject);
    procedure NoUrutChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NoUrutEnter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure KodeGdgExit(Sender: TObject);
    procedure NoUrutExit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure KodeGdgEnter(Sender: TObject);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBGrid1QntTerimaValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
  private
    { Private declarations }
    mFlagMenu, JenisSuppItemIndex,IsPPN: Integer;
    YY, MM, DD: Word;
    TipeTrans, Nomor,XcustSupp,XBM: String;
    mValid: Boolean;
    XQntT:array [1..100] of Double;
    procedure IsiNoBuktiBaru;
    procedure TampilIsiGudang;
    procedure TampilData(No_Bukti:String);
  public
    { Public declarations }
  end;

var
  FrBuatBeliBAhan: TFrBuatBeliBAhan;

implementation

uses FrmBrows, MyProcedure, MyModul, FrmMainBeliBahan, FrmSetForm, FrmBeliBahan;

{$R *.dfm}

procedure TFrBuatBeliBAhan.TampilData(No_Bukti:String);
begin
   Qubeli.Close;
   Qubeli.SQl.Clear;
   Qubeli.SQL.Add('declare @NoBukti varchar(30)');
   Qubeli.SQL.Add('select  @NoBukti='+QuotedStr(No_Bukti));
   Qubeli.SQL.Add('Select 	A.NoBukti, A.NoUrut, A.Tanggal, A.TglJatuhTempo, A.KodeSupp, C.NamaCustSupp, C.Alamat1, C.Alamat2, C.Kota,');
   Qubeli.SQL.Add('          C.Alamat1+Char(13)+C.Alamat2+Char(13)+C.kota Alamat,');
   Qubeli.SQL.Add('          B.KodeGdg, F.Nama, A.Handling, A.Keterangan, A.FakturSupp,');
   Qubeli.SQL.Add('   	A.KodeVls, D.NamaVls, A.Kurs, A.PPN, A.TipeBayar, A.Hari, A.TipeDisc, A.Disc, A.DiscRp,');
   Qubeli.SQL.Add('   	B.Urut, B.KodeBrg, E.NamaBrg, B.Satuan, B.Qnt, B.NoSat, B.Isi, B.Harga, b.HrgNetto, B.DiscP, B.DiscTot,');
   Qubeli.SQL.Add('  	B.BYAngkut Beban,');
   Qubeli.SQL.Add('  	b.NoPO,b.UrutPO,');
   Qubeli.SQL.Add('          H.TotDiskon, H.TotDPP, H.TotPPN, H.TotNet,');
   Qubeli.SQL.Add('          Case when A.Kodevls=''IDR'' then B.SubTotalRp  else B.SubTotal end Total,');
   Qubeli.SQL.Add('          Case when A.Kodevls=''IDR'' then I.TotDiskonRp  else I.TotDiskon end Diskon,');
   Qubeli.SQL.Add('          Case when A.Kodevls=''IDR'' then I.TotDPPRp  else I.TotDPP end TotalDPP,');
   Qubeli.SQL.Add('          Case when A.Kodevls=''IDR'' then I.TotPPnRp  else I.TotPPn end TotalPPn,');
   Qubeli.SQL.Add('          Case when A.Kodevls=''IDR'' then I.TotNetRp  else I.TotNet end TotalNetto');
   Qubeli.SQL.Add('From dbBeli A');
   Qubeli.SQL.Add('Left Outer join dbBeliDet B on B.NoBukti=a.NoBukti');
   Qubeli.SQL.Add('Left Outer Join dbCustSupp C on c.KodeCustSupp=a.KodeSupp');
   Qubeli.SQL.Add('Left Outer join dbValas D on D.KodeVls=A.KodeVls');
   Qubeli.SQL.Add('Left Outer join dbBarang E on E.KodeBrg=B.KodeBrg');
   Qubeli.SQL.Add('Left Outer Join dbGudang F on F.KodeGdg=B.KodeGdg');
   Qubeli.SQL.Add('Left Outer Join vwMasterBeli H on H.NoBukti=A.NoBukti');
   Qubeli.SQL.Add('Left Outer Join vwRpDetBeli I on I.NoBukti=A.NoBukti');
   Qubeli.SQL.Add('where	A.NoBukti=@NoBukti');
   Qubeli.Open;
end;

procedure TFrBuatBeliBAhan.IsiNoBuktiBaru;
begin
  //gFlagMenu:=mFlagMenu;
  //gJenisSupp:=IntToStr(JenisSuppItemIndex);
  //Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal.Date);
  if IsPPN=0 then
  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal.Date,Xcustsupp,False)
  else if IsPPN=1 then
  Check_NomorBeli(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,Tanggal.Date,'BB');
  NoUrut.Text:=NomorBukti;
  NOBUKTI.Text:=Nomor;
  XBM:=Nomor;
end;

procedure TFrBuatBeliBAhan.TampilIsiGudang;
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

procedure TFrBuatBeliBAhan.FormShow(Sender: TObject);
var i:Integer;
begin
  //JenisSuppItemIndex:=FrMainBeli.QuMasterOutJenisSupp.AsInteger;
  NOPO.Text:=FrMainBeliBahan.QumasterPONoBukti.AsString;
  KodeGdg.Text:=FrMainBeliBahan.QuMasterpoKodeGdg.AsString;
  Caption:='Transaksi '+FrMainBeliBahan.Caption;
  //mFlagMenu:=FrMainBeli.mMainBeli_FlagMenu;
  //case mFlagMenu of
    //0 :

    //1 : TipeTrans:='PMB';
  //end;
  Hapus_Daftar_Nomor_User(TipeTrans,IDUser);
  DecodeDate(Date,YY,MM,DD);
  If DayOfTheMonth(Date)<=DD then
     DD:=DayOfTheMonth(Date);
  try
    TANGGAL.Date := EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),DD);
  except
    Tanggal.Date:=EndOfAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln));
  end;


  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('exec sp_RefreshTempOutstandingPO '+QuotedStr(IDUser)+','+QuotedStr(NOPO.Text)+', '+IntToStr(StrToInt(PeriodThn))+', '+IntToStr(StrToInt(PeriodBln))+', '+IntToStr(mFlagMenu));
    ExecSQL;
  end;
  QuView.Close;
  QuView.SQL.Clear;
  QuView.SQL.Add('select * from TempOutstandingPO ');
  QuView.SQL.Add('where NoBukti='+QuotedStr(NOPO.Text));
  QuView.SQL.Add('and IDUser='+QuotedStr(IDUser));
  QuView.SQL.Add('order by Tanggal, NoBukti, Urut ');
  //QuView.SQL
  QuView.Open;
  //IsPPN:=  QuView.fieldbyname('Flagtipe').AsINteger;
  IsPPN:=  strtoint(QuView.fieldbyname('Flagtipe').AsString);

  XCUstSupp:= QuView.fieldbyname('KodeCustSupp').AsString;
  IsiNoBuktiBaru;
  while Not QuView.Eof do
  Begin
   XQntT[QuView.RecNo]:=QuViewQntTerima.AsFloat;
   QuView.Next;
  end;

end;

procedure TFrBuatBeliBAhan.NoUrutChange(Sender: TObject);
begin
  if mValid then
  begin
    if Length(NoUrut.Text)=4 then
    begin
      gFlagMenu:=mFlagMenu;
      Konfig(TipeTrans,Nourut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date);
      NOBUKTI.Text:=MyNoBukti;
    end
    else
      ActiveControl:=NoUrut;
  end;
end;

procedure TFrBuatBeliBAhan.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then SendMessage(Handle,WM_NEXTDLGCTL,0,0)
  else if Key=VK_Escape then
    Close;
end;

procedure TFrBuatBeliBAhan.NoUrutEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrBuatBeliBAhan.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrBuatBeliBAhan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrBuatBeliBAhan.KodeGdgExit(Sender: TObject);
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

procedure TFrBuatBeliBAhan.NoUrutExit(Sender: TObject);
begin
    NoUrut.Text:=RightStr('00000'+NoUrut.Text,5);
      gFlagMenu:=mFlagMenu;
    if IsPPN=0 then
       Konfig(TipeTrans,Nourut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date,False)
     //  Konfig(TIPE,NOMOR,F1,F2,F3,F4,S1,N1,N2,N3,N4,xDate,xIsPpn);
     //  Konfig(TIPE,NOMOR,F1,F2,F3,F4,S1,N1,N2,N3,N4,xDate);
    else if IsPPN=1 then
      Konfig(TipeTrans,Nourut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date);
      //NOBUKTI.Text:=MyNoBukti;
    If Length(NoUrut.Text)<4 then
    begin
      MessageDlg('Nomor urut kurang '+InttoStr(4-Length(NoUrut.Text))+' digit.',mtWarning,[MbOk],0);
      ActiveControl := NoUrut;
    end
    else
    begin
      Qubeli.Close;
      Qubeli.SQl.Clear;
      Qubeli.SQL.Add('declare @NoBukti varchar(30)');
      Qubeli.SQL.Add('select  @NoBukti='+QuotedStr(NoBukti.Text));
      Qubeli.SQL.Add('Select 	A.NoBukti, A.NoUrut, A.Tanggal, A.TglJatuhTempo, A.KodeSupp, C.NamaCustSupp, C.Alamat1, C.Alamat2, C.Kota,');
      Qubeli.SQL.Add('          C.Alamat1+Char(13)+C.Alamat2+Char(13)+C.kota Alamat,');
      Qubeli.SQL.Add('          B.KodeGdg, F.Nama, A.Handling, A.Keterangan, A.FakturSupp,');
      Qubeli.SQL.Add('   	A.KodeVls, D.NamaVls, A.Kurs, A.PPN, A.TipeBayar, A.Hari, A.TipeDisc, A.Disc, A.DiscRp,');
      Qubeli.SQL.Add('   	B.Urut, B.KodeBrg, E.NamaBrg, B.Satuan, B.Qnt, B.NoSat, B.Isi, B.Harga, b.HrgNetto, B.DiscP, B.DiscTot,');
      Qubeli.SQL.Add('  	B.BYAngkut Beban,');
      Qubeli.SQL.Add('  	b.NoPO,b.UrutPO,');
      Qubeli.SQL.Add('          H.TotDiskon, H.TotDPP, H.TotPPN, H.TotNet,');
      Qubeli.SQL.Add('          Case when A.Kodevls=''IDR'' then B.SubTotalRp  else B.SubTotal end Total,');
      Qubeli.SQL.Add('          Case when A.Kodevls=''IDR'' then I.TotDiskonRp  else I.TotDiskon end Diskon,');
      Qubeli.SQL.Add('          Case when A.Kodevls=''IDR'' then I.TotDPPRp  else I.TotDPP end TotalDPP,');
      Qubeli.SQL.Add('          Case when A.Kodevls=''IDR'' then I.TotPPnRp  else I.TotPPn end TotalPPn,');
      Qubeli.SQL.Add('          Case when A.Kodevls=''IDR'' then I.TotNetRp  else I.TotNet end TotalNetto');
      Qubeli.SQL.Add('From dbBeli A');
      Qubeli.SQL.Add('Left Outer join dbBeliDet B on B.NoBukti=a.NoBukti');
      Qubeli.SQL.Add('Left Outer Join dbCustSupp C on c.KodeCustSupp=a.KodeSupp');
      Qubeli.SQL.Add('Left Outer join dbValas D on D.KodeVls=A.KodeVls');
      Qubeli.SQL.Add('Left Outer join dbBarang E on E.KodeBrg=B.KodeBrg');
      Qubeli.SQL.Add('Left Outer Join dbGudang F on F.KodeGdg=B.KodeGdg');
      Qubeli.SQL.Add('Left Outer Join vwMasterBeli H on H.NoBukti=A.NoBukti');
      Qubeli.SQL.Add('Left Outer Join vwRpDetBeli I on I.NoBukti=A.NoBukti');
      Qubeli.SQL.Add('where	A.NoBukti=@NoBukti');
      Qubeli.Open;
      //TampilData(NoBukti.Text);
      if (QuBeli.RecordCount>0) then
      Begin
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

procedure TFrBuatBeliBAhan.BitBtn3Click(Sender: TObject);
var xDapatSimpan: Boolean;
begin
  if KodeGdg.Text='' then
  begin
    ActiveControl:=KodeGdg;
    MsgDataTidakBolehKosong('Gudang');
  end else
  begin
    QuView.First;
    begin
      with DM.QuCari do
      begin
        Close;
        SQL.Clear;
        SQL.Add('exec sp_InsertOutstandingPO '+QuotedStr(NoBukti.Text)+', '+QuotedStr(NoUrut.Text)+', '+
          QuotedStr(FormatDateTime('MM/dd/yyyy',Tanggal.Date))+', '+QuotedStr(KodeGdg.Text)+', '+QuotedStr(NOPO.Text)+','+
          QuotedStr(FakturSupp.Text)+','+QuotedStr(Keterangan.Text)+','+QuotedStr(Keterangan1.Text));
        ExecSQL;
      end;
      ModalResult:=mrOK;
    end ;

    FrMainBeliBahan.ToolButton10.Click;
    FrmainBeliBahan.QuMaster.Locate('Nobukti',FrBuatBeliBahan.XBM,[LOP,LOC]);
    frMainBeliBahan.ModalKoreksi:=True;
    Application.CreateForm(TFrBeliBahan,FrBeliBahan);
    CekOtoritasMenu(IDUser,tag,FrBeliBahan.Istambah,FrBeliBahan.Ishapus,
      FrBeliBahan.Iskoreksi, FrBeliBahan.isCetak, FrBeliBahan.isExcel);
    FrBeliBahan.Show;
    
  end;
end;

procedure TFrBuatBeliBAhan.KodeGdgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrBuatBeliBAhan.dxDBGrid1Enter(Sender: TObject);
begin
  FrBuatBeliBahan.KeyPreview:=False;
  dxDBGrid1.FocusedField:=dxDBGrid1IsTerima.Field;
end;

procedure TFrBuatBeliBAhan.dxDBGrid1CustomDrawCell(Sender: TObject;
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
         AColor:=FrSetForm.WarnaRowGridSub2
      else
         AColor:=FrSetForm.WarnaRowGridSub1;
    end;
end;

procedure TFrBuatBeliBAhan.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_DOWN) and ((QuView.RecNo=QuView.RecordCount) or (QuView.Eof)) then
    ActiveControl:=BitBtn3;
end;

procedure TFrBuatBeliBAhan.dxDBGrid1Exit(Sender: TObject);
begin
  FrBuatBeliBahan.KeyPreview:=True;
end;

procedure TFrBuatBeliBAhan.FormCreate(Sender: TObject);
begin
  TipeTrans:='PBL';
  FrBuatBeliBahan.Color:=FrSetForm.PanelTransaksi.Color;
  dxDBGrid1.HeaderColor:=FrSetForm.WarnaHeaderGrid;
  dxDBGrid1.HeaderFont:=FrSetForm.cxStyle1.Font;
  dxDBGrid1.Color:=FrSetForm.cxStyle2.Color;
end;

procedure TFrBuatBeliBAhan.dxDBGrid1QntTerimaValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
if StrToFloat(dxDBGrid1.EditingText)>XQntT[QuView.RecNo] Then
Begin
 Accept:=False;
 ErrorText:='Qnt Melebihi PO';
end;
end;

end.
