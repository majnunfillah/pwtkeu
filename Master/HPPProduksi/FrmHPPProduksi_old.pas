unit FrmHPPProduksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  ImgList, StdCtrls, ExtCtrls, Menus,
  dxGridMenus, dxDBTLCl, dxGrClms,ShellApi, dxPageControl;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrHPPProduksi = class(TForm)
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
    ImageList2: TImageList;
    ToolButton10: TToolButton;
    SaveDialog: TSaveDialog;
    MultiSelect1: TMenuItem;
    Sp_Gudang: TADOStoredProc;
    QuViewTahun: TIntegerField;
    QuViewBulan: TIntegerField;
    QuViewNamaBrg: TStringField;
    QuViewHPPBrg: TBCDField;
    QuViewKodeBrg: TStringField;
    dxPageControl1: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    dxDBGrid2: TdxDBGrid;
    dxDBGridMaskColumn1: TdxDBGridMaskColumn;
    dxDBGridMaskColumn2: TdxDBGridMaskColumn;
    dxDBGridMaskColumn3: TdxDBGridMaskColumn;
    dxDBGridMaskColumn4: TdxDBGridMaskColumn;
    dxDBGridMaskColumn5: TdxDBGridMaskColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ExportExcel1Click(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure ToolButton1Click(Sender: TObject);
    procedure SimpanData(Mode:Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton2Click(Sender: TObject);
    procedure AmbilData;
    procedure ToolButton3Click(Sender: TObject);
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
  FrHPPProduksi: TFrHPPProduksi;
  S: array[0..255] of char;
  BM:TBookMark;
implementation
uses myModul,Myprocedure,MyGlobal, FrmSubHPPProduksi, PBNumEdit;
{$R *.dfm}

procedure TFrHPPProduksi.AmbilData;
begin
   with FrSubHPPProduksi do
   begin
       KodeBrg.Text:=QuViewKodeBrg.AsString;
       LNamaBrg.Caption:='[ '+QuViewNamaBrg.AsString+' ]';
       HPPBrg.Value:=QuViewHPPBrg.AsFloat;
   end;
end;

procedure TFrHPPProduksi.SimpanData(Mode:Char);
begin
  With Sp_Gudang do
  begin
    BM:=QuView.GetBookmark;
    Prepared;
    Parameters[1].Value :=Mode;
    if Mode='D' then
    begin
      Parameters[2].Value := QuViewTahun.AsInteger;
      Parameters[3].Value := QuViewBulan.AsInteger;
      Parameters[4].Value := QuViewKodeBrg.AsString;
      Parameters[5].Value := QuViewHPPBrg.AsFloat;
    end
    else
    begin
      Parameters[2].Value := StrToInt(PeriodThn);
      Parameters[3].Value := StrToInt(PeriodBln);
      Parameters[4].Value := FrSubHPPProduksi.KodeBrg.Text;
      Parameters[5].Value := FrSubHPPProduksi.HPPBrg.AsFloat;
    end;
    try
      ExecProc;
      if Mode='I' then
      begin
        QuView.Requery;
        ToolButton10.Click;
        QuView.Locate('KodeBrg',FrSubHPPProduksi.KodeBrg.Text,[LOP,LOC]);
      end else if Mode='U' then
      begin
        QuView.Requery;
        ToolButton10.Click;
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
      end
      Else if Mode='D' then
      begin
        QuView.Requery;
        ToolButton10.Click;
      end;
    except
      showmessage('Proses Gagal !');
    end;
  end;
end;

procedure TFrHPPProduksi.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrHPPProduksi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
    begin
      Action:=caFree;
    end
    else
        Action:=caNone;
end;

procedure TFrHPPProduksi.FormDestroy(Sender: TObject);
begin
  FrHPPProduksi:=nil;
end;

procedure TFrHPPProduksi.FormShow(Sender: TObject);
begin
  with DM.QuCari do
  begin
    close;
    SQL.Clear;
    sql.Add('Declare @Bulan int, @Tahun int,');
    sql.Add('        @xBulan int, @xTahun int');
    sql.Add('Select @Bulan=:0,@tahun=:1     ');
    sql.Add('Select @xBulan=Case when @bulan=1 then 12 Else @bulan-1 end,');
    sql.Add('       @xTahun=Case when @bulan=1 then @Tahun-1 Else @Tahun end');
    sql.Add('Insert into dbHppProduksi(kodebrg,Bulan,Tahun,HppBrg)');
    sql.Add('Select Kodebrg,Bulan,Tahun, Max(HPPBrg) HPPBrg');
    sql.Add('from(                                            ');
    sql.Add('Select Kodebrg,@Bulan Bulan,@Tahun Tahun, HPPBrg ');
    sql.Add('From dbHppProduksi                               ');
    sql.Add('where Bulan=@xBulan and Tahun=@xTahun and        ');
    sql.Add('      kodebrg not in (Select Kodebrg from dbhppproduksi where Bulan=@Bulan and Tahun=@Tahun)');
    sql.Add('Union                                                                                       ');
    sql.Add('Select Kodebrg,@Bulan Bulan,@Tahun Tahun, 0.00 HPPBrg                                       ');
    sql.Add('from dbbarang                                                                               ');
    sql.Add('where kodebrg not in (Select Kodebrg from dbhppproduksi where Bulan=@Bulan and Tahun=@Tahun)');
    sql.Add('      and Kodegrp in (''BJ''))X                                                     ');
    sql.Add('Group by Kodebrg,Bulan,Tahun                                                                ');
    sql.Add('Order by kodebrg                                                                            ');
    Prepared;
    Parameters[0].Value:=StrToInt(PeriodBln);
    Parameters[1].Value:=StrToInt(PeriodThn);
    ExecSQL;
  end;
  QuView.Close;
  QuView.SQL.Strings[3]:='where Tahun='+PeriodThn+' and Bulan='+PeriodBln;
  QuView.Open;
 
end;

procedure TFrHPPProduksi.ToolButton10Click(Sender: TObject);
begin
  QuView.Close;
  QuView.SQL.Strings[3]:='where Tahun='+PeriodThn+' and Bulan='+PeriodBln;
  QuView.Open;

end;

procedure TFrHPPProduksi.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrHPPProduksi.ExportExcel1Click(Sender: TObject);
begin
{  if (IsExcel) then
  begin
      Save('xls', 'Microsoft Excel (*.xls)|*.xls', FrGudang.Caption, dxDBGrid1.SaveToXLS);
      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
      LoggingData(Caption,'User '+IdUser+' Export Data '+ SaveDialog.FileName,dm.qucari);
  end else
  begin
      ShowMessage('Anda tidak berhak Mengeksport Excel');
  end;
}
end;

procedure TFrHPPProduksi.ToolButton1Click(Sender: TObject);
begin
  if IsTambah then
  begin
    Application.CreateForm(TFrSubHPPProduksi, FrSubHPPProduksi);
    FrSubHPPProduksi.IsSimpan:=True;
    FrSubHPPProduksi.ShowModal;
  end  
  else
  begin
      ShowMessage('Anda tidak berhak Menambah Data');
  end;
end;

procedure TFrHPPProduksi.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrHPPProduksi.ToolButton2Click(Sender: TObject);
begin
  if IsKoreksi then
  begin
    Application.CreateForm(TFrSubHPPProduksi, FrSubHPPProduksi);
    FrSubHPPProduksi.IsSimpan:=false;
    AmbilData;
    FrSubHPPProduksi.ShowModal;
    ActiveControl:=dxDBGrid2;
  end
  else
  begin
     ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
  end;

end;

procedure TFrHPPProduksi.ToolButton3Click(Sender: TObject);
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
           [QuView.FieldByName('KodeBrg').asstring,
            QuView.FieldByName('NamaBrg').asstring]));
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

procedure TFrHPPProduksi.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

procedure TFrHPPProduksi.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrHPPProduksi.dxDBGrid1CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
  if AColumn = dxDBGrid2.Columns[0] then
  begin
    AColor := $00ffefe1;
    AFont.Color:=clblack;
    AFont.Style := AFont.Style + [fsBold];
  end;
end;

end.
