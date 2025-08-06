unit FrmSupplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  ImgList, StdCtrls, ExtCtrls, Menus,
  dxGridMenus,ShellApi, dxDBTLCl, dxGrClms, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid,cxExportGrid4Link, cxGridBandedTableView,
  cxGridDBBandedTableView;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrSupplier = class(TForm)
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
    ToolButton9: TToolButton;
    ImageList2: TImageList;
    ToolButton10: TToolButton;
    SaveDialog: TSaveDialog;
    MultiSelect1: TMenuItem;
    Sp_customer: TADOStoredProc;
    PopupMenu2: TPopupMenu;
    Semua: TMenuItem;
    Aktif: TMenuItem;
    TidakAktif: TMenuItem;
    ToolButton11: TToolButton;
    ToolButton13: TToolButton;
    Panel1: TPanel;
    Label1: TLabel;
    Perkiraan: TComboBox;
    ToolButton7: TToolButton;
    tvSupplier: TcxGridDBTableView;
    cxGridSupplier: TcxGridLevel;
    cxGrid1: TcxGrid;
    tvSupplierKODECUSTSUPP: TcxGridDBColumn;
    tvSupplierNAMACUSTSUPP: TcxGridDBColumn;
    tvSupplierKota: TcxGridDBColumn;
    tvSupplierTELPON: TcxGridDBColumn;
    tvSupplierFAX: TcxGridDBColumn;
    tvSupplierEMAIL: TcxGridDBColumn;
    tvSupplierKODEPOS: TcxGridDBColumn;
    tvSupplierNEGARA: TcxGridDBColumn;
    tvSupplierTanggal: TcxGridDBColumn;
    tvSupplierHARI: TcxGridDBColumn;
    tvSupplierUSAHA: TcxGridDBColumn;
    tvSupplierSyaratPenerimaan: TcxGridDBColumn;
    tvSupplierSyaratPembayaran: TcxGridDBColumn;
    tvSupplierALAMAT: TcxGridDBColumn;
    cxGridContact: TcxGridLevel;
    QuContact: TADOQuery;
    dsContact: TDataSource;
    tvContact: TcxGridDBTableView;
    ToolButton8: TToolButton;
    ToolButton12: TToolButton;
    QuContactkodecustsupp: TStringField;
    QuContactPerkiraan: TStringField;
    QuContactNamaPerkiraan: TStringField;
    QuContactKeterangan: TStringField;
    tvContactkodecustsupp: TcxGridDBColumn;
    tvContactPerkiraan: TcxGridDBColumn;
    tvContactNamaPerkiraan: TcxGridDBColumn;
    tvContactKeterangan: TcxGridDBColumn;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    QuViewKODECUSTSUPP: TStringField;
    QuViewNAMACUSTSUPP: TStringField;
    QuViewALAMAT1: TStringField;
    QuViewALAMAT2: TStringField;
    QuViewKota: TStringField;
    QuViewTELPON: TStringField;
    QuViewFAX: TStringField;
    QuViewEMAIL: TStringField;
    QuViewKODEPOS: TStringField;
    QuViewNEGARA: TStringField;
    QuViewNPWP: TStringField;
    QuViewTanggal: TDateTimeField;
    QuViewPLAFON: TBCDField;
    QuViewHARI: TIntegerField;
    QuViewHARIHUTPIUT: TIntegerField;
    QuViewBERIKAT: TBooleanField;
    QuViewUSAHA: TStringField;
    QuViewPERKIRAAN: TStringField;
    QuViewJENIS: TIntegerField;
    QuViewNAMAPKP: TStringField;
    QuViewALAMATPKP1: TStringField;
    QuViewALAMATPKP2: TStringField;
    QuViewKOTAPKP: TStringField;
    QuViewSales: TStringField;
    QuViewKodeVls: TStringField;
    QuViewKodeExp: TStringField;
    QuViewKodeTipe: TStringField;
    QuViewIsPpn: TBooleanField;
    QuViewIsAktif: TWordField;
    QuViewKind: TWordField;
    QuViewContactP: TStringField;
    QuViewAlamat1ContP: TStringField;
    QuViewAlamat2ContP: TStringField;
    QuViewKotaContP: TStringField;
    QuViewNegaraContP: TStringField;
    QuViewTelpContP: TStringField;
    QuViewFaxContP: TStringField;
    QuViewEmailContP: TStringField;
    QuViewKODEPOSContP: TStringField;
    QuViewHPContP: TStringField;
    QuViewSyaratPenerimaan: TStringField;
    QuViewSyaratPembayaran: TStringField;
    QuViewAgent: TStringField;
    QuViewAlamat1A: TStringField;
    QuViewAlamat2A: TStringField;
    QuViewKotaA: TStringField;
    QuViewNegaraA: TStringField;
    QuViewContactA: TStringField;
    QuViewTelpA: TStringField;
    QuViewFaxA: TStringField;
    QuViewEmailA: TStringField;
    QuViewKODEPOSA: TStringField;
    QuViewHPA: TStringField;
    QuViewEmailContA: TStringField;
    QuViewMyID: TBytesField;
    QuViewPortOfLoading: TStringField;
    QuViewCountryOfOrigin: TStringField;
    QuViewTglInput: TDateTimeField;
    QuViewiskontrak: TBooleanField;
    QuViewALAMAT: TStringField;
    QuViewNama: TStringField;
    QuViewxkontrak: TIntegerField;
    tvSupplierDBColumn1: TcxGridDBColumn;
    QuViewnamaKota: TStringField;
    QuViewKodeArea: TStringField;
    QuViewnamaArea: TStringField;
    QuViewPPN: TWordField;
    QuViewDetailAkun: TStringField;
    tvSupplierDetailAkun: TcxGridDBColumn;
    QuViewAtt: TStringField;
    QuViewHargaKe: TIntegerField;
    QuViewbank: TStringField;
    QuViewNoAcc: TStringField;
    QuViewIsMember: TBooleanField;
    QuViewTanggalValid: TDateTimeField;
    tvSupplierIsMember: TcxGridDBColumn;
    tvSupplierTanggalValid: TcxGridDBColumn;
    QuViewDiscMember: TBCDField;
    tvSupplierDiscMember: TcxGridDBColumn;
    QuViewAttPhone: TStringField;
    QuViewJenisCustSupp: TStringField;
    QuViewNamaJenis: TStringField;
    Edit1: TEdit;
    Label2: TLabel;
    QuViewTahun: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ToolButton10Click(Sender: TObject);
    procedure tampildata(xIsTampil:Byte);
    procedure SemuaClick(Sender: TObject);
    procedure AktifClick(Sender: TObject);
    procedure TidakAktifClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PerkiraanChange(Sender: TObject);
    procedure tvSupplierFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);

  private
    { Private declarations }
    ISTampil : byte;
  public
    { Public declarations }
    mPosisi : string;
    IsTambah,IsKoreksi,IsHapus, IsCetak , IsExcel: Boolean;
    mSupplier_FlagMenu: Integer;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrSupplier: TFrSupplier;
  S: array[0..255] of char;
  BM: TBookmark;

implementation
uses myModul,Myprocedure,MyGlobal, FrmSubSupplier, FrmPerkCustSupp,
  FrmAlamatCustSupp, FrmBarangCust, ToolEdit, Frmmainsubcustomer;
{$R *.dfm}

procedure TFrSupplier.tampildata(xIsTampil:Byte);
begin
  with QuView do
  begin
  
    close;
    SQL.Strings[22]:='and a.Jenis='+IntToStr(mSupplier_FlagMenu);
    Prepared;
    Parameters[0].Value :=xIstampil;
    Parameters[1].Value :=Perkiraan.Text;
    Parameters[2].Value :=mSupplier_FlagMenu;
    sql.Strings[24]:=' and namacustsupp like '+quotedstr('%'+edit1.Text+'%');
    //sql.SaveToFile('d:\txt.txt');
    Open;
  end;
end;

procedure TFrSupplier.AmbilData;
begin
  with FrSubSupplier do
  begin
    KodeCust.Text:=QuViewKODECUSTSUPP.AsString;
    NamaCust.Text:=QuViewNAMACUSTSUPP.AsString;
    Usaha.Text:=QuViewUSAHA.AsString;
    Alamat1.Text:=QuViewALAMAT1.AsString;
    Alamat2.Text:=QuViewALAMAT2.AsString;
    KodeKota.Text:=QuViewKota.AsString;
    KodePos.Text:=QuViewKODEPOS.AsString;
    Negara.Text:=QuViewNEGARA.AsString;
    Telpon.Text:=QuViewTELPON.AsString;
    Fax.Text:=QuViewFAX.AsString;
    Email.Text:=QuViewEMAIL.AsString;
    Npwp.Text:=QuViewNPWP.AsString;
    Plafon.AsFloat:=QuViewPLAFON.AsFloat;
    Hari.AsInteger:=QuViewHARI.AsInteger;
    HariPiutang.AsInteger := QuViewHARIHUTPIUT.Value;
    NamaPKP.Text:=QuViewNAMAPKP.AsString;
    AlamatPkp1.Text:=QuViewALAMATPKP1.AsString;
    AlamatPkp2.Text:=QuViewALAMATPKP2.AsString;
    KotaPkp.Text:=QuViewKOTAPKP.AsString;
    ContactP.Text := QuViewContactP.Value;
    Alamat1ContP.Text := QuViewAlamat1ContP.Value;
    Alamat2ContP.Text:=QuViewAlamat2ContP.AsString;
    KotaContP.Text:=QuViewKotaContP.AsString;
    KodePosContP.Text:=QuViewKODEPOSContP.AsString;
    NegaraContP.Text:=QuViewNegaraContP.AsString;
    TelponContP.Text:=QuViewTelpContP.AsString;
    FaxContP.Text:=QuViewFaxContP.AsString;
    EmailContP.Text:=QuViewEmailContP.AsString;
    HPContP.Text := QuViewHPContP.Value;
    Agent.Text := QuViewAgent.Value;
    Alamat1A.Text:=QuViewALAMAT1A.AsString;
    Alamat2A.Text:=QuViewALAMAT2A.AsString;
    KotaA.Text:=QuViewKotaA.AsString;
    KodeposA.Text:=QuViewKODEPOSA.AsString;
    NegaraA.Text:=QuViewNEGARAA.AsString;
    TelponA.Text:=QuViewTelpA.AsString;
    FaxA.Text:=QuViewFaxA.AsString;
    EmailA.Text:=QuViewEmailA.AsString;
    HPA.Text := QuViewHPA.Value;
    ContactA.Text := QuViewContactA.Value;
    EmailContA.Text := QuViewEmailContA.Value;
    SyaratPenerimaan.Lines.Text := QuViewSyaratPenerimaan.Value;
    SyaratPembayaran.Lines.Text := QuViewSyaratPembayaran.Value;
    PortOfLoading.Text:=QuViewPortOfLoading.AsString;
    CountryOfOrigin.Text:=QuViewCountryOfOrigin.AsString;
    Aktif.ItemIndex := QuViewIsAktif.AsInteger;
    CboKontrak.ItemIndex:=QuViewxkontrak.AsInteger;
    Nmkota.caption:=quviewnamakota.asstring;
    LkodeArea.Caption:='Kode Area : '+QuViewKodeArea.AsString;
    LnamaArea.Caption:='Nama Area : '+QuViewnamaArea.AsString;
    if QuViewPPN.asinteger=0 then FrSubSupplier.PPN.checked:=False else FrSubSupplier.PPN.checked:=True;
    HrgKe.ItemIndex:=QuviewHargaKe.asInteger;
    Att.Text:=QuViewAtt.AsString;
    IsMember.Checked:=QuViewIsMember.AsBoolean;
    TanggalValid.Date:=QuViewTanggalValid.AsDateTime;
    DiscMember.Value:=QuViewDiscMember.AsFloat;
    AttPhone.Text :=QuViewAttPhone.AsString;
    Jenis.Text:=QuViewJenisCustSupp.AsString;
    LnamaJenis.Caption:=QuviewNamaJenis.asstring;
    tunai.Checked :=QuViewIsPpn.AsBoolean ;
    
        if  QuViewBERIKAT.AsBoolean then
      Berikat.Checked := True
    else
      Berikat.Checked := False;
    Tahun.Value:=QuViewTahun.AsInteger;
  end;
end;

procedure TFrSupplier.SimpanData(Mode:Char);
var Berikat : String;
begin
  BM := QuView.GetBookmark;
  With Sp_Customer do
  begin
    Prepared;
    Parameters[1].Value:=Mode;
    if Mode='D' then
    begin
       Parameters[18].Value:=QuViewKODECUSTSUPP.AsString;
       Parameters[29].Value:=0;
    end
    else
    begin
      Parameters[2].Value:=FrSubSupplier.Kodecust.Text;
      Parameters[3].Value:=FrSubSupplier.NamaCust.Text;
      Parameters[4].Value:=FrSubSupplier.Usaha.Text;
      Parameters[5].Value:=FrSubSupplier.Alamat1.Text;
      Parameters[6].Value:=FrSubSupplier.Alamat2.Text;
      Parameters[7].Value:=FrSubSupplier.KodeKota.Text;
      Parameters[8].Value:=FrSubSupplier.KodePos.Text;
      Parameters[9].Value:=FrSubSupplier.Negara.Text;
      Parameters[10].Value:=FrSubSupplier.telpon.Text;
      Parameters[11].Value:=FrSubSupplier.Fax.Text;
      Parameters[12].Value:=FrSubSupplier.Email.Text;
      Parameters[13].Value:=FrSubSupplier.npwp.Text;
      Parameters[14].Value:=Date;
      Parameters[15].Value:=FrSubSupplier.Plafon.AsFloat;
      Parameters[16].Value:=FrSubSupplier.Hari.AsFloat;
      //Parameters[17].Value:=0;
            if FrSubSupplier.Berikat.Checked then
        Begin
        Parameters[17].Value:=1 ;
        Berikat:='1';
        end
      else
        Begin
        Parameters[17].Value:=0;
        Berikat:='0';
        end;
      Parameters[18].Value:=QuViewKODECUSTSUPP.AsString;
      Parameters[19].Value:=mSupplier_FlagMenu;
      Parameters[20].Value:=FrSubSupplier.NamaPKP.Text;
      Parameters[21].Value:=FrSubSupplier.AlamatPkp1.Text;
      Parameters[22].Value:=FrSubSupplier.AlamatPkp2.Text;
      Parameters[23].Value:=FrSubSupplier.KotaPkp.Text;
      Parameters[24].Value:='';
      Parameters[25].Value:='';
      Parameters[26].Value:=xPerkPostHutPiut;
      Parameters[27].Value:='';
      Parameters[28].Value:=FrsubSupplier.Tunai.Checked;
      Parameters[29].Value:=0;
      Parameters[30].Value:=FrSubSupplier.HariPiutang.AsFloat;
      Parameters[31].Value:=FrSubSupplier.ContactP.Text;
      Parameters[32].Value:=FrSubSupplier.Alamat1ContP.Text;
      Parameters[33].Value:=FrSubSupplier.Alamat2ContP.Text;
      Parameters[34].Value:=FrSubSupplier.KotaContP.Text;
      Parameters[35].Value:=FrSubSupplier.NegaraContP.Text;
      Parameters[36].Value:=FrSubSupplier.TelponContP.Text;
      Parameters[37].Value:=FrSubSupplier.FaxContP.Text;
      Parameters[38].Value:=FrSubSupplier.EmailContP.Text;
      Parameters[39].Value:=FrSubSupplier.KodePosContP.Text;
      Parameters[40].Value:=FrSubSupplier.HPContP.Text;
      Parameters[41].Value:=FrSubSupplier.SyaratPenerimaan.Lines.Text;
      Parameters[42].Value:=FrSubSupplier.SyaratPembayaran.Lines.Text;
      Parameters[43].Value:=FrSubSupplier.Agent.Text;
      Parameters[44].Value:=FrSubSupplier.Alamat1A.Text;
      Parameters[45].Value:=FrSubSupplier.Alamat2A.Text;
      Parameters[46].Value:=FrSubSupplier.KotaA.Text;
      Parameters[47].Value:=FrSubSupplier.NegaraA.Text;
      Parameters[48].Value:=FrSubSupplier.ContactA.Text;
      Parameters[49].Value:=FrSubSupplier.TelponA.Text;
      Parameters[50].Value:=FrSubSupplier.FaxA.Text;
      Parameters[51].Value:=FrSubSupplier.EmailA.Text;
      Parameters[52].Value:=FrSubSupplier.KodeposA.Text;
      Parameters[53].Value:=FrSubSupplier.HPA.Text;
      Parameters[54].Value:=FrSubSupplier.EmailContA.Text;
      Parameters[55].Value:=FrSubSupplier.Aktif.ItemIndex;
      Parameters[56].Value:=FrSubSupplier.PortOfLoading.Text;
      Parameters[57].Value:=FrSubSupplier.CountryOfOrigin.Text;
      if (FrSubSupplier.cbokontrak.ItemIndex=0) or (FrSubSupplier.cbokontrak.ItemIndex=1) then
      Parameters[58].Value:=FrSubSupplier.CboKontrak.ItemIndex
      else
      begin
      if (mSupplier_FlagMenu=2) or (mSupplier_FlagMenu=3) then
          Parameters[58].Value:=0
      else
      //ShowMessage('Pilih Status Kontrak');
      //ActiveControl:=FrSubSupplier.cbokontrak;
      //exits;
      end;
      if FrSubSupplier.PPn.Checked then  Parameters[59].Value:=1 else Parameters[59].Value:=0 ;
      Parameters[60].Value:=FrSubSupplier.HrgKe.ItemIndex;
      Parameters[61].Value:=FrSubSupplier.Att.Text;
      Parameters[62].Value:=FrSubSupplier.Bank.Text;
      Parameters[63].Value:=FrSubSupplier.NoACC.Text;
      if FrSubSupplier.IsMember.Checked then
        Parameters[64].Value:=1
      else
        Parameters[64].Value:=0;
      Parameters[65].Value:=FrSubSupplier.TanggalValid.Date;
      Parameters[66].Value:=FrSubSupplier.DiscMember.AsCurrency;
      Parameters[67].Value:=FrSubSupplier.AttPhone.Text;
      Parameters[68].Value:=FrSubSupplier.Jenis.Text;
      Parameters[69].Value:=FrSubSupplier.Tahun.Value;

    end;
    try
      ExecProc;
      if Mode='I' then
      begin
        QuView.Requery;
        QuView.Locate('KodeCustSupp',FrSubSupplier.KodeCust.Text,[LOP,LOC]);
        LoggingData(IDUser,Mode,'SUP','',
                    ' Kode = '+QuotedStr(FrSubSupplier.Kodecust.Text)+
                    ' Nama = '+QuotedStr(FrSubSupplier.NamaCust.Text));
      end
      else if Mode='U' then
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
        LoggingData(IDUser,Mode,'SUP','',
                    ' Kode = '+QuotedStr(FrSubSupplier.Kodecust.Text)+
                    ' Nama = '+QuotedStr(FrSubSupplier.NamaCust.Text));
      end
      Else if Mode='D' then
      begin
        LoggingData(IDUser,Mode,'SUP','',
                    ' Kode = '+QuotedStr(QuViewKODECUSTSUPP.AsString)+
                    ' Nama = '+QuotedStr(QuViewNAMACUSTSUPP.AsString));
        QuView.Requery;
      end;
    except
      If (Mode='I') Or (Mode='U') then
         showmessage('Proses Gagal !, Data Sudah Ada')
      else If (Mode='D') then
         showmessage('Proses Gagal !, Supplier berkaitan dengan transaksi');
    end;
  end;
end;

procedure TFrSupplier.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do
  begin
    DefaultExt:=ADefaultExt;
    Filter:=AFilter;
    FileName:=AFileName;
    if Execute then
      AMethod(FileName, true);
  end;
end;


procedure TFrSupplier.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
    begin
      Action:=caFree;
    end
    else
        Action:=caNone;
end;

procedure TFrSupplier.FormDestroy(Sender: TObject);
begin
FrSupplier:=nil;
end;

procedure TFrSupplier.FormShow(Sender: TObject);
begin
    ISTampil:=2;
    tampildata(ISTampil);
    activeControl:=cxGrid1;
    if mSupplier_FlagMenu=0 then
    begin
    tvSupplierHARI.Visible:=False;
    End
    Else
    Begin
    tvSupplierHARI.Visible:=True;
    End;

end;

procedure TFrSupplier.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrSupplier.ExportExcel1Click(Sender: TObject);
begin
  if IsExcel then
  begin
    SaveDialog.FileName := Caption;
    if SaveDialog.Execute then
    begin
      ExportGrid4ToExcel(SaveDialog.FileName,cxGrid1,False,True,True);
      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName+'.xls'), nil, nil, sw_shownormal);
      LoggingData(IDUser,'Export to excel',FrSupplier.Caption,'','export to excel dengan nama file : '+SaveDialog.FileName);
    end
  end
  else
  begin
      ShowMessage('Anda tidak berhak Mengeksport Excel');
  end;
end;

procedure TFrSupplier.AutoFilter1Click(Sender: TObject);
begin
    if tvSupplier.OptionsCustomize.ColumnFiltering=false then
       tvSupplier.OptionsCustomize.ColumnFiltering:=true
    else
       tvSupplier.OptionsCustomize.ColumnFiltering:=false;

end;

procedure TFrSupplier.ShowGrid1Click(Sender: TObject);
begin
   if ShowGrid1.Checked then
   begin
      tvSupplier.OptionsView.GridLines := glBoth;
      ShowGrid1.Checked:=false;
   end else
   begin
      tvSupplier.OptionsView.GridLines := glNone;
      ShowGrid1.Checked:=true;
   end;
end;

procedure TFrSupplier.ShowHeader1Click(Sender: TObject);
begin
   if ShowHeader1.Checked then
   begin
      tvSupplier.OptionsView.Header:=false;
      ShowHeader1.Checked:=false;
   end else
   begin
      tvSupplier.OptionsView.Header:=true;
      ShowHeader1.Checked:=true;
   end;
end;

procedure TFrSupplier.Show1Click(Sender: TObject);
begin
   if Show1.Checked then
   begin
      tvSupplier.OptionsView.Footer:=false;
      Show1.Checked:=false;
   end else
   begin
      tvSupplier.OptionsView.Footer:=true;
      Show1.Checked:=true;
   end;
end;

procedure TFrSupplier.ToolButton1Click(Sender: TObject);
begin
  if IsTambah then
  begin
    Application.CreateForm(TFrSubSupplier, FrSubSupplier);
    FrSubSupplier.IsSimpan:=True;
    FrSubSupplier.Label30.Caption := 'Input Data '+ Perkiraan.Items.Strings[Perkiraan.ItemIndex];
    //FrSubSupplier.Tanggal.Date:=now;
    //FrSubSupplier.PageControl1.ActivePageIndex:=0;
    //FrSubSupplier.ActiveControl:=FrSubSupplier.NamaCust;
    if mSupplier_FlagMenu=2 then
      Begin
              frSubSupplier.GroupBox1.Visible :=false;
              frSubSupplier.Label50.Visible :=false;
              frSubSupplier.Label55.Visible :=false;
              frSubSupplier.Label51.Visible :=false;
              frSubSupplier.Label54.Caption:='Atas Nama';
              frSubSupplier.Label503.Visible :=false;
              frSubSupplier.Label19.Visible :=false;
              frSubSupplier.Label20.Visible :=false;
              frSubSupplier.plafon.Visible :=false;
              frSubSupplier.hari.Visible :=false;
              frSubSupplier.HariPiutang.Visible :=false;
              frSubSupplier.ppn.Visible :=false;
              frSubSupplier.hrgke.Visible :=false;
              frSubSupplier.CboKontrak.Visible :=false;
              frSubSupplier.label55.Visible :=true;
              frSubSupplier.label56.Visible :=true;
              frSubSupplier.bank.Visible :=true;
              frSubSupplier.noacc.Visible :=true;
      end;
    if mSupplier_FlagMenu=3 then
      begin
         frSubSupplier.GroupBox1.Visible :=false;
                       frSubSupplier.GroupBox1.Visible :=false;
              frSubSupplier.Label50.Visible :=false;
              frSubSupplier.Label55.Visible :=false;
              frSubSupplier.Label51.Visible :=false;
                       frSubSupplier.Label503.Visible :=false;
              frSubSupplier.Label19.Visible :=false;
              frSubSupplier.Label20.Visible :=false;
              frSubSupplier.plafon.Visible :=false;
              frSubSupplier.hari.Visible :=false;
              frSubSupplier.HariPiutang.Visible :=false;
              frSubSupplier.ppn.Visible :=false;
              frSubSupplier.hrgke.Visible :=false;
              frSubSupplier.CboKontrak.Visible :=false;
      end;

    FrSubSupplier.ShowModal;
  end
  else
  begin
    MsgTidakBerhakTambahData;
    ActiveControl:=cxGrid1;
  end;
end;

procedure TFrSupplier.FormKeyDown(Sender: TObject; var Key: Word;
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
   end;
end;

procedure TFrSupplier.ToolButton2Click(Sender: TObject);
begin
  if IsKoreksi then
  begin
    Application.CreateForm(TFrSubSupplier, FrSubSupplier);
    FrSubSupplier.IsSimpan:=false;
    FrSubSupplier.mKodeCust_AlamatCust:=QuViewKODECUSTSUPP.AsString;
    FrSubSupplier.mPengirim_AlamatCust:=0;
    AmbilData;
    FrSubSupplier.ShowModal;
    if FrSubSupplier.ModalResult=mrOK then
    begin
    end;
    ActiveControl:=cxGrid1;
  end else
  begin
    MsgTidakBerhakKoreksiData;
    ActiveControl:=cxGrid1;
  end;
end;

procedure TFrSupplier.ToolButton3Click(Sender: TObject);
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
     if DataBersyarat('select * from vwHutPiut where KodeCustSupp=:0',
       [QuViewKODECUSTSUPP.AsString], DM.QuCari)=True then
     begin
       MessageDlg('Sudah ada transaksi ',mtInformation,[mbOK],0);
     end else
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
   end;
  end else
  begin
    MsgTidakBerhakHapusData;
    ActiveControl:=cxGrid1;
  end;

end;

procedure TFrSupplier.MultiSelect1Click(Sender: TObject);
begin
   if MultiSelect1.Checked then
   begin
      tvSupplier.OptionsSelection.MultiSelect := False;
      MultiSelect1.Checked:=false;
   end else
   begin
      tvSupplier.OptionsSelection.MultiSelect := True;
      MultiSelect1.Checked:=true;
   end;

end;

procedure TFrSupplier.dxDBGrid1CustomDrawCell(Sender: TObject;
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
       AFont.Color:=clBlack;
  end;
end;

procedure TFrSupplier.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

procedure TFrSupplier.ToolButton10Click(Sender: TObject);
begin
  tampildata(ISTampil);
end;

procedure TFrSupplier.SemuaClick(Sender: TObject);
begin
  ToolButton13.Caption:=Semua.Caption;
  PopupMenu2.Items.Items[0].Checked:=True;
  PopupMenu2.Items.Items[1].Checked:=False;
  PopupMenu2.Items.Items[2].Checked:=False;
  ISTampil:=2;
  Tampildata(isTampil);
end;

procedure TFrSupplier.AktifClick(Sender: TObject);
begin
  ToolButton13.Caption:=Aktif.Caption;
  PopupMenu2.Items.Items[0].Checked:=False;
  PopupMenu2.Items.Items[1].Checked:=True;
  PopupMenu2.Items.Items[2].Checked:=False;
  ISTampil:=1;
  Tampildata(isTampil);
end;

procedure TFrSupplier.TidakAktifClick(Sender: TObject);
begin
  ToolButton13.Caption:=TidakAktif.Caption;
  PopupMenu2.Items.Items[0].Checked:=False;
  PopupMenu2.Items.Items[1].Checked:=False;
  PopupMenu2.Items.Items[2].Checked:=True;
  ISTampil:=0;
  Tampildata(isTampil);
end;

procedure TFrSupplier.FormCreate(Sender: TObject);
var i : Integer;
begin
  mSupplier_FlagMenu:=gFlagMenu;
  with DM.QuCari do
  begin
    close;
    sql.Clear;
    sql.Add('Select a.Perkiraan,b.Keterangan ');
    sql.add('from dbPosthutpiut a ');
    sql.add('left outer join dbperkiraan b on b.perkiraan=a.perkiraan ');
    //sql.add('where a.Kode in (''HT'',''PT'',''UHT'',''UPT'') ');
    if mSupplier_FlagMenu=0 then
      sql.add('where a.Kode in (''HT'',''UPT'') ')
    else
      sql.add('where a.Kode in (''PT'',''UHT'') ');
    sql.add('Order by a.Perkiraan');
    Open;
    Perkiraan.Items.Clear;
    i := 0;
    SetLength(xValue,DM.QuCari.RecordCount+1);
    xValue[i]:='Semua';
    inc(i);
    Perkiraan.Items.Add('Semua');
    while not eof do
    begin
      xValue[i]:=FieldByname('Perkiraan').AsString;
      Perkiraan.Items.Add(FieldByname('Keterangan').AsString+' ('+FieldByname('Perkiraan').AsString+')');
      inc(i);
      next;
    end;
    Perkiraan.ItemIndex :=0;
    xPerkPostHutPiut := xValue[Perkiraan.ItemIndex];
    Perkiraan.ItemIndex := 0;
  end;
  ComboBox_AutoWidth(Perkiraan);
  
end;

procedure TFrSupplier.PerkiraanChange(Sender: TObject);
begin
  xPerkPostHutPiut := xValue[Perkiraan.ItemIndex];
  tampildata(ISTampil);
end;

procedure TFrSupplier.tvSupplierFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  with QuContact do
  begin
    Close;
    Prepared;
    Parameters.ParamByName('KodeCustSupp').Value:=QuViewKODECUSTSUPP.AsString;
    Open;
  end;
end;

procedure TFrSupplier.ToolButton12Click(Sender: TObject);
begin
  Application.CreateForm(TFrPerkCustSupp, FrPerkCustSupp);
  FrPerkCustSupp.Tag := FrSupplier.Tag;
  FrPerkCustSupp.Caption := 'Daftar Perkiraan  '+ QuViewNAMACUSTSUPP.AsString;
  FrPerkCustSupp.mkodetipe := QuViewKODECUSTSUPP.AsString;
  CekOtoritasMenu(IDUser,FrPerkCustSupp.tag,FrPerkCustSupp.Istambah,FrPerkCustSupp.Ishapus,
              FrPerkCustSupp.Iskoreksi, FrPerkCustSupp.isCetak, FrPerkCustSupp.isExcel);
  FrPerkCustSupp.ShowModal;
end;

procedure TFrSupplier.ToolButton14Click(Sender: TObject);
begin
  if not QuView.IsEmpty then
  begin
    Application.CreateForm(TFrAlamatCustSupp, FrAlamatCustSupp);
    FrAlamatCustSupp.mKodeCust_AlamatCust:=QuViewKODECUSTSUPP.AsString;
    FrAlamatCustSupp.mPengirim_AlamatCust:=0;
    FrAlamatCustSupp.ShowModal;
  end else
  begin
    MessageDlg('Data kosong !!!', mtError, [mbOK], 0);
    if CxGrid1.CanFocus then
       cxGrid1.SetFocus;
  end;
end;

procedure TFrSupplier.ToolButton15Click(Sender: TObject);
begin
 if not QuView.IsEmpty then
  begin
    Application.CreateForm(TFrbarangCust, FrbarangCust);
    FrbarangCust.mKodeCust_AlamatCust:=QuViewKODECUSTSUPP.AsString;
    FrbarangCust.mPengirim_AlamatCust:=0;
    FrbarangCust.ShowModal;
  end else
  begin
    MessageDlg('Data kosong !!!', mtError, [mbOK], 0);
    if CxGrid1.CanFocus then
       cxGrid1.SetFocus;
  end;
end;

procedure TFrSupplier.ToolButton4Click(Sender: TObject);
begin
  Application.CreateForm(TFrMainsubcustomer, FrMainsubcustomer);
  Frmainsubcustomer.Tag := FrSupplier.Tag;
  Frmainsubcustomer.Caption := 'Daftar Perkiraan  '+ QuViewNAMACUSTSUPP.AsString;
  Frmainsubcustomer.mkodetipe := QuViewKODECUSTSUPP.AsString;
  CekOtoritasMenu(IDUser,Frmainsubcustomer.tag,Frmainsubcustomer.Istambah,Frmainsubcustomer.Ishapus,
              Frmainsubcustomer.Iskoreksi, Frmainsubcustomer.isCetak, Frmainsubcustomer.isExcel);
  Frmainsubcustomer.ShowModal;

end;

end.
