unit FrmPemakai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  ImgList, StdCtrls, ExtCtrls, Menus, dxGridMenus,ShellApi;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrPemakai = class(TForm)
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
    dxDBGrid1: TdxDBGrid;
    MultiSelect1: TMenuItem;
    Sp_Pemakai: TADOStoredProc;
    ToolButton8: TToolButton;
    ToolButton11: TToolButton;
    Sp_Update: TADOStoredProc;
    ToolButton12: TToolButton;
    sp_updateMenuReport: TADOStoredProc;
    dxDBGrid1UserID: TdxDBGridMaskColumn;
    dxDBGrid1FullName: TdxDBGridMaskColumn;
    dxDBGrid1LevelUSER: TdxDBGridMaskColumn;
    dxDBGrid1StatusUSER: TdxDBGridMaskColumn;
    dxDBGrid1HostID: TdxDBGridMaskColumn;
    dxDBGrid1Namabag: TdxDBGridMaskColumn;
    dxDBGrid1Namajab: TdxDBGridColumn;
    QuViewUserID: TStringField;
    QuViewFullName: TStringField;
    QuViewLevelUSER: TStringField;
    QuViewStatusUSER: TStringField;
    QuViewHostID: TStringField;
    QuViewkodebag: TStringField;
    QuViewNamabag: TStringField;
    QuViewkodejab: TStringField;
    QuViewnamajab: TStringField;
    QuViewUID: TStringField;
    QuViewTINGKAT: TWordField;
    QuViewSTATUS: TWordField;
    QuViewHOSTID_1: TStringField;
    QuViewIPAddres: TStringField;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    QuViewKodeKasir: TStringField;
    dxDBGrid1KodeKasir: TdxDBGridMaskColumn;
    QuViewKodegdg: TStringField;
    dxDBGrid1Column9: TdxDBGridColumn;
    QuViewNamaGdg: TStringField;
    QuViewKeynik: TIntegerField;
    QuViewNamaKaryawan: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
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
    procedure ToolButton11Click(Sender: TObject);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxDBGrid1CustomDrawFooterNode(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; AFooterIndex: Integer; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure ToolButton12Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    mPosisi : string;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel : Boolean;
    Procedure Tampildata;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrPemakai: TFrPemakai;
  S: array[0..255] of char;
  tampil,tambah,koreksi,hapus,cetak,excel : Boolean;
  nama : string;
  BM : TBookMark;
implementation
uses myModul,Myprocedure,MyGlobal, FrmSubPemakai,FrmMenu, FrmMenuReport,
  FrmSetPemakaiGdg, FrmSetAkesPerkiraan, FrmSetAkesGudang ;
{$R *.dfm}

Procedure TFrPemakai.Tampildata;
begin
  with QuView do
  begin
    close;
    Open;
  end;
end;

procedure TFrPemakai.AmbilData;
begin
   with FrSubPemakai do
   begin
      Userid.Text:=QuView.fieldbyname('Userid').AsString;
      Fullname.Text:=QuView.fieldbyname('Fullname').AsString;
      kodebag.Text:=QuView.fieldbyname('kodebag').AsString;
      kodejab.Text:=QuView.fieldbyname('kodejab').AsString;
      LNamaBag.Caption:='[ '+QuView.fieldbyname('namabag').AsString+' ]';
      lnamaJab.Caption:='[ '+QuView.fieldbyname('namajab').AsString+' ]';
      Password1.Text:=decrypt(QuView.fieldbyname('Uid').AsString, StartKey, Multkey, addkey);
      Password2.Text:=decrypt(QuView.fieldbyname('Uid').AsString, StartKey, Multkey, addkey);
      Level.ItemIndex:=QuView.fieldbyname('tingkat').AsInteger;
      Status.ItemIndex:=QuView.fieldbyname('status').AsInteger;
      KodeKasir.Text:=QuViewKodeKasir.AsString;
      Kodegdg.Text:=QuViewKodegdg.AsString;
      LNamaCounter.Caption:='[ '+QuViewNamaGdg.AsString+' ]';
      Nik.Text:=QuViewKeynik.AsString;
      LblNIk.Caption:=QuViewNamaKaryawan.AsString;
   end;
end;

procedure TFrPemakai.SimpanData(Mode:Char);
begin
  BM:=QuView.GetBookmark;
  With Sp_Pemakai do
  begin
    Prepared;
    Parameters[1].Value := Mode;
    if Mode='D' then
       Parameters[2].Value := QuView.FieldbyName('userid').asstring
    else
    begin
      Parameters[2].Value := FrSubPemakai.Userid.Text;
      Parameters[3].Value := Encrypt(FrSubPemakai.Password1.Text,Startkey, Multkey, addkey);
      Parameters[4].Value := FrSubPemakai.Level.ItemIndex;
      Parameters[5].Value := FrSubPemakai.Status.ItemIndex;
      Parameters[6].Value := FrSubPemakai.Fullname.Text;
      Parameters[7].Value := FrSubPemakai.KodeBag.Text;
      Parameters[8].Value := FrSubPemakai.kodejab.Text;
      Parameters[9].Value := FrSubPemakai.KodeKasir.Text;
      Parameters[10].Value := FrSubPemakai.Kodegdg.Text;
      Parameters[11].Value := FrSubPemakai.Keynik;
    end;
    try
      execproc;
      if Mode='I' then
      begin
        QuView.Requery;
        LoggingData(IDUser,Mode,'User','',
                    ' User = '+QuotedStr(FrSubPemakai.Userid.Text)+
                    ' Bagian = '+QuotedStr(FrSubPemakai.Status.Items.Strings[FrSubPemakai.Status.ItemIndex])+
                    ' Level = '+QuotedStr(FrSubPemakai.Level.Items.Strings[FrSubPemakai.Level.ItemIndex]));
        QuView.Last;
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
        LoggingData(IDUser,Mode,'User','',
                    ' User = '+QuotedStr(FrSubPemakai.Userid.Text)+
                    ' Bagian = '+FrSubPemakai.KodeBag.Text+
                    ' Level = '+QuotedStr(FrSubPemakai.Level.Items.Strings[FrSubPemakai.Level.ItemIndex]));
      end
      else if Mode='D' then
      begin
        LoggingData(IDUser,Mode,'User','',
                    ' User = '+QuotedStr(QuView.FieldbyName('userid').asstring)+
                    ' Bagian = '+QuotedStr(QuView.FieldbyName('KodeBag').asstring)+
                    ' Level = '+QuotedStr(QuView.FieldbyName('LevelUSER').asstring));
        QuView.Requery;
      end;
    except
      on E: Exception do
           begin
               Application.MessageBox(StrPCopy(S,E.Message),'Peringatan',MB_OK or MB_ICONSTOP);
           end;
    end;

  end;

end;

procedure TFrPemakai.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrPemakai.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
    begin
      Action:=caFree;
    end
    else
      Action:=caNone;
end;

procedure TFrPemakai.FormDestroy(Sender: TObject);
begin
FrPemakai:=nil;
end;

procedure TFrPemakai.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrPemakai.ExportExcel1Click(Sender: TObject);
begin
  if (IsExcel) then
  begin
      Save('xls', 'Microsoft Excel (*.xls)|*.xls', FrPemakai.Caption, dxDBGrid1.SaveToXLS);
      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
      //LoggingData(Caption,'User '+IdUser+' Export Data '+ SaveDialog.FileName,dm.qucari);
  end else
  begin
      ShowMessage('Anda tidak berhak Mengeksport Excel');
  end;

end;

procedure TFrPemakai.AutoFilter1Click(Sender: TObject);
begin
    if dxDBGrid1.Filter.Active=false then
    dxDBGrid1.Filter.Active:=true
    else
    dxDBGrid1.Filter.Active:=false;

end;

procedure TFrPemakai.ShowGrid1Click(Sender: TObject);
begin
   if ShowGrid1.Checked then
   begin
      dxDBGrid1.ShowGrid:=false;
      ShowGrid1.Checked:=false;
   end else
   begin
      dxDBGrid1.ShowGrid:=true;
      ShowGrid1.Checked:=true;
   end;
end;

procedure TFrPemakai.ShowHeader1Click(Sender: TObject);
begin
   if ShowHeader1.Checked then
   begin
      dxDBGrid1.ShowHeader:=false;
      ShowHeader1.Checked:=false;
   end else
   begin
      dxDBGrid1.ShowHeader:=true;
      ShowHeader1.Checked:=true;
   end;

end;

procedure TFrPemakai.Show1Click(Sender: TObject);
begin
   if Show1.Checked then
   begin
      dxDBGrid1.ShowSummaryFooter := false;
      Show1.Checked:=false;
   end else
   begin
      dxDBGrid1.ShowSummaryFooter := true;
      Show1.Checked:=true;
   end;

end;

procedure TFrPemakai.ToolButton1Click(Sender: TObject);
begin
  if IsTambah then
  begin
    Application.CreateForm(TFrSubPemakai, FrSubPemakai);
    FrSubPemakai.IsSimpan:=True;
    FrSubPemakai.ShowModal;
  end
  else
  begin
      ShowMessage('Anda tidak berhak Menambah Data');
  end;
end;

procedure TFrPemakai.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrPemakai.ToolButton2Click(Sender: TObject);
begin
  if IsKoreksi then
  begin
     Application.CreateForm(TFrSubPemakai, FrSubPemakai);
     FrSubPemakai.IsSimpan:=false;
     AmbilData;
     FrSubPemakai.ShowModal;
     if FrSubPemakai.ModalResult=mrOK then
     begin
       With QuView do
       begin
        Locate('Userid',mPosisi,[LOC, LOP]);
       end;
     end;
     ActiveControl:=dxDBGrid1;
  end else
  begin
     ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
  end;
end;

procedure TFrPemakai.ToolButton3Click(Sender: TObject);
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
           If QuView.FieldbyName('userid').asstring='SA' then
              MessageDlg('User SA tidak dapat dihapus',mtWarning,[Mbok],0)
           else
              SimpanData('D');
        end;
     end;
  end else
  begin
     ShowMessage('Anda Tidak Berhak Menghapus Data');
  end;
end;

procedure TFrPemakai.MultiSelect1Click(Sender: TObject);
begin
   if MultiSelect1.Checked then
   begin
      dxDBGrid1.OptionsBehavior:=[edgoAutoSearch,edgoAutoSort,edgoDragScroll,edgoEnterShowEditor,edgoTabThrough,edgoVertThrough];
      MultiSelect1.Checked:=false;
   end else
   begin
      dxDBGrid1.OptionsBehavior:=[edgoAutoSearch,edgoAutoSort,edgoDragScroll,edgoEnterShowEditor,edgoMultiSelect,edgoTabThrough,edgoVertThrough];
      MultiSelect1.Checked:=true;
   end;

end;

procedure TFrPemakai.ToolButton11Click(Sender: TObject);
begin
   with Sp_Update do
   begin
     Close;
     Parameters[1].Value:=QuView.fieldbyname('userid').AsString;
     ExecProc;
   end;
   Application.CreateForm(TFrMenu, FrMenu);
   FrMenu.Showmodal;

end;

procedure TFrPemakai.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

procedure TFrPemakai.dxDBGrid1CustomDrawFooterNode(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; AFooterIndex: Integer; var AText: String;
  var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
  var ADone: Boolean);
begin
    if AColumn = dxDBGrid1.Columns[0] then
  begin
    AColor := $00ffefe1;
    AFont.Color:=clblack;
    AFont.Style := AFont.Style + [fsBold];
  end;
end;

procedure TFrPemakai.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
   if ANode.HasChildren then
    Exit;

    if not AFocused then
    begin
      if ANode.Index mod 2 =0 then
         AColor:=$00ffefe1
      else
         AColor:=$00efd7c9;
    end;

end;

procedure TFrPemakai.ToolButton12Click(Sender: TObject);
begin
  if QuView.IsEmpty=true then
  begin
    Application.MessageBox('Tidak ada data.','Information' ,MB_OK Or MB_ICONWARNING);
  end else
  begin
    with sp_updateMenuReport do
    begin
       Close;
       Parameters[1].Value:=QuView.fieldbyname('userid').AsString;
       ExecProc;
    end;
    Application.CreateForm(TFrMenuReport, FrMenuReport);
    FrMenuReport.Showmodal;
  end;
end;

procedure TFrPemakai.FormShow(Sender: TObject);
begin
  Tampildata;
end;

procedure TFrPemakai.ToolButton10Click(Sender: TObject);
begin
  Tampildata;
end;

procedure TFrPemakai.ToolButton13Click(Sender: TObject);
begin
  if QuView.IsEmpty=true then
  begin
    Application.MessageBox('Tidak ada data.','Information' ,MB_OK Or MB_ICONWARNING);
  end else
  begin
    Application.CreateForm(TFrSetAksesPerkiraan, FrSetAksesPerkiraan);
    FrSetAksesPerkiraan.MyUser:=QuViewUserID.AsString;
    FrSetAksesPerkiraan.Label1.Caption:='Setting akses Perkiraan untuk Pemakai : '+QuViewFullName.AsString+' ('+QuViewUserID.AsString+')';
    FrSetAksesPerkiraan.Showmodal;
  end;
end;

procedure TFrPemakai.ToolButton14Click(Sender: TObject);
begin
  if QuView.IsEmpty=true then
  begin
    Application.MessageBox('Tidak ada data.','Information' ,MB_OK Or MB_ICONWARNING);
  end else
  begin
    Application.CreateForm(TFrSetAksesGudang, FrSetAksesGudang);
    FrSetAksesGudang.MyUser:=QuViewUserID.AsString;
    FrSetAksesGudang.Label1.Caption:='Setting akses Gudang untuk Pemakai : '+QuViewFullName.AsString+' ('+QuViewUserID.AsString+')';
    FrSetAksesGudang.Showmodal;
  end;
end;

end.
