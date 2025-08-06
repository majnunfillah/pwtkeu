unit FrmAktivaFk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  ImgList, StdCtrls, ExtCtrls, Menus, ppBands, ppVar, ppCtrls, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,ppviewr,
  dxGridMenus, frxClass, frxDBSet, dxDBTLCl, dxGrClms, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid,cxExportGrid4Link,ShellApi,
  cxGridBandedTableView, cxGridDBBandedTableView, cxLookAndFeels,
  cxLookAndFeelPainters;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrAktivaFk = class(TForm)
    ToolBar1: TToolBar;
    ToolButton2: TToolButton;
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
    ToolButton7: TToolButton;
    ToolButton9: TToolButton;
    ImageList2: TImageList;
    ToolButton10: TToolButton;
    SaveDialog: TSaveDialog;
    MultiSelect1: TMenuItem;
    sp_barang: TADOStoredProc;
    frxDBDataset1: TfrxDBDataset;
    adoqBarang: TADOQuery;
    frxReport1: TfrxReport;
    PopupMenu2: TPopupMenu;
    Semua: TMenuItem;
    Aktif: TMenuItem;
    TidakAktif: TMenuItem;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    tvAktiva: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    tvAktivaKodeAktiva: TcxGridDBColumn;
    tvAktivaTanggal: TcxGridDBColumn;
    tvAktivaNamaDevisi: TcxGridDBColumn;
    tvAktivaMyTipe: TcxGridDBColumn;
    tvAktivaNamaPerkiraan: TcxGridDBColumn;
    tvAktivaKeterangan: TcxGridDBColumn;
    tvAktivaNamabag: TcxGridDBColumn;
    tvAktivaQuantity: TcxGridDBColumn;
    tvAktivaSusut: TcxGridDBColumn;
    tvAktivaakumulasi: TcxGridDBColumn;
    tvAktivaBiaya: TcxGridDBColumn;
    tvAktivaPErsenBiaya1: TcxGridDBColumn;
    tvAktivaBiaya2: TcxGridDBColumn;
    tvAktivaPersenBiaya2: TcxGridDBColumn;
    ShowGroupPanel1: TMenuItem;
    tvAktivaMetode: TcxGridDBColumn;
    Panel1: TPanel;
    TipeAktiva: TComboBox;
    Devisi: TComboBox;
    Label2: TLabel;
    Label1: TLabel;
    ToolButton4: TToolButton;
    cxGrid1Level2: TcxGridLevel;
    tvDetail: TcxGridDBTableView;
    DSDetail: TDataSource;
    QuDetail: TADOQuery;
    tvDetailBulan: TcxGridDBColumn;
    tvDetailTahun: TcxGridDBColumn;
    tvDetailAwal: TcxGridDBColumn;
    tvDetailAwalD: TcxGridDBColumn;
    tvDetailMD: TcxGridDBColumn;
    tvDetailDMD: TcxGridDBColumn;
    tvDetailMK: TcxGridDBColumn;
    tvDetailDMK: TcxGridDBColumn;
    tvDetailAkhir: TcxGridDBColumn;
    tvDetailAkhirD: TcxGridDBColumn;
    tvDetailAwalSusut: TcxGridDBColumn;
    tvDetailAwalSusutD: TcxGridDBColumn;
    tvDetailSD: TcxGridDBColumn;
    tvDetailDSD: TcxGridDBColumn;
    tvDetailSK: TcxGridDBColumn;
    tvDetailDSK: TcxGridDBColumn;
    tvDetailAkhirSusut: TcxGridDBColumn;
    tvDetailAkhirSusutD: TcxGridDBColumn;
    tvDetailPeriode: TcxGridDBColumn;
    tvDetailNilaiAK: TcxGridDBColumn;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
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
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton2Click(Sender: TObject);
    procedure AmbilData;
    procedure MultiSelect1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure DevisiChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ShowGroupPanel1Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure DevisiDropDown(Sender: TObject);
    procedure TipeAktivaDropDown(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    mPosisi : string;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel,CountSelected : Boolean;
    Procedure Tampildata;
    Procedure UpdateDataAktivaTetap(Choice:Char);
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrAktivaFk: TFrAktivaFk;
  S: array[0..255] of char;
  BM: TBookmark;

implementation
uses myModul,Myprocedure,MyGlobal, FrmSubAktivaFK, FrmSetSaldoAktivaFK;
{$R *.dfm}

Procedure TFrAktivaFk.Tampildata;
begin
  with QuView do
  begin
    close;
    Prepared;
    Parameters[0].Value:=Devisi.Items.Strings[Devisi.ItemIndex];
    Parameters[1].Value:=TipeAktiva.ItemIndex;
    Open;
  end;
  (Quview.FieldByName('Quantity') as TNumericField).DisplayFormat:=',0.00';
  (Quview.FieldByName('Susut') as TNumericField).DisplayFormat:=',0.00';
  (Quview.FieldByName('Persenbiaya1') as TNumericField).DisplayFormat:=',0.00';
  (Quview.FieldByName('Persenbiaya2') as TNumericField).DisplayFormat:=',0.00';

   with QuDetail do
  begin
    close;
    Prepared;
    Open;
  end;
  (QuDetail.FieldByName('Awal') as TNumericField).DisplayFormat:=',0.00';
  (QuDetail.FieldByName('MD') as TNumericField).DisplayFormat:=',0.00';
  (QuDetail.FieldByName('MK') as TNumericField).DisplayFormat:=',0.00';
  (QuDetail.FieldByName('Akhir') as TNumericField).DisplayFormat:=',0.00';
  (QuDetail.FieldByName('AwalSusut') as TNumericField).DisplayFormat:=',0.00';
  (QuDetail.FieldByName('SD') as TNumericField).DisplayFormat:=',0.00';
  (QuDetail.FieldByName('SK') as TNumericField).DisplayFormat:=',0.00';
  (QuDetail.FieldByName('AkhirSusut') as TNumericField).DisplayFormat:=',0.00';
  (QuDetail.FieldByName('NilaiAK') as TNumericField).DisplayFormat:=',0.00';
end;

Procedure TFrAktivaFk.UpdateDataAktivaTetap(Choice:Char);
begin
  BM := QuView.GetBookmark;
  sp_barang.Close;
  sp_barang.ProcedureName :='SP_AktivaTetapFK;1';
  With sp_barang do
  begin
    close;
    Prepared;
    Parameters.Refresh;
    Parameters[1].Value := Choice;
    if (Choice='D')  then
    begin
      Parameters[2].Value := QuView.Fieldbyname('Devisi').AsString;
      Parameters[3].Value := Quview.fieldbyname('kodeaktiva').AsString;
    end
    else
    begin
      Parameters[2].Value  := FrSubAktivaFK.Devisi.Text;
      Parameters[3].Value  := FrSubAktivaFK.KodeAktiva.Text;
      Parameters[4].Value  := FrSubAktivaFK.Keterangan.Text;
      Parameters[5].Value  := FrSubAktivaFK.Kuantum.AsFloat;
      Parameters[6].Value  := FrSubAktivaFK.Susut.AsFloat;
      Parameters[7].Value  := FrSubAktivaFK.TglPengakuan.Date;
      Parameters[8].Value  := Copy(FrSubAktivaFK.LM.text,2,1);
      Parameters[9].Value  := FrSubAktivaFK.AkSusut.text;
      Parameters[10].Value := FrSubAktivaFK.BiayaSusut.text;
      Parameters[11].Value := FrSubAktivaFK.Perkiraan.Text;
      Parameters[12].Value := FrSubAktivaFK.Nourut.Text;
      Parameters[13].Value := FrSubAktivaFK.BiayaSusut2.text;
      Parameters[14].Value := FrSubAktivaFK.PersenSusut1.Value;
      Parameters[15].Value := FrSubAktivaFK.PersenSusut2.Value;
      Parameters[16].Value := FrSubAktivaFK.BiayaSusut3.Text;
      Parameters[17].Value := FrSubAktivaFK.PersenSusut3.Value;
      Parameters[18].Value := '';
      Parameters[19].Value := 0;
      Parameters[20].Value := FrSubAktivaFK.TipeAktiva.ItemIndex;
      Parameters[21].Value := FrSubAktivaFK.Bagian.Text;
      if FrSubAktivaFK.isHeader.ItemIndex>0 then
      begin
         Parameters[22].Value := FrSubAktivaFK.NoUrut2.Text;
         Parameters[24].Value := FrSubAktivaFK.Perkiraan.Text+'.'+FrSubAktivaFK.Nourut.Text;
      end
      else
      begin
         Parameters[22].Value := '';
         Parameters[24].Value := '';
      end;
      Parameters[23].Value := FrSubAktivaFK.isHeader.ItemIndex;
    end;
    try
      ExecProc;
      if Choice='I' then
      begin
        LoggingData(IDUser,Choice,'Aktiva','',
                    ' Kode Aktiva = '+QuotedStr(FrSubAktivaFK.KodeAktiva.Text)+
                    ' Group Aktiva = '+QuotedStr(FrSubAktivaFK.Perkiraan.Text)+
                    ' Tanggal Pengakuan = '+QuotedStr(FrSubAktivaFK.TglPengakuan.Text)+
                    ' Kuantum = '+QuotedStr(FrSubAktivaFK.Kuantum.Text)+
                    ' Susut = '+QuotedStr(FrSubAktivaFK.Susut.Text+'%')+
                    ' Metode = '+QuotedStr(FrSubAktivaFK.LM.Text)+
                    ' Keterangan = '+QuotedStr(FrSubAktivaFK.Keterangan.Text)+
                    ' Akumulasi = '+QuotedStr(FrSubAktivaFK.AkSusut.Text)+
                    ' Biaya 1 = '+QuotedStr(FrSubAktivaFK.BiayaSusut.Text)+
                    ' Persen 1 = '+QuotedStr(FrSubAktivaFK.PersenSusut1.Text+'%')+
                    ' Biaya 2 = '+QuotedStr(FrSubAktivaFK.BiayaSusut2.Text)+
                    ' Persen 2 = '+QuotedStr(FrSubAktivaFK.PersenSusut2.Text+'%'));
        QuView.Requery;
        QuView.Locate('KodeAktiva',FrSubAktivaFK.KodeAktiva.Text,[]);
      end else if Choice='U' then
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
       LoggingData(IDUser,Choice,'Aktiva','',
                    ' Kode Aktiva = '+QuotedStr(FrSubAktivaFK.KodeAktiva.Text)+
                    ' Group Aktiva = '+QuotedStr(FrSubAktivaFK.Perkiraan.Text)+
                    ' Tanggal Pengakuan = '+QuotedStr(FrSubAktivaFK.TglPengakuan.Text)+
                    ' Kuantum = '+QuotedStr(FrSubAktivaFK.Kuantum.Text)+
                    ' Susut = '+QuotedStr(FrSubAktivaFK.Susut.Text+'%')+
                    ' Metode = '+QuotedStr(FrSubAktivaFK.LM.Text)+
                    ' Keterangan = '+QuotedStr(FrSubAktivaFK.Keterangan.Text)+
                    ' Akumulasi = '+QuotedStr(FrSubAktivaFK.AkSusut.Text)+
                    ' Biaya 1 = '+QuotedStr(FrSubAktivaFK.BiayaSusut.Text)+
                    ' Persen 1 = '+QuotedStr(FrSubAktivaFK.PersenSusut1.Text+'%')+
                    ' Biaya 2 = '+QuotedStr(FrSubAktivaFK.BiayaSusut2.Text)+
                    ' Persen 2 = '+QuotedStr(FrSubAktivaFK.PersenSusut2.Text+'%'));
      end
      else if Choice='D' then
      begin
        LoggingData(IDUser,Choice,'Aktiva','',
                    ' Kode Aktiva = '+QuotedStr(QuView.fieldbyname('KodeAktiva').AsString)+
                    ' Group Aktiva = '+QuotedStr(QuView.fieldbyname('GroupAktiva').AsString)+
                    ' Tanggal Pengakuan = '+QuotedStr(QuView.fieldbyname('Tanggal').AsString)+
                    ' Kuantum = '+QuotedStr(QuView.fieldbyname('Quantity').AsString)+
                    ' Susut = '+QuotedStr(QuView.fieldbyname('Susut').AsString+'%')+
                    ' Metode = '+QuotedStr(QuView.fieldbyname('Tipe').AsString)+
                    ' Keterangan = '+QuotedStr(QuView.fieldbyname('Keterangan').AsString)+
                    ' Akumulasi = '+QuotedStr(QuView.fieldbyname('Akumulasi').AsString)+
                    ' Biaya 1 = '+QuotedStr(QuView.fieldbyname('Biaya').AsString)+
                    ' Persen 1 = '+QuotedStr(QuView.fieldbyname('PersenBiaya1').AsString+'%')+
                    ' Biaya 2 = '+QuotedStr(QuView.fieldbyname('Biaya2').AsString)+
                    ' Persen 2 = '+QuotedStr(QuView.fieldbyname('PersenBiaya2').AsString+'%'));
        QuView.Requery;
      end;
    except
      on E: Exception do
           begin
               Application.MessageBox(StrPCopy(S,E.Message),'Peringatan',MB_OK or MB_ICONSTOP);
           end;
    end;
  end;
  Quview.Requery;
end;

procedure TFrAktivaFk.AmbilData;
begin
   with FrSubAktivaFK do
   begin
     KodeAktiva.Text   := QuView.FieldByname('KodeAktiva').AsString;
     Nourut.Text := QuView.FieldByname('noBelakang').AsString;
     NoUrut2.Text := QuView.FieldByname('noBelakang2').AsString;
     TglPengakuan.Date := QuView.FieldByname('Tanggal').AsDateTime;
     Devisi.Text       := QuView.FieldByname('Devisi').AsString;
     Label32.Caption   := '[ '+QuView.FieldByname('NamaDevisi').AsString+' ]';
     TipeAktiva.ItemIndex := QuView.FieldByname('TipeAktiva').AsInteger;
     Perkiraan.Text    := QuView.FieldByname('GroupAktiva').AsString;
     Label26.Caption   := '[ '+QuView.FieldByname('NamaPerkiraan').AsString+' ]';
     Keterangan.Lines.Text := QuView.FieldByname('Keterangan').AsString;
     Bagian.Text := QuView.FieldByname('kodeBag').AsString;
     Label30.Caption := '[ '+QuView.FieldByname('Namabag').AsString+' ]';
     Kuantum.AsFloat := QuView.FieldByname('Quantity').AsFloat;
     Susut.AsFloat   := QuView.FieldByname('Susut').AsFloat;
     LM.ItemIndex    := LM.Items.IndexOf(QuView.FieldByname('Metode').AsString);
     AkSusut.Text    := QuView.FieldByname('Akumulasi').AsString;
     Label2.caption  := '[ '+QuView.FieldByname('KetAKM').AsString+' ]';
     BiayaSusut.Text := QuView.FieldByname('Biaya').AsString;
     BiayaSusut2.Text:= QuView.FieldByname('Biaya2').AsString;
     BiayaSusut3.Text:= QuView.FieldByname('Biaya3').AsString;
     PersenSusut1.AsFloat := QuView.FieldByname('PersenBiaya1').AsFloat;
     PersenSusut2.AsFloat := QuView.FieldByname('PersenBiaya2').AsFloat;
     PersenSusut3.AsFloat := QuView.FieldByname('PersenBiaya3').AsFloat;
     isHeader.ItemIndex := QuView.FieldByname('Kelompok').AsInteger;
     NoUrut2.Visible := (isHeader.ItemIndex<>0);
   end;
end;

procedure TFrAktivaFk.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrAktivaFk.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
    begin

        Action:=caFree;

    end
    else
        Action:=caNone;
end;

procedure TFrAktivaFk.FormDestroy(Sender: TObject);
begin
 FrAktivaFk:=nil;
end;

procedure TFrAktivaFk.FormShow(Sender: TObject);
begin
  Tampildata;
  activeControl:=cxGrid1;
end;

procedure TFrAktivaFk.ToolButton10Click(Sender: TObject);
begin
  Tampildata;
end;

procedure TFrAktivaFk.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrAktivaFk.ExportExcel1Click(Sender: TObject);
begin
  if IsExcel then
  begin
    SaveDialog.FileName := Caption;
    if SaveDialog.Execute then
    begin
      ExportGrid4ToExcel(SaveDialog.FileName,cxGrid1,False,True,True);
      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
      LoggingData(IDUser,'Export to excel',FrAktivaFk.Caption,'','export to excel dengan nama file : '+SaveDialog.FileName);
    end
  end
  else
  begin
      ShowMessage('Anda tidak berhak Mengeksport Excel');
  end;
end;

procedure TFrAktivaFk.AutoFilter1Click(Sender: TObject);
begin
    if tvAktiva.OptionsCustomize.ColumnFiltering=false then
    tvAktiva.OptionsCustomize.ColumnFiltering:=true
    else
    tvAktiva.OptionsCustomize.ColumnFiltering:=false;

end;

procedure TFrAktivaFk.ShowGrid1Click(Sender: TObject);
begin
   if ShowGrid1.Checked then
   begin
      tvAktiva.OptionsView.GridLines:=glNone;
      ShowGrid1.Checked:=false;
   end else
   begin
      tvAktiva.OptionsView.GridLines:=glBoth;
      ShowGrid1.Checked:=true;
   end;
end;

procedure TFrAktivaFk.ShowHeader1Click(Sender: TObject);
begin
   if ShowHeader1.Checked then
   begin
      tvAktiva.OptionsView.Header:= False;
      ShowHeader1.Checked:=false;
   end else
   begin
      tvAktiva.OptionsView.Header:=True;
      ShowHeader1.Checked:=true;
   end;
end;

procedure TFrAktivaFk.Show1Click(Sender: TObject);
begin
   if Show1.Checked then
   begin
      tvAktiva.OptionsView.Footer:= false;
      Show1.Checked:=false;
   end else
   begin
      tvAktiva.OptionsView.Footer:= true;
      Show1.Checked:=true;
   end;
end;

procedure TFrAktivaFk.ToolButton1Click(Sender: TObject);
begin
  if IsTambah then
  begin
    Application.CreateForm(TfrSubAktivaFK, frSubAktivaFK);
    frSubAktivaFK.IsSimpan:=True;
    frSubAktivaFK.ShowModal;
  end
  else
  begin
      ShowMessage('Anda tidak berhak Menambah Data');
  end;

end;

procedure TFrAktivaFk.FormKeyDown(Sender: TObject; var Key: Word;
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

   end
   else if key=VK_Delete then
   begin
      
   end;
end;

procedure TFrAktivaFk.ToolButton2Click(Sender: TObject);
begin
  if IsKoreksi then
  begin
     Application.CreateForm(TfrSubAktivaFK, frSubAktivaFK);
     frSubAktivaFK.IsSimpan:=false;
     AmbilData;
     frSubAktivaFK.ShowModal;
     ActiveControl := cxGrid1;
  end else
  begin
     ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
  end;

end;

procedure TFrAktivaFk.MultiSelect1Click(Sender: TObject);
begin
   if MultiSelect1.Checked then
   begin
      tvAktiva.OptionsSelection.MultiSelect:=false;
      MultiSelect1.Checked:=false;
   end else
   begin
      tvAktiva.OptionsSelection.MultiSelect:=True;
      MultiSelect1.Checked:=true;
   end;

end;

procedure TFrAktivaFk.ToolButton3Click(Sender: TObject);
begin
  if IsHapus then
  begin
     if QuView.IsEmpty=true then
     begin
        Application.MessageBox('Tabel Kosong','Informasi'
        ,MB_OK Or MB_ICONWARNING);
     end
     else
     begin
        StrPCopy(S,Format('Anda yakin Perkiraan %s dan Keterangan %s dihapus ?',
             [QuView.Fields[0].asstring,
              QuView.Fields[1].asstring]));
        if (Application.MessageBox(S,'Peringatan',
            MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
        begin
           UpdateDataAktivaTetap('D');
           Tampildata;
        end;
     end;
  end else
  begin
     ShowMessage('Anda Tidak Berhak Menghapus Data');
  end;
end;

procedure TFrAktivaFk.DevisiChange(Sender: TObject);
begin
  mDevisi := '0'+IntToStr(Devisi.ItemIndex);
  Tampildata;
end;

procedure TFrAktivaFk.FormCreate(Sender: TObject);
begin
  with DM.QuCari do
  begin
    close;
    sql.Clear;
    sql.Add('Select Devisi,NamaDevisi from dbDevisi Order by Devisi');
    Open;
    Devisi.Items.Clear;
    Devisi.Items.Add('Semua');
    while not eof do
    begin
      Devisi.Items.Add(FieldByname('NamaDevisi').AsString+' ('+FieldByname('Devisi').AsString+')');
      next;
    end;
    Devisi.ItemIndex := 0;
  end;
  
end;

procedure TFrAktivaFk.ShowGroupPanel1Click(Sender: TObject);
begin
  if ShowGroupPanel1.Checked then
   begin
      tvAktiva.OptionsView.GroupByBox:= false;
      ShowGroupPanel1.Checked:=false;
   end else
   begin
      tvAktiva.OptionsView.GroupByBox:= true;
      ShowGroupPanel1.Checked:=true;
   end;
end;

procedure TFrAktivaFk.ToolButton4Click(Sender: TObject);
begin
  //if StrToInt(PeriodBln)=1 then
  begin
    Application.CreateForm(TFrSetSaldoAktivaFK,FrSetSaldoAktivaFK);
    FrSetSaldoAktivaFK.lDetail.Caption := QuView.FieldByname('KodeAktiva').AsString+' ('+QuView.FieldByname('KodeAktiva').AsString+')';
    FrSetSaldoAktivaFK.Perkiraan := QuView.FieldByname('KodeAktiva').AsString;
    FrSetSaldoAktivaFK.Bulan := StrToInt(PeriodBln);
    FrSetSaldoAktivaFK.tahun := StrToInt(PeriodThn);
    FrSetSaldoAktivaFK.ShowModal;
  end
  //else
   // MessageDlg('Daftar aktiva tetap Hanya bisa di input pada Bulan Januari',mtWarning,[MBOK],0);
end;

procedure TFrAktivaFk.DevisiDropDown(Sender: TObject);
begin
  ComboBox_AutoWidth(Devisi);
end;

procedure TFrAktivaFk.TipeAktivaDropDown(Sender: TObject);
begin
  ComboBox_AutoWidth(TipeAktiva);
end;

end.
