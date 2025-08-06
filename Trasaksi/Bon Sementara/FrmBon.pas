unit FrmBon;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, PBNumEdit, Mask, ToolEdit, Grids, Wwdbigrd, Wwdbgrid,
  ExtCtrls, Db, ADODB, ppDB, ppCtrls, ppPrnabl, ppClass, ppDBPipe, ppCache,
  ppBands, ppComm, ppRelatv, ppProd, ppReport, StrUtils, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxEdit,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView,
  cxGridLevel, cxGrid, dxmdaset, frxClass, frxDBSet,ATTerbilang, ComCtrls,
  ToolWin, cxDBData, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, cxGridDBTableView, dxPageControl, Variants;

type
  TFrBon = class(TForm)
    Panel1: TPanel;
    sp_bon: TADOStoredProc;
    QuBon: TADOQuery;
    QuBonTanggal: TDateTimeField;
    QuBonPenerima: TStringField;
    QuBonKeterangan: TStringField;
    QuBonDebet: TBCDField;
    QuBonKredit: TBCDField;
    DSBon: TDataSource;
    QuBonNoBukti: TStringField;
    QuCek: TADOQuery;
    DataSource3: TDataSource;
    QuBonDevisi: TStringField;
    QuBonUrut: TWordField;
    QuBonNOURUT: TStringField;
    QuBonPerkiraan: TStringField;
    QuBonTglInput: TDateTimeField;
    QuBonUserID: TStringField;
    QuBonBuktiKas: TStringField;
    QuBonUrutKas: TIntegerField;
    QuBonMyID: TBytesField;
    QuBonSaldo: TBCDField;
    dxBon: TdxMemData;
    dxBonBelumLunas: TdxMemData;
    dxBonTelahLunas: TdxMemData;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    QuCetak: TADOQuery;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton4: TToolButton;
    ToolButton10: TToolButton;
    ToolButton7: TToolButton;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton11: TToolButton;
    QuMaster: TADOQuery;
    QuMasterOut: TADOQuery;
    DsMaster: TDataSource;
    DsMasterOut: TDataSource;
    dxPageControl1: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    dxTabSheet2: TdxTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid2: TdxDBGrid;
    QuMasterDevisi: TStringField;
    QuMasterNoBukti: TStringField;
    QuMasterNOURUT: TStringField;
    QuMasterTanggal: TDateTimeField;
    QuMasterPenerima: TStringField;
    QuMasterKeterangan: TStringField;
    QuMasterDebet: TBCDField;
    QuMasterKredit: TBCDField;
    QuMasterPerkiraan: TStringField;
    QuMasterTglInput: TDateTimeField;
    QuMasterUserID: TStringField;
    QuMasterUrut: TWordField;
    QuMasterBuktiKas: TStringField;
    QuMasterUrutKas: TIntegerField;
    QuMasterOutDevisi: TStringField;
    QuMasterOutNoBukti: TStringField;
    QuMasterOutNOURUT: TStringField;
    QuMasterOutTanggal: TDateTimeField;
    QuMasterOutPenerima: TStringField;
    QuMasterOutKeterangan: TStringField;
    QuMasterOutDebet: TBCDField;
    QuMasterOutKredit: TBCDField;
    QuMasterOutPerkiraan: TStringField;
    QuMasterOutTglInput: TDateTimeField;
    QuMasterOutUserID: TStringField;
    QuMasterOutUrut: TWordField;
    QuMasterOutBuktiKas: TStringField;
    QuMasterOutUrutKas: TIntegerField;
    QuMasterKeyNoBukti: TStringField;
    QuMasterOutKeyNoBukti: TStringField;
    dxDBGrid2KeyNoBukti: TdxDBGridMaskColumn;
    dxDBGrid2Devisi: TdxDBGridMaskColumn;
    dxDBGrid2NoBukti: TdxDBGridMaskColumn;
    dxDBGrid2NOURUT: TdxDBGridMaskColumn;
    dxDBGrid2Tanggal: TdxDBGridDateColumn;
    dxDBGrid2Penerima: TdxDBGridMaskColumn;
    dxDBGrid2Keterangan: TdxDBGridMaskColumn;
    dxDBGrid2Debet: TdxDBGridMaskColumn;
    dxDBGrid2Kredit: TdxDBGridMaskColumn;
    dxDBGrid2Perkiraan: TdxDBGridMaskColumn;
    dxDBGrid2TglInput: TdxDBGridDateColumn;
    dxDBGrid2UserID: TdxDBGridMaskColumn;
    dxDBGrid2Urut: TdxDBGridMaskColumn;
    dxDBGrid2BuktiKas: TdxDBGridMaskColumn;
    dxDBGrid2UrutKas: TdxDBGridMaskColumn;
    dxDBGrid1KeyNoBukti: TdxDBGridMaskColumn;
    dxDBGrid1Devisi: TdxDBGridMaskColumn;
    dxDBGrid1NoBukti: TdxDBGridMaskColumn;
    dxDBGrid1NOURUT: TdxDBGridMaskColumn;
    dxDBGrid1Tanggal: TdxDBGridDateColumn;
    dxDBGrid1Penerima: TdxDBGridMaskColumn;
    dxDBGrid1Keterangan: TdxDBGridMaskColumn;
    dxDBGrid1Debet: TdxDBGridMaskColumn;
    dxDBGrid1Kredit: TdxDBGridMaskColumn;
    dxDBGrid1Perkiraan: TdxDBGridMaskColumn;
    dxDBGrid1TglInput: TdxDBGridDateColumn;
    dxDBGrid1UserID: TdxDBGridMaskColumn;
    dxDBGrid1Urut: TdxDBGridMaskColumn;
    dxDBGrid1BuktiKas: TdxDBGridMaskColumn;
    dxDBGrid1UrutKas: TdxDBGridMaskColumn;
    QuMasterSaldo: TBCDField;
    QuMasterOutSaldo: TBCDField;
    dxDBGrid1Saldo: TdxDBGridMaskColumn;
    dxDBGrid2Saldo: TdxDBGridMaskColumn;
    Panel2: TPanel;
    Perkiraan: TComboBox;
    Label1: TLabel;
    QuMasterKodeVls: TStringField;
    QuMasterKurs: TBCDField;
    QuMasterDebetD: TBCDField;
    QuMasterKreditD: TBCDField;
    QuMasterSaldoD: TBCDField;
    QuMasterOutKodeVls: TStringField;
    QuMasterOutKurs: TBCDField;
    QuMasterOutDebetD: TBCDField;
    QuMasterOutKreditD: TBCDField;
    QuMasterOutSaldoD: TBCDField;
    dxDBGrid2KodeVls: TdxDBGridMaskColumn;
    dxDBGrid2Kurs: TdxDBGridMaskColumn;
    dxDBGrid2DebetD: TdxDBGridMaskColumn;
    dxDBGrid2KreditD: TdxDBGridMaskColumn;
    dxDBGrid2SaldoD: TdxDBGridMaskColumn;
    dxDBGrid1KodeVls: TdxDBGridMaskColumn;
    dxDBGrid1Kurs: TdxDBGridMaskColumn;
    dxDBGrid1DebetD: TdxDBGridMaskColumn;
    dxDBGrid1KreditD: TdxDBGridMaskColumn;
    dxDBGrid1SaldoD: TdxDBGridMaskColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PerkiraanDropDown(Sender: TObject);
    procedure PerkiraanClick(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure dxPageControl1Change(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBGrid2CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
  private
    { Private declarations }
    mDebetBon: Boolean;
    procedure GetData(pTahun, pBulan: Integer; pPerkiraan: String);
    procedure TampilanTombol;
  public
    { Public declarations }
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel : Boolean;
    xPerkiraan : Array of Variant;
    xDevisi : Array of Variant;
    BonOL: Integer;
    MenuBon : String;
    procedure SimpanData(Choice: String);
  end;



var
  FrBon: TFrBon;
  model,tUrut,mBukti : string;
  semuaData,mValid : boolean;
  bon : boolean=true;
  mUrut : integer;
  sdhLunas : boolean=false;

implementation

uses MyGlobal, MyModul, MyProcedure, FrmBrows, FrmSetForm, FrmSubBon;

{$R *.DFM}

procedure TFrBon.GetData(pTahun, pBulan: Integer; pPerkiraan: String);
begin
  QuMaster.Close;
  QuMaster.SQL.Strings[2]:='select @Tahun='+IntToStr(pTahun)+', @Bulan='+IntToStr(pBulan)+', @Perkiraan='+QuotedStr(pPerkiraan);
  QuMaster.Open;
  QuMasterOut.Close;
  QuMasterOut.SQL.Strings[2]:='select @Tahun='+IntToStr(pTahun)+', @Bulan='+IntToStr(pBulan)+', @Perkiraan='+QuotedStr(pPerkiraan);
  QuMasterOut.Open;
end;

procedure TFrBon.TampilanTombol;
begin
  ToolButton1.Enabled:=dxPageControl1.ActivePageIndex=0;
  ToolButton2.Enabled:=dxPageControl1.ActivePageIndex=0;
  ToolButton3.Enabled:=dxPageControl1.ActivePageIndex=0;
end;

procedure TFrBon.SimpanData(Choice: String);
begin
  if Choice='I' then
  begin
    DM.QuCari.Close;
    DM.QuCari.SQL.Clear;
    DM.QuCari.SQL.Add('select top 1 Urut from dbBon where NoBukti='+QuotedStr(FrSubBon.NoBukti.Text));
    DM.QuCari.SQL.Add('and Perkiraan='+QuotedStr(FrSubBon.mBon_Perkiraan));
    DM.QuCari.SQL.Add('order by Urut desc ');
    DM.QuCari.Open;
    if DM.QuCari.IsEmpty then
      mUrut:=1
    else
      mUrut:=DM.QuCari.FieldByName('Urut').AsInteger+1;
  end;

  with Sp_Bon do
  begin
    if Choice='D' then
    begin
      Parameters[1].Value:=Choice;
      Parameters[2].Value:='01';
      Parameters[3].Value:=QuMasterNoBukti.Text;
      Parameters[4].Value:=QuMasterTanggal.AsDateTime;
      Parameters[5].Value:=QuMasterPenerima.AsString;
      Parameters[6].Value:=QuMasterKeterangan.AsString;
      Parameters[7].Value:=QuMasterDebet.AsFloat;
      Parameters[8].Value:=QuMasterKredit.AsFloat;
      Parameters[9].Value:=QuMasterPerkiraan.AsString;
      Parameters[10].Value:=Now;
      Parameters[11].Value:=IDUser;
      Parameters[12].Value:=mUrut;
      Parameters[13].Value:=QuMasterKodeVls.AsString;
      Parameters[14].Value:=QuMasterKurs.AsFloat;
      Parameters[15].Value:=QuMasterDebetD.AsFloat;
      Parameters[16].Value:=QuMasterKreditD.AsFloat;
    end else
    begin
      Parameters[1].Value:=Choice;
      Parameters[2].Value:='01';
      Parameters[3].Value:=FrSubBon.NoBukti.Text;
      Parameters[4].Value:=FrSubBon.Tanggal.Date;
      Parameters[5].Value:=FrSubBon.Penerima.Text;
      Parameters[6].Value:=FrSubBon.Keterangan.Text;
      Parameters[7].Value:=FrSubBon.Debet.AsFloat*FrSubBon.Kurs.AsFloat;
      Parameters[8].Value:=FrSubBon.Kredit.AsFloat*FrSubBon.Kurs.AsFloat;
      Parameters[9].Value:=FrSubBon.mBon_Perkiraan;
      Parameters[10].Value:=Now;
      Parameters[11].Value:=IDUser;
      Parameters[12].Value:=mUrut;
      Parameters[13].Value:=FrSubBon.KodeVls.Text;
      Parameters[14].Value:=FrSubBon.Kurs.AsFloat;
      if FrSubBon.KodeVls.Text='IDR' then
      begin
        Parameters[15].Value:=0;
        Parameters[16].Value:=0;
      end else
      begin
        Parameters[15].Value:=FrSubBon.Debet.AsFloat;
        Parameters[16].Value:=FrSubBon.Kredit.AsFloat;
      end;
    end;
    try
      ExecProc;
      FrBon.ToolButton10.Click;
      if Choice<>'D' then
        FrBon.QuMaster.Locate('NoBukti;Urut',VarArrayOf([FrSubBon.NoBukti.Text,mUrut]),[]);
    except
      ShowMessage('Proses Gagal');
    end;
  end;
end;

procedure TFrBon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:=cafree;
end;

procedure TFrBon.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then SendMessage(Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrBon.FormShow(Sender: TObject);
begin
  dxPageControl1.ActivePageIndex:=0;
  ToolButton10.Click;
end;

procedure TFrBon.FormCreate(Sender: TObject);
var i : Integer;
begin
  dxPageControl1.ActivePageIndex:=0;
  TampilanTombol;
  Panel1.Color:=FrSetForm.PanelMain.Color;
  ToolBar1.Color:=FrSetForm.ToolBarMain.Color;
  FrBon.Color:=FrSetForm.PanelTransaksi.Color;
  dxDBGrid1.HeaderColor:=FrSetForm.WarnaHeaderGrid;
  dxDBGrid1.HeaderFont:=FrSetForm.cxStyle1.Font;
  dxDBGrid1.Color:=FrSetForm.cxStyle2.Color;
  dxDBGrid2.HeaderColor:=FrSetForm.WarnaHeaderGrid;
  dxDBGrid2.HeaderFont:=FrSetForm.cxStyle1.Font;
  dxDBGrid2.Color:=FrSetForm.cxStyle2.Color;
  with DM.QuCari do
  begin
    close;
    sql.Clear;
    sql.Add('Select a.Perkiraan,b.Keterangan ');
    sql.add('from dbPosthutpiut a ');
    sql.add('     left outer join dbperkiraan b on b.perkiraan=a.perkiraan ');
    sql.add('where a.Kode=''KAS'' or A.IsBeliJual=1 Order by a.Perkiraan');
    Open;
    Perkiraan.Items.Clear;
    i := 0;
    SetLength(xPerkiraan,DM.QuCari.RecordCount);
    while not eof do
    begin
      xPerkiraan[i]:=FieldByname('Perkiraan').AsString;
      Perkiraan.Items.Add(FieldByname('Keterangan').AsString+' ('+FieldByname('Perkiraan').AsString+')');
      inc(i);
      next;
    end;
    Perkiraan.ItemIndex :=0;
  end;
end;

procedure TFrBon.FormDestroy(Sender: TObject);
begin
  FrBon:=nil;
end;

procedure TFrBon.PerkiraanDropDown(Sender: TObject);
begin
  ComboBox_AutoWidth(Perkiraan);
end;

procedure TFrBon.PerkiraanClick(Sender: TObject);
begin
  ToolButton10.Click;
end;

procedure TFrBon.ToolButton10Click(Sender: TObject);
begin
  GetData(StrToInt(PeriodThn),StrToInt(PeriodBln),xPerkiraan[Perkiraan.ItemIndex]);
end;

procedure TFrBon.ToolButton1Click(Sender: TObject);
begin
  if IsTambah then
  begin
    Application.CreateForm(TFrSubBon, FrSubBon);
    FrSubBon.IsSimpan:=True;
    FrSubBon.mBon_Perkiraan:=xPerkiraan[Perkiraan.ItemIndex];
    FrSubBon.mBon_Devisi:='01';
    FrSubBon.IsDebet:=True;
    FrSubBon.ShowModal;
  end
  else
  begin
    MsgTidakBerhakTambahData;
    dxPageControl1.ActivePageIndex:=0;
    ActiveControl:=dxDBGrid1;
  end;
end;

procedure TFrBon.ToolButton11Click(Sender: TObject);
begin
  if IsTambah then
  begin
    Application.CreateForm(TFrSubBon, FrSubBon);
    FrSubBon.IsSimpan:=True;
    FrSubBon.mBon_Perkiraan:=xPerkiraan[Perkiraan.ItemIndex];
    FrSubBon.mBon_Devisi:='01';
    FrSubBon.IsDebet:=False;
    if dxPageControl1.ActivePageIndex=0 then
    begin
      FrSubBon.NoBukti.Text:=QuMasterNoBukti.AsString;
      FrSubBon.Penerima.Text:=QuMasterPenerima.AsString;
      FrSubBon.Keterangan.Text:=QuMasterKeterangan.AsString;
      FrSubBon.KodeVls.Text:=QuMasterKodeVls.AsString;
      FrSubBon.Kurs.Value:=QuMasterKurs.AsFloat;
      with DM.QuKOde do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select sum(Debet-Kredit) Saldo, sum(DebetD-KreditD) SaldoD from dbBon where NoBukti='+QuotedStr(QuMasterNoBukti.AsString));
        SQL.Add('and Perkiraan='+QuotedStr(QuMasterPerkiraan.AsString)+' and Devisi='+QuotedStr(QuMasterDevisi.AsString));
        Open;
      end;
      if FrSubBon.KodeVls.Text='IDR' then
        FrSubBon.Kredit.Value:=DM.QuKOde.FieldByName('Saldo').AsCurrency
      else
        FrSubBon.Kredit.Value:=DM.QuKOde.FieldByName('SaldoD').AsCurrency;
    end
    else
    begin
      FrSubBon.NoBukti.Text:=QuMasterOutNoBukti.AsString;
      FrSubBon.Penerima.Text:=QuMasterOutPenerima.AsString;
      FrSubBon.Keterangan.Text:=QuMasterOutKeterangan.AsString;
      FrSubBon.KodeVls.Text:=QuMasterOutKodeVls.AsString;
      FrSubBon.Kurs.Value:=QuMasterOutKurs.AsFloat;
      if FrSubBon.KodeVls.Text='IDR' then
        FrSubBon.Kredit.Value:=QuMasterOutSaldo.AsFloat
      else
        FrSubBon.Kredit.Value:=QuMasterOutSaldoD.AsFloat;
    end;
    FrSubBon.ShowModal;
  end
  else
  begin
    MsgTidakBerhakTambahData;
    dxPageControl1.ActivePageIndex:=0;
    ActiveControl:=dxDBGrid1;
  end;
end;

procedure TFrBon.ToolButton3Click(Sender: TObject);
var xMsg: String;
begin
  if IsHapus then
  begin
    if QuMasterKredit.Value<>0 then
    begin
      xMsg:=Format('Anda yakin No. Bon %s, Kredit %s dihapus ?',
      [QuMasterNoBukti.AsString, QuMasterKredit.DisplayText]);
      if (Application.MessageBox(PChar(xMsg),'Hapus Data',
        MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
      begin
        mUrut:=QuMasterUrut.AsInteger;
        SimpanData('D');
        ToolButton10.Click;
      end;
    end else
    begin
      if DataBersyarat('select * from dbBon where Devisi=:0 '+
        ' and Perkiraan=:1 and NoBukti=:2 and Kredit<>0',
        [QuMasterDevisi.AsString, QuMasterPerkiraan.AsString, QuMasterNoBukti.AsString],
        DM.QuCari)=True
      then
      begin
        MessageDlg('Sudah ada Transaksi Kredit, Transaksi Debet tidak boleh dihapus',
        mtInformation, [mbOK],0);
        try
          ActiveControl:=dxDBGrid1;
        except
        end;
      end else
      begin
        xMsg:=Format('Anda yakin No. Bon %s, Debet %s dihapus ?',
        [QuMasterNoBukti.AsString, QuMasterDebet.DisplayText]);
        if (Application.MessageBox(PChar(xMsg),'Hapus Data',
          MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
        begin
          mUrut:=QuMasterUrut.AsInteger;
          SimpanData('D');
          ToolButton10.Click;
        end;
      end;
    end;
  end else
  begin
    MsgTidakBerhakHapusData;
    try
      ActiveControl:=dxDBGrid1;
    except
    end;
  end;
end;

procedure TFrBon.ToolButton2Click(Sender: TObject);
begin
  if IsKoreksi then
  begin
    if (QuMasterDebet.AsCurrency<>0) and
      (DataBersyarat('select * from dbBon where Devisi=:0 '+
        ' and Perkiraan=:1 and NoBukti=:2 and Kredit<>0',
        [QuMasterDevisi.AsString, QuMasterPerkiraan.AsString, QuMasterNoBukti.AsString],
        DM.QuCari)=True)
    then
    begin
      MessageDlg('Sudah ada Transaksi Kredit, Transaksi Debet tidak boleh dikoreksi',
      mtInformation, [mbOK],0);
      try
        ActiveControl:=dxDBGrid1;
      except
      end;
    end else
    begin
      mUrut:=QuMasterUrut.AsInteger;
      Application.CreateForm(TFrSubBon, FrSubBon);
      FrSubBon.IsSimpan:=False;
      FrSubBon.mBon_Perkiraan:=QuMasterPerkiraan.AsString;
      FrSubBon.mBon_Devisi:='01';
      if QuMasterDebet.Value=0 then
        FrSubBon.IsDebet:=False
      else
        FrSubBon.IsDebet:=True;
      FrSubBon.Tanggal.Date:=QuMasterTanggal.AsDateTime;
      FrSubBon.NoBukti.Text:=QuMasterNoBukti.AsString;
      FrSubBon.Penerima.Text:=QuMasterPenerima.AsString;
      FrSubBon.Keterangan.Text:=QuMasterKeterangan.AsString;
      FrSubBon.KodeVls.Text:=QuMasterKodeVls.AsString;
      FrSubBon.Kurs.Value:=QuMasterKurs.AsFloat;
      if FrSubBon.KodeVls.Text='IDR' then
      begin
        FrSubBon.Debet.Value:=QuMasterDebet.AsFloat;
        FrSubBon.Kredit.Value:=QuMasterKredit.AsFloat;
      end else
      begin
        FrSubBon.Debet.Value:=QuMasterDebetD.AsFloat;
        FrSubBon.Kredit.Value:=QuMasterKreditD.AsFloat;
      end;
      FrSubBon.ShowModal;
    end;
  end
  else
  begin
    MsgTidakBerhakKoreksiData;
    dxPageControl1.ActivePageIndex:=0;
    ActiveControl:=dxDBGrid1;
  end;
end;

procedure TFrBon.ToolButton9Click(Sender: TObject);
begin
  Close;
end;

procedure TFrBon.dxPageControl1Change(Sender: TObject);
begin
  TampilanTombol;
end;

procedure TFrBon.dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
  ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
  var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
  var ADone: Boolean);
begin
  if ANode.HasChildren then
    Exit;

  if not AFocused then
  begin
    if ANode.Index mod 2 =0 then
       AColor:=FrSetForm.WarnaRowGridTrans2
    else
       AColor:=FrSetForm.WarnaRowGridTrans1;
  end;
end;

procedure TFrBon.dxDBGrid2CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
  ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
  var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
  var ADone: Boolean);
begin
  if ANode.HasChildren then
    Exit;

  if not AFocused then
  begin
    if ANode.Index mod 2 =0 then
       AColor:=FrSetForm.WarnaRowGridTrans2
    else
       AColor:=FrSetForm.WarnaRowGridTrans1;
  end;
end;

end.
