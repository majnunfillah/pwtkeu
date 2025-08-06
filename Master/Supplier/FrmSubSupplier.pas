unit FrmSubSupplier;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons,db, Mask, ToolEdit, PBNumEdit,StrUtils,
  ComCtrls, dxPageControl, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, ADODB;

type
  TFrSubSupplier = class(TForm)
    Label30: TLabel;
    Label31: TLabel;
    Bevel2: TBevel;
    dxPageControl1: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    dxTabSheet2: TdxTabSheet;
    dxTabSheet3: TdxTabSheet;
    dxTabSheet4: TdxTabSheet;
    Label7: TLabel;
    ContactP: TEdit;
    Label8: TLabel;
    Alamat1ContP: TEdit;
    Alamat2ContP: TEdit;
    Label9: TLabel;
    KotaContP: TEdit;
    Label10: TLabel;
    KodePosContP: TEdit;
    Label15: TLabel;
    NegaraContP: TEdit;
    Label18: TLabel;
    TelponContP: TEdit;
    Label21: TLabel;
    FaxContP: TEdit;
    Label24: TLabel;
    EmailContP: TEdit;
    Label26: TLabel;
    Alamat1A: TEdit;
    Alamat2A: TEdit;
    Label28: TLabel;
    KotaA: TEdit;
    Label29: TLabel;
    KodeposA: TEdit;
    Label32: TLabel;
    NegaraA: TEdit;
    Label33: TLabel;
    TelponA: TEdit;
    Label34: TLabel;
    FaxA: TEdit;
    Label35: TLabel;
    EmailContA: TEdit;
    Label36: TLabel;
    HPContP: TEdit;
    Label37: TLabel;
    HPA: TEdit;
    Label38: TLabel;
    ContactA: TEdit;
    Label39: TLabel;
    EmailA: TEdit;
    GroupBox1: TGroupBox;
    NPWP: TEdit;
    NamaPKP: TEdit;
    AlamatPkp1: TEdit;
    AlamatPkp2: TEdit;
    KotaPkp: TEdit;
    Label23: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    Label40: TLabel;
    Label6: TLabel;
    Label41: TLabel;
    SyaratPenerimaan: TMemo;
    SyaratPembayaran: TMemo;
    Label42: TLabel;
    Label43: TLabel;
    CountryOfOrigin: TEdit;
    Label44: TLabel;
    PortOfLoading: TEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    dxTabSheet5: TdxTabSheet;
    Panel2: TPanel;
    Panel4: TPanel;
    PanelShow1: TPanel;
    HapusBtn: TSpeedButton;
    KoreksiBtn: TSpeedButton;
    TambahBtn: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1KodeCust: TdxDBGridMaskColumn;
    dxDBGrid1Nomor: TdxDBGridMaskColumn;
    dxDBGrid1NamaKirim: TdxDBGridMaskColumn;
    dxDBGrid1AlamatTxt: TdxDBGridMemoColumn;
    dxDBGrid1Alamat: TdxDBGridMemoColumn;
    dxDBGrid1Kota: TdxDBGridMaskColumn;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    LNamaExp: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    BitBtn1: TBitBtn;
    Kota: TEdit;
    Alamat: TMemo;
    KodeExp: TEdit;
    NamaKirim: TEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label22: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label27: TLabel;
    Label5: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label25: TLabel;
    Email: TEdit;
    KodePos: TEdit;
    Alamat2: TEdit;
    Telpon: TEdit;
    Negara: TEdit;
    Alamat1: TEdit;
    Usaha: TEdit;
    NamaCust: TEdit;
    KodeCust: TEdit;
    KodeKota: TEdit;
    Fax: TEdit;
    Plafon: TPBNumEdit;
    Hari: TPBNumEdit;
    Agent: TEdit;
    Aktif: TComboBox;
    Label11: TLabel;
    NmKOta: TLabel;
    QuBeli: TADOQuery;
    QuBeliKodeCustSupp: TStringField;
    QuBeliNomor: TIntegerField;
    QuBeliNama: TStringField;
    QuBeliAlamat: TStringField;
    QuBeliTelp: TStringField;
    QuBeliFax: TStringField;
    QuBeliAlamatTxt: TMemoField;
    DsQuBeli: TDataSource;
    Shape6: TShape;
    LkodeArea: TLabel;
    LnamaArea: TLabel;
    Label51: TLabel;
    HariPiutang: TPBNumEdit;
    Att: TEdit;
    Label54: TLabel;
    Label50: TLabel;
    CboKontrak: TComboBox;
    Label503: TLabel;
    HrgKe: TComboBox;
    Label55: TLabel;
    Bank: TEdit;
    Label56: TLabel;
    NoACC: TEdit;
    Label53: TLabel;
    AttPhone: TEdit;
    IsMember: TCheckBox;
    TanggalValid: TDateEdit;
    Label58: TLabel;
    DiscMember: TPBNumEdit;
    Label57: TLabel;
    PPN: TCheckBox;
    Jenis: TEdit;
    Label52: TLabel;
    LnamaJenis: TLabel;
    Berikat: TCheckBox;
    Tunai: TCheckBox;
    Tahun: TPBNumEdit;
    Label59: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ClearKomponen;
    procedure BitBtn2Click(Sender: TObject);
    procedure KodeCustExit(Sender: TObject);
    procedure PerkiraanEnter(Sender: TObject);
    procedure NamaCustEnter(Sender: TObject);
    procedure NamaCustExit(Sender: TObject);
    procedure KodeKotaExit(Sender: TObject);
    procedure Tampilisikota;
    procedure KodeKotaEnter(Sender: TObject);
    procedure TambahBtnClick(Sender: TObject);
    procedure KoreksiBtnClick(Sender: TObject);
    procedure HapusBtnClick(Sender: TObject);
    procedure AlamatExit(Sender: TObject);
    procedure AlamatEnter(Sender: TObject);
    procedure NamaKirimKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ClearPanelDetail;
    procedure BitBtn1Click(Sender: TObject);
    procedure JenisEnter(Sender: TObject);
    procedure JenisExit(Sender: TObject);
  private
    Model: String;
    { Private declarations }
    function  IsiKodeCustomer: String;
    procedure TampilIsiValas;
    procedure TampilIsiPerkiraan;
    procedure TampilData;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure UpdateDataBeli(pChoice: Char);
  public
    { Public declarations }
    isSimpan : Boolean;
    mKodeCust_AlamatCust: String;
     mPengirim_AlamatCust: Integer;
  end;

var
  FrSubSupplier: TFrSubSupplier;
   mValid:Boolean;
implementation
uses FrmSupplier,MyGlobal,Myprocedure, MyModul,FrmBrows, FrmPerkCustSupp;
{$R *.DFM}

procedure TFrSubSupplier.ClearKomponen;
var i:integer;
begin
  for i:= 0 to FrSubSupplier.dxPageControl1.Pages[0].ControlCount-1 do
  begin
    if (FrSubSupplier.dxPageControl1.Pages[0].Controls[i] is TEdit) then
       (FrSubSupplier.dxPageControl1.Pages[0].Controls[i] as TEdit).Clear;
  end;
  for i:= 0 to FrSubSupplier.dxPageControl1.Pages[1].ControlCount-1 do
  begin
    if (FrSubSupplier.dxPageControl1.Pages[1].Controls[i] is TEdit) then
       (FrSubSupplier.dxPageControl1.Pages[1].Controls[i] as TEdit).Clear;
  end;

    for i:= 0 to Panel1.ControlCount-1 do
   begin
      if (Panel1.Controls[i] is TEdit) then
         (Panel1.Controls[i] as TEdit).Clear;
      if (Panel1.Controls[i] is TPBNumEdit) then
         (Panel1.Controls[i] as TPBNumEdit).Value:=0;
   end;

  NmKOta.Caption:='[...]';
  LkodeArea.Caption:='[...]';
  LnamaArea.Caption:='[...]';
  Plafon.value:=0;
  Hari.value:=0;
end;

function TFrSubSupplier.IsiKodeCustomer: String;
begin
end;

procedure TFrSubSupplier.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFrSubSupplier.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0)
    else if key=27 then
      close;
end;

procedure TFrSubSupplier.FormShow(Sender: TObject);
begin
  dxPageControl1.ActivePageIndex:=0;
  dxTabSheet2.Visible:=False;
  dxTabSheet3.Visible:=False;
  dxTabSheet4.Visible:=False;
  tampildata;
//  KodeCust.Enabled:=False;
  {if kodecust.Enabled =true then
    ActiveControl:=KodeCust
  Else}
//    ActiveControl:=NamaCust
  //
  //KodeCust.SetFocus ;
  //  KodeCust.Enabled:=False;
  {if kodecust.Enabled =true then
    ActiveControl:=KodeCust
  Else}
//    ActiveControl:=NamaCust
  //
  //KodeCust.SetFocus ;
  KodeCust.Enabled:=isSimpan=True;
  if KodeCust.CanFocus then
    KodeCust.SetFocus
  else
    NamaCust.SetFocus;
  if isSimpan then
    TanggalValid.Date := Now;
  if (FrSupplier.mSupplier_FlagMenu=0) or (FrSupplier.mSupplier_FlagMenu=3) then
  begin
  Label19.Visible:=False;
  Plafon.Visible:=False;
  Hari.Visible:=False;
  Label20.Visible:=False;
  jenis.Visible:=False;
  Label52.Visible:=False;
  End
  Else
   begin
  Label19.Visible:=True;
  Plafon.Visible:=True;
  Hari.Visible:=True;
  Label20.Visible:=True;
  jenis.Visible:=True;
  Label52.Visible:=True;
  End;

end;

procedure TFrSubSupplier.BitBtn3Click(Sender: TObject);
begin
if kodekota.Text <> '' then
  begin
        if IsSimpan=true then
        begin
          FrSupplier.mPosisi:=KodeCust.Text;
          FrSupplier.SimpanData('I');

          Application.CreateForm(TFrPerkCustSupp, FrPerkCustSupp);
          FrPerkCustSupp.Tag := FrSupplier.Tag;
          FrPerkCustSupp.Caption := 'Daftar Perkiraan  '+ NamaCust.Text ;//FrSupplier.QuViewNAMACUSTSUPP.AsString;
          FrPerkCustSupp.mkodetipe := KodeCust.Text;//FrSupplier.QuViewKODECUSTSUPP.AsString;
          CekOtoritasMenu(IDUser,FrPerkCustSupp.tag,FrPerkCustSupp.Istambah,FrPerkCustSupp.Ishapus,
                    FrPerkCustSupp.Iskoreksi, FrPerkCustSupp.isCetak, FrPerkCustSupp.isExcel);
          FrPerkCustSupp.ShowModal;

          if not DataBersyarat('Select kodecustSupp from DBPERKCUSTSUPP where kodecustSupp=:0',[kodecust.text],Dm.Qucari) then
               begin
                      MessageDlg('Detail Akun Harus Di Isi !',mtWarning,[mbok],0);
                      FrSupplier.SimpanData('D');
                      //FrPerkCustSupp.SimpanData('D');
               end
          else
          begin

          ClearKomponen;
          dxPageControl1.ActivePageIndex:=0;
          //ActiveControl:=NamaCust;
          ActiveControl:=KodeCust;
          end
      {
          ClearKomponen;
          dxPageControl1.ActivePageIndex:=0;
          //ActiveControl:=NamaCust;
          ActiveControl:=KodeCust;
      }
        end
        else
        begin
          FrSupplier.SimpanData('U');
          ModalResult:=mrOK;
        end;
  end
  else
        MessageDlg('Kota harus Di Isi !',mtWarning,[mbok],0);

end;

procedure TFrSubSupplier.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrSubSupplier.KodeCustExit(Sender: TObject);
begin
  if length(KodeCust.Text)=0 then
  begin
    Showmessage('Kode Supplier tidak boleh kosong !');
    Activecontrol:=KodeCust;
  end
  else
  begin
    if (Issimpan=true)  then
    begin
      if DataBersyarat('Select kodecustSupp from dbcustSupp where kodecustSupp=:0',[kodecust.text],Dm.Qucari) then
      begin
        MessageDlg('Data Supplier Sudah ada !',mtWarning,[mbok],0)
      end;
    end;
  end;
end;

procedure TFrSubSupplier.TampilIsiPerkiraan;
begin
end;

procedure TFrSubSupplier.TampilIsiValas;
begin
end;

procedure TFrSubSupplier.PerkiraanEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrSubSupplier.NamaCustEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrSubSupplier.NamaCustExit(Sender: TObject);
begin
  if mValid then
  begin
    //KodeCust.Text := GenerateCode('dbCustSupp','KodecustSupp',Copy(namacust.Text,1,1));
  end;
end;

procedure TFrSubSupplier.KodeKotaExit(Sender: TObject);
begin
if mValid then
 begin
   if length(Kodekota.Text)=0 then TampilisiKota else
   begin
     if DataBersyarat('Select A.*,B.NamaArea from DbKOta A Left Outer join DbArea B on A.KodeArea=B.KodeArea '+
     'where KodeKota like :0',['%'+kodeKota.text+'%'],DM.QuCari)=true then
     begin
         NmKota.Caption:='[ '+DM.QuCari.fieldbyname('NamaKota').AsString+' ]';
         KodeKota.Text:=DM.QuCari.fieldbyname('KodeKota').AsString;
         LnamaArea.Caption:='Nama Area : '+DM.QuCari.fieldbyname('NamaArea').AsString;
         LkodeArea.Caption:='Kode Area : '+DM.QuCari.fieldbyname('KodeArea').AsString;
     end
     else Tampilisikota;
   end;
 end;
end;

procedure TfrSubSupplier.TampilIsiKota;
begin
     KodeBrows:=91111;
     Application.CreateForm(TFrBrows, FrBrows);
     FrBrows.ShowModal;
     if FrBrows.ModalResult=mrOk then
     begin
         KodeKota.Text:=FrBrows.QuBrows.FieldByName('kodeKota').AsString;
         Nmkota.Caption:='[ '+FrBrows.QuBrows.FieldByName('Namakota').AsString+' ]';
         LkodeArea.Caption:='Kode Area : '+FrBrows.QuBrows.FieldByName('KodeArea').AsString;
         LnamaArea.Caption:='Nama Area : '+FrBrows.QuBrows.FieldByName('NamaArea').AsString;
     end
     else
        ActiveControl:=KodeKota;
end;

procedure TFrSubSupplier.KodeKotaEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubSupplier.TambahBtnClick(Sender: TObject);
begin
Model:='write';
  TampilTombolDetail(True);
  ActiveControl:=NamaKirim;
end;

procedure TFrSubSupplier.TampilTombolDetail(pNilai: Boolean);
begin
  PanelShow1.Enabled:=not pNilai;
  Panel3.Visible:=pNilai;
  Panel2.Enabled:=not pNilai;
  Panel3.Enabled:=pNilai;
end;
procedure TFrSubSupplier.KoreksiBtnClick(Sender: TObject);
begin
mValid:=False;
   Model:='koreksi';
   if QuBeli.IsEmpty=False then
   begin
      TampilTombolDetail(True);
      NamaKirim.Text:=QuBeliNama.AsString;
      Alamat.Text:=QuBeliAlamat.AsString;
      Kota.Text:=QuBelitelp.AsString;
      KodeExp.Text:=QuBeliFax.AsString;
      ActiveControl:=NamaKirim;
   end
   else
   begin
      ShowMessage('Tidak ada transaksi yang dikoreksi !');
      ActiveControl:=dxDBGrid1;
   end;
end;

procedure TFrSubSupplier.HapusBtnClick(Sender: TObject);
begin
   if QuBeli.IsEmpty=True then
   begin
      Application.MessageBox('Tabel Kosong','Informasi'
      ,MB_OK Or MB_ICONWARNING);
   end
   else
   begin
      if (Application.MessageBox('Anda yakin satu baris data dihapus ?','Hapus Data',
              MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
      begin
              UpdateDataBeli('D');
      end;
   end;
end;

procedure TFrSubSupplier.AlamatExit(Sender: TObject);
begin
KeyPreview:=True;
end;

procedure TFrSubSupplier.AlamatEnter(Sender: TObject);
begin
KeyPreview:=False;
end;

procedure TFrSubSupplier.NamaKirimKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    mValid:=False;
    SpeedButton1.Click;
  end
end;

procedure TFrSubSupplier.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=VK_Escape then
  begin
    mValid:=False;
    Close;
  end
  else if key=VK_return then
  begin
    KoreksiBtn.Click;
  end
  else if key=VK_delete then
  begin
    HapusBtn.Click;
  end
  else if key=VK_insert then
  begin
    TambahBtn.Click;
  end;
end;

procedure TFrSubSupplier.SpeedButton1Click(Sender: TObject);
begin
mValid:=False;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
  ClearPanelDetail;
end;

procedure TFrSubSupplier.ClearPanelDetail;
begin
  Alamat.Text:='';
  Kota.Text:='';
  KodeExp.Text:='';
  LNamaExp.Caption:='[ . . . ]';
end;

procedure TFrSubSupplier.TampilData;
begin
  QuBeli.Close;
  QuBeli.Prepared;
  QuBeli.Parameters[0].Value :=mKodeCust_AlamatCust;
  QuBeli.Open;
end;

procedure TFrSubSupplier.UpdateDataBeli(pChoice: Char);
var
  mNomor:integer;
begin
   BM:=QuBeli.GetBookmark;
   DM.QuCari.Close;
   DM.QuCari.SQL.Clear;
   if pChoice='I' then
   begin
     with DM.QuCari2 do
     begin
       Close;
       SQL.Clear;
       SQL.Add('select max(Nomor)Nomor from dbAlamatCust where KodeCustSupp='+QuotedStr(mKodeCust_AlamatCust));
       Open;
     end;
     mNomor:=DM.QuCari2.FieldByName('Nomor').AsInteger+1;
   end;
   if pChoice='I' then
   begin
     DM.QuCari.SQL.Add('insert into dbAlamatCust (KodeCustSupp, Nomor, Alamat, Telp, Fax, Nama)');
     DM.QuCari.SQL.Add('values(:0,:1,:2,:3, :4, :5)');
     DM.qucari.Prepared;
     DM.QuCari.Parameters[0].Value:=mKodeCust_AlamatCust;
     DM.QuCari.Parameters[1].Value:=mNomor;
     DM.QuCari.Parameters[2].Value:=Trim(Alamat.Text);
     DM.QuCari.Parameters[3].Value:=Trim(Kota.Text);
     DM.QuCari.Parameters[4].Value:=Trim(KodeExp.Text);
     DM.QuCari.Parameters[5].Value:=Trim(NamaKirim.Text);
   end else
   if pChoice='U' then
   begin
     DM.QuCari.SQL.Add('update dbAlamatCust set Alamat='+QuotedStr(Trim(Alamat.Text))+',Telp='+QuotedStr(Kota.Text));
     DM.QuCari.SQL.Add(' , Fax='+QuotedStr(KodeExp.Text)+', Nama='+QuotedStr(NamaKirim.Text));
     DM.QuCari.SQL.Add('where KodeCustSupp='+QuotedStr(mKodeCust_AlamatCust)+' and Nomor=:0');
     DM.QuCari.Prepared;
     DM.QuCari.Parameters[0].Value:=QuBeliNomor.AsInteger;
   end else
   if pChoice='D' then
   begin
     DM.QuCari.SQL.Add('delete dbAlamatCust ');
     DM.QuCari.SQL.Add('where KodeCustsupp='+QuotedStr(mKodeCust_AlamatCust)+' and Nomor=:0');
     DM.QuCari.Prepared;
     DM.QuCari.Parameters[0].Value:=QuBeliNomor.AsInteger;
   end;

   try
     DM.QuCari.ExecSQL;
     if pChoice='I' then
     begin
       TampilData;
       QuBeli.Locate('Nomor', mNomor, [LOP,LOC]);
     end
     else if pChoice='U' then
     begin
       TampilData;
       if QuBeli.BookmarkValid(BM) then
       begin
         try
           QuBeli.GotoBookmark(BM);
         finally
           QuBeli.FreeBookmark(BM);
         end
       end else
       begin
         QuBeli.FreeBookmark(BM);
         QuBeli.Last;
       end;
     end
     else if pChoice='D' then
     begin
       TampilData;
     end;
   except
     ShowMessage('Proses Gagal !!!')
   end;
end;

procedure TFrSubSupplier.BitBtn1Click(Sender: TObject);
var iDptDisimpan: Boolean;
begin
  iDptDisimpan:=True;
  if iDptDisimpan then
  begin
    if Model='write' then
    begin
        UpdateDataBeli('I');
        ClearPanelDetail;
        ActiveControl:=Alamat;
    end
    else if Model='koreksi' then
    begin
      UpdateDataBeli('U');
      SpeedButton1.Click;
    end;
  end;
end;

procedure TFrSubSupplier.JenisEnter(Sender: TObject);
begin
 mValid:=true;
end;

procedure TFrSubSupplier.JenisExit(Sender: TObject);
begin
 if mValid Then
  begin
    GetBrowse(91112,'DBJenisCustSupp','KodeJenis','NamaJenis',FrSubSupplier,Jenis,LnamaJenis);
  end;
end;

end.
