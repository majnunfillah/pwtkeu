unit FrmMainSO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  ImgList, StdCtrls, ExtCtrls, Menus,
  dxGridMenus, dxDBTLCl, dxGrClms, Mask, DBCtrls, Grids,
  ShellApi, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxEdit, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, dxPageControl, ToolEdit,cxExportGrid4Link,
  frxClass, frxDBSet, frxDesgn;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrMainSO = class(TForm)
    QuMaster: TADOQuery;
    QuDetail: TADOQuery;
    QuDetailKodeBrg: TStringField;
    QuDetailNamaBrg: TStringField;
    QuDetailSatuan: TStringField;
    QuDetailQnt: TBCDField;
    QuDetailHarga: TBCDField;
    QuDetailTotalUSD: TBCDField;
    QuDetailTotalIDR: TBCDField;
    QuDetailBeban: TBCDField;
    QuDetailTotal: TBCDField;
    QuDetailGroupNoBukti: TStringField;
    QuDetailNoBukti: TStringField;
    QuDetailUrut: TIntegerField;
    DsDetail: TDataSource;
    DsMaster: TDataSource;
    QuDetail1: TADOQuery;
    DsDetail1: TDataSource;
    QuNavigator: TADOQuery;
    StringField1: TStringField;
    QuView: TADOQuery;
    QuViewnobukti: TStringField;
    QuViewTanggal: TDateTimeField;
    QuViewkodesupp: TStringField;
    QuViewFakturSupp: TStringField;
    QuViewKeterangan: TMemoField;
    QuViewKodeVls: TStringField;
    QuViewKurs: TBCDField;
    QuViewPPn: TWordField;
    QuViewTipeBayar: TWordField;
    QuViewHari: TIntegerField;
    QuViewDisc: TBCDField;
    QuViewIsCetak: TBooleanField;
    QuViewUrut: TSmallintField;
    QuViewKodebrg: TStringField;
    QuViewNosat: TWordField;
    QuViewIsi: TBCDField;
    QuViewQnt: TBCDField;
    QuViewHarga: TBCDField;
    QuViewDiscP1: TBCDField;
    QuViewDiscP2: TBCDField;
    QuViewdiscP3: TBCDField;
    QuViewDiscP4: TBCDField;
    QuViewDiscRP1: TBCDField;
    QuViewDiscRP2: TBCDField;
    QuViewdiscRP3: TBCDField;
    QuViewDiscRP4: TBCDField;
    QuViewDiscTOT: TBCDField;
    QuViewHrgNetto: TBCDField;
    QuViewNDiskon: TBCDField;
    QuViewSubtotal: TBCDField;
    QuViewNdpp: TBCDField;
    QuViewNPpn: TBCDField;
    QuViewNNet: TBCDField;
    QuViewNoPO: TStringField;
    QuViewUrutPO: TIntegerField;
    QuViewNamaSupp: TStringField;
    QuViewAlamat: TStringField;
    QuViewNamaVls: TStringField;
    QuViewNamabrg: TStringField;
    QuViewSatuan: TStringField;
    QuViewTglJatuhTempo: TDateTimeField;
    QuViewkodegdg: TStringField;
    QuViewKodelokasi: TStringField;
    QuViewNamaGdg: TStringField;
    QuViewNamaLokasi: TStringField;
    QuViewIsBatal: TBooleanField;
    QuViewDSDesigner: TStringField;
    QuViewGroupNoBukti: TStringField;
    DsView: TDataSource;
    PopupMenu2: TPopupMenu;
    TampilValid: TMenuItem;
    TampilBatal: TMenuItem;
    PopupMenu1: TPopupMenu;
    ExportExcel1: TMenuItem;
    N1: TMenuItem;
    ShowGrid1: TMenuItem;
    ShowHeader1: TMenuItem;
    Show1: TMenuItem;
    N2: TMenuItem;
    AutoFilter1: TMenuItem;
    MultiSelect1: TMenuItem;
    SaveDialog: TSaveDialog;
    Sp_Batal: TADOStoredProc;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton10: TToolButton;
    ToolButton7: TToolButton;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton11: TToolButton;
    QuDetail1NoBukti: TStringField;
    QuDetail1NoSPB: TStringField;
    QuDetail1UrutSPB: TIntegerField;
    QuDetail1Urut: TIntegerField;
    QuDetail1KodeBrg: TStringField;
    QuDetail1NamaBrg: TStringField;
    QuDetail1Qnt: TBCDField;
    QuDetail1NoSat: TWordField;
    QuDetail1Isi: TBCDField;
    QuDetail1Satuan: TStringField;
    QuDetail1Qnt2: TBCDField;
    QuDetail1SatuanRoll: TStringField;
    QuDetail1Harga: TBCDField;
    QuDetail1DiscP1: TBCDField;
    QuDetail1DiscRp1: TBCDField;
    QuDetail1DiscTot: TBCDField;
    QuDetail1TotalUSD: TBCDField;
    QuDetail1TotalIDR: TBCDField;
    QuDetail1NDPP: TFloatField;
    QuDetail1NPPN: TFloatField;
    QuDetail1Beban: TBCDField;
    QuDetail1Total: TBCDField;
    QuDetail1NoBuktiUrut: TStringField;
    QuKotaSO: TADOQuery;
    QuKotaSOKodeKota: TStringField;
    QuKotaSONamaKota: TStringField;
    QuKotaSOJumlahSO: TIntegerField;
    DsKotaSO: TDataSource;
    QuCustSO: TADOQuery;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    DateTimeField1: TDateTimeField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    DsCustSO: TDataSource;
    QuMasterSO: TADOQuery;
    QuMasterSOKodeKota: TStringField;
    QuMasterSONamaKota: TStringField;
    QuMasterSONoBukti: TStringField;
    QuMasterSOTanggal: TDateTimeField;
    QuMasterSOKodeCust: TStringField;
    QuMasterSONamaCust: TStringField;
    QuMasterSOAlamatKirim: TStringField;
    QuMasterSOCatatan: TStringField;
    QuMasterSOKodeGdg: TStringField;
    QuMasterSOIsppn: TBooleanField;
    DsMasterSO: TDataSource;
    QuDetail1SO: TADOQuery;
    QuDetail1SONoBukti: TStringField;
    QuDetail1SOUrut: TIntegerField;
    QuDetail1SOKeyUrut: TStringField;
    QuDetail1SOKODEBRG: TStringField;
    QuDetail1SONamaBrg: TStringField;
    QuDetail1SOQNT: TBCDField;
    QuDetail1SOQNT2: TBCDField;
    QuDetail1SONOSAT: TWordField;
    QuDetail1SOSatuan: TStringField;
    QuDetail1SOISI: TBCDField;
    QuDetail1SOQntSJ: TBCDField;
    QuDetail1SOQnt2SJ: TBCDField;
    QuDetail1SOSatuanRoll: TStringField;
    QuDetail1SOQntSisa: TBCDField;
    QuDetail1SOQnt2Sisa: TBCDField;
    DsDetail1SO: TDataSource;
    dxPageControl1: TdxPageControl;
    dxTSDafSJ: TdxTabSheet;
    dxTSDafSO: TdxTabSheet;
    cxGrid3: TcxGrid;
    tvMasterSO: TcxGridDBTableView;
    tvMasterSOKodeKota: TcxGridDBColumn;
    tvMasterSONamaKota: TcxGridDBColumn;
    tvMasterSONoBukti: TcxGridDBColumn;
    tvMasterSOTanggal: TcxGridDBColumn;
    tvMasterSOKodeGdg: TcxGridDBColumn;
    tvMasterSOKodeCust: TcxGridDBColumn;
    tvMasterSONamaCust: TcxGridDBColumn;
    tvMasterSOAlamatKirim: TcxGridDBColumn;
    tvMasterSOCatatan: TcxGridDBColumn;
    tvDetailSO: TcxGridDBTableView;
    tvDetailSONoBukti: TcxGridDBColumn;
    tvDetailSOUrut: TcxGridDBColumn;
    tvDetailSOKeyUrut: TcxGridDBColumn;
    tvDetailSOKODEBRG: TcxGridDBColumn;
    tvDetailSONamaBrg: TcxGridDBColumn;
    tvDetailSOQNT2: TcxGridDBColumn;
    tvDetailSOSatuanRoll: TcxGridDBColumn;
    tvDetailSOQNT: TcxGridDBColumn;
    tvDetailSOSatuan: TcxGridDBColumn;
    tvDetailSONOSAT: TcxGridDBColumn;
    tvDetailSOISI: TcxGridDBColumn;
    tvDetailSOQnt2SJ: TcxGridDBColumn;
    tvDetailSOQntSJ: TcxGridDBColumn;
    tvDetailSOQnt2Sisa: TcxGridDBColumn;
    tvDetailSOQntSisa: TcxGridDBColumn;
    tvKotaSO: TcxGridDBTableView;
    tvKotaSOKodeKota: TcxGridDBColumn;
    tvKotaSONamaKota: TcxGridDBColumn;
    tvKotaSOJumlahSO: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxGridLevel4: TcxGridLevel;
    cxGridLevel5: TcxGridLevel;
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBTableView;
    tvMasterNoBukti: TcxGridDBColumn;
    tvMasterTanggal: TcxGridDBColumn;
    tvMasterKodeCust: TcxGridDBColumn;
    tvMasterNamaCust: TcxGridDBColumn;
    tvMasterAlamatKirim: TcxGridDBColumn;
    tvMasterNamaKota: TcxGridDBColumn;
    tvMasterHandling: TcxGridDBColumn;
    tvMasterTotSubTotal: TcxGridDBColumn;
    tvMasterTotDiskon: TcxGridDBColumn;
    tvMasterTotTotal: TcxGridDBColumn;
    tvMasterTotDPP: TcxGridDBColumn;
    tvMasterTotPPN: TcxGridDBColumn;
    tvMasterTotNet: TcxGridDBColumn;
    tvMasterTotSubTotalRp: TcxGridDBColumn;
    tvMasterTotDiskonRp: TcxGridDBColumn;
    tvMasterTotTotalRp: TcxGridDBColumn;
    tvMasterTotDPPRp: TcxGridDBColumn;
    tvMasterTotPPNRp: TcxGridDBColumn;
    tvMasterTotNetRp: TcxGridDBColumn;
    tvMasterNoUrut: TcxGridDBColumn;
    tvMasterNoAlamatKirim: TcxGridDBColumn;
    tvDetail: TcxGridDBTableView;
    tvDetailNoBukti: TcxGridDBColumn;
    tvDetailNoSPB: TcxGridDBColumn;
    tvDetailUrutSPB: TcxGridDBColumn;
    tvDetailUrut: TcxGridDBColumn;
    tvDetailKodeBrg: TcxGridDBColumn;
    tvDetailNamaBrg: TcxGridDBColumn;
    tvDetailQnt2: TcxGridDBColumn;
    tvDetailSatuanRoll: TcxGridDBColumn;
    tvDetailQnt: TcxGridDBColumn;
    tvDetailNoSat: TcxGridDBColumn;
    tvDetailIsi: TcxGridDBColumn;
    tvDetailSatuan: TcxGridDBColumn;
    tvDetailHarga: TcxGridDBColumn;
    tvDetailDiscP1: TcxGridDBColumn;
    tvDetailDiscRp1: TcxGridDBColumn;
    tvDetailDiscTot: TcxGridDBColumn;
    tvDetailTotalUSD: TcxGridDBColumn;
    tvDetailTotalIDR: TcxGridDBColumn;
    tvDetailNDPP: TcxGridDBColumn;
    tvDetailNPPN: TcxGridDBColumn;
    tvDetailBeban: TcxGridDBColumn;
    tvDetailTotal: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    QuDetExport: TADOQuery;
    dsDetExport: TDataSource;
    QuDetExportKodebrg: TStringField;
    QuDetExportQnt: TBCDField;
    QuDetExportSatuan: TStringField;
    QuMasExport: TADOQuery;
    DSMasExport: TDataSource;
    QuMasExportNoSo: TStringField;
    QuMasExportTglSO: TDateTimeField;
    QuMasExportTglRencanaKirim: TIntegerField;
    QuMasExportKodecust: TStringField;
    QuMasExportkodeShipto: TStringField;
    QuMasExportKeterangan: TStringField;
    tvMasterUserid: TcxGridDBColumn;
    tvMasterTglInput: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2NoSo: TcxGridDBColumn;
    cxGridDBTableView2TglSO: TcxGridDBColumn;
    cxGridDBTableView2TglRencanaKirim: TcxGridDBColumn;
    cxGridDBTableView2Kodecust: TcxGridDBColumn;
    cxGridDBTableView2kodeShipto: TcxGridDBColumn;
    cxGridDBTableView2Keterangan: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Kodebrg: TcxGridDBColumn;
    cxGridDBTableView1Qnt: TcxGridDBColumn;
    cxGridDBTableView1Satuan: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    ToolButton4: TToolButton;
    tvMasterUserid1: TcxGridDBColumn;
    tvMasterTglInput1: TcxGridDBColumn;
    tvMasterIsOtorisasi1: TcxGridDBColumn;
    tvMasterOtoUser1: TcxGridDBColumn;
    tvMasterTglOto1: TcxGridDBColumn;
    tvMasterIsOtorisasi2: TcxGridDBColumn;
    tvMasterOtoUser2: TcxGridDBColumn;
    tvMasterTglOto2: TcxGridDBColumn;
    tvMasterIsOtorisasi3: TcxGridDBColumn;
    tvMasterOtoUser3: TcxGridDBColumn;
    tvMasterTglOto3: TcxGridDBColumn;
    tvMasterIsOtorisasi4: TcxGridDBColumn;
    tvMasterOtoUser4: TcxGridDBColumn;
    tvMasterTglOto4: TcxGridDBColumn;
    tvMasterIsOtorisasi5: TcxGridDBColumn;
    tvMasterOtoUser5: TcxGridDBColumn;
    tvMasterTglOto5: TcxGridDBColumn;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    frxReport1: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxDataPerusahaan: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    tvMasterDBColumn1: TcxGridDBColumn;
    tvMasterDBColumn2: TcxGridDBColumn;
    tvMasterDBColumn3: TcxGridDBColumn;
    ToolButton14: TToolButton;
    tvMasterDBColumn4: TcxGridDBColumn;
    QuMasterNoBukti: TStringField;
    QuMasterNoUrut: TStringField;
    QuMasterTanggal: TDateTimeField;
    QuMasterKodeCust: TStringField;
    QuMasterNamaCust: TStringField;
    QuMasterHandling: TBCDField;
    QuMasterNoAlamatKirim: TIntegerField;
    QuMasterAlamatKirim: TStringField;
    QuMasterNamaKota: TStringField;
    QuMasterTotSubTotal: TBCDField;
    QuMasterTotDiskon: TFloatField;
    QuMasterTotTotal: TFloatField;
    QuMasterTotDPP: TFloatField;
    QuMasterTotPPN: TFloatField;
    QuMasterTotNet: TFloatField;
    QuMasterTotSubTotalRp: TBCDField;
    QuMasterTotDiskonRp: TFloatField;
    QuMasterTotTotalRp: TFloatField;
    QuMasterTotDPPRp: TFloatField;
    QuMasterTotPPNRp: TFloatField;
    QuMasterTotNetRp: TFloatField;
    QuMasterUserid: TStringField;
    QuMasterTglInput: TDateTimeField;
    QuMasterIsOtorisasi1: TBooleanField;
    QuMasterOtoUser1: TStringField;
    QuMasterTglOto1: TDateTimeField;
    QuMasterIsOtorisasi2: TBooleanField;
    QuMasterOtoUser2: TStringField;
    QuMasterTglOto2: TDateTimeField;
    QuMasterIsOtorisasi3: TBooleanField;
    QuMasterOtoUser3: TStringField;
    QuMasterTglOto3: TDateTimeField;
    QuMasterIsOtorisasi4: TBooleanField;
    QuMasterOtoUser4: TStringField;
    QuMasterTglOto4: TDateTimeField;
    QuMasterIsOtorisasi5: TBooleanField;
    QuMasterOtoUser5: TStringField;
    QuMasterTglOto5: TDateTimeField;
    QuMasterNeedOtorisasi: TBooleanField;
    QuMasterIsBatal: TBooleanField;
    QuMasteruserbatal: TStringField;
    QuMasterTglbatal: TDateTimeField;
    QuMasterTipePPN: TWordField;
    QuMasterstatus: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton2Click(Sender: TObject);
    procedure GetData(bulan,tahun:integer);
    procedure TampilValidClick(Sender: TObject);
    procedure TampilBatalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ExportExcel1Click(Sender: TObject);
    procedure tvKotaSOFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tvMasterSOFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tvMasterFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure frxReport1AfterPrintReport(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure ToolButton14Click(Sender: TObject);
    procedure tvMasterCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tvDetailCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tvMasterCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
    mQnt, mTotal: Real;
  public
    { Public declarations }
    SortBy,Prioritas,mPosisi,MenuSO: string;
    IsTambah,IsKoreksi,IsHapus, IsCetak,  IsExcel : Boolean;
    xTotalNetto,xTotal,xQnt,xDiskon,xsubtotal,xDpp,xPPn : Real;
    MenuSOOL : Integer;
    ModalKoreksi : Boolean;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;
     StrPO='select a.nobukti+'' Tanggal:''+convert(varchar(10),a.tanggal,105)+'' Pelanggan:''+b.namacust '
	   +'as GroupNobukti, a.nobukti, d.kodebrg,d.namabrg,c.qnt,c.satuan,c.harga,c.disctot, '
      +'(c.harga-c.DiscTot) as Hrgnett,c.nDiskon As Discount,c.Nnet As Total '

           +'from dbJual a '
           +'left outer join dbCustomer b on a.kodeCust=b.kodecust '
	   +'left outer join dbJualdet c on c.nobukti=a.nobukti '
	   +'left outer join dbbarang d on c.kodebrg=d.kodebrg '

           +'where month(a.tanggal)=:0 and year(a.tanggal)=:1 '
           +'order by a.nobukti,c.urut';

var
  FrMainSO: TFrMainSO;
  S: array[0..255] of char;
implementation
uses MyModul, MyProcedure, MyGlobal, FrmBrows, FrmSO, FrmSetForm, frmLogin;
{$R *.dfm}

procedure TFrMainSO.GetData(bulan,tahun:integer);
var xKodeCustA, xKodeCustB, xInsBrg, xKodeGdg: String;
begin
  with QuMaster do
  begin
    Close;
    SQL.Strings[2]:='select @Tahun='+IntToStr(tahun)+', @Bulan='+IntToStr(bulan);
    //SQL.Strings[15]:='and KodeGdg in (select KodeGdg from dbPemakaiGdg where UserID='+QuotedStr(IDUser)+')';
    Open;
  end;
  ViewOtorisasiNonBandedTableView(tvMaster,Qumaster,MenuSOOL);
  with QuKotaSO do
  begin
    close;
    SQL.Clear;
    Sql.Add('Declare @Periode varchar(6), @Bulan int, @Tahun int');
    Sql.add('Select @Bulan='+PeriodBln+', @Tahun='+PeriodThn);
    Sql.Add('Set @Periode=Cast(@Tahun as varchar(4))+Case when @bulan<10 then ''0'' else '''' end+Cast(@Bulan as varchar(2))');
    SQL.Add('select KodeKota, NamaKota, count(*) JumlahSO from vwSOBelumSuratJln A');
    SQL.add('where CAST(YEAR(A.Tanggal) as varchar(4))+Case when MONTH(A.Tanggal)<10 then ''0'' Else '''' end+CAST(Month(a.Tanggal) as varchar(2))<=@periode');
    //SQL.Add('and KodeGdg in (select KodeGdg from dbPemakaiGdg where UserID='+QuotedStr(IDUser)+')');
    Sql.Add('and A.IsLengkap=0');
    SQL.Add('group by KodeKota, NamaKota ');
    sql.Add('Order by Kodekota,NamaKota');
    Open;
  end;
  


end;

procedure TFrMainSO.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do
  begin
    DefaultExt := ADefaultExt;
    Filter := AFilter;
    FileName := AFileName;
    if Execute then
      AMethod(FileName, true);
  end;
end;


procedure TFrMainSO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
           MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
  begin
    if Application.FindComponent('FrSO')<>nil then
    begin
       MessageDlg('Modul '+FrSO.Caption+' belum ditutup !',mtWarning,[mbok],0);
       Action := caNone
    end
    else Action:=caFree;
  end
  else
      Action:=caNone;
end;

procedure TFrMainSO.FormDestroy(Sender: TObject);
begin
  FrMainSO:=nil;
end;

procedure TFrMainSO.FormShow(Sender: TObject);
begin
  dxPageControl1.ActivePageIndex:=0;
  ToolButton10.Click;
end;

procedure TFrMainSO.ToolButton10Click(Sender: TObject);
begin
   GetData(strtoint(PeriodBln),StrToInt(PeriodThn));
end;

procedure TFrMainSO.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrMainSO.ToolButton1Click(Sender: TObject);
begin
   if ToolButton1.Enabled then
   begin
     if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
     begin
      if IsTambah then
      begin
         if Assigned(FrSO) then
            frSO.Show
         else
         begin
           ModalKoreksi:=False;
           Application.CreateForm(TFrSO,FrSO);
           CekOtoritasMenu(IDUser,tag,FrSO.Istambah,FrSO.Ishapus,
                       FrSO.Iskoreksi, FrSO.isCetak, FrSO.isExcel);
           FrSO.Valas.Text := 'IDR';
           FrSO.Show;
         end;
      end
      else
      begin
         ShowMessage('Anda tidak berhak Menambah Data');
      end;
     end
     else
     begin
       MessageDlg('Periode telah terkunci !',mtWarning,[mbok],0);
     end;
   end;
end;

procedure TFrMainSO.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_ESCAPE then
   begin
      Close;
   end else
   if Key=VK_RETURN then
   begin
       SendMessage(Handle,WM_NEXTDLGCTL,0,0);
   end
   else if key=VK_INSERT then
   begin
       ToolButton1.Click;
   end
   else if key=VK_Delete then
   begin
        ToolButton3.Click;
   end;
end;

procedure TFrMainSO.ToolButton2Click(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if IsKoreksi then
    begin
      if dxPageControl1.ActivePageIndex=0 then
      begin
        if QuMaster.IsEmpty=False then
        begin
          if Not QuMasterNeedOtorisasi.Value then
          begin
            MsgNeedOtorisasi;
            ActiveControl:= cxGrid1;
          end
          else
          begin
             gTempNoBuktiSO:=QuMasterNoBukti.AsString;
             if Assigned(FrSO) then
                FrSO.Show
             else
             begin
               ModalKoreksi:=True;
               Application.CreateForm(TFrSO,FrSO);
               CekOtoritasMenu(IDUser,tag,FrSO.Istambah,FrSO.Ishapus,
                            FrSO.Iskoreksi, FrSO.isCetak, FrSO.isExcel);
               FrSO.Show;
             end;
          end;
        end else
        begin
           ShowMessage('Tidak ada transaksi yang dikoreksi !');
        end;
      end else
      begin
        if QuMasterSO.IsEmpty=False then
        begin
           gTempNoBuktiSO:=QuMasterSONoBukti.AsString;
           if Assigned(FrSO) then
              FrSO.Show
           else
           begin
             ModalKoreksi:=True;
             Application.CreateForm(TFrSO,FrSO);
             CekOtoritasMenu(IDUser,tag,FrSO.Istambah,FrSO.Ishapus,
                          FrSO.Iskoreksi, FrSO.isCetak, FrSO.isExcel);
             FrSO.Show;
           end;
        end else
        begin
           ShowMessage('Tidak ada transaksi yang dikoreksi !');
        end;
      end
    end
    else
    begin
       ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
    end;
  end
  else
  begin
    MessageDlg('Periode ditelh terkunci !',mtWarning,[mbok],0);
  end;

end;

procedure TFrMainSO.TampilValidClick(Sender: TObject);
begin
   ToolButton11.Caption:=TampilValid.Caption;
   TampilValid.Checked:=true;
   TampilBatal.Checked:=false;
   ToolButton1.Enabled:=true;
   ToolButton2.Enabled:=true;
   ToolButton3.Caption:='&Batal';
   ToolButton10Click(self);
end;

procedure TFrMainSO.TampilBatalClick(Sender: TObject);
begin
   ToolButton11.Caption:=TampilBatal.Caption;
   TampilValid.Checked:=false;
   TampilBatal.Checked:=True;
   ToolButton1.Enabled:=false;
   ToolButton2.Enabled:=false;
   ToolButton3.Caption:='&Valid';
   ToolButton10Click(self);
end;

procedure TFrMainSO.FormCreate(Sender: TObject);
begin
  Panel1.Color:=FrSetForm.PanelMain.Color;
  ToolBar1.Color:=FrSetForm.ToolBarMain.Color;

end;

procedure TFrMainSO.ExportExcel1Click(Sender: TObject);
begin
  SaveDialog.FileName := Caption;
  if SaveDialog.Execute then
  begin
    with QuMasExport do
    begin
      close;
      Prepared;
      Parameters[0].Value := StrToInt(PeriodBln);
      Parameters[1].Value := StrToInt(PeriodThn);
      Open;
    end;
    ExportGrid4ToExcel(SaveDialog.FileName,cxGrid2,True,True,False);
    ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
    //LoggingData(IDUser,'Export to excel',FrMainSo.Caption,'','export to excel dengan nama file : '+SaveDialog.FileName);
  end;
  SaveDialog.FileName := Caption+'Detail';
  if SaveDialog.Execute then
  begin
    with QuDetExport do
    begin
      close;
      Prepared;
      Parameters[0].Value := StrToInt(PeriodBln);
      Parameters[1].Value := StrToInt(PeriodThn);
      open;
    end;
    ExportGrid4ToExcel(SaveDialog.FileName,cxGrid4,True,True,False);
    ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
  end
end;

procedure TFrMainSO.tvKotaSOFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  with QuMasterSO do
  begin
    close;
    Open;
  end;
  
end;

procedure TFrMainSO.tvMasterSOFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  with QuDetail1SO do
  begin
    close;
    {SQL.Clear;
    SQL.Add('select NoBukti, Urut, NoBukti+right(''000000''+cast(Urut as varchar(6)),6) KeyUrut, ');
    SQL.Add('       KODEBRG, NamaBrg, QNT, QNT2, NOSAT, Satuan, ISI, QntSJ, Qnt2SJ, SatuanRoll, ');
    SQL.Add('       QNT-QntSJ QntSisa, QNT2-QNT2SJ Qnt2Sisa ');
    SQL.Add('from vwSOBelumSuratJlnDet ');
    SQL.Add('where ((QNT>QntSJ) or (QNT2>Qnt2SJ)) ');
    SQL.Add('order by KodeKota, NoBukti, Urut ');  }
    Open;
  end;
end;

procedure TFrMainSO.tvMasterFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  with QuDetail1 do
  begin
    Close;
    SQL.Strings[2]:='select @Tahun='+PeriodThn+', @Bulan='+PeriodBln;
    Open;
  end;
end;

procedure TFrMainSO.ToolButton4Click(Sender: TObject);
begin
  //if Not QuMasterNeedOtorisasi.Value then
  //if CekOtorisasi('dbSO',MenuSO,IDUser,'',QuMasterNoBukti.AsString) then
  {begin
    MessageDlg('No. Sales Order '+QuMasterNoBukti.AsString+' telah diotorisasi oleh user '+QuMasterOtoUser1.AsString+#13+'pada tanggal '+
               FormatDatetime('DD-MMM-YYYY',QuMasterTglOto1.AsDateTime)+' Jam '+FormatDateTime('HH:MM:SS',QuMasterTglOto1.AsDateTime)+#13+
               'Data tidak dapat diotorisasi lagi !!!',mtWarning,[mbok],0);
    ActiveControl := cxGrid1;
  end
  els}
  begin
    BM := QuMaster.GetBookmark;
    {frLogin := TFrLogin.Create(Self);
    frLogin.Label2.Caption :='Otorisasi';
    if frLogin.ShowModal=mrok then }
    begin
      Otorisasi('DBSO',MenuSO,IDUser,'',QuMasterNoBukti.Value);
      Begin
        ToolButton10.Click;
        if QuMaster.BookmarkValid(BM) then
        begin
          try
             QuMaster.GotoBookmark(BM);
          finally
             QuMaster.FreeBookmark(BM);
          end
        end else
        begin
          QuMaster.FreeBookmark(BM);
          QuMaster.Last;
        end;
      end;
    end;
  end;



end;

procedure TFrMainSO.ToolButton12Click(Sender: TObject);
begin
  BM := QuMaster.GetBookmark;
  {frLogin := TFrLogin.Create(Self);
  frLogin.Label2.Caption :='Otorisasi';
  if frLogin.ShowModal=mrok then  }
  begin
    BatalOtorisasi('DBSO',MenuSO,IDUser,'',QuMasterNoBukti.Value);
    Begin
      ToolButton10.Click;
      if QuMaster.BookmarkValid(BM) then
      begin
        try
           QuMaster.GotoBookmark(BM);
        finally
           QuMaster.FreeBookmark(BM);
        end
      end else
      begin
        QuMaster.FreeBookmark(BM);
        QuMaster.Last;
      end;
    end;
  end;
end;

procedure TFrMainSO.ToolButton13Click(Sender: TObject);
begin
if Iscetak then
begin
//  if qumasterNeedOtorisasi.asboolean=false then
    MainCetak(frxDBDataset1,frxDataPerusahaan,DM.QuCari,Dm.QuCari2,'Sp_CetakSo1','Vwperusahaan',QuMasterNOBUKTI.AsString,'Nota\NotaMarketingSO.fr3',frxReport1)
  //else
  //MsgCetakOtorisasi
end
else
   MsgTidakBerhakCetakData
end;

procedure TFrMainSO.frxReport1AfterPrintReport(Sender: TObject);
begin
  NilaiCetak('CetakKe','DBSO',QuMasterNoBukti.AsString);
end;

procedure TFrMainSO.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
if CompareText(varName,'iduser')=0 then
        value:=IDUser;
end;

procedure TFrMainSO.ToolButton14Click(Sender: TObject);
begin
IF DataBersyarat(' select A.Nobukti,B.Noso From DbSo A Left Outer Join dbSPPDet B on A.NOBUKTI=B.NoSO  '+
                 ' where Isnull(B.NoSo,'''')=''''  and A.nobukti=:0',[QuMasterNoBukti.ASstring],DM.Qucari)=true then
 begin
    BM := QuMaster.GetBookmark;
    begin
      pembatalan('DBSO','IsBatal',QuMasterNoBukti.AsString,IDUser,MenuSO);
      Begin
        ToolButton10.Click;
        if QuMaster.BookmarkValid(BM) then
        begin
          try
             QuMaster.GotoBookmark(BM);
          finally
             QuMaster.FreeBookmark(BM);
          end
        end else
        begin
          QuMaster.FreeBookmark(BM);
          QuMaster.Last;
        end;
      end;
    end;
 end
 else
 ShowMessage('Nomor PO '+QuMasterNoBukti.AsString+' Sudah Terdaftar Dalam Penerimaan Gudang / SO') ;

 if QuMasterIsBatal.AsBoolean=true then
   begin
     ToolButton14.Caption:='Aktif' ;
     Xbatal:=False;
   End
  else
   begin
      ToolButton14.Caption:='Batal' ;
      Xbatal:=true;
   end;
end;

procedure TFrMainSO.tvMasterCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 if QuMasterIsBatal.AsBoolean=true then
     begin
       ToolButton14.Caption:='Aktif' ;
       Xbatal:=False;
     End
   else
     begin
        ToolButton14.Caption:='Batal' ;
        Xbatal:=true;
     end;
end;

procedure TFrMainSO.tvDetailCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
{if AViewInfo.GridRecord.DisplayTexts[22]='True' then
   ACanvas.Brush.Color := Clred; }
end;

procedure TFrMainSO.tvMasterCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
{if AViewInfo.GridRecord.DisplayTexts[40]='True' then
   ACanvas.Brush.Color := Clred;}
{if AViewInfo.GridRecord.i =intst0 then
        ACanvas.Brush.Color := Clred;}
           if AViewInfo.GridRecord.Values[43] =0 then
      ACanvas.Font.Color:=    Clred
      else
      ACanvas.Font.Color:=    clGreen;

end;

end.
