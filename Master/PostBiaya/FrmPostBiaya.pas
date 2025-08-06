unit FrmPostBiaya;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  StdCtrls, ExtCtrls, Menus, dxGridMenus,ShellApi, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxExportGrid4Link;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrPostBiaya = class(TForm)
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
    ToolButton4: TToolButton;
    ToolButton7: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    SaveDialog: TSaveDialog;
    MultiSelect1: TMenuItem;
    Sp_Merk: TADOStoredProc;
    ToolButton8: TToolButton;
    QuViewKODEBAG: TStringField;
    QuViewPERKIRAAN: TStringField;
    QuViewNamaBag: TStringField;
    QuViewNamaPerkiraan: TStringField;
    QuViewKodeMesin: TStringField;
    QuViewNamaMesin: TStringField;
    QuViewBagian: TStringField;
    QuViewMesin: TStringField;
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    QuViewBiayaJasa: TStringField;
    QuViewNamaBiayaJasa: TStringField;
    QuViewPersediaan: TStringField;
    QuViewJasa: TStringField;
    QuViewMyKey: TStringField;
    tvMasterBagian: TcxGridDBBandedColumn;
    tvMasterMesin: TcxGridDBBandedColumn;
    tvMasterPersediaan: TcxGridDBBandedColumn;
    tvMasterJasa: TcxGridDBBandedColumn;
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
    procedure SimpanData(Mode:Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton2Click(Sender: TObject);
    procedure AmbilData;
    procedure ToolButton3Click(Sender: TObject);
    procedure MultiSelect1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    mPosisi : string;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel : boolean;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrPostBiaya: TFrPostBiaya;
  S: array[0..255] of char;
  BM: TBookmark;

implementation
uses myModul,Myprocedure,MyGlobal,FrmMenu, FrmSubPostBiaya ;
{$R *.dfm}

procedure TFrPostBiaya.AmbilData;
begin
  with FrSubPostBiaya do
  begin
    KodeBag.Text:=QuViewKodeBag.AsString;
    LNamaBag.Caption:='[ '+QuViewNamaBag.AsString+' ]';
    KodeJnsPakai.Text:=QuViewKodeMesin.AsString;
    LNamaJnsPakai.Caption:='[ '+QuViewNamaMesin.AsString+' ]';
    Perkiraan.Text:=QuViewPerkiraan.AsString;
    LNamaPerk.Caption:='[ '+QuViewNamaPerkiraan.AsString+' ]';
    BiayaJasa.Text:=QuViewBiayaJasa.AsString;
    LNamaBiayaJasa.Caption:='[ '+QuViewNamaBiayaJasa.AsString+' ]';
  end;
end;

procedure TFrPostBiaya.SimpanData(Mode:Char);
begin
  With Sp_Merk do
  begin
    BM:=QuView.GetBookmark;
    Prepared;
    Parameters[1].Value := Mode;
    if Mode='D' then
    begin
      Parameters[6].Value := QuView.FieldbyName('KodeBag').asstring;
      Parameters[7].Value := QuView.FieldbyName('KodeMesin').asstring;
    end
    else
    begin
      Parameters[2].Value := FrSubPostBiaya.KodeBag.Text;
      Parameters[3].Value := FrSubPostBiaya.KodeJnsPakai.Text;
      Parameters[4].Value := FrSubPostBiaya.Perkiraan.Text;
      Parameters[5].Value := FrSubPostBiaya.BiayaJasa.Text;
      Parameters[6].Value := QuView.FieldbyName('KodeBag').asstring;
      Parameters[7].Value := QuView.FieldbyName('KodeMesin').asstring;

    end;
    try
      execproc;
      if Mode='I' then
      begin
        QuView.Requery;
        QuView.Locate('kodeBag',FrSubPostBiaya.KodeBag.Text,[LOP,LOC]);
        LoggingData(IDUser,Mode,'Bagian','','Kode Bag = '+FrSubPostBiaya.KodeBag.Text+
                    ' , Nama Bag = '+FrSubPostBiaya.lNamaBag.Caption);
      end else if Mode='U' then
      begin
        QuView.Requery;
        if QuView.BookmarkValid(BM) then
        begin
          try
             QuView.GotoBookmark(BM);
          finally
             QuView.FreeBookmark(BM);
          end
        end else
        begin
          QuView.FreeBookmark(BM);
          QuView.Last;
        end;
        LoggingData(IDUser,Mode,'Bagian','','Kode Bag = '+FrSubPostBiaya.KodeBag.Text+
                    ' , Nama Merk = '+FrSubPostBiaya.LNamaBag.Caption);
      end
      Else if Mode='D' then
      begin
        LoggingData(IDUser,Mode,'Bag','','Kode Bag = '+QuViewKodeBag.AsString+
                    ' , Nama Bag = '+QuViewNamaBag.AsString);
        QuView.Requery;
      end;
    except
      If (Mode='I') Or (Mode='U') then
         showmessage('Proses Gagal !, Data Sudah Ada')
      else If (Mode='D') then
         showmessage('Proses Gagal !, Bagian berkaitan dengan transaksi');
    end;
  end;
end;

procedure TFrPostBiaya.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrPostBiaya.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
    begin
        Action:=caFree;
    end
    else
        Action:=caNone;
end;

procedure TFrPostBiaya.FormDestroy(Sender: TObject);
begin
  FrPostBiaya:=nil;
end;

procedure TFrPostBiaya.FormShow(Sender: TObject);
begin
 with QuView do
 begin
  close;
  open;
 end;
end;

procedure TFrPostBiaya.ToolButton10Click(Sender: TObject);
begin
 QuView.Requery;
end;

procedure TFrPostBiaya.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrPostBiaya.ExportExcel1Click(Sender: TObject);
begin
  if (IsExcel) then
  begin
    with SaveDialog do
    begin
      DefaultExt := 'xls';
      Filter := 'Microsoft Excel (*.xls)|*.xls';
      FileName := FrPostBiaya.Caption;
      if Execute then
         ExportGrid4ToExcel(FileName,cxGrid1,False,True,True);

      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
      LoggingData(IDUser,'Export to excel',FrPostBiaya.Caption,'','export to excel dengan nama file : '+SaveDialog.FileName);
    end;
  end else
  begin
      ShowMessage('Anda tidak berhak Mengekspor Excel');
  end;

end;

procedure TFrPostBiaya.AutoFilter1Click(Sender: TObject);
begin
  AutoFilter1.Checked :=  not AutoFilter1.Checked;
  tvMaster.OptionsCustomize.ColumnFiltering := AutoFilter1.Checked;
end;

procedure TFrPostBiaya.ShowGrid1Click(Sender: TObject);
begin
  ShowGrid1.Checked := not ShowGrid1.Checked;
  if ShowGrid1.Checked then
      tvMaster.OptionsView.GridLines := glBoth
  else
      tvMaster.OptionsView.GridLines := glNone;
end;

procedure TFrPostBiaya.ShowHeader1Click(Sender: TObject);
begin
  ShowHeader1.Checked := not ShowHeader1.Checked;
  tvMaster.OptionsView.Header := ShowHeader1.Checked;
end;

procedure TFrPostBiaya.Show1Click(Sender: TObject);
begin
  Show1.Checked := not Show1.Checked;
  tvMaster.OptionsView.Footer := Show1.Checked;
end;

procedure TFrPostBiaya.ToolButton1Click(Sender: TObject);
begin
  if IsTambah then
  begin
    Application.CreateForm(TFrSubPostBiaya, FrSubPostBiaya);
    FrSubPostBiaya.IsSimpan:=True;
    FrSubPostBiaya.ShowModal;
  end
  else
  begin
      ShowMessage('Anda tidak berhak Menambah Data');
  end;

end;

procedure TFrPostBiaya.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrPostBiaya.ToolButton2Click(Sender: TObject);
begin
  if IsKoreksi then
  begin
    Application.CreateForm(TFrSubPostBiaya, FrSubPostBiaya);
    FrSubPostBiaya.IsSimpan:=false;
    AmbilData;
    FrSubPostBiaya.ShowModal;
    if FrSubPostBiaya.ModalResult=mrOK then
    begin
      With QuView do
      begin
        Locate('KodeBag',mPosisi,[LOC, LOP]);
      end;
    end;
    ActiveControl:=cxGrid1;
  end else
  begin
     ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
  end;

end;

procedure TFrPostBiaya.ToolButton3Click(Sender: TObject);
begin
  if IsHapus then
  begin
   if Quview.IsEmpty=true then
   begin
      Application.MessageBox('Tabel Kosong','Informasi'
      ,MB_OK Or MB_ICONWARNING);
   end
   else
   begin
      StrPCopy(S,Format('Anda yakin Kode %s dan Nama %s dihapus ?',
           [QuView.Fields[0].asstring,
            QuView.Fields[1].asstring]));
      if (Application.MessageBox(S,'Peringatan',
          MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
      begin
           SimpanData('D');
      end;
   end;
  end else
  begin
     ShowMessage('Anda Tidak Berhak Menghapus Data');
  end;
end;

procedure TFrPostBiaya.MultiSelect1Click(Sender: TObject);
begin
  MultiSelect1.Checked := Not MultiSelect1.Checked;
  tvMaster.OptionsSelection.MultiSelect := MultiSelect1.Checked;
end;

end.
