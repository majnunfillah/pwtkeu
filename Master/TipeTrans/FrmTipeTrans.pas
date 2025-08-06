unit FrmTipeTrans;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  StdCtrls, ExtCtrls, Menus, dxGridMenus,ShellApi, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxEdit, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxExportGrid4Link;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrTipeTrans = class(TForm)
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
    QuViewKODETIPE: TStringField;
    QuViewNama: TStringField;
    QuViewIsJasaBeliJual: TWordField;
    QuViewMyJasa: TStringField;
    ToolButton11: TToolButton;
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    tvDetail: TcxGridDBBandedTableView;
    tvMasterKODETIPE: TcxGridDBBandedColumn;
    tvMasterNama: TcxGridDBBandedColumn;
    tvMasterMyJasa: TcxGridDBBandedColumn;
    QuDetail: TADOQuery;
    dsQuDetail: TDataSource;
    QuDetailKODESUBTIPE: TStringField;
    QuDetailNama: TStringField;
    QuDetailKODETIPE: TStringField;
    QuDetailPersediaan: TStringField;
    QuDetailPPn: TStringField;
    QuDetailHutPiut: TStringField;
    QuDetailNamaPersediaan: TStringField;
    QuDetailNamaPPN: TStringField;
    QuDetailNamaHutPiut: TStringField;
    QuDetailPerk_Persediaan: TStringField;
    QuDetailPerk_PPn: TStringField;
    QuDetailPerk_HutPiut: TStringField;
    tvDetailKODESUBTIPE: TcxGridDBBandedColumn;
    tvDetailNama: TcxGridDBBandedColumn;
    tvDetailPerk_Persediaan: TcxGridDBBandedColumn;
    tvDetailPerk_PPn: TcxGridDBBandedColumn;
    tvDetailPerk_HutPiut: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ExportExcel1Click(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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
    procedure AutoFilter1Click(Sender: TObject);
    procedure tvMasterFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure ToolButton11Click(Sender: TObject);

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
  FrTipeTrans: TFrTipeTrans;
  S: array[0..255] of char;
  BM: TBookmark;

implementation
uses myModul,Myprocedure,MyGlobal,FrmMenu, FrmSubTipeTrans, FrmTipeTrans_ ;
{$R *.dfm}

procedure TFrTipeTrans.AmbilData;
begin
   with FrSubTipeTrans do
   begin
      Kodebrd.Text:=QuViewKODETIPE.AsString;
      NamaBrd.Text:=QuViewNama.AsString;
      Tipe.ItemIndex := QuViewIsJasaBeliJual.AsInteger;

   end;
end;

procedure TFrTipeTrans.SimpanData(Mode:Char);
begin
  With Sp_Merk do
  begin
    BM:=QuView.GetBookmark;
    Prepared;
    Parameters[1].Value := Mode;
    if Mode='D' then
       Parameters[5].Value := QuView.FieldbyName('KodeTipe').asstring
    else
    begin
      Parameters[2].Value := FrSubTipeTrans.KodeBrd.Text;
      Parameters[3].Value := FrSubTipeTrans.NamaBrd.Text;
      Parameters[4].Value := FrSubTipeTrans.Tipe.ItemIndex;
      Parameters[5].Value := QuView.FieldbyName('KodeTipe').asstring;
    end;
    try
      execproc;
      if Mode='I' then
      begin
        QuView.Requery;
        QuView.Locate('KodeTipe',FrSubTipeTrans.KodeBrd.Text,[LOP,LOC]);
        LoggingData(IDUser,Mode,'Kategori','','Kode Kategori = '+FrSubTipeTrans.KodeBrd.Text+
                    ' , Nama Kategori = '+FrSubTipeTrans.NamaBrd.Text);
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
        LoggingData(IDUser,Mode,'Kategori','','Kode TipeTrans = '+FrSubTipeTrans.KodeBrd.Text+
                    ' , Nama Kategori = '+FrSubTipeTrans.NamaBrd.Text);
      end
      Else if Mode='D' then
      begin
        LoggingData(IDUser,Mode,'Kategori','','Kode TipeTrans = '+QuViewKodeTipe.AsString+
                    ' , Nama TipeTrans = '+QuViewNama.AsString);
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

procedure TFrTipeTrans.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrTipeTrans.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
    begin
        Action:=caFree;
    end
    else
        Action:=caNone;
end;

procedure TFrTipeTrans.FormDestroy(Sender: TObject);
begin
  FrTipeTrans:=nil;
end;

procedure TFrTipeTrans.FormShow(Sender: TObject);
begin
 with QuView do
 begin
  close;
  open;
 end;
end;

procedure TFrTipeTrans.ToolButton10Click(Sender: TObject);
begin
 QuView.Requery;
end;

procedure TFrTipeTrans.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrTipeTrans.ExportExcel1Click(Sender: TObject);
begin
  if (IsExcel) then
  begin
    with SaveDialog do
    begin
      DefaultExt := 'xls';
      Filter := 'Microsoft Excel (*.xls)|*.xls';
      FileName := FrTipeTrans.Caption;
      if Execute then
         ExportGrid4ToExcel(FileName,cxGrid1,False,True,True);

      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
      LoggingData(IDUser,'Export to excel',FrTipeTrans.Caption,'','export to excel dengan nama file : '+SaveDialog.FileName);
    end;
  end else
  begin
      ShowMessage('Anda tidak berhak Mengekspor Excel');
  end;

end;

procedure TFrTipeTrans.ShowGrid1Click(Sender: TObject);
begin
  if ShowGrid1.Checked then
     tvMaster.OptionsView.GridLines := glBoth
  else
     tvMaster.OptionsView.GridLines := glNone;

end;

procedure TFrTipeTrans.ShowHeader1Click(Sender: TObject);
begin
  ShowHeader1.Checked := not ShowHeader1.Checked;
  tvMaster.OptionsView.Header := ShowHeader1.Checked;
end;

procedure TFrTipeTrans.Show1Click(Sender: TObject);
begin
   Show1.Checked := not Show1.Checked;
   tvMaster.OptionsView.Footer := Show1.Checked;
end;

procedure TFrTipeTrans.ToolButton1Click(Sender: TObject);
begin
  if IsTambah then
  begin
    Application.CreateForm(TFrSubTipeTrans, FrSubTipeTrans);
    FrSubTipeTrans.IsSimpan:=True;

    FrSubTipeTrans.ShowModal;
  end
  else
  begin
      ShowMessage('Anda tidak berhak Menambah Data');
  end;

end;

procedure TFrTipeTrans.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrTipeTrans.ToolButton2Click(Sender: TObject);
begin
  if IsKoreksi then
  begin
    Application.CreateForm(TFrSubTipeTrans, FrSubTipeTrans);
    FrSubTipeTrans.IsSimpan:=false;
    AmbilData;
    FrSubTipeTrans.ShowModal;
    if FrSubTipeTrans.ModalResult=mrOK then
    begin
      With QuView do
      begin
        Locate('KodeTipe',mPosisi,[LOC, LOP]);
      end;
    end;
    ActiveControl:=cxGrid1;
  end else
  begin
     ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
  end;

end;

procedure TFrTipeTrans.ToolButton3Click(Sender: TObject);
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

procedure TFrTipeTrans.MultiSelect1Click(Sender: TObject);
begin
   MultiSelect1.Checked := not MultiSelect1.Checked;
   tvMaster.OptionsSelection.MultiSelect := MultiSelect1.Checked;
end;

procedure TFrTipeTrans.AutoFilter1Click(Sender: TObject);
begin
  AutoFilter1.Checked := not AutoFilter1.Checked;
  tvMaster.OptionsCustomize.ColumnFiltering := AutoFilter1.Checked;
end;

procedure TFrTipeTrans.tvMasterFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  with QuDetail do
  begin
    close;
    open;
  end;
end;

procedure TFrTipeTrans.ToolButton11Click(Sender: TObject);
begin
  Application.CreateForm(TFrTipeTrans_, FrTipeTrans_);
  FrTipeTrans_.Tag := FrTipeTrans.Tag;
  FrTipeTrans_.Caption := 'Sub Tipe dari '+ QuViewKODETIPE.AsString;
  FrTipeTrans_.mkodetipe := QuViewKODETIPE.AsString;
  CekOtoritasMenu(IDUser,FrTipeTrans_.tag,FrTipeTrans_.Istambah,FrTipeTrans_.Ishapus,
              FrTipeTrans_.Iskoreksi, FrTipeTrans_.isCetak, FrTipeTrans_.isExcel);
  FrTipeTrans_.ShowModal;
end;

end.
