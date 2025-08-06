unit FrmBahan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  StdCtrls, ExtCtrls, Menus, dxGridMenus,ShellApi;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrBahan = class(TForm)
    QuView: TADOQuery;
    DsView: TDataSource;
    PopupMenu1: TPopupMenu;
    ExportExcel1: TMenuItem;
    N1: TMenuItem;
    ShowGrid1: TMenuItem;
    ShowHeader1: TMenuItem;
    Show1: TMenuItem;
    N2: TMenuItem;
    AutoFilter1: TMenuItem;
    SaveDialog: TSaveDialog;
    dxDBGrid1: TdxDBGrid;
    MultiSelect1: TMenuItem;
    Sp_JBAHAN: TADOStoredProc;
    PopupMenu2: TPopupMenu;
    ViewSubGroup1: TMenuItem;
    dxDBGrid1KODEGRP: TdxDBGridMaskColumn;
    dxDBGrid1NAMAGRP: TdxDBGridMaskColumn;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton4: TToolButton;
    ToolButton10: TToolButton;
    ToolButton7: TToolButton;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton11: TToolButton;
    QuViewKDBHN: TStringField;
    QuViewNAMABHN: TStringField;
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
  FrBahan: TFrBahan;
  S: array[0..255] of char;
  BM: TBookmark;
  
implementation
uses myModul,Myprocedure,MyGlobal, FrmSubBahan;
{$R *.dfm}

procedure TFrBahan.AmbilData;
begin
  with FrSubBahan do
  begin
    KodeGrp.Text:=QuViewKDBHN.AsString;
    NamaGrp.Text:=QuViewNAMABHN.AsString;
  end;
end;

procedure TFrBahan.SimpanData(Mode:Char);
begin
  With Sp_JBahan do
  begin
    BM:=QuView.GetBookmark;
    Prepared;
    Parameters[1].Value := Mode;
    if Mode<>'I' then
    begin
       Parameters[2].Value := QuViewKDBHN.asstring;
       Parameters[3].Value := FrSubBahan.NamaGrp.Text;
    end
    else
    begin
      Parameters[2].Value := FrSubBahan.KodeGrp.Text;
      Parameters[3].Value := FrSubBahan.NamaGrp.Text;
    end;
       try
      execproc;
      if Mode='I' then
      begin
        QuView.Requery;
        QuView.Locate('kodeGrp',FrSubBahan.KodeGrp.Text,[LOP,LOC]);
        LoggingData(IDUser,Mode,'GRP','','Kode Grp = '+FrSubBahan.KodeGrp.Text+
                    ' , Nama Grp = '+FrSubBahan.NamaGrp.Text);
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
        LoggingData(IDUser,Mode,'BHN','','Kode BHN = '+FrSubBahan.KodeGrp.Text+
                    ' , Nama BHN = '+FrSubBahan.NamaGrp.Text);
      end
      Else if Mode='D' then
      begin
        LoggingData(IDUser,Mode,'BHN','','Kode BHN = '+QuViewKDBHN.AsString+
                    ' , Nama Grp = '+QuViewNAMABHN.AsString);
        QuView.Requery;
      end;
    except
      If (Mode='I') Or (Mode='U') then
         showmessage('Proses Gagal !, Data Sudah Ada')
      else If (Mode='D') then
         showmessage('Proses Gagal !, Gudang berkaitan dengan transaksi');
    end;
  end;
end;

procedure TFrBahan.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrBahan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
       MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
  begin
    Action:=caFree;
  end
  else
    Action:=caNone;
end;

procedure TFrBahan.FormDestroy(Sender: TObject);
begin
  FrBahan:=nil;
end;

procedure TFrBahan.FormShow(Sender: TObject);
begin
   with QuView do
   begin
      close;
       Open;
   end;

end;

procedure TFrBahan.ToolButton10Click(Sender: TObject);
begin
   with QuView do
   begin
      close;
       Open;
   end;
end;

procedure TFrBahan.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrBahan.ExportExcel1Click(Sender: TObject);
begin
  if (IsExcel) then
  begin
      Save('xls', 'Microsoft Excel (*.xls)|*.xls', FrBahan.Caption, dxDBGrid1.SaveToXLS);
      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
  end else
  begin
      MsgTidakBerhakExportData;
     ActiveControl:=dxDBGrid1;
  end;
end;

procedure TFrBahan.AutoFilter1Click(Sender: TObject);
begin
  if AutoFilter1.Checked then
  begin
    dxDBGrid1.Filter.Active:=False;
    AutoFilter1.Checked:=False;
  end
  else
  begin
    dxDBGrid1.Filter.Active:=True;
    AutoFilter1.Checked:=True;
  end;
end;

procedure TFrBahan.ShowGrid1Click(Sender: TObject);
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

procedure TFrBahan.ShowHeader1Click(Sender: TObject);
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

procedure TFrBahan.Show1Click(Sender: TObject);
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

procedure TFrBahan.ToolButton1Click(Sender: TObject);
begin
  if IsTambah then
  begin
    Application.CreateForm(TFrSubBahan, FrSubBahan);
    FrSubBahan.IsSimpan:=True;
    FrSubBahan.ShowModal;
  end else
  begin
      MsgTidakBerhakTambahData;
     ActiveControl:=dxDBGrid1;
  end;
end;

procedure TFrBahan.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrBahan.ToolButton2Click(Sender: TObject);
begin
  if IsKoreksi then
  begin
    if not QuView.IsEmpty then
    begin
      Application.CreateForm(TFrSubBahan, FrSubBahan);
      FrSubBahan.IsSimpan:=false;
      AmbilData;
      FrSubBahan.ShowModal;
      if FrSubBahan.ModalResult=mrOK then
      begin
      end;
      ActiveControl:=dxDBGrid1;
    end;
  end else
  begin
     MsgTidakBerhakKoreksiData;
     ActiveControl:=dxDBGrid1;
  end;
  
end;

procedure TFrBahan.ToolButton3Click(Sender: TObject);
begin
  if IsHapus then
  begin
   if Quview.IsEmpty=true then
   begin
     MsgHapusDataKosong;
     ActiveControl:=dxDBGrid1;
   end
   else
   begin
      StrPCopy(S,Format('Anda yakin Kode %s dan Nama %s dihapus ?',
           [QuViewKODEGRP.AsString, QuViewNAMAGRP.AsString]));
      if (Application.MessageBox(S,'Peringatan',
          MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
      begin
        SimpanData('D');
      end;
   end;
  end else
  begin
    MsgTidakBerhakHapusData;
    ActiveControl:=dxDBGrid1;
  end;
end;

procedure TFrBahan.MultiSelect1Click(Sender: TObject);
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

procedure TFrBahan.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

procedure TFrBahan.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrBahan.dxDBGrid1CustomDrawFooter(Sender: TObject;
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
