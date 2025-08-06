unit FrmMainPB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  StdCtrls, ExtCtrls, Menus, dxGridMenus, dxDBTLCl, dxGrClms,shellapi, Grids,
  Buttons, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxEdit, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, dxPageControl, frxDesgn, frxClass,
  frxDMPExport, frxDBSet;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrMainPB = class(TForm)
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
    Sp_Batal: TADOStoredProc;
    ToolButton8: TToolButton;
    ToolButton11: TToolButton;
    dxDBGrid1: TdxDBGrid;
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
    QuMasterNoBukti: TStringField;
    QuMasterTanggal: TDateTimeField;
    QuDetail1NoBukti: TStringField;
    QuDetail1Urut: TIntegerField;
    QuDetail1KodeBrg: TStringField;
    QuDetail1NamaBrg: TStringField;
    QuDetail1Qnt: TBCDField;
    QuDetail1NoSat: TWordField;
    QuDetail1Isi: TBCDField;
    QuDetail1Satuan: TStringField;
    QuMasterKodeGdg: TStringField;
    dxPageControl1: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    cxGrid2: TcxGrid;
    tvPO: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dxTabSheet2: TdxTabSheet;
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBTableView;
    tvMasterNoBukti: TcxGridDBColumn;
    tvMasterTanggal: TcxGridDBColumn;
    tvDetail: TcxGridDBTableView;
    tvDetailNoBukti: TcxGridDBColumn;
    tvDetailUrut: TcxGridDBColumn;
    tvDetailKodeBrg: TcxGridDBColumn;
    tvDetailNamaBrg: TcxGridDBColumn;
    tvDetailSatuan: TcxGridDBColumn;
    tvDetailQnt: TcxGridDBColumn;
    tvDetailNoSat: TcxGridDBColumn;
    tvDetailIsi: TcxGridDBColumn;
    tvDetailDBColumn1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    QuBPPB: TADOQuery;
    DSBPPB: TDataSource;
    QuBPPBNOBUKTI: TStringField;
    QuBPPBTANGGAL: TDateTimeField;
    QuBPPBURUT: TIntegerField;
    QuBPPBKODEBRG: TStringField;
    QuBPPBNAMABRG: TStringField;
    QuBPPBNOSAT: TWordField;
    QuBPPBSatuan: TStringField;
    QuBPPBQntSPK: TBCDField;
    QuBPPBQntPakai: TBCDField;
    QuBPPBQntSisa: TBCDField;
    tvPONOBUKTI: TcxGridDBColumn;
    tvPOTANGGAL: TcxGridDBColumn;
    tvPOURUT: TcxGridDBColumn;
    tvPOKODEBRG: TcxGridDBColumn;
    tvPONAMABRG: TcxGridDBColumn;
    tvPONOSAT: TcxGridDBColumn;
    tvPOSatuan: TcxGridDBColumn;
    tvPOQntSPK: TcxGridDBColumn;
    tvPOQntPakai: TcxGridDBColumn;
    tvPOQntSisa: TcxGridDBColumn;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDataPerusahaan: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxDesigner1: TfrxDesigner;
    ToolButton4: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
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
    QuMasternospk: TStringField;
    QuMasternoso: TStringField;
    tvMasterDBColumn1: TcxGridDBColumn;
    tvMasterDBColumn2: TcxGridDBColumn;
    PopupMenu3: TPopupMenu;
    CetakPO1: TMenuItem;
    CetakPOTanpaHarga1: TMenuItem;
    Prepress1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
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
    procedure tvMasterFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure dxPageControl1Change(Sender: TObject);
    procedure tvPOCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tvPOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tvPOMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ToolButton4Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure frxReport1AfterPrintReport(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure CetakPO1Click(Sender: TObject);
    procedure CetakPOTanpaHarga1Click(Sender: TObject);
    procedure Prepress1Click(Sender: TObject);
  private
    { Private declarations }
    PGIndex:Integer;
  public
    { Public declarations }
    mPosisi,MenuPB : string;
    IsTambah,IsKoreksi,IsHapus, IsCetak, ModalKoreksi, IsExcel : Boolean;
    SortBy,Prioritas :String;
    xQnt,xDiskon,xDPP,xPPN,xJumlah : Real;
    mMainPB_NoBukti: String;
    PBOL : Integer;
    Property XPGIndex:Integer Read PGIndex Write PGIndex; 
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrMainPB: TFrMainPB;
  S: array[0..255] of char;

implementation

uses MyModul, MyProcedure, MyGlobal, FrmBrows, FrmPB;
{$R *.dfm}

procedure TFrMainPB.GetData(bulan,tahun:integer);
begin
  with QuMaster do
  begin
    Close;
    SQL.Strings[2]:='select @Tahun='+IntToStr(tahun)+', @Bulan='+IntToStr(bulan);
    Open;
    Locate('nobukti',mPosisi,[LOC, LOP]);
  end;

  with QuBPPB do
  begin
    Close;
    SQL.Strings[1]:='select @Tahun='+IntToStr(tahun)+', @Bulan='+IntToStr(bulan);
    Open;
  end;
end;

procedure TFrMainPB.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrMainPB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
           MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
  begin
    if Application.FindComponent('FrPB')<>nil then
    begin
       MessageDlg('Modul '+FrPB.Caption+' belum ditutup !',mtWarning,[mbok],0);
       Action := caNone
    end
    else Action:=caFree;
  end
  else Action:=caNone;
end;

procedure TFrMainPB.FormDestroy(Sender: TObject);
begin
  FrMainPB:=nil;
end;

procedure TFrMainPB.FormShow(Sender: TObject);
begin
//  ToolButton2.Enabled:=dxPageControl1.ActivePageIndex=1;
  //dxPageControl1.ActivePageIndex:=1;
  //dxPageControl1.Tabs[0].Width := 0;
  //dxPageControl1.Tabs[0].Visible := false;
  ToolButton1.Enabled:=true;
//  TampilValid.Checked:=true;
 // TampilBatal.Checked:=false;
  ToolButton10.Click;
  //ToolButton1.Enabled:=(dxPageControl1.ActivePageIndex=0);// and (QuBPPBStok.AsFloat>=QuBPPBSisa.AsFloat);
end;

procedure TFrMainPB.ToolButton10Click(Sender: TObject);
begin
   GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
end;

procedure TFrMainPB.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrMainPB.AutoFilter1Click(Sender: TObject);
begin
    if dxDBGrid1.Filter.Active=false then
    dxDBGrid1.Filter.Active:=true
    else
    dxDBGrid1.Filter.Active:=false;

end;

procedure TFrMainPB.ShowGrid1Click(Sender: TObject);
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

procedure TFrMainPB.ShowHeader1Click(Sender: TObject);
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

procedure TFrMainPB.Show1Click(Sender: TObject);
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

procedure TFrMainPB.ToolButton1Click(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if IsTambah then
    begin
      if Assigned(FrPB) then FrPB.Show else
      begin
        ModalKoreksi:=False;
        PGIndex:=dxPageControl1.ActivePageIndex;
        Application.CreateForm(TFrPB,FrPB);
        CekOtoritasMenu(IDUser,tag,FrPB.Istambah,FrPB.Ishapus,
          FrPB.Iskoreksi, FrPB.isCetak, FrPB.isExcel);
        FrPB.Show;
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

procedure TFrMainPB.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_ESCAPE then
   begin
      Close;
   end else
   if (Key=VK_RETURN) and(dxPageControl1.ActivePageIndex=1)then
   begin
       ToolButton2.Click;
   end
   else if (key=VK_INSERT) then //and ((QuBPPBStok.AsFloat>=QuBPPBSisa.AsFloat)) then
   begin
       ToolButton1.Click;
   end
   else if key=VK_Delete then
   begin
        ToolButton3.Click;
   end;
end;

procedure TFrMainPB.ToolButton2Click(Sender: TObject);
begin
   if IsLockPeriodenk(StrToInt(PeriodBln),StrToInt(PeriodThn))  then
   Begin
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

              if Assigned(FrPB) then
                FrPB.Show
              else
              begin
                ModalKoreksi:=True;
                Application.CreateForm(TFrPB,FrPB);
                CekOtoritasMenu(IDUser,tag,FrPB.Istambah,FrPB.Ishapus,
                  FrPB.Iskoreksi, FrPB.isCetak, FrPB.isExcel);
                FrPB.Show;
              end;
            end else
            begin
              ShowMessage('Tidak ada transaksi yang dikoreksi !');
              ActiveControl:=dxDBGrid1;
            end;
          end
          else
          begin
            ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
          end;
      end
      else
      begin
        //ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
        MessageDlg('Periode telah terkunci !',mtWarning,[mbok],0);
      end;
   end
  else
  begin
    MessageDlg('Periode telah terkunci !',mtWarning,[mbok],0);
    ActiveControl := dxDBGrid1;
  end;
end;

procedure TFrMainPB.MultiSelect1Click(Sender: TObject);
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

procedure TFrMainPB.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

procedure TFrMainPB.TampilValidClick(Sender: TObject);
begin
   ToolButton11.Caption:=TampilValid.Caption;
   TampilValid.Checked:=true;
   TampilBatal.Checked:=false;
   //ToolButton1.Enabled:=true;
   ToolButton2.Enabled:=true;
   ToolButton3.Caption:='&Batal';
   ToolButton10Click(self);
end;

procedure TFrMainPB.TampilBatalClick(Sender: TObject);
begin
   ToolButton11.Caption:=TampilBatal.Caption;
   TampilValid.Checked:=false;
   TampilBatal.Checked:=True;
   //ToolButton1.Enabled:=false;
   ToolButton2.Enabled:=false;
   ToolButton3.Caption:='&Valid';
   ToolButton10Click(self);
end;

procedure TFrMainPB.tvMasterFocusedRecordChanged(
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

procedure TFrMainPB.dxPageControl1Change(Sender: TObject);
begin
{ToolButton1.Enabled:=(dxPageControl1.ActivePageIndex=0);// and (QuBPPBStok.AsFloat>=QuBPPBSisa.AsFloat);
 ToolButton2.Enabled:=dxPageControl1.ActivePageIndex=1;}
end;

procedure TFrMainPB.tvPOCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
if AViewInfo.GridRecord.Values[3]<AViewInfo.GridRecord.Values[6] Then
Begin
 ACanvas.Brush.Color:=clSilver;
end;
end;

procedure TFrMainPB.tvPOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //ToolButton1.Enabled:= (QuBPPBStok.AsFloat>=QuBPPBSisa.AsFloat);
end;






















procedure TFrMainPB.tvPOMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 //ToolButton1.Enabled:= (QuBPPBStok.AsFloat>=QuBPPBSisa.AsFloat);
end;

procedure TFrMainPB.ToolButton4Click(Sender: TObject);
var i : integer;
    DaftarNoBukti : String;
begin
{  frxDBDataset1.DataSet := DM.QuCari;

  with DM.QuCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from vwCetakPemakaianbahan ');
      SQL.Add('where	NoBukti in ( ');

      DaftarNoBukti := '';
      for i:= 0 to tvMaster.Controller.SelectedRowCount - 1 do
        begin
          if i = 0 then DaftarNoBukti := QuotedStr(tvMaster.Controller.SelectedRows[i].Values[0])
          else DaftarNoBukti := DaftarNoBukti +','+ QuotedStr(tvMaster.Controller.SelectedRows[i].Values[0]);
          if i <> tvMaster.Controller.SelectedRowCount - 1 then SQL.Add(QuotedStr(tvMaster.Controller.SelectedRows[i].Values[0])+',')
          else SQL.Add(QuotedStr(tvMaster.Controller.SelectedRows[i].Values[0])+') ')
        end;
      //ShowMessage(DaftarNoBukti);

      SQL.Add('order by Urut');
      Open;
    end;
  frxDBDataset1.Close;
  frxDBDataset1.Open;

  frxDataPerusahaan.DataSet := DM.QuCari2;
  with DM.QuCari2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from Vwperusahaan ');
      Open;
    end;
  frxDataPerusahaan.Close;
  frxDataPerusahaan.Open;

  frxReport1.LoadFromFile('Nota\NotaPemakaianBahan.fr3');
  frxReport1.ShowReport;
//  if Iscetak then
//      MainCetak(frxDBDataset1,frxDataPerusahaan,DM.QuCari,Dm.QuCari2,'CetakPemakaianBahan','Vwperusahaan',DaftarNoBukti,'Nota\NotaPemakaianBahan.fr3',frxReport1)
//  else
//     MsgTidakBerhakCetakData
 }

end;

procedure TFrMainPB.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
if CompareText(varName,'iduser')=0 then
        value:=IDUser;
end;

procedure TFrMainPB.frxReport1AfterPrintReport(Sender: TObject);
begin
  NilaiCetak('CetakKe','DbpenyerahanBhn',QuMasterNoBukti.AsString);
end;

procedure TFrMainPB.ToolButton13Click(Sender: TObject);
var i:Integer;
begin
  {if QuMasterIsOtorisasi1.Value then
  begin
    MessageDlg('No. S P K '+QuMasterNoBukti.AsString+' telah diotorisasi oleh user '+QuMasterOtoUser1.AsString+#13+'pada tanggal '+
               FormatDatetime('DD-MMM-YYYY',QuMasterTglOto1.AsDateTime)+' Jam '+FormatDateTime('HH:MM:SS',QuMasterTglOto1.AsDateTime)+#13+
               'Data tidak dapat diotorisasi lagi !!!',mtWarning,[mbok],0);
    ActiveControl := cxGrid1;
  end
  else }
  I:=QuMaster.RecNo;
  mPosisi:=Qumaster.fieldbyname('nobukti').AsString;
  begin

    begin
      Otorisasi('DbpenyerahanBhn',MenuPB,IDUser,'',QuMasterNoBukti.Value);

      Begin
      qumaster.DisableControls;
        ToolButton10.Click;
      qumaster.EnableControls;
        ///

        QuMaster.RecNo:=i;

        //mPosisi:=Qumaster.fieldbyname('nobukti').AsString;
      end;
    end;
  end;
  //GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
end;

procedure TFrMainPB.ToolButton12Click(Sender: TObject);
var i:Integer;
begin
//BM := QuMaster.GetBookmark;
  {frLogin := TFrLogin.Create(Self);
  frLogin.Label2.Caption :='Otorisasi';
  if frLogin.ShowModal=mrok then  }
    I:=QuMaster.RecNo;
  begin
    BatalOtorisasi('DbpenyerahanBhn',MenuPB,IDUser,'',QuMasterNoBukti.Value);
    Begin
          qumaster.DisableControls;
        ToolButton10.Click;
      qumaster.EnableControls;
      //ToolButton10.Click;
      {if QuMaster.BookmarkValid(BM) then
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
            Begin
      qumaster.DisableControls;
        ToolButton10.Click;
      qumaster.EnableControls;
        ///

        QuMaster.RecNo:=i;
      end; }
    end;
  end;
end;

procedure TFrMainPB.CetakPO1Click(Sender: TObject);
var i : integer;
    DaftarNoBukti : String;
begin
  frxDBDataset1.DataSet := DM.QuCari;

  with DM.QuCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from vwCetakPemakaianbahan ');
      SQL.Add('where	NoBukti in ( ');

      DaftarNoBukti := '';
      for i:= 0 to tvMaster.Controller.SelectedRowCount - 1 do
        begin
          if i = 0 then DaftarNoBukti := QuotedStr(tvMaster.Controller.SelectedRows[i].Values[0])
          else DaftarNoBukti := DaftarNoBukti +','+ QuotedStr(tvMaster.Controller.SelectedRows[i].Values[0]);
          if i <> tvMaster.Controller.SelectedRowCount - 1 then SQL.Add(QuotedStr(tvMaster.Controller.SelectedRows[i].Values[0])+',')
          else SQL.Add(QuotedStr(tvMaster.Controller.SelectedRows[i].Values[0])+') ')
        end;
      //ShowMessage(DaftarNoBukti);

      SQL.Add('order by Urut');
      Open;
    end;
  frxDBDataset1.Close;
  frxDBDataset1.Open;

  frxDataPerusahaan.DataSet := DM.QuCari2;
  with DM.QuCari2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from Vwperusahaan ');
      Open;
    end;
  frxDataPerusahaan.Close;
  frxDataPerusahaan.Open;

  frxReport1.LoadFromFile('Nota\NotaPemakaianBahan.fr3');
  frxReport1.ShowReport;
//  if Iscetak then
//      MainCetak(frxDBDataset1,frxDataPerusahaan,DM.QuCari,Dm.QuCari2,'CetakPemakaianBahan','Vwperusahaan',DaftarNoBukti,'Nota\NotaPemakaianBahan.fr3',frxReport1)
//  else
//     MsgTidakBerhakCetakData


end;


procedure TFrMainPB.CetakPOTanpaHarga1Click(Sender: TObject);
var i : integer;
    DaftarNoBukti : String;
begin
  frxDBDataset1.DataSet := DM.QuCari;

  with DM.QuCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from vwCetakPemakaianbahan ');
      SQL.Add('where	NoBukti in ( ');

      DaftarNoBukti := '';
      for i:= 0 to tvMaster.Controller.SelectedRowCount - 1 do
        begin
          if i = 0 then DaftarNoBukti := QuotedStr(tvMaster.Controller.SelectedRows[i].Values[0])
          else DaftarNoBukti := DaftarNoBukti +','+ QuotedStr(tvMaster.Controller.SelectedRows[i].Values[0]);
          if i <> tvMaster.Controller.SelectedRowCount - 1 then SQL.Add(QuotedStr(tvMaster.Controller.SelectedRows[i].Values[0])+',')
          else SQL.Add(QuotedStr(tvMaster.Controller.SelectedRows[i].Values[0])+') ')
        end;
      //ShowMessage(DaftarNoBukti);

      SQL.Add('order by Urut');
      Open;
    end;
  frxDBDataset1.Close;
  frxDBDataset1.Open;

  frxDataPerusahaan.DataSet := DM.QuCari2;
  with DM.QuCari2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from Vwperusahaan ');
      Open;
    end;
  frxDataPerusahaan.Close;
  frxDataPerusahaan.Open;

  frxReport1.LoadFromFile('Nota\NotaPemakaianBahanProDuksi.fr3');
  frxReport1.ShowReport;
//  if Iscetak then
//      MainCetak(frxDBDataset1,frxDataPerusahaan,DM.QuCari,Dm.QuCari2,'CetakPemakaianBahan','Vwperusahaan',DaftarNoBukti,'Nota\NotaPemakaianBahan.fr3',frxReport1)
//  else
//     MsgTidakBerhakCetakData



end;

procedure TFrMainPB.Prepress1Click(Sender: TObject);
var i : integer;
    DaftarNoBukti : String;
begin
  frxDBDataset1.DataSet := DM.QuCari;

  with DM.QuCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from vwCetakPemakaianbahan ');
      SQL.Add('where	NoBukti in ( ');

      DaftarNoBukti := '';
      for i:= 0 to tvMaster.Controller.SelectedRowCount - 1 do
        begin
          if i = 0 then DaftarNoBukti := QuotedStr(tvMaster.Controller.SelectedRows[i].Values[0])
          else DaftarNoBukti := DaftarNoBukti +','+ QuotedStr(tvMaster.Controller.SelectedRows[i].Values[0]);
          if i <> tvMaster.Controller.SelectedRowCount - 1 then SQL.Add(QuotedStr(tvMaster.Controller.SelectedRows[i].Values[0])+',')
          else SQL.Add(QuotedStr(tvMaster.Controller.SelectedRows[i].Values[0])+') ')
        end;
      //ShowMessage(DaftarNoBukti);

      SQL.Add('order by Urut');
      Open;
    end;
  frxDBDataset1.Close;
  frxDBDataset1.Open;

  frxDataPerusahaan.DataSet := DM.QuCari2;
  with DM.QuCari2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from Vwperusahaan ');
      Open;
    end;
  frxDataPerusahaan.Close;
  frxDataPerusahaan.Open;

  frxReport1.LoadFromFile('Nota\NotaPemakaianBahanPrePress.fr3');
  frxReport1.ShowReport;
//  if Iscetak then
//      MainCetak(frxDBDataset1,frxDataPerusahaan,DM.QuCari,Dm.QuCari2,'CetakPemakaianBahan','Vwperusahaan',DaftarNoBukti,'Nota\NotaPemakaianBahan.fr3',frxReport1)
//  else
//     MsgTidakBerhakCetakData



end;


end.
