unit FrmMainUbahKemasanBJ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  ImgList, StdCtrls, ExtCtrls, Menus, ppBands, ppVar, ppCtrls, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,ppviewr,
  dxGridMenus, dxDBTLCl, dxGrClms, Mask, DBCtrls, wwcheckbox, Grids,
  Wwdbigrd, Wwdbgrid,ShellApi, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrMainUbahKemasanBJ = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;            
    ToolButton2: TToolButton;
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
    ToolButton4: TToolButton;
    ToolButton7: TToolButton;
    ToolButton9: TToolButton;
    ImageList2: TImageList;
    ToolButton10: TToolButton;
    SaveDialog: TSaveDialog;
    MultiSelect1: TMenuItem;
    ppDBPipeline1: TppDBPipeline;
    Sp_Area: TADOStoredProc;
    ToolButton8: TToolButton;
    ppReport1: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppDetailBand1: TppDetailBand;
    ppShape2: TppShape;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine2: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine3: TppLine;
    ppLabel5: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    dxDBGrid1: TdxDBGrid;
    QuNavigator: TADOQuery;
    StringField1: TStringField;
    QuViewNobukti: TStringField;
    QuViewtanggal: TDateTimeField;
    QuViewnote: TStringField;
    QuViewTutup: TIntegerField;
    QuViewkodebrg: TStringField;
    QuViewnamaBrg: TStringField;
    QuViewSat_1: TStringField;
    QuViewSat_2: TStringField;
    QuViewSat_3: TStringField;
    QuViewKodegdg: TStringField;
    QuViewkodelokasi: TStringField;
    QuViewQntdb: TBCDField;
    QuViewQntCr: TBCDField;
    QuViewSatuan: TStringField;
    QuViewnosat: TWordField;
    QuViewHarga: TBCDField;
    QuViewurut: TWordField;
    QuViewTotal: TBCDField;
    QuViewnamagdg: TStringField;
    QuViewnamalokasi: TStringField;
    dxDBGrid1kodebrg: TdxDBGridMaskColumn;
    dxDBGrid1namaBrg: TdxDBGridMaskColumn;
    dxDBGrid1namagdg: TdxDBGridMaskColumn;
    dxDBGrid1namalokasi: TdxDBGridMaskColumn;
    dxDBGrid1Satuan: TdxDBGridMaskColumn;
    dxDBGrid1Qntdb: TdxDBGridMaskColumn;
    dxDBGrid1QntCr: TdxDBGridMaskColumn;
    dxDBGrid1Harga: TdxDBGridMaskColumn;
    dxDBGrid1Total: TdxDBGridMaskColumn;
    QuViewGroupNobukti: TStringField;
    dxDBGrid1GroupNobukti: TdxDBGridMaskColumn;
    wwExpandButton1: TwwExpandButton;
    QuMaster: TADOQuery;
    DsMaster: TDataSource;
    DsDetail: TDataSource;
    QuDetail: TADOQuery;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBTableView;
    tvDetail: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    QuDetailNobukti: TStringField;
    QuDetailtanggal: TDateTimeField;
    QuDetailnote: TStringField;
    QuDetailISCetak: TBooleanField;
    QuDetailkodebrg: TStringField;
    QuDetailnamaBrg: TStringField;
    QuDetailKodegdg: TStringField;
    QuDetailQntdb: TBCDField;
    QuDetailQntCr: TBCDField;
    QuDetailSatuan: TStringField;
    QuDetailnosat: TWordField;
    QuDetailisi: TBCDField;
    QuDetailHarga: TBCDField;
    QuDetailurut: TIntegerField;
    QuDetailNamaGDG: TStringField;
    QuDetailTotal: TBCDField;
    QuDetailHrgAdi: TBCDField;
    QuDetailHrgADO: TBCDField;
    QuDetailHpp: TBCDField;
    QuDetailHPP2: TBCDField;
    QuMasterGroupNobukti: TStringField;
    QuMasterNobukti: TStringField;
    QuMasterTanggal: TDateTimeField;
    tvMasterGroupNobukti: TcxGridDBColumn;
    tvMasterNobukti: TcxGridDBColumn;
    tvMasterTanggal: TcxGridDBColumn;
    tvDetailkodebrg: TcxGridDBColumn;
    tvDetailnamaBrg: TcxGridDBColumn;
    tvDetailKodegdg: TcxGridDBColumn;
    tvDetailQntdb: TcxGridDBColumn;
    tvDetailQntCr: TcxGridDBColumn;
    tvDetailSatuan: TcxGridDBColumn;
    tvDetailnosat: TcxGridDBColumn;
    tvDetailisi: TcxGridDBColumn;
    tvDetailHarga: TcxGridDBColumn;
    tvDetailurut: TcxGridDBColumn;
    tvDetailNamaGDG: TcxGridDBColumn;
    tvDetailTotal: TcxGridDBColumn;
    tvDetailHrgAdi: TcxGridDBColumn;
    tvDetailHrgADO: TcxGridDBColumn;
    tvDetailHpp: TcxGridDBColumn;
    tvDetailHPP2: TcxGridDBColumn;
    QuMasterisotorisasi1: TBooleanField;
    QuMasterotouser1: TStringField;
    QuMastertgloto1: TDateTimeField;
    tvMasterDBColumn1: TcxGridDBColumn;
    ToolButton3: TToolButton;
    ToolButton11: TToolButton;
    QuMasterNOURUT: TStringField;
    QuMasterNOTE: TStringField;
    QuMasterIsCetak: TBooleanField;
    QuMasterNilaiCetak: TIntegerField;
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
    procedure ToolButton4Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure dxDBGrid1ColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GetData(bulan,tahun:integer);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBGrid1CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
    procedure tvMasterFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure ToolButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPosisi,xStatus,Menu, MenuUkemas : string;
    IsTambah,IsKoreksi,IsHapus, IsCetak, ModalKoreksi, IsExcel : Boolean;
    SortBy,Prioritas :String;
    xQntdb,xDiskon,xJumlah,xqntcr : Real;
    UkemasOL : integer;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

     StrPO=  'Select a.nobukti+'' Tanggal:''+convert(varchar(10),a.tanggal,105) as GroupNobukti, '+
             '       A.Nobukti,A.tanggal,A.note,b.kodebrg,C.namaBrg, '+
             '       b.Kodegdg,b.kodelokasi,b.Qntdb,B.QntCr,b.Satuan,b.nosat,b.Harga,b.urut,d.nama Namagdg,e.nama Namalokasi, '+
             '      (b.qntdb-b.qntcr)*b.harga as Total '+
             'From dbUbahKemasan A '+
             '     left outer join dbUbahKemasanDet B on b.nobukti=a.nobukti '+
             '     left outer join dbBarang C on c.kodebrg=b.kodebrg '+
             '     left outer join dbGudang D on d.kodegdg=b.kodegdg '+
             '     left outer join dbLokasi E on e.kodeLokasi=b.kodeLokasi and e.kodegdg=b.kodegdg '+

             'where month(a.tanggal)=:0 and year(a.tanggal)=:1 '+
             'Order by b.NoBukti, b.Urut';

var
  FrMainUbahKemasanBJ: TFrMainUbahKemasanBJ;
  S: array[0..255] of char;
implementation
uses myModul,Myprocedure,MyGlobal, FrmBrows,FrmSetForm,FrmUbahKemasanBJ ;
{$R *.dfm}

procedure TFrMainUbahKemasanBJ.GetData(bulan,tahun:integer);
begin
        with QuMaster do
        begin
                Close;
                SQL.Clear;
                SQL.Add('Select * from vwMasterUbahKemasan where month(tanggal)=:0 and year(tanggal)=:1 and NoBukti Like ''%KMBJ%'' Order by nobukti');
                Prepared;
                Parameters[0].Value:=bulan;
                Parameters[1].Value:=tahun;
                Open;
        end;
        with QuNavigator do
        begin
                Close;
                Prepared;
                Parameters.ParamByName('Bulan').Value:=bulan;
                Parameters.ParamByName('tahun').Value:=tahun;
                Open;
        end;

end;

procedure TFrMainUbahKemasanBJ.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrMainUbahKemasanBJ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
           MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
  begin
    if (xStatus <> 'M') and (xStatus<>'S') then
    begin
       MessageDlg('Modul Transaksi UbahKemasan Stock belum ditutup !',mtWarning,[mbok],0);
       Action := caNone
    end
    else
    begin
      Action:=caFree;
    end;
  end
  else
      Action:=caNone;
end;

procedure TFrMainUbahKemasanBJ.FormDestroy(Sender: TObject);
begin
  FrMainUbahKemasanBJ:=nil;
end;

procedure TFrMainUbahKemasanBJ.FormShow(Sender: TObject);
begin
  xStatus := 'S';
  ToolButton10.Click;
  {if FileExists('inifile\'+FrMainUbahKemasanBJ.Caption+'_'+IDUser+'.ini') then
  begin
        dxDBGrid1.LoadFromIniFile('inifile\'+FrMainUbahKemasanBJ.Caption+'_'+IDUser+'.ini');
  end; }
end;

procedure TFrMainUbahKemasanBJ.ToolButton10Click(Sender: TObject);
begin
   GetData(strtoint(PeriodBln),StrToInt(PeriodThn));
end;

procedure TFrMainUbahKemasanBJ.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrMainUbahKemasanBJ.ExportExcel1Click(Sender: TObject);
begin
  with QuView do
  begin
    Close;
    SQL.Clear;
    SQL.Add(StrPO);
    Prepared;
    Parameters[0].Value:=strtoint(PeriodBln);
    Parameters[1].Value:=strtoint(PeriodThn);
    open;
  end;
  if (IsExcel) then
  begin
      Save('xls', 'Microsoft Excel (*.xls)|*.xls', FrMainUbahKemasanBJ.Caption, dxDBGrid1.SaveToXLS);
      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
      LoggingData(IDUser,'P','Export','','User '+IdUser+' Export Data '+ SaveDialog.FileName);
  end else
  begin
      ShowMessage('Anda tidak berhak Mengeksport Excel');
  end;


end;

procedure TFrMainUbahKemasanBJ.AutoFilter1Click(Sender: TObject);
begin
    if dxDBGrid1.Filter.Active=false then
    dxDBGrid1.Filter.Active:=true
    else
    dxDBGrid1.Filter.Active:=false;

end;

procedure TFrMainUbahKemasanBJ.ShowGrid1Click(Sender: TObject);
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

procedure TFrMainUbahKemasanBJ.ShowHeader1Click(Sender: TObject);
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

procedure TFrMainUbahKemasanBJ.Show1Click(Sender: TObject);
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

procedure TFrMainUbahKemasanBJ.ToolButton1Click(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if IsTambah then
    begin
      if Assigned(FrUbahKemasanBJ) then
         FrUbahKemasanBJ.Show
      else
      begin
        ModalKoreksi:=False;
        xStatus := 'H';
        Application.CreateForm(TFrUbahKemasanBJ,FrUbahKemasanBJ);
        CekOtoritasMenu(IDUser,tag,FrUbahKemasanBJ.Istambah,FrUbahKemasanBJ.Ishapus,
                        FrUbahKemasanBJ.Iskoreksi, FrUbahKemasanBJ.isCetak, FrUbahKemasanBJ.isExcel);
        FrUbahKemasanBJ.PanelShow2.Visible:=false;
        FrUbahKemasanBJ.Show;
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

procedure TFrMainUbahKemasanBJ.FormKeyDown(Sender: TObject; var Key: Word;
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
   end;
end;

procedure TFrMainUbahKemasanBJ.ToolButton2Click(Sender: TObject);
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
         begin
           mPosisi:=QuMaster.fieldbyname('groupnobukti').AsString;
           if Assigned(FrUbahKemasanBJ) then
              FrUbahKemasanBJ.Show
           else
           begin
             ModalKoreksi:=True;
             xStatus := 'H';
             Application.CreateForm(TFrUbahKemasanBJ,FrUbahKemasanBJ);
             CekOtoritasMenu(IDUser,tag,FrUbahKemasanBJ.Istambah,FrUbahKemasanBJ.Ishapus,
                          FrUbahKemasanBJ.Iskoreksi, FrUbahKemasanBJ.isCetak, FrUbahKemasanBJ.isExcel);
             FrUbahKemasanBJ.PanelShow2.Visible:=true;

             FrUbahKemasanBJ.Show;
           end;

           With QuMaster do
           begin
              Locate('groupnobukti',mPosisi,[LOC, LOP]);
           end;

           ActiveControl:=dxDBGrid1;
         end
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

procedure TFrMainUbahKemasanBJ.MultiSelect1Click(Sender: TObject);
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

procedure TFrMainUbahKemasanBJ.ToolButton4Click(Sender: TObject);
begin
  if (IsCetak) then
  begin
    ppLabel3.Caption:=koneksi[1];
    ppReport1.PrintReport;
  end else
  begin
      ShowMessage('Anda tidak berhak Mencetak Data');
  end;

end;

procedure TFrMainUbahKemasanBJ.ppReport1PreviewFormCreate(Sender: TObject);
begin
//  TppReport(Sender).PreviewForm.WindowState:=wsMaximized;
//  TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zs100Percent;
end;

procedure TFrMainUbahKemasanBJ.dxDBGrid1ColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
  SaveToIniFiles(IDUser,FrMainUbahKemasanBJ,dxDBGrid1);
end;

procedure TFrMainUbahKemasanBJ.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

procedure TFrMainUbahKemasanBJ.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
    if ANode.HasChildren then
    Exit;

     if not AFocused then
    begin
      if ANode.Index mod 2 =0 then
         AColor:=$00d8ebeb
      else
         AColor:=$00d6f8f3;
    end;

end;


procedure TFrMainUbahKemasanBJ.dxDBGrid1CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
    if AColumn = dxDBGrid1.Columns[0] then
  begin
    AColor := $00ffefe1;
    AFont.Color:=clblack;
    AFont.Style := AFont.Style + [fsBold];
  end;
end;

procedure TFrMainUbahKemasanBJ.tvMasterFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
 with QuDetail do
        begin
         Close;
         Open;
        end;
end;

procedure TFrMainUbahKemasanBJ.ToolButton3Click(Sender: TObject);
begin
 if QuMasterIsOtorisasi1.Value then
  begin
    MessageDlg('No. '+QuMasterNoBukti.AsString+' telah diotorisasi oleh user '+QuMasterOtoUser1.AsString+#13+'pada tanggal '+
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
      Otorisasi('DBUbahKemasan',Menu,IDUser,'',QuMasterNoBukti.Value);
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

end.
