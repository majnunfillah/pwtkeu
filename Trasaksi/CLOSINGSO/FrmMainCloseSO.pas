unit FrmMainCloseSO;

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

  TFrMainCloseSO = class(TForm)
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
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    frxReport1: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxDataPerusahaan: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    frxDBCetak: TfrxDBDataset;
    QuMasterKeyNoBuktiUrut: TStringField;
    QuMasterNoBukti: TStringField;
    QuMasterNoUrut: TStringField;
    QuMasterTanggal: TDateTimeField;
    QuMasterKodeCust: TStringField;
    QuMasterNamaCust: TStringField;
    QuMasterKodeBrg: TStringField;
    QuMasterNamaBrg: TStringField;
    QuMasterQNT: TBCDField;
    QuMasterQntSPP: TBCDField;
    QuMasterQntSisa: TBCDField;
    QuMasterIsCloseDet: TBooleanField;
    tvMasterKeyNoBuktiUrut: TcxGridDBColumn;
    tvMasterNoBukti: TcxGridDBColumn;
    tvMasterNoUrut: TcxGridDBColumn;
    tvMasterTanggal: TcxGridDBColumn;
    tvMasterKodeCust: TcxGridDBColumn;
    tvMasterNamaCust: TcxGridDBColumn;
    tvMasterKodeBrg: TcxGridDBColumn;
    tvMasterNamaBrg: TcxGridDBColumn;
    tvMasterQNT: TcxGridDBColumn;
    tvMasterQntSPP: TcxGridDBColumn;
    tvMasterQntSisa: TcxGridDBColumn;
    tvMasterIsCloseDet: TcxGridDBColumn;
    QuMasterUrut: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GetData(bulan,tahun:integer);
    procedure TampilValidClick(Sender: TObject);
    procedure TampilBatalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ExportExcel1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
  private
    { Private declarations }
    mQnt, mTotal: Real;
    XPos:string;
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
  FrMainCloseSO: TFrMainCloseSO;
  S: array[0..255] of char;
implementation
uses MyModul, MyProcedure, MyGlobal, FrmBrows, FrmSO, FrmSetForm, frmLogin;
{$R *.dfm}

procedure TFrMainCloseSO.GetData(bulan,tahun:integer);
var xKodeCustA, xKodeCustB, xInsBrg, xKodeGdg: String;
begin
  with QuMaster do
  begin
    Close;
    SQL.Strings[2]:='select @Tahun='+IntToStr(tahun)+', @Bulan='+IntToStr(bulan);
    Open;
  end;
end;

procedure TFrMainCloseSO.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrMainCloseSO.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFrMainCloseSO.FormDestroy(Sender: TObject);
begin
  FrMainCloseSO:=nil;
end;

procedure TFrMainCloseSO.FormShow(Sender: TObject);
begin
  dxPageControl1.ActivePageIndex:=0;
  ToolButton10.Click;
end;

procedure TFrMainCloseSO.ToolButton10Click(Sender: TObject);
begin
   GetData(strtoint(PeriodBln),StrToInt(PeriodThn));
end;

procedure TFrMainCloseSO.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrMainCloseSO.FormKeyDown(Sender: TObject; var Key: Word;
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
       //ToolButton1.Click;
   end
   else if key=VK_Delete then
   begin
        //ToolButton3.Click;
   end;
end;

procedure TFrMainCloseSO.TampilValidClick(Sender: TObject);
begin
   ToolButton11.Caption:=TampilValid.Caption;
   TampilValid.Checked:=true;
   TampilBatal.Checked:=false;
   ToolButton1.Enabled:=true;
   ToolButton2.Enabled:=true;
   ToolButton3.Caption:='&Batal';
   ToolButton10Click(self);
end;

procedure TFrMainCloseSO.TampilBatalClick(Sender: TObject);
begin
   ToolButton11.Caption:=TampilBatal.Caption;
   TampilValid.Checked:=false;
   TampilBatal.Checked:=True;
   ToolButton1.Enabled:=false;
   ToolButton2.Enabled:=false;
   ToolButton3.Caption:='&Valid';
   ToolButton10Click(self);
end;

procedure TFrMainCloseSO.FormCreate(Sender: TObject);
begin
  Panel1.Color:=FrSetForm.PanelMain.Color;
  ToolBar1.Color:=FrSetForm.ToolBarMain.Color;

end;

procedure TFrMainCloseSO.ExportExcel1Click(Sender: TObject);
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

procedure TFrMainCloseSO.ToolButton1Click(Sender: TObject);
var xKeyNoBuktiUrut: String;
begin
  xKeyNoBuktiUrut:=QuMasterKeyNoBuktiUrut.AsString;
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
//    SQL.Add('update dbSODet set IsCloseDet=1 where NoBukti='+QuotedStr(QuMasterNoBukti.AsString)+' and Urut='+IntToStr(QuMasterUrut.AsInteger));
    SQL.Add('update dbSODet set IsCloseDet=1 where NoBukti='+QuotedStr(QuMasterNoBukti.AsString));
    ExecSQL;
  end;
  QuMaster.Close;
  QuMaster.Open;
  QuMaster.Locate('KeyNoBuktiUrut',xKeyNoBuktiUrut,[]);
end;

procedure TFrMainCloseSO.ToolButton3Click(Sender: TObject);
var xKeyNoBuktiUrut: String;
begin
  xKeyNoBuktiUrut:=QuMasterKeyNoBuktiUrut.AsString;
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('update dbSODet set IsCloseDet=0 where NoBukti='+QuotedStr(QuMasterNoBukti.AsString)+' and Urut='+IntToStr(QuMasterUrut.AsInteger));
    ExecSQL;
  end;
  QuMaster.Close;
  QuMaster.Open;
  QuMaster.Locate('KeyNoBuktiUrut',xKeyNoBuktiUrut,[]);
end;

end.
