unit FrmLR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  ImgList, StdCtrls, ExtCtrls, Menus,
  dxGridMenus, dxDBTLCl, dxGrClms;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrLR = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton4: TToolButton;
    ToolButton7: TToolButton;
    ToolButton9: TToolButton;
    ImageList2: TImageList;
    ToolButton10: TToolButton;
    SaveDialog: TSaveDialog;
    dxDBGrid1: TdxDBGrid;
    ToolButton8: TToolButton;
    PopupMenu1: TPopupMenu;
    ExportExcel1: TMenuItem;
    N1: TMenuItem;
    ShowGrid1: TMenuItem;
    ShowHeader1: TMenuItem;
    Show1: TMenuItem;
    N2: TMenuItem;
    AutoFilter1: TMenuItem;
    MultiSelect1: TMenuItem;
    QuLR: TADOQuery;
    DsQuLR: TDataSource;
    Sp_LR: TADOStoredProc;
    dxDBGrid1Nomor: TdxDBGridMaskColumn;
    dxDBGrid1Perkiraan: TdxDBGridMaskColumn;
    dxDBGrid1Keterangan: TdxDBGridMaskColumn;
    dxDBGrid1Tipe: TdxDBGridMaskColumn;
    dxDBGrid1Tanda: TdxDBGridMaskColumn;
    dxDBGrid1Persen: TdxDBGridMaskColumn;
    dxDBGrid1Jumlah: TdxDBGridMaskColumn;
    dxDBGrid1Grup: TdxDBGridMaskColumn;
    QuLRBulan: TIntegerField;
    QuLRTahun: TIntegerField;
    QuLRDevisi: TStringField;
    QuLRPerkiraan: TStringField;
    QuLRNomor: TStringField;
    QuLRKeterangan: TStringField;
    QuLRGrup: TStringField;
    QuLRTipe: TStringField;
    QuLRTanda: TStringField;
    QuLRPersen: TStringField;
    QuLRTotalA: TBCDField;
    QuLRTotalB: TBCDField;
    QuLRTotalC: TBCDField;
    QuLRIsLRHPP: TBooleanField;
    QuLRJumlah: TStringField;
    QuLRTampil: TStringField;
    QuLRNamaPerkiraan: TStringField;
    Panel1: TPanel;
    ToolButton11: TToolButton;
    Tampilan: TComboBox;
    Devisi: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ExportExcel1Click(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure AutoFilter1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    Procedure UpdateDataLR(Choice:Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton2Click(Sender: TObject);
    procedure AmbilData;
    procedure ToolButton3Click(Sender: TObject);
    procedure MultiSelect1Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
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
    procedure FormCreate(Sender: TObject);
    procedure Tampil;
    procedure ShowGrid1Click(Sender: TObject);
    procedure ShowHeader1Click(Sender: TObject);
    procedure Show1Click(Sender: TObject);
    procedure TampilanChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    IsSimpan:Boolean;
    mPosisi, KdDevisi:String;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel : Boolean;
    Bm : TBookmark;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrLR: TFrLR;
  NoLR,SortBy,Prioritas :String;
  mValid:Boolean;
  S:Array [0..255] of char;
implementation
uses myModul,Myprocedure,MyGlobal, FrmBrows, FrmSubLR ;
{$R *.dfm}

procedure TFrLR.Tampil;
begin
  with QuLR do
  begin
    Close;
    Parameters[0].Value:=Devisi.Text;
    if Tampilan.ItemIndex=0 then
       Parameters[1].Value:=False
    else
       Parameters[1].Value:=True;
    Parameters[2].Value := StrToInt(PeriodBln);
    Parameters[3].Value := StrToInt(PeriodThn);
    Open;
  end;
end;


procedure TFrLR.AmbilData;
begin
   with FrSubLR do
   begin
      Nomor.Text     :=FrLR.QuLR.fieldbyname('Nomor').AsString;
      Perkiraan.Text :=FrLR.QuLR.fieldbyname('Perkiraan').AsString;
      Keterangan.Text:=FrLR.QuLR.fieldbyname('Keterangan').AsString;
      Group.Text     :=FrLR.QuLR.fieldbyname('Grup').AsString;
      Tipe.Text      :=FrLR.QuLR.fieldbyname('Tipe').AsString;
      Tanda.text     :=FrLR.QuLR.fieldbyname('Tanda').AsString;
      Jumlah.text    :=FrLR.QuLR.fieldbyname('Jumlah').AsString;
      Persentasi.Text:=FrLR.QuLR.fieldbyname('Persen').AsString;
      Tampil.text    :=FrLR.QuLR.fieldbyname('Tampil').AsString;
      Label18.Caption:='[ '+FrLR.QuLR.fieldbyname('NamaPerkiraan').AsString+' ]';
   end;
end;

procedure TFrLR.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrLR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
    begin
      //dxDBGrid1.SaveToIniFile(currDir+'inifile\'+Caption+'_'+IDUser+'.ini');
      Action:=caFree;
    end
    else
      Action:=caNone;
end;

procedure TFrLR.FormDestroy(Sender: TObject);
begin
 FrLR:=nil;
end;

procedure TFrLR.FormShow(Sender: TObject);
begin
  Tampil;
end;

procedure TFrLR.ToolButton10Click(Sender: TObject);
begin
  Tampil;
end;



procedure TFrLR.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrLR.ExportExcel1Click(Sender: TObject);
begin
  if (IsExcel) then
  begin
      Save('xls', 'Microsoft Excel (*.xls)|*.xls', frLR.Caption, dxDBGrid1.SaveToXLS);
  end else
  begin
      ShowMessage('Anda tidak berhak Mengeksport Excel');
  end;

end;

procedure TFrLR.AutoFilter1Click(Sender: TObject);
begin
    if dxDBGrid1.Filter.Active=false then
    dxDBGrid1.Filter.Active:=true
    else
    dxDBGrid1.Filter.Active:=false;

end;

procedure TFrLR.ToolButton1Click(Sender: TObject);
begin
 if IsTambah then
 begin
  IsSimpan:=true;
//  IsLRHPP :=Tampilan.Items.;
  Application.CreateForm(TFrSubLR, FrSubLR);
  FrSubLR.Caption:='Tambah Data';
  FrSubLR.Nomor.Enabled:=true;
  FrSubLR.ShowModal;
 end else
 begin
     ShowMessage('Anda tidak berhak Menambah Data');
 end;
end;

procedure TFrLR.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrLR.ToolButton2Click(Sender: TObject);
begin
 if IsKoreksi then
 begin
  if QuLR.IsEmpty=false then
  begin
    IsSimpan:=false;
    Application.CreateForm(TFrSubLR, FrSubLR);
    FrSubLR.Caption:='Koreksi Data';
    FrSubLR.Nomor.Enabled:=false;
    AmbilData;
    FrSubLR.ShowModal;
    if FrSubLR.ModalResult=mrOK then
    begin
      With QuLR do
      begin
        Locate('Nomor',mPosisi,[LOC, LOP]);
      end;
    end;

  end else
  begin
    ShowMessage('Data LR Kosong !');
  end;
 end else
 begin
     ShowMessage('Anda tidak berhak Koreksi Data');
 end;
end;

procedure TFrLR.ToolButton3Click(Sender: TObject);
begin
 if IsHapus then
 begin
  if QuLR.IsEmpty=true then
  begin
    Application.MessageBox('Tabel Kosong','Informasi' ,MB_OK Or MB_ICONWARNING);
  end else
  begin
    NoLR:=QuLR.Fields[0].asstring;
    StrPCopy(S,Format('Anda yakin NO %s dan Keterangan %s dihapus ?',
   [QuLR.Fields[0].asstring, QuLR.Fields[1].asstring]));
    if (Application.MessageBox(S,'Peringatan',
        MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
    begin
      UpdateDataLR('D');
    end;
  end;
 end else
 begin
     ShowMessage('Anda tidak berhak Hapus Data');
 end;
end;

procedure TFrLR.MultiSelect1Click(Sender: TObject);
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

procedure TFrLR.ToolButton4Click(Sender: TObject);
begin
 if IsCetak then
 begin
 
 end else
 begin
     ShowMessage('Anda tidak berhak Cetak');
 end;
end;

procedure TFrLR.ppReport1PreviewFormCreate(Sender: TObject);
begin
//  TppReport(Sender).PreviewForm.WindowState:=wsMaximized;
//  TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zs100Percent;

end;

procedure TFrLR.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

procedure TFrLR.dxDBGrid1CustomDrawFooterNode(Sender: TObject;
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

procedure TFrLR.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrLR.FormCreate(Sender: TObject);
begin
  IsSimpan:=true;
  Devisi.Items.Clear;
  DataBersyarat('Select *,:1 from dbDevisi',[''],dm.Qucari);
  while Not DM.QuCari.Eof do
  begin
    Devisi.Items.Add(DM.QuCari.FieldByname('Devisi').AsString+' - '+DM.QuCari.FieldByname('NamaDevisi').AsString);
    dm.QuCari.Next;
  end;
  if (dm.QuCari.RecordCount>1) and (not dm.QuCari.IsEmpty) then
  begin
    if Devisi.CanFocus then
       ActiveControl:=Devisi;
  end
  else if (dm.QuCari.RecordCount=1) and (not dm.QuCari.IsEmpty) then
  begin
    ActiveControl := Tampilan;
    Devisi.ItemIndex := Devisi.Items.IndexOf(dm.QuCari.FieldByname('devisi').AsString+' - '+DM.QuCari.FieldByname('NamaDevisi').AsString);
    Devisi.Enabled := false;
  end;
  Tampil;
end;

procedure TFrLR.ShowGrid1Click(Sender: TObject);
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

procedure TFrLR.ShowHeader1Click(Sender: TObject);
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

procedure TFrLR.Show1Click(Sender: TObject);
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

Procedure TFrLR.UpdateDataLR(Choice:Char);
var P : String;
begin
  if IsLRHPP then
     P:='HPP'
  else
     P:='LR';
  BM := QULR.GetbookMark;
  With Sp_LR do
  begin
    Prepared;
    Parameters[1].Value := Choice;
    if Choice='D' then
    begin
      Parameters[2].Value := copy(Devisi.Text,1,2);
      Parameters[3].Value := QuLR.fieldbyname('Nomor').AsString;
      Parameters[12].Value := strtoint(PeriodBln);
      Parameters[13].Value := strtoint(PeriodThn);
      
    end else
    begin
      Parameters[2].Value  := copy(Devisi.Text,1,2);
      Parameters[3].Value  := FrSubLR.Nomor.Text;
      Parameters[4].Value  := FrSubLR.Perkiraan.Text;
      Parameters[5].Value  := FrSubLR.Keterangan.Text;
      Parameters[6].Value  := FrSubLR.Group.text;
      Parameters[7].Value  := Copy(FrSubLR.Tipe.text,1,1);
      Parameters[8].Value  := Copy(FrSubLR.Tanda.text,1,1);
      Parameters[9].Value  := Copy(FrSubLR.Jumlah.text,1,1);
      Parameters[10].Value := FrSubLR.Persentasi.text;
      Parameters[11].Value := Copy(FrSubLR.Tampil.Text,1,1);
      Parameters[12].Value := strtoint(PeriodBln);
      Parameters[13].Value := strtoint(PeriodThn);
      Parameters[14].Value := (Tampilan.ItemIndex);
    end;
    try
      execproc;
      if Choice='I' then
      begin
        LoggingData(IDUser,Choice,P,'',
                    ' Devisi = '+QuotedStr(FrSubLR.Perkiraan.Text)+
                    ' Nomor = '+QuotedStr(FrSubLR.Nomor.Text)+
                    ' Perkiraan = '+QuotedStr(FrSubLR.Perkiraan.Text)+
                    ' Keterangan = '+QuotedStr(FrSubLR.Keterangan.Text)+
                    ' Grup = '+QuotedStr(FrSubLR.Group.Text)+
                    ' Tipe = '+QuotedStr(FrSubLR.Tipe.Text)+
                    ' Tanda = '+QuotedStr(FrSubLR.Tanda.Text)+
                    ' Jumlah = '+QuotedStr(FrSubLR.Jumlah.Text)+
                    ' Persentase = '+QuotedStr(FrSubLR.Persentasi.Text)+
                    ' Tampil = '+QuotedStr(FrSubLR.Tampil.Text)+
                    ' Bulan = '+PeriodBln+
                    ' Tahun = '+PeriodThn);
        QuLR.Requery;
        QuLR.Locate('nomor',FrSubLR.Nomor.Text,[]);
      end else if Choice='U' then
      begin
        QuLR.Requery;
        if QuLR.BookmarkValid(BM) then
        begin
          try
             QuLR.GotoBookmark(BM);
          finally
             QuLR.FreeBookmark(BM);
          end
        end else
        begin
          QuLR.FreeBookmark(BM);
          QuLR.Last;
        end;
        LoggingData(IDUser,Choice,P,'',
                    ' Devisi = '+QuotedStr(FrSubLR.Perkiraan.Text)+
                    ' Nomor = '+QuotedStr(FrSubLR.Nomor.Text)+
                    ' Perkiraan = '+QuotedStr(FrSubLR.Perkiraan.Text)+
                    ' Keterangan = '+QuotedStr(FrSubLR.Keterangan.Text)+
                    ' Grup = '+QuotedStr(FrSubLR.Group.Text)+
                    ' Tipe = '+QuotedStr(FrSubLR.Tipe.Text)+
                    ' Tanda = '+QuotedStr(FrSubLR.Tanda.Text)+
                    ' Jumlah = '+QuotedStr(FrSubLR.Jumlah.Text)+
                    ' Persentase = '+QuotedStr(FrSubLR.Persentasi.Text)+
                    ' Tampil = '+QuotedStr(FrSubLR.Tampil.Text)+
                    ' Bulan = '+PeriodBln+
                    ' Tahun = '+PeriodThn);
      end
      else if choice='D' then
      begin
        LoggingData(IDUser,Choice,P,'',
                    ' Devisi = '+QuotedStr(QuLRDevisi.Value)+
                    ' Nomor = '+QuotedStr(QuLRNomor.Value)+
                    ' Perkiraan = '+QuotedStr(QuLRPerkiraan.Value)+
                    ' Keterangan = '+QuotedStr(QuLRKeterangan.Value)+
                    ' Grup = '+QuotedStr(QuLRGrup.Value)+
                    ' Tipe = '+QuotedStr(QuLRTipe.Value)+
                    ' Tanda = '+QuotedStr(QuLRTanda.Value)+
                    ' Jumlah = '+QuotedStr(QuLRJumlah.Value)+
                    ' Persentase = '+QuotedStr(QuLRPersen.Value)+
                    ' Tampil = '+QuotedStr(QuLRTampil.Value)+
                    ' Bulan = '+QuLRBulan.AsString+
                    ' Tahun = '+ QuLRTahun.AsString);
        QuLR.Requery;
      end;
    except
      on E: Exception do
           begin
               Application.MessageBox(StrPCopy(S,E.Message),'Peringatan',MB_OK or MB_ICONSTOP);
           end;
    end;
  end;
end;

procedure TFrLR.TampilanChange(Sender: TObject);
begin
  //IsLRHPP := (Tampilan.ItemIndex);
  if Tampilan.ItemIndex=0 then
      IsLRHPP:=false
  else
      IsLRHPP:=true;
end;

end.
