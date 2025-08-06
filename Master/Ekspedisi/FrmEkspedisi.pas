unit FrmEkspedisi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  StdCtrls, ExtCtrls, Menus, dxGridMenus, ShellApi;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrEkspedisi = class(TForm)
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
    Sp_Ekspedisi: TADOStoredProc;
    PopupMenu2: TPopupMenu;
    Semua: TMenuItem;
    Aktif: TMenuItem;
    TidakAktif: TMenuItem;
    QuViewKODEEXP: TStringField;
    QuViewNAMAEXP: TStringField;
    QuViewALAMAT1: TStringField;
    QuViewALAMAT2: TStringField;
    QuViewKOTA: TStringField;
    QuViewKODEPOS: TStringField;
    QuViewTELPON: TStringField;
    QuViewHP: TStringField;
    QuViewFAX: TStringField;
    QuViewEMAIL: TStringField;
    QuViewContact: TStringField;
    QuViewPerkiraan: TStringField;
    QuViewAktif: TIntegerField;
    dxDBGrid1KODEEXP: TdxDBGridMaskColumn;
    dxDBGrid1NAMAEXP: TdxDBGridMaskColumn;
    dxDBGrid1ALAMAT1: TdxDBGridMaskColumn;
    dxDBGrid1KOTA: TdxDBGridMaskColumn;
    dxDBGrid1KODEPOS: TdxDBGridMaskColumn;
    dxDBGrid1TELPON: TdxDBGridMaskColumn;
    dxDBGrid1HP: TdxDBGridMaskColumn;
    dxDBGrid1FAX: TdxDBGridMaskColumn;
    dxDBGrid1Contact: TdxDBGridMaskColumn;
    dxDBGrid1Aktif: TdxDBGridMaskColumn;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton4: TToolButton;
    ToolButton12: TToolButton;
    ToolButton10: TToolButton;
    ToolButton7: TToolButton;
    ToolButton6: TToolButton;
    ToolButton9: TToolButton;
    ToolButton8: TToolButton;
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
    procedure ComboBox1Change(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure SemuaClick(Sender: TObject);
    procedure AktifClick(Sender: TObject);
    procedure TidakAktifClick(Sender: TObject);
    procedure dxDBGrid1CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
    procedure TampilData;
  public
    { Public declarations }
    mPosisi : string;
    IsTambah, IsKoreksi, IsHapus, IsCetak , IsExcel: Boolean;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrEkspedisi: TFrEkspedisi;
  S: array[0..255] of char;
  BM: TBookmark;
implementation

uses myModul, Myprocedure, MyGlobal, FrmSubEkspedisi, FrmSetForm ;

{$R *.dfm}

procedure TFrEkspedisi.TampilData;
begin
   with QuView do
   begin
      Close;
      if Semua.Checked then SQL.Strings[2]:=''
      else if Aktif.Checked then SQL.Strings[2]:='where Aktif=1'
      else if TidakAktif.Checked then SQL.Strings[2]:='where Aktif=0';
      Open;
   end;
end;

procedure TFrEkspedisi.AmbilData;
begin
  DataBersyarat('select * from dbExpedisi where KodeExp=:0'
                ,[QuView.fieldbyname('KodeExp').AsString],dm.qucari);
   with FrSubEkspedisi do
   begin
      Kodeeksped.Text:=dm.qucari.fieldbyname('KodeExp').AsString;
      NamaEksped.Text:=dm.qucari.fieldbyname('NamaExp').AsString;
      Alamat.Text:=dm.qucari.fieldbyname('Alamat1').AsString;
      Kota.Text:=dm.qucari.fieldbyname('Kota').AsString;
      telepon.Text:=dm.qucari.fieldbyname('Telpon').AsString;
      aktif.ItemIndex:=dm.qucari.fieldbyname('Aktif').AsInteger;
   end;
end;

procedure TFrEkspedisi.SimpanData(Mode:Char);
begin
  With Sp_Ekspedisi do
  begin
    Prepared;
    Parameters[1].Value := Mode;
    if Mode='D' then
    begin
       Parameters[2].Value := QuViewKODEEXP.AsString;
       BM:=QuView.GetBookmark;
    end else
    begin
      if Mode='U' then
        BM:=QuView.GetBookmark;
      Parameters[2].Value := FrSubEkspedisi.KodeEksped.Text;
      Parameters[3].Value := FrSubEkspedisi.NamaEksped.Text;
      Parameters[4].Value := FrSubEkspedisi.Alamat.Text;
      Parameters[5].Value := '';
      Parameters[6].Value := FrSubEkspedisi.Kota.Text;
      Parameters[7].Value := '';
      Parameters[8].Value := FrSubEkspedisi.Telepon.Text;
      Parameters[9].Value := FrSubEkspedisi.HP.Text;
      Parameters[10].Value := FrSubEkspedisi.Fax.Text;
      Parameters[11].Value := '';
      Parameters[12].Value := FrSubEkspedisi.Contact.Text;
      Parameters[13].Value := '';
      Parameters[14].Value := FrSubEkspedisi.Aktif.ItemIndex;
    end;

    try
           ExecProc;
           QuView.Close;
           QuView.Open;
           if Mode='I' then
           begin
               QuView.Locate('KodeExp', mPosisi, [LOP,LOC]);
           end else
           begin
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
           end;
    except
           on E: Exception do
           begin
               Application.MessageBox(StrPCopy(S,E.Message),'Peringatan',MB_OK or MB_ICONSTOP);
           end;

    end;
  end;
end;

procedure TFrEkspedisi.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrEkspedisi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
    begin
      Action:=caFree;
    end
    else
        Action:=caNone;
end;

procedure TFrEkspedisi.FormDestroy(Sender: TObject);
begin
  FrEkspedisi:=nil;
end;

procedure TFrEkspedisi.FormShow(Sender: TObject);
begin
   TampilData;
end;

procedure TFrEkspedisi.ToolButton10Click(Sender: TObject);
begin
   TampilData;
end;

procedure TFrEkspedisi.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrEkspedisi.ExportExcel1Click(Sender: TObject);
begin
  if (IsExcel) then
  begin
      Save('xls', 'Microsoft Excel (*.xls)|*.xls', FrEkspedisi.Caption, dxDBGrid1.SaveToXLS);
      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
  end else
  begin
      MsgTidakBerhakExportData;
      ActiveControl:=dxDBGrid1;
  end;
end;

procedure TFrEkspedisi.AutoFilter1Click(Sender: TObject);
begin
  if AutoFilter1.Checked then
  begin
    dxDBGrid1.Filter.Active:=False;
    AutoFilter1.Checked:=False;
    dxDBGrid1.OptionsView:=[edgoBandHeaderWidth,edgoIndicator,edgoRowSelect,edgoUseBitmap];
  end
  else
  begin
    dxDBGrid1.Filter.Active:=True;
    AutoFilter1.Checked:=True;
    dxDBGrid1.OptionsView:=[edgoBandHeaderWidth,edgoIndicator,edgoUseBitmap];
  end;
end;

procedure TFrEkspedisi.ShowGrid1Click(Sender: TObject);
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

procedure TFrEkspedisi.ShowHeader1Click(Sender: TObject);
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

procedure TFrEkspedisi.Show1Click(Sender: TObject);
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

procedure TFrEkspedisi.ToolButton1Click(Sender: TObject);
begin
  if IsTambah then
  begin
    Application.CreateForm(TFrSubEkspedisi, FrSubEkspedisi);
    FrSubEkspedisi.IsSimpan:=True;
    FrSubEkspedisi.ShowModal;
  end else
  begin
      ShowMessage('Anda tidak berhak Menambah Data');
  end;
end;

procedure TFrEkspedisi.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrEkspedisi.ToolButton2Click(Sender: TObject);
begin
  if IsKoreksi then
  begin
     Application.CreateForm(TFrSubEkspedisi, FrSubEkspedisi);
     FrSubEkspedisi.IsSimpan:=false;
     AmbilData;
     FrSubEkspedisi.ShowModal;
     if FrSubEkspedisi.ModalResult=mrOK then
     begin
     end;
     ActiveControl:=dxDBGrid1;
  end else
  begin
     ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
  end;

end;

procedure TFrEkspedisi.ToolButton3Click(Sender: TObject);
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
     MsgTidakBerhakHapusData;
     ActiveControl:=dxDBGrid1;
  end;

end;

procedure TFrEkspedisi.MultiSelect1Click(Sender: TObject);
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

procedure TFrEkspedisi.ppReport1PreviewFormCreate(Sender: TObject);
begin
//  TppReport(Sender).PreviewForm.WindowState:=wsMaximized;
//  TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zs100Percent;

end;

procedure TFrEkspedisi.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

procedure TFrEkspedisi.ComboBox1Change(Sender: TObject);
begin
   ToolButton10Click(self);
end;

procedure TFrEkspedisi.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;

begin

    if ANode.HasChildren then
    Exit;

    if not AFocused then
    begin
      if ANode.Index mod 2 =0 then
         AColor:=$00ffefe1
      else
         AColor:=$00efd7c9;
      AFont.Color:=clBlack;


      Value := ANode.Values[dxDBGrid1.ColumnByFieldName('Aktif').Index];

      if value=0 then
      begin
         //AColor:=$00BBBBFF;
         AFont.Color:=clRed;
      end;
    end;


end;

procedure TFrEkspedisi.SemuaClick(Sender: TObject);
begin
   ToolButton12.Caption:=Semua.Caption;
   Semua.Checked:=true;
   Aktif.Checked:=false;
   TidakAktif.Checked:=false;
//   ComboBox1.ItemIndex:=ComboBox1.Items.IndexOf('semua');
   //ComboBox1Change(self);
   ToolButton10Click(self);
end;

procedure TFrEkspedisi.AktifClick(Sender: TObject);
begin
   ToolButton12.Caption:=Aktif.Caption;
   Aktif.Checked:=true;
   Semua.Checked:=false;
   TidakAktif.Checked:=false;
   //ComboBox1.ItemIndex:=ComboBox1.Items.IndexOf('aktif');
   //ComboBox1Change(self);
   ToolButton10Click(self);
end;

procedure TFrEkspedisi.TidakAktifClick(Sender: TObject);
begin
   ToolButton12.Caption:=TidakAktif.Caption;
   TidakAktif.Checked:=true;
   Semua.Checked:=false;
   Aktif.Checked:=false;
   //ComboBox1.ItemIndex:=ComboBox1.Items.IndexOf('tidak aktif');
   //ComboBox1Change(self);
   ToolButton10Click(self);
end;

procedure TFrEkspedisi.dxDBGrid1CustomDrawFooter(Sender: TObject;
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

procedure TFrEkspedisi.FormCreate(Sender: TObject);
begin
  Panel1.Color:=FrSetForm.PanelMain.Color;
  ToolBar1.Color:=FrSetForm.ToolBarMain.Color;
end;

end.
