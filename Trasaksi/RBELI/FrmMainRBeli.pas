unit FrmMainRBeli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  ImgList, StdCtrls, ExtCtrls, Menus,
  dxGridMenus, dxDBTLCl, dxGrClms,shellapi, Grids,
  Buttons, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxEdit, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrMainRBeli = class(TForm)
    QuMaster: TADOQuery;
    DsMaster: TDataSource;
    QuDetail1: TADOQuery;
    DsDetail1: TDataSource;
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
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBTableView;
    tvDetail: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    QuMasterNoBukti: TStringField;
    QuMasterTanggal: TDateTimeField;
    QuMasterKodeSupp: TStringField;
    QuMasterNOBELI: TStringField;
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
    QuDetail1NoBukti: TStringField;
    QuDetail1UrutPBL: TIntegerField;
    QuDetail1Urut: TSmallintField;
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
    tvMasterNoBukti: TcxGridDBColumn;
    tvMasterTanggal: TcxGridDBColumn;
    tvMasterNamaSupp: TcxGridDBColumn;
    tvMasterNOBELI: TcxGridDBColumn;
    tvMasterTotDPPRp: TcxGridDBColumn;
    tvMasterTotPPNRp: TcxGridDBColumn;
    tvMasterTotNetRp: TcxGridDBColumn;
    tvDetailKodeBrg: TcxGridDBColumn;
    tvDetailNamaBrg: TcxGridDBColumn;
    tvDetailQnt: TcxGridDBColumn;
    tvDetailSatuan: TcxGridDBColumn;
    tvDetailHarga: TcxGridDBColumn;
    tvDetailDiscTot: TcxGridDBColumn;
    tvDetailTotalIDR: TcxGridDBColumn;
    tvDetailKodeGdg: TcxGridDBColumn;
    QuMasterNamaCustSupp: TStringField;
    ToolButton4: TToolButton;
    ToolButton12: TToolButton;
    QuMasterisotorisasi1: TBooleanField;
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
    QuMasterMAXOL: TIntegerField;
    QuMasterNeedOtorisasi: TBooleanField;
    tvMasterisotorisasi1: TcxGridDBColumn;
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
    QuMasternojurnal: TStringField;
    tvMasterDBColumn1: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ExportExcel1Click(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton2Click(Sender: TObject);
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
    //mQnt, mTotalUSD, mTotalIDR, mBeban, mTotal: Real;
  public
    { Public declarations }
    mPosisi,xStatus, MenuRBeli : string;
    IsTambah,IsKoreksi,IsHapus, IsCetak, ModalKoreksi, IsExcel : Boolean;
    SortBy,Prioritas :String;
    xQnt,xDiskon,xDPP,xPPN,xJumlah : Real;
    RbeliOL : Integer;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;
     StrPO='select a.nobukti+'' Tanggal:''+convert(varchar(10),a.tanggal,105)+'' Supplier:''+b.namasupp '
	   +'as GroupNobukti, a.nobukti, '
      +'d.kodebrg,d.namabrg,c.kodegdg,c.kodelokasi,c.qnt,c.satuan,c.harga,c.disctot,c.nopo, '
      +'(c.harga-c.DiscTot) as Hrgnett,(c.Disctot*c.Qnt) As Discount,((c.Qnt*c.Harga)-(c.Qnt*c.Disctot)) As Total '

           +'from dbRBeli a '
           +'left outer join dbsupplier b on a.kodesupp=b.kodesupp '
	   +'left outer join dbRBelidet c on c.nobukti=a.nobukti '
	   +'left outer join dbbarang d on c.kodebrg=d.kodebrg '

           +'where month(a.tanggal)=:0 and year(a.tanggal)=:1 and isbatal=:2 '
           +'order by a.nobukti,c.urut';
    
var
  FrMainRBeli: TFrMainRBeli;
  S: array[0..255] of char;
implementation
uses myModul, Myprocedure, MyGlobal, FrmBrows, FrmRBeli, FrmSetForm;
{$R *.dfm}

procedure TFrMainRBeli.GetData(bulan,tahun:integer);
begin
  with QuMaster do
  begin
    Close;
    SQL.Strings[2]:='select @Tahun='+IntToStr(tahun)+', @Bulan='+IntToStr(bulan);
    Open;
  end;


end;

procedure TFrMainRBeli.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrMainRBeli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
           MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
  begin
    if Application.FindComponent('FrRBeli')<>nil then
    begin
       MessageDlg('Modul '+FrRBeli.Caption+' belum ditutup !',mtWarning,[mbok],0);
       Action := caNone
    end
    else Action:=caFree;
  end
  else Action:=caNone;
end;

procedure TFrMainRBeli.FormDestroy(Sender: TObject);
begin
  FrMainRBeli:=nil;
end;

procedure TFrMainRBeli.FormShow(Sender: TObject);
begin
  xStatus := 'S';
  TampilValid.Checked:=true;
  TampilBatal.Checked:=false;
  ToolButton10.Click;
end;

procedure TFrMainRBeli.ToolButton10Click(Sender: TObject);
begin
   GetData(strtoint(PeriodBln),StrToInt(PeriodThn));
   ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,RBeliOL);
end;

procedure TFrMainRBeli.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrMainRBeli.ExportExcel1Click(Sender: TObject);
begin
{  with QuView do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select * from vwtransRbeli where month(tanggal)=:0 and year(tanggal)=:1 and isbatal=:2');
    Prepared;
    Parameters[0].Value:=strtoint(PeriodBln);
    Parameters[1].Value:=strtoint(PeriodThn);
    Parameters[2].Value:=TampilValid.Checked;
    Open;
  end;
  if (IsExcel) then
  begin
    Save('xls', 'Microsoft Excel (*.xls)|*.xls', FrMainRBeli.Caption, dxDBGrid1.SaveToXLS);
    ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
    LoggingData(Caption,'User '+IdUser+' Export Data '+ SaveDialog.FileName,dm.qucari);
  end else
  begin
      ShowMessage('Anda tidak berhak Mengeksport Excel');
  end; }
end;

procedure TFrMainRBeli.ToolButton1Click(Sender: TObject);
begin
   if ToolButton1.Enabled then
   begin
     if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
     begin
      if IsTambah then
      begin
         if Assigned(FrRBeli) then
            FrRBeli.Show
         else
         begin
           ModalKoreksi:=False;
           xStatus := 'H';
           Application.CreateForm(TFrRBeli,FrRBeli);
           CekOtoritasMenu(IDUser,tag,FrRBeli.Istambah,FrRBeli.Ishapus,
                       FrRBeli.Iskoreksi, FrRBeli.isCetak, FrRBeli.isExcel);
           //FrRBeli.PanelShow2.Visible:=false;
           //FrRBeli.Valas.Text := 'IDR';
           FrRBeli.Show;
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
     end;
   end;

end;

procedure TFrMainRBeli.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrMainRBeli.ToolButton2Click(Sender: TObject);
begin
   if ToolButton2.Enabled then
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
              if Assigned(FrRBeli) then
                 FrRBeli.Show
              else
              begin
                ModalKoreksi:=True;
                xStatus := 'H';
                //mPosisi:=QuMaster.fieldbyname('groupnobukti').AsString;

                Application.CreateForm(TFrRBeli,FrRBeli);
                CekOtoritasMenu(IDUser,tag,FrRBeli.Istambah,FrRBeli.Ishapus,
                         FrRBeli.Iskoreksi, FrRBeli.isCetak, FrRBeli.isExcel);

                //FrRBeli.PanelShow2.Visible:=true;
                //FrRBeli.ActiveControl := FrRBeli.Tanggal;
                FrRBeli.Show;
              end;
              //With QuMaster do
              //begin
              //   Locate('groupnobukti',mPosisi,[LOC, LOP]);
              //end;
              //ActiveControl:=dxDBGrid1;
           end else
           begin
              ShowMessage('Tidak ada transaksi yang dikoreksi !');
              //ActiveControl:=dxDBGrid1;
           end;
        end else
        begin
           ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
        end;
     end
     else
     begin
       MessageDlg('Periode telah terkunci !',mtWarning,[mbok],0);
       //ActiveControl := dxDBGrid1;
     end;
   end;
end;

procedure TFrMainRBeli.TampilValidClick(Sender: TObject);
begin
   ToolButton11.Caption:=TampilValid.Caption;
   TampilValid.Checked:=true;
   TampilBatal.Checked:=false;
   ToolButton1.Enabled:=true;
   ToolButton2.Enabled:=true;
   ToolButton3.Caption:='&Batal';
   ToolButton10Click(self);
end;

procedure TFrMainRBeli.TampilBatalClick(Sender: TObject);
begin
   ToolButton11.Caption:=TampilBatal.Caption;
   TampilValid.Checked:=false;
   TampilBatal.Checked:=True;
   ToolButton1.Enabled:=false;
   ToolButton2.Enabled:=false;
   ToolButton3.Caption:='&Valid';
   ToolButton10Click(self);
end;

procedure TFrMainRBeli.FormCreate(Sender: TObject);
begin
  Panel1.Color:=FrSetForm.PanelMain.Color;
  ToolBar1.Color:=FrSetForm.ToolBarMain.Color;
end;

procedure TFrMainRBeli.tvMasterFocusedRecordChanged(
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

procedure TFrMainRBeli.ToolButton4Click(Sender: TObject);
begin
 {if QuMasterIsOtorisasi1.Value then
  begin
    MessageDlg('No. Retur Beli '+QuMasterNoBukti.AsString+' telah diotorisasi oleh user '+QuMasterOtoUser1.AsString+#13+'pada tanggal '+
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
      Otorisasi('DBRbeli',MenuRBeli,IDUser,'',QuMasterNoBukti.Value);
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

procedure TFrMainRBeli.ToolButton12Click(Sender: TObject);
begin
  BM := QuMaster.GetBookmark;
  {frLogin := TFrLogin.Create(Self);
  frLogin.Label2.Caption :='Otorisasi';
  if frLogin.ShowModal=mrok then  }
  begin
    BatalOtorisasi('DBRbeli',MenuRBeli,IDUser,'',QuMasterNoBukti.Value);
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
