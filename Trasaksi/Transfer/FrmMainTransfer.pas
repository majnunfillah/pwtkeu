unit FrmMainTransfer;

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
  cxGridDBBandedTableView, frxClass, frxDBSet, frxRich;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrMainTransfer = class(TForm)
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
    tvDetailKODEBRG: TcxGridDBBandedColumn;
    tvDetailQNT: TcxGridDBBandedColumn;
    tvDetailQNT2: TcxGridDBBandedColumn;
    tvDetailSAT_1: TcxGridDBBandedColumn;
    tvDetailSAT_2: TcxGridDBBandedColumn;
    tvDetailNamaBrg: TcxGridDBBandedColumn;
    tvDetailNOBUKTI: TcxGridDBBandedColumn;
    tvDetailURUT: TcxGridDBBandedColumn;
    tvDetailISI: TcxGridDBBandedColumn;
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
    StringField11: TStringField;
    DateTimeField2: TDateTimeField;
    DsDetail: TDataSource;
    tvDetailOutkodebrg: TcxGridDBBandedColumn;
    tvDetailOutNamaBrg: TcxGridDBBandedColumn;
    tvDetailOutSat_1: TcxGridDBBandedColumn;
    tvDetailOutSat_2: TcxGridDBBandedColumn;
    tvDetailOutQnt: TcxGridDBBandedColumn;
    tvDetailOutQnt2: TcxGridDBBandedColumn;
    tvDetailOutQntSPP: TcxGridDBBandedColumn;
    tvDetailOutQnt2SPP: TcxGridDBBandedColumn;
    tvDetailOutQntSisa: TcxGridDBBandedColumn;
    tvDetailOutQnt2Sisa: TcxGridDBBandedColumn;
    tvDetailOutJns_Kertas: TcxGridDBBandedColumn;
    tvDetailOutUkr_Kertas: TcxGridDBBandedColumn;
    QuMasterNobukti: TStringField;
    QuMasterTanggal: TDateTimeField;
    QuMasterKodeCustSupp: TStringField;
    QuMasterNamaCustSupp: TStringField;
    QuMasterNopo: TStringField;
    QuMasterTGlPO: TDateTimeField;
    tvMasterOutNopo: TcxGridDBBandedColumn;
    tvMasterOutTGlPO: TcxGridDBBandedColumn;
    QuDetailGSM: TBCDField;
    tvDetailOutGSM: TcxGridDBBandedColumn;
    QuMasterBPnobukti: TStringField;
    QuMasterBPNoUrut: TStringField;
    QuMasterBPTanggal: TDateTimeField;
    QuDetailBPNOBUKTI: TStringField;
    QuDetailBPURUT: TIntegerField;
    QuDetailBPKODEBRG: TStringField;
    QuDetailBPNAMABRG: TStringField;
    QuDetailBPJns_Kertas: TStringField;
    QuDetailBPUkr_Kertas: TStringField;
    QuDetailBPQNT: TBCDField;
    QuDetailBPQNT2: TBCDField;
    QuDetailBPSAT_1: TStringField;
    QuDetailBPSAT_2: TStringField;
    QuDetailBPISI: TBCDField;
    tvMasterKeterangan: TcxGridDBBandedColumn;
    QuMasterBPKeterangan: TStringField;
    QuDetailBPGdgAsal: TStringField;
    QuDetailBPGdgTujuan: TStringField;
    QuDetailBPNamagdgAsal: TStringField;
    QuDetailBPNamagdgTujuan: TStringField;
    tvDetailGdgAsal: TcxGridDBBandedColumn;
    tvDetailGdgTujuan: TcxGridDBBandedColumn;
    tvDetailNamagdgAsal: TcxGridDBBandedColumn;
    tvDetailNamagdgTujuan: TcxGridDBBandedColumn;
    QuDetailBPGSM: TBCDField;
    tvDetailGSM: TcxGridDBBandedColumn;
    QuMasterBPNoPenyerahan: TStringField;
    tvMasterNoPenyerahan: TcxGridDBBandedColumn;
    ToolButton4: TToolButton;
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
    ToolButton12: TToolButton;
    QuMasterBPNeedOtorisasi: TBooleanField;
    QuUpdatedbbeli: TADOQuery;
    frxReport1: TfrxReport;
    frxRichObject1: TfrxRichObject;
    frxDBDataset2: TfrxDBDataset;
    frxDBCetak: TfrxDBDataset;
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
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPosisi,Menu : string;
    IsTambah, IsKoreksi, IsHapus, IsCetak, IsExcel: Boolean;
    ModalKoreksi : Boolean;
    mMainTransfer_FlagMenu: Integer;
    TransferOL: Integer;
    MenuTransfer : String;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrMainTransfer: TFrMainTransfer;
  S: array[0..255] of char;

implementation

uses MyModul, Myprocedure, MyGlobal, FrmBrows, FrmSetForm,
  FrmTransfer, frmLogin;

{$R *.dfm}

procedure TFrMainTransfer.GetData(bulan,tahun:integer);
begin
  {with QuMaster do
  begin
    Close;
    Open;
  end;}
  with QuMasterBP do
  begin
    Close;
    SQL.Strings[2]:='select @Tahun='+IntToStr(tahun)+', @Bulan='+IntToStr(bulan);
    Open;
  end;
end;

procedure TFrMainTransfer.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrMainTransfer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
           MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
  begin
    if Application.FindComponent('FrTransfer')<>nil then
    begin
       MessageDlg('Modul '+FrTransfer.Caption+' belum ditutup !',mtWarning,[mbok],0);
       Action := caNone
    end
    else Action:=caFree;
  end
  else
      Action:=caNone;
end;

procedure TFrMainTransfer.FormDestroy(Sender: TObject);
begin
  FrMainTransfer:=nil;
end;

procedure TFrMainTransfer.FormShow(Sender: TObject);
begin
  {ToolButton1.Enabled:=(dxPageControl1.ActivePageIndex=0);
  ToolButton2.Enabled:=(dxPageControl1.ActivePageIndex=1);}
  ToolButton10.Click;
end;

procedure TFrMainTransfer.ToolButton10Click(Sender: TObject);
begin
  GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
end;

procedure TFrMainTransfer.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrMainTransfer.ToolButton1Click(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if IsTambah then
    begin
      //gTempNoBukti:=QuMasterNobukti.AsString;
      if Assigned(FrTransfer) then
         FrTransfer.Show
      else
      begin
        ModalKoreksi:=False;
        Application.CreateForm(TFrTransfer,FrTransfer);
        CekOtoritasMenu(IDUser,tag,FrTransfer.Istambah,FrTransfer.Ishapus,
                        FrTransfer.Iskoreksi, FrTransfer.isCetak, FrTransfer.isExcel);
        FrTransfer.xModalKoreksi := ModalKoreksi;
        FrTransfer.Show;
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
  end;
end;

procedure TFrMainTransfer.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrMainTransfer.ToolButton2Click(Sender: TObject);
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
                        if Assigned(FrTransfer) then
                          FrTransfer.Show
                        else
                        begin
                          ModalKoreksi:=True;
                          Application.CreateForm(TFrTransfer,FrTransfer);
                          CekOtoritasMenu(IDUser,Tag,FrTransfer.IsTambah,FrTransfer.IsHapus,
                                      FrTransfer.IsKoreksi, FrTransfer.IsCetak, FrTransfer.IsExcel);
                          FrTransfer.Show;
                        end;
                      end;
                    end
                    else
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
                else
                begin
              //ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
                 MsgPeriodeSudahDikunci;
                end;
        end
                else
                begin
                  MsgPeriodeSudahDikunci;
                  //ActiveControl:=cxGrd;
                end;
  end;
end;

procedure TFrMainTransfer.FormCreate(Sender: TObject);
begin
  //dxPageControl1.ActivePageIndex:=1;
  Panel1.Color:=FrSetForm.PanelMain.Color;
  ToolBar1.Color:=FrSetForm.ToolBarMain.Color;
  FrMainTransfer.Color:=FrSetForm.FormMain.Color;
end;

procedure TFrMainTransfer.dxPageControl1Change(Sender: TObject);
begin
 {ToolButton1.Enabled:=(dxPageControl1.ActivePageIndex=0);
 ToolButton2.Enabled:=(dxPageControl1.ActivePageIndex=1); }
end;

procedure TFrMainTransfer.tvMasterFocusedRecordChanged(
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

procedure TFrMainTransfer.tvMasterOutFocusedRecordChanged(
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

procedure TFrMainTransfer.ToolButton4Click(Sender: TObject);
begin
{  if QuMasterBPIsOtorisasi1.Value then
  begin
    MessageDlg('No. Transfer : '+QuMasterBPNoBukti.AsString+' telah diotorisasi oleh user '+QuMasterBPOtoUser1.AsString+#13+'pada tanggal '+
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
      Otorisasi('DBTransfer',MenuTransfer,IDUser,'',QuMasterBPNobukti.Value);
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

procedure TFrMainTransfer.ToolButton12Click(Sender: TObject);
begin
  BM := QuMasterBP.GetBookmark;
  BatalOtorisasi('DBTransfer',MenuTransfer,IDUser,'',QuMasterBPNobukti.Value);
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

procedure TFrMainTransfer.ToolButton3Click(Sender: TObject);
begin
    frxDBCetak.DataSet.Close;
    frxDBCetak.DataSet := QuUpdatedbbeli;
    //frxDBDataset2.DataSet.Close;
    //frxDBDataset2.DataSet := QuBeli1;
    with QuUpdatedbbeli do
    begin
      close;
      sql.Clear;
      sql.Add('Exec CetakTransfer '+QuotedStr(QuMasterBPnobukti.AsString));
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

end.
