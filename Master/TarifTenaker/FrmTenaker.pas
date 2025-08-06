unit FrmTenaker;

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

  TFrTenaker = class(TForm)
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
    QuViewKodeTarifTenaker: TStringField;
    QuViewUrut: TIntegerField;
    QuViewNIK: TStringField;
    QuViewTarif: TBCDField;
    QuViewKet: TStringField;
    QuViewNama: TStringField;
    tvMasterKodeTarifTenaker: TcxGridDBBandedColumn;
    tvMasterUrut: TcxGridDBBandedColumn;
    tvMasterNIK: TcxGridDBBandedColumn;
    tvMasterTarif: TcxGridDBBandedColumn;
    tvMasterKet: TcxGridDBBandedColumn;
    tvMasterNama: TcxGridDBBandedColumn;
    ToolButton11: TToolButton;
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
  FrTenaker: TFrTenaker;
  S: array[0..255] of char;
  BM: TBookmark;

implementation
uses myModul,Myprocedure,MyGlobal,FrmMenu, FrmSubTenaker ;
{$R *.dfm}

procedure TFrTenaker.AmbilData;
begin
   with FrSubTenaker do
   begin
      KodeKategori.Text:=QuViewKodeTarifTenaker.AsString;
      LNamaKategori.Caption:='[ '+QuViewKet.AsString+' ]';
      HutPiut.Text := QuViewNIK.AsString;
      LNamaHutPiut.Caption := '[ '+QuViewNama.AsString+' ]';
   end;
end;

procedure TFrTenaker.SimpanData(Mode:Char);
begin
  With Sp_Merk do
  begin
    BM:=QuView.GetBookmark;
    Prepared;
    Parameters[1].Value := Mode;
    if Mode='D' then
    begin
       Parameters[5].Value := QuView.FieldbyName('KodeTarifTenaker').asstring;
       Parameters[6].Value := QuView.FieldbyName('urut').AsInteger;
    end
    else
    begin
      Parameters[2].Value := FrSubTenaker.KodeKategori.Text;
      Parameters[3].Value := mUrut;
      Parameters[4].Value := FrSubTenaker.HutPiut.Text;
      Parameters[5].Value := QuView.FieldbyName('KodeTarifTenaker').asstring;
      Parameters[6].Value := QuView.FieldbyName('urut').AsInteger;
    end;
    try
      execproc;
      if Mode='I' then
      begin
        QuView.Requery;
        QuView.Locate('kodetariftenaker;urut',VarArrayOf([FrSubTenaker.KodeKategori.Text, mUrut]),[LOP,LOC]);
        LoggingData(IDUser,Mode,'Bagian','','Kode Bag = '+FrSubTenaker.KodeKategori.Text);
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
        LoggingData(IDUser,Mode,'Bagian','','Kode Bag = '+FrSubTenaker.KodeKategori.Text);
      end
      Else if Mode='D' then
      begin
        LoggingData(IDUser,Mode,'Bag','','Kode Bag = '+QuViewKodeTarifTenaker.AsString+
                    ' , Nama Bag = '+QuViewNama.AsString);
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

procedure TFrTenaker.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrTenaker.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFrTenaker.FormDestroy(Sender: TObject);
begin
  FrTenaker:=nil;
end;

procedure TFrTenaker.FormShow(Sender: TObject);
begin
 with QuView do
 begin
  close;
  Prepared;
  Parameters[0].Value := mkodeTipe;
  open;
 end;
end;

procedure TFrTenaker.ToolButton10Click(Sender: TObject);
begin
 QuView.Requery;
end;

procedure TFrTenaker.ToolButton9Click(Sender: TObject);
begin
  { if not DataBersyarat('Select kodetariftenaker from DBTenaker where ' +
     'kodetariftenaker=:0',[QuView.FieldbyName('KodeTarifTenaker').asstring],
     Dm.Qucari) then
        MessageDlg('Detail Akun Harus Di Isi !',mtWarning,[mbok],0)
        else}
           Close;
end;

procedure TFrTenaker.ExportExcel1Click(Sender: TObject);
begin
  if (IsExcel) then
  begin
    with SaveDialog do
    begin
      DefaultExt := 'xls';
      Filter := 'Microsoft Excel (*.xls)|*.xls';
      FileName := FrTenaker.Caption;
      if Execute then
         ExportGrid4ToExcel(FileName,cxGrid1,False,True,True);

      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
      LoggingData(IDUser,'Export to excel',FrTenaker.Caption,'','export to excel dengan nama file : '+SaveDialog.FileName);
    end;
  end else
  begin
      ShowMessage('Anda tidak berhak Mengekspor Excel');
  end;

end;

procedure TFrTenaker.AutoFilter1Click(Sender: TObject);
begin
   AutoFilter1.Checked := not AutoFilter1.Checked;
   tvMaster.OptionsCustomize.ColumnFiltering := AutoFilter1.Checked;

end;

procedure TFrTenaker.ShowGrid1Click(Sender: TObject);
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

procedure TFrTenaker.ShowHeader1Click(Sender: TObject);
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

procedure TFrTenaker.Show1Click(Sender: TObject);
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

procedure TFrTenaker.ToolButton1Click(Sender: TObject);
begin
  if IsTambah then
  begin
    Application.CreateForm(TFrSubTenaker, FrSubTenaker);
    FrSubTenaker.IsSimpan:=True;
    FrSubTenaker.KodeKategori.Text := mkodeTipe;
    mValid := True;
    FrSubTenaker.KodeKategoriExit(Self);
    mValid := False;
    FrSubTenaker.ShowModal;
  end
  else
  begin
      ShowMessage('Anda tidak berhak Menambah Data');
  end;

end;

procedure TFrTenaker.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_ESCAPE then
   begin
      //Close;
      if not DataBersyarat('Select kodetariftenaker from DBTenaker where kodetariftenaker=:0',[QuView.FieldbyName('KodeTarifTenaker').asstring],Dm.Qucari) then
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

procedure TFrTenaker.ToolButton2Click(Sender: TObject);
begin
  if IsKoreksi then
  begin
    Application.CreateForm(TFrSubTenaker, FrSubTenaker);
    FrSubTenaker.IsSimpan:=false;
    AmbilData;
    FrSubTenaker.ShowModal;
    if FrSubTenaker.ModalResult=mrOK then
    begin
      With QuView do
      begin
        Locate('KodeTarifTenaker',mPosisi,[LOC, LOP]);
      end;
    end;
    ActiveControl:=cxGrid1;
  end else
  begin
     ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
  end;

end;

procedure TFrTenaker.ToolButton3Click(Sender: TObject);
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

procedure TFrTenaker.MultiSelect1Click(Sender: TObject);
begin
   MultiSelect1.Checked := not MultiSelect1.Checked;
  tvMaster.OptionsSelection.MultiSelect := MultiSelect1.Checked;

end;

procedure TFrTenaker.ppReport1PreviewFormCreate(Sender: TObject);
begin
//  TppReport(Sender).PreviewForm.WindowState:=wsMaximized;
//  TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zs100Percent;

end;

procedure TFrTenaker.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

end.
