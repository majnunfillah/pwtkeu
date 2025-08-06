unit FrmPerkCustSupp;

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

  TFrPerkCustSupp = class(TForm)
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
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    QuViewKodeCustSupp: TStringField;
    QuViewUrut: TIntegerField;
    QuViewPerkiraan: TStringField;
    QuViewNamaPerkiraan: TStringField;
    QuViewPerk_Perkiraan: TStringField;
    tvMasterKodeCustSupp: TcxGridDBBandedColumn;
    tvMasterUrut: TcxGridDBBandedColumn;
    tvMasterPerkiraan: TcxGridDBBandedColumn;
    tvMasterNamaPerkiraan: TcxGridDBBandedColumn;
    tvMasterPerk_Perkiraan: TcxGridDBBandedColumn;
    QuViewNamaCustSupp: TStringField;
    tvMasterNamaCustSupp: TcxGridDBBandedColumn;
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
    mPosisi,mkodeTipe : string;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel,mvalid : boolean;
    mUrut : Integer;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrPerkCustSupp: TFrPerkCustSupp;
  S: array[0..255] of char;
  BM: TBookmark;

implementation
uses myModul,Myprocedure,MyGlobal,FrmMenu, FrmSubPerkCustSupp ;
{$R *.dfm}

procedure TFrPerkCustSupp.AmbilData;
begin
   with FrSubPerkCustSupp do
   begin
      KodeKategori.Text:=QuViewKodeCustSupp.AsString;
      LNamaKategori.Caption:='[ '+QuViewNamaCustSupp.AsString+' ]';
      HutPiut.Text := QuViewPerkiraan.AsString;
      LNamaHutPiut.Caption := '[ '+QuViewNamaPerkiraan.AsString+' ]';
   end;
end;

procedure TFrPerkCustSupp.SimpanData(Mode:Char);
begin
  With Sp_Merk do
  begin
    BM:=QuView.GetBookmark;
    Prepared;
    Parameters[1].Value := Mode;
    if Mode='D' then
    begin
       Parameters[5].Value := QuView.FieldbyName('KodeCustSupp').asstring;
       Parameters[6].Value := QuView.FieldbyName('urut').AsInteger;
    end
    else
    begin
      Parameters[2].Value := FrSubPerkCustSupp.KodeKategori.Text;
      Parameters[3].Value := mUrut;
      Parameters[4].Value := FrSubPerkCustSupp.HutPiut.Text;
      Parameters[5].Value := QuView.FieldbyName('Kodecustsupp').asstring;
      Parameters[6].Value := QuView.FieldbyName('urut').AsInteger;
    end;
    try
      execproc;
      if Mode='I' then
      begin
        QuView.Requery;
        QuView.Locate('kodecustsupp;urut',VarArrayOf([FrSubPerkCustSupp.KodeKategori.Text, mUrut]),[LOP,LOC]);
        LoggingData(IDUser,Mode,'Bagian','','Kode Bag = '+FrSubPerkCustSupp.KodeKategori.Text);
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
        LoggingData(IDUser,Mode,'Bagian','','Kode Bag = '+FrSubPerkCustSupp.KodeKategori.Text);
      end
      Else if Mode='D' then
      begin
        LoggingData(IDUser,Mode,'Bag','','Kode Bag = '+QuViewKodeCustSupp.AsString+
                    ' , Nama Bag = '+QuViewNamaCustSupp.AsString);
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

procedure TFrPerkCustSupp.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrPerkCustSupp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{if not DataBersyarat('Select kodecustSupp from DBPERKCUSTSUPP where kodecustSupp=:0',[QuView.FieldbyName('KodeCustSupp').asstring],Dm.Qucari) then
   begin
   MessageDlg('Detail Akun Harus Di Isi !',mtWarning,[mbok],0);
   ActiveControl:=cxGrid1;
   //exit;
   end
else }
{if mvalid then
begin}
  begin
   if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
        Action:=caFree
    else
        Action:=caNone;
  end;
//end;
end;

procedure TFrPerkCustSupp.FormDestroy(Sender: TObject);
begin
  FrPerkCustSupp:=nil;
end;

procedure TFrPerkCustSupp.FormShow(Sender: TObject);
begin
 with QuView do
 begin
  close;
  Prepared;
  Parameters[0].Value := mkodeTipe;
  open;
 end;
end;

procedure TFrPerkCustSupp.ToolButton10Click(Sender: TObject);
begin
 QuView.Requery;
end;

procedure TFrPerkCustSupp.ToolButton9Click(Sender: TObject);
begin
   if not DataBersyarat('Select kodecustSupp from DBPERKCUSTSUPP where kodecustSupp=:0',[QuView.FieldbyName('KodeCustSupp').asstring],Dm.Qucari) then
        MessageDlg('Detail Akun Harus Di Isi !',mtWarning,[mbok],0)
        else
           Close;
end;

procedure TFrPerkCustSupp.ExportExcel1Click(Sender: TObject);
begin
  if (IsExcel) then
  begin
    with SaveDialog do
    begin
      DefaultExt := 'xls';
      Filter := 'Microsoft Excel (*.xls)|*.xls';
      FileName := FrPerkCustSupp.Caption;
      if Execute then
         ExportGrid4ToExcel(FileName,cxGrid1,False,True,True);

      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
      LoggingData(IDUser,'Export to excel',FrPerkCustSupp.Caption,'','export to excel dengan nama file : '+SaveDialog.FileName);
    end;
  end else
  begin
      ShowMessage('Anda tidak berhak Mengekspor Excel');
  end;

end;

procedure TFrPerkCustSupp.AutoFilter1Click(Sender: TObject);
begin
   AutoFilter1.Checked := not AutoFilter1.Checked;
   tvMaster.OptionsCustomize.ColumnFiltering := AutoFilter1.Checked;

end;

procedure TFrPerkCustSupp.ShowGrid1Click(Sender: TObject);
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

procedure TFrPerkCustSupp.ShowHeader1Click(Sender: TObject);
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

procedure TFrPerkCustSupp.Show1Click(Sender: TObject);
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

procedure TFrPerkCustSupp.ToolButton1Click(Sender: TObject);
begin
  if IsTambah then
  begin
    Application.CreateForm(TFrSubPerkCustSupp, FrSubPerkCustSupp);
    FrSubPerkCustSupp.IsSimpan:=True;
    FrSubPerkCustSupp.KodeKategori.Text := mkodeTipe;
    mValid := True;
    FrSubPerkCustSupp.KodeKategoriExit(Self);
    mValid := False;
    FrSubPerkCustSupp.ShowModal;
  end
  else
  begin
      ShowMessage('Anda tidak berhak Menambah Data');
  end;

end;

procedure TFrPerkCustSupp.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_ESCAPE then
   begin
      //Close;
      if not DataBersyarat('Select kodecustSupp from DBPERKCUSTSUPP where kodecustSupp=:0',[QuView.FieldbyName('KodeCustSupp').asstring],Dm.Qucari) then
           begin
           MessageDlg('Detail Akun Harus Di Isi !',mtWarning,[mbok],0);
           mvalid:=False
           end
      else Close;
   end
    else
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

procedure TFrPerkCustSupp.ToolButton2Click(Sender: TObject);
begin
  if IsKoreksi then
  begin
    Application.CreateForm(TFrSubPerkCustSupp, FrSubPerkCustSupp);
    FrSubPerkCustSupp.IsSimpan:=false;
    AmbilData;
    FrSubPerkCustSupp.ShowModal;
    if FrSubPerkCustSupp.ModalResult=mrOK then
    begin
      With QuView do
      begin
        Locate('KodecustSupp',mPosisi,[LOC, LOP]);
      end;
    end;
    ActiveControl:=cxGrid1;
  end else
  begin
     ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
  end;

end;

procedure TFrPerkCustSupp.ToolButton3Click(Sender: TObject);
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

procedure TFrPerkCustSupp.MultiSelect1Click(Sender: TObject);
begin
   MultiSelect1.Checked := not MultiSelect1.Checked;
  tvMaster.OptionsSelection.MultiSelect := MultiSelect1.Checked;

end;

procedure TFrPerkCustSupp.ppReport1PreviewFormCreate(Sender: TObject);
begin
//  TppReport(Sender).PreviewForm.WindowState:=wsMaximized;
//  TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zs100Percent;

end;

procedure TFrPerkCustSupp.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

end.
