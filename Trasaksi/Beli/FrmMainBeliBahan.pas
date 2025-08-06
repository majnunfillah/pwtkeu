unit FrmMainBeliBahan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  StdCtrls, ExtCtrls, Menus, dxGridMenus, dxDBTLCl, dxGrClms,shellapi, Grids,
  Buttons, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxEdit, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, dxPageControl, frxDesgn, frxClass, frxDBSet,
  frxDMPExport;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrMainBeliBahan = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;            
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    QuView: TADOQuery;
    DsView: TDataSource;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    PopupMenu1: TPopupMenu;
    ExportExcel1: TMenuItem;
    N1: TMenuItem;
    ShowGrid1: TMenuItem;
    ShowHeader1: TMenuItem;
    Show1: TMenuItem;
    N2: TMenuItem;
    AutoFilter1: TMenuItem;
    ToolButton7: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    SaveDialog: TSaveDialog;
    MultiSelect1: TMenuItem;
    Sp_Batal: TADOStoredProc;
    ToolButton8: TToolButton;
    ToolButton11: TToolButton;
    dxDBGrid1: TdxDBGrid;
    QuNavigator: TADOQuery;
    PopupMenu2: TPopupMenu;
    TampilValid: TMenuItem;
    TampilBatal: TMenuItem;
    DsMaster: TDataSource;
    QuMaster: TADOQuery;
    Panel1: TPanel;
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
    dxDBGrid1Kodebrg: TdxDBGridMaskColumn;
    dxDBGrid1Qnt: TdxDBGridMaskColumn;
    dxDBGrid1Harga: TdxDBGridMaskColumn;
    dxDBGrid1DiscP1: TdxDBGridMaskColumn;
    dxDBGrid1DiscP2: TdxDBGridMaskColumn;
    dxDBGrid1discP3: TdxDBGridMaskColumn;
    dxDBGrid1DiscP4: TdxDBGridMaskColumn;
    dxDBGrid1Ndpp: TdxDBGridMaskColumn;
    dxDBGrid1NPpn: TdxDBGridMaskColumn;
    dxDBGrid1NNet: TdxDBGridMaskColumn;
    dxDBGrid1Namabrg: TdxDBGridMaskColumn;
    dxDBGrid1Satuan: TdxDBGridMaskColumn;
    dxDBGrid1Kodelokasi: TdxDBGridMaskColumn;
    dxDBGrid1NamaGdg: TdxDBGridMaskColumn;
    dxDBGrid1GroupNoBukti: TdxDBGridMaskColumn;
    QuDetail1: TADOQuery;
    DsDetail1: TDataSource;
    QuMasterNoBukti: TStringField;
    QuMasterTanggal: TDateTimeField;
    QuMasterKodeSupp: TStringField;
    QuMasterHandling: TBCDField;
    QuMasterFakturSupp: TStringField;
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
    QuDetail1NoPO: TStringField;
    QuDetail1UrutPO: TIntegerField;
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
    QuNavigatorNoBukti: TStringField;
    QuMasterKeterangan: TStringField;
    QuDetail1HrgNetto: TBCDField;
    QuDetail1KodeGdg: TStringField;
    dxPageControl1: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    cxGrid2: TcxGrid;
    tvPO: TcxGridDBTableView;
    TVDetailPO: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridLevel2: TcxGridLevel;
    dxTabSheet2: TdxTabSheet;
    QumasterPO: TADOQuery;
    dsMasterPO: TDataSource;
    QuDetailPO: TADOQuery;
    dsdetailPO: TDataSource;
    QumasterPONoBukti: TStringField;
    QumasterPOTanggal: TDateTimeField;
    QumasterPOKodeSupp: TStringField;
    QuDetailPONoBukti: TStringField;
    QuDetailPOUrut: TIntegerField;
    QuDetailPOKodeBrg: TStringField;
    QuDetailPOQntBeliSat1: TBCDField;
    QuDetailPONamaBrg: TStringField;
    QuDetailPOQntPO: TBCDField;
    QuDetailPOSatuan: TStringField;
    TVDetailPODBColumn1: TcxGridDBColumn;
    QuMasterNoPO: TStringField;
    QuDetailPOQNTOS: TBCDField;
    QuMasterNamaCustSupp: TStringField;
    QumasterPONamaCustSupp: TStringField;
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBTableView;
    tvDetail: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    tvMasterNoBukti: TcxGridDBColumn;
    tvMasterTanggal: TcxGridDBColumn;
    tvMasterNamaCustSupp: TcxGridDBColumn;
    tvDetailKodeBrg: TcxGridDBColumn;
    tvDetailNamaBrg: TcxGridDBColumn;
    tvDetailQnt: TcxGridDBColumn;
    tvDetailSatuan: TcxGridDBColumn;
    QuDetail1NoBukti: TStringField;
    tvPONoBukti: TcxGridDBColumn;
    tvPOTanggal: TcxGridDBColumn;
    tvPOKodeSupp: TcxGridDBColumn;
    tvPONamaCustSupp: TcxGridDBColumn;
    QumasterPOkodegdg: TStringField;
    ToolButton4: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDataPerusahaan: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
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
    QuMasterIsbatal: TBooleanField;
    QuMasterUserbatal: TStringField;
    QuMasterTglBatal: TDateTimeField;
    tvMasterDBColumn1: TcxGridDBColumn;
    tvMasterDBColumn2: TcxGridDBColumn;
    tvMasterDBColumn3: TcxGridDBColumn;
    ToolButton14: TToolButton;
    QuDetailPOSat1: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ExportExcel1Click(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure AutoFilter1Click(Sender: TObject);
    procedure ShowGrid1Click(Sender: TObject);
    procedure ShowHeader1Click(Sender: TObject);
    procedure Show1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton2Click(Sender: TObject);
    procedure MultiSelect1Click(Sender: TObject);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GetData(bulan,tahun:integer);
    procedure TampilValidClick(Sender: TObject);
    procedure TampilBatalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxPageControl1Change(Sender: TObject);
    procedure tvPOFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
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
    procedure tvMasterCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tvMasterCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ToolButton14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPosisi,xStatus,MenuBeliGDG : string;
    IsTambah,IsKoreksi,IsHapus, IsCetak, ModalKoreksi, IsExcel : Boolean;
    SortBy,Prioritas :String;
    xQnt,xDiskon,xDPP,xPPN,xJumlah : Real;
    BeliGDGOL : Integer;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrMainBeliBahan: TFrMainBeliBahan;
  S: array[0..255] of char;

implementation

uses MyModul, MyProcedure, MyGlobal, FrmBrows, FrmSetForm,
  FrmBeliBahan, FrmBuatBeli, FrmBuatBeliBAhan;
{$R *.dfm}

procedure TFrMainBeliBahan.GetData(bulan,tahun:integer);
begin
  QuNavigator.Close;
  QuNavigator.SQL.Clear;
  QuNavigator.SQL.Add('select NoBukti from dbBeli '+
    ' where month(tanggal)='+IntToStr(bulan)+'  and year(tanggal)='+IntToStr(tahun)+' and isbatal=0 '+
    ' order by NoBukti ');
  QuNavigator.Open;
  with QuMaster do
  begin
    Close;
    SQL.Strings[2]:='select @Tahun='+IntToStr(tahun)+', @Bulan='+IntToStr(bulan);
    Open;
  end;


  with QuMasterPO do
  begin
    Close;
    SQL.Strings[2]:='select @Tahun='+IntToStr(tahun)+', @Bulan='+IntToStr(bulan);
    Open;
  end;


end;

procedure TFrMainBeliBahan.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrMainBeliBahan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
           MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
  begin
    if Application.FindComponent('FrBeliBahan')<>nil then
    begin
       MessageDlg('Modul '+FrBeliBahan.Caption+' belum ditutup !',mtWarning,[mbok],0);
       Action := caNone
    end
    else Action:=caFree;
  end
  else Action:=caNone;
end;

procedure TFrMainBeliBahan.FormDestroy(Sender: TObject);
begin
  FrMainBeliBahan:=nil;
end;

procedure TFrMainBeliBahan.FormShow(Sender: TObject);
begin
  TampilValid.Checked:=true;
  TampilBatal.Checked:=false;
  ToolButton1.Enabled:=dxPageControl1.ActivePageIndex=0;
  ToolButton2.Enabled:=dxPageControl1.ActivePageIndex=1;
  ToolButton10.Click;
end;

procedure TFrMainBeliBahan.ToolButton10Click(Sender: TObject);
begin
   GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
   ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,BeliGDGOL);
end;

procedure TFrMainBeliBahan.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrMainBeliBahan.ExportExcel1Click(Sender: TObject);
begin
  with QuView do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select * from vwtransbeli where month(tanggal)=:0 and year(tanggal)=:1 and isbatal=:2');
    Prepared;
    Parameters[0].Value:=strtoint(PeriodBln);
    Parameters[1].Value:=strtoint(PeriodThn);
    Parameters[2].Value:=TampilValid.Checked;
    Open;
  end;
  if (IsExcel) then
  begin
    //Save('xls', 'Microsoft Excel (*.xls)|*.xls', FrMainBeli.Caption, dxDBGrid1.SaveToXLS);
    ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
    //LoggingData(Caption,'User '+IdUser+' Export Data '+ SaveDialog.FileName,dm.qucari);
  end else
  begin
      ShowMessage('Anda tidak berhak Mengeksport Excel');
  end;
end;

procedure TFrMainBeliBahan.AutoFilter1Click(Sender: TObject);
begin
    if dxDBGrid1.Filter.Active=false then
    dxDBGrid1.Filter.Active:=true
    else
    dxDBGrid1.Filter.Active:=false;

end;

procedure TFrMainBeliBahan.ShowGrid1Click(Sender: TObject);
begin
   if ShowGrid1.Checked then
   begin
      dxDBGrid1.ShowGrid:=false;
      ShowGrid1.Checked:=false;
   end else
   begin
      dxDBGrid1.ShowGrid:=true;
      ShowGrid1.Checked:=true;
   end;
end;

procedure TFrMainBeliBAhan.ShowHeader1Click(Sender: TObject);
begin
   if ShowHeader1.Checked then
   begin
      dxDBGrid1.ShowHeader:=false;
      ShowHeader1.Checked:=false;
   end else
   begin
      dxDBGrid1.ShowHeader:=true;
      ShowHeader1.Checked:=true;
   end;

end;

procedure TFrMainBeliBahan.Show1Click(Sender: TObject);
begin
   if Show1.Checked then
   begin
      dxDBGrid1.ShowSummaryFooter := false;
      Show1.Checked:=false;
   end else
   begin
      dxDBGrid1.ShowSummaryFooter := true;
      Show1.Checked:=true;
   end;

end;

procedure TFrMainBeliBahan.ToolButton1Click(Sender: TObject);
begin
{  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if IsTambah then
    begin
      if Assigned(FrBeli) then FrBeli.Show else
      begin
        ModalKoreksi:=False;
        xStatus := 'H';
        Application.CreateForm(TFrBeli,FrBeli);
        CekOtoritasMenu(IDUser,tag,FrBeli.Istambah,FrBeli.Ishapus,
          FrBeli.Iskoreksi, FrBeli.isCetak, FrBeli.isExcel);
        //FrSPP.PanelShow2.Visible:=false;
        FrBeli.Show;
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
       ActiveControl := dxDBGrid1;
  end;}
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if IsTambah then
    begin
      Application.CreateForm(TFrBuatBeliBahan, FrBuatBeliBahan);
      FrBuatBeliBahan.ShowModal;
      if FrBuatBeliBahan.ModalResult=mrOK then
      begin
        ToolButton10.Click;
        QuMaster.Locate('NoBukti',FrBuatBeli.NoBukti.Text,[]);
      end ;

    end
    else
    begin
      MsgTidakBerhakTambahData;
      ActiveControl:=cxGrid1;
    end;
  end
  else
  begin
    MsgPeriodeSudahDikunci;
    ActiveControl:=cxGrid1;
  end;
end;

procedure TFrMainBeliBahan.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrMainBeliBahan.ToolButton2Click(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if IsKoreksi then
    begin
      if QuMaster.IsEmpty=False then
      begin
          if Not QuMasterNeedOtorisasi.Value then
          begin
            MsgNeedOtorisasi;
            ActiveControl:= cxGrid1;
          end
         else
        if Assigned(FrBeliBahan) then
          FrBeliBahan.Show
        else
        begin
          ModalKoreksi:=True;
          Application.CreateForm(TFrBeliBahan,FrBeliBAhan);
          CekOtoritasMenu(IDUser,tag,FrBeliBAhan.Istambah,FrBeliBAhan.Ishapus,
            FrBeliBAhan.Iskoreksi, FrBeliBAhan.isCetak, FrBeliBAhan.isExcel);
          FrBeliBAhan.Show;
        end;
      end else
      begin
        ShowMessage('Tidak ada transaksi yang dikoreksi !');
        ActiveControl:=dxDBGrid1;
      end;
    end else
    begin
      ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
    end;
  end
  else
  begin
    MessageDlg('Periode telah terkunci !',mtWarning,[mbok],0);
    ActiveControl := dxDBGrid1;
  end;
end;

procedure TFrMainBeliBahan.MultiSelect1Click(Sender: TObject);
begin
   if MultiSelect1.Checked then
   begin
      dxDBGrid1.OptionsBehavior:=[edgoAutoSearch,edgoAutoSort,edgoDragScroll,edgoEnterShowEditor,edgoTabThrough,edgoVertThrough];
      MultiSelect1.Checked:=false;
   end else
   begin
      dxDBGrid1.OptionsBehavior:=[edgoAutoSearch,edgoAutoSort,edgoDragScroll,edgoEnterShowEditor,edgoMultiSelect,edgoTabThrough,edgoVertThrough];
      MultiSelect1.Checked:=true;
   end;   
end;

procedure TFrMainBeliBahan.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

procedure TFrMainBeliBahan.TampilValidClick(Sender: TObject);
begin
   ToolButton11.Caption:=TampilValid.Caption;
   TampilValid.Checked:=true;
   TampilBatal.Checked:=false;
   ToolButton1.Enabled:=true;
   ToolButton2.Enabled:=true;
   ToolButton3.Caption:='&Batal';
   ToolButton10Click(self);
end;

procedure TFrMainBeliBahan.TampilBatalClick(Sender: TObject);
begin
   ToolButton11.Caption:=TampilBatal.Caption;
   TampilValid.Checked:=false;
   TampilBatal.Checked:=True;
   ToolButton1.Enabled:=false;
   ToolButton2.Enabled:=false;
   ToolButton3.Caption:='&Valid';
   ToolButton10Click(self);
end;

procedure TFrMainBeliBahan.FormCreate(Sender: TObject);
begin
  Panel1.Color:=FrSetForm.PanelMain.Color;
  ToolBar1.Color:=FrSetForm.ToolBarMain.Color;
end;

procedure TFrMainBeliBahan.dxPageControl1Change(Sender: TObject);
begin
if dxPageControl1.ActivePageIndex=0 then
 Begin
  ToolButton1.Enabled:=True;
  ToolButton2.Enabled:=False;
 end
else
 Begin
  ToolButton1.Enabled:=False;
  ToolButton2.Enabled:=True;
 end;
end;

procedure TFrMainBeliBahan.tvPOFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
 with QuDetailPO do
  begin
    Close;
    Open;
  end;
end;

procedure TFrMainBeliBahan.tvMasterFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
 with QuDetail1 do
  begin
    Close;
    Open;
  end;

end;

procedure TFrMainBeliBahan.ToolButton4Click(Sender: TObject);
begin
 {if QuMasterIsOtorisasi1.Value then
  begin
    MessageDlg('No. Purchase Order '+QuMasterNoBukti.AsString+' telah diotorisasi oleh user '+QuMasterOtoUser1.AsString+#13+'pada tanggal '+
               FormatDatetime('DD-MMM-YYYY',QuMasterTglOto1.AsDateTime)+' Jam '+FormatDateTime('HH:MM:SS',QuMasterTglOto1.AsDateTime)+#13+
               'Data tidak dapat diotorisasi lagi !!!',mtWarning,[mbok],0);
    ActiveControl := cxGrid1;
  end
  else }
  begin
    BM := QuMaster.GetBookmark;
    {frLogin := TFrLogin.Create(Self);
    frLogin.Label2.Caption :='Otorisasi';
    if frLogin.ShowModal=mrok then }
    begin
      Otorisasi('DBBeli',MenuBeliGDG,IDUser,'',QuMasterNoBukti.Value);
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

procedure TFrMainBeliBahan.ToolButton12Click(Sender: TObject);
begin
BM := QuMaster.GetBookmark;
  {frLogin := TFrLogin.Create(Self);
  frLogin.Label2.Caption :='Otorisasi';
  if frLogin.ShowModal=mrok then  }
  begin
    BatalOtorisasi('DBBeli',MenuBeliGDG,IDUser,'',QuMasterNoBukti.Value);
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

procedure TFrMainBeliBahan.ToolButton13Click(Sender: TObject);
begin
if Iscetak then
    MainCetak(frxDBDataset1,frxDataPerusahaan,DM.QuCari,Dm.QuCari2,'CetakPenerimaanGudang','Vwperusahaan',QuMasterNoBukti.AsString,'Nota\NotaTerimaGudang.fr3',frxReport1)
else
   MsgTidakBerhakCetakData
end;


procedure TFrMainBeliBahan.frxReport1AfterPrintReport(Sender: TObject);
begin
NilaiCetak('NilaiCetak','DbBeli',QuMasterNoBukti.AsString);
end;

procedure TFrMainBeliBahan.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
if CompareText(varName,'iduser')=0 then
        value:=IDUser;
end;

procedure TFrMainBeliBahan.tvMasterCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 if AViewInfo.GridRecord.DisplayTexts[18]='True' then
   ACanvas.Brush.Color := Clred;
end;

procedure TFrMainBeliBahan.tvMasterCellClick(Sender: TcxCustomGridTableView;
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

procedure TFrMainBeliBahan.ToolButton14Click(Sender: TObject);
begin
IF DataBersyarat('Select  A.NoBukti,B.nobeli From vwMasterBeli A '+
                ' Left Outer join DBRBELI B on A.NoBukti = B.NOBELI '+
                ' where  Cast(Case when Case when A.IsOtorisasi1=1 then 1 else 0 end+        '+
                '        Case when A.IsOtorisasi2=1 then 1 else 0 end+        '+
                '       Case when A.IsOtorisasi3=1 then 1 else 0 end+         '+
                '       Case when A.IsOtorisasi4=1 then 1 else 0 end+         '+
                '       Case when A.IsOtorisasi5=1 then 1 else 0 end=A.MaxOL then 0    '+
                '  else 1     '+
                ' end As Bit)=1     '+
                ' and B.NOBELI is null and A.Nobukti=:0',[QuMasterNoBukti.ASstring],DM.Qucari)=true then
begin
    BM := QuMaster.GetBookmark;
    begin
      pembatalan('DBBeli','IsBatal',QuMasterNoBukti.AsString,IDUser,MenuBeliGDG);
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
 ShowMessage('Nomor Penrimaan '+QuMasterNoBukti.AsString+' Sudah Terotorisasi ACC/Terdaftar Dalam retur') ;
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

end.
