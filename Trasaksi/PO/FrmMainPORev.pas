unit FrmMainPORev;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  StdCtrls, ExtCtrls, Menus, dxGridMenus, dxDBTLCl, dxGrClms,shellapi, Grids,
  Buttons, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxEdit, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, dxPageControl;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrMainPORev = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;            
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
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
    QuDetail1NoBukti: TStringField;
    QuDetail1NoSPP: TStringField;
    QuDetail1UrutSPP: TIntegerField;
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
    dxPageControl1: TdxPageControl;
    dxTabSheet2: TdxTabSheet;
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBTableView;
    tvMasterNoBukti: TcxGridDBColumn;
    tvMasterTanggal: TcxGridDBColumn;
    tvMasterNamaSupp: TcxGridDBColumn;
    tvMasterTotSubTotalRp: TcxGridDBColumn;
    tvMasterTotDPPRp: TcxGridDBColumn;
    tvMasterTotPPNRp: TcxGridDBColumn;
    tvMasterTotNetRp: TcxGridDBColumn;
    tvDetail: TcxGridDBTableView;
    tvDetailKodeBrg: TcxGridDBColumn;
    tvDetailNamaBrg: TcxGridDBColumn;
    tvDetailSatuan: TcxGridDBColumn;
    tvDetailQnt: TcxGridDBColumn;
    tvDetailHarga: TcxGridDBColumn;
    tvDetailDiscTot: TcxGridDBColumn;
    tvDetailTotalIDR: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    tvMasterDBColumn1: TcxGridDBColumn;
    QuMasterNoBukti: TStringField;
    QuMasterTanggal: TDateTimeField;
    QuMasterKodeSupp: TStringField;
    QuMasterNamaCustSupp: TStringField;
    QuDetail1TanggalRev: TDateTimeField;
    QuDetail1RevisiKe: TIntegerField;
    tvDetailDBColumn1: TcxGridDBColumn;
    tvDetailDBColumn2: TcxGridDBColumn;
    tvDetailDBColumn3: TcxGridDBColumn;
    ToolButton4: TToolButton;
    ToolButton12: TToolButton;
    QuMasterIsOtorisasi1: TBooleanField;
    QuMasterOtoUser1: TStringField;
    QuMasterTglOto1: TDateTimeField;
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
    procedure tvMasterFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    mPosisi,xStatus,Menu  : string;
    IsTambah,IsKoreksi,IsHapus, IsCetak, ModalKoreksi, IsExcel : Boolean;
    SortBy,Prioritas :String;
    xQnt,xDiskon,xDPP,xPPN,xJumlah : Real;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrMainPORev: TFrMainPORev;
  S: array[0..255] of char;

implementation

uses MyModul, MyProcedure, MyGlobal, FrmBrows, FrmSetForm, FrmRevPO;
{$R *.dfm}

procedure TFrMainPORev.GetData(bulan,tahun:integer);
begin
  QuNavigator.Close;
  QuNavigator.SQL.Clear;
  QuNavigator.SQL.Add('select NoBukti from dbPO '+
    ' where month(tanggal)='+IntToStr(bulan)+'  and year(tanggal)='+IntToStr(tahun)+' and isbatal=0 '+
    ' order by NoBukti ');
  QuNavigator.Open;

  with QuMaster do
  begin
    Close;
    SQL.Strings[2]:='select @Tahun='+IntToStr(tahun)+', @Bulan='+IntToStr(bulan);
    Open;
  end;


end;

procedure TFrMainPORev.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrMainPORev.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
           MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
  begin
    if Application.FindComponent('FrPO')<>nil then
    begin
       MessageDlg('Modul '+FrRevPO.Caption+' belum ditutup !',mtWarning,[mbok],0);
       Action := caNone
    end
    else Action:=caFree;
  end
  else Action:=caNone;
end;

procedure TFrMainPORev.FormDestroy(Sender: TObject);
begin
  FrMainPORev:=nil;
end;

procedure TFrMainPORev.FormShow(Sender: TObject);
begin
  TampilValid.Checked:=true;
  TampilBatal.Checked:=false;
  ToolButton10.Click;
end;

procedure TFrMainPORev.ToolButton10Click(Sender: TObject);
begin
   GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
end;

procedure TFrMainPORev.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrMainPORev.ExportExcel1Click(Sender: TObject);
begin
{  with QuView do
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
  end;}
end;

procedure TFrMainPORev.AutoFilter1Click(Sender: TObject);
begin
    if dxDBGrid1.Filter.Active=false then
    dxDBGrid1.Filter.Active:=true
    else
    dxDBGrid1.Filter.Active:=false;

end;

procedure TFrMainPORev.ShowGrid1Click(Sender: TObject);
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

procedure TFrMainPORev.ShowHeader1Click(Sender: TObject);
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

procedure TFrMainPORev.Show1Click(Sender: TObject);
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

procedure TFrMainPORev.ToolButton1Click(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if IsTambah then
    begin
      if Assigned(FrRevPO) then FrRevPO.Show else
      begin
        ModalKoreksi:=False;
        xStatus := 'H';
        Application.CreateForm(TFrRevPO,FrRevPO);
        CekOtoritasMenu(IDUser,tag,FrRevPO.Istambah,FrRevPO.Ishapus,
          FrRevPO.Iskoreksi, FrRevPO.isCetak, FrRevPO.isExcel);
        //FrSPP.PanelShow2.Visible:=false;
        FrRevPO.Show;
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
  end;
end;

procedure TFrMainPORev.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_ESCAPE then
   begin
      Close;
   end else
   if Key=VK_RETURN then
   begin
    //  ToolButton2.Click;
   end
   else if key=VK_INSERT then
   begin
      // ToolButton1.Click;
   end
   else if key=VK_Delete then
   begin
     //   ToolButton3.Click;
   end;
end;

procedure TFrMainPORev.ToolButton2Click(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if IsKoreksi then
    begin
      if QuMaster.IsEmpty=False then
      begin
              if QuMasterIsOtorisasi1.Value then
          begin
            MessageDlg('No. '+QuMasterNoBukti.AsString+' telah diotorisasi oleh user '+QuMasterOtoUser1.Value+#13+
                       'Data tidak dapat dikoreksi',mtWarning,[mbok],0);
            ActiveControl:= cxGrid1;
          end
         else
        if Assigned(FrRevPO) then
          FrRevPO.Show
        else
        begin
          ModalKoreksi:=True;
          Application.CreateForm(TFrRevPO,FrRevPO);
          CekOtoritasMenu(IDUser,tag,FrRevPO.Istambah,FrRevPO.Ishapus,
            FrRevPO.Iskoreksi, FrRevPO.isCetak, FrRevPO.isExcel);

          //FrRevPO.PanelShow2.Visible:=true;
          //FrRevPO.ActiveControl := FrRevPO.Tanggal;
          FrRevPO.Show;
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

procedure TFrMainPORev.MultiSelect1Click(Sender: TObject);
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

procedure TFrMainPORev.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

procedure TFrMainPORev.TampilValidClick(Sender: TObject);
begin
   ToolButton11.Caption:=TampilValid.Caption;
   TampilValid.Checked:=true;
   TampilBatal.Checked:=false;
   ToolButton1.Enabled:=true;
   ToolButton2.Enabled:=true;
   ToolButton3.Caption:='&Batal';
   ToolButton10Click(self);
end;

procedure TFrMainPORev.TampilBatalClick(Sender: TObject);
begin
   ToolButton11.Caption:=TampilBatal.Caption;
   TampilValid.Checked:=false;
   TampilBatal.Checked:=True;
   ToolButton1.Enabled:=false;
   ToolButton2.Enabled:=false;
   ToolButton3.Caption:='&Valid';
   ToolButton10Click(self);
end;

procedure TFrMainPORev.FormCreate(Sender: TObject);
begin
 
  Panel1.Color:=FrSetForm.PanelMain.Color;
  ToolBar1.Color:=FrSetForm.ToolBarMain.Color;
end;

procedure TFrMainPORev.tvMasterFocusedRecordChanged(
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

procedure TFrMainPORev.ToolButton4Click(Sender: TObject);
begin
 if QuMasterIsOtorisasi1.Value then
  begin
    MessageDlg('No. Purchase Order '+QuMasterNoBukti.AsString+' telah diotorisasi oleh user '+QuMasterOtoUser1.AsString+#13+'pada tanggal '+
               FormatDatetime('DD-MMM-YYYY',QuMasterTglOto1.AsDateTime)+' Jam '+FormatDateTime('HH:MM:SS',QuMasterTglOto1.AsDateTime)+#13+
               'Data tidak dapat diotorisasi lagi !!!',mtWarning,[mbok],0);
    ActiveControl := cxGrid1;
  end
  else
  begin
    BM := QuMaster.GetBookmark;
    {frLogin := TFrLogin.Create(Self);
    frLogin.Label2.Caption :='Otorisasi';
    if frLogin.ShowModal=mrok then }
    begin
      Otorisasi('DBRevPo',Menu,IDUser,'',QuMasterNoBukti.Value);
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

procedure TFrMainPORev.ToolButton12Click(Sender: TObject);
begin
BM := QuMaster.GetBookmark;
  {frLogin := TFrLogin.Create(Self);
  frLogin.Label2.Caption :='Otorisasi';
  if frLogin.ShowModal=mrok then  }
  begin
    BatalOtorisasi('DBRevPO',Menu,IDUser,'',QuMasterNoBukti.Value);
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

end.
