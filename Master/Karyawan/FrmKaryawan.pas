unit FrmKaryawan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  ImgList, StdCtrls, ExtCtrls, Menus,
  dxGridMenus,Shellapi;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrKaryawan = class(TForm)
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
    dxDBGrid1: TdxDBGrid;
    MultiSelect1: TMenuItem;
    Sp_VLS: TADOStoredProc;
    ToolButton8: TToolButton;
    dxDBGrid1NIK: TdxDBGridMaskColumn;
    dxDBGrid1Nama: TdxDBGridMaskColumn;
    dxDBGridKelamin: TdxDBGridMaskColumn;
    dxDBGridTmpLahir: TdxDBGridColumn;
    QuViewKeyNIK: TIntegerField;
    QuViewTipeTrans: TStringField;
    QuViewNoBukti: TStringField;
    QuViewNIK: TStringField;
    QuViewNama: TStringField;
    QuViewNamaPanggilan: TStringField;
    QuViewKelamin: TStringField;
    QuViewTmpLahir: TStringField;
    QuViewTglLahir: TDateTimeField;
    QuViewAgama: TStringField;
    QuViewTinggi: TBCDField;
    QuViewBerat: TBCDField;
    QuViewBerkacaMata: TWordField;
    QuViewDarah: TStringField;
    QuViewNomorKTP: TStringField;
    QuViewAlamatKTP: TStringField;
    QuViewKecamatanKTP: TStringField;
    QuViewKabupatenKTP: TStringField;
    QuViewPropinsiKTP: TStringField;
    QuViewKodePosKTP: TStringField;
    QuViewAlamatRmh: TStringField;
    QuViewKecamatanRmh: TStringField;
    QuViewKabupatenRmh: TStringField;
    QuViewPropinsiRmh: TStringField;
    QuViewKodePosRmh: TStringField;
    QuViewTeleponHP: TStringField;
    QuViewKodePendAkhir: TStringField;
    QuViewKetPendAkhir: TStringField;
    QuViewStatusTempTinggal: TStringField;
    QuViewHubungan: TWordField;
    QuViewReferensi: TStringField;
    QuViewRekomendasi: TWordField;
    QuViewNamaR: TStringField;
    QuViewJabatanR: TStringField;
    QuViewNamaInstR: TStringField;
    QuViewAlamatR: TStringField;
    QuViewTglMasuk: TDateTimeField;
    QuViewTglKeluar: TDateTimeField;
    QuViewBankAccount: TStringField;
    QuViewNomorAstek: TStringField;
    QuViewTglAstek: TDateTimeField;
    QuViewKodeShf: TStringField;
    QuViewKodeJab: TStringField;
    QuViewKodeDept: TStringField;
    QuViewKodeESL: TStringField;
    QuViewKodeGrade: TStringField;
    QuViewGajiPokok: TBCDField;
    QuViewTnjJabatan: TBCDField;
    QuViewTnjKehadiran: TBCDField;
    QuViewTnjTransport: TBCDField;
    QuViewTnjMakan: TBCDField;
    QuViewTnjLain2: TBCDField;
    QuViewTnjHaid: TBCDField;
    QuViewJKK: TBCDField;
    QuViewJHT: TBCDField;
    QuViewJPK: TBCDField;
    QuViewJKM: TBCDField;
    QuViewPrima: TBCDField;
    QuViewTnjPajak: TBooleanField;
    QuViewStsPJK: TStringField;
    QuViewStsAST: TStringField;
    QuViewTanggung: TBCDField;
    QuViewNPWP: TStringField;
    QuViewAktif: TWordField;
    QuViewLamaKontrak: TIntegerField;
    QuViewTglAkhirKontrak: TDateTimeField;
    QuViewIDUserInput: TStringField;
    QuViewTglInput: TDateTimeField;
    dxDBGridTglLahir: TdxDBGridColumn;
    dxDBGridAgama: TdxDBGridColumn;
    dxDBGridTinggi: TdxDBGridColumn;
    dxDBGridberat: TdxDBGridColumn;
    dxDBGridNomorKtp: TdxDBGridColumn;
    dxDBGridTglMasuk: TdxDBGridColumn;
    dxDBGridtelpHP: TdxDBGridColumn;
    QuViewIsSales: TBooleanField;
    QuViewxsales: TStringField;
    QuViewProduksi: TWordField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
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
    procedure FormShow(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    mPosisi : string;
    IsTambah,IsKoreksi,IsHapus, IsCetak , IsExcel: Boolean;
    Procedure Tampildata;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrKaryawan: TFrKaryawan;
  S: array[0..255] of char;
  BM:TBookMark;
implementation

uses myModul,Myprocedure,MyGlobal, FrmSubValas, FrmSubkaryawan, PBNumEdit ;
{$R *.dfm}

Procedure TFrKaryawan.Tampildata;
begin
  QuView.Close;
  QuView.Open;
end;

procedure TFrKaryawan.AmbilData;
begin
  with FrSUbkaryawan do
  begin
    Nik.Text :=QuView.fieldbyname('Nik').AsString;
    Nama.Text :=QuViewNama.AsString;
    Alamat.Text :=QuViewAlamatRmh.AsString;
    TelponHp.Text :=QuViewTeleponHP.AsString;
    KOdepos.Text :=QuViewKodePosRmh.AsString;
    if QuViewKelamin.AsString='M' then
    Kelamin.ItemIndex :=0
    else  if QuViewKelamin.asstring='F' then
     Kelamin.ItemIndex :=1;
    NoKTP.text   :=QuViewNomorKTP.AsString;
    tempatlahir.Text :=QuViewTmpLahir.AsString;
    TglKeluar.Date :=QuViewTglKeluar.AsDateTime;
    Tanggallahir.Date :=QuViewTglLahir.AsDateTime;
    Agama.Text :=QuViewAgama.AsString;
    KetPendidikan.text   :=QuViewKetPendAkhir.AsString;
    Tinggi.Value :=QuViewTinggi.AsFloat;
    berat.value :=QuViewBerat.AsFloat;
    tglmasuk.date :=QuViewTglMasuk.AsDateTime;
    LamaKontrak.value   :=QuViewLamaKontrak.AsInteger;
    TglakhirKontrak.Date :=QuViewTglAkhirKontrak.AsDateTime;
    NPWP.Text:=QuViewNPWP.AsString;
    Aktif.ItemIndex:=QuViewAktif.AsInteger;
    if QuViewxsales.AsString='Sales' then
    Issales.ItemIndex:=1
    else
    Issales.ItemIndex:=0;
    produksi.ItemIndex:=QuViewProduksi.AsInteger;
  end;
end;

procedure TFrKaryawan.SimpanData(Mode:Char);
var xKeyNIK: Integer;
begin
  //Caption:=Quview.FieldbyName('NIK').asstring;
  //DataBersyarat('Select max(Keynik) Keynik,:0 xx From Dbkaryawan',[QuViewNIK.AsVariant],Dm.Qucari);
    if Mode='I' then
    begin
      DataBuka('select top 1 KeyNIK from dbKaryawan order by KeyNIK desc ',DM.QuCari);
      if DM.QuCari.IsEmpty then
        xKeyNIK:=1
      else
        xKeyNIK:=DM.QuCari.FieldByName('KeyNIK').AsInteger+1;
    end;

    BM:=QuView.GetBookmark;
    with Dm.QuCari2 do
    begin
     CLose ;
     Sql.Clear;
     if Mode='I' then
        begin
         Sql.Add('Insert Into Dbkaryawan  (KeyNik,NIK,Nama,Kelamin,Tmplahir,TglLahir,') ;
         Sql.add('Agama,Tinggi,Berat,NomorKtp,AlamatRmh,KodePosRmh,TeleponHP,KetPendAkhir,');
         Sql.add('TglMasuk,TglKeluar,NPWP,Aktif,lamaKontrak,TglAkhirKontrak,Issales,produksi)');
         Sql.add('values (:0,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18 ');
         Sql.add(',:19,:20,:21)');
         //
         //if Dm.QuCari.IsEmpty then
           Parameters[0].Value :=xKeyNIK;
         //else
         //  Parameters[0].Value :=Dm.QuCari.fieldbyname('Keynik').AsInteger +1;

         Parameters[1].Value := FrSubKaryawan.NIK.Text;
         Parameters[2].Value := FrSubKaryawan.Nama.Text;
         if FrSubKaryawan.Kelamin.ItemIndex=0 then
         Parameters[3].Value := 'M'
         else if FrSubKaryawan.Kelamin.ItemIndex=1 then
         Parameters[3].Value := 'F';
         Parameters[4].Value := FrSubKaryawan.tempatlahir.Text;
         Parameters[5].Value := FrSubKaryawan.Tanggallahir.Date;
         Parameters[6].Value := FrSubKaryawan.Agama.Text;
         Parameters[7].Value := FrSubKaryawan.Tinggi.Value;
         Parameters[8].Value := FrSubKaryawan.Berat.Value;
         Parameters[9].Value := FrSubKaryawan.NoKTP.Text;
         Parameters[10].Value := FrSubKaryawan.Alamat.Text;
         Parameters[11].Value := FrSubKaryawan.KOdepos.text;
         Parameters[11].Value := FrSubKaryawan.TelponHp.Text;
         Parameters[12].Value := FrSubKaryawan.KetPendidikan.Text;
         Parameters[14].Value := FrSubKaryawan.tglmasuk.date;
         Parameters[15].Value := FrSubKaryawan.TglKeluar.date;
         Parameters[16].Value := FrSubKaryawan.NPWP.text;
         if FrSubKaryawan.Aktif.ItemIndex=0 then
         Parameters[17].Value := 0
         else
         Parameters[17].Value := 1;
         Parameters[18].Value := FrSubKaryawan.LamaKontrak.value;
         Parameters[19].Value := FrSubKaryawan.tglakhirKontrak.date;

         if (FrSubKaryawan.Issales.ItemIndex=0) or (FrSubKaryawan.Issales.ItemIndex=1)then
         Parameters[20].Value := FrSubKaryawan.Issales.ItemIndex
         else
         begin
         ShowMessage('Pilih Status Karyawan');
         Exit;
         end;
         Parameters[21].Value := FrSubKaryawan.Produksi.ItemIndex;
        end
     else if Mode='U'  then
        begin
        Sql.add('update dbkaryawan set Nik=:0,Nama=:1,Kelamin=:2,Tmplahir=:3,TglLahir=:4,');
        Sql.add('Agama=:5,Tinggi=:6,Berat=:7,NomorKtp=:8,AlamatRmh=:9,KodePosRmh=:10,TeleponHP=:11,KetPendAkhir=:12,');
        Sql.add('TglMasuk=:13,TglKeluar=:14,NPWP=:15,Aktif=:16,lamaKontrak=:17,TglAkhirKontrak=:18,Issales=:19,produksi=:20');
        Sql.add('Where KeyNik=:21');

         Parameters[0].Value := FrSubKaryawan.NIK.Text;
         Parameters[1].Value := FrSubKaryawan.Nama.Text;
         if FrSubKaryawan.Kelamin.ItemIndex=0 then
         Parameters[2].Value := 'M'
         else if FrSubKaryawan.Kelamin.ItemIndex=1 then
         Parameters[2].Value := 'F';
         Parameters[3].Value := FrSubKaryawan.tempatlahir.Text;
         Parameters[4].Value := FrSubKaryawan.Tanggallahir.Date;
         Parameters[5].Value := FrSubKaryawan.Agama.Text;
         Parameters[6].Value := FrSubKaryawan.Tinggi.Value;
         Parameters[7].Value := FrSubKaryawan.Berat.Value;
         Parameters[8].Value := FrSubKaryawan.NoKTP.Text;
         Parameters[9].Value := FrSubKaryawan.Alamat.Text;
         Parameters[10].Value := FrSubKaryawan.KOdepos.text;
         Parameters[11].Value := FrSubKaryawan.TelponHp.Text;
         Parameters[12].Value := FrSubKaryawan.KetPendidikan.Text;
         Parameters[13].Value := FrSubKaryawan.tglmasuk.date;
         Parameters[14].Value := FrSubKaryawan.TglKeluar.date;
         Parameters[15].Value := FrSubKaryawan.NPWP.text;
         Parameters[16].Value := FrSubKaryawan.Aktif.ItemIndex;
         Parameters[17].Value := FrSubKaryawan.LamaKontrak.value;
         Parameters[18].Value := FrSubKaryawan.tglakhirKontrak.date;
         if (FrSubKaryawan.Issales.ItemIndex=0) or (FrSubKaryawan.Issales.ItemIndex=1)then
         Parameters[19].Value := FrSubKaryawan.Issales.ItemIndex
         else
         begin
         ShowMessage('Pilih Status Karyawan');
         Exit;
         end;

         Parameters[20].Value := FrSubKaryawan.Produksi.ItemIndex;
         Parameters[21].Value := QuViewKeyNIK.AsInteger;
        end

     Else if Mode='D' then
        begin
        Sql.add('Delete From Dbkaryawan Where Keynik=:0');
         Parameters[0].Value:=QuViewKeyNIK.AsInteger;
        end;
     ExecSQL;
    end;
    try
      if Mode='I' then
      begin
        QuView.Requery;
        QuView.Locate('Keynik',Dm.QuCari.fieldByname('Keynik').AsInteger+1,[LOP,LOC]);
        LoggingData(IDUser,Mode,'KRY','',
                    ' NIK = '+QuViewNIK.AsString +
                    ' Nama = '+QuotedStr(FrSubKaryawan.Nama.Text));
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
        LoggingData(IDUser,Mode,'KRY','',
                    ' NIK = '+ FrSubKaryawan.Nik.Text +
                    ' ,Nama = '+FrSubKaryawan.Nama.Text);
      end
      Else if Mode='D' then
      begin
        LoggingData(IDUser,Mode,'KRY','',
                    ' NIK = '+  IntToStr(QuViewKeyNIK.AsInteger) +
                    ', Nama = '+ QuViewNama.AsString);
        QuView.Requery;
      end;
    except
      If (Mode='I') Or (Mode='U') then
         showmessage('Proses Gagal !, Data Sudah Ada')
      else If (Mode='D') then
         showmessage('Proses Gagal !, Karyawan berkaitan dengan transaksi');
    end;

end;

procedure TFrKaryawan.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrKaryawan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
    begin
      Action:=caFree;
    end
    else
        Action:=caNone;
end;

procedure TFrKaryawan.FormDestroy(Sender: TObject);
begin
  FrKaryawan:=nil;
end;

procedure TFrKaryawan.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrKaryawan.ExportExcel1Click(Sender: TObject);
begin
  if (IsExcel) then
  begin
      Save('xls', 'Microsoft Excel (*.xls)|*.xls', Frkaryawan.Caption, dxDBGrid1.SaveToXLS);
      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
      //LoggingData(Caption,'User '+IdUser+' Export Data '+ SaveDialog.FileName,dm.qucari);
  end else
  begin
      ShowMessage('Anda tidak berhak Mengeksport Excel');
  end;
end;

procedure TFrKaryawan.AutoFilter1Click(Sender: TObject);
begin
    if dxDBGrid1.Filter.Active=false then
    dxDBGrid1.Filter.Active:=true
    else
    dxDBGrid1.Filter.Active:=false;

end;

procedure TFrKaryawan.ShowGrid1Click(Sender: TObject);
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

procedure TFrKaryawan.ShowHeader1Click(Sender: TObject);
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

procedure TFrKaryawan.Show1Click(Sender: TObject);
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

procedure TFrKaryawan.ToolButton1Click(Sender: TObject);
begin
  if IsTambah then
  begin
    Application.CreateForm(TFrSubKaryawan, FrSubKaryawan);
    FrSubKaryawan.IsSimpan:=True;
    FrSubKaryawan.ShowModal;
  end else
  begin
      ShowMessage('Anda tidak berhak Menambah Data');
  end;
end;

procedure TFrKaryawan.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrKaryawan.ToolButton2Click(Sender: TObject);
begin
  if IsKoreksi then
  begin
     Application.CreateForm(TFrSubKaryawan, FrSubKaryawan);
     FrSubKaryawan.IsSimpan:=false;
     AmbilData;
     FrSubKaryawan.ShowModal;
     ActiveControl:=dxDBGrid1;
  end else
  begin
     ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
  end;
     
end;

procedure TFrKaryawan.ToolButton3Click(Sender: TObject);
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
         with dm.QuCari do
         begin
          SimpanData('D');
         end;
//         ViewField('Select KodeVls, Namavls, Kurs from dbvalas Order by KodeVls '
//         ,[],['Kode Valas','Nama Valas', 'Kurs'],[100,200, 100],quView,dsView,dxDbGrid1,false,Frvalas);
      end;
   end;
  end else
  begin
     ShowMessage('Anda Tidak Berhak Menghapus Data');
  end;

end;

procedure TFrKaryawan.MultiSelect1Click(Sender: TObject);
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

procedure TFrKaryawan.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);

end;

procedure TFrKaryawan.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrKaryawan.dxDBGrid1CustomDrawFooter(Sender: TObject;
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

procedure TFrKaryawan.FormShow(Sender: TObject);
begin
  Tampildata;
  ActiveControl:=dxDBGrid1;
end;

procedure TFrKaryawan.ToolButton10Click(Sender: TObject);
begin
  Tampildata;
end;

end.
