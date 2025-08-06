unit FrmMainSPBRJual;

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

  TFrMainSPBRjual = class(TForm)
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
    tvMasterOutKeyNoBukti: TcxGridDBBandedColumn;
    tvMasterOutNobukti: TcxGridDBBandedColumn;
    tvMasterOutTanggal: TcxGridDBBandedColumn;
    tvMasterOuturut: TcxGridDBBandedColumn;
    tvMasterOutkodebrg: TcxGridDBBandedColumn;
    tvMasterOutNamaBrg: TcxGridDBBandedColumn;
    tvMasterOutSat_2: TcxGridDBBandedColumn;
    tvMasterOutIsi: TcxGridDBBandedColumn;
    tvMasterOutSat_1: TcxGridDBBandedColumn;
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
    tvMasterNOSC: TcxGridDBBandedColumn;
    tvMasterNoPesan: TcxGridDBBandedColumn;
    tvMasterCatatan: TcxGridDBBandedColumn;
    tvDetailNOBUKTI: TcxGridDBBandedColumn;
    tvDetailURUT: TcxGridDBBandedColumn;
    tvDetailISI: TcxGridDBBandedColumn;
    tvDetailNetW: TcxGridDBBandedColumn;
    tvDetailGrossW: TcxGridDBBandedColumn;
    tvDetailKetDetail: TcxGridDBBandedColumn;
    QuDetailBPJns_Kertas: TStringField;
    QuDetailBPUkr_Kertas: TStringField;
    tvMasterOutJns_Kertas: TcxGridDBBandedColumn;
    tvMasterOutUkr_Kertas: TcxGridDBBandedColumn;
    tvDetailJns_Kertas: TcxGridDBBandedColumn;
    tvDetailUkr_Kertas: TcxGridDBBandedColumn;
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
    tvMasterOutQnt: TcxGridDBBandedColumn;
    tvMasterOutQnt2: TcxGridDBBandedColumn;
    tvMasterOutQntSPP: TcxGridDBBandedColumn;
    tvMasterOutQnt2SPP: TcxGridDBBandedColumn;
    tvMasterOutQntSisa: TcxGridDBBandedColumn;
    tvMasterOutQnt2Sisa: TcxGridDBBandedColumn;
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
    QuMasterBPNORPJ: TStringField;
    ToolButton12: TToolButton;
    QuMasterBPIsbatal: TBooleanField;
    QuMasterBPUserbatal: TStringField;
    QuMasterBPTglBatal: TDateTimeField;
    tvMasterDBBandedColumn1: TcxGridDBBandedColumn;
    tvMasterDBBandedColumn2: TcxGridDBBandedColumn;
    tvMasterDBBandedColumn3: TcxGridDBBandedColumn;
    ToolButton13: TToolButton;
    QuMasterKeyNoBukti: TStringField;
    QuMasterNobukti: TStringField;
    QuMasterTanggal: TDateTimeField;
    QuMasterKodeCustSupp: TStringField;
    QuMasterNamaCustSupp: TStringField;
    QuMasterurut: TIntegerField;
    QuMasterkodebrg: TStringField;
    QuMasterNamaBrg: TStringField;
    QuMasterJns_Kertas: TStringField;
    QuMasterUkr_Kertas: TStringField;
    QuMasterSat_1: TStringField;
    QuMasterSat_2: TStringField;
    QuMasterIsi: TBCDField;
    QuMasterQnt: TBCDField;
    QuMasterQnt2: TBCDField;
    QuMasterQntSPP: TBCDField;
    QuMasterQnt2SPP: TBCDField;
    QuMasterQntSisa: TBCDField;
    QuMasterQnt2Sisa: TBCDField;
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
    procedure tvMasterCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tvMasterCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    mPosisi : string;
    IsTambah, IsKoreksi, IsHapus, IsCetak, IsExcel: Boolean;
    ModalKoreksi : Boolean;
    SPBOL,mMainSPB_FlagMenu: Integer;
    MenuSPB : String;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrMainSPBRjual: TFrMainSPBRjual;
  S: array[0..255] of char;

implementation

uses MyModul, Myprocedure, MyGlobal, FrmBrows, FrmSetForm,
  FrmSPBRJual, frmLogin;

{$R *.dfm}

procedure TFrMainSPBRjual.GetData(bulan,tahun:integer);
begin
  with QuMaster do
  begin
    Close;
    SQL.Strings[2]:='select @Tahun='+IntToStr(tahun)+', @Bulan='+IntToStr(bulan)+', @FLagmenu='+IntToStr(mMainSPB_FlagMenu);
    Open;
  end;
  with QuMasterBP do
  begin
    Close;
    SQL.Strings[2]:='select @Tahun='+IntToStr(tahun)+', @Bulan='+IntToStr(bulan)+', @FLagmenu='+IntToStr(mMainSPB_FlagMenu);
    Open;
  end;
end;

procedure TFrMainSPBRjual.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrMainSPBRjual.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
           MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
  begin
    if Application.FindComponent('FRrSPBRJual')<>nil then
    begin
       MessageDlg('Modul '+FrSPBRjual.Caption+' belum ditutup !',mtWarning,[mbok],0);
       Action := caNone
    end
    else Action:=caFree;
  end
  else
      Action:=caNone;
end;

procedure TFrMainSPBRjual.FormDestroy(Sender: TObject);
begin
  FrMainSPBRJual:=nil;
end;

procedure TFrMainSPBRjual.FormShow(Sender: TObject);
begin
  //ToolButton1.Enabled:=(dxPageControl1.ActivePageIndex=0);
  //ToolButton2.Enabled:=(dxPageControl1.ActivePageIndex=1);
  ToolButton10.Click;
end;

procedure TFrMainSPBRjual.ToolButton10Click(Sender: TObject);
begin
  GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
end;

procedure TFrMainSPBRjual.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrMainSPBRjual.ToolButton1Click(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if IsTambah then
    begin
      gTempNoBukti:=QuMasterNobukti.AsString;
      if Assigned(FrSPBRJual) then
         FrSPBRjual.Show
      else
      begin
        ModalKoreksi:=False;
        Application.CreateForm(TFrSPBRjual,FrSPBRjual);
        CekOtoritasMenu(IDUser,tag,FrSPBRjual.Istambah,FrSPBRjual.Ishapus,
                        FrSPBRjual.Iskoreksi, FrSPBRjual.isCetak, FrSPBRjual.isExcel);
        FrSPBRjual.xModalKoreksi:=ModalKoreksi;
        FrSPBRjual.Show;
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

procedure TFrMainSPBRjual.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrMainSPBRjual.ToolButton2Click(Sender: TObject);
begin
  if dxPageControl1.ActivePageIndex=1 then
  Begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      if QuMasterBP.IsEmpty=False then
      begin
        if IsKoreksi then
        begin
          if QuMasterBPIsOtorisasi1.Value then
          begin
            MessageDlg('No. Penerimaan Retur jual : '+QuMasterBPNoBukti.AsString+' telah diotorisasi oleh user '+QuMasterBPOtoUser1.Value+#13+
                       'Data tidak dapat dikoreksi',mtWarning,[mbok],0);
            ActiveControl:= cxGrid1;
          end
          else
          begin
            gTempNoBukti:=QuMasterBPNOBUKTI.AsString;
            if Assigned(FrSPBRjual) then
              FrSPBRjual.Show
            else
            begin
              ModalKoreksi:=True;
              Application.CreateForm(TFrSPBRjual,FrSPBRjual);
              CekOtoritasMenu(IDUser,Tag,FrSPBRjual.IsTambah,FrSPBRjual.IsHapus,
                          FrSPBRjual.IsKoreksi, FrSPBRjual.IsCetak, FrSPBRjual.IsExcel);
              FrSPBRjual.Show;
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

procedure TFrMainSPBRjual.FormCreate(Sender: TObject);
begin
  dxPageControl1.ActivePageIndex:=1;
  Panel1.Color:=FrSetForm.PanelMain.Color;
  ToolBar1.Color:=FrSetForm.ToolBarMain.Color;
  FrMainSPBRJual.Color:=FrSetForm.FormMain.Color;
  mMainSPB_FlagMenu := KodeForm;
end;

procedure TFrMainSPBRjual.dxPageControl1Change(Sender: TObject);
begin
 ToolButton1.Enabled:=(dxPageControl1.ActivePageIndex=0);
 ToolButton2.Enabled:=(dxPageControl1.ActivePageIndex=1);
end;

procedure TFrMainSPBRjual.tvMasterFocusedRecordChanged(
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

procedure TFrMainSPBRjual.ToolButton4Click(Sender: TObject);
begin
  if QuMasterBPIsOtorisasi1.Value then
  begin
    MessageDlg('No. Perintah Pengiriman '+QuMasterBPNoBukti.AsString+' telah diotorisasi oleh user '+QuMasterBPOtoUser1.AsString+#13+'pada tanggal '+
               FormatDatetime('DD-MMM-YYYY',QuMasterBPTglOto1.AsDateTime)+' Jam '+FormatDateTime('HH:MM:SS',QuMasterBPTglOto1.AsDateTime)+#13+
               'Data tidak dapat diotorisasi lagi !!!',mtWarning,[mbok],0);
    ActiveControl := cxGrid1;
  end
  else
  begin
    BM := QuMasterBP.GetBookmark;
    {frLogin := TFrLogin.Create(Self);
    frLogin.Label2.Caption :='Otorisasi';
    if frLogin.ShowModal=mrok then }
    begin
         Otorisasi('DBSPBRJUAL',MenuSPB,IDUser,'',QuMasterBPNobukti.Value);
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

procedure TFrMainSPBRjual.ToolButton12Click(Sender: TObject);
begin
    BM := QuMasterBP.GetBookmark;
    {frLogin := TFrLogin.Create(Self);
    frLogin.Label2.Caption :='Otorisasi';
    if frLogin.ShowModal=mrok then }
    begin
      BatalOtorisasi('DBSPBRjual',MenuSPB,IDUser,'',QuMasterBPNobukti.Value);
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

procedure TFrMainSPBRjual.ToolButton13Click(Sender: TObject);
begin
if  DataBersyarat(' select A.nobukti,B.nobukti from dbSPBRjual A Left Outer Join DBINVOICERPJDet B on A.NOBUKTI=B.NOSPR '+
                  ' where B.Nobukti Is not NUll and A.nobukti=:0',[QuMasterBPNOBUKTI.ASstring],DM.Qucari)=true then
 begin
    BM := QuMasterBP.GetBookmark;
    begin
      pembatalan('dbSPBRjual','IsBatal',QuMasterBPNOBUKTI.AsString,IDUser,MenuSPB);
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
 ShowMessage('Nomor Retur '+QuMasterBPNOBUKTI.AsString+' Sudah Terdaftar Dalam Nota Retur');
 if QuMasterBpIsBatal.AsBoolean=true then
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

procedure TFrMainSPBRjual.tvMasterCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if AViewInfo.GridRecord.DisplayTexts[24]='True' then
   ACanvas.Brush.Color := Clred;
end;

procedure TFrMainSPBRjual.tvMasterCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 if QuMasterBpIsBatal.AsBoolean=true then
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

end.                                                                      
