unit FrmDeposito;

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

  TFrDeposito = class(TForm)
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
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    tvMasterBank: TcxGridDBColumn;
    tvMasterNogiro: TcxGridDBColumn;
    tvMasterTglGiro: TcxGridDBColumn;
    tvMasterDebet: TcxGridDBColumn;
    tvMasterkredit: TcxGridDBColumn;
    tvMasterDebetRp: TcxGridDBColumn;
    tvMasterKreditRp: TcxGridDBColumn;
    tvMasterKodevls: TcxGridDBColumn;
    tvMasterKurs: TcxGridDBColumn;
    tvMasterKeterangan: TcxGridDBColumn;
    tvMasterTglBuka: TcxGridDBColumn;
    tvMasterBuktiBuka: TcxGridDBColumn;
    tvMasterTglCair: TcxGridDBColumn;
    tvMasterBuktiCair: TcxGridDBColumn;
    tvMasterKeteranganCair: TcxGridDBColumn;
    QuMasterNoDEPOSITO: TStringField;
    QuMasterBank: TStringField;
    QuMasterTanggal: TDateTimeField;
    QuMasterTglJatuhTempo: TDateTimeField;
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
    QuMasterMyID: TBytesField;
    QuMasterNamaBank: TStringField;
    QuMasterNamaVls: TStringField;
    tvMasterJatuhTempo: TcxGridDBColumn;
    tvMasterNamaBank: TcxGridDBColumn;
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
  FrDeposito: TFrDeposito;
  S: array[0..255] of char;
  BM: TBookmark;
implementation

uses MyModul, MyProcedure, MyGlobal, FrmBrows, FrmSubDeposito;
{$R *.dfm}

procedure TFrDeposito.AmbilData;
begin
  with FrSubDeposito do
  begin
    Bank.Text        := FrDeposito.QuMaster.fieldbyname('Bank').AsString;
    NoDeposito.Text      := FrDeposito.QuMaster.fieldbyname('NoDeposito').AsString;
    TglDeposito.Date := FrDeposito.QuMaster.fieldbyname('Tanggal').AsDateTime;
    TGLJatuhTempo.Date := FrDeposito.QuMaster.fieldbyname('TglJatuhTempo').AsDateTime;
    TglBuka.Date := FrDeposito.QuMaster.fieldbyname('TglBuka').AsDateTime;
    KeteranganBuka.text  := FrDeposito.QuMaster.fieldbyname('Keterangan').AsString;
    BuktiBuka.Text   := FrDeposito.QuMaster.fieldbyname('BuktiBuka').AsString;
    TglCair.Date := FrDeposito.QuMaster.fieldbyname('TglCair').AsDateTime;
    KeteranganCair.text  := FrDeposito.QuMaster.fieldbyname('KeteranganCair').AsString;
    buktiCair.Text   := FrDeposito.QuMaster.fieldbyname('BuktiCair').AsString;
    KodeVls.Text     := FrDeposito.QuMaster.fieldbyname('KodeVls').AsString;
    if KodeVls.Text='IDR' then
       Jumlah.AsFloat    := FrDeposito.QuMaster.fieldbyname('KreditRp').AsFloat
    else
       Jumlah.AsFloat    := FrDeposito.QuMaster.fieldbyname('Kredit').AsFloat;
    LValas.Caption   := '[ '+FrDeposito.QuMaster.fieldbyname('NamaVls').AsString+' ]';
    Kurs.AsFloat     := FrDeposito.QuMaster.fieldbyname('Kurs').AsFloat;
    lBank.Caption:='[ '+FrDeposito.QuMaster.fieldbyname('NamaBank').AsString+' ]';
  end;
end;

Procedure TFrDeposito.UpdateDataGiroHutang(Choice:Char);
begin
  BM := QuMaster.GetBookmark;
  With Sp_Batal do
  begin
    close;
    Prepared;
    Parameters[1].Value := Choice;
    if Choice='D' then
    begin
      Parameters[2].Value  := QuMaster.fieldbyname('Bank').AsString;
      Parameters[3].Value := QuMaster.fieldbyname('NoDeposito').AsString;
      Parameters[14].Value := 'DP';
    end
    else
    begin
      Parameters[2].Value  := FrSubDeposito.Bank.Text;
      Parameters[3].Value  := FrSubDeposito.NoDeposito.Text;
      Parameters[4].Value  := FrSubDeposito.TglDeposito.Date;
      Parameters[5].Value  := FrSubDeposito.TGLJatuhTempo.Date;
      Parameters[6].Value := FrSubDeposito.KodeVls.Text;
      Parameters[7].Value := FrSubDeposito.Kurs.AsFloat;
      Parameters[8].Value  := FrSubDeposito.Jumlah.AsFloat;
      if FrSubDeposito.TglBuka.Text='  /  /    ' then
         Parameters[9].Value  := null
      else
         Parameters[9].Value  := FrSubDeposito.TglBuka.Date;
      Parameters[10].Value  := FrSubDeposito.BuktiBuka.text;
      Parameters[11].Value  := FrSubDeposito.KeteranganBuka.text;
      if FrSubDeposito.TglCair.Text='  /  /    ' then
         Parameters[12].Value  := null
      else
         Parameters[12].Value  := FrSubDeposito.TglCair.Date;
      Parameters[13].Value := FrSubDeposito.buktiCair.Text;
      Parameters[14].Value := FrSubDeposito.KeteranganCair.text;
      Parameters[15].Value := 'DP'
    end;
    try
      ExecProc;
      if Choice='I' then
      begin
        LoggingData(IDUser,Choice,'Deposito','',
                    ' Bank = '+QuotedStr(FrSubDeposito.Bank.Text)+
                    ' No. Deposito = '+QuotedStr(FrSubDeposito.NoDeposito.Text)+
                    ' Tgl Deposito = '+QuotedStr(FrSubDeposito.TglDeposito.Text)+
                    ' Valas = '+QuotedStr(FrSubDeposito.KodeVls.Text)+
                    ' Kurs = '+QuotedStr(FrSubDeposito.Kurs.Text)+
                    ' Jumlah Valas= '+QuotedStr(FrSubDeposito.Jumlah.Text)+
                    ' Jumlah Rupiah = '+FormatFloat(',0.00',FrSubDeposito.Jumlah.Value*FrSubDeposito.Kurs.Value));
          QuMaster.Requery;
          QuMaster.Locate('Bank;NoDeposito',VarArrayOf([FrSubDeposito.Bank.Text,FrSubDeposito.NoDeposito.Text]),[LOC,LOP]);
      end else if Choice='U' then
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
        LoggingData(IDUser,Choice,'Deposito','',
                    ' Bank = '+QuotedStr(FrSubDeposito.Bank.Text)+
                    ' No. Deposito = '+QuotedStr(FrSubDeposito.NoDeposito.Text)+
                    ' Tgl Deposito = '+QuotedStr(FrSubDeposito.TglDeposito.Text)+
                    ' Valas = '+QuotedStr(FrSubDeposito.KodeVls.Text)+
                    ' Kurs = '+QuotedStr(FrSubDeposito.Kurs.Text)+
                    ' Jumlah Valas= '+QuotedStr(FrSubDeposito.Jumlah.Text)+
                    ' Jumlah Rupiah = '+FormatFloat(',0.00',FrSubDeposito.Jumlah.Value*FrSubDeposito.Kurs.Value));
      end
      else if Choice='D' then
      begin
        LoggingData(IDUser,Choice,'Deposito','',
                  ' Bank = '+QuotedStr(QuMasterBank.AsString)+
                  ' No. Deposito = '+QuotedStr(QuMasterNoDeposito.AsString)+
                  ' Tgl Deposito = '+QuotedStr(QuMasterTanggal.AsString)+
                  ' Valas = '+QuotedStr(QuMasterKodevls.AsString)+
                  ' Kurs = '+QuotedStr(QuMasterKurs.AsString)+
                  ' Jumlah Valas= '+QuotedStr(QuMasterJumlah.AsString)+
                  ' Jumlah Rupiah = '+FormatFloat(',0.00',QuMasterJumlah.Value*QuMasterKurs.Value));
        QuMaster.Requery;
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

procedure TFrDeposito.GetData(bulan,tahun:integer);
begin
  with QuMaster do
  begin
    Close;
    Open;
  end;
end;

procedure TFrDeposito.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrDeposito.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
           MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
  begin
    if Application.FindComponent('FrSubDeposito')<>nil then
    begin
       MessageDlg('Modul '+FrDeposito.Caption+' belum ditutup !',mtWarning,[mbok],0);
       Action := caNone
    end
    else Action:=caFree;
  end
  else Action:=caNone;
end;

procedure TFrDeposito.FormDestroy(Sender: TObject);
begin
  FrDeposito:=nil;
end;

procedure TFrDeposito.FormShow(Sender: TObject);
begin
  TampilValid.Checked:=true;
  TampilBatal.Checked:=false;
  ToolButton10.Click;
end;

procedure TFrDeposito.ToolButton10Click(Sender: TObject);
begin
   GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
end;

procedure TFrDeposito.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrDeposito.ExportExcel1Click(Sender: TObject);
begin
  if (IsExcel) then
  begin
    //Save('xls', 'Microsoft Excel (*.xls)|*.xls', FrDeposito.Caption, dxDBGrid1.SaveToXLS);
    ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
  end else
  begin
      ShowMessage('Anda tidak berhak Mengeksport Excel');
  end;
end;

procedure TFrDeposito.AutoFilter1Click(Sender: TObject);
begin
    if tvMaster.OptionsCustomize.ColumnFiltering=false then
    tvMaster.OptionsCustomize.ColumnFiltering:=true
    else
    tvMaster.OptionsCustomize.ColumnFiltering:=false;

end;

procedure TFrDeposito.ShowGrid1Click(Sender: TObject);
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

procedure TFrDeposito.ShowHeader1Click(Sender: TObject);
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

procedure TFrDeposito.Show1Click(Sender: TObject);
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

procedure TFrDeposito.ToolButton1Click(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if IsTambah then
    begin
      if Assigned(FrSubDeposito) then FrSubDeposito.Show else
      begin
        ModalKoreksi:=False;
        Application.CreateForm(TFrSubDeposito,FrSubDeposito);
        FrSubDeposito.Show;
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

procedure TFrDeposito.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrDeposito.ToolButton2Click(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if IsKoreksi then
    begin
      if (QuMaster.IsEmpty=False)then
      begin
        Application.CreateForm(TFrSubDeposito,FrSubDeposito);
        ModalKoreksi:=True;
        AmbilData;
        FrSubDeposito.ShowModal;
      end
      else
      begin
        ShowMessage('Tidak ada Deposito yang dikoreksi !');
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

procedure TFrDeposito.MultiSelect1Click(Sender: TObject);
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

procedure TFrDeposito.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

procedure TFrDeposito.TampilValidClick(Sender: TObject);
begin
   ToolButton11.Caption:=TampilValid.Caption;
   TampilValid.Checked:=true;
   TampilBatal.Checked:=false;
   ToolButton1.Enabled:=true;
   ToolButton2.Enabled:=true;
   ToolButton3.Caption:='&Batal';
   ToolButton10Click(self);
end;

procedure TFrDeposito.TampilBatalClick(Sender: TObject);
begin
   ToolButton11.Caption:=TampilBatal.Caption;
   TampilValid.Checked:=false;
   TampilBatal.Checked:=True;
   ToolButton1.Enabled:=false;
   ToolButton2.Enabled:=false;
   ToolButton3.Caption:='&Valid';
   ToolButton10Click(self);
end;

procedure TFrDeposito.ToolButton3Click(Sender: TObject);
begin
  if IsHapus then
  begin
    if QuMaster.IsEmpty=true then
    begin
      Application.MessageBox('Tabel Kosong','Informasi'
      ,MB_OK Or MB_ICONWARNING);
    end
    else
    begin
      StrPCopy(S,Format('Anda yakin Bank %s dan No. Deposito %s dihapus ?',
           [Qumaster.FieldByname('Bank').asstring,
            QuMaster.FieldByname('NoDeposito').asstring]));
      if (Application.MessageBox(S,'Peringatan',
          MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
      begin
         UpdateDataGiroHutang('D');
         GetData(1,2010);
      end;
    end
  end
  else
  begin
     ShowMessage('Anda Tidak Berhak Menghapus Data');
  end;
end;

procedure TFrDeposito.dxPageControl1Change(Sender: TObject);
begin
  GetData(1,2010);
end;

end.
