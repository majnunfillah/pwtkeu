unit FrmMainSPB;

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
  cxGridDBBandedTableView;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrMainSPB = class(TForm)
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
    tvMasterOuturut: TcxGridDBBandedColumn;
    tvMasterOutkodebrg: TcxGridDBBandedColumn;
    tvMasterOutNamaBrg: TcxGridDBBandedColumn;
    tvMasterOutIsi: TcxGridDBBandedColumn;
    tvMasterOutSat_1: TcxGridDBBandedColumn;
    cxGridLevel3_0: TcxGridLevel;
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
    QuDetailBPNOBUKTI: TStringField;
    QuDetailBPURUT: TIntegerField;
    QuDetailBPNoSC: TStringField;
    QuDetailBPUrutSC: TIntegerField;
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
    tvMasterTglKirim: TcxGridDBBandedColumn;
    tvMasterNOSC: TcxGridDBBandedColumn;
    tvMasterNoPesan: TcxGridDBBandedColumn;
    tvMasterShippingMark: TcxGridDBBandedColumn;
    tvMasterNoLC: TcxGridDBBandedColumn;
    tvMasterCatatan: TcxGridDBBandedColumn;
    tvDetailNOBUKTI: TcxGridDBBandedColumn;
    tvDetailURUT: TcxGridDBBandedColumn;
    tvDetailISI: TcxGridDBBandedColumn;
    tvDetailNetW: TcxGridDBBandedColumn;
    tvDetailGrossW: TcxGridDBBandedColumn;
    tvDetailKetDetail: TcxGridDBBandedColumn;
    QuDetailBPJns_Kertas: TStringField;
    QuDetailBPUkr_Kertas: TStringField;
    tvDetailJns_Kertas: TcxGridDBBandedColumn;
    tvDetailUkr_Kertas: TcxGridDBBandedColumn;
    QuMasterBPNOBUKTI: TStringField;
    QuMasterBPNOURUT: TStringField;
    QuMasterBPTANGGAL: TDateTimeField;
    QuMasterBPNOSPP: TStringField;
    QuMasterBPKODECUSTSUPP: TStringField;
    QuMasterBPNamaCustSupp: TStringField;
    QuMasterBPNoPolKend: TStringField;
    QuMasterBPContainer: TStringField;
    QuMasterBPNoContainer: TStringField;
    QuMasterBPNoSeal: TStringField;
    QuMasterBPCatatan: TStringField;
    QuMasterBPIDUser: TStringField;
    ToolButton4: TToolButton;
    tvMasterOutQnt: TcxGridDBBandedColumn;
    tvMasterOutQntSPP: TcxGridDBBandedColumn;
    tvMasterOutQntSisa: TcxGridDBBandedColumn;
    tvMasterOutTglKirim: TcxGridDBBandedColumn;
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
    tvMasterTipe: TcxGridDBBandedColumn;
    tvMasterMyTipe: TcxGridDBBandedColumn;
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
    tvMasterOutQntStock: TcxGridDBBandedColumn;
    cxGridLevel3_1: TcxGridLevel;
    tvMasterOut1: TcxGridDBBandedTableView;
    QuMaster2: TADOQuery;
    DSMaster2: TDataSource;
    tvMasterOut1Nobukti: TcxGridDBBandedColumn;
    tvMasterOut1Tanggal: TcxGridDBBandedColumn;
    tvMasterOut1NamaCustSupp: TcxGridDBBandedColumn;
    tvMasterOut1kodebrg: TcxGridDBBandedColumn;
    tvMasterOut1NamaBrg: TcxGridDBBandedColumn;
    tvMasterOut1QntSPP: TcxGridDBBandedColumn;
    tvMasterOut1QntSPB: TcxGridDBBandedColumn;
    tvMasterOut1QntSisa: TcxGridDBBandedColumn;
    tvMasterOut1TglKirim: TcxGridDBBandedColumn;
    tvMasterOut1QntStock: TcxGridDBBandedColumn;
    tvMasterOut1Sat_1: TcxGridDBBandedColumn;
    QuMaster2KeyNoBukti: TStringField;
    QuMaster2Nobukti: TStringField;
    QuMaster2Tanggal: TDateTimeField;
    QuMaster2KodeCustSupp: TStringField;
    QuMaster2NamaCustSupp: TStringField;
    QuMaster2urut: TIntegerField;
    QuMaster2kodebrg: TStringField;
    QuMaster2NamaBrg: TStringField;
    QuMaster2Jns_Kertas: TStringField;
    QuMaster2Ukr_Kertas: TStringField;
    QuMaster2Sat_1: TStringField;
    QuMaster2Sat_2: TStringField;
    QuMaster2Isi: TBCDField;
    QuMaster2Qnt: TBCDField;
    QuMaster2Qnt2: TBCDField;
    QuMaster2QntSPB: TBCDField;
    QuMaster2Qnt2SPB: TBCDField;
    QuMaster2QntSisa: TBCDField;
    QuMaster2Qnt2Sisa: TBCDField;
    QuMaster2QntStock: TBCDField;
    QuMaster2Satuan: TStringField;
    QuMaster2Tglkirim: TDateTimeField;
    ToolButton12: TToolButton;
    QuMasterBPNeedOtorisasi: TBooleanField;
    QuMasterBPIsbatal: TBooleanField;
    QuMasterBPUserbatal: TStringField;
    QuMasterBPTglbatal: TDateTimeField;
    tvMasterDBBandedColumn1: TcxGridDBBandedColumn;
    tvMasterDBBandedColumn2: TcxGridDBBandedColumn;
    tvMasterDBBandedColumn3: TcxGridDBBandedColumn;
    ToolButton13: TToolButton;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3DBOSPP: TcxGridDBBandedTableView;
    Qudet1: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    DateTimeField1: TDateTimeField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField1: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    BCDField4: TBCDField;
    BCDField5: TBCDField;
    BCDField6: TBCDField;
    BCDField7: TBCDField;
    StringField9: TStringField;
    StringField10: TStringField;
    DateTimeField2: TDateTimeField;
    StringField11: TStringField;
    BCDField8: TBCDField;
    DsDet1: TDataSource;
    QuMasterNobukti: TStringField;
    QuMasterNAMACUSTSUPP: TStringField;
    QuMasterTanggal: TDateTimeField;
    QuMasterKodeCustSupp: TStringField;
    cxGrid3DBOSPPNobukti: TcxGridDBBandedColumn;
    cxGrid3DBOSPPTanggal: TcxGridDBBandedColumn;
    cxGrid3DBOSPPKodeCUstSupp: TcxGridDBBandedColumn;
    cxGrid3DBOSNamaCustSupp: TcxGridDBBandedColumn;
    tvMasterDBBandedColumn4: TcxGridDBBandedColumn;
    QuMasterBPnojurnal: TStringField;
    QuMasterNoso: TStringField;
    cxGrid3DBOSPPDBBandedColumn1: TcxGridDBBandedColumn;
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
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure tvMasterCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tvMasterCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGrid3DBOSPPFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
    procedure UpdatedbBeli;
  public
    { Public declarations }
    mPosisi : string;
    IsTambah, IsKoreksi, IsHapus, IsCetak, IsExcel: Boolean;
    ModalKoreksi : Boolean;
    SPBOL,mMainSPB_FlagMenu: Integer;
    MenuSPB : String;
    procedure ProsesPembuatanSPB;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrMainSPB: TFrMainSPB;
  S: array[0..255] of char;

implementation

uses MyModul, Myprocedure, MyGlobal, FrmBrows, FrmSetForm,
  FrmSPB, frmLogin, FrmSPBProses;

{$R *.dfm}

procedure TFrMainSPB.ProsesPembuatanSPB;
var i:Integer;
begin
   Application.CreateForm(TFrSPBProses,FrSPBProses);
   Case cxGrid3.ActiveLevel.Index of
     0 : FrSPBProses.mNOSO_SJProses:=QuMasterNoBukti.AsString;
     1 : FrSPBProses.mNOSO_SJProses:=QuMaster2NoBukti.AsString;
   end;
   FrSPBProses.ShowModal;
   if FrSPBProses.ModalResult=mrOK then
   begin
     if Assigned(FrSPB) then
       begin
        FrSPB.Show;
       end
     else
     begin
       gTempNoBukti := FrSPBProses.NoBukti;
       gTempNoBuktiSO:=FrSPBProses.mNOSO_SJProses;
       ModalKoreksi:=True;
       Application.CreateForm(TFrSPB,FrSPB);
       CekOtoritasMenu(IDUser,tag,FrSPB.Istambah,FrSPB.Ishapus,
                   FrSPB.Iskoreksi, FrSPB.isCetak, FrSPB.isExcel);
       FrSPB.Show;
     end;
   end;
end;


procedure TFrMainSPB.UpdatedbBeli;
begin
      { Close;
       Sql.Clear;
       SQL.Add('Update dbInvoicePL set isloce');
       SQL.Add('Where NoBukti='+QuotedStr(NoBukti.Text));
       Prepared;
       Parameters[0].Value := NoBL.Text;
       Parameters[1].Value := Beneficiary1.Lines.Text;
       Parameters[2].Value := Beneficiary2.Lines.Text;
       Parameters[3].Value := Beneficiary3.Lines.Text;
       Parameters[4].Value := ShipmentAdvice1.Lines.Text;
       Parameters[5].Value := ShipmentAdvice2.Lines.Text;
       Parameters[6].Value := ETADestination.Date;
       Parameters[7].Value := ToShipmentAdvice2.Lines.Text;
       Parameters[8].Value := FootNote.Lines.Text;
       Parameters[9].Value := IssuingBank.Lines.Text;
       Parameters[10].Value := PPN.ItemIndex;
       Parameters[11].Value := KodeVls.Text;
       Parameters[12].Value := Kurs.Value;
       Parameters[13].Value := DiskonP.Value;
       try
         ExecSQL;
       except
       end;
       //if mUbahHdDet=True then
       begin
         Close;
         SQL.Clear;
         SQL.Add('exec sp_UpdateInvoicePL '+QuotedStr(NoBukti.Text));
         ExecSQL;
       end;
       mUbahHd:=False; mUbahHdDet:=False;  }


end;


procedure TFrMainSPB.GetData(bulan,tahun:integer);
begin
  with QuMaster do
  begin
    Close;
    SQL.Strings[2]:='select @Tahun='+IntToStr(tahun)+', @Bulan='+IntToStr(bulan);
    Open;
  end;

  with QuMaster2 do
  begin
    Close;
    SQL.Strings[2]:='select @Tahun='+IntToStr(tahun)+', @Bulan='+IntToStr(bulan);
    Open;
  end;

  with QuMasterBP do
  begin
    Close;
    SQL.Strings[2]:='select @Tahun='+IntToStr(tahun)+', @Bulan='+IntToStr(bulan);
    Open;
  end;
end;

procedure TFrMainSPB.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrMainSPB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
           MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
  begin
    if Application.FindComponent('FrSPB')<>nil then
    begin
       MessageDlg('Modul '+FrSPB.Caption+' belum ditutup !',mtWarning,[mbok],0);
       Action := caNone
    end
    else Action:=caFree;
  end
  else
      Action:=caNone;
end;

procedure TFrMainSPB.FormDestroy(Sender: TObject);
begin
  FrMainSPB:=nil;
end;

procedure TFrMainSPB.FormShow(Sender: TObject);
begin
  ToolButton1.Enabled:=(dxPageControl1.ActivePageIndex=0);
  ToolButton2.Enabled:=(dxPageControl1.ActivePageIndex=1);
  ToolButton10.Click;
end;

procedure TFrMainSPB.ToolButton10Click(Sender: TObject);
begin
  GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
end;

procedure TFrMainSPB.ToolButton9Click(Sender: TObject);
begin
   Close;
end;



procedure TFrMainSPB.ToolButton1Click(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
   if IsTambah then
   begin
     if ((dxPageControl1.ActivePageIndex=0) and (((cxGrid3.ActiveLevel.Index=0) and
        (QuMaster.IsEmpty)) or ((cxGrid3.ActiveLevel.Index=1) and (QuMaster2.IsEmpty))) ) then
     begin
       MessageDlg('Outstanding SPP tidak ada!',mtWarning,[mbok],0);
     end else
     begin
         ProsesPembuatanSPB;
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
  end;{
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if IsTambah then
    begin
      gTempNoBukti:=QuMasterNobukti.AsString;
      if Assigned(FrSPB) then
         FrSPB.Show
      else
      begin
        ModalKoreksi:=False;
        Application.CreateForm(TFrSPB,FrSPB);
        CekOtoritasMenu(IDUser,tag,FrSPB.Istambah,FrSPB.Ishapus,
                        FrSPB.Iskoreksi, FrSPB.isCetak, FrSPB.isExcel);
        FrSPB.xModalKoreksi:=ModalKoreksi;
        FrSPB.Show;
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
  end;   }
end;

procedure TFrMainSPB.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrMainSPB.ToolButton2Click(Sender: TObject);
begin
  if dxPageControl1.ActivePageIndex=1 then
  Begin
        if IsLockPeriodenk(StrToInt(PeriodBln),StrToInt(PeriodThn))  then
        Begin
                  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
                  begin
                    if QuMasterBP.IsEmpty=False then
                    begin
                      if IsKoreksi then
                      begin
                        if not QuMasterBPNeedOtorisasi.Value then
                        begin
                          MsgNeedOtorisasi;
                          ActiveControl:= cxGrid1;
                        end
                        else
                        begin
                          gTempNoBukti:=QuMasterBPNOBUKTI.AsString;
                          if Assigned(FrSPB) then
                            FrSPB.Show
                          else
                          begin
                            ModalKoreksi:=True;
                            Application.CreateForm(TFrSPB,FrSPB);
                            CekOtoritasMenu(IDUser,Tag,FrSPB.IsTambah,FrSPB.IsHapus,
                                        FrSPB.IsKoreksi, FrSPB.IsCetak, FrSPB.IsExcel);
                            FrSPB.Show;
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
                  end
        end
        else
          begin
        //ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
           MsgPeriodeSudahDikunci;
          end;
   end               else
                  begin
                    MsgPeriodeSudahDikunci;
                    //ActiveControl:=cxGrd;
                  end;
        
end;

procedure TFrMainSPB.FormCreate(Sender: TObject);
begin
  dxPageControl1.ActivePageIndex:=1;
  Panel1.Color:=FrSetForm.PanelMain.Color;
  ToolBar1.Color:=FrSetForm.ToolBarMain.Color;
  FrMainSPB.Color:=FrSetForm.FormMain.Color;
  mMainSPB_FlagMenu := KodeForm;
  ToolButton1.Enabled:=(dxPageControl1.ActivePageIndex=0);
 ToolButton2.Enabled:=(dxPageControl1.ActivePageIndex=1);
end;

procedure TFrMainSPB.dxPageControl1Change(Sender: TObject);
begin
 ToolButton1.Enabled:=(dxPageControl1.ActivePageIndex=0);
 ToolButton2.Enabled:=(dxPageControl1.ActivePageIndex=1);
end;

procedure TFrMainSPB.tvMasterFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  if (mMainSPB_FlagMenu=0) and (QuMasterBPTipe.Value=False) then
     ToolButton2.Enabled :=  True
  else if (mMainSPB_FlagMenu=0) and (QuMasterBPTipe.Value=True) then
     ToolButton2.Enabled :=  False
  else if (mMainSPB_FlagMenu=1) and (QuMasterBPTipe.Value=False) then
     ToolButton2.Enabled :=  False
  else if (mMainSPB_FlagMenu=1) and (QuMasterBPTipe.Value=True) then
     ToolButton2.Enabled :=  True;
  with QuDetailBP do
  begin
    Close;
    Open;
  end;
end;

procedure TFrMainSPB.ToolButton4Click(Sender: TObject);
begin
  {if QuMasterBPIsOtorisasi1.Value then
  begin
    MessageDlg('No. Surat Jalan '+QuMasterBPNoBukti.AsString+' telah diotorisasi oleh user '+QuMasterBPOtoUser1.AsString+#13+'pada tanggal '+
               FormatDatetime('DD-MMM-YYYY',QuMasterBPTglOto1.AsDateTime)+' Jam '+FormatDateTime('HH:MM:SS',QuMasterBPTglOto1.AsDateTime)+#13+
               'Data tidak dapat diotorisasi lagi !!!',mtWarning,[mbok],0);
    ActiveControl := cxGrid1;
  end
  else}
  begin
    BM := QuMasterBP.GetBookmark;
    {frLogin := TFrLogin.Create(Self);
    frLogin.Label2.Caption :='Otorisasi';
    if frLogin.ShowModal=mrok then}
    begin
    Otorisasi('DBSPB',MenuSPB,IDUser,'',QuMasterBPNobukti.Value);
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

procedure TFrMainSPB.ToolButton12Click(Sender: TObject);
begin
    BM := QuMasterBP.GetBookmark;
{    frLogin := TFrLogin.Create(Self);
    frLogin.Label2.Caption :='Otorisasi';
    if frLogin.ShowModal=mrok then }
    begin
      BatalOtorisasi('DBSPB',MenuSPB,IDUser,'',QuMasterBPNobukti.Value);
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

procedure TFrMainSPB.ToolButton13Click(Sender: TObject);
begin
IF DataBersyarat(' select A.Nobukti,B.Nospb NoRSPB,C.NOspb NOinvoice from dbSPB A  '+
                ' left Outer Join DBRSPBDet B on A.NoBukti = B.NoSPB   '+
                ' Left Outer Join dbInvoicePLDet C on A.NoBukti=C.NoSPB   '+
                ' where ISNULL(B.NoSPB,'''')='''' and ISNULL(C.Nospb,'''')=''''  and A.nobukti=:0',[QuMasterBPNOBUKTI.ASstring],DM.Qucari)=true then
 begin
    BM := QuMasterBP.GetBookmark;
    begin
      pembatalan('DBSPB','IsBatal',QuMasterBPNOBUKTI.AsString,IDUser,MenuSPB);
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
 ShowMessage('Nomor SPB '+QuMasterBPNOBUKTI.AsString+' Sudah Terdaftar Dalam invoice / Retur Surat Jalan') ;
 if QuMasterBPIsBatal.AsBoolean=true then
   begin
     ToolButton13.Caption:='Aktif' ;
     Xbatal:=False;
   End
  else
   begin
      ToolButton13.Caption:='Batal' ;
      Xbatal:=true;
   end;
end;

procedure TFrMainSPB.tvMasterCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 if QuMasterBPIsBatal.AsBoolean=true then
     begin
       ToolButton13.Caption:='Aktif' ;
       Xbatal:=False;
     End
   else
     begin
        ToolButton13.Caption:='Batal' ;
        Xbatal:=true;
     end;
end;

procedure TFrMainSPB.tvMasterCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
if AViewInfo.GridRecord.DisplayTexts[28]='True' then
   ACanvas.Brush.Color := Clred;
end;

procedure TFrMainSPB.cxGrid3DBOSPPFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
with Qudet1 do
  begin
    Close;
    SQL.Strings[2]:='select @Tahun='+PeriodThn+', @Bulan='+PeriodBln;
    Open;

  end;
end;

end.
