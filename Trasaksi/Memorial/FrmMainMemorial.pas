unit FrmMainMemorial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  ImgList, StdCtrls, ExtCtrls, Menus, ppBands, ppVar, ppCtrls, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,ppviewr,
  dxGridMenus, dxDBTLCl, dxGrClms,shellapi, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxEdit, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid,cxExportGrid4Link,
  cxGridBandedTableView, cxGridDBBandedTableView;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrMainMemorial = class(TForm)
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
    ToolButton10: TToolButton;
    SaveDialog: TSaveDialog;
    MultiSelect1: TMenuItem;
    Sp_Batal: TADOStoredProc;
    ToolButton8: TToolButton;
    PopupMenu2: TPopupMenu;
    TampilValid: TMenuItem;
    TampilBatal: TMenuItem;
    QuViewGroupNoBukti: TStringField;
    QuViewTanggal: TDateTimeField;
    QuViewNoBukti: TStringField;
    QuViewDevisi: TStringField;
    QuViewNote: TStringField;
    QuViewNamaDevisi: TStringField;
    QuViewPerkiraan: TStringField;
    QuViewLawan: TStringField;
    QuViewKeterangan: TStringField;
    QuViewDebet: TBCDField;
    QuViewKredit: TBCDField;
    QuViewValas: TStringField;
    QuViewKurs: TBCDField;
    QuMaster: TADOQuery;
    DsMaster: TDataSource;
    QuDetail1: TADOQuery;
    DsDetail1: TDataSource;
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBTableView;
    tvDetail: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    QuMasterNoBukti: TStringField;
    QuMasterTanggal: TDateTimeField;
    QuMasterNote: TStringField;
    QuMasterDevisi: TStringField;
    QuMasterPerkiraan: TStringField;
    QuMasterTotalD: TBCDField;
    QuMasterTotalRp: TBCDField;
    tvMasterNoBukti: TcxGridDBColumn;
    tvMasterTanggal: TcxGridDBColumn;
    tvMasterNote: TcxGridDBColumn;
    tvMasterDevisi: TcxGridDBColumn;
    tvMasterPerkiraan: TcxGridDBColumn;
    tvMasterTotalD: TcxGridDBColumn;
    tvMasterTotalRp: TcxGridDBColumn;
    tvDetailNoBukti: TcxGridDBColumn;
    tvDetailTanggal: TcxGridDBColumn;
    tvDetailDevisi: TcxGridDBColumn;
    tvDetailNote: TcxGridDBColumn;
    tvDetailLampiran: TcxGridDBColumn;
    tvDetailPerkiraan: TcxGridDBColumn;
    tvDetailLawan: TcxGridDBColumn;
    tvDetailKeterangan: TcxGridDBColumn;
    tvDetailKeterangan2: TcxGridDBColumn;
    tvDetailDebet: TcxGridDBColumn;
    tvDetailKredit: TcxGridDBColumn;
    tvDetailKurs: TcxGridDBColumn;
    tvDetailValas: TcxGridDBColumn;
    tvDetailDolar: TcxGridDBColumn;
    tvDetailTipeTrans: TcxGridDBColumn;
    tvDetailTPHC: TcxGridDBColumn;
    tvDetailKodeRelasi: TcxGridDBColumn;
    tvDetailNoAktiva: TcxGridDBColumn;
    tvDetailStatusAktiva: TcxGridDBColumn;
    tvDetailKodeCust: TcxGridDBColumn;
    tvDetailNoGiro: TcxGridDBColumn;
    tvDetailBank: TcxGridDBColumn;
    tvDetailNilaiGiro: TcxGridDBColumn;
    tvDetailTglCair: TcxGridDBColumn;
    tvDetailTglGiro: TcxGridDBColumn;
    tvDetailLock: TcxGridDBColumn;
    tvDetailTglInput: TcxGridDBColumn;
    tvDetailUserID: TcxGridDBColumn;
    tvDetailReg: TcxGridDBColumn;
    tvDetailFlag: TcxGridDBColumn;
    tvDetailUrut: TcxGridDBColumn;
    tvDetailStatusGiro: TcxGridDBColumn;
    tvDetailPosAktivaPerkiraan: TcxGridDBColumn;
    tvDetailPosAktivaLawan: TcxGridDBColumn;
    tvDetailNoAktivaLawan: TcxGridDBColumn;
    tvDetailNoAcc: TcxGridDBColumn;
    tvDetailNobon: TcxGridDBColumn;
    tvDetailKeyUrut: TcxGridDBColumn;
    tvDetailJumlahD: TcxGridDBColumn;
    tvDetailJumlahRp: TcxGridDBColumn;
    QuDetail1NoBukti: TStringField;
    QuDetail1Tanggal: TDateTimeField;
    QuDetail1Devisi: TStringField;
    QuDetail1Note: TStringField;
    QuDetail1Lampiran: TBCDField;
    QuDetail1Perkiraan: TStringField;
    QuDetail1Lawan: TStringField;
    QuDetail1Keterangan: TStringField;
    QuDetail1Keterangan2: TStringField;
    QuDetail1Debet: TBCDField;
    QuDetail1Kredit: TBCDField;
    QuDetail1Valas: TStringField;
    QuDetail1Kurs: TBCDField;
    QuDetail1DebetRp: TBCDField;
    QuDetail1KreditRp: TBCDField;
    QuDetail1TipeTrans: TStringField;
    QuDetail1TPHC: TStringField;
    QuDetail1CustSuppP: TStringField;
    QuDetail1CustSuppL: TStringField;
    QuDetail1Urut: TIntegerField;
    QuDetail1NoAktivaP: TStringField;
    QuDetail1NoAktivaL: TStringField;
    QuDetail1StatusAktivaP: TStringField;
    QuDetail1StatusAktivaL: TStringField;
    QuDetail1Nobon: TStringField;
    QuDetail1KodeBag: TStringField;
    QuDetail1KeyUrut: TStringField;
    QuDetail1JumlahD: TBCDField;
    QuDetail1JumlahRp: TBCDField;
    ToolButton3: TToolButton;
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
    tvMaster2: TcxGridDBBandedTableView;
    tvMaster2NoBukti: TcxGridDBBandedColumn;
    tvMaster2Tanggal: TcxGridDBBandedColumn;
    tvMaster2Note: TcxGridDBBandedColumn;
    tvMaster2Devisi: TcxGridDBBandedColumn;
    tvMaster2Perkiraan: TcxGridDBBandedColumn;
    tvMaster2TotalD: TcxGridDBBandedColumn;
    tvMaster2TotalRp: TcxGridDBBandedColumn;
    tvMaster2IsOtorisasi1: TcxGridDBBandedColumn;
    tvMaster2OtoUser1: TcxGridDBBandedColumn;
    tvMaster2TglOto1: TcxGridDBBandedColumn;
    tvMaster2IsOtorisasi2: TcxGridDBBandedColumn;
    tvMaster2OtoUser2: TcxGridDBBandedColumn;
    tvMaster2TglOto2: TcxGridDBBandedColumn;
    tvMaster2IsOtorisasi3: TcxGridDBBandedColumn;
    tvMaster2OtoUser3: TcxGridDBBandedColumn;
    tvMaster2TglOto3: TcxGridDBBandedColumn;
    tvMaster2IsOtorisasi4: TcxGridDBBandedColumn;
    tvMaster2OtoUser4: TcxGridDBBandedColumn;
    tvMaster2TglOto4: TcxGridDBBandedColumn;
    tvMaster2IsOtorisasi5: TcxGridDBBandedColumn;
    tvMaster2OtoUser5: TcxGridDBBandedColumn;
    tvMaster2TglOto5: TcxGridDBBandedColumn;
    QuMasterNeedOtorisasi: TBooleanField;
    ToolButton11: TToolButton;
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
    procedure GetData(bulan,tahun:integer);
    procedure FormActivate(Sender: TObject);
    procedure tvMasterFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure ToolButton3Click(Sender: TObject);
    procedure tvMaster2FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure ToolButton11Click(Sender: TObject);
  private
    { Private declarations }
    FCetak:boolean;
  public
    { Public declarations }

    mPosisi,xStatus : string;
    IsTambah,IsKoreksi,IsHapus, IsCetak, ModalKoreksi, IsExcel : Boolean;
    MemorialOL: Integer;
    MenuMemorial : String;
    BM : TBookMark;
    Property Acetak:boolean Read FCetak write Fcetak;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;
     StrPO='select substring(a.nobukti,9,3)+'' ''+a.NoBukti+'' ''+convert(varchar(10),a.tanggal,105) GroupNoBukti,a.Tanggal,a.NoBukti,c.Devisi, '
        +'a.Note,b.NamaDevisi,c.Perkiraan,c.Lawan,c.Keterangan,c.Debet,c.Kredit,c.Valas,c.Kurs '
        +'from dbtrans a '
        +'left outer join dbTransaksi c on c.NoBukti=a.NoBukti '
        +'left outer join dbDevisi b on b.Devisi=c.Devisi '
        +'where month(a.tanggal)=:0 and year(a.tanggal)=:1 and substring(a.nobukti,9,3) in (''BKK'',''BKM'',''BBK'',''BBM'') '
        +'order by a.tanggal,c.devisi,substring(a.nobukti,9,3),a.nobukti';
    
var
  FrMainMemorial: TFrMainMemorial;
  S: array[0..255] of char;
implementation
uses myModul,Myprocedure,MyGlobal, FrmBrows, FrmMemorial,  ATTerbilang,
  frmLogin;
{$R *.dfm}

procedure TFrMainMemorial.GetData(bulan,tahun:integer);
begin
  QuMaster.Close;
  QuMaster.SQL.Strings[2]:='select @Tahun='+IntToStr(StrToInt(PeriodThn))+', @Bulan='+IntToStr(StrToInt(PeriodBln));
  QuMaster.Open;
  
end;

procedure TFrMainMemorial.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrMainMemorial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
           MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
  begin
    if (xStatus <> 'M') and (xStatus<>'S') then
    begin
       MessageDlg('Modul Tranksasi Jurnal Kas Bank belum ditutup !',mtWarning,[mbok],0);
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

procedure TFrMainMemorial.FormDestroy(Sender: TObject);
begin
  FrMainMemorial:=nil;
end;

procedure TFrMainMemorial.FormShow(Sender: TObject);
begin
  xStatus := 'S';
  ToolButton10.Click;
  begin

  end;

end;

procedure TFrMainMemorial.ToolButton10Click(Sender: TObject);
begin
   GetData(strtoint(PeriodBln),StrToInt(PeriodThn));
end;

procedure TFrMainMemorial.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrMainMemorial.ExportExcel1Click(Sender: TObject);
begin
  if (IsExcel) then
  begin
      //ExportGrid4ToExcel(SaveDialog.FileName,cxGrid1,False,True,True);
      //Save('xls', 'Microsoft Excel (*.xls)|*.xls', FrMainMemorial.Caption, dxDBGrid1.SaveToXLS);
      //ShellExecute(Handle, 'Open', PChar(FrMainMemorial.Caption), nil, nil, sw_shownormal);
      ExportGrid4ToExcel(FrMainMemorial.Caption,cxGrid1,True,True,True);
  end else
  begin
      ShowMessage('Anda tidak berhak Mengeksport Excel');
  end;
end;

procedure TFrMainMemorial.AutoFilter1Click(Sender: TObject);
begin
   if tvMaster.OptionsCustomize.ColumnFiltering=false then
       tvMaster.OptionsCustomize.ColumnFiltering:=true
    else
       tvMaster.OptionsCustomize.ColumnFiltering:=false;
end;

procedure TFrMainMemorial.ShowGrid1Click(Sender: TObject);
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

procedure TFrMainMemorial.ShowHeader1Click(Sender: TObject);
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

procedure TFrMainMemorial.Show1Click(Sender: TObject);
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

procedure TFrMainMemorial.ToolButton1Click(Sender: TObject);
begin
   if ToolButton1.Enabled then
   begin
     if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
     begin
      if IsTambah then
      begin
         if Assigned(FrMemorial) then
            frMemorial.Show
         else
         begin
           ModalKoreksi:=FAlse;
           xStatus := 'H';
           Application.CreateForm(TFrMemorial,FrMemorial);
{           if (JumlahDevisi=1) then
           begin
            mDevisi:=DM.QuDevisi.fieldbyname('Devisi').AsString;
            FrMemorial.LDevisi.Caption := DM.QuDevisi.fieldbyname('NamaDevisi').AsString;
            FrMemorial.Devisi.Text := DM.QuDevisi.fieldbyname('Devisi').AsString;
           end;}
           //CekOtoritasMenu(IDUser,tag,FrMemorial.Istambah,FrMemorial.Ishapus,
           //            FrMemorial.Iskoreksi, FrMemorial.isCetak, FrMemorial.isExcel);
           FrMemorial.Show;
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
       ActiveControl := cxGrid1;
     end;
   end;

end;

procedure TFrMainMemorial.FormKeyDown(Sender: TObject; var Key: Word;
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
//        ToolButton3.Click;
   end;
end;

procedure TFrMainMemorial.ToolButton2Click(Sender: TObject);
begin
   BM := QuMaster.GetBookmark;
   if ToolButton2.Enabled then
   begin
     if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
     begin
        if IsKoreksi then
        begin
           //if QuView.IsEmpty=False then
           if QuMaster.IsEmpty=False then
           begin
             if QuMasterNeedOtorisasi.Value then
             begin
              if Assigned(FrMemorial) then
                 FrMemorial.Show
              else
              begin
                ModalKoreksi:=True;
                xStatus := 'H';
                //mPosisi:=QuView.fieldbyname('groupnobukti').AsString;
                mPosisi:=QuMasterNoBukti.AsString;
                Application.CreateForm(TFrMemorial,FrMemorial);
                //CekOtoritasMenu(IDUser,tag,FrMemorial.Istambah,FrMemorial.Ishapus,
                //         FrMemorial.Iskoreksi, FrMemorial.isCetak, FrMemorial.isExcel);
                FrMemorial.xmodalkoreksi := ModalKoreksi;
                FrMemorial.Show;
              end;
              {With QuView do
              begin
                 Locate('groupnobukti',mPosisi,[LOC, LOP]);
              end;
              }
              QuMaster.Locate('NoBukti',mPosisi,[]);
              //ActiveControl:=dxDBGrid1;
              ActiveControl:=cxGrid1;
             end
             else
             begin
               MsgNeedOtorisasi;
               ActiveControl := cxGrid1;
             end;
           end else
           begin
              ShowMessage('Tidak ada transaksi yang dikoreksi !');
              //ActiveControl:=dxDBGrid1;
              ActiveControl:=cxGrid1;
           end;
        end else
        begin
           ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
        end;
     end
     else
     begin
       MessageDlg('Periode telah terkunci !',mtWarning,[mbok],0);
       ActiveControl := cxGrid1;
     end;
   end;
end;

procedure TFrMainMemorial.MultiSelect1Click(Sender: TObject);
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

procedure TFrMainMemorial.ToolButton4Click(Sender: TObject);
Function CariKoma(Nilai : string) : Integer;
begin
  Result := Pos(',',Nilai)
end;

var N1, N2, N3 : string;
    T1, T2 : integer;
    Tot : byte;
    H1  : real;
    TempCode : String;
    xTerbilang : TATTerbilang;
begin
  if IsCetak then
  begin
    Application.CreateForm(TFrMemorial, FrMemorial);
    FrMemorial.mBukti:=FrMainMemorial.QuMasterNoBukti.AsString;
    FrMemorial.Mode.Text:=Copy(FrMemorial.mBukti,10,2);
    FrMemorial.TampilData(FrMainMemorial.QuMasterNoBukti.AsString);
    N3  := FormatFloat('0.00',abs(BiayaRp));
  Tot := CariKoma(N3);
  if Tot <> 0 then
  begin
    N1  := copy(N3, 1, Tot-1);
    N2  := copy(N3, Tot+1, 2);
  end else
  begin
    N1  := N3;
    N2  := '0';
  end;
  xTerbilang := TATTerbilang.Create(Self);

  T2  := StrToint(N2);
  xTerbilang.Number := (N1);
  N1  := xTerbilang.Terbilang;

    if T2 <> 0 then
    begin
      if T2 < 10 then
      begin
         N3 := ' Nol ';
         xTerbilang.Number := inttostr(T2);
         N2 := xTerbilang.Terbilang;
      end
      else
      begin
         xTerbilang.Number := inttostr(T2);
         N2 := xTerbilang.Terbilang;
      end;
      if T2<10 then
         N2 := N3+ N2;
      if N1 = '' then
         TempCode:=N2+' Sen'
      else
         TempCode:=N1+' Rupiah '+N2+' Sen';
    end
    else
      TempCode:=N1+' Rupiah  ';


  if  BiayaRp>0 then
      myTerbilang := 'Terbilang : '+TempCode
  else
      myTerbilang := 'Terbilang : Minus '+TempCode;
  myTerbilang := UpperCase(myTerbilang);

    FrMemorial.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Nota\BuktiMemorial.fr3');
    FrMemorial.frxReport1.ShowReport;
    FrMemorial.Destroy;
  end
  else
  begin
    ShowMessage('Anda tidak berhak Mencetak Data');
  end;
end;

procedure TFrMainMemorial.FormActivate(Sender: TObject);
begin
   QuMaster.Locate('Nobukti',mPosisi,[LOC, LOP]);
end;

procedure TFrMainMemorial.tvMasterFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  QuDetail1.Close;
  QuDetail1.SQL.Strings[2]:='select @Tahun='+IntToStr(StrToInt(PeriodThn))+', @Bulan='+IntToStr(StrToInt(PeriodBln));
  QuDetail1.Open;
end;

procedure TFrMainMemorial.ToolButton3Click(Sender: TObject);
begin
  BM := QuMaster.GetBookmark;
  {frLogin := TFrLogin.Create(Self);
  frLogin.Label2.Caption :='Otorisasi';
  if frLogin.ShowModal=mrok then}
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin

    //Otorisasi('DBTrans',MenuKasbank,IDUser,'',QuMasterNoBukti.Value);\
    Otorisasi('DBTrans',MenuMemorial,IDUser,frLogin.KUNCI.Text,QuMasterNoBukti.Value);
    ToolButton10.Click;
  end
  else
  Begin
      MessageDlg('Periode telah terkunci !',mtWarning,[mbok],0);
       ActiveControl := cxGrid1;
  end;
  begin
    //Otorisasi('DBTrans',MenuMemorial,IDUser,frLogin.KUNCI.Text,QuMasterNoBukti.Value);
    //ToolButton10.Click;
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

procedure TFrMainMemorial.tvMaster2FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  with QuDetail1 do
  begin
    close;
    open;
  end;
end;

procedure TFrMainMemorial.ToolButton11Click(Sender: TObject);
begin
  BM := QuMaster.GetBookmark;
  {frLogin := TFrLogin.Create(Self);
  frLogin.Label2.Caption :='Otorisasi';
  if frLogin.ShowModal=mrok then  }
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      //BatalOtorisasi('DBTrans',MenuKasbank,IDUser,'',QuMasterNoBukti.Value);
      BatalOtorisasi('DBTrans',MenuMemorial,IDUser,'',QuMasterNoBukti.Value);
      ToolButton10.Click;
    end
   else
  Begin
      MessageDlg('Periode telah terkunci !',mtWarning,[mbok],0);
       ActiveControl := cxGrid1;
  end;
  begin
   // BatalOtorisasi('DBTrans',MenuMemorial,IDUser,'',QuMasterNoBukti.Value);
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
