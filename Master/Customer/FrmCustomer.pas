unit FrmCustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  ImgList, StdCtrls, ExtCtrls, Menus, 
  dxGridMenus,ShellApi, dxDBTLCl, dxGrClms, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxEdit, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxGrid;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrCustomer = class(TForm)
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
    dxDBGrid1: TdxDBGrid;
    MultiSelect1: TMenuItem;
    Sp_customer: TADOStoredProc;
    PopupMenu2: TPopupMenu;
    Semua: TMenuItem;
    Aktif: TMenuItem;
    TidakAktif: TMenuItem;
    dxDBGrid1KODECUST: TdxDBGridMaskColumn;
    dxDBGrid1Nama: TdxDBGridMaskColumn;
    dxDBGrid1KOTA: TdxDBGridMaskColumn;
    dxDBGrid1TELPON: TdxDBGridMaskColumn;
    dxDBGrid1FAX: TdxDBGridMaskColumn;
    dxDBGrid1EMAIL: TdxDBGridMaskColumn;
    dxDBGrid1NEGARA: TdxDBGridMaskColumn;
    dxDBGrid1NPWP: TdxDBGridMaskColumn;
    dxDBGrid1PLAFON: TdxDBGridMaskColumn;
    dxDBGrid1HARI: TdxDBGridMaskColumn;
    dxDBGrid1NamaJenis: TdxDBGridMaskColumn;
    dxDBGrid1ALAMAT: TdxDBGridMemoColumn;
    ToolButton11: TToolButton;
    ToolButton13: TToolButton;
    dxDBGrid1Column13: TdxDBGridColumn;
    Panel1: TPanel;
    Label1: TLabel;
    Perkiraan: TComboBox;
    ToolButton7: TToolButton;
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
    QuViewALAMAT: TStringField;
    QuViewNama: TStringField;
    QuViewNamaJenis: TStringField;
    ToolButton8: TToolButton;
    QuViewIsBeliJual: TBooleanField;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1Level2: TcxGridLevel;
    tvMaster: TcxGridDBBandedTableView;
    tvDetail: TcxGridDBBandedTableView;
    QuMaster: TADOQuery;
    dsMaster: TDataSource;
    QuDetail: TADOQuery;
    dsDetail: TDataSource;
    tvMasterKODECUSTSUPP: TcxGridDBBandedColumn;
    tvMasterKota: TcxGridDBBandedColumn;
    tvMasterTELPON: TcxGridDBBandedColumn;
    tvMasterFAX: TcxGridDBBandedColumn;
    tvMasterEMAIL: TcxGridDBBandedColumn;
    tvMasterNEGARA: TcxGridDBBandedColumn;
    tvMasterNPWP: TcxGridDBBandedColumn;
    tvMasterPLAFON: TcxGridDBBandedColumn;
    tvMasterHARI: TcxGridDBBandedColumn;
    tvMasterALAMAT: TcxGridDBBandedColumn;
    tvMasterNama: TcxGridDBBandedColumn;
    tvMasterNamaJenis: TcxGridDBBandedColumn;
    QuDetailContactId: TIntegerField;
    QuDetailTitle: TStringField;
    QuDetailFirstName: TStringField;
    QuDetailMiddleName: TStringField;
    QuDetailLastName: TStringField;
    QuDetailJobTitle: TStringField;
    QuDetailPhone1: TStringField;
    QuDetailPhone2: TStringField;
    QuDetailPhone3: TStringField;
    QuDetailEmail: TStringField;
    QuDetailAlamat: TMemoField;
    QuDetailPhoto: TBlobField;
    QuDetailKodeCustSupp: TStringField;
    QuDetailNama: TStringField;
    tvDetailPhone1: TcxGridDBBandedColumn;
    tvDetailPhone2: TcxGridDBBandedColumn;
    tvDetailPhone3: TcxGridDBBandedColumn;
    tvDetailEmail: TcxGridDBBandedColumn;
    tvDetailAlamat: TcxGridDBBandedColumn;
    tvDetailKodeCustSupp: TcxGridDBBandedColumn;
    tvDetailNama: TcxGridDBBandedColumn;
    tvDetailJobTitle: TcxGridDBBandedColumn;
    QuMasterKODECUSTSUPP: TStringField;
    QuMasterNAMACUSTSUPP: TStringField;
    QuMasterALAMAT1: TStringField;
    QuMasterALAMAT2: TStringField;
    QuMasterKota: TStringField;
    QuMasterTELPON: TStringField;
    QuMasterFAX: TStringField;
    QuMasterEMAIL: TStringField;
    QuMasterKODEPOS: TStringField;
    QuMasterNEGARA: TStringField;
    QuMasterNPWP: TStringField;
    QuMasterTanggal: TDateTimeField;
    QuMasterPLAFON: TBCDField;
    QuMasterHARI: TIntegerField;
    QuMasterHARIHUTPIUT: TIntegerField;
    QuMasterBERIKAT: TBooleanField;
    QuMasterUSAHA: TStringField;
    QuMasterPERKIRAAN: TStringField;
    QuMasterJENIS: TIntegerField;
    QuMasterNAMAPKP: TStringField;
    QuMasterALAMATPKP1: TStringField;
    QuMasterALAMATPKP2: TStringField;
    QuMasterKOTAPKP: TStringField;
    QuMasterSales: TStringField;
    QuMasterKodeVls: TStringField;
    QuMasterKodeExp: TStringField;
    QuMasterKodeTipe: TStringField;
    QuMasterIsPpn: TBooleanField;
    QuMasterIsAktif: TWordField;
    QuMasterKind: TWordField;
    QuMasterContactP: TStringField;
    QuMasterAlamat1ContP: TStringField;
    QuMasterAlamat2ContP: TStringField;
    QuMasterKotaContP: TStringField;
    QuMasterNegaraContP: TStringField;
    QuMasterTelpContP: TStringField;
    QuMasterFaxContP: TStringField;
    QuMasterEmailContP: TStringField;
    QuMasterKODEPOSContP: TStringField;
    QuMasterHPContP: TStringField;
    QuMasterSyaratPenerimaan: TStringField;
    QuMasterSyaratPembayaran: TStringField;
    QuMasterAgent: TStringField;
    QuMasterAlamat1A: TStringField;
    QuMasterAlamat2A: TStringField;
    QuMasterKotaA: TStringField;
    QuMasterNegaraA: TStringField;
    QuMasterContactA: TStringField;
    QuMasterTelpA: TStringField;
    QuMasterFaxA: TStringField;
    QuMasterEmailA: TStringField;
    QuMasterKODEPOSA: TStringField;
    QuMasterHPA: TStringField;
    QuMasterEmailContA: TStringField;
    QuMasterMyID: TBytesField;
    QuMasterPortOfLoading: TStringField;
    QuMasterCountryOfOrigin: TStringField;
    QuMasterALAMAT: TStringField;
    QuMasterNama: TStringField;
    QuMasterNamaJenis: TStringField;
    QuMasterIsBeliJual: TBooleanField;
    ToolButton12: TToolButton;
    tvMasterUSAHA: TcxGridDBBandedColumn;
    QuViewHargaKe: TWordField;
    QuMasterHargaKe: TWordField;
    QuMasterKetHarga: TStringField;
    tvMasterKetHarga: TcxGridDBBandedColumn;
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
    procedure dxDBGrid1CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
    procedure ToolButton10Click(Sender: TObject);
    procedure tampildata(xIsTampil:Byte);
    procedure SemuaClick(Sender: TObject);
    procedure AktifClick(Sender: TObject);
    procedure TidakAktifClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PerkiraanChange(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure tvMasterFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure PerkiraanDropDown(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);

  private
    { Private declarations }
    ISTampil : byte;
    ComboBox3WindowProcORIGINAL : TWndMethod;
    procedure ComboBox3WindowProc(var Message: TMessage);
  public
    { Public declarations }
    mPosisi : string;
    IsTambah,IsKoreksi,IsHapus, IsCetak , IsExcel: Boolean;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrCustomer: TFrCustomer;
  S: array[0..255] of char;
  BM: TBookmark;
  
implementation
uses myModul,Myprocedure,MyGlobal, FrmSubCustomer, FrmAlamatCust,
  FrmContact;
{$R *.dfm}

procedure TFrCustomer.ComboBox3WindowProc(var Message: TMessage);
var
  cr, lbr,CLBr: TRect;
begin
  //drawing the list box with combobox items
  if Message.Msg = WM_CTLCOLORLISTBOX then
  begin
    GetWindowRect(Perkiraan.Handle, cr);

    //list box rectangle
    GetWindowRect(Message.LParam, lbr);

    //move it to left to match right border
    if cr.Right <> lbr.Right then
      MoveWindow(Message.LParam,
                 lbr.Left-(lbr.Right-cr.Right),
                 lbr.Top,
                 lbr.Right-lbr.Left,
                 lbr.Bottom-lbr.Top,
                 True);
  end
  else
    ComboBox3WindowProcORIGINAL(Message);
end;

procedure TFrCustomer.FormCreate(Sender: TObject);
var i : Integer;
begin
  with DM.QuCari do
  begin
    close;
    sql.Clear;
    sql.Add('Select a.Perkiraan,b.Keterangan ');
    sql.add('from dbPosthutpiut a ');
    sql.add('     left outer join dbperkiraan b on b.perkiraan=a.perkiraan ');
    sql.add('where a.Kode=''PT'' or A.IsBeliJual=1 Order by a.Perkiraan');
    Open;
    Perkiraan.Items.Clear;
    i := 0;
    SetLength(xValue,DM.QuCari.RecordCount);
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
  

end;

procedure TFrCustomer.tampildata(xIsTampil:Byte);
begin
  with QuView do
  begin
    close;
    Prepared;
    Parameters[0].Value :=xIstampil;
    Parameters[1].Value :=Perkiraan.Text;
    Open;
  end;
  with QuMaster do
  begin
    close;
    Prepared;
    Parameters[0].Value :=xIstampil;
    Parameters[1].Value :=Perkiraan.Text;
    Open;
  end;
end;

procedure TFrCustomer.AmbilData;
begin
  with FrSubCustomer do
  begin
    KodeCust.Text:=QuMasterKODECUSTSUPP.AsString;
    NamaCust.Text:=QuMasterNAMACUSTSUPP.AsString;
    Usaha.Text:=QuMasterUSAHA.AsString;
    Alamat1.Text:=QuMasterALAMAT1.AsString;
    Alamat2.Text:=QuMasterALAMAT2.AsString;
    KodeKota.Text:=QuMasterKota.AsString;
    KodePos.Text:=QuMasterKODEPOS.AsString;
    Negara.Text:=QuMasterNEGARA.AsString;
    Telpon.Text:=QuMasterTELPON.AsString;
    Fax.Text:=QuMasterFAX.AsString;
    Email.Text:=QuMasterEMAIL.AsString;
    Npwp.Text:=QuMasterNPWP.AsString;
    Plafon.AsFloat:=QuMasterPLAFON.AsFloat;
    Hari.AsInteger:=QuMasterHARI.AsInteger;
    NamaPKP.Text:=QuMasterNAMAPKP.AsString;
    AlamatPkp1.Text:=QuMasterALAMATPKP1.AsString;
    AlamatPkp2.Text:=QuMasterALAMATPKP2.AsString;
    KotaPkp.Text:=QuMasterKOTAPKP.AsString;
    ComboBox1.ItemIndex := QuMasterHargaKe.AsInteger;
  end;
end;

procedure TFrCustomer.SimpanData(Mode:Char);
begin
  BM := QuMaster.GetBookmark;
  With Sp_Customer do
  begin
    Prepared;
    Parameters[1].Value:=Mode;
    if Mode='D' then
    begin
       Parameters[18].Value:=QuMasterKODECUSTSUPP.AsString;
       if QuMasterIsBeliJual.Value then
         Parameters[29].Value:=0
      else
         Parameters[29].Value:=1;
    end
    else
    begin
      Parameters[2].Value:=FrSubCustomer.Kodecust.Text;
      Parameters[3].Value:=FrSubCustomer.NamaCust.Text;
      Parameters[4].Value:=FrSubCustomer.Usaha.Text;
      Parameters[5].Value:=FrSubCustomer.Alamat1.Text;
      Parameters[6].Value:=FrSubCustomer.Alamat2.Text;
      Parameters[7].Value:=FrSubCustomer.KodeKota.Text;
      Parameters[8].Value:=FrSubCustomer.KodePos.Text;
      Parameters[9].Value:=FrSubCustomer.Negara.Text;
      Parameters[10].Value:=FrSubCustomer.telpon.Text;
      Parameters[11].Value:=FrSubCustomer.Fax.Text;
      Parameters[12].Value:=FrSubCustomer.Email.Text;
      Parameters[13].Value:=FrSubCustomer.npwp.Text;
      Parameters[14].Value:=date;
      Parameters[15].Value:=FrSubCustomer.Plafon.AsFloat;
      Parameters[16].Value:=FrSubCustomer.Hari.AsFloat;
      Parameters[17].Value:=0;
      Parameters[18].Value:=QuMasterKODECUSTSUPP.AsString;
      Parameters[19].Value:=0;
      Parameters[20].Value:=FrSubCustomer.NamaPKP.Text;
      Parameters[21].Value:=FrSubCustomer.AlamatPkp1.Text;
      Parameters[22].Value:=FrSubCustomer.AlamatPkp2.Text;
      Parameters[23].Value:=FrSubCustomer.KotaPkp.Text;
      Parameters[24].Value:='';
      Parameters[25].Value:='';
      Parameters[26].Value:=xPerkPostHutPiut;
      Parameters[27].Value:='';
      Parameters[28].Value:=0;
      if QuMasterIsBeliJual.Value then
         Parameters[29].Value:=0
      else
         Parameters[29].Value:=1;
      Parameters[30].Value:=0;
      Parameters[31].Value:=FrSubCustomer.Aktif.ItemIndex;
      Parameters[32].Value:=FrSubCustomer.ComboBox1.ItemIndex;
    end;
    try
      ExecProc;
      if Mode='I' then
      begin
        QuMaster.Requery;
        QuMaster.Locate('KodeCustSupp',FrSubCustomer.KodeCust.Text,[LOP,LOC]);
        LoggingData(IDUser,Mode,'CUS','',
                    ' Kode = '+QuotedStr(FrSubCustomer.Kodecust.Text)+
                    ' Nama = '+QuotedStr(FrSubCustomer.NamaCust.Text));
      end
      else if Mode='U' then
      begin
        QuMaster.Requery;
        if Qumaster.BookmarkValid(BM) then
        begin
          try
             QuMaster.GotoBookmark(BM);
          finally
             QuMaster.FreeBookmark(BM);
          end
        end else
        begin
          QuMaster.FreeBookmark(BM);
          QuMaster.Last;
        end;
        LoggingData(IDUser,Mode,'CUS','',
                    ' Kode = '+QuotedStr(FrSubCustomer.Kodecust.Text)+
                    ' Nama = '+QuotedStr(FrSubCustomer.NamaCust.Text));
      end
      Else if Mode='D' then
      begin
        LoggingData(IDUser,Mode,'CUS','',
                    ' Kode = '+QuotedStr(QuMasterKODECUSTSUPP.AsString)+
                    ' Nama = '+QuotedStr(QuMasterNAMACUSTSUPP.AsString));
        QuMaster.Requery;
      end;
    except
      If (Mode='I') Or (Mode='U') then
         showmessage('Proses Gagal !, Data Sudah Ada')
      else If (Mode='D') then
         showmessage('Proses Gagal !, Pelanggan berkaitan dengan transaksi');
    end;
  end;
end;

procedure TFrCustomer.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrCustomer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
    begin
      Action:=caFree;
    end
    else
        Action:=caNone;
end;

procedure TFrCustomer.FormDestroy(Sender: TObject);
begin
FrCustomer:=nil;
end;

procedure TFrCustomer.FormShow(Sender: TObject);
begin
    ISTampil:=2;
    tampildata(ISTampil);
    activeControl:=dxDBGrid1;
end;

procedure TFrCustomer.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrCustomer.ExportExcel1Click(Sender: TObject);
begin
  if (IsExcel) then
  begin
      Save('xls', 'Microsoft Excel (*.xls)|*.xls', FrCustomer.Caption, dxDBGrid1.SaveToXLS);
      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
      //LoggingData(Caption,'User '+IdUser+' Export Data '+ SaveDialog.FileName,dm.qucari);
  end else
  begin
      ShowMessage('Anda tidak berhak Mengeksport Excel');
  end;
end;

procedure TFrCustomer.AutoFilter1Click(Sender: TObject);
begin
    if dxDBGrid1.Filter.Active=false then
       dxDBGrid1.Filter.Active:=true
    else
       dxDBGrid1.Filter.Active:=false;

end;

procedure TFrCustomer.ShowGrid1Click(Sender: TObject);
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

procedure TFrCustomer.ShowHeader1Click(Sender: TObject);
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

procedure TFrCustomer.Show1Click(Sender: TObject);
begin
   if Show1.Checked then
   begin
      dxDBGrid1.ShowSummaryFooter:=false;
      Show1.Checked:=false;
   end else
   begin
      dxDBGrid1.ShowSummaryFooter:=true;
      Show1.Checked:=true;
   end;
end;

procedure TFrCustomer.ToolButton1Click(Sender: TObject);
begin
  if IsTambah then
  begin
    Application.CreateForm(TFrSubCustomer, FrSubCustomer);
    FrSubCustomer.IsSimpan:=True;
    //FrSubCustomer.Tanggal.Date:=now;
    //FrSubCustomer.PageControl1.ActivePageIndex:=0;
    //FrSubCustomer.ActiveControl:=FrSubCustomer.NamaCust;
    FrSubCustomer.ShowModal;
  end
  else
  begin
    MsgTidakBerhakTambahData;
    ActiveControl:=dxDBGrid1;
  end;
end;

procedure TFrCustomer.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrCustomer.ToolButton2Click(Sender: TObject);
begin
  if IsKoreksi then
  begin
    Application.CreateForm(TFrSubCustomer, FrSubCustomer);
    FrSubCustomer.IsSimpan:=false;
    AmbilData;
    FrSubCustomer.ShowModal;
    if FrSubCustomer.ModalResult=mrOK then
    begin
    end;
    ActiveControl:=dxDBGrid1;
  end else
  begin
    MsgTidakBerhakKoreksiData;
    ActiveControl:=dxDBGrid1;
  end;
end;

procedure TFrCustomer.ToolButton3Click(Sender: TObject);
begin
  if IsHapus then
  begin
   if Qumaster.IsEmpty=true then
   begin
      Application.MessageBox('Tabel Kosong','Informasi'
      ,MB_OK Or MB_ICONWARNING);
   end
   else
   begin
      StrPCopy(S,Format('Anda yakin Kode %s dan Nama %s dihapus ?',
           [Qumaster.Fields[0].asstring,
            Qumaster.Fields[1].asstring]));
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

procedure TFrCustomer.MultiSelect1Click(Sender: TObject);
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

procedure TFrCustomer.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrCustomer.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

procedure TFrCustomer.dxDBGrid1CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
  if AColumn = dxDBGrid1.Columns[0] then
  begin
    AColor:=$00ffefe1;
    AFont.Color:=clblack;
    AFont.Style:=AFont.Style + [fsBold];
  end;
end;

procedure TFrCustomer.ToolButton10Click(Sender: TObject);
begin
  tampildata(ISTampil);
end;

procedure TFrCustomer.SemuaClick(Sender: TObject);
begin
  ToolButton13.Caption:=Semua.Caption;
  PopupMenu2.Items.Items[0].Checked:=True;
  PopupMenu2.Items.Items[1].Checked:=False;
  PopupMenu2.Items.Items[2].Checked:=False;
  ISTampil:=2;
  Tampildata(isTampil);
end;

procedure TFrCustomer.AktifClick(Sender: TObject);
begin
  ToolButton13.Caption:=Aktif.Caption;
  PopupMenu2.Items.Items[0].Checked:=False;
  PopupMenu2.Items.Items[1].Checked:=True;
  PopupMenu2.Items.Items[2].Checked:=False;
  ISTampil:=1;
  Tampildata(isTampil);
end;

procedure TFrCustomer.TidakAktifClick(Sender: TObject);
begin
  ToolButton13.Caption:=TidakAktif.Caption;
  PopupMenu2.Items.Items[0].Checked:=False;
  PopupMenu2.Items.Items[1].Checked:=False;
  PopupMenu2.Items.Items[2].Checked:=True;
  ISTampil:=0;
  Tampildata(isTampil);
end;



procedure TFrCustomer.PerkiraanChange(Sender: TObject);
begin
  xPerkPostHutPiut := xValue[Perkiraan.ItemIndex];
  tampildata(ISTampil);
end;

procedure TFrCustomer.ToolButton8Click(Sender: TObject);
begin
  if not Qumaster.IsEmpty then
  begin
    Application.CreateForm(TFrAlamatCust, FrAlamatCust);
    FrAlamatCust.mKodeCust_AlamatCust:=QuMasterKODECUSTSupp.AsString;
    FrAlamatCust.mPengirim_AlamatCust:=0;
    FrAlamatCust.ShowModal;
  end else
  begin
    MessageDlg('Data kosong !!!', mtError, [mbOK], 0);
    if dxDBGrid1.CanFocus then
       dxDBGrid1.SetFocus;
  end;
end;

procedure TFrCustomer.tvMasterFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  with QuDetail do
  begin
    close;
    Prepared;
    Open;
  end;
end;

procedure TFrCustomer.PerkiraanDropDown(Sender: TObject);
begin
  ComboBox_AutoWidth(Perkiraan);
  //ComboBox3WindowProcORIGINAL := Perkiraan.WindowProc;
  //Perkiraan.WindowProc := ComboBox3WindowProc;
end;

procedure TFrCustomer.ToolButton12Click(Sender: TObject);
begin
  Application.CreateForm(TfrContact, FrContact);
  CekOtoritasMenu(IDUser,FrCustomer.Tag,frContact.IsTambah, frContact.Iskoreksi, FrContact.IsHapus, FrContact.IsCetak,
                  FrContact.IsExcel);
  Frcontact.kodecustSupp:= QuMasterkodecustSupp.asstring;

  Frcontact.showmodal;
end;

end.
