unit FrmHPPProduksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  StdCtrls, ExtCtrls, Menus, dxGridMenus,ShellApi;

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
    ToolButton10: TToolButton;
    SaveDialog: TSaveDialog;
    dxDBGrid1: TdxDBGrid;
    MultiSelect1: TMenuItem;
    Sp_Merk: TADOStoredProc;
    ToolButton8: TToolButton;
    dxDBGrid1Bulan: TdxDBGridMaskColumn;
    dxDBGrid1Tahun: TdxDBGridMaskColumn;
    dxDBGrid1KodeBrg: TdxDBGridColumn;
    dxDBGrid1HPP: TdxDBGridColumn;
    QuViewbulan: TIntegerField;
    QuViewTahun: TIntegerField;
    QuViewKOdeBrg: TStringField;
    QuViewHpp: TBCDField;
    QuViewnmBulan: TStringField;
    QuViewNamabrg: TStringField;
    QuViewJns_Kertas: TStringField;
    QuViewUkr_Kertas: TStringField;
    QuViewGSM: TBCDField;
    dxDBGrid1Namabrg: TdxDBGridMaskColumn;
    dxDBGrid1Jns_Kertas: TdxDBGridMaskColumn;
    dxDBGrid1Ukr_Kertas: TdxDBGridMaskColumn;
    dxDBGrid1GSM: TdxDBGridMaskColumn;
    ToolButton11: TToolButton;
    QuSource: TADOQuery;
    QuSourceKeyUrut: TIntegerField;
    QuSourceTanggal: TDateTimeField;
    QuSourceUrut: TIntegerField;
    QuSourceKeyNIK: TIntegerField;
    QuSourceNoAbsen: TStringField;
    QuSourceJamMasuk: TDateTimeField;
    QuSourceJamKeluar: TDateTimeField;
    QuSourceNIK: TStringField;
    QuSourceNama: TStringField;
    QuSourceKodeDept: TStringField;
    QuSourceKodeShf: TStringField;
    QuSourceKodeJab: TStringField;
    QuSourceKodeESL: TStringField;
    QuSourceKeyNIKAbsensi: TIntegerField;
    QuSourceUrutAbsensi: TIntegerField;
    QuSourceKodeTipeAbsensi: TStringField;
    DsSource: TDataSource;
    OpenDialog1: TOpenDialog;
    mmDataAsli: TMemo;
    PBProses: TProgressBar;
    LokasiFileTxt: TEdit;
    QuViewSAT1: TStringField;
    QuViewSAT2: TStringField;
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
    procedure imp;
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
    procedure GetData(bulan,tahun:integer);
    procedure ToolButton11Click(Sender: TObject);

  private
    { Private declarations }
    mDataKe: array [1..5] of String;
    procedure SimpanKeTabelTemp;
  public
    { Public declarations }
    mPosisi : string;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel : boolean;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrHPPProduksi: TFrHPPProduksi;
  S: array[0..255] of char;
  BM: TBookmark;

implementation
uses myModul,Myprocedure,MyGlobal,FrmMenu, FrmSubHPPProduksi ;
{$R *.dfm}

procedure TFrHPPProduksi.imp;
begin
  with dm.QuCari do
  begin
    close;
    sql.Clear;
    sql.add('insert into dbHPPProduksi (kodebrg,bulan,tahun)');
    sql.add('select a.kodebrg,:0 bulan,:1 tahun from dbbarang a ');
    sql.add('where A.kodebrg not in (select kodebrg from dbHPPProduksi where bulan =:2 and tahun =:3) and a.KodeGrp in (''BJ'',''BU'') ');
    Prepared;
    parameters[0].Value :=StrToInt(PeriodBln);
    parameters[1].Value :=StrToInt(PeriodThn);
    parameters[2].Value :=StrToInt(PeriodBln);
    parameters[3].Value :=StrToInt(PeriodThn);
    ExecSQL;
    {close;
    sql.Clear;
    sql.add('select a.kodebrg, a.HPPBrg HPP from dbHPPProduksi a where a.Bulan=:0 and a.Tahun=:1 ');
    Prepared;
    if StrToInt(PeriodBln)=1 then
    begin
      parameters[0].Value :=12;
      parameters[1].Value :=StrToInt(PeriodThn)-1;
    end
    else
    begin
      parameters[0].Value :=StrToInt(PeriodBln)-1;
      parameters[1].Value :=StrToInt(PeriodThn);
    end;
    open;}
  end;
  {DM.QuCari.DisableControls;
  DM.QuCari.First;
  while Not DM.QuCari.Eof do
  begin
    with DM.QuKOde do
    begin
      close;
      Sql.Clear;
      Sql.Add('update dbHPPProduksi set HPPBrg=:0 where kodebrg=:1 and Bulan=:2 and Tahun=:3');
      Prepared;
      Parameters[0].Value := DM.QuCari.FieldByName('HPP').AsFloat;
      Parameters[1].Value := DM.QuCari.FieldByName('kodebrg').AsString;
      parameters[2].Value :=StrToInt(PeriodBln);
      parameters[3].Value :=StrToInt(PeriodThn);
      ExecSQL;
    end;
    DM.QuCari.Next;
  end; }
end;

procedure TFrHPPProduksi.GetData(bulan,tahun:integer);
begin
  with quview do
  begin
    Close;
    SQL.Strings[1]:='select @Tahun='+IntToStr(tahun)+', @Bulan='+IntToStr(bulan);
    Open;
  end;

end;

procedure TFrHPPProduksi.AmbilData;
begin
   with FrSubHPPProduksi do
   begin
      Kodebrg.Text:=QuViewKodeBrg.AsString;
      LblKodeBrg.Caption :='[ '+QuViewNamabrg.AsString+' Satuan 1 : '+QuViewSAT1.AsString+' Satuan 2 : '+QuViewSAT2.AsString+' ]';
      Bulan.value:=QuView.fieldbyname('Bulan').AsInteger;
      tahun.value:=QuViewtahun.AsInteger;
      Hpp.Value:=QuViewhpp.AsFloat;
      ActiveControl := HPP;
   end;
end;

procedure TFrHPPProduksi.SimpanData(Mode:Char);
begin
  With Sp_Merk do
  begin
    BM:=QuView.GetBookmark;
    Close;
    Prepared;
    Parameters[1].Value := Mode;
    if (Mode='D') then
      begin
       Parameters[6].Value := QuView.FieldbyName('Bulan').AsInteger;
       Parameters[7].Value := QuView.FieldbyName('tahun').AsInteger;
       Parameters[8].Value := QuView.FieldbyName('KOdeBrg').asstring ;
      end
    else
    if (Mode='U') then
      begin
      Parameters[2].Value := FrSubHPPProduksi.Bulan.Text;
      Parameters[3].Value := FrSubHPPProduksi.Tahun.Text;
      Parameters[4].Value := FrSubHPPProduksi.kodebrg.text;
      Parameters[5].Value := FrSubHPPProduksi.HPP.value;
      Parameters[6].Value := QuView.FieldbyName('Bulan').AsInteger;
      Parameters[7].Value := QuView.FieldbyName('tahun').AsInteger;
      Parameters[8].Value := QuView.FieldbyName('KOdeBrg').asstring ;
      end
    else
    begin
      Parameters[2].Value := FrSubHPPProduksi.Bulan.Text;
      Parameters[3].Value := FrSubHPPProduksi.Tahun.Text;
      Parameters[4].Value := FrSubHPPProduksi.kodebrg.text;
      Parameters[5].Value := FrSubHPPProduksi.HPP.value;
      Parameters[6].Value := QuView.FieldbyName('Bulan').AsInteger;
      Parameters[7].Value := QuView.FieldbyName('tahun').AsInteger;
      Parameters[8].Value := QuView.FieldbyName('KOdeBrg').asstring ;
    end;
    try
      execproc;
      if Mode='I' then
      begin
        QuView.Requery;
        QuView.Locate('KOdeBrg',FrSubHPPProduksi.KOdebrg.Text,[LOP,LOC]);
        //LoggingData(IDUser,Mode,'KodeBrg','','Kode barang = '+FrSubHPPProduksi.KodeBrg.Text+
        //            ' , Bulan = '+FrSubHPPProduksi.Bulan.Text);
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
        //LoggingData(IDUser,Mode,'KOdeBrg','','Kode barang = '+FrSubHPPProduksi.KOdeBrg.Text+
        //            ' , Bulan = '+FrSubHPPProduksi.Bulan.Text);
      end
      Else if Mode='D' then
      begin
        //LoggingData(IDUser,Mode,'KOdeBrg','','Kode Barang = '+QuViewKodebrg.AsString+
        //            ' , Bulan = '+QuView.fieldbyname('Bulan').AsString);
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
var x : Boolean;
begin
 imp;
 ToolButton10.Click;
end;

procedure TFrHPPProduksi.ToolButton10Click(Sender: TObject);
begin
 GetData(strtoint(PeriodBln),StrToInt(PeriodThn));
end;

procedure TFrHPPProduksi.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrHPPProduksi.ExportExcel1Click(Sender: TObject);
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

procedure TFrHPPProduksi.AutoFilter1Click(Sender: TObject);
begin
    if dxDBGrid1.Filter.Active=false then
    dxDBGrid1.Filter.Active:=true
    else
    dxDBGrid1.Filter.Active:=false;

end;

procedure TFrHPPProduksi.ShowGrid1Click(Sender: TObject);
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

procedure TFrHPPProduksi.ShowHeader1Click(Sender: TObject);
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

procedure TFrHPPProduksi.Show1Click(Sender: TObject);
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
    if FrSubHPPProduksi.ModalResult=mrOK then
    begin
      With QuView do
      begin
        Locate('bulan;tahun;Kodebrg',VarArrayOf([frSubHPPProduksi.bulan.value,frSubHPPProduksi.tahun.Value,frSubHPPProduksi.kodebrg.Text]),[LOC, LOP]);
      end;
    end;
    ActiveControl:=dxDBGrid1;
  end else
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
      StrPCopy(S,Format('Anda yakin Kode %s dan bulan %s dan tahun %s dihapus ?',
           [QuView.Fields[2].asstring,
            QuView.Fields[0].asstring,
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

procedure TFrHPPProduksi.MultiSelect1Click(Sender: TObject);
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

procedure TFrHPPProduksi.ppReport1PreviewFormCreate(Sender: TObject);
begin
//  TppReport(Sender).PreviewForm.WindowState:=wsMaximized;
//  TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zs100Percent;

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

  if AColumn = dxDBGrid1.Columns[0] then
  begin
    AColor := $00ffefe1;
    AFont.Color:=clblack;
    AFont.Style := AFont.Style + [fsBold];
  end;


end;

procedure TFrHPPProduksi.SimpanKeTabelTemp;
var i, j, xJmlBaris, xPosTab, xKeyUrut: Integer;
    sLineAsli, xChrTab, sLineTemp, sSQLText: String;
    xTglInput: TDateTime;
begin
 { with QuSource do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Delete From dbSPBLampiran where NoSPB=:0 and UrutSPB=:1 ');
    Prepared;
    Parameters[0].Value:=NoBukti.Text;
    Parameters[1].Value:=QuBeliurut.AsInteger;
    ExecSQL;
  end;   }

  xChrTab:=chr(9);
  xJmlBaris:=mmDataAsli.Lines.Count;
  PBProses.Max:=xJmlBaris;
  sLineAsli:=mmDataAsli.Lines.Strings[0];
  i:=0;
  while i<xJmlBaris do
  begin
    sSQLText:='';
    sLineAsli:=mmDataAsli.Lines.Strings[i];
    for j := 1 to 6 do
    begin
      xPosTab:=Pos(xChrTab, sLineAsli);
      if xPosTab=0 then mDataKe[j]:=sLineAsli
      else if xPosTab=1 then
      begin
        mDataKe[j]:='';
        sLineTemp:=copy(sLineAsli,xPosTab+1, length(sLineAsli)-xPosTab);
      end else
      begin
        mDataKe[j]:=copy(sLineAsli,1,xPosTab-1);
        sLineTemp:=copy(sLineAsli,xPosTab+1, length(sLineAsli)-xPosTab);
      end;
      sLineAsli:=sLineTemp;
    end;

    try
      if (mDataKe[1]<>'NOPALLET') then
      begin
        with FrHPPProduksi.Sp_Merk do
        begin
          close;
          Prepared;
          Parameters[1].Value:='I';
          Parameters[2].Value := strtoint(mDataKe[1]);
          Parameters[3].Value := strtoint(mDataKe[2]);
          Parameters[4].Value := mDataKe[3];
          Parameters[5].Value := StrToFloat(mDataKe[5]);

          try
            ExecProc;
          except
           ShowMessage('Proses Gagal !')
          end;
        end;
      end;
    except

    end;
    i:=i+1;
    PBProses.Position:=i;
    Application.ProcessMessages;
  end;
  PBProses.Position:=0;
end;


procedure TFrHPPProduksi.ToolButton11Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    LokasiFileTxt.Text:=OpenDialog1.FileName;
    mmDataAsli.Lines.LoadFromFile(OpenDialog1.FileName);
    PBProses.Visible:=True;
    Try
      SimpanKeTabelTemp;
      except
    end;
    PBProses.Visible:=False;
    frHPPProduksi.AmbilData;
    //QuSource.Close;
    //QuSource.Open;
  end;
end;

end.
