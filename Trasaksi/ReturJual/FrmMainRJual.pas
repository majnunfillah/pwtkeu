Unit FrmMainRJual;

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
  cxGridDBBandedTableView, CxExportGrid4link, frxClass, frxDBSet ;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrMainRJual = class(TForm)
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
    QuMasterBP: TADOQuery;
    DsMasterBP: TDataSource;
    QuDetailBP: TADOQuery;
    DsDetailBP: TDataSource;
    ToolButton4: TToolButton;
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBBandedTableView;
    tvDetail: TcxGridDBBandedTableView;
    tvDetailNOBUKTI: TcxGridDBBandedColumn;
    tvDetailURUT: TcxGridDBBandedColumn;
    tvDetailKODEBRG: TcxGridDBBandedColumn;
    tvDetailNamaBrg: TcxGridDBBandedColumn;
    tvDetailQNT2: TcxGridDBBandedColumn;
    tvDetailSAT_2: TcxGridDBBandedColumn;
    tvDetailQNT: TcxGridDBBandedColumn;
    tvDetailSAT_1: TcxGridDBBandedColumn;
    tvDetailPPN: TcxGridDBBandedColumn;
    tvDetailDISC: TcxGridDBBandedColumn;
    tvDetailKURS: TcxGridDBBandedColumn;
    tvDetailISI: TcxGridDBBandedColumn;
    tvDetailHARGA: TcxGridDBBandedColumn;
    tvDetailDISCTOT: TcxGridDBBandedColumn;
    tvDetailDiscP1: TcxGridDBBandedColumn;
    tvDetailDiscRp1: TcxGridDBBandedColumn;
    tvDetailDiscP2: TcxGridDBBandedColumn;
    tvDetailDiscRp2: TcxGridDBBandedColumn;
    tvDetailDiscP3: TcxGridDBBandedColumn;
    tvDetailDiscRp3: TcxGridDBBandedColumn;
    tvDetailDiscP4: TcxGridDBBandedColumn;
    tvDetailDiscRp4: TcxGridDBBandedColumn;
    tvDetailBYANGKUT: TcxGridDBBandedColumn;
    tvDetailHRGNETTO: TcxGridDBBandedColumn;
    tvDetailNDISKON: TcxGridDBBandedColumn;
    tvDetailSUBTOTAL: TcxGridDBBandedColumn;
    tvDetailNDPP: TcxGridDBBandedColumn;
    tvDetailNPPN: TcxGridDBBandedColumn;
    tvDetailNNET: TcxGridDBBandedColumn;
    tvDetailSUBTOTALRp: TcxGridDBBandedColumn;
    tvDetailNDPPRp: TcxGridDBBandedColumn;
    tvDetailNPPNRp: TcxGridDBBandedColumn;
    tvDetailNNETRp: TcxGridDBBandedColumn;
    tvDetailNOPBL: TcxGridDBBandedColumn;
    tvDetailURUTPBL: TcxGridDBBandedColumn;
    tvDetailNOPO: TcxGridDBBandedColumn;
    tvDetailURUTPO: TcxGridDBBandedColumn;
    tvDetailKeterangan: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    QuMasterBPNOBUKTI: TStringField;
    QuMasterBPNOURUT: TStringField;
    QuMasterBPTANGGAL: TDateTimeField;
    QuMasterBPTglJatuhTempo: TDateTimeField;
    QuMasterBPNOSPP: TStringField;
    QuMasterBPTglSPP: TDateTimeField;
    QuMasterBPNoInvoice: TStringField;
    QuMasterBPTglInvoice: TDateTimeField;
    QuMasterBPKODECUSTSUPP: TStringField;
    QuMasterBPNamaCustSupp: TStringField;
    QuMasterBPNOSPB: TStringField;
    QuMasterBPTGLSPB: TDateTimeField;
    QuMasterBPKODEVLS: TStringField;
    QuMasterBPIDUser: TStringField;
    QuMasterBPIsLokal: TBooleanField;
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
    tvMasterNOBUKTI: TcxGridDBBandedColumn;
    tvMasterTANGGAL: TcxGridDBBandedColumn;
    tvMasterNOSPP: TcxGridDBBandedColumn;
    tvMasterTglSPP: TcxGridDBBandedColumn;
    tvMasterNoInvoice: TcxGridDBBandedColumn;
    tvMasterTglInvoice: TcxGridDBBandedColumn;
    tvMasterNamaCustSupp: TcxGridDBBandedColumn;
    tvMasterNOSPB: TcxGridDBBandedColumn;
    tvMasterTGLSPB: TcxGridDBBandedColumn;
    tvMasterIDUser: TcxGridDBBandedColumn;
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
    ToolButton11: TToolButton;
    tvMasterNOSC: TcxGridDBBandedColumn;
    tvMasterTglSC: TcxGridDBBandedColumn;
    QuMaster: TADOQuery;
    dsQuMaster: TDataSource;
    QuDetail: TADOQuery;
    dsQuDetail: TDataSource;
    tvMaster1: TcxGridDBBandedTableView;
    tvDetail1: TcxGridDBBandedTableView;
    tvMaster1NOBUKTI: TcxGridDBBandedColumn;
    tvMaster1TANGGAL: TcxGridDBBandedColumn;
    tvMaster1NOSPP: TcxGridDBBandedColumn;
    tvMaster1TglSPP: TcxGridDBBandedColumn;
    tvMaster1NoInvoice: TcxGridDBBandedColumn;
    tvMaster1TglInvoice: TcxGridDBBandedColumn;
    tvMaster1NamaCustSupp: TcxGridDBBandedColumn;
    tvMaster1NOSPB: TcxGridDBBandedColumn;
    tvMaster1TGLSPB: TcxGridDBBandedColumn;
    tvMaster1IDUser: TcxGridDBBandedColumn;
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
    tvMaster1NOSC: TcxGridDBBandedColumn;
    tvMaster1TglSC: TcxGridDBBandedColumn;
    QuDetailBPNOBUKTI: TStringField;
    QuDetailBPURUT: TIntegerField;
    QuDetailBPKODEBRG: TStringField;
    QuDetailBPPPN: TWordField;
    QuDetailBPDISC: TBCDField;
    QuDetailBPKURS: TBCDField;
    QuDetailBPQNT: TBCDField;
    QuDetailBPQNT2: TBCDField;
    QuDetailBPSAT_1: TStringField;
    QuDetailBPSAT_2: TStringField;
    QuDetailBPISI: TBCDField;
    QuDetailBPHARGA: TBCDField;
    QuDetailBPDiscP1: TBCDField;
    QuDetailBPDiscRp1: TBCDField;
    QuDetailBPDiscP2: TBCDField;
    QuDetailBPDiscRp2: TBCDField;
    QuDetailBPDiscP3: TBCDField;
    QuDetailBPDiscRp3: TBCDField;
    QuDetailBPDiscP4: TBCDField;
    QuDetailBPDiscRp4: TBCDField;
    QuDetailBPDISCTOT: TBCDField;
    QuDetailBPBYANGKUT: TBCDField;
    QuDetailBPHRGNETTO: TBCDField;
    QuDetailBPNDISKON: TBCDField;
    QuDetailBPSUBTOTAL: TBCDField;
    QuDetailBPNDPP: TBCDField;
    QuDetailBPNPPN: TBCDField;
    QuDetailBPNNET: TBCDField;
    QuDetailBPSUBTOTALRp: TBCDField;
    QuDetailBPNDPPRp: TBCDField;
    QuDetailBPNPPNRp: TBCDField;
    QuDetailBPNNETRp: TBCDField;
    QuDetailBPNOInvoice: TStringField;
    QuDetailBPURUTInvoice: TIntegerField;
    QuDetailBPKeterangan: TStringField;
    QuDetailBPNamaBrg: TStringField;
    QuDetailBPQntTukar: TBCDField;
    QuDetailBPQnt2Tukar: TBCDField;
    QuDetailBPnetW: TBCDField;
    QuDetailBPGrossW: TBCDField;
    QuDetailBPNamaProduk: TStringField;
    QuDetailNOBUKTI: TStringField;
    QuDetailURUT: TIntegerField;
    QuDetailKODEBRG: TStringField;
    QuDetailPPN: TWordField;
    QuDetailDISC: TBCDField;
    QuDetailKURS: TBCDField;
    QuDetailQNT: TBCDField;
    QuDetailQNT2: TBCDField;
    QuDetailSAT_1: TStringField;
    QuDetailSAT_2: TStringField;
    QuDetailISI: TBCDField;
    QuDetailHARGA: TBCDField;
    QuDetailDiscP1: TBCDField;
    QuDetailDiscRp1: TBCDField;
    QuDetailDiscP2: TBCDField;
    QuDetailDiscRp2: TBCDField;
    QuDetailDiscP3: TBCDField;
    QuDetailDiscRp3: TBCDField;
    QuDetailDiscP4: TBCDField;
    QuDetailDiscRp4: TBCDField;
    QuDetailDISCTOT: TBCDField;
    QuDetailBYANGKUT: TBCDField;
    QuDetailHRGNETTO: TBCDField;
    QuDetailNDISKON: TBCDField;
    QuDetailSUBTOTAL: TBCDField;
    QuDetailNDPP: TBCDField;
    QuDetailNPPN: TBCDField;
    QuDetailNNET: TBCDField;
    QuDetailSUBTOTALRp: TBCDField;
    QuDetailNDPPRp: TBCDField;
    QuDetailNPPNRp: TBCDField;
    QuDetailNNETRp: TBCDField;
    QuDetailNOInvoice: TStringField;
    QuDetailURUTInvoice: TIntegerField;
    QuDetailKeterangan: TStringField;
    QuDetailNamaBrg: TStringField;
    QuDetailQntTukar: TBCDField;
    QuDetailQnt2Tukar: TBCDField;
    QuDetailnetW: TBCDField;
    QuDetailGrossW: TBCDField;
    QuDetailNamaProduk: TStringField;
    tvDetailQntTukar: TcxGridDBBandedColumn;
    tvDetailQnt2Tukar: TcxGridDBBandedColumn;
    tvDetailnetW: TcxGridDBBandedColumn;
    tvDetailGrossW: TcxGridDBBandedColumn;
    tvDetailNamaProduk: TcxGridDBBandedColumn;
    tvDetail1KODEBRG: TcxGridDBBandedColumn;
    tvDetail1QNT: TcxGridDBBandedColumn;
    tvDetail1QNT2: TcxGridDBBandedColumn;
    tvDetail1SAT_1: TcxGridDBBandedColumn;
    tvDetail1SAT_2: TcxGridDBBandedColumn;
    tvDetail1HARGA: TcxGridDBBandedColumn;
    tvDetail1SUBTOTAL: TcxGridDBBandedColumn;
    tvDetail1Keterangan: TcxGridDBBandedColumn;
    tvDetail1NamaBrg: TcxGridDBBandedColumn;
    tvDetail1QntTukar: TcxGridDBBandedColumn;
    tvDetail1Qnt2Tukar: TcxGridDBBandedColumn;
    tvDetail1netW: TcxGridDBBandedColumn;
    tvDetail1GrossW: TcxGridDBBandedColumn;
    QuMasterNOBUKTI: TStringField;
    QuMasterNOURUT: TStringField;
    QuMasterTANGGAL: TDateTimeField;
    QuMasterTglJatuhTempo: TDateTimeField;
    QuMasterNOSC: TStringField;
    QuMasterTglSC: TDateTimeField;
    QuMasterNOSPP: TStringField;
    QuMasterTglSPP: TDateTimeField;
    QuMasterNoInvoice: TStringField;
    QuMasterTglInvoice: TDateTimeField;
    QuMasterKODECUSTSUPP: TStringField;
    QuMasterNamaCustSupp: TStringField;
    QuMasterNOSPB: TStringField;
    QuMasterTGLSPB: TDateTimeField;
    QuMasterKODEVLS: TStringField;
    QuMasterIDUser: TStringField;
    QuMasterIsLokal: TBooleanField;
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
    QuMasterBPNOSO: TStringField;
    QuMasterBPTglSO: TDateTimeField;
    ToolButton12: TToolButton;
    frxDBCetak: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    ToolButton13: TToolButton;
    QuMasterBPNeedOtorisasi: TBooleanField;
    QuMasterBPIsBatal: TBooleanField;
    QuMasterBPuserbatal: TStringField;
    QuMasterBPTglbatal: TDateTimeField;
    tvMasterDBIsbatal: TcxGridDBBandedColumn;
    tvMasterDBUserbatal: TcxGridDBBandedColumn;
    tvMasterDBTglBatal: TcxGridDBBandedColumn;
    ToolButton14: TToolButton;
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
    procedure ToolButton4Click(Sender: TObject);
    procedure tvMasterFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure ShowGrid1Click(Sender: TObject);
    procedure ShowHeader1Click(Sender: TObject);
    procedure Show1Click(Sender: TObject);
    procedure AutoFilter1Click(Sender: TObject);
    procedure MultiSelect1Click(Sender: TObject);
    procedure ExportExcel1Click(Sender: TObject);
    procedure tvMaster1FocusedRecordChanged(Sender: TcxCustomGridTableView;
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
  private
    { Private declarations }
  public
    { Public declarations }
    mPosisi : string;
    IsTambah, IsKoreksi, IsHapus, IsCetak, IsExcel, ModalKoreksi: Boolean;
    mMainRInvoicePL_KodeForm: Byte;
    BM : TBookmark;
    RInvoicePLOL: Integer;
    MenuRInvoicePL : String;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrMainRJual: TFrMainRJual;
  S: array[0..255] of char;

implementation

uses MyModul, Myprocedure, MyGlobal, FrmBrows, FrmRJual, frmLogin;

{$R *.dfm}

procedure TFrMainRJual.GetData(bulan,tahun:integer);
begin
  with QuMasterBP do
  begin
    Close;
    SQL.Strings[2]:='select @Tahun='+IntToStr(tahun)+', @Bulan='+IntToStr(bulan)+', @Flagmenu='+IntToStr(mMainRInvoicePL_KodeForm);
    Open;
  end;
end;

procedure TFrMainRJual.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrMainRJual.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
           MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
  begin
    if Application.FindComponent('FrRJual')<>nil then
    begin
       MessageDlg('Modul '+FrRJual.Caption+' belum ditutup !',mtWarning,[mbok],0);
       Action := caNone
    end
    else if Application.FindComponent('FrRJual')<>nil then
     begin
       MessageDlg('Modul '+FrRJual.Caption+' belum ditutup !',mtWarning,[mbok],0);
       Action := caNone
    end
    else Action:=caFree;
  end
  else
      Action:=caNone;
end;

procedure TFrMainRJual.FormDestroy(Sender: TObject);
begin
  FrMainRJual:=nil;
end;

procedure TFrMainRJual.FormShow(Sender: TObject);
begin
  mMainRInvoicePL_KodeForm:=KodeForm;
  ToolButton10.Click;
end;

procedure TFrMainRJual.ToolButton10Click(Sender: TObject);
begin
  GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
end;

procedure TFrMainRJual.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrMainRJual.ToolButton1Click(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if IsTambah then
    begin
     if Assigned(FrRJual) then
         FrRJual.Show
      else
      begin
        ModalKoreksi:=False;
        Application.CreateForm(TFrRJual,FrRJual);
        CekOtoritasMenu(IDUser,tag,FrRJual.Istambah,FrRJual.Ishapus,
                       FrRJual.Iskoreksi, FrRJual.isCetak, FrRJual.isExcel);
        FrRJual.xModalKoreksi := ModalKoreksi;
        FrRJual.Show;
      end;
    end
    else
    begin
      MsgTidakBerhakTambahData;
    end;
  end
  else
  begin
    MsgPeriodeSudahDikunci;
  end;
end;

procedure TFrMainRJual.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrMainRJual.ToolButton2Click(Sender: TObject);
var isLanjut : Boolean;
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if IsKoreksi then
    begin
      if cxGrid1.ActiveLevel.Index=0 then
      begin
        gTempNoBukti:=QuMasterBPNOBUKTI.AsString;
        isLanjut := not QuMasterBP.IsEmpty;
      end
      else
      if cxGrid1.ActiveLevel.Index=1 then
      begin
        gTempNoBukti:=QuMasterNOBUKTI.AsString;
        isLanjut := Not QuMaster.IsEmpty;
      end;
      if isLanjut then
      begin
        if not QuMasterBPNeedOtorisasi.Value then
        begin
          MsgNeedOtorisasi;
          ActiveControl:= cxGrid1;
        end
        else
        begin
          if Assigned(FrRJual) then
            FrRJual.Show
          else
          begin
            ModalKoreksi:=True;
            Application.CreateForm(TFrRJual,FrRJual);
            CekOtoritasMenu(IDUser,Tag,FrRJual.IsTambah,FrRJual.IsHapus,
                        FrRJual.IsKoreksi, FrRJual.IsCetak, FrRJual.IsExcel);
            FrRJual.Show;
          end;
        end;
      end else
      begin
        MsgKoreksiDataKosong;
        ActiveControl:=cxGrid1;
      end;
    end
    else
      begin
        MsgTidakBerhakKoreksiData;
        ActiveControl:=cxGrid1;
      end;
  end else
  begin
    MsgPeriodeSudahDikunci;
    ActiveControl:=cxGrid1;
  end;
end;

procedure TFrMainRJual.FormCreate(Sender: TObject);
begin
  cxGrid1.ActiveLevel.Index := 0;
  mMainRInvoicePL_KodeForm := KodeForm;
end;

procedure TFrMainRJual.ToolButton4Click(Sender: TObject);
begin
  {if QuMasterIsOtorisasi1.Value then
  begin
    MessageDlg('No. Invoice Retur Jual '+QuMasterBPNOBUKTI.AsString+' telah diotorisasi oleh user '+QuMasterBPOtoUser1.AsString+#13+'pada tanggal '+
               FormatDatetime('DD-MMM-YYYY',QuMasterBPTglOto1.AsDateTime)+' Jam '+FormatDateTime('HH:MM:SS',QuMasterBPTglOto1.AsDateTime)+#13+
               'Data tidak dapat diotorisasi lagi !!!',mtWarning,[mbok],0);
    ActiveControl := cxGrid1;
  end
  else  }
  begin
    BM := QuMasterBP.GetBookmark;
    {frLogin := TFrLogin.Create(Self);
    frLogin.Label2.Caption :='Otorisasi';
    if frLogin.ShowModal=mrok then }
    begin
      Otorisasi('DBRInvoicePL',MenuRInvoicePL,IDUser,'',QuMasterBPNobukti.Value);
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

procedure TFrMainRJual.tvMasterFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  with QuDetailBP do
  begin
    close;
    open;
  end;
end;

procedure TFrMainRJual.ShowGrid1Click(Sender: TObject);
begin
  ShowGrid1.Checked := not ShowGrid1.Checked;
  if ShowGrid1.Checked then
  begin
    tvMaster.OptionsView.GridLines := glBoth;
    tvMaster1.OptionsView.GridLines := glBoth;
  end
  else
  begin
    tvMaster.OptionsView.GridLines := glNone;
    tvMaster1.OptionsView.GridLines := glNone;
  end;
end;

procedure TFrMainRJual.ShowHeader1Click(Sender: TObject);
begin
  ShowHeader1.Checked := not ShowHeader1.Checked;
  tvMaster.OptionsView.Header := ShowHeader1.Checked;
  tvMaster1.OptionsView.Header := ShowHeader1.Checked;
end;

procedure TFrMainRJual.Show1Click(Sender: TObject);
begin
  Show1.Checked := not Show1.Checked;
  tvMaster.OptionsView.Footer := Show1.Checked;
  tvMaster1.OptionsView.Footer := Show1.Checked;
end;

procedure TFrMainRJual.AutoFilter1Click(Sender: TObject);
begin
  AutoFilter1.Checked := not AutoFilter1.Checked;
  tvMaster.OptionsCustomize.ColumnFiltering := AutoFilter1.Checked;
  tvMaster1.OptionsCustomize.ColumnFiltering := AutoFilter1.Checked;
end;

procedure TFrMainRJual.MultiSelect1Click(Sender: TObject);
begin
  MultiSelect1.Checked := not MultiSelect1.Checked;
  tvMaster.OptionsSelection.MultiSelect := MultiSelect1.Checked;
  tvMaster1.OptionsSelection.MultiSelect := MultiSelect1.Checked;
end;

procedure TFrMainRJual.ExportExcel1Click(Sender: TObject);
begin
  if IsExcel then
  begin
    SaveDialog.FileName := Caption;
    if SaveDialog.Execute then
    begin
      ExportGrid4ToExcel(SaveDialog.FileName, cxGrid1, False, True, True);
      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
      LoggingData(IDUser,'Export to excel',FrMainRJual.Caption,'','export to excel dengan nama file : '+SaveDialog.FileName);
    end
  end
  else
  begin
      ShowMessage('Anda tidak berhak Mengeksport Excel');
  end;
end;

procedure TFrMainRJual.tvMaster1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  with QuDetail do
  begin
    close;
    open;
  end;
end;

procedure TFrMainRJual.ToolButton12Click(Sender: TObject);
begin
    BM := QuMasterBP.GetBookmark;
    {frLogin := TFrLogin.Create(Self);
    frLogin.Label2.Caption :='Otorisasi';
    if frLogin.ShowModal=mrok then }
    begin
      BatalOtorisasi('DBRInvoicePL',MenuRInvoicePL,IDUser,'',QuMasterBPNobukti.Value);
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

procedure TFrMainRJual.ToolButton13Click(Sender: TObject);
begin
if Iscetak then
    MainCetak(frxDBCetak,frxDBDataset1,DM.QuCari,Dm.QuCari2,'CetakRPenjualanInvoice','Vwperusahaan',QuMasterBPNOBUKTI.AsString,'Nota\NotaRPJ.fr3',frxReport1)
else
   MsgTidakBerhakCetakData
end;

procedure TFrMainRJual.frxReport1AfterPrintReport(Sender: TObject);
begin
  NilaiCetak('CetakKe','DbDebetNote',QuMasterBPNOBUKTI.AsString);
end;

procedure TFrMainRJual.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
if CompareText(varName,'iduser')=0 then
        value:=IDUser;
end;

procedure TFrMainRJual.ToolButton14Click(Sender: TObject);
begin
IF DataBersyarat(' select A.nobukti,B.nobukti from DBRInvoicePL A Left Outer Join dbSPBRJualDet B on A.NOBUKTI=B.NoRPJ  '+
                 ' where B.Nobukti Is not NUll and A.nobukti=:0',[QuMasterBPNOBUKTI.ASstring],DM.Qucari)=true then
 begin
    BM := QuMaster.GetBookmark;
    begin
      pembatalan('DBRInvoicePL','IsBatal',QuMasterBPNoBukti.AsString,IDUser,MenuRInvoicePL);
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
 ShowMessage('Nomor PO '+QuMasterBPNoBukti.AsString+' Sudah Terdaftar Dalam Penerimaan Gudang / SO') ;
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

procedure TFrMainRJual.tvMasterCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 if QuMasterBpIsBatal.AsBoolean=true then
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

procedure TFrMainRJual.tvMasterCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if AViewInfo.GridRecord.DisplayTexts[27]='True' then
   ACanvas.Brush.Color := Clred;
end;

end.
