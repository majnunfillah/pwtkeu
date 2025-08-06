unit Frmprosesproduksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  ImgList, StdCtrls, ExtCtrls, Menus, ppBands, ppVar, ppCtrls, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,ppviewr,
  dxGridMenus;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrProsesProduksi = class(TForm)
    dxDBGrid1: TdxDBGrid;
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
    MultiSelect1: TMenuItem;
    ImageList2: TImageList;
    SaveDialog: TSaveDialog;
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
    QuViewKodeKota: TStringField;
    QuViewNamaKota: TStringField;
    dxDBGrid1KodeKota: TdxDBGridMaskColumn;
    dxDBGrid1NamaKota: TdxDBGridMaskColumn;
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
    Panel3: TPanel;
    Edit1: TEdit;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    QuViewKodeArea: TStringField;
    dxDBGrid1Column3: TdxDBGridColumn;
    QuViewNamaArea: TStringField;
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
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);

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
  FrProsesProduksi: TFrProsesProduksi;
  S: array[0..255] of char;
  BM: TBookmark;

implementation
uses myModul,Myprocedure,MyGlobal, FrmSubPemakai,FrmMenu,FrmSubprosesproduksi,
  FrmSetForm ;
{$R *.dfm}

procedure TFrProsesProduksi.AmbilData;
begin
   with FrSubprosesproduksi do
   begin
      Kodeprosesproduksi.Text:=QuView.fieldbyname('KodeKota').AsString;
      NamaKota.Text:=QuView.fieldbyname('NamaKota').AsString;
      kodearea.Text:=QuViewKodeArea.AsString;
      NmArea.Caption:=QuViewNamaArea.AsString;
   end;
end;

procedure TFrProsesProduksi.SimpanData(Mode:Char);
begin
  With Sp_Merk do
  begin
    BM:=QuView.GetBookmark;
    Prepared;
    Parameters[1].Value := Mode;
    if Mode='D' then
       Parameters[2].Value := QuViewKodeKota.asstring
    else
    begin
      Parameters[2].Value := FrSubprosesproduksi.Kodeprosesproduksi.Text;
      Parameters[3].Value := FrSubprosesproduksi.Namaprosesproduksi.Text;
      Parameters[4].Value := FrSubprosesproduksi.KodeArea.Text;
    end;
    try
      execproc;
      if Mode='I' then
      begin
        QuView.Requery;
        QuView.Locate('KodeKota',FrSubprosesproduksi.Kodeprosesproduksi.Text,[LOP,LOC]);
        LoggingData(IDUser,Mode,'KOT','','Kode Kota = '+FrSubprosesproduksi.Kodeprosesproduksi.Text+
                    ' , Nama Kota = '+FrSubprosesproduksi.Namaprosesproduksi.Text);
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
        LoggingData(IDUser,Mode,'KOT','','Kode Kota = '+FrSubprosesproduksi.KodeKota.Text+
                    ' , Nama Kota = '+FrSubprosesproduksi.NamaKota.Text);
      end
      Else if Mode='D' then
      begin
        LoggingData(IDUser,Mode,'KOT','','Kode Kota = '+QuViewKodeKota.AsString+
                    ' , Nama Kota = '+QuViewNamaKota.AsString);
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

procedure TFrProsesProduksi.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrProsesProduksi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
       MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
  begin
    Action:=caFree;
  end
  else
    Action:=caNone;
end;

procedure TFrProsesProduksi.FormDestroy(Sender: TObject);
begin
  Frprosesproduksi:=nil;
end;

procedure TFrProsesProduksi.FormShow(Sender: TObject);
begin
   with QuView do
   begin
      close;
       Open;
   end;

end;

procedure TFrProsesProduksi.ToolButton10Click(Sender: TObject);
begin
   with QuView do
   begin
      close;
      Sql.Strings[3]:='where Namakota like '+QuotedStr('%'+edit1.Text+'%');
      Open;
   end;
end;

procedure TFrProsesProduksi.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrProsesProduksi.ExportExcel1Click(Sender: TObject);
begin
 if (IsExcel) then
  begin
      Save('xls', 'Microsoft Excel (*.xls)|*.xls', Frprosesproduksi.Caption, dxDBGrid1.SaveToXLS);
  end else
  begin
      ShowMessage('Anda tidak berhak Mengeksport Excel');
  end;
end;

procedure TFrProsesProduksi.AutoFilter1Click(Sender: TObject);
begin
    if dxDBGrid1.Filter.Active=false then
    dxDBGrid1.Filter.Active:=true
    else
    dxDBGrid1.Filter.Active:=false;

end;

procedure TFrProsesProduksi.ShowGrid1Click(Sender: TObject);
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

procedure TFrProsesProduksi.ShowHeader1Click(Sender: TObject);
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

procedure TFrProsesProduksi.Show1Click(Sender: TObject);
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

procedure TFrProsesProduksi.ToolButton1Click(Sender: TObject);
begin
  if IsTambah then
  begin
    Application.CreateForm(TFrSubprosesproduksi, FrSubprosesproduksi);
    FrSubprosesproduksi.IsSimpan:=True;
    FrSubprosesproduksi.ShowModal;
  end else
  begin
      ShowMessage('Anda tidak berhak Menambah Data');
  end;
 
end;

procedure TFrProsesProduksi.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrProsesProduksi.ToolButton2Click(Sender: TObject);
begin
  if IsKoreksi then
  begin
    Application.CreateForm(TFrSubprosesproduksi, FrSubprosesproduksi);
    FrSubprosesproduksi.IsSimpan:=false;
    AmbilData;
    FrSubprosesproduksi.ShowModal;
    if FrSubprosesproduksi.ModalResult=mrOK then
    begin
    end;
    ActiveControl:=dxDBGrid1;
  end else
  begin
     ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
  end;

end;

procedure TFrProsesProduksi.ToolButton3Click(Sender: TObject);
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

procedure TFrProsesProduksi.MultiSelect1Click(Sender: TObject);
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

procedure TFrProsesProduksi.ToolButton4Click(Sender: TObject);
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

procedure TFrProsesProduksi.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

procedure TFrProsesProduksi.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrProsesProduksi.dxDBGrid1CustomDrawFooter(Sender: TObject;
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

procedure TFrProsesProduksi.FormCreate(Sender: TObject);
begin
  //Panel1.Color:=FrSetForm.PanelMain.Color;
  //ToolBar1.Color:=FrSetForm.ToolBarMain.Color;
end;

procedure TFrProsesProduksi.Edit1Change(Sender: TObject);
begin
 with QuView do
   begin
      close;
      Sql.Strings[3]:='where Namakota like '+QuotedStr('%'+edit1.Text+'%');
      Open;
   end;
end;

end.
