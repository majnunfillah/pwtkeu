unit FrmMainRSPB;

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
  cxGridDBBandedTableView, frxClass, frxDBSet;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrMainRSPB = class(TForm)
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
    QuMasterBP: TADOQuery;
    DsMasterBP: TDataSource;
    QuDetailBP: TADOQuery;
    DsDetailBP: TDataSource;
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
    QuMasterKeyNoBukti: TStringField;
    QuMasterNobukti: TStringField;
    QuMasterTanggal: TDateTimeField;
    QuMasterKodeCustSupp: TStringField;
    QuMasterNamaCustSupp: TStringField;
    QuMasterurut: TIntegerField;
    QuMasterkodebrg: TStringField;
    QuMasterNamaBrg: TStringField;
    QuMasterSat_1: TStringField;
    QuMasterSat_2: TStringField;
    QuMasterIsi: TBCDField;
    QuMasterQnt: TBCDField;
    QuMasterQnt2: TBCDField;
    QuMasterQntSPP: TBCDField;
    QuMasterQnt2SPP: TBCDField;
    QuMasterQntSisa: TBCDField;
    QuMasterQnt2Sisa: TBCDField;
    QuDetailBPJns_Kertas: TStringField;
    QuDetailBPUkr_Kertas: TStringField;
    QuMasterJns_Kertas: TStringField;
    QuMasterUkr_Kertas: TStringField;
    QuMasterBPNOBUKTI: TStringField;
    QuMasterBPNOURUT: TStringField;
    QuMasterBPTANGGAL: TDateTimeField;
    QuMasterBPKODECUSTSUPP: TStringField;
    QuMasterBPNamaCustSupp: TStringField;
    QuMasterBPNoPolKend: TStringField;
    QuMasterBPContainer: TStringField;
    QuMasterBPNoContainer: TStringField;
    QuMasterBPNoSeal: TStringField;
    QuMasterBPCatatan: TStringField;
    QuMasterBPIDUser: TStringField;
    ToolButton4: TToolButton;
    QuMasterTglKirim: TDateTimeField;
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBBandedTableView;
    tvMasterNOBUKTI: TcxGridDBBandedColumn;
    tvMasterTANGGAL: TcxGridDBBandedColumn;
    tvMasterNOSPB: TcxGridDBBandedColumn;
    tvMasterKODECUSTSUPP: TcxGridDBBandedColumn;
    tvMasterNamaCustSupp: TcxGridDBBandedColumn;
    tvMasterNoPesan: TcxGridDBBandedColumn;
    tvMasterTglKirim: TcxGridDBBandedColumn;
    tvMasterNoLC: TcxGridDBBandedColumn;
    tvMasterShippingMark: TcxGridDBBandedColumn;
    tvMasterCatatan: TcxGridDBBandedColumn;
    tvMasterIDUser: TcxGridDBBandedColumn;
    tvDetail: TcxGridDBBandedTableView;
    tvDetailNOBUKTI: TcxGridDBBandedColumn;
    tvDetailURUT: TcxGridDBBandedColumn;
    tvDetailKODEBRG: TcxGridDBBandedColumn;
    tvDetailNamaBrg: TcxGridDBBandedColumn;
    tvDetailJns_Kertas: TcxGridDBBandedColumn;
    tvDetailUkr_Kertas: TcxGridDBBandedColumn;
    tvDetailQNT2: TcxGridDBBandedColumn;
    tvDetailSAT_2: TcxGridDBBandedColumn;
    tvDetailQNT: TcxGridDBBandedColumn;
    tvDetailSAT_1: TcxGridDBBandedColumn;
    tvDetailISI: TcxGridDBBandedColumn;
    tvDetailKetDetail: TcxGridDBBandedColumn;
    tvDetailNetW: TcxGridDBBandedColumn;
    tvDetailGrossW: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    QuMasterBPNOSPB: TStringField;
    QuMasterBPTglSPB: TDateTimeField;
    QuMasterBPTipe: TStringField;
    tvMasterTglSPB: TcxGridDBBandedColumn;
    tvMasterTipe: TcxGridDBBandedColumn;
    QuMasterBPIsFlag: TBooleanField;
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
    tvMasterIsFlag: TcxGridDBBandedColumn;
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
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    frxDBCetak: TfrxDBDataset;
    frxDBCetak2: TfrxDBDataset;
    frxReport1: TfrxReport;
    QuMasterBPNeedOtorisasi: TBooleanField;
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
  private
    { Private declarations }
  public
    { Public declarations }
    mPosisi : string;
    IsTambah, IsKoreksi, IsHapus, IsCetak, IsExcel: Boolean;
    ModalKoreksi : Boolean;
    RSPBOL,mMainRSPB_Flagmenu: Integer;
    MenuRSPB : String;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrMainRSPB: TFrMainRSPB;
  S: array[0..255] of char;

implementation

uses MyModul, Myprocedure, MyGlobal, FrmBrows, FrmSetForm, FrmRSPB, frmLogin;

{$R *.dfm}

procedure TFrMainRSPB.GetData(bulan,tahun:integer);
begin
  with QuMaster do
  begin
    Close;
    Open;
  end;
  with QuMasterBP do
  begin
    Close;
    SQL.Strings[2]:='select @Tahun='+IntToStr(tahun)+', @Bulan='+IntToStr(bulan);
    Open;
  end;
end;

procedure TFrMainRSPB.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrMainRSPB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
           MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
  begin
    if Application.FindComponent('FrRSPB')<>nil then
    begin
       MessageDlg('Modul '+FrRSPB.Caption+' belum ditutup !',mtWarning,[mbok],0);
       Action := caNone
    end
    else Action:=caFree;
  end
  else
      Action:=caNone;
end;

procedure TFrMainRSPB.FormDestroy(Sender: TObject);
begin
  FrMainRSPB:=nil;
end;

procedure TFrMainRSPB.FormShow(Sender: TObject);
begin
  ToolButton10.Click;
end;

procedure TFrMainRSPB.ToolButton10Click(Sender: TObject);
begin
  GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
end;

procedure TFrMainRSPB.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrMainRSPB.ToolButton1Click(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if IsTambah then
    begin
      gTempNoBukti:=QuMasterNobukti.AsString;
      if Assigned(FrRSPB) then
         FrRSPB.Show
      else
      begin
        ModalKoreksi:=False;
        Application.CreateForm(TFrRSPB,FrRSPB);
        CekOtoritasMenu(IDUser,tag,FrRSPB.Istambah,FrRSPB.Ishapus,
                        FrRSPB.Iskoreksi, FrRSPB.isCetak, FrRSPB.isExcel);
        FrRSPB.xModalKoreksi:=ModalKoreksi;
        FrRSPB.Show;
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

procedure TFrMainRSPB.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrMainRSPB.ToolButton2Click(Sender: TObject);
begin

    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      if QuMasterBP.IsEmpty=False then
      begin
        if IsKoreksi then
        begin
          if Not QuMasterBPNeedOtorisasi.Value then
          begin
            MsgNeedOtorisasi;
            ActiveControl:= cxGrid1;
          end
          else
          begin
            gTempNoBukti:=QuMasterBPNOBUKTI.AsString;
            if Assigned(FrRSPB) then
              FrRSPB.Show
            else
            begin
              ModalKoreksi:=True;
              Application.CreateForm(TFrRSPB,FrRSPB);
              CekOtoritasMenu(IDUser,Tag,FrRSPB.IsTambah,FrRSPB.IsHapus,FrRSPB.IsKoreksi, FrRSPB.IsCetak, FrRSPB.IsExcel);
              FrRSPB.Show;
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

procedure TFrMainRSPB.FormCreate(Sender: TObject);
begin

  Panel1.Color:=FrSetForm.PanelMain.Color;
  ToolBar1.Color:=FrSetForm.ToolBarMain.Color;
  FrMainRSPB.Color:=FrSetForm.FormMain.Color;
  mMainRSPB_Flagmenu := Kodeform;
end;

procedure TFrMainRSPB.tvMasterFocusedRecordChanged(
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

procedure TFrMainRSPB.ToolButton4Click(Sender: TObject);
begin
{  if QuMasterBPIsOtorisasi1.Value then
  begin
    MessageDlg('No. Retur Surat Jalan '+QuMasterBPNoBukti.AsString+' telah diotorisasi oleh user '+QuMasterBPOtoUser1.AsString+#13+'pada tanggal '+
               FormatDatetime('DD-MMM-YYYY',QuMasterBPTglOto1.AsDateTime)+' Jam '+FormatDateTime('HH:MM:SS',QuMasterBPTglOto1.AsDateTime)+#13+
               'Data tidak dapat diotorisasi lagi !!!',mtWarning,[mbok],0);
    ActiveControl := cxGrid1;
  end
  else  }
  begin
    BM := QuMasterBP.GetBookmark;
    {frLogin := TFrLogin.Create(Self);
    frLogin.Label2.Caption :='Otorisasi';
    if frLogin.ShowModal=mrok then}
    begin
      Otorisasi('DBRSPB',MenuRSPB,IDUser,'',QuMasterBPNobukti.Value);
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
  End;
end;

procedure TFrMainRSPB.ToolButton12Click(Sender: TObject);
begin
  begin
    BM := QuMasterBP.GetBookmark;
    BatalOtorisasi('DBRSPB',MenuRSPB,IDUser,'',QuMasterBPNobukti.Value);
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

procedure TFrMainRSPB.ToolButton13Click(Sender: TObject);
begin
if Iscetak then
    MainCetak(frxDBCetak,FrxDbCetak2,DM.QuCari,Dm.QuCari2,'CetakRspB','Vwperusahaan',QuMasterBPNOBUKTI.AsString,'Nota\suratpengantarbarangRetur.fr3',frxReport1)
else
   MsgTidakBerhakCetakData
end;

procedure TFrMainRSPB.frxReport1AfterPrintReport(Sender: TObject);
begin
  NilaiCetak('CetakKe','DbDebetNote',QuMasterBPNOBUKTI.AsString);
end;

procedure TFrMainRSPB.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
if CompareText(varName,'iduser')=0 then
        value:=IDUser;
end;

procedure TFrMainRSPB.ToolButton14Click(Sender: TObject);
begin
frxReport1.LoadFromFile(currDir+'Nota\suratpengantarbarangRetur.fr3');
  frxReport1.ShowReport;
end;

end.
