unit FrmMainFisnishing;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  StdCtrls, ExtCtrls, Menus, dxGridMenus, dxDBTLCl, dxGrClms,shellapi, Grids,
  Buttons, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxEdit, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, frxDesgn, frxClass, frxDBSet;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrMainFinishing = class(TForm)
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
    QuDetail1: TADOQuery;
    DsDetail1: TDataSource;
    QuNavigatorNoBukti: TStringField;
    ToolButton4: TToolButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDataPerusahaan: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    Sp_Beli: TADOStoredProc;
    QuSPP: TADOQuery;
    QuSPPNOBUKTI: TStringField;
    QuSPPURUT: TIntegerField;
    QuSPPKODEBRG: TStringField;
    QuSPPKodeGdg: TStringField;
    QuSPPQNT: TBCDField;
    QuSPPNOSAT: TWordField;
    QuSPPSATUAN: TStringField;
    QuSPPISI: TBCDField;
    QuSPPNoSPK: TStringField;
    QuSPPHPP: TBCDField;
    QuSPPNamaBrg: TStringField;
    QuSPPNoSO: TStringField;
    QuSPPNoPesanan: TStringField;
    QuSPPKODECUST: TStringField;
    QuSPPTglKirim: TDateTimeField;
    QuSPPCATATAN: TStringField;
    QuSPPTipePPn: TWordField;
    QuSPPNoAlamatKirim: TIntegerField;
    QuSPPHPPRP: TBCDField;
    QuMasterNOBUKTI: TStringField;
    QuMasterNOURUT: TStringField;
    QuMasterTANGGAL: TDateTimeField;
    QuMasterKETERANGAN: TStringField;
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
    QuMasterNoJurnal: TStringField;
    QuMasterNoUrutJurnal: TStringField;
    QuMasterTglJurnal: TDateTimeField;
    QuMasterCetakKe: TSmallintField;
    QuMasterMaxOL: TIntegerField;
    QuMasterFlagTipe: TWordField;
    QuMasterMyID: TBytesField;
    QuMasterShift: TWordField;
    QuMasterNeedOtorisasi: TBooleanField;
    QuDetail1NOBUKTI: TStringField;
    QuDetail1URUT: TIntegerField;
    QuDetail1KODEBRG: TStringField;
    QuDetail1QNT: TBCDField;
    QuDetail1NOSAT: TWordField;
    QuDetail1SATUAN: TStringField;
    QuDetail1ISI: TBCDField;
    QuDetail1NoSPK: TStringField;
    QuDetail1HPP: TBCDField;
    QuDetail1NPR1: TBCDField;
    QuDetail1NPR2: TBCDField;
    QuDetail1NPR3: TBCDField;
    QuDetail1NPR4: TBCDField;
    QuDetail1PR1: TBCDField;
    QuDetail1PR2: TBCDField;
    QuDetail1PR3: TBCDField;
    QuDetail1PR4: TBCDField;
    QuDetail1KodeMsn: TStringField;
    QuDetail1tglHasilP: TDateTimeField;
    QuDetail1TglSpkMsn: TDateTimeField;
    QuDetail1isclosespk: TBooleanField;
    QuDetail1TarifMesin: TBCDField;
    QuDetail1JamProduksi: TBCDField;
    QuDetail1JmlTarifPrd: TBCDField;
    QuDetail1urutmesin: TIntegerField;
    QuDetail1NamaBrg: TStringField;
    QuDetail1NoSO: TStringField;
    QuDetail1NoPesanan: TStringField;
    QuDetail1KODECUST: TStringField;
    QuDetail1TglKirim: TDateTimeField;
    QuDetail1CATATAN: TStringField;
    QuDetail1AlamatKirim: TStringField;
    QuDetail1TipePPn: TWordField;
    QuDetail1namamesin: TStringField;
    Label1: TLabel;
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBTableView;
    tvMasterNoBukti: TcxGridDBColumn;
    tvMasterTanggal: TcxGridDBColumn;
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
    Label2: TLabel;
    QuUpdatedbbeli: TADOQuery;
    QuMasterNIK: TStringField;
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
    procedure frxReport1AfterPrintReport(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
  private
    { Private declarations }
    procedure SimpanSPP(IsSimpan:Boolean);
  public
    { Public declarations }
    mPosisi,xStatus,MenuPRoduksi : string;
    IsTambah,IsKoreksi,IsHapus, IsCetak, ModalKoreksi, IsExcel : Boolean;
    SortBy,Prioritas :String;
    xQnt,xDiskon,xDPP,xPPN,xJumlah : Real;
    HasilPOL,Produksi,BeliNotaOL : integer;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrMainFinishing: TFrMainFinishing;
  S: array[0..255] of char;

implementation

uses MyModul, MyProcedure, MyGlobal, FrmBrows, FrmSetForm,
  FrmProduksi, FrmMainProduksi;
{$R *.dfm}
procedure TFrMainFinishing.SimpanSPP(IsSimpan:Boolean);
begin
  if IsSimpan then
    begin
      With Sp_Beli do
      begin
        close;
        Prepared;

        Parameters[1].Value:='I';
        Parameters[2].Value:=QuMasterNOBUKTI.AsString;
        Parameters[3].Value:=QuMasterNOURUT.AsString;
        Parameters[4].Value:=QuMasterTANGGAL.AsDateTime;
        Parameters[5].Value:=QuSPPNoSO.AsString;
        Parameters[6].Value:=QuSPPNoPesanan.AsString;
        Parameters[7].Value:=QuSPPKODECUST.AsString;
        Parameters[8].Value := QuSPPTglKirim.AsDateTime;
        Parameters[9].Value:='';
        Parameters[10].Value:='';
        Parameters[11].Value:=QuSPPCATATAN.Value;
        Parameters[12].Value:=0;
        Parameters[13].Value:=QuSPPURUT.AsInteger;
        Parameters[14].Value:=QuSPPKODEBRG.AsString;
        Case QuDetail1NOSAT.Value of
          1 : Begin
                Parameters[15].Value := QuSPPQNT.Value;
                Parameters[16].Value := QuSPPQNT.Value/QuDetail1ISI.Value;
              end;
          2 : Begin
                Parameters[15].Value := QuSPPQNT.Value*QuDetail1ISI.Value;
                Parameters[16].Value := QuSPPQNT.Value;
              End;
        end;
        Parameters[17].Value:=QuSPPSATUAN.AsString;
        Parameters[18].Value:=QuSPPSATUAN.AsString;
        Parameters[19].Value:=QuSPPNOSAT.AsInteger;
        Parameters[20].Value:=QuSPPISI.Value;
        Parameters[21].Value:=0;
        Parameters[22].Value:=0;
        Parameters[23].Value:='';
        Parameters[24].Value:=IDUser;
        Parameters[25].Value:=1;
        Parameters[26].Value := Trim(QuSPPNamaBrg.Value);
        Parameters[27].Value :=0;
        Parameters[28].Value:=QuSPPNoAlamatKirim.AsInteger;
        Parameters[29].Value := '';
        Parameters[30].Value := '';
        Parameters[31].Value := 0;
       // Parameters[32].Value := dxMemProsesSPPKodegdg.Value;
        Parameters[32].Value := QuSPPKodeGdg.text;
        Parameters[33].Value := QuSPPTipePPn.AsInteger;
        Parameters[34].Value := QuSPPHPPRP.AsFloat;

        try
          ExecProc;

        except
          MsgProsesGagal('I');
        end;
      end;
    end
  else
    begin
      with DM.QuCari do
        begin
          Close;
          SQL.Clear;
          SQL.Add('delete from dbSPP where NoBukti = :0');
          Parameters[0].Value := QuMasterNOBUKTI.AsString;
          try
            ExecSQL;
          except
            ShowMessage('Proses Hapus SPP Gagal!');
          end;
        end;
    end;
end;

procedure TFrMainFinishing.GetData(bulan,tahun:integer);
begin
  QuNavigator.Close;
  QuNavigator.SQL.Clear;
  QuNavigator.SQL.Add('select NoBukti from dbPRODUKSI ');
  QuNavigator.SQL.Add(' where month(tanggal)='+IntToStr(bulan)+'  and year(tanggal)='+IntToStr(tahun));
  QuNavigator.SQL.Add(' order by NoBukti ');
  QuNavigator.Open;
  with QuMaster do
  begin
    Close;
    SQL.Strings[2]:='select @Tahun='+IntToStr(tahun)+', @Bulan='+IntToStr(bulan);
    Open;
  end;
end;

procedure TFrMainFinishing.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrMainFinishing.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
           MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
  begin
    if Application.FindComponent('FrPRODUKSI')<>nil then
    begin
       MessageDlg('Modul '+FrPRODUKSI.Caption+' belum ditutup !',mtWarning,[mbok],0);
       Action := caNone
    end
    else Action:=caFree;
  end
  else Action:=caNone;
end;

procedure TFrMainFinishing.FormDestroy(Sender: TObject);
begin
  FrMainPRODUKSI:=nil;
end;

procedure TFrMainFinishing.FormShow(Sender: TObject);
begin
  {TampilValid.Checked:=true;
  TampilBatal.Checked:=false;}
  ToolButton10.Click;

end;

procedure TFrMainFinishing.ToolButton10Click(Sender: TObject);
begin
   GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
   ViewOtorisasiNonBandedTableView(tvMaster,Qumaster,BeliNotaOL);
     //TampilValid.Checked:=true;
  //TampilBatal.Checked:=false;
  //ToolButton10.Click;

end;

procedure TFrMainFinishing.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrMainFinishing.ExportExcel1Click(Sender: TObject);
begin
  with QuView do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select * from dbPRODUKSI a Left Outer Join dbPRODUKSIDet b On a.NoBukti=b.NoBukti where month(tanggal)=:0 and year(tanggal)=:1 and isbatal=:2');
    Prepared;
    Parameters[0].Value:=strtoint(PeriodBln);
    Parameters[1].Value:=strtoint(PeriodThn);
    Parameters[2].Value:=TampilValid.Checked;
    Open;
  end;
  if (IsExcel) then
  begin
    //Save('xls', 'Microsoft Excel (*.xls)|*.xls', FrMainproduksi.Caption, dxDBGrid1.SaveToXLS);
    ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
    //LoggingData(Caption,'User '+IdUser+' Export Data '+ SaveDialog.FileName,dm.qucari);
  end else
  begin
      ShowMessage('Anda tidak berhak Mengeksport Excel');
  end;
end;

procedure TFrMainFinishing.ToolButton1Click(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if IsTambah then
    begin
      if Assigned(FrPRODUKSI) then FrPRODUKSI.Show else
      begin
        ModalKoreksi:=False;
        xStatus := 'H';
        Application.CreateForm(TFrPRODUKSI,FrPRODUKSI);
        CekOtoritasMenu(IDUser,tag,FrPRODUKSI.Istambah,FrPRODUKSI.Ishapus,
          FrPRODUKSI.Iskoreksi, FrPRODUKSI.isCetak, FrPRODUKSI.isExcel);
        //FrSPP.PanelShow2.Visible:=false;
        FrPRODUKSI.Show;
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
//       ActiveControl := dxDBGrid1;
  end;
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin

  end
  else
  begin
    MsgPeriodeSudahDikunci;
    ActiveControl:=cxGrid1;
  end;
end;

procedure TFrMainFinishing.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrMainFinishing.ToolButton2Click(Sender: TObject);
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
             Begin
              if Assigned(Frproduksi) then
                Frproduksi.Show
              else
              begin
                ModalKoreksi:=True;
                Application.CreateForm(TFrproduksi,Frproduksi);
                CekOtoritasMenu(IDUser,tag,Frproduksi.Istambah,Frproduksi.Ishapus,
                  Frproduksi.Iskoreksi, Frproduksi.isCetak, Frproduksi.isExcel);

                //FrPO.PanelShow2.Visible:=true;
                //FrPO.ActiveControl := FrPO.Tanggal;
                Frproduksi.Show;
              end;
             end
            end else
            begin
              ShowMessage('Tidak ada transaksi yang dikoreksi !');
      //        ActiveControl:=dxDBGrid1;
            end;

          end else
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
      //    ActiveControl := dxDBGrid1;
        end;
end;

procedure TFrMainFinishing.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

procedure TFrMainFinishing.TampilValidClick(Sender: TObject);
begin
   ToolButton11.Caption:=TampilValid.Caption;
   TampilValid.Checked:=true;
   TampilBatal.Checked:=false;
   ToolButton1.Enabled:=true;
   ToolButton2.Enabled:=true;
   ToolButton3.Caption:='&Batal';
   ToolButton10Click(self);
end;

procedure TFrMainFinishing.TampilBatalClick(Sender: TObject);
begin
   ToolButton11.Caption:=TampilBatal.Caption;
   TampilValid.Checked:=false;
   TampilBatal.Checked:=True;
   ToolButton1.Enabled:=false;
   ToolButton2.Enabled:=false;
   ToolButton3.Caption:='&Valid';
   ToolButton10Click(self);
end;

procedure TFrMainFinishing.FormCreate(Sender: TObject);
begin
  Panel1.Color:=FrSetForm.PanelMain.Color;
  ToolBar1.Color:=FrSetForm.ToolBarMain.Color;
end;

procedure TFrMainFinishing.tvMasterFocusedRecordChanged(
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

procedure TFrMainFinishing.ToolButton4Click(Sender: TObject);
begin
if Iscetak then
    MainCetak1(frxDBDataset1,frxDataPerusahaan,DM.QuCari,Dm.QuCari2,'Cetakproduksi','VwCetakProduksi',QuMasterNoBukti.AsString,'Nota\Notaproduksi.fr3',frxReport1)
else
   MsgTidakBerhakCetakData
end;

procedure TFrMainFinishing.frxReport1AfterPrintReport(Sender: TObject);
begin
NilaiCetak('CetakKe','DBproduksi',QuMasterNoBukti.AsString);
end;

procedure TFrMainFinishing.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
if CompareText(varName,'iduser')=0 then
        value:=IDUser;
end;

procedure TFrMainFinishing.ToolButton12Click(Sender: TObject);
begin
 {if QuMasterIsOtorisasi1.Value then
  begin
    MessageDlg('No. '+QuMasterNoBukti.AsString+' telah diotorisasi oleh user '+QuMasterOtoUser1.AsString+#13+'pada tanggal '+
               FormatDatetime('DD-MMM-YYYY',QuMasterTglOto1.AsDateTime)+' Jam '+FormatDateTime('HH:MM:SS',QuMasterTglOto1.AsDateTime)+#13+
               'Data tidak dapat diotorisasi lagi !!!',mtWarning,[mbok],0);
    ActiveControl := cxGrid1;
  end
  else}
  begin

    if QuMasterIsOtorisasi1.AsBoolean = False then
      begin
        with QuSPP do
          begin
            Close;
            Parameters[0].Value := QuMasterNOBUKTI.AsString;
            Open;
            First;
            while not QuSPP.Eof do
              begin
                SimpanSPP(True);
                Next;
              end;
          end;
      end;

    BM := QuMaster.GetBookmark;
    {frLogin := TFrLogin.Create(Self);
    frLogin.Label2.Caption :='Otorisasi';
    if frLogin.ShowModal=mrok then }
    begin
      Otorisasi('DBproduksi',Menuproduksi,IDUser,'',QuMasterNoBukti.Value);
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

procedure TFrMainFinishing.ToolButton13Click(Sender: TObject);
begin
  BM := QuMaster.GetBookmark;
  {frLogin := TFrLogin.Create(Self);
  frLogin.Label2.Caption :='Otorisasi';
  if frLogin.ShowModal=mrok then  }
  begin
    BatalOtorisasi('DBproduksi',Menuproduksi,IDUser,'',QuMasterNoBukti.Value);
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

  SimpanSPP(False);
end;

end.
