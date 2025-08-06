unit FrmDaftarMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  StdCtrls, ExtCtrls, Menus, dxGridMenus, dxDBTLCl, dxGrClms,ShellApi;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrDaftarMenu = class(TForm)
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
    Sp_Gudang: TADOStoredProc;
    QuViewKODEMENU: TStringField;
    QuViewKeterangan: TStringField;
    QuViewACCESS: TIntegerField;
    QuViewOL: TWordField;
    dxDBGrid1KODEMENU: TdxDBGridMaskColumn;
    dxDBGrid1Keterangan: TdxDBGridMaskColumn;
    dxDBGrid1ACCESS: TdxDBGridMaskColumn;
    dxDBGrid1OL: TdxDBGridMaskColumn;
    QuViewL0: TWordField;
    dxDBGrid1L0: TdxDBGridMaskColumn;
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
    procedure dxDBGrid1ColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBGrid1CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
    mPosisi : string;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel : Boolean;

  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrDaftarMenu: TFrDaftarMenu;
  S: array[0..255] of char;
  BM:TBookMark;
implementation
uses myModul,Myprocedure,MyGlobal, FrmSubDaftarMenu;
{$R *.dfm}

procedure TFrDaftarMenu.AmbilData;
begin
   with FrSubDaftarMenu do
   begin
      KodeGdg.Text:=QuViewKODEMENU.AsString;
      NamaGdg.Text:=QuViewKeterangan.AsString;
      OL.Value := QuViewOL.Value;
      ACCESS.Value := QuViewACCESS.Value;
      L0.Value := QuViewL0.Value;
   end;
end;

procedure TFrDaftarMenu.SimpanData(Mode:Char);
begin
  With Sp_Gudang do
  begin
    BM:=QuView.GetBookmark;
    Prepared;
    Parameters[1].Value :=Mode;
    if Mode='D' then Parameters[7].Value := QuView.fieldbyname('kodeMenu').AsString
    else
    begin
      Parameters[2].Value := FrSubDaftarMenu.KodeGdg.Text;
      Parameters[3].Value := FrSubDaftarMenu.NamaGdg.Text;
      Parameters[4].Value := FrSubDaftarMenu.OL.Value;
      Parameters[5].Value := FrSubDaftarMenu.L0.Value;
      Parameters[6].Value := FrSubDaftarMenu.ACCESS.Value;
      Parameters[7].Value := QuView.fieldbyname('kodemenu').AsString;
    end;
    try
      execproc;
      if Mode='I' then
      begin
        QuView.Requery;
        QuView.Locate('kodemenu',FrSubDaftarMenu.KodeGdg.Text,[LOP,LOC]);
        LoggingData(IDUser,Mode,'Menu','','Kode Menu = '+FrSubDaftarMenu.KodeGdg.Text+
                    ' , Nama Menu = '+FrSubDaftarMenu.NamaGdg.Text);
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
        LoggingData(IDUser,Mode,'Menu','','Kode Menu = '+FrSubDaftarMenu.KodeGdg.Text+
                    ' , Nama Menu = '+FrSubDaftarMenu.NamaGdg.Text);
      end
      Else if Mode='D' then
      begin
        LoggingData(IDUser,Mode,'Menu','','Kode Menu = '+FrDaftarMenu.QuViewKODEMENU.Text+
                    ' , Nama Menu = '+FrDaftarMenu.QuViewKeterangan.Text);
        QuView.Requery;
      end;
    except
      If (Mode='I') Or (Mode='U') then
         showmessage('Proses Gagal !, Data Sudah Ada')
      else If (Mode='D') then
         showmessage('Proses Gagal !, Menu berkaitan dengan transaksi lain');
    end;
  end;
end;

procedure TFrDaftarMenu.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrDaftarMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
    begin
      Action:=caFree;
    end
    else
        Action:=caNone;
end;

procedure TFrDaftarMenu.FormDestroy(Sender: TObject);
begin
  FrDaftarMenu:=nil;
end;

procedure TFrDaftarMenu.FormShow(Sender: TObject);
begin

  ToolButton10.Click;
  {if FileExists(currDir+'inifile\'+FrDaftarMenu.Caption+'_'+IDUser+'.ini') then
  begin
        dxDBGrid1.LoadFromIniFile(currDir+'inifile\'+FrDaftarMenu.Caption+'_'+IDUser+'.ini');
  end;}

end;

procedure TFrDaftarMenu.ToolButton10Click(Sender: TObject);
begin
  QuView.Close;
  QuView.Open;
end;

procedure TFrDaftarMenu.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrDaftarMenu.ExportExcel1Click(Sender: TObject);
begin
  if (IsExcel) then
  begin
      Save('xls', 'Microsoft Excel (*.xls)|*.xls', FrDaftarMenu.Caption, dxDBGrid1.SaveToXLS);
      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);

  end else
  begin
      ShowMessage('Anda tidak berhak Mengeksport Excel');
  end;

end;

procedure TFrDaftarMenu.AutoFilter1Click(Sender: TObject);
begin
    if dxDBGrid1.Filter.Active=false then
    dxDBGrid1.Filter.Active:=true
    else
    dxDBGrid1.Filter.Active:=false;

end;

procedure TFrDaftarMenu.ShowGrid1Click(Sender: TObject);
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

procedure TFrDaftarMenu.ShowHeader1Click(Sender: TObject);
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

procedure TFrDaftarMenu.Show1Click(Sender: TObject);
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

procedure TFrDaftarMenu.ToolButton1Click(Sender: TObject);
begin
  if IsTambah then
  begin
    Application.CreateForm(TFrSubDaftarMenu, FrSubDaftarMenu);
    FrSubDaftarMenu.IsSimpan:=True;
    FrSubDaftarMenu.ShowModal;
  end  
  else
  begin
      ShowMessage('Anda tidak berhak Menambah Data');
  end;
end;

procedure TFrDaftarMenu.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrDaftarMenu.ToolButton2Click(Sender: TObject);
begin
  if IsKoreksi then
  begin
    Application.CreateForm(TFrSubDaftarMenu, FrSubDaftarMenu);
    FrSubDaftarMenu.IsSimpan:=false;
    AmbilData;
    FrSubDaftarMenu.ShowModal;
    ActiveControl:=dxDBGrid1;
  end
  else
  begin
     ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
  end;

end;

procedure TFrDaftarMenu.ToolButton3Click(Sender: TObject);
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
        ToolButton10Click(self);
      end;
   end;
  end else
  begin
     ShowMessage('Anda Tidak Berhak Menghapus Data');
  end;

end;

procedure TFrDaftarMenu.MultiSelect1Click(Sender: TObject);
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

procedure TFrDaftarMenu.dxDBGrid1ColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
  SaveToIniFiles(IDUser,FrDaftarMenu,dxDBGrid1);
end;

procedure TFrDaftarMenu.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

procedure TFrDaftarMenu.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrDaftarMenu.dxDBGrid1CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
  if AColumn = dxDBGrid1.Columns[0] then
  begin
    AColor := $00ffefe1;
    AFont.Color:=clblack;
    AFont.Style := AFont.Style + [fsBold];
  end;
end;

end.
