unit FrmMainSPP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  ImgList, StdCtrls, ExtCtrls, Menus,
  dxGridMenus, dxDBTLCl, dxGrClms, Mask, DBCtrls, Grids,
  ShellApi, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxEdit, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, dxPageControl, DBGrids, cxGridBandedTableView,
  cxGridDBBandedTableView, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPrnDlg, dxPgsDlg, dxPSCore, frxClass, frxDMPExport,
  frxDBSet, frxDesgn;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrMainSPP = class(TForm)
    QuMaster: TADOQuery;
    DsMaster: TDataSource;
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
    dxPageControl1: TdxPageControl;
    dxTOSOP: TdxTabSheet;
    dxTSBP: TdxTabSheet;
    QuMasterBP: TADOQuery;
    DsMasterBP: TDataSource;
    QuDetailBP: TADOQuery;
    DsDetailBP: TDataSource;
    cxGrid3: TcxGrid;
    tvMasterOut: TcxGridDBBandedTableView;
    tvMasterOutNobukti: TcxGridDBBandedColumn;
    tvMasterOutTanggal: TcxGridDBBandedColumn;
    cxGridLevel3: TcxGridLevel;
    tvMasterOutKodeCustSupp: TcxGridDBBandedColumn;
    tvMasterOutNamaCustSupp: TcxGridDBBandedColumn;
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBBandedTableView;
    tvDetail: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    tvMasterNOBUKTI: TcxGridDBBandedColumn;
    tvMasterTANGGAL: TcxGridDBBandedColumn;
    tvMasterKODECUSTSUPP: TcxGridDBBandedColumn;
    tvMasterIDUser: TcxGridDBBandedColumn;
    tvMasterNamaCustSupp: TcxGridDBBandedColumn;
    tvDetailKODEBRG: TcxGridDBBandedColumn;
    tvDetailQNT: TcxGridDBBandedColumn;
    tvDetailQNT2: TcxGridDBBandedColumn;
    tvDetailSAT_1: TcxGridDBBandedColumn;
    tvDetailSAT_2: TcxGridDBBandedColumn;
    tvDetailNamaBrg: TcxGridDBBandedColumn;
    tvMasterTglKirim: TcxGridDBBandedColumn;
    tvMasterNOSC: TcxGridDBBandedColumn;
    tvMasterNoPesan: TcxGridDBBandedColumn;
    tvMasterCatatan: TcxGridDBBandedColumn;
    tvDetailNOBUKTI: TcxGridDBBandedColumn;
    tvDetailURUT: TcxGridDBBandedColumn;
    tvDetailISI: TcxGridDBBandedColumn;
    tvDetailNetW: TcxGridDBBandedColumn;
    tvDetailGrossW: TcxGridDBBandedColumn;
    tvDetailKetDetail: TcxGridDBBandedColumn;
    tvDetailJns_Kertas: TcxGridDBBandedColumn;
    tvDetailUkr_Kertas: TcxGridDBBandedColumn;
    cxGrid3Level1: TcxGridLevel;
    tvDetailOut: TcxGridDBBandedTableView;
    QuDetail: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    DateTimeField1: TDateTimeField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField1: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    BCDField4: TBCDField;
    BCDField5: TBCDField;
    BCDField6: TBCDField;
    BCDField7: TBCDField;
    DsDetail: TDataSource;
    tvDetailOutkodebrg: TcxGridDBBandedColumn;
    tvDetailOutNamaBrg: TcxGridDBBandedColumn;
    tvDetailOutQnt: TcxGridDBBandedColumn;
    tvDetailOutQntSPP: TcxGridDBBandedColumn;
    tvDetailOutQntSisa: TcxGridDBBandedColumn;
    ToolButton4: TToolButton;
    tvMaster1: TcxGridDBBandedTableView;
    tvDetail1: TcxGridDBBandedTableView;
    QuMasterBP1: TADOQuery;
    StringField12: TStringField;
    StringField13: TStringField;
    DateTimeField3: TDateTimeField;
    DateTimeField4: TDateTimeField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    DsMasterBP1: TDataSource;
    QuDetailBP1: TADOQuery;
    StringField23: TStringField;
    IntegerField2: TIntegerField;
    StringField24: TStringField;
    StringField25: TStringField;
    BCDField8: TBCDField;
    BCDField9: TBCDField;
    StringField26: TStringField;
    StringField27: TStringField;
    BCDField10: TBCDField;
    BCDField11: TBCDField;
    BCDField12: TBCDField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    IntegerField3: TIntegerField;
    DsDetailBP1: TDataSource;
    cxGrid1Level5: TcxGridLevel;
    tvSPB: TcxGridDBBandedTableView;
    tvSPB1: TcxGridDBBandedTableView;
    tvMaster1NOBUKTI: TcxGridDBBandedColumn;
    tvMaster1NOURUT: TcxGridDBBandedColumn;
    tvMaster1TANGGAL: TcxGridDBBandedColumn;
    tvMaster1TglKirim: TcxGridDBBandedColumn;
    tvMaster1NoPesan: TcxGridDBBandedColumn;
    tvMaster1KODECUSTSUPP: TcxGridDBBandedColumn;
    tvMaster1NamaCustSupp: TcxGridDBBandedColumn;
    tvMaster1NoLC: TcxGridDBBandedColumn;
    tvMaster1Catatan: TcxGridDBBandedColumn;
    tvMaster1IDUser: TcxGridDBBandedColumn;
    tvMaster1NOSHIP: TcxGridDBBandedColumn;
    tvMaster1NoSC: TcxGridDBBandedColumn;
    QuSPB: TADOQuery;
    DsSPB: TDataSource;
    QuSPB1: TADOQuery;
    DSSPB1: TDataSource;
    tvSPBNoBukti: TcxGridDBBandedColumn;
    tvSPBTanggal: TcxGridDBBandedColumn;
    tvSPBQnt: TcxGridDBBandedColumn;
    tvSPBQnt2: TcxGridDBBandedColumn;
    tvSPBSAT_1: TcxGridDBBandedColumn;
    tvSPBSAT_2: TcxGridDBBandedColumn;
    tvSPBMySPP: TcxGridDBBandedColumn;
    tvSPBMyKey: TcxGridDBBandedColumn;
    QuMasterBP1isSPB: TBooleanField;
    QuMasterBP1IsClose: TBooleanField;
    tvMasterisSPB: TcxGridDBBandedColumn;
    tvMasterIsClose: TcxGridDBBandedColumn;
    tvMaster1isSPB: TcxGridDBBandedColumn;
    tvMaster1IsClose: TcxGridDBBandedColumn;
    tvDetail1NOBUKTI: TcxGridDBBandedColumn;
    tvDetail1URUT: TcxGridDBBandedColumn;
    tvDetail1KODEBRG: TcxGridDBBandedColumn;
    tvDetail1NAMABRG: TcxGridDBBandedColumn;
    tvDetail1QNT: TcxGridDBBandedColumn;
    tvDetail1QNT2: TcxGridDBBandedColumn;
    tvDetail1SAT_1: TcxGridDBBandedColumn;
    tvDetail1SAT_2: TcxGridDBBandedColumn;
    tvDetail1ISI: TcxGridDBBandedColumn;
    tvDetail1NetW: TcxGridDBBandedColumn;
    tvDetail1GrossW: TcxGridDBBandedColumn;
    tvDetail1KetDetail: TcxGridDBBandedColumn;
    tvDetail1Jns_Kertas: TcxGridDBBandedColumn;
    tvDetail1Ukr_Kertas: TcxGridDBBandedColumn;
    tvDetail1NoSHIP: TcxGridDBBandedColumn;
    tvDetail1UrutSHIP: TcxGridDBBandedColumn;
    QuDetailBP1GSM: TBCDField;
    tvDetailGSM: TcxGridDBBandedColumn;
    QuDetailBP1NamaBrgKom: TStringField;
    tvDetail1GSM: TcxGridDBBandedColumn;
    QuDetailBP1MyKey: TStringField;
    QuSPB1NoBukti: TStringField;
    QuSPB1Tanggal: TDateTimeField;
    QuSPB1Qnt: TBCDField;
    QuSPB1Qnt2: TBCDField;
    QuSPB1SAT_1: TStringField;
    QuSPB1SAT_2: TStringField;
    QuSPB1MySPP: TStringField;
    QuSPB1MyKey: TStringField;
    tvSPB1NoBukti: TcxGridDBBandedColumn;
    tvSPB1Tanggal: TcxGridDBBandedColumn;
    tvSPB1Qnt: TcxGridDBBandedColumn;
    tvSPB1Qnt2: TcxGridDBBandedColumn;
    tvSPB1SAT_1: TcxGridDBBandedColumn;
    tvSPB1SAT_2: TcxGridDBBandedColumn;
    tvSPB1MySPP: TcxGridDBBandedColumn;
    tvSPB1MyKey: TcxGridDBBandedColumn;
    QuSPB1NetW: TBCDField;
    QuSPB1GrossW: TBCDField;
    tvSPBNetW: TcxGridDBBandedColumn;
    tvSPBGrossW: TcxGridDBBandedColumn;
    tvSPB1NetW: TcxGridDBBandedColumn;
    tvSPB1GrossW: TcxGridDBBandedColumn;
    QuDetailBP1ShippingMark: TStringField;
    tvDetailShippingMark: TcxGridDBBandedColumn;
    tvDetail1ShippingMark: TcxGridDBBandedColumn;
    tvMasterTipe: TcxGridDBBandedColumn;
    tvMasterIsOtorisasi1: TcxGridDBBandedColumn;
    tvMasterOtoUser1: TcxGridDBBandedColumn;
    tvMasterTglOto1: TcxGridDBBandedColumn;
    tvMasterIsOtorisasi2: TcxGridDBBandedColumn;
    tvMasterOtoUser2: TcxGridDBBandedColumn;
    tvMasterTglOto2: TcxGridDBBandedColumn;
    tvMasterIsOtorisasi3: TcxGridDBBandedColumn;
    tvMasterOtoUser3: TcxGridDBBandedColumn;
    tvMasterTglOto3: TcxGridDBBandedColumn;
    tvMasterIsOtorisasi4: TcxGridDBBandedColumn;
    tvMasterOtoUser4: TcxGridDBBandedColumn;
    tvMasterTglOto4: TcxGridDBBandedColumn;
    tvMasterIsOtorisasi5: TcxGridDBBandedColumn;
    tvMasterOtoUser5: TcxGridDBBandedColumn;
    tvMasterTglOto5: TcxGridDBBandedColumn;
    QuMasterBP1ShippingMark: TIntegerField;
    QuMasterBP1Tipe: TBooleanField;
    QuMasterBP1MyTipe: TStringField;
    QuMasterBP1IsOtorisasi1: TBooleanField;
    QuMasterBP1OtoUser1: TStringField;
    QuMasterBP1TglOto1: TDateTimeField;
    QuMasterBP1IsOtorisasi2: TBooleanField;
    QuMasterBP1OtoUser2: TStringField;
    QuMasterBP1TglOto2: TDateTimeField;
    QuMasterBP1IsOtorisasi3: TBooleanField;
    QuMasterBP1OtoUser3: TStringField;
    QuMasterBP1TglOto3: TDateTimeField;
    QuMasterBP1IsOtorisasi4: TBooleanField;
    QuMasterBP1OtoUser4: TStringField;
    QuMasterBP1TglOto4: TDateTimeField;
    QuMasterBP1IsOtorisasi5: TBooleanField;
    QuMasterBP1OtoUser5: TStringField;
    QuMasterBP1TglOto5: TDateTimeField;
    tvMaster1Tipe: TcxGridDBBandedColumn;
    tvMaster1MyTipe: TcxGridDBBandedColumn;
    tvMaster1IsOtorisasi1: TcxGridDBBandedColumn;
    tvMaster1OtoUser1: TcxGridDBBandedColumn;
    tvMaster1TglOto1: TcxGridDBBandedColumn;
    tvMaster1IsOtorisasi2: TcxGridDBBandedColumn;
    tvMaster1OtoUser2: TcxGridDBBandedColumn;
    tvMaster1TglOto2: TcxGridDBBandedColumn;
    tvMaster1IsOtorisasi3: TcxGridDBBandedColumn;
    tvMaster1OtoUser3: TcxGridDBBandedColumn;
    tvMaster1TglOto3: TcxGridDBBandedColumn;
    tvMaster1IsOtorisasi4: TcxGridDBBandedColumn;
    tvMaster1OtoUser4: TcxGridDBBandedColumn;
    tvMaster1TglOto4: TcxGridDBBandedColumn;
    tvMaster1IsOtorisasi5: TcxGridDBBandedColumn;
    tvMaster1OtoUser5: TcxGridDBBandedColumn;
    tvMaster1TglOto5: TcxGridDBBandedColumn;
    QuMasterNobukti: TStringField;
    QuMasterTanggal: TDateTimeField;
    QuMasterKodeCust: TStringField;
    QuMasterNamaCust: TStringField;
    QuDetailSatuan: TStringField;
    QuDetailBPNOBUKTI: TStringField;
    QuDetailBPURUT: TIntegerField;
    QuDetailBPNoSO: TStringField;
    QuDetailBPUrutSO: TIntegerField;
    QuDetailBPKODEBRG: TStringField;
    QuDetailBPNAMABRG: TStringField;
    QuDetailBPQNT: TBCDField;
    QuDetailBPQNT2: TBCDField;
    QuDetailBPSAT_1: TStringField;
    QuDetailBPSAT_2: TStringField;
    QuDetailBPISI: TBCDField;
    QuDetailBPNetW: TBCDField;
    QuDetailBPGrossW: TBCDField;
    QuDetailBPKetDetail: TStringField;
    QuDetailBPMyKey: TStringField;
    QuDetailBPNamaBrgKom: TStringField;
    QuDetailBPShippingMark: TStringField;
    QuSPBNoBukti: TStringField;
    QuSPBTanggal: TDateTimeField;
    QuSPBQnt: TBCDField;
    QuSPBQnt2: TBCDField;
    QuSPBSAT_1: TStringField;
    QuSPBSAT_2: TStringField;
    QuSPBMySPP: TStringField;
    QuSPBMyKey: TStringField;
    QuSPBNetW: TBCDField;
    QuSPBGrossW: TBCDField;
    QuMasterBPNOBUKTI: TStringField;
    QuMasterBPNOURUT: TStringField;
    QuMasterBPTANGGAL: TDateTimeField;
    QuMasterBPTglKirim: TDateTimeField;
    QuMasterBPNOSHIP: TStringField;
    QuMasterBPNoPesan: TStringField;
    QuMasterBPKODECUSTSUPP: TStringField;
    QuMasterBPNamaCustSupp: TStringField;
    QuMasterBPShippingMark: TIntegerField;
    QuMasterBPNoLC: TStringField;
    QuMasterBPCatatan: TStringField;
    QuMasterBPIDUser: TStringField;
    QuMasterBPNoSO: TStringField;
    QuMasterBPisSPB: TBooleanField;
    QuMasterBPIsClose: TBooleanField;
    QuMasterBPTipe: TBooleanField;
    QuMasterBPMyTipe: TStringField;
    QuMasterBPIsOtorisasi1: TBooleanField;
    QuMasterBPOtoUser1: TStringField;
    QuMasterBPTglOto1: TDateTimeField;
    QuMasterBPIsOtorisasi2: TBooleanField;
    QuMasterBPOtoUser2: TStringField;
    QuMasterBPTglOto2: TDateTimeField;
    QuMasterBPIsOtorisasi3: TBooleanField;
    QuMasterBPOtoUser3: TStringField;
    QuMasterBPTglOto3: TDateTimeField;
    QuMasterBPIsOtorisasi4: TBooleanField;
    QuMasterBPOtoUser4: TStringField;
    QuMasterBPTglOto4: TDateTimeField;
    QuMasterBPIsOtorisasi5: TBooleanField;
    QuMasterBPOtoUser5: TStringField;
    QuMasterBPTglOto5: TDateTimeField;
    QuDetailBPSatuan: TStringField;
    QuMasterNoPesanan: TStringField;
    QuMasterTglkirim: TDateTimeField;
    tvMasterOutNobukti1: TcxGridDBBandedColumn;
    tvMasterOutNoPesanan: TcxGridDBBandedColumn;
    tvMasterOutTglkirim: TcxGridDBBandedColumn;
    QuDetailQntStock: TFloatField;
    tvDetailOutSatuan: TcxGridDBBandedColumn;
    tvDetailOutQntStock: TcxGridDBBandedColumn;
    QuMasterMasaBerlaku: TDateTimeField;
    tvMasterOutMasaBerlaku: TcxGridDBBandedColumn;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    frxDesigner1: TfrxDesigner;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDataPerusahaan: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    tvSPBDBBandedColumn1: TcxGridDBBandedColumn;
    QuMasterBPNeedOtorisasi: TBooleanField;
    tvMasterDBBandedColumn1: TcxGridDBBandedColumn;
    tvMasterDBBandedColumn2: TcxGridDBBandedColumn;
    tvMasterDBBandedColumn3: TcxGridDBBandedColumn;
    QuMasterBPIsBatal: TBooleanField;
    QuMasterBPuserBatal: TStringField;
    QuMasterBPTglbatal: TDateTimeField;
    ToolButton14: TToolButton;
    QuDetailIsCLoseDet: TBooleanField;
    tvDetailOutDBBandedColumn1: TcxGridDBBandedColumn;
    QuReport: TADOQuery;
    frxDBCetak: TfrxDBDataset;
    ToolButton15: TToolButton;
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
    procedure FormCreate(Sender: TObject);
    procedure dxPageControl1Change(Sender: TObject);
    procedure tvMasterFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tvMasterOutFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure ToolButton4Click(Sender: TObject);
    procedure tvDetailFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tvMaster1FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tvDetail1FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure frxReport1AfterPrintReport(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure ToolButton14Click(Sender: TObject);
    procedure tvMasterCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tvMasterCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tvDetailOutCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure ToolButton15Click(Sender: TObject);
  private
    { Private declarations }
     mStrMsg: String;
     function  CekAdaSuratJln(pNOSO: String): Boolean;
  public
    { Public declarations }
    mPosisi : string;
    IsTambah, IsKoreksi, IsHapus, IsCetak, IsExcel: Boolean;
    ModalKoreksi : Boolean;
    SPPOL,mMainSPP_FlagMenu: Integer;
    MenuSPP : String;
    procedure ProsesPembuatanSPP;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrMainSPP: TFrMainSPP;
  S: array[0..255] of char;

implementation

uses MyModul, Myprocedure, MyGlobal, FrmBrows, FrmSetForm,
  FrmSPP, frmLogin, FrmSPPProses;

{$R *.dfm}

procedure TFrMainSPP.ProsesPembuatanSPP;
var i:Integer;
begin
   Application.CreateForm(TFrSPPProses,FrSPPProses);
   FrSPPProses.mNOSO_SJProses:=QuMasterNoBukti.AsString;
   FrSPPProses.Label2.Caption := 'Customer : '+QuMasterNamaCust.Value;
   FrSPPProses.ShowModal;
   if FrSPPProses.ModalResult=mrOK then
   begin
     if Assigned(FrSPP) then
       begin
        FrSPP.Show;
       end
     else
     begin
       gTempNoBukti := FrSPPProses.NoBukti;
       gTempNoBuktiSO:=FrSPPProses.mNOSO_SJProses;
       ModalKoreksi:=True;
       Application.CreateForm(TFrSPP,FrSPP);
       CekOtoritasMenu(IDUser,tag,FrSPP.Istambah,FrSPP.Ishapus,
                   FrSPP.Iskoreksi, FrSPP.isCetak, FrSPP.isExcel);
       FrSPP.Show;
     end;
   end;
end;


function  TFrMainSPP.CekAdaSuratJln(pNOSO: String): Boolean;
var xNoSuratJln: String;
    i: Integer;
 xStrMsg, xStrMsgDet: String;
begin
{  xNoSuratJln:='';
  i:=0;
  with DM.QueryBrow do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select distinct NoBukti from dbSuratJlnDet where NOSO='+QuotedStr(pNOSO));
    Open;
  end;
  if DM.QueryBrow.IsEmpty then CekAdaSuratJln:=False else
  begin
    CekAdaSuratJln:=True;
    DM.QueryBrow.First;
    while not DM.QueryBrow.Eof do
    begin
      if xNoSuratJln='' then
        xNoSuratJln:=xNoSuratJln+DM.QueryBrow.FieldByName('NoBukti').AsString
      else xNoSuratJln:=xNoSuratJln+chr(13)+DM.QueryBrow.FieldByName('NoBukti').AsString;
      DM.QueryBrow.Next;
    end;
    MessageDlg('Sales Order (SO) tidak dapat dihapus, sudah ada SPK'+chr(13)+xNoSuratJln,
    mtInformation,[mbOK],0);
  end;   }
  //Result := False;
  xStrMsg:='';
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select  nobukti from dbspbdet ');
    SQL.Add('where  Nospp='+QuotedStr(QuMasterBPNOBUKTI.AsString));
    Open;
    xStrMsgDet:='';
    if not IsEmpty then
    begin
      while not Eof do
      begin
        if xStrMsgDet='' then xStrMsgDet:=FieldByName('nobukti').AsString
          else xStrMsgDet:=xStrMsgDet+', '+FieldByName('nobukti').AsString;
        Next;
      end;
      if xStrMsg='' then
        xStrMsg:=xStrMsg+' No. Bukti RPP : '+xStrMsgDet
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


procedure TFrMainSPP.GetData(bulan,tahun:integer);
begin
  with QuMaster do
  begin
    Close;
    SQL.Strings[2]:='select @Tahun='+IntToStr(tahun)+', @Bulan='+IntToStr(bulan);
    Open;
  end;

  with QuMasterBP do
  begin
    Close;
    Prepared;
    Parameters[0].Value:=StrToInt(PeriodBln);
    Parameters[1].Value:=StrToInt(PeriodThn);
    Open;
  end;

end;

procedure TFrMainSPP.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrMainSPP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
           MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
  begin
    if Application.FindComponent('FrSPP')<>nil then
    begin
       MessageDlg('Modul '+FrSPP.Caption+' belum ditutup !',mtWarning,[mbok],0);
       Action := caNone
    end
    else Action:=caFree;
  end
  else
      Action:=caNone;
end;

procedure TFrMainSPP.FormDestroy(Sender: TObject);
begin
  FrMainSPP:=nil;
end;

procedure TFrMainSPP.FormShow(Sender: TObject);
begin
  ToolButton1.Enabled:=(dxPageControl1.ActivePageIndex=0);
  ToolButton2.Enabled:=(dxPageControl1.ActivePageIndex=1);
  ToolButton10.Click;
end;

procedure TFrMainSPP.ToolButton10Click(Sender: TObject);
begin
  GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
end;

procedure TFrMainSPP.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrMainSPP.ToolButton1Click(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
   if IsTambah then
   begin
     if ((dxPageControl1.ActivePageIndex=0) and (QuMaster.IsEmpty)) then
     begin
       MessageDlg('Outstanding SO tidak ada!',mtWarning,[mbok],0);
     end else
     begin
         ProsesPembuatanSPP;
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
   //ActiveControl := dxDBGrid1;
  end;
  {if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if IsTambah then
    begin
      gTempNoBukti:=QuMasterNobukti.AsString;
      gTempNoBuktiSO := QuMasterNobukti.Value;
      if Assigned(FrSPP) then
         FrSPP.Show
      else
      begin
        ModalKoreksi:=False;
        Application.CreateForm(TFrSPP,FrSPP);
        CekOtoritasMenu(IDUser,tag,FrSPP.Istambah,FrSPP.Ishapus,
                        FrSPP.Iskoreksi, FrSPP.isCetak, FrSPP.isExcel);
        FrSPP.xModalKoreksi := ModalKoreksi;
        FrSPP.Show;
      end;
    end
    else
    begin
      MsgTidakBerhakTambahData;
      if cxGrid3.CanFocus then
        ActiveControl:=cxGrid3;
    end;
  end
  else
  begin
    MsgPeriodeSudahDikunci;
    if cxGrid3.CanFocus then
        ActiveControl:=cxGrid3;
  end;                          }
end;

procedure TFrMainSPP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_ESCAPE then
   begin
      Close;
   end else
   if Key=VK_RETURN then
   begin
       ToolButton2.Click;
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

procedure TFrMainSPP.ToolButton2Click(Sender: TObject);
begin
  if dxPageControl1.ActivePageIndex=1 then
  Begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      if QuMasterBP.IsEmpty=False then
      begin
        if IsKoreksi then
        begin
          if not QuMasterBPNeedOtorisasi.Value then
          begin
//            MessageDlg('No. Perintah Kirim '+QuMasterBPNoBukti.AsString+' telah diotorisasi oleh user '+QuMasterBPOtoUser1.Value+#13+
  //                     'Data tidak dapat dikoreksi',mtWarning,[mbok],0);
            MsgNeedOtorisasi;
            ActiveControl:= cxGrid1;
          end
          else
          begin
            gTempNoBukti:=QuMasterBPNOBUKTI.AsString;
            if Assigned(FrSPP) then
              FrSPP.Show
            else
            begin
              ModalKoreksi:=True;
              Application.CreateForm(TFrSPP,FrSPP);
              CekOtoritasMenu(IDUser,Tag,FrSPP.IsTambah,FrSPP.IsHapus,
                          FrSPP.IsKoreksi, FrSPP.IsCetak, FrSPP.IsExcel);
              FrSPP.Show;
            end;
          end;
        end else
        begin
          MsgTidakBerhakKoreksiData;
          //ActiveControl:=cxGrd;
        end;
      end else
      begin
        MsgKoreksiDataKosong;
        //ActiveControl:=cxGrd;
      end;
    end else
    begin
      MsgPeriodeSudahDikunci;
      //ActiveControl:=cxGrd;
    end;
  end;
end;

procedure TFrMainSPP.FormCreate(Sender: TObject);
begin
  dxPageControl1.ActivePageIndex:=1;
  Panel1.Color:=FrSetForm.PanelMain.Color;
  ToolBar1.Color:=FrSetForm.ToolBarMain.Color;
  FrMainSPP.Color:=FrSetForm.FormMain.Color;
  mMainSPP_FlagMenu := KodeForm;
end;

procedure TFrMainSPP.dxPageControl1Change(Sender: TObject);
begin
 ToolButton1.Enabled:=(dxPageControl1.ActivePageIndex=0);
 ToolButton2.Enabled:=(dxPageControl1.ActivePageIndex=1);
end;

procedure TFrMainSPP.tvMasterFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  
  with QuDetailBP do
  begin
    Close;
    Open;
  end;
end;

procedure TFrMainSPP.tvMasterOutFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  with QuDetail do
  begin
    close;
    SQL.strings[1]:='Select @nobukti=:Nobukti, @Bulan='+PeriodBln+', @tahun='+PeriodThn;
    open;
  end;
end;

procedure TFrMainSPP.ToolButton4Click(Sender: TObject);
begin
//  if CekOtorisasi('dbSPP',MenuSPP,IDUser,'',QuMasterBPNOBUKTI.AsString) then
  begin
    BM := QuMasterBP.GetBookmark;
    {frLogin := TFrLogin.Create(Self);
    frLogin.Label2.Caption :='Otorisasi';
    if frLogin.ShowModal=mrok then }
    begin
      Otorisasi('DBSPP',MenuSPP,IDUser,'',QuMasterBPNobukti.Value);
      ToolButton10.Click;
      if QuMasterBP.BookmarkValid(BM) then
      begin
        try
           QuMasterBP.GotoBookmark(BM);
        finally
           QuMasterBP.FreeBookmark(BM);
        end
      end else
      begin
        QuMasterBP.FreeBookmark(BM);
        QuMasterBP.Last;
      end;
    end;
  end;
end;

procedure TFrMainSPP.tvDetailFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  with QuSPB do
  begin
    close;
    open;
  end;
end;

procedure TFrMainSPP.tvMaster1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  if (mMainSPP_FlagMenu=0) and (QuMasterBP1Tipe.Value=False) then
     ToolButton2.Enabled :=  True
  else if (mMainSPP_FlagMenu=0) and (QuMasterBP1Tipe.Value=True) then
     ToolButton2.Enabled :=  False
  else if (mMainSPP_FlagMenu=1) and (QuMasterBP1Tipe.Value=False) then
     ToolButton2.Enabled :=  False
  else if (mMainSPP_FlagMenu=1) and (QuMasterBP1Tipe.Value=True) then
     ToolButton2.Enabled :=  True;
  with QuDetailBP1 do
  begin
    close;
    open;
  end;
end;

procedure TFrMainSPP.tvDetail1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  with QuSPB1 do
  begin
    close;
    open;
  end;
end;

procedure TFrMainSPP.ToolButton12Click(Sender: TObject);
begin
  begin
    BM := QuMasterBP.GetBookmark;
    {frLogin := TFrLogin.Create(Self);
    frLogin.Label2.Caption :='Otorisasi';
    if frLogin.ShowModal=mrok then }
    begin
    if CekAdaSuratJln(QuMasterBPNobukti.Value)=false then
        begin
          BatalOtorisasi('DBSPP',MenuSPP,IDUser,'',QuMasterBPNobukti.Value);
          ToolButton10.Click;
              if QuMasterBP.BookmarkValid(BM) then
              begin
                try
                   QuMasterBP.GotoBookmark(BM);
                finally
                   QuMasterBP.FreeBookmark(BM);
                end
              end else
              begin
                QuMasterBP.FreeBookmark(BM);
                QuMasterBP.Last;
              end;
        end
          else
          begin
            begin
                MessageDlg('Data tidak dapat dihapus, sudah ada transaksi'+chr(13)+mStrMsg, mtInformation,[mbOK],0);
                ActiveControl:=cxGrid1;
            end;

          end;


    end;
  end;
end;

procedure TFrMainSPP.ToolButton13Click(Sender: TObject);
begin
if Iscetak then
   // MainCetak(frxDBDataset1,frxDataPerusahaan,DM.QuCari,Dm.QuCari2,'Cetakspp','Vwperusahaan',QuMasterBPNOBUKTI.AsString,'Nota\Spp.fr3',frxReport1)
    MainCetak(frxDBCetak,frxDataPerusahaan,DM.QuCari,Dm.QuCari2,'Cetakspp','Vwperusahaan',QuMasterBPNOBUKTI.AsString,'Nota\NotaMarketingSJ.fr3',frxReport1)

else
   MsgTidakBerhakCetakData
end;

procedure TFrMainSPP.frxReport1AfterPrintReport(Sender: TObject);
begin
 //NilaiCetak('CetakKe','DbDebetNote',QuMasterNOBUKTI.AsString);
end;

procedure TFrMainSPP.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
  if CompareText(varName,'iduser')=0 then
        value:=IDUser;
end;

procedure TFrMainSPP.ToolButton14Click(Sender: TObject);
begin
 {with frxReport1 do
  begin
    LoadFromFile(ExtractFilePath(Application.ExeName)+'Nota\SPP.fr3');
    DesignReport;
  end;  }
  IF DataBersyarat(' select A.Nobukti,B.NoSPP From DbSPP A Left Outer Join dbSPBDet B on A.NOBUKTI=B.NoSPP   '+
                 ' where Isnull(B.NoSPP,'''')=''''  and A.nobukti=:0',[QuMasterBPNOBUKTI.ASstring],DM.Qucari)=true then
 begin
    BM := QuMasterBP.GetBookmark;
    begin
      pembatalan('DBSPP','IsBatal',QuMasterBPNOBUKTI.AsString,IDUser,MenuSPP);
      Begin
        ToolButton10.Click;
        if QuMasterBP.BookmarkValid(BM) then
        begin
          try
             QuMasterBP.GotoBookmark(BM);
          finally
             QuMasterBP.FreeBookmark(BM);
          end
        end else
        begin
          QuMasterBP.FreeBookmark(BM);
          QuMasterBP.Last;
        end;
      end;
    end;
 end
 else
 ShowMessage('Nomor SPP '+QuMasterBPNOBUKTI.AsString+' Sudah Terdaftar Di Surat Jalan') ;
 
 if QuMasterBPIsBatal.AsBoolean=true then
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

procedure TFrMainSPP.tvMasterCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 if QuMasterBPIsBatal.AsBoolean=true then
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

procedure TFrMainSPP.tvMasterCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
if AViewInfo.GridRecord.DisplayTexts[27]='True' then
   ACanvas.Brush.Color := Clred;
end;

procedure TFrMainSPP.tvDetailOutCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if AViewInfo.GridRecord.DisplayTexts[7]='True' then
   ACanvas.Brush.Color := Clred;
end;

procedure TFrMainSPP.ToolButton15Click(Sender: TObject);
begin
  {frxDBDataset1.DataSet.Close;
  frxDBDataset1.DataSet := QuUpdatedbbeli;
  with QuUpdatedbbeli do
  begin
    close;
    sql.Clear;
    sql.Add('Exec Cetakspp '+QuotedStr(Nobukti.Text));
    Prepared;
    open;
  end;
  frxDBDataset1.DataSet.Open; }
  with frxReport1 do
  begin
    LoadFromFile(ExtractFilePath(Application.ExeName)+'Nota\NotaMarketingSJ.fr3');
    DesignReport;
  end;
end;

end.
