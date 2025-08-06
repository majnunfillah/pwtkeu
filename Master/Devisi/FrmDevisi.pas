unit FrmDevisi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  ImgList, StdCtrls, ExtCtrls, Menus, ppBands, ppVar, ppCtrls, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,ppviewr,
  dxGridMenus,ShellApi, dxDBTLCl, dxGrClms, Grids, DBGrids;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrDevisi = class(TForm)
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
    ImageList2: TImageList;
    SaveDialog: TSaveDialog;
    MultiSelect1: TMenuItem;
    ppDBPipeline1: TppDBPipeline;
    Sp_Merk: TADOStoredProc;
    ppReport1: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppDetailBand1: TppDetailBand;
    ppShape2: TppShape;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine2: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine3: TppLine;
    ppLabel5: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    Panel2: TPanel;
    Panel1: TPanel;
    dxDBGrid1: TdxDBGrid;
    DsQuBeli: TDataSource;
    QuBeli: TADOQuery;
    QuBeliKeyUrut: TIntegerField;
    QuBeliKodeCust: TStringField;
    QuBeliKodeSls: TStringField;
    QuBeliIsMinggu: TBooleanField;
    QuBeliIsSenin: TBooleanField;
    QuBeliIsSelasa: TBooleanField;
    QuBeliIsRabu: TBooleanField;
    QuBeliIsKamis: TBooleanField;
    QuBeliIsJumat: TBooleanField;
    QuBeliIsSabtu: TBooleanField;
    QuBeliTglAwal: TDateTimeField;
    QuBeliTglAkhir: TDateTimeField;
    QuBeliNamaSls: TStringField;
    QuBeliIsAktif: TBooleanField;
    QuBeliKodeCust2: TStringField;
    QuBeliNamaCust: TStringField;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid1KeyUrut: TdxDBGridMaskColumn;
    dxDBGrid2KodeCust: TdxDBGridMaskColumn;
    dxDBGrid2KodeCust2: TdxDBGridMaskColumn;
    dxDBGrid2NamaCust: TdxDBGridMaskColumn;
    dxDBGrid1KodeSls: TdxDBGridMaskColumn;
    dxDBGrid2NamaSls: TdxDBGridMaskColumn;
    dxDBGrid1IsMinggu: TdxDBGridCheckColumn;
    dxDBGrid1IsSenin: TdxDBGridCheckColumn;
    dxDBGrid1IsSelasa: TdxDBGridCheckColumn;
    dxDBGrid1IsRabu: TdxDBGridCheckColumn;
    dxDBGrid1IsKamis: TdxDBGridCheckColumn;
    dxDBGrid1IsJumat: TdxDBGridCheckColumn;
    dxDBGrid1IsSabtu: TdxDBGridCheckColumn;
    dxDBGrid1TglAwal: TdxDBGridDateColumn;
    dxDBGrid1TglAkhir: TdxDBGridDateColumn;
    dxDBGrid1IsAktif: TdxDBGridCheckColumn;
    PanelToolbar: TPanel;
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
    ToolButton12: TToolButton;
    QuViewDevisi: TStringField;
    QuViewNamaDevisi: TStringField;
    QuViewMyID: TBytesField;
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
    procedure ToolButton4Click(Sender: TObject);
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
    procedure QuViewAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);

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
  FrDevisi: TFrDevisi;
  S: array[0..255] of char;
  BM: TBookmark;

implementation
uses myModul,Myprocedure,MyGlobal,FrmMenu,
  FrmSetForm, FrmSubDevisi, FrmDevGudang;
{$R *.dfm}

procedure TFrDevisi.AmbilData;
begin
   with frSubDevisi do
   begin
      devisi.Text:=QuViewDevisi.AsString;
      NamaDevisi.Text:=QuViewNamaDevisi.AsString;
   end;
end;

procedure TFrDevisi.SimpanData(Mode:Char);
begin
  With Sp_Merk do
  begin
    BM:=QuView.GetBookmark;
    Prepared;
    Parameters[1].Value := Mode;
    if Mode='D' then
       Parameters[2].Value := QuViewdevisi.asstring
    else
    begin
      Parameters[2].Value := frSubDevisi.devisi.Text;
      Parameters[3].Value := frSubDevisi.NamaDevisi.Text;
    end;
    try
      execproc;
      if Mode='I' then
      begin
        QuView.Requery;
        QuView.Locate('devisi',frSubDevisi.devisi.Text,[LOP,LOC]);
        LoggingData(IDUser,Mode,'ARE','','Kode Area = '+frSubDevisi.devisi.Text+
                    ' , Nama Area = '+frSubDevisi.NamaDevisi.Text);
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
        LoggingData(IDUser,Mode,'ARE','','Kode Area = '+frSubDevisi.devisi.Text+
                    ' , Nama Area = '+frSubDevisi.NamaDevisi.Text);
      end
      Else if Mode='D' then
      begin
        LoggingData(IDUser,Mode,'ARE','','Kode Area = '+QuViewdevisi.AsString+
                    ' , Nama Area = '+QuViewNamaDevisi.AsString);
        QuView.Requery;
      end;
    except
      If (Mode='I') Or (Mode='U') then
         showmessage('Proses Gagal !, Data Sudah Ada')
      else If (Mode='D') then
         showmessage('Proses Gagal !, Merek berkaitan dengan transaksi');
    end;
  end;
end;

procedure TFrDevisi.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrDevisi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
    begin
        Action:=caFree;
    end
    else
        Action:=caNone;
end;

procedure TFrDevisi.FormDestroy(Sender: TObject);
begin
  FrDevisi:=nil;
end;

procedure TFrDevisi.FormShow(Sender: TObject);
begin
  ToolButton10.Click;
end;

procedure TFrDevisi.ToolButton10Click(Sender: TObject);
var xdevisi: String;
begin
  if QuView.Active=True then
    xdevisi:=QuViewdevisi.AsString
  else xdevisi:='';
  QuView.Close;
  QuView.Open;
  QuView.Locate('devisi',xdevisi,[]);
end;

procedure TFrDevisi.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrDevisi.ExportExcel1Click(Sender: TObject);
begin
{
  if (IsExcel) then
  begin
      Save('xls', 'Microsoft Excel (*.xls)|*.xls', FrDevisi.Caption, dxDBGrid1.SaveToXLS);
      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
      LoggingData(Caption,'User '+IdUser+' Export Data '+ SaveDialog.FileName,dm.qucari);
  end else
  begin
      ShowMessage('Anda tidak berhak Mengekspor Excel');
  end;
}
end;

procedure TFrDevisi.AutoFilter1Click(Sender: TObject);
begin
    if dxDBGrid1.Filter.Active=false then
    dxDBGrid1.Filter.Active:=true
    else
    dxDBGrid1.Filter.Active:=false;

end;

procedure TFrDevisi.ShowGrid1Click(Sender: TObject);
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

procedure TFrDevisi.ShowHeader1Click(Sender: TObject);
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

procedure TFrDevisi.Show1Click(Sender: TObject);
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

procedure TFrDevisi.ToolButton1Click(Sender: TObject);
begin
  if IsTambah then
  begin
    Application.CreateForm(TfrSubDevisi, frSubDevisi);
    frSubDevisi.IsSimpan:=True;
    frSubDevisi.ShowModal;
  end
  else
  begin
      ShowMessage('Anda tidak berhak Menambah Data');
  end;
   
end;

procedure TFrDevisi.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrDevisi.ToolButton2Click(Sender: TObject);
begin
  if IsKoreksi then
  begin
    Application.CreateForm(TfrSubDevisi, frSubDevisi);
    frSubDevisi.IsSimpan:=false;
    AmbilData;
    frSubDevisi.ShowModal;
    if frSubDevisi.ModalResult=mrOK then
    begin
      With QuView do
      begin
        Locate('devisi',mPosisi,[LOC, LOP]);
      end;
    end;
    ActiveControl:=dxDBGrid1;
  end else
  begin
     ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
  end;

end;

procedure TFrDevisi.ToolButton3Click(Sender: TObject);
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
           [QuViewdevisi.asstring, QuViewNamaDevisi.asstring]));
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

procedure TFrDevisi.MultiSelect1Click(Sender: TObject);
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

procedure TFrDevisi.ToolButton4Click(Sender: TObject);
begin
  if (IsCetak) then
  begin
   ppLabel3.Caption:=koneksi[1];
   ppReport1.PrintReport;
  end else
  begin
      ShowMessage('Anda tidak berhak Mencetak Data');
  end;
  
end;

procedure TFrDevisi.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

procedure TFrDevisi.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrDevisi.dxDBGrid1CustomDrawFooter(Sender: TObject;
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

procedure TFrDevisi.QuViewAfterScroll(DataSet: TDataSet);
begin
//  dxDBGrid2.Bands[0].Caption:='Daftar Sales untuk Area : '+QuViewNamaDevisi.AsString;
end;

procedure TFrDevisi.FormCreate(Sender: TObject);
begin
  PanelToolbar.Color:=FrSetForm.PanelMain.Color;
  ToolBar1.Color:=FrSetForm.ToolBarMain.Color;
end;

procedure TFrDevisi.ToolButton11Click(Sender: TObject);
begin
   Application.CreateForm(TfrDevGudang, frDevGudang);
    frDevGudang.IsSimpan :=True;
    frDevGudang.ShowModal;
end;

end.
