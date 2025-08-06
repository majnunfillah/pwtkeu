unit FrmJadwalPRD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  StdCtrls, ExtCtrls, Menus, dxGridMenus,ShellApi, dxDBTLCl, dxGrClms;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrJadwalPRD = class(TForm)
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
    Sp_Merk: TADOStoredProc;
    ToolButton8: TToolButton;
    dxDBGrid1KodeMesin: TdxDBGridMaskColumn;
    dxDBGrid1NamaMesin: TdxDBGridMaskColumn;
    QuViewNojadwal: TAutoIncField;
    QuViewKODEMSN: TStringField;
    QuViewTANGGAL: TDateTimeField;
    QuViewJAMAWAL: TDateTimeField;
    QuViewJAMAKHIR: TDateTimeField;
    QuViewISPRODUKSI: TBooleanField;
    QuViewNOSPK: TStringField;
    QuViewKETERANGAN: TStringField;
    QuViewQNTSPK: TBCDField;
    QuViewQNTKERJA: TBCDField;
    QuViewNmMesin: TStringField;
    dxDBGrid1Tanggal: TdxDBGridColumn;
    dxDBGrid1Jamawal: TdxDBGridColumn;
    dxDBGrid1JamAkhir: TdxDBGridColumn;
    dxDBGridNospk: TdxDBGridColumn;
    dxDBGridKeterangan: TdxDBGridColumn;
    dxDBGridQNTSPK: TdxDBGridColumn;
    dxDBGridQNTKerja: TdxDBGridColumn;
    dxDBGrid1IsProduksi: TdxDBGridCheckColumn;
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
    mPosisi,KeyCOde : string;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel : boolean;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrJadwalPRD: TFrJadwalPRD;
  S: array[0..255] of char;
  BM: TBookmark;

implementation
uses myModul,Myprocedure,MyGlobal,FrmMenu, FrmSubJadwalPRD, ToolEdit, Mask ;
{$R *.dfm}

procedure TFrJadwalPRD.AmbilData;
begin
   with FrSubJadwalPRD do
   begin
     kodeMSn.Text:=QuViewKODEMSN.AsString;
     NmMsn.Caption:=QuViewNmMesin.AsString;
     Ket.Text:=QuViewKETERANGAN.AsString;
     Tanggal.Date:=QuViewTANGGAL.AsDateTime;
     jamawl.Text:=FormatDateTime('HH:mm',QuViewJAMAWAL.AsDateTime);
     JamAkhir.Text:=FormatDateTime('HH:mm',QuViewJAMAKHIR.AsDateTime);
     IsProduksi.Checked:=QuViewISPRODUKSI.AsBoolean;
     NoSPK.Text:=QuViewNOSPK.AsString;
     QntSpk.Value:=QuViewQNTSPK.AsFloat;
     QntKerja.Value:=QuViewQNTKERJA.AsFloat;
   end;
end;

procedure TFrJadwalPRD.SimpanData(Mode:Char);
begin
  With Sp_Merk do
  begin
    BM:=QuView.GetBookmark;
    Prepared;
    Parameters.Refresh;
    Parameters[1].Value := Mode;
    if Mode='D' then
       Parameters[2].Value := QuView.FieldbyName('Nojadwal').asstring
    else

    begin
      Parameters[2].Value := 0;
      Parameters[3].Value := FrSubJadwalPRD.kodeMSn.Text;
      Parameters[4].Value := FrSubJadwalPRD.Tanggal.Date;
      Parameters[5].Value := 2+StrToTime(FrSubJadwalPRD.jamawl.Text+':00');
      Parameters[6].Value := 2+StrToTime(FrSubJadwalPRD.JamAkhir.Text+':00');
      //Parameters[7].Value := FrSubJadwalPRD.IsProduksi.Checked;
      Parameters[7].Value := True;
      Parameters[8].Value := FrSubJadwalPRD.NOSPK.Text;
      Parameters[9].Value := FrSubJadwalPRD.Ket.Text;
      Parameters[10].Value := FrSubJadwalPRD.QntSPK.Value;
      Parameters[11].Value := FrSubJadwalPRD.QNTKerja.Value;
    end;
    try
      execproc;
      if Mode='I' then
      begin
        QuView.Requery;
        QuView.Locate('KodeMsn',FrSubJadwalPRD.KodeMsn.Text,[LOP,LOC]);
        LoggingData(IDUser,Mode,'Mesin','','Kode Mesin = '+FrSubJadwalPRD.KodeMsn.Text+
                    ' , Nama Mesin = '+FrSubJadwalPRD.Ket.Text);
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
        LoggingData(IDUser,Mode,'Mesin','','Kode Mesin = '+FrSubJadwalPRD.KodeMsn.Text+
                    ' , Nama Mesin = '+FrSubJadwalPRD.Ket.Text);
      end
      Else if Mode='D' then
      begin
        LoggingData(IDUser,Mode,'Mesin','','Kode Mesin = '+KeyCOde+
                    ' , Nama Mesin = '+QuViewKODEMSN.AsString);
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

procedure TFrJadwalPRD.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrJadwalPRD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
    begin
        Action:=caFree;
    end
    else
        Action:=caNone;
end;

procedure TFrJadwalPRD.FormDestroy(Sender: TObject);
begin
  FrJadwalPRD:=nil;
end;

procedure TFrJadwalPRD.FormShow(Sender: TObject);
begin
 with QuView do
 begin
  close;
  open;
 end;
end;

procedure TFrJadwalPRD.ToolButton10Click(Sender: TObject);
begin
 QuView.Requery;
end;

procedure TFrJadwalPRD.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrJadwalPRD.ExportExcel1Click(Sender: TObject);
begin
{  if (IsExcel) then
  begin
      Save('xls', 'Microsoft Excel (*.xls)|*.xls', FrMesin.Caption, dxDBGrid1.SaveToXLS);
      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
      LoggingData(Caption,'User '+IdUser+' Export Data '+ SaveDialog.FileName,dm.qucari);
  end else
  begin
      ShowMessage('Anda tidak berhak Mengekspor Excel');
  end;}

end;

procedure TFrJadwalPRD.AutoFilter1Click(Sender: TObject);
begin
    if dxDBGrid1.Filter.Active=false then
    dxDBGrid1.Filter.Active:=true
    else
    dxDBGrid1.Filter.Active:=false;

end;

procedure TFrJadwalPRD.ShowGrid1Click(Sender: TObject);
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

procedure TFrJadwalPRD.ShowHeader1Click(Sender: TObject);
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

procedure TFrJadwalPRD.Show1Click(Sender: TObject);
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

procedure TFrJadwalPRD.ToolButton1Click(Sender: TObject);
begin
  if IsTambah then
  begin
    Application.CreateForm(TFrSubJadwalPRD, FrSubJadwalPRD);
    FrSubJadwalPRD.IsSimpan:=True;
    FrSubJadwalPRD.ShowModal;
  end
  else
  begin
      ShowMessage('Anda tidak berhak Menambah Data');
  end;

end;

procedure TFrJadwalPRD.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrJadwalPRD.ToolButton2Click(Sender: TObject);
begin
  if IsKoreksi then
  begin
    Application.CreateForm(TFrSubJadwalPRD, FrSubJadwalPRD);
    FrSubJadwalPRD.IsSimpan:=false;
    AmbilData;
    FrSubJadwalPRD.ShowModal;
    if FrSubJadwalPRD.ModalResult=mrOK then
    begin
      With QuView do
      begin
        Locate('KodeMsn',mPosisi,[LOC, LOP]);
      end;
    end;
    ActiveControl:=dxDBGrid1;
  end else
  begin
     ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
  end;

end;

procedure TFrJadwalPRD.ToolButton3Click(Sender: TObject);
begin
  KeyCode:=QuViewKodeMsn.AsString;
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

procedure TFrJadwalPRD.MultiSelect1Click(Sender: TObject);
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

procedure TFrJadwalPRD.ppReport1PreviewFormCreate(Sender: TObject);
begin
//  TppReport(Sender).PreviewForm.WindowState:=wsMaximized;
//  TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zs100Percent;

end;

procedure TFrJadwalPRD.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

procedure TFrJadwalPRD.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrJadwalPRD.dxDBGrid1CustomDrawFooter(Sender: TObject;
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
