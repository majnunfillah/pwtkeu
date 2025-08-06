unit FrmMainBPPBT;

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

  TFrMainBPPBT = class(TForm)
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
    StringField1: TStringField;
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
    dxPageControl1: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    cxGrid2: TcxGrid;
    tvPO: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dxTabSheet2: TdxTabSheet;
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    QumasterPO: TADOQuery;
    dsMasterPO: TDataSource;
    QuMasterNoUrut: TStringField;
    QuMasterNoBukti: TStringField;
    QuMasterTanggal: TDateTimeField;
    QuMasterKdDep: TStringField;
    QuMasterNmDep: TStringField;
    QuMasterKodeGdg: TStringField;
    tvMasterNoUrut: TcxGridDBColumn;
    tvMasterNoBukti: TcxGridDBColumn;
    tvMasterTanggal: TcxGridDBColumn;
    tvMasterKdDep: TcxGridDBColumn;
    tvMasterNmDep: TcxGridDBColumn;
    tvMasterKodeGdg: TcxGridDBColumn;
    QumasterPONOBUKTI: TStringField;
    QumasterPOTANGGAL: TDateTimeField;
    QumasterPOKodeGdg: TStringField;
    QumasterPOKDDEP: TStringField;
    QumasterPONMDEP: TStringField;
    QumasterPOURUT: TIntegerField;
    QumasterPOKODEBRG: TStringField;
    QumasterPONAMABRG: TStringField;
    QumasterPONOSAT: TWordField;
    QumasterPOSatuan: TStringField;
    QumasterPOQntSisa: TBCDField;
    tvPONOBUKTI: TcxGridDBColumn;
    tvPOTANGGAL: TcxGridDBColumn;
    tvPOKodeGdg: TcxGridDBColumn;
    tvPOKDDEP: TcxGridDBColumn;
    tvPONMDEP: TcxGridDBColumn;
    tvPOURUT: TcxGridDBColumn;
    tvPOKODEBRG: TcxGridDBColumn;
    tvPONAMABRG: TcxGridDBColumn;
    tvPONOSAT: TcxGridDBColumn;
    tvPOSatuan: TcxGridDBColumn;
    tvPOQntBPPB: TcxGridDBColumn;
    tvPOQntBPSB: TcxGridDBColumn;
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
    QumasterPOQnt: TBCDField;
    QumasterPOQntBPPBT: TBCDField;
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
    procedure ToolButton4Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure frxReport1AfterPrintReport(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPosisi,MenuBPPBT : string;
    IsTambah,IsKoreksi,IsHapus, IsCetak, ModalKoreksi, IsExcel : Boolean;
    SortBy,Prioritas :String;
    xQnt,xDiskon,xDPP,xPPN,xJumlah : Real;
    mMainBPPBT_NoBukti: String;
    BPPBTOL : Integer;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrMainBPPBT: TFrMainBPPBT;
  S: array[0..255] of char;

implementation

uses MyModul, MyProcedure, MyGlobal, FrmBrows, FrmBppBT;
{$R *.dfm}

procedure TFrMainBPPBT.GetData(bulan,tahun:integer);
begin
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

procedure TFrMainBPPBT.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrMainBPPBT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
           MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
  begin
    if Application.FindComponent('FrBPPBT')<>nil then
    begin
       MessageDlg('Modul '+FrBPPBT.Caption+' belum ditutup !',mtWarning,[mbok],0);
       Action := caNone
    end
    else Action:=caFree;
  end
  else Action:=caNone;
end;

procedure TFrMainBPPBT.FormDestroy(Sender: TObject);
begin
  FrMainBPPBT:=nil;
end;

procedure TFrMainBPPBT.FormShow(Sender: TObject);
begin
  TampilValid.Checked:=true;
  TampilBatal.Checked:=false;
  ToolButton10.Click;
//  dxTabSheet1.Visible:=false;
end;

procedure TFrMainBPPBT.ToolButton10Click(Sender: TObject);
begin
   GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
end;

procedure TFrMainBPPBT.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrMainBPPBT.AutoFilter1Click(Sender: TObject);
begin
    if dxDBGrid1.Filter.Active=false then
    dxDBGrid1.Filter.Active:=true
    else
    dxDBGrid1.Filter.Active:=false;

end;

procedure TFrMainBPPBT.ShowGrid1Click(Sender: TObject);
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

procedure TFrMainBPPBT.ShowHeader1Click(Sender: TObject);
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

procedure TFrMainBPPBT.Show1Click(Sender: TObject);
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

procedure TFrMainBPPBT.ToolButton1Click(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if IsTambah then
    begin
      if Assigned(FrBPPBT) then FrBPPBT.Show else
      begin
        ModalKoreksi:=False;
        gTempNoBukti := QumasterPONOBUKTI.AsString;
        Application.CreateForm(TFrBPPBT,FrBPPBT);
        CekOtoritasMenu(IDUser,tag,FrBPPBT.Istambah,FrBPPBT.Ishapus,
          FrBPPBT.Iskoreksi, FrBPPBT.isCetak, FrBPPBT.isExcel);
          {with DM.QuCari do
          Begin
           Close;
           SQL.Clear;
           SQL.Add('Select KodeGdg from dbGudang where Nama Not Like ''%Bahan%''');
           Open;
           FrBPPBT.KodeGdg.Text:=FieldByName('Kodegdg').AsString;
          end; }
        FrBPPBT.Show;
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

procedure TFrMainBPPBT.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrMainBPPBT.ToolButton2Click(Sender: TObject);
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
        if Assigned(FrBPPBT) then
          FrBPPBT.Show
        else
        begin
          ModalKoreksi:=True;
          Application.CreateForm(TFrBPPBT,FrBPPBT);
          CekOtoritasMenu(IDUser,tag,FrBPPBT.Istambah,FrBPPBT.Ishapus,
            FrBPPBT.Iskoreksi, FrBPPBT.isCetak, FrBPPBT.isExcel);
          
          //FrPO.PanelShow2.Visible:=true;
          //FrPO.ActiveControl := FrPO.Tanggal;
          FrBPPBT.Show;
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

procedure TFrMainBPPBT.MultiSelect1Click(Sender: TObject);
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

procedure TFrMainBPPBT.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

procedure TFrMainBPPBT.TampilValidClick(Sender: TObject);
begin
   ToolButton11.Caption:=TampilValid.Caption;
   TampilValid.Checked:=true;
   TampilBatal.Checked:=false;
   ToolButton1.Enabled:=true;
   ToolButton2.Enabled:=true;
   ToolButton3.Caption:='&Batal';
   ToolButton10Click(self);
end;

procedure TFrMainBPPBT.TampilBatalClick(Sender: TObject);
begin
   ToolButton11.Caption:=TampilBatal.Caption;
   TampilValid.Checked:=false;
   TampilBatal.Checked:=True;
   ToolButton1.Enabled:=false;
   ToolButton2.Enabled:=false;
   ToolButton3.Caption:='&Valid';
   ToolButton10Click(self);
end;

procedure TFrMainBPPBT.ToolButton4Click(Sender: TObject);
begin
if Iscetak then
    MainCetak(frxDBDataset1,frxDataPerusahaan,DM.QuCari,Dm.QuCari2,'cetakBPPBT','Vwperusahaan',QuMasterNoBukti.AsString,'Nota\NotaPermintaanBahanTambahan.fr3',frxReport1)
else
   MsgTidakBerhakCetakData
end;

procedure TFrMainBPPBT.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
if CompareText(varName,'iduser')=0 then
        value:=IDUser;
end;

procedure TFrMainBPPBT.frxReport1AfterPrintReport(Sender: TObject);
begin
  NilaiCetak('CetakKe','DBBPPBT',QuMasterNoBukti.AsString);
end;

procedure TFrMainBPPBT.ToolButton13Click(Sender: TObject);
begin
 {if QuMasterIsOtorisasi1.Value then
  begin
    MessageDlg('No. '+QuMasterNoBukti.AsString+' telah diotorisasi oleh user '+QuMasterOtoUser1.AsString+#13+'pada tanggal '+
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
      Otorisasi('DBBPPBT',MenuBPPBT,IDUser,'',QuMasterNoBukti.Value);
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

procedure TFrMainBPPBT.ToolButton12Click(Sender: TObject);
begin
BM := QuMaster.GetBookmark;
  {frLogin := TFrLogin.Create(Self);
  frLogin.Label2.Caption :='Otorisasi';
  if frLogin.ShowModal=mrok then  }
  begin
    BatalOtorisasi('DbBPPBT',MenuBPPBT,IDUser,'',QuMasterNoBukti.Value);
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
