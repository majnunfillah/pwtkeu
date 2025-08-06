unit FrmBagian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  StdCtrls, ExtCtrls, Menus, dxGridMenus,ShellApi, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxEdit, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxClasses, cxControls, cxGridCustomView, cxGridLevel, cxGrid, cxExportGrid4Link;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrBagian = class(TForm)
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
    QuViewKodeBag: TStringField;
    QuViewNamaBag: TStringField;
    QuViewPerkiraan: TStringField;
    QuViewBiaya: TStringField;
    QuViewBiayaJasaKom: TStringField;
    QuViewBiayaJasaAlat: TStringField;
    QuViewMyID: TBytesField;
    QuViewNamaPerkiraan: TStringField;
    QuViewNamaBiaya: TStringField;
    QuViewBiayaKom: TStringField;
    QuViewBiayaPeralatan: TStringField;
    QuViewBiayaJasaKomputer: TStringField;
    QuViewBiayaJasaPeralatan: TStringField;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBBandedTableView;
    tvMasterKodeBag: TcxGridDBBandedColumn;
    tvMasterNamaBag: TcxGridDBBandedColumn;
    tvMasterBiayaKom: TcxGridDBBandedColumn;
    tvMasterBiayaPeralatan: TcxGridDBBandedColumn;
    tvMasterBiayaJasaKomputer: TcxGridDBBandedColumn;
    tvMasterBiayaJasaPeralatan: TcxGridDBBandedColumn;
    QuViewNamaBiayaJasaKom: TStringField;
    QuViewNamaBiayaJasaAlat: TStringField;
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
  FrBagian: TFrBagian;
  S: array[0..255] of char;
  BM: TBookmark;

implementation
uses myModul,Myprocedure,MyGlobal,FrmMenu, FrmSubBagian ;
{$R *.dfm}

procedure TFrBagian.AmbilData;
begin
   with FrSubBagian do
   begin
      Kodebrd.Text:=QuViewKodeBag.AsString;
      NamaBrd.Text:=QuViewNamaBag.AsString;
      Perkiraan.Text := QuViewPerkiraan.AsString;
      LNamaPerk.Caption := '[ '+QuViewNamaPerkiraan.AsString+' ]';
      BiayaPersediaan.Text := QuViewBiaya.AsString;
      LnamaPersediaan.Caption := '[ '+QuViewNamaBiaya.AsString+' ]';
      BiayaJasaKom.Text := QuViewBiayaJasaKom.AsString;
      lNamaBiayaJasaKom.Caption := '[ '+QuViewNamaBiayaJasaKom.AsString+' ]';
      BiayaJasaAlat.Text := QuViewBiayaJasaAlat.AsString;
      lNamaBiayaJasaAlat.Caption := '[ '+QuViewNamaBiayaJasaAlat.AsString+' ]';
   end;
end;

procedure TFrBagian.SimpanData(Mode:Char);
begin
  With Sp_Merk do
  begin
    BM:=QuView.GetBookmark;
    Prepared;
    Parameters[1].Value := Mode;
    if Mode='D' then
       Parameters[8].Value := QuView.FieldbyName('KodeBag').asstring
    else
    begin
      Parameters[2].Value := FrSubBagian.KodeBrd.Text;
      Parameters[3].Value := FrSubBagian.NamaBrd.Text;
      Parameters[4].Value := FrSubBagian.Perkiraan.Text;
      Parameters[5].Value := FrSubBagian.BiayaPersediaan.Text;
      Parameters[6].Value := FrSubBagian.BiayaJasaKom.Text;
      Parameters[7].Value := FrSubBagian.BiayaJasaAlat.Text;
      Parameters[8].Value := QuView.FieldbyName('KodeBag').asstring;
    end;
    try
      execproc;
      if Mode='I' then
      begin
        QuView.Requery;
        QuView.Locate('kodeBag',FrSubBagian.KodeBrd.Text,[LOP,LOC]);
        LoggingData(IDUser,Mode,'Bagian','','Kode Bag = '+FrSubBagian.KodeBrd.Text+
                    ' , Nama Bag = '+FrSubBagian.NamaBrd.Text);
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
        LoggingData(IDUser,Mode,'Bagian','','Kode Bag = '+FrSubBagian.KodeBrd.Text+
                    ' , Nama Merk = '+FrSubBagian.NamaBrd.Text);
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

procedure TFrBagian.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do
  begin
    DefaultExt := ADefaultExt;
    Filter := AFilter;
    FileName := AFileName;
    if Execute then
       ExportGrid4ToExcel(FileName,cxGrid1,False,True,True);
      AMethod(FileName, true);
  end;
end;


procedure TFrBagian.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
    begin
        Action:=caFree;
    end
    else
        Action:=caNone;
end;

procedure TFrBagian.FormDestroy(Sender: TObject);
begin
  FrBagian:=nil;
end;

procedure TFrBagian.FormShow(Sender: TObject);
begin
 with QuView do
 begin
  close;
  open;
 end;
end;

procedure TFrBagian.ToolButton10Click(Sender: TObject);
begin
 QuView.Requery;
end;

procedure TFrBagian.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrBagian.ExportExcel1Click(Sender: TObject);
begin
  if (IsExcel) then
  begin
    with SaveDialog do
    begin
      DefaultExt := 'xls';
      Filter := 'Microsoft Excel (*.xls)|*.xls';
      FileName := FrBagian.Caption;
      if Execute then
         ExportGrid4ToExcel(FileName,cxGrid1,False,True,True);

      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
      LoggingData(IDUser,'Export to excel',FrBagian.Caption,'','export to excel dengan nama file : '+SaveDialog.FileName);
    end;
      //Save('xls', 'Microsoft Excel (*.xls)|*.xls', FrBagian.Caption, T );
  end else
  begin
      ShowMessage('Anda tidak berhak Mengekspor Excel');
  end;

end;

procedure TFrBagian.AutoFilter1Click(Sender: TObject);
begin
  AutoFilter1.Checked := not AutoFilter1.Checked;
  tvMaster.OptionsCustomize.ColumnFiltering := AutoFilter1.Checked;
end;

procedure TFrBagian.ShowGrid1Click(Sender: TObject);
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

procedure TFrBagian.ShowHeader1Click(Sender: TObject);
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

procedure TFrBagian.Show1Click(Sender: TObject);
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

procedure TFrBagian.ToolButton1Click(Sender: TObject);
begin
  if IsTambah then
  begin
    Application.CreateForm(TFrSubBagian, FrSubBagian);
    FrSubBagian.IsSimpan:=True;
    FrSubBagian.ShowModal;
  end
  else
  begin
      ShowMessage('Anda tidak berhak Menambah Data');
  end;

end;

procedure TFrBagian.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrBagian.ToolButton2Click(Sender: TObject);
begin
  if IsKoreksi then
  begin
    Application.CreateForm(TFrSubBagian, FrSubBagian);
    FrSubBagian.IsSimpan:=false;
    AmbilData;
    FrSubBagian.ShowModal;
    if FrSubBagian.ModalResult=mrOK then
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

procedure TFrBagian.ToolButton3Click(Sender: TObject);
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

procedure TFrBagian.MultiSelect1Click(Sender: TObject);
begin
  MultiSelect1.Checked := not MultiSelect1.Checked;
  tvMaster.OptionsSelection.MultiSelect := MultiSelect1.Checked;
end;

procedure TFrBagian.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

end.
