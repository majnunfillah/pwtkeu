unit FrmPiutang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  ImgList, StdCtrls, ExtCtrls, Menus, ppBands, ppVar, ppCtrls, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,ppviewr,
  dxGridMenus, frxClass, frxDBSet, dxDBTLCl, dxGrClms, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid,cxExportGrid4Link,Shellapi ;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrPiutang = class(TForm)
    ToolBar1: TToolBar;
    QuView: TADOQuery;
    DsView: TDataSource;
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
    ImageList2: TImageList;
    ToolButton10: TToolButton;
    SaveDialog: TSaveDialog;
    MultiSelect1: TMenuItem;
    sp_barang: TADOStoredProc;
    frxDBDataset1: TfrxDBDataset;
    adoqBarang: TADOQuery;
    frxReport1: TfrxReport;
    PopupMenu2: TPopupMenu;
    Semua: TMenuItem;
    Aktif: TMenuItem;
    TidakAktif: TMenuItem;
    tvMaster: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ShowGroupPanel1: TMenuItem;
    Panel1: TPanel;
    Perkiraan: TComboBox;
    Label2: TLabel;
    tvDetail: TcxGridDBTableView;
    tvMasterNoFaktur: TcxGridDBColumn;
    tvMasterKodeCustSupp: TcxGridDBColumn;
    tvMasterTanggal: TcxGridDBColumn;
    tvMasterJatuhTempo: TcxGridDBColumn;
    tvMasterSaldo: TcxGridDBColumn;
    tvMasterValas: TcxGridDBColumn;
    tvMasterKurs: TcxGridDBColumn;
    tvMasterSaldoD: TcxGridDBColumn;
    tvMasterNAMACUST: TcxGridDBColumn;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    QuViewPerkiraan: TStringField;
    QuViewkodePerk: TStringField;
    QuViewNoFaktur: TStringField;
    QuViewNoRetur: TStringField;
    QuViewTipeTrans: TStringField;
    QuViewKodeCustSupp: TStringField;
    QuViewNoBukti: TStringField;
    QuViewNoMsk: TIntegerField;
    QuViewUrut: TIntegerField;
    QuViewTanggal: TDateTimeField;
    QuViewJatuhTempo: TDateTimeField;
    QuViewDebet: TBCDField;
    QuViewKredit: TBCDField;
    QuViewSaldo: TBCDField;
    QuViewValas: TStringField;
    QuViewKurs: TBCDField;
    QuViewDebetD: TBCDField;
    QuViewKreditD: TBCDField;
    QuViewSaldoD: TBCDField;
    QuViewKodeSales: TStringField;
    QuViewTipe: TStringField;
    QuViewKeterangan: TStringField;
    QuViewNAMACUST: TStringField;
    tvMasterKreditRp: TcxGridDBColumn;
    tvMasterKredit: TcxGridDBColumn;
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
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MultiSelect1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure PerkiraanChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ShowGroupPanel1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    mPosisi : string;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel,CountSelected : Boolean;
    Procedure Tampildata;
    procedure SimpanData(Choice: String);
    procedure ambildata;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrPiutang: TFrPiutang;
  S: array[0..255] of char;
  BM: TBookmark;

implementation
uses myModul,Myprocedure,MyGlobal, FrmPiutangAwal;
{$R *.dfm}

procedure TFrPiutang.SimpanData(Choice: String);
begin
  BM := FrPiutang.QuView.GetBookmark;
  with sp_barang do
  begin
    Close;
    Prepared;
    Parameters[1].Value:=Choice;
    if Choice='D' then
    begin
      Parameters[2].Value:=FrPiutang.QuView.FieldByname('NoFaktur').Value;
      Parameters[7].Value:=FrPiutang.QuView.FieldByname('KodeCustSupp').AsString;
      Parameters[9].Value:='AWL';
      Parameters[10].Value:=FrPiutang.QuView.FieldByname('urut').Value;
      Parameters[13].Value:=FrPiutang.QuView.FieldByname('Perkiraan').Value;

    end
    else
    begin
      Parameters[2].Value:=FrPiutangAwal.NoBukti.Text;
      Parameters[3].Value:=FrPiutangAwal.TglBukti.date;
      Parameters[4].Value:=FrPiutangAwal.Tgljatuhtempo.date;
      Parameters[5].Value:=FrPiutangAwal.JumlahD.Value;
      Parameters[6].Value:=FrPiutangAwal.JumlahRp.Value;
      Parameters[7].Value:=FrPiutang.QuView.FieldByname('KodeCustSupp').AsString;
      Parameters[8].Value:=FrPiutangAwal.Nobukti.Text;
      Parameters[9].Value:='AWL';
      Parameters[10].Value:=mUrut;
      Parameters[11].Value:=FrPiutangAwal.Kurs.Value;
      Parameters[12].Value:=FrPiutangAwal.Valas.Text;
      Parameters[13].Value:=FrPiutang.QuView.FieldByname('Perkiraan').Value;
      Parameters[14].Value:=FrPiutangAwal.Kredit.Value;
      Parameters[15].Value:=FrPiutangAwal.KreditRp.Value;
    end;
    try
      ExecProc;
      if Choice='I' then
      begin
        LoggingData(IDUser,Choice,'Piutang Awal','',
                    ' Supplier = '+QuotedStr(FrPiutang.QuViewNAMACUST.AsString+' ('+FrPiutang.QuViewKodeCustSupp.AsString+')')+
                    ' No. Faktur = '+QuotedStr(FrPiutangAwal.NoBukti.Text)+
                    ' Tanggal = '+QuotedStr(FrPiutangAwal.TglBukti.Text)+
                    ' Jatuh Tempo = '+QuotedStr(FrPiutangAwal.Tgljatuhtempo.Text)+
                    ' Valas = '+QuotedStr(FrPiutangAwal.Valas.Text)+
                    ' Kurs = '+QuotedStr(FrPiutangAwal.Kurs.Text)+
                    ' Debet = '+QuotedStr(FrPiutangAwal.JumlahRp.Text)+
                    ' Debet Valas = '+QuotedStr(FrPiutangAwal.JumlahD.Text)+
                    ' Kredit = '+QuotedStr(FrPiutangAwal.JumlahRp.Text)+
                    ' Kredit Valas = '+QuotedStr(FrPiutangAwal.JumlahD.Text));
        FrPiutang.QuView.Requery;
        FrPiutang.QuView.Locate('Nofaktur',FrPiutangAwal.NoBukti.Text,[]);
      end else if Choice='U' then
      begin
        FrPiutang.QuView.Requery;
        if FrPiutang.QuView.BookmarkValid(BM) then
        begin
          try
             FrPiutang.QuView.GotoBookmark(BM);
          finally
             FrPiutang.QuView.FreeBookmark(BM);
          end
        end else
        begin
          FrPiutang.QuView.FreeBookmark(BM);
          FrPiutang.QuView.Last;
        end;
       LoggingData(IDUser,Choice,'Piutang Awal','',
                    ' Supplier = '+QuotedStr(FrPiutang.QuViewNAMACUST.AsString+' ('+FrPiutang.QuViewKodeCustSupp.AsString+')')+
                    ' No. Faktur = '+QuotedStr(FrPiutangAwal.NoBukti.Text)+
                    ' Tanggal = '+QuotedStr(FrPiutangAwal.TglBukti.Text)+
                    ' Jatuh Tempo = '+QuotedStr(FrPiutangAwal.Tgljatuhtempo.Text)+
                    ' Valas = '+QuotedStr(FrPiutangAwal.Valas.Text)+
                    ' Kurs = '+QuotedStr(FrPiutangAwal.Kurs.Text)+
                    ' Debet = '+QuotedStr(FrPiutangAwal.JumlahRp.Text)+
                    ' Debet Valas = '+QuotedStr(FrPiutangAwal.JumlahD.Text)+
                    ' Kredit = '+QuotedStr(FrPiutangAwal.JumlahRp.Text)+
                    ' Kredit Valas = '+QuotedStr(FrPiutangAwal.JumlahD.Text));
      end
      else if Choice='D' then
      begin
        LoggingData(IDUser,Choice,'Piutang Awal','',
                    ' Supplier = '+QuotedStr(FrPiutang.QuViewNAMACUST.AsString+' ('+FrPiutang.QuViewKodeCustSupp.AsString+')')+
                    ' No. Faktur = '+QuotedStr(FrPiutang.QuViewNoFaktur.AsString)+
                    ' Tanggal = '+QuotedStr(FrPiutang.QuViewTanggal.AsString)+
                    ' Jatuh Tempo = '+QuotedStr(FrPiutang.QuViewJatuhTempo.AsString)+
                    ' Valas = '+QuotedStr(FrPiutang.QuViewValas.AsString)+
                    ' Kurs = '+QuotedStr(FrPiutang.QuViewKurs.AsString)+
                    ' Debet = '+QuotedStr(FrPiutang.QuViewDebet.AsString)+
                    ' Debet Valas = '+QuotedStr(FrPiutang.QuViewDebetD.AsString)+
                    ' Kredit = '+QuotedStr(FrPiutang.QuViewKredit.AsString)+
                    ' Kredit Valas = '+QuotedStr(FrPiutang.QuViewKreditD.AsString));
        FrPiutang.QuView.Requery;
      end;
    except
      on E: Exception do
           begin
               Application.MessageBox(StrPCopy(S,E.Message),'Peringatan',MB_OK or MB_ICONSTOP);
           end;
    end;
  end;
end;

procedure TFrPiutang.AmbilData;
begin
   with FrPiutangAwal do
   begin
     NoBukti.Text   := QuView.FieldByname('noFaktur').AsString;
     TglBukti.Date := QuView.FieldByname('Tanggal').AsDateTime;
     Tgljatuhtempo.Date:= QuView.FieldByname('JatuhTempo').AsDateTime;
     Valas.Text :=QuView.FieldByname('Valas').AsString;
     Kurs.Value :=QuView.FieldByname('Kurs').AsCurrency;
     if Valas.Text='IDR' then
        JumlahD.Value:=QuView.FieldByname('Debet').Value
     else
        JumlahD.Value:=QuView.FieldByname('DebetD').Value;
     JumlahRp.Value:=QuView.FieldByname('Debet').Value;
     if Valas.Text='IDR' then
        Kredit.Value:=QuView.FieldByname('Kredit').Value
     else
        Kredit.Value:=QuView.FieldByname('KreditD').Value;
     KreditRp.Value:=QuView.FieldByname('Kredit').Value;
     mUrut := QuView.FieldbyName('urut').AsInteger;
   end;
end;
Procedure TFrPiutang.Tampildata;
begin
  with QuView do
  begin
    close;
    Prepared;
    Parameters[0].Value:=Perkiraan.Text;
    Open;
  end;
  (Quview.FieldByName('Saldo') as TNumericField).DisplayFormat:=',0.00';
  (Quview.FieldByName('SaldoD') as TNumericField).DisplayFormat:=',0.00';
end;

procedure TFrPiutang.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrPiutang.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
    begin
        
        Action:=caFree;

    end
    else
        Action:=caNone;
end;

procedure TFrPiutang.FormDestroy(Sender: TObject);
begin
 FrPiutang:=nil;
end;

procedure TFrPiutang.FormShow(Sender: TObject);
begin
  Tampildata;
  activeControl:=cxGrid1;
end;

procedure TFrPiutang.ToolButton10Click(Sender: TObject);
begin
  Tampildata;
end;

procedure TFrPiutang.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrPiutang.ExportExcel1Click(Sender: TObject);
begin
  if IsExcel then
  begin
    SaveDialog.FileName := Caption+' '+Perkiraan.Items.Strings[Perkiraan.itemIndex];
    if SaveDialog.Execute then
    begin
      ExportGrid4ToExcel(SaveDialog.FileName,cxGrid1,False,True,True);
      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
      LoggingData(IDUser,'Export to excel',FrPiutang.Caption,'','export to excel dengan nama file : '+SaveDialog.FileName);
    end;
  end;
end;

procedure TFrPiutang.AutoFilter1Click(Sender: TObject);
begin
    if tvMaster.OptionsCustomize.ColumnFiltering=false then
       tvMaster.OptionsCustomize.ColumnFiltering:=true
    else
       tvMaster.OptionsCustomize.ColumnFiltering:=false;
end;

procedure TFrPiutang.ShowGrid1Click(Sender: TObject);
begin
   if ShowGrid1.Checked then
   begin
      tvMaster.OptionsView.GridLines:=glNone;
      ShowGrid1.Checked:=false;
   end else
   begin
      tvMaster.OptionsView.GridLines:=glBoth;
      ShowGrid1.Checked:=true;
   end;
end;

procedure TFrPiutang.ShowHeader1Click(Sender: TObject);
begin

   if ShowHeader1.Checked then
   begin
      tvMaster.OptionsView.Header:= False;
      ShowHeader1.Checked:=False;
   end else
   begin
      tvMaster.OptionsView.Header:= True;
      ShowHeader1.Checked:=True;
   end;
end;

procedure TFrPiutang.Show1Click(Sender: TObject);
begin
   if Show1.Checked then
   begin
      tvMaster.OptionsView.Footer:= False;
      Show1.Checked:=false;
   end else
   begin
      tvMaster.OptionsView.Footer:= True;
      Show1.Checked:=true;
   end;
end;

procedure TFrPiutang.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_ESCAPE then
   begin
      Close;
   end else
   if Key=VK_RETURN then
   begin

   end
   else if key=VK_INSERT then
   begin

   end
   else if key=VK_Delete then
   begin
      
   end;
end;

procedure TFrPiutang.MultiSelect1Click(Sender: TObject);
begin
   if MultiSelect1.Checked then
   begin
      tvMaster.OptionsSelection.MultiSelect:=false;
      MultiSelect1.Checked:=false;
   end else
   begin
      tvMaster.OptionsSelection.MultiSelect;
      MultiSelect1.Checked:=true;
   end;

end;

procedure TFrPiutang.ToolButton3Click(Sender: TObject);
begin
  if IsKoreksi then
  begin
    DataBersyarat('Select * from dbhutpiut a where Tipetrans=''Awl'' and Tipe=''PT'' and a.kodecustSupp=:0 and nofaktur=:1 ',
    [QuViewKodeCustSupp.Asstring,QuViewNoFaktur.AsString],DM.Qucari);
    if not dm.QuCari.IsEmpty then
    begin
      Application.CreateForm(TFrPiutangAwal, FrPiutangAwal);
      FrPiutangAwal.IsSimpan:=false;
      FrPiutangAwal.lNamaSupp.Caption := 'Customer : '+QuViewNAMACUST.AsString+' ('+QuViewKodeCustSupp.AsString+')';
      Model := 'koreksi';
      AmbilData;
      FrPiutangAwal.ShowModal;
      ActiveControl:=cxGrid1;
    end
    else
    begin
      MessageDlg('No. Faktur tidak ada, data tidak dapat dikoreksi!',mtWarning,[mbok],0);
      ActiveControl := cxGrid1;
    end;
  end else
  begin
     ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
  end;
end;

procedure TFrPiutang.PerkiraanChange(Sender: TObject);
begin
  Tampildata;
end;

procedure TFrPiutang.FormCreate(Sender: TObject);
begin
  with DM.QuCari do
  begin
    close;
    sql.Clear;
    sql.Add('Select a.Perkiraan,b.Keterangan ');
    sql.add('from dbPosthutpiut a left outer join dbperkiraan b on b.perkiraan=a.perkiraan where a.Kode=''PT'' Order by a.Perkiraan');
    Open;
    Perkiraan.Items.Clear;
    while not eof do
    begin
      Perkiraan.Items.Add(FieldByname('Keterangan').AsString+' ('+FieldByname('Perkiraan').AsString+')');
      next;
    end;
    Perkiraan.ItemIndex := 0;
  end;
end;

procedure TFrPiutang.ShowGroupPanel1Click(Sender: TObject);
begin
  if ShowGroupPanel1.Checked then
   begin
      tvMaster.OptionsView.GroupByBox:= false;
      ShowGroupPanel1.Checked:=false;
   end else
   begin
      tvMaster.OptionsView.GroupByBox:= true;
      ShowGroupPanel1.Checked:=true;
   end;
end;

procedure TFrPiutang.ToolButton2Click(Sender: TObject);
begin
  if IsTambah then
  begin
    if not QuView.IsEmpty then
    begin
      Application.CreateForm(TFrPiutangAwal,FrPiutangAwal);
      FrPiutangAwal.lNamaSupp.Caption := 'Customer : '+QuViewNAMACUST.AsString+' ('+QuViewKodeCustSupp.AsString+')';
      FrPiutangAwal.IsSimpan:=True;
      Model := 'write';
      FrPiutangAwal.ShowModal;
    end
    else
    begin
      MessageDlg('Tidak Ada customer, data tidak dapat ditambahkan!',mtWarning,[mbok],0);
      ActiveControl := cxGrid1;
    end;

  end
  else
  begin
      ShowMessage('Anda tidak berhak Menambah Data');
  end;

end;

procedure TFrPiutang.ToolButton1Click(Sender: TObject);
begin
  if IsHapus then
  begin
    DataBersyarat('Select * from dbhutpiut a where Tipetrans=''Awl'' and Tipe=''PT'' and a.kodecustSupp=:0 and nofaktur=:1 ',
    [QuViewKodeCustSupp.Asstring,QuViewNoFaktur.AsString],DM.Qucari);
    if not dm.QuCari.IsEmpty then
    begin
      StrPCopy(S,Format('Anda yakin Customer %s dan NoFaktur %s dihapus ?',
             [QuView.Fields[1].asstring+' ('+QuView.Fields[0].asstring+')',
              QuView.FieldByname('NoFaktur').asstring]));
      if (Application.MessageBox(S,'Peringatan',
          MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
      begin
         FrPiutang.SimpanData('D');
         Tampildata;
      end;
    end
    else
    begin
      MessageDlg('No. Faktur tidak ada, data tidak dapat dihapus!',mtWarning,[mbok],0);
      ActiveControl := cxGrid1;
    end;
  end else
  begin
     Application.MessageBox('Anda tidak berhak menghapus data','Informasi'
        ,MB_OK Or MB_ICONWARNING);
  end;
end;

end.
