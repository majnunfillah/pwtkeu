unit FrmBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  StdCtrls, ExtCtrls, Menus, dxGridMenus, dxDBTLCl, dxGrClms,ShellApi;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrBarang = class(TForm)
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
    MultiSelect1: TMenuItem;
    sp_barang: TADOStoredProc;
    dxDBGrid1: TdxDBGrid;
    PopupMenu2: TPopupMenu;
    Semua: TMenuItem;
    Aktif: TMenuItem;
    TidakAktif: TMenuItem;
    dxDBGrid1KodeBrg: TdxDBGridMaskColumn;
    dxDBGrid1NamaBrg: TdxDBGridMaskColumn;
    dxDBGrid1Sat1: TdxDBGridMaskColumn;
    dxDBGrid1Isi1: TdxDBGridMaskColumn;
    dxDBGrid1Sat2: TdxDBGridMaskColumn;
    dxDBGrid1Isi2: TdxDBGridMaskColumn;
    dxDBGrid1Sat3: TdxDBGridMaskColumn;
    dxDBGrid1Isi3: TdxDBGridMaskColumn;
    dxDBGrid1KodeGrp: TdxDBGridMaskColumn;
    dxDBGrid1NamaGrp: TdxDBGridMaskColumn;
    dxDBGrid1MyAktif: TdxDBGridMaskColumn;
    dxDBGrid1QntMin: TdxDBGridMaskColumn;
    dxDBGrid1QntMax: TdxDBGridMaskColumn;
    dxDBGrid1ISAKTIF: TdxDBGridMaskColumn;
    dxDBGrid1Hrg1_1: TdxDBGridColumn;
    dxDBGrid1Hrg1_2: TdxDBGridColumn;
    dxDBGrid1Hrg1_3: TdxDBGridColumn;
    dxDBGrid1Hrg2_1: TdxDBGridColumn;
    dxDBGrid1Hrg2_2: TdxDBGridColumn;
    dxDBGrid1Hrg2_3: TdxDBGridColumn;
    dxDBGrid1Hrg3_1: TdxDBGridColumn;
    dxDBGrid1Hrg3_2: TdxDBGridColumn;
    dxDBGrid1Hrg3_3: TdxDBGridColumn;
    dxDBGrid1Keterangan: TdxDBGridColumn;
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
    ToolButton11: TToolButton;
    ToolButton9: TToolButton;
    QuViewurut: TIntegerField;
    QuViewKODEBRG: TStringField;
    QuViewNAMABRG: TStringField;
    QuViewKODESUPP: TStringField;
    QuViewSAT1: TStringField;
    QuViewISI1: TBCDField;
    QuViewSAT2: TStringField;
    QuViewISI2: TBCDField;
    QuViewSAT3: TStringField;
    QuViewISI3: TBCDField;
    QuViewHrg1_1: TBCDField;
    QuViewHrg2_1: TBCDField;
    QuViewHrg3_1: TBCDField;
    QuViewHrg1_2: TBCDField;
    QuViewHrg2_2: TBCDField;
    QuViewHrg3_2: TBCDField;
    QuViewHrg1_3: TBCDField;
    QuViewHrg2_3: TBCDField;
    QuViewHrg3_3: TBCDField;
    QuViewQntMin: TBCDField;
    QuViewQntMax: TBCDField;
    QuViewISAKTIF: TWordField;
    QuViewKeterangan: TStringField;
    QuViewNamaGrp: TStringField;
    QuViewMyAktif: TStringField;
    QuViewnamaCustSupp: TStringField;
    QuViewNFix: TBooleanField;
    QuViewNamaBrg2: TStringField;
    QuViewNamaSubGrp: TStringField;
    dxDBGrid1Column25: TdxDBGridColumn;
    QuViewTolerate: TBCDField;
    QuViewKodeBag: TStringField;
    QuViewnmdep: TStringField;
    QuViewKODEBhn: TStringField;
    dxDBGrid1Column26: TdxDBGridColumn;
    QuViewKODEGRP: TStringField;
    QuViewKODESUBGRP: TStringField;
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
  public
    { Public declarations }
    mPosisi : string;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel : Boolean;
    CountSelected : integer;
    ISTampil : byte;
    Procedure Tampildata(xIsTampil:byte);
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;
var
  FrBarang: TFrBarang;
  S: array[0..255] of char;
  BM: TBookmark;

implementation
uses myModul,Myprocedure,MyGlobal, FrmSubBarang, FrmSetForm, PBNumEdit;

{$R *.dfm}

Procedure TFrBarang.Tampildata(xIsTampil:byte);
begin
  with QuView do
  begin
    Close;
    SQL.Strings[2]:='set @IsAktif='+IntToStr(xIsTampil);
    Open;
  end;
end;

procedure TFrBarang.AmbilData;
begin
   with FrSubbarang do
   begin
     KodeBrg.Text:=QuViewKODEBRG.AsString;
     NamaBrg.Text:=QuViewNAMABRG.AsString;
     Grp.Text:=QuViewKODEGRP.AsString;
     NmGrp.Caption:='[ '+QuViewNamaGrp.AsString+' ]';
     KodeGrp.Text:=QuViewKODESUBGRP.AsString;
     NamaGroup.Caption:='[ '+QuViewNamaSubGrp.AsString+' ]';
     KodeCustSupp.Text:=QuViewKODESUPP.AsString;
     NamaSupp.Caption:='[ '+QuViewnamaCustSupp.AsString+' ]';
     Sat1.Text:=QuViewSAT1.AsString;
     Isi1.Value:=QuViewISI1.AsFloat;
     Sat2.Text:=QuViewSAT2.AsString;
     Isi2.Value:=QuViewISI2.AsFloat;
     Sat3.Text:=QuViewSAT3.AsString;
     Isi3.Value:=QuViewISI3.AsFloat;
     Hrg1_1.Value:=QuViewHrg1_1.AsFloat;
     Hrg2_1.Value:=QuViewHrg2_1.AsFloat;
     Hrg3_1.Value:=QuViewHrg3_1.AsFloat;
     Hrg1_2.Value:=QuViewHrg1_2.AsFloat;
     Hrg2_2.Value:=QuViewHrg2_2.AsFloat;
     Hrg3_2.Value:=QuViewHrg3_2.AsFloat;
     Hrg1_3.Value:=QuViewHrg1_3.AsFloat;
     Hrg2_3.Value:=QuViewHrg2_3.AsFloat;
     Hrg3_3.Value:=QuViewHrg3_3.AsFloat;
     QntMin.Value:=QuViewQntMin.AsFloat;
     QntMax.Value:=QuViewQntMax.AsFloat;
     KodeBhn.Text :=QuViewKODEBhn.AsString;

     Aktif.ItemIndex:=QuViewISAKTIF.AsInteger;
     Keterangan.Text:=QuViewKeterangan.AsString;

     CB.Checked:=QuViewNFix.AsBoolean;
     NamaBrg2.Text:=QuViewNamaBrg2.AsString;
     Grp.Enabled:=IsSimpan;
     KodeGrp.Enabled:=IsSimpan;
     Toleransi.Value := QuViewTolerate.AsInteger;
     kodebag.Text := QuViewKodeBag.AsString;
     LNamaBag.Caption:=quviewnmdep.asstring;
   end;
end;

procedure TFrBarang.SimpanData(Mode:Char);
begin
   With Sp_Barang, frSubBarang do
   begin
     BM:=QuView.GetBookmark;
     Parameters.Refresh;
     Prepared;
     Parameters[1].Value:=Mode;
     if Mode<>'D' then // Update & Insert
     begin
        Parameters[2].Value:=KodeBrg.Text;
        Parameters[3].Value:=NamaBrg.Text;
        Parameters[4].Value:=Grp.Text;
        Parameters[5].Value:=KodeGrp.Text;
        Parameters[6].Value:=KodeCustSupp.Text;
        Parameters[7].Value:=Sat1.Text;
        Parameters[8].Value:=Isi1.AsFloat;
        Parameters[9].Value:=Sat2.Text;
        Parameters[10].Value:=Isi2.AsFloat;
        Parameters[11].Value:=Sat3.Text;
        Parameters[12].Value:=Isi3.AsFloat;
        Parameters[13].Value:=Hrg1_1.AsFloat;
        Parameters[14].Value:=Hrg2_1.AsFloat;
        Parameters[15].Value:=Hrg3_1.AsFloat;
        Parameters[16].Value:=Hrg1_2.AsFloat;
        Parameters[17].Value:=Hrg2_2.AsFloat;
        Parameters[18].Value:=Hrg3_2.AsFloat;
        Parameters[19].Value:=Hrg1_3.AsFloat;
        Parameters[20].Value:=Hrg2_3.AsFloat;
        Parameters[21].Value:=Hrg3_3.AsFloat;
        Parameters[22].Value:=QntMin.AsFloat;
        Parameters[23].Value:=QntMax.AsFloat;
        Parameters[24].Value:=Keterangan.Text;
        Parameters[25].Value:=Aktif.ItemIndex;
        Parameters[26].Value:=CB.Checked;
        Parameters[27].Value:=NamaBrg2.Text;
        Parameters[28].Value:=Toleransi.Value;
        Parameters[29].Value:=0;
        Parameters[30].Value:=False;
        Parameters[31].Value:=1;
        Parameters[32].Value:=KodeBag.Text;
        Parameters[33].Value:=KodeBhn.Text;

     end
     else
     begin
        Parameters[2].Value:=QuViewKODEBRG.AsString;
               // Parameters[33].Value:=KodeBhn.Text;
     end;

     try
      execproc;
      if Mode='I' then
      begin
        QuView.Requery;
        QuView.Locate('kodebrg',KodeBrg.Text,[LOP,LOC]);
        LoggingData(IDUser,Mode,'BRG','','Kode Brg = '+frSubBarang.KodeBrg.Text+
                    ' , Nama Brg = '+frSubBarang.NamaBrg.Text);
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
        LoggingData(IDUser,Mode,'BRG','','Kode Brg = '+frSubBarang.KodeBrg.Text+
                    ' , Nama Brg = '+frSubBarang.NamaBrg.Text);
      end
      Else if Mode='D' then
      begin
        LoggingData(IDUser,Mode,'BRG','','Kode Brg = '+QuViewKODEBRG.AsString+
                    ' , Nama Brg = '+QuViewNAMABRG.AsString);
        QuView.Requery;
      end;
    except
      MsgProsesGagal(Mode);
    end;
   end;
end;

procedure TFrBarang.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrBarang.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
    begin
        Action:=caFree;
    end
    else
        Action:=caNone;
end;

procedure TFrBarang.FormDestroy(Sender: TObject);
begin
 FrBarang:=nil;
end;

procedure TFrBarang.FormShow(Sender: TObject);
begin
  ISTampil := 2;
  Tampildata(isTampil);
  activeControl:=dxDBGrid1;
end;

procedure TFrBarang.ToolButton10Click(Sender: TObject);
begin
  Tampildata(isTampil);
end;

procedure TFrBarang.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrBarang.ExportExcel1Click(Sender: TObject);
begin
  if (IsExcel) then
  begin
      Save('xls', 'Microsoft Excel (*.xls)|*.xls', Frbarang.Caption, dxDBGrid1.SaveToXLS);
      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
  end else
  begin
      MsgTidakBerhakExportData;
     ActiveControl:=dxDBGrid1;
  end;

end;

procedure TFrBarang.AutoFilter1Click(Sender: TObject);
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

procedure TFrBarang.ShowGrid1Click(Sender: TObject);
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

procedure TFrBarang.ShowHeader1Click(Sender: TObject);
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

procedure TFrBarang.Show1Click(Sender: TObject);
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

procedure TFrBarang.ToolButton1Click(Sender: TObject);
begin
  if IsTambah then
  begin
    Application.CreateForm(TfrSubBarang, frSubBarang);
    frSubBarang.IsSimpan:=True;
    frSubBarang.ShowModal;
  end
  else
  begin
      MsgTidakBerhakTambahData;
     ActiveControl:=dxDBGrid1;
  end;

end;

procedure TFrBarang.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrBarang.ToolButton2Click(Sender: TObject);
begin
  if IsKoreksi then
  begin
    Application.CreateForm(TfrSubBarang,frSubBarang);
    frSubBarang.IsSimpan:=False;
    AmbilData;
    frSubBarang.ActiveControl:=frSubBarang.NamaBrg;
    frSubBarang.ShowModal;
  end
  else
  begin
     MsgTidakBerhakHapusData;
     ActiveControl:=dxDBGrid1;
  end;
end;

procedure TFrBarang.ToolButton3Click(Sender: TObject);
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
               [QuViewKodeBrg.asstring, QuViewNamaBrg.asstring]));
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
  //ActiveControl := dxDBGrid1;
end;

procedure TFrBarang.MultiSelect1Click(Sender: TObject);
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

procedure TFrBarang.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);

end;

procedure TFrBarang.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;
begin
{  Value := ANode.Values[dxDBGrid1.ColumnByFieldName('isaktif').Index];
  if Value=0 then
  begin
     AFont.Color:=clRed;
  end;}
    if ANode.HasChildren then
  Exit;

  if not AFocused then
  begin
    if ANode.Index mod 2 =0 then
       AColor:=$00ffefe1
    else
       AColor:=$00efd7c9;
       AFont.Color:=clBlack;
  end;

  Value := ANode.Values[dxDBGrid1.ColumnByFieldName('isaktif').Index];
  if Value=0 then
  begin
     AFont.Color:=clRed;
  end;
end;

procedure TFrBarang.SemuaClick(Sender: TObject);
begin
   ToolButton12.Caption:=Semua.Caption;
   PopupMenu2.Items.Items[0].Checked := True;
   PopupMenu2.Items.Items[1].Checked := False;
   PopupMenu2.Items.Items[2].Checked := False;
   ISTampil := 2;
   Tampildata(isTampil);
end;

procedure TFrBarang.AktifClick(Sender: TObject);
begin
   ToolButton12.Caption:=Aktif.Caption;
   PopupMenu2.Items.Items[0].Checked := False;
   PopupMenu2.Items.Items[1].Checked := True;
   PopupMenu2.Items.Items[2].Checked := False;
   ISTampil := 1;
   Tampildata(isTampil);
end;

procedure TFrBarang.TidakAktifClick(Sender: TObject);
begin
   ToolButton12.Caption:=TidakAktif.Caption;
   PopupMenu2.Items.Items[0].Checked := False;
   PopupMenu2.Items.Items[1].Checked := False;
   PopupMenu2.Items.Items[2].Checked := True;
   ISTampil := 0;
   Tampildata(isTampil);
end;

procedure TFrBarang.dxDBGrid1CustomDrawFooter(Sender: TObject;
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

procedure TFrBarang.FormCreate(Sender: TObject);
begin
  Panel1.Color:=FrSetForm.PanelMain.Color;
  ToolBar1.Color:=FrSetForm.ToolBarMain.Color;
end;

end.
