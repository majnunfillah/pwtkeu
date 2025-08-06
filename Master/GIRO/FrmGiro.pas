unit FrmGiro;

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

  TFrGiro = class(TForm)
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
    PopupMenu2: TPopupMenu;
    TampilValid: TMenuItem;
    TampilBatal: TMenuItem;
    DsMaster: TDataSource;
    QuMaster: TADOQuery;
    Panel1: TPanel;
    dxPageControl1: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    dxTabSheet2: TdxTabSheet;
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    QuDetail1: TADOQuery;
    dsDetail1: TDataSource;
    tvMasterBank: TcxGridDBColumn;
    tvMasterNogiro: TcxGridDBColumn;
    tvMasterTglGiro: TcxGridDBColumn;
    tvMasterDebet: TcxGridDBColumn;
    tvMasterkredit: TcxGridDBColumn;
    tvMasterDebetRp: TcxGridDBColumn;
    tvMasterKreditRp: TcxGridDBColumn;
    tvMasterKodevls: TcxGridDBColumn;
    tvMasterKurs: TcxGridDBColumn;
    QuDetail1NoGiro: TStringField;
    QuDetail1Bank: TStringField;
    QuDetail1TglGiro: TDateTimeField;
    QuDetail1Debet: TBCDField;
    QuDetail1Kredit: TBCDField;
    QuDetail1DebetRp: TBCDField;
    QuDetail1KreditRp: TBCDField;
    QuDetail1Keterangan: TStringField;
    QuDetail1TglBuka: TDateTimeField;
    QuDetail1BuktiBuka: TStringField;
    QuDetail1UrutBuktiBuka: TIntegerField;
    QuDetail1TglCair: TDateTimeField;
    QuDetail1BuktiCair: TStringField;
    QuDetail1KeteranganCair: TStringField;
    QuDetail1UrutBuktiCair: TIntegerField;
    QuDetail1Kodevls: TStringField;
    QuDetail1Kurs: TBCDField;
    QuDetail1Jumlah: TBCDField;
    QuDetail1Tipe: TStringField;
    QuMasterNoGiro: TStringField;
    QuMasterBank: TStringField;
    QuMasterTglGiro: TDateTimeField;
    QuMasterDebet: TBCDField;
    QuMasterKredit: TBCDField;
    QuMasterDebetRp: TBCDField;
    QuMasterKreditRp: TBCDField;
    QuMasterKeterangan: TStringField;
    QuMasterTglBuka: TDateTimeField;
    QuMasterBuktiBuka: TStringField;
    QuMasterUrutBuktiBuka: TIntegerField;
    QuMasterTglCair: TDateTimeField;
    QuMasterBuktiCair: TStringField;
    QuMasterKeteranganCair: TStringField;
    QuMasterUrutBuktiCair: TIntegerField;
    QuMasterKodevls: TStringField;
    QuMasterKurs: TBCDField;
    QuMasterJumlah: TBCDField;
    QuMasterTipe: TStringField;
    cxGrid2: TcxGrid;
    tvDetail: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    tvDetailNoGiro: TcxGridDBColumn;
    tvDetailBank: TcxGridDBColumn;
    tvDetailTglGiro: TcxGridDBColumn;
    tvDetailDebet: TcxGridDBColumn;
    tvDetailKredit: TcxGridDBColumn;
    tvDetailDebetRp: TcxGridDBColumn;
    tvDetailKreditRp: TcxGridDBColumn;
    tvDetailKodevls: TcxGridDBColumn;
    tvDetailKurs: TcxGridDBColumn;
    tvMasterKeterangan: TcxGridDBColumn;
    tvMasterTglBuka: TcxGridDBColumn;
    tvMasterBuktiBuka: TcxGridDBColumn;
    tvMasterTglCair: TcxGridDBColumn;
    tvMasterBuktiCair: TcxGridDBColumn;
    tvMasterKeteranganCair: TcxGridDBColumn;
    tvDetailKeterangan: TcxGridDBColumn;
    tvDetailTglBuka: TcxGridDBColumn;
    tvDetailBuktiBuka: TcxGridDBColumn;
    tvDetailTglCair: TcxGridDBColumn;
    tvDetailBuktiCair: TcxGridDBColumn;
    tvDetailKeteranganCair: TcxGridDBColumn;
    QuMasterNamaBank: TStringField;
    QuMasterNamaVls: TStringField;
    QuDetail1NamaVls: TStringField;
    QuDetail1Kas: TStringField;
    QuDetail1Perkiraan: TStringField;
    tvDetailDBPerkiraan: TcxGridDBColumn;
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
    procedure ToolButton3Click(Sender: TObject);
    procedure dxPageControl1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPosisi : string;
    IsTambah,IsKoreksi,IsHapus, IsCetak, ModalKoreksi, IsExcel,isSimpan : Boolean;
    SortBy,Prioritas :String;
    xQnt,xDiskon,xDPP,xPPN,xJumlah : Real;
    Procedure UpdateDataGiroHutang(Choice:Char);
    procedure AmbilData;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrGiro: TFrGiro;
  S: array[0..255] of char;
  BM: TBookmark;
implementation

uses MyModul, MyProcedure, MyGlobal, FrmBrows, FrmSubGiro;
{$R *.dfm}

procedure TFrGiro.AmbilData;
begin
  with FrSubGiro do
  begin
    if dxPageControl1.ActivePageIndex=0 then
    begin
      Bank.Text        := FrGiro.QuMaster.fieldbyname('Bank').AsString;
      NoGiro.Text      := FrGiro.QuMaster.fieldbyname('NoGiro').AsString;
      TanggalGiro.Date := FrGiro.QuMaster.fieldbyname('TglGiro').AsDateTime;

      TglBuka.Date := FrGiro.QuMaster.fieldbyname('TglBuka').AsDateTime;
      KeteranganBuka.text  := FrGiro.QuMaster.fieldbyname('Keterangan').AsString;
      BuktiBuka.Text   := FrGiro.QuMaster.fieldbyname('BuktiBuka').AsString;
      TglCair.Date := FrGiro.QuMaster.fieldbyname('TglCair').AsDateTime;
      KeteranganCair.text  := FrGiro.QuMaster.fieldbyname('KeteranganCair').AsString;
      buktiCair.Text   := FrGiro.QuMaster.fieldbyname('BuktiCair').AsString;
      KodeVls.Text     := FrGiro.QuMaster.fieldbyname('KodeVls').AsString;
      if KodeVls.Text='IDR' then
         Jumlah.AsFloat    := FrGiro.QuMaster.fieldbyname('KreditRp').AsFloat
      else
         Jumlah.AsFloat    := FrGiro.QuMaster.fieldbyname('Kredit').AsFloat;
      LValas.Caption   := '[ '+FrGiro.QuMaster.fieldbyname('NamaVls').AsString+' ]';
      Kurs.AsFloat     := FrGiro.QuMaster.fieldbyname('Kurs').AsFloat;
      lBank.Caption:='[ '+FrGiro.QuMaster.fieldbyname('NamaBank').AsString+' ]';

    end
    else
    begin
      Bank.Text        := FrGiro.QuDetail1.fieldbyname('Bank').AsString;
      NoGiro.Text      := FrGiro.QuDetail1.fieldbyname('NoGiro').AsString;
      TanggalGiro.Date := FrGiro.QuDetail1.fieldbyname('TglGiro').AsDateTime;

      TglBuka.Date := FrGiro.QuDetail1.fieldbyname('TglBuka').AsDateTime;
      KeteranganBuka.text  := FrGiro.QuDetail1.fieldbyname('Keterangan').AsString;
      BuktiBuka.Text   := FrGiro.QuDetail1.fieldbyname('BuktiBuka').AsString;
      TglCair.Date := FrGiro.QuDetail1.fieldbyname('TglCair').AsDateTime;
      KeteranganCair.text  := FrGiro.QuDetail1.fieldbyname('KeteranganCair').AsString;
      buktiCair.Text   := FrGiro.QuDetail1.fieldbyname('BuktiCair').AsString;
      KodeVls.Text     := FrGiro.QuDetail1.fieldbyname('KodeVls').AsString;

      if KodeVls.Text='IDR' then
         Jumlah.AsFloat    := FrGiro.QuDetail1.fieldbyname('DebetRp').AsFloat
      else
         Jumlah.AsFloat    := FrGiro.QuDetail1.fieldbyname('Debet').AsFloat;
      LValas.Caption   := '[ '+FrGiro.QuDetail1.fieldbyname('NamaVls').AsString+' ]';
      Kurs.AsFloat     := FrGiro.QuDetail1.fieldbyname('Kurs').AsFloat;
      KAS.Text     := FrGiro.QuDetail1.fieldbyname('Kas').AsString;
      if DataBersyarat('select perkiraan,keterangan from dbperkiraan where perkiraan=:0',[kas.text],DM.Qucari) then
                  begin
                    Kas.Text:=dm.qucari.FieldByName('perkiraan').AsString;
                    Lkas.Caption:=dm.qucari.FieldByName('Keterangan').AsString;
                  end
                  else   TampilIsiPerkiraan;
    end;

  end;
end;

Procedure TFrGiro.UpdateDataGiroHutang(Choice:Char);
begin
  if dxPageControl1.ActivePageIndex=0 then
     BM := QuMaster.GetBookmark
  else
     BM := QuDetail1.GetBookmark;
  With Sp_Batal do
  begin
    close;
    Prepared;
    Parameters[1].Value := Choice;
    if Choice='D' then
    begin
      if dxPageControl1.ActivePageIndex=0 then
      begin
        Parameters[2].Value  := QuMaster.fieldbyname('Bank').AsString;
        Parameters[3].Value := QuMaster.fieldbyname('NoGiro').AsString;
        Parameters[15].Value := QuMaster.fieldbyname('KAS').AsString;
        Parameters[14].Value := 'HT'
      end
      else
      begin
        Parameters[2].Value  := QuDetail1.fieldbyname('Bank').AsString;
        Parameters[3].Value := QuDetail1.fieldbyname('NoGiro').AsString;
        Parameters[14].Value := 'PT';
      end
    end
    else
    begin
      Parameters[2].Value  := FrSubGiro.Bank.Text;
      Parameters[3].Value  := FrSubGiro.NoGiro.Text;
      Parameters[4].Value  := FrSubGiro.TanggalGiro.Date;
      Parameters[5].Value := FrSubGiro.KodeVls.Text;
      Parameters[6].Value := FrSubGiro.Kurs.AsFloat;
      Parameters[7].Value  := FrSubGiro.Jumlah.AsFloat;
      if FrSubGiro.TglBuka.Text='  /  /    ' then
         Parameters[8].Value  := null
      else
         Parameters[8].Value  := FrSubGiro.TglBuka.Date;
      Parameters[9].Value  := FrSubGiro.BuktiBuka.text;
      Parameters[10].Value  := FrSubGiro.KeteranganBuka.text;
      if FrSubGiro.TglCair.Text='  /  /    ' then
         Parameters[11].Value  := null
      else
         Parameters[11].Value  := FrSubGiro.TglCair.Date;
      Parameters[12].Value := FrSubGiro.buktiCair.Text;
      Parameters[13].Value := FrSubGiro.KeteranganCair.text;
      if dxPageControl1.ActivePageIndex=0 then
         Parameters[14].Value := 'HT'
      else
         Parameters[14].Value := 'PT';
      Parameters[15].Value := FrSubGiro.Kas.text;
    end;
    try
      ExecProc;
      if Choice='I' then
      begin
        LoggingData(IDUser,Choice,'Giro','',
                    ' Bank = '+QuotedStr(FrSubGiro.Bank.Text)+
                    ' No. Giro = '+QuotedStr(FrSubGiro.NoGiro.Text)+
                    ' Tgl Giro = '+QuotedStr(FrSubGiro.TanggalGiro.Text)+
                    ' Valas = '+QuotedStr(FrSubGiro.KodeVls.Text)+
                    ' Kurs = '+QuotedStr(FrSubGiro.Kurs.Text)+
                    ' Jumlah Valas= '+QuotedStr(FrSubGiro.Jumlah.Text)+
                    ' Jumlah Rupiah = '+FormatFloat(',0.00',FrSubGiro.Jumlah.Value*FrSubGiro.Kurs.Value));
        if dxPageControl1.ActivePageIndex=0 then
        begin
          QuMaster.Requery;
          QuMaster.Locate('Bank;Nogiro',VarArrayOf([FrSubGiro.Bank.Text,FrSubGiro.NoGiro.Text]),[LOC,LOP]);
        end
        else
        begin
          QuDetail1.Requery;
          QuDetail1.Locate('Bank;Nogiro',VarArrayOf([FrSubGiro.Bank.Text,FrSubGiro.NoGiro.Text]),[LOC,LOP]);
        end;
      end else if Choice='U' then
      begin
        if dxPageControl1.ActivePageIndex=0 then
        begin
          QuMaster.Requery;
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
        end
        else
        begin
          QuDetail1.Requery;
          if QuDetail1.BookmarkValid(BM) then
          begin
            try
               QuDetail1.GotoBookmark(BM);
            finally
               QuDetail1.FreeBookmark(BM);
            end
          end else
          begin
            QuDetail1.FreeBookmark(BM);
            QuDetail1.Last;
          end;
        end;
        LoggingData(IDUser,Choice,'Giro','',
                    ' Bank = '+QuotedStr(FrSubGiro.Bank.Text)+
                    ' No. Giro = '+QuotedStr(FrSubGiro.NoGiro.Text)+
                    ' Tgl Giro = '+QuotedStr(FrSubGiro.TanggalGiro.Text)+
                    ' Valas = '+QuotedStr(FrSubGiro.KodeVls.Text)+
                    ' Kurs = '+QuotedStr(FrSubGiro.Kurs.Text)+
                    ' Jumlah Valas= '+QuotedStr(FrSubGiro.Jumlah.Text)+
                    ' Jumlah Rupiah = '+FormatFloat(',0.00',FrSubGiro.Jumlah.Value*FrSubGiro.Kurs.Value));
      end
      else if Choice='D' then
      begin
        if dxPageControl1.ActivePageIndex=0 then
        begin
          LoggingData(IDUser,Choice,'Giro','',
                    ' Bank = '+QuotedStr(QuMasterBank.AsString)+
                    ' No. Giro = '+QuotedStr(QuMasterNoGiro.AsString)+
                    ' Tgl Giro = '+QuotedStr(QuMasterTglGiro.AsString)+
                    ' Valas = '+QuotedStr(QuMasterKodevls.AsString)+
                    ' Kurs = '+QuotedStr(QuMasterKurs.AsString)+
                    ' Jumlah Valas= '+QuotedStr(QuMasterJumlah.AsString)+
                    ' Jumlah Rupiah = '+FormatFloat(',0.00',QuMasterJumlah.Value*QuMasterKurs.Value));
          QuMaster.Requery;
        end
        else
        begin
          LoggingData(IDUser,Choice,'Giro','',
                    ' Bank = '+QuotedStr(QuDetail1Bank.AsString)+
                    ' No. Giro = '+QuotedStr(QuDetail1NoGiro.AsString)+
                    ' Tgl Giro = '+QuotedStr(QuDetail1TglGiro.AsString)+
                    ' Valas = '+QuotedStr(QuDetail1Kodevls.AsString)+
                    ' Kurs = '+QuotedStr(QuDetail1Kurs.AsString)+
                    ' Jumlah Valas= '+QuotedStr(QuDetail1Jumlah.AsString)+
                    ' Jumlah Rupiah = '+FormatFloat(',0.00',QuDetail1Jumlah.Value*QuDetail1Kurs.Value));
          QuDetail1.Requery;
        end;
      end;
    except
      on E: Exception do
           begin
               Application.MessageBox(StrPCopy(S,E.Message),'Peringatan',MB_OK or MB_ICONSTOP);
           end;
    end;
  end;
  ToolButton10.Click;
end;

procedure TFrGiro.GetData(bulan,tahun:integer);
begin
  case dxPageControl1.ActivePageIndex of
    0 : with QuMaster do
        begin
          Close;
          Open;
        end;
    1 : with QuDetail1 do
        begin
          Close;
          Open;
        end;
  end;
end;

procedure TFrGiro.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrGiro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
           MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
  begin
    if Application.FindComponent('FrSubGiro')<>nil then
    begin
       MessageDlg('Modul '+FrGiro.Caption+' belum ditutup !',mtWarning,[mbok],0);
       Action := caNone
    end
    else Action:=caFree;
  end
  else Action:=caNone;
end;

procedure TFrGiro.FormDestroy(Sender: TObject);
begin
  FrGiro:=nil;
end;

procedure TFrGiro.FormShow(Sender: TObject);
begin
  TampilValid.Checked:=true;
  TampilBatal.Checked:=false;
  ToolButton10.Click;
end;

procedure TFrGiro.ToolButton10Click(Sender: TObject);
begin
   GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
end;

procedure TFrGiro.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrGiro.ExportExcel1Click(Sender: TObject);
begin
  if (IsExcel) then
  begin
    //Save('xls', 'Microsoft Excel (*.xls)|*.xls', FrGiro.Caption, dxDBGrid1.SaveToXLS);
    ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
  end else
  begin
      ShowMessage('Anda tidak berhak Mengeksport Excel');
  end;
end;

procedure TFrGiro.AutoFilter1Click(Sender: TObject);
begin
    if tvMaster.OptionsCustomize.ColumnFiltering=false then
    tvMaster.OptionsCustomize.ColumnFiltering:=true
    else
    tvMaster.OptionsCustomize.ColumnFiltering:=false;

end;

procedure TFrGiro.ShowGrid1Click(Sender: TObject);
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

procedure TFrGiro.ShowHeader1Click(Sender: TObject);
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

procedure TFrGiro.Show1Click(Sender: TObject);
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

procedure TFrGiro.ToolButton1Click(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if IsTambah then
    begin
      if Assigned(FrSubGiro) then FrSubGiro.Show else
      begin
        ModalKoreksi:=False;
        Application.CreateForm(TFrSubGiro,FrSubGiro);
        FrSubGiro.Show;
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

procedure TFrGiro.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrGiro.ToolButton2Click(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if IsKoreksi then
    begin
      if (QuMaster.IsEmpty=False) and (dxPageControl1.ActivePageIndex=0)then
      begin
        Application.CreateForm(TFrSubGiro,FrSubGiro);
        ModalKoreksi:=True;
        AmbilData;
        FrSubGiro.ShowModal;
      end
      else
      if (QuDetail1.IsEmpty=False) and (dxPageControl1.ActivePageIndex=1)then
      begin
        Application.CreateForm(TFrSubGiro,FrSubGiro);
        ModalKoreksi:=True;
        AmbilData;
        FrSubGiro.ShowModal;
      end else
      begin
        ShowMessage('Tidak ada Giro yang dikoreksi !');
        if (dxPageControl1.ActivePageIndex=0)then
           ActiveControl:=cxGrid1
        else
           ActiveControl:=cxGrid2
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

procedure TFrGiro.MultiSelect1Click(Sender: TObject);
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

procedure TFrGiro.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

procedure TFrGiro.TampilValidClick(Sender: TObject);
begin
   ToolButton11.Caption:=TampilValid.Caption;
   TampilValid.Checked:=true;
   TampilBatal.Checked:=false;
   ToolButton1.Enabled:=true;
   ToolButton2.Enabled:=true;
   ToolButton3.Caption:='&Batal';
   ToolButton10Click(self);
end;

procedure TFrGiro.TampilBatalClick(Sender: TObject);
begin
   ToolButton11.Caption:=TampilBatal.Caption;
   TampilValid.Checked:=false;
   TampilBatal.Checked:=True;
   ToolButton1.Enabled:=false;
   ToolButton2.Enabled:=false;
   ToolButton3.Caption:='&Valid';
   ToolButton10Click(self);
end;

procedure TFrGiro.ToolButton3Click(Sender: TObject);
begin
  if IsHapus then
  begin
    if dxPageControl1.ActivePageIndex=0 then
    begin
      if QuMaster.IsEmpty=true then
      begin
        Application.MessageBox('Tabel Kosong','Informasi'
        ,MB_OK Or MB_ICONWARNING);
      end
      else
      begin
        StrPCopy(S,Format('Anda yakin Bank %s dan No. Giro %s dihapus ?',
             [Qumaster.FieldByname('Bank').asstring,
              QuMaster.FieldByname('NoGiro').asstring]));
        if (Application.MessageBox(S,'Peringatan',
            MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
        begin
           UpdateDataGiroHutang('D');
           GetData(1,2010);
        end;
      end;
    end
    else
    begin
      if QuDetail1.IsEmpty=true then
      begin
        Application.MessageBox('Tabel Kosong','Informasi'
        ,MB_OK Or MB_ICONWARNING);
      end
      else
      begin
        StrPCopy(S,Format('Anda yakin Bank %s dan No. Giro %s dihapus ?',
             [QuDetail1.FieldByname('Bank').asstring,
              QuDetail1.FieldByname('NoGiro').asstring]));
        if (Application.MessageBox(S,'Peringatan',
            MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
        begin
           UpdateDataGiroHutang('D');
           GetData(1,2010);
        end;
      end;
    end
  end
  else
  begin
     ShowMessage('Anda Tidak Berhak Menghapus Data');
  end;
end;

procedure TFrGiro.dxPageControl1Change(Sender: TObject);
begin
  GetData(1,2010);
end;

end.
