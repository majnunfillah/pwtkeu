unit FrmKategori2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  StdCtrls, ExtCtrls, Menus, dxGridMenus,ShellApi, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxEdit, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, cxExportGrid4Link;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrKategori2 = class(TForm)
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
    QuViewKodeSubKategori: TStringField;
    QuViewKeterangan: TStringField;
    QuViewKodeKategori: TStringField;
    QuViewPersediaan: TStringField;
    QuViewNamaKategori: TStringField;
    QuViewNamaPersediaan: TStringField;
    QuViewKategori: TStringField;
    QuViewPerk_Persediaan: TStringField;
    QuViewMyKey: TStringField;
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    tvMasterKodeSubKategori: TcxGridDBBandedColumn;
    tvMasterKeterangan: TcxGridDBBandedColumn;
    tvMasterKategori: TcxGridDBBandedColumn;
    tvMasterPerk_Persediaan: TcxGridDBBandedColumn;
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
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

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
  FrKategori2: TFrKategori2;
  S: array[0..255] of char;
  BM: TBookmark;

implementation
uses myModul,Myprocedure,MyGlobal,FrmMenu, FrmSubKategori2 ;
{$R *.dfm}

procedure TFrKategori2.AmbilData;
begin
   with FrSubKategori2 do
   begin
      KodeKategori.Text:=QuViewKodeKategori.AsString;
      LNamaKategori.Caption:='[ '+QuViewNamaKategori.AsString+' ]';
      KodeSubKategori.Text:=QuViewKodeSubKategori.AsString;
      NamaSubKategori.Text:=QuViewKeterangan.AsString;
      Perkiraan.Text := QuViewPersediaan.AsString;
      LNamaPerk.Caption := '[ '+QuViewNamaPersediaan.AsString+' ]';
   end;
end;

procedure TFrKategori2.SimpanData(Mode:Char);
begin
  With Sp_Merk do
  begin
    BM:=QuView.GetBookmark;
    Prepared;
    Parameters[1].Value := Mode;
    if Mode='D' then
    begin
       Parameters[6].Value := QuView.FieldbyName('KodeKategori').asstring;
       Parameters[7].Value := QuView.FieldbyName('KodeSubKategori').asstring;
    end
    else
    begin
      Parameters[2].Value := FrSubKategori2.KodeKategori.Text;
      Parameters[3].Value := FrSubKategori2.KodeSubKategori.Text;
      Parameters[4].Value := FrSubKategori2.NamaSubKategori.Text;
      Parameters[5].Value := FrSubKategori2.Perkiraan.Text;
      Parameters[6].Value := QuView.FieldbyName('KodeKategori').asstring;
      Parameters[7].Value := QuView.FieldbyName('KodeSubKategori').asstring;
    end;
    try
      execproc;
      if Mode='I' then
      begin
        QuView.Requery;
        QuView.Locate('kodeSubKategori',FrSubKategori2.KodeSubKategori.Text,[LOP,LOC]);
        LoggingData(IDUser,Mode,'Bagian','','Kode Bag = '+FrSubKategori2.KodeSubKategori.Text+
                    ' , Nama Bag = '+FrSubKategori2.NamaSubKategori.Text);
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
        LoggingData(IDUser,Mode,'Bagian','','Kode Bag = '+FrSubKategori2.KodeSubKategori.Text+
                    ' , Nama Merk = '+FrSubKategori2.NamaSubKategori.Text);
      end
      Else if Mode='D' then
      begin
        LoggingData(IDUser,Mode,'Bag','','Kode Bag = '+QuViewKodeSubKategori.AsString+
                    ' , Nama Bag = '+QuViewKeterangan.AsString);
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

procedure TFrKategori2.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrKategori2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
    begin
        Action:=caFree;
    end
    else
        Action:=caNone;
end;

procedure TFrKategori2.FormDestroy(Sender: TObject);
begin
  FrKategori2:=nil;
end;

procedure TFrKategori2.FormShow(Sender: TObject);
begin
 with QuView do
 begin
  close;
  open;
 end;
end;

procedure TFrKategori2.ToolButton10Click(Sender: TObject);
begin
 QuView.Requery;
end;

procedure TFrKategori2.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrKategori2.ExportExcel1Click(Sender: TObject);
begin
  if (IsExcel) then
  begin
    with SaveDialog do
    begin
      DefaultExt := 'xls';
      Filter := 'Microsoft Excel (*.xls)|*.xls';
      FileName := FrKategori2.Caption;
      if Execute then
         ExportGrid4ToExcel(FileName,cxGrid1,False,True,True);

      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
      LoggingData(IDUser,'Export to excel',FrKategori2.Caption,'','export to excel dengan nama file : '+SaveDialog.FileName);
    end;
  end else
  begin
      ShowMessage('Anda tidak berhak Mengekspor Excel');
  end;

end;

procedure TFrKategori2.AutoFilter1Click(Sender: TObject);
begin
   AutoFilter1.Checked := not AutoFilter1.Checked;
   tvMaster.OptionsCustomize.ColumnFiltering := AutoFilter1.Checked;

end;

procedure TFrKategori2.ShowGrid1Click(Sender: TObject);
begin
   if ShowGrid1.Checked then
   begin
     tvMaster.OptionsView.GridLines := glNone;
     ShowGrid1.Checked:=false;
   end else
   begin
      tvMaster.OptionsView.GridLines := glBoth;
      ShowGrid1.Checked:=true;
   end;
end;

procedure TFrKategori2.ShowHeader1Click(Sender: TObject);
begin
   if ShowHeader1.Checked then
   begin
     tvMaster.OptionsView.Header := False;
     ShowHeader1.Checked:=false;
   end else
   begin
     tvMaster.OptionsView.Header := True;
     ShowHeader1.Checked:=true;
   end;


end;

procedure TFrKategori2.Show1Click(Sender: TObject);
begin
   if Show1.Checked then
   begin
     tvMaster.OptionsView.Footer := False;
     Show1.Checked:=false;
   end else
   begin
     tvMaster.OptionsView.Footer := True;
     Show1.Checked:=true;
   end;

end;

procedure TFrKategori2.ToolButton1Click(Sender: TObject);
begin
  if IsTambah then
  begin
    Application.CreateForm(TFrSubKategori2, FrSubKategori2);
    FrSubKategori2.IsSimpan:=True;
    FrSubKategori2.ShowModal;
  end
  else
  begin
      ShowMessage('Anda tidak berhak Menambah Data');
  end;

end;

procedure TFrKategori2.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrKategori2.ToolButton2Click(Sender: TObject);
begin
  if IsKoreksi then
  begin
    Application.CreateForm(TFrSubKategori2, FrSubKategori2);
    FrSubKategori2.IsSimpan:=false;
    AmbilData;
    FrSubKategori2.ShowModal;
    if FrSubKategori2.ModalResult=mrOK then
    begin
      With QuView do
      begin
        Locate('KodeSubKategori',mPosisi,[LOC, LOP]);
      end;
    end;
    ActiveControl:=cxGrid1;
  end else
  begin
     ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
  end;

end;

procedure TFrKategori2.ToolButton3Click(Sender: TObject);
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

procedure TFrKategori2.MultiSelect1Click(Sender: TObject);
begin
   MultiSelect1.Checked := not MultiSelect1.Checked;
  tvMaster.OptionsSelection.MultiSelect := MultiSelect1.Checked;

end;

procedure TFrKategori2.ppReport1PreviewFormCreate(Sender: TObject);
begin
//  TppReport(Sender).PreviewForm.WindowState:=wsMaximized;
//  TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zs100Percent;

end;

procedure TFrKategori2.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

end.
