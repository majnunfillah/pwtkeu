unit FrmBarangCust;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, PBNumEdit, ExtCtrls, Buttons, db,strUtils, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, RXCtrls, ADODB, dxDBTLCl, dxGrClms, dxPageControl;

type
  TFrbarangCust = class(TForm)
    DxpageControl1: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    LNamaBrg: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    kodeBrg: TEdit;
    Harga: TPBNumEdit;
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
    Panel1: TPanel;
    LblKode: TLabel;
    LblNama: TLabel;
    QuBeli: TADOQuery;
    QuBeliKodeCustSupp: TStringField;
    QuBelikodebrg: TStringField;
    QuBeliharga: TBCDField;
    QuBeliNamaBrg: TStringField;
    DsQuBeli: TDataSource;
    dxTabSheet2: TdxTabSheet;
    Panel5: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    dxDBGrid2: TdxDBGrid;
    dxDBGridMaskColumn1: TdxDBGridMaskColumn;
    dxDBGridMaskColumn2: TdxDBGridMaskColumn;
    Panel9: TPanel;
    SpeedButton5: TSpeedButton;
    Label4: TLabel;
    Label6: TLabel;
    BitBtn2: TBitBtn;
    Nama: TEdit;
    JumlahKomisi: TPBNumEdit;
    QuKomisi: TADOQuery;
    DsKomisi: TDataSource;
    QuKomisiKodeCustSupp: TStringField;
    QuKomisiurut: TIntegerField;
    QuKomisiNama: TStringField;
    QuKomisiKurir: TBCDField;
    QuKomisiislunas: TWordField;
    Label5: TLabel;
    KodeCustSupp: TEdit;
    LNamaCustSupp: TLabel;
    KodeCustSupp2: TEdit;
    Label9: TLabel;
    LNamaCustSupp2: TLabel;
    dxDBGrid1Column4: TdxDBGridColumn;
    QuBeliNamaCustSupp: TStringField;
    dxDBGrid1Column5: TdxDBGridColumn;
    QuKomisinamaCustSupp: TStringField;
    dxDBGrid2Column3: TdxDBGridColumn;
    dxDBGrid2Column4: TdxDBGridColumn;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TambahBtnClick(Sender: TObject);
    procedure KoreksiBtnClick(Sender: TObject);
    procedure HapusBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KotaEnter(Sender: TObject);
    procedure KotaExit(Sender: TObject);
    procedure KodeExpExit(Sender: TObject);
    procedure kodeBrgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AlamatEnter(Sender: TObject);
    procedure AlamatExit(Sender: TObject);
    procedure kodeBrgEnter(Sender: TObject);
    procedure kodeBrgExit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure KodeCustSuppEnter(Sender: TObject);
    procedure KodeCustSuppExit(Sender: TObject);
    procedure KodeCustSuppKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeCustSupp2Exit(Sender: TObject);
  private
    { Private declarations }
    Model: String;
    procedure TampilData;
    procedure TampilIsiEkspedisi;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure TampilTombolDetailKomisi(pNilai: Boolean);
    procedure ClearPanelDetail;
    procedure ClearPanelDetailKomisi;
    procedure UpdateDataBeli(pChoice: Char);
    procedure UpdateDataBeliKomisi(pChoice: Char);
    function  CekDataSudahAda: Boolean;
    procedure TampilIsiBarang;
    procedure TampilDataKomisi;
    procedure tampilisiCustomer;
  public
    { Public declarations }
     IsSimpan:Boolean;
     mKodeCust_AlamatCust: String;
     mPengirim_AlamatCust: Integer;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrbarangCust: TFrbarangCust;
  mValid: Boolean;
  BM : TBookmark;


implementation
uses MyModul, MyProcedure, MyGlobal,FrmBrows;
{$R *.DFM}

procedure TFrbarangCust.TampilData;
begin
  QuBeli.Close;
  QuBeli.Prepared;
  //QuBeli.Parameters[0].Value :='%%';
  QuBeli.Open;
end;

procedure TFrbarangCust.TampilDataKomisi;
begin
  QuKomisi.Close;
  QuKomisi.Prepared;
  //QuKomisi.Parameters[0].Value :='%%';
  QuKomisi.Open;
end;

procedure TFrbarangCust.TampilIsiEkspedisi;
begin
  {KodeBrows2:=1160;
  Application.CreateForm(TFrBrows2, FrBrows2);
  FrBrows2.IsiData:=KodeExp.Text;
  FrBrows2.NoKira:='-';
  FrBrows2.ShowModal;
  if FrBrows2.ModalResult=mrOk then
  begin
    with FrBrows2.QuBrows do
    begin
       KodeExp.Text:=fieldbyname('KodeExp').AsString;
       LNamaExp.Caption:='[ '+fieldbyname('NamaExp').AsString+' ]';
    end;
  end
  else
    ActiveControl:=KodeExp;   }
end;

procedure TFrbarangCust.TampilTombolDetail(pNilai: Boolean);
begin
  PanelShow1.Enabled:=not pNilai;
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  Panel3.Enabled:=pNilai;
end;

procedure TFrbarangCust.TampilTombolDetailKomisi(pNilai: Boolean);
begin
  Panel8.Enabled:=not pNilai;
  Panel9.Visible:=pNilai;
  //Panel1.Enabled:=not pNilai;
  Panel6.Enabled:=not pNilai;
  Panel9.Enabled:=pNilai;
end;

procedure TFrbarangCust.ClearPanelDetail;
begin
  kodeBrg.Text:='';
  KodeCustSupp.Text:='';
  LNamaCustSupp.Caption:='[ . . . ]';
  LnamaBrg.Caption:='[ . . . ]';
  Harga.Value:=0;
end;

procedure TFrbarangCust.ClearPanelDetailKomisi;
begin
  KodeCustSupp2.Text:='';
  LNamaCustSupp2.Caption:='[ . . . ]';
  Nama.Text:='';
  Jumlahkomisi.Value:=0;
end;

procedure TFrbarangCust.UpdateDataBeli(pChoice: Char);
var
  mNomor:String;
begin
   BM:=QuBeli.GetBookmark;
   DM.QuCari.Close;
   DM.QuCari.SQL.Clear;

   if pChoice='I' then
   begin
     DM.QuCari.SQL.Add('insert into DbbarangCustomer (KodeCustSupp, kodebrg, harga)');
     DM.QuCari.SQL.Add('values(:0,:1,:2)');
     DM.qucari.Prepared;
     DM.QuCari.Parameters[0].Value:=KodeCustSupp.Text;
     DM.QuCari.Parameters[1].Value:=kodeBrg.Text;
     DM.QuCari.Parameters[2].Value:=Harga.Value;
   end else
   if pChoice='U' then
   begin
     DM.QuCari.SQL.Add('update DbbarangCustomer set Kodebrg=:0, harga=:1');
     DM.QuCari.SQL.Add('where KodeCustSupp='+QuotedStr(KodeCustSupp.Text)+'');
     DM.QuCari.Prepared;
     DM.QuCari.Parameters[0].Value:=kodeBrg.text;
     DM.QuCari.Parameters[1].Value:=Harga.Value;
   end else
   if pChoice='D' then
   begin
     DM.QuCari.SQL.Add('delete DbbarangCustomer ');
     DM.QuCari.SQL.Add('where KodeCustsupp='+QuotedStr(QuBeliKodeCustSupp.Text)+' and kodebrg ='+QuotedStr(QuBelikodebrg.AsString));
     DM.QuCari.Prepared;
   end;

   try
     DM.QuCari.ExecSQL;
     if pChoice='I' then
     begin
       TampilData;
       QuBeli.Locate('Kodebrg', mNomor, [LOP,LOC]);
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

procedure TFrbarangCust.UpdateDataBeliKomisi(pChoice: Char);
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
       SQL.Add('select max(Urut)Urut from DbkomisiCustomer where KodeCustSupp='+QuotedStr(QuKomisiKodeCustSupp.AsString));
       Open;
     end;
     mNomor:=DM.QuCari2.FieldByName('Urut').AsInteger+1;
   end;
   if pChoice='I' then
   begin
     DM.QuCari.SQL.Add('insert into DbKomisiCustomer (KodeCustSupp,Urut, Nama, Kurir)');
     DM.QuCari.SQL.Add('values(:0,:1,:2,:3)');
     DM.qucari.Prepared;
     DM.QuCari.Parameters[0].Value:=KodeCustSupp2.Text;
     DM.QuCari.Parameters[1].Value:=mNomor;
     DM.QuCari.Parameters[2].Value:=Nama.Text;
     DM.QuCari.Parameters[3].Value:=JumlahKomisi.Value;
   end else
   if pChoice='U' then
   begin
     DM.QuCari.SQL.Add('update DbKomisiCustomer set Nama=:0, Kurir=:1');
     DM.QuCari.SQL.Add('where KodeCustSupp='+QuotedStr(KodeCustSupp2.Text)+' and Urut=:2');
     DM.QuCari.Prepared;
     DM.QuCari.Parameters[0].Value:=Nama.text;
     DM.QuCari.Parameters[1].Value:=JumlahKomisi.Value;
     DM.QuCari.Parameters[2].Value:=QuKomisiurut.AsInteger;
   end else
   if pChoice='D' then
   begin
     DM.QuCari.SQL.Add('delete DbKomisiCustomer ');
     DM.QuCari.SQL.Add('where KodeCustsupp='+QuotedStr(QuKomisiKodeCustSupp.Text)+' and Urut=:0');
     DM.QuCari.Parameters[0].Value:=QuKomisiurut.AsInteger;
     DM.QuCari.Prepared;
   end;

   try
     DM.QuCari.ExecSQL;
     if pChoice='I' then
     begin
       TampilDataKomisi;
       QuKomisi.Locate('Urut', mNomor, [LOP,LOC]);
     end
     else if pChoice='U' then
     begin
       TampilDataKomisi;
       if QuBeli.BookmarkValid(BM) then
       begin
         try
           QuKomisi.GotoBookmark(BM);
         finally
           QuKomisi.FreeBookmark(BM);
         end
       end else
       begin
         QuKomisi.FreeBookmark(BM);
         QuKomisi.Last;
       end;
     end
     else if pChoice='D' then
     begin
       TampilDataKomisi;
     end;
   except
     ShowMessage('Proses Gagal !!!')
   end;
end;

function TFrbarangCust.CekDataSudahAda: Boolean;
begin
end;

procedure TFrbarangCust.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
end;

procedure TFrbarangCust.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrbarangCust.BitBtn2Click(Sender: TObject);
var iDptDisimpan: Boolean;
begin
 iDptDisimpan:=True;
  if iDptDisimpan then
  begin
    if Model='write' then
    begin
        UpdateDataBeliKomisi('I');
        ClearPanelDetailKomisi;
        ActiveControl:=KodeCustSupp2;
    end
    else if Model='koreksi' then
    begin
      UpdateDataBeliKomisi('U');
      SpeedButton5.Click;
    end;
  end;
end;

procedure TFrbarangCust.FormShow(Sender: TObject);
begin
  LblKode.Caption:=mKodeCust_AlamatCust;
  if DataBersyarat('Select NamaCustsupp from dbCustsupp where KodeCustsupp=:0',
    [mKodeCust_AlamatCust],DM.QuCari)=True then
    LblNama.Caption:=DM.QuCari.FieldByName('NamaCustSupp').AsString
  else LblNama.Caption:='';
  Caption:='Alamat Kirim '+LblNama.Caption;
  TampilData;
  TampilDataKomisi;
end;

procedure TFrbarangCust.TambahBtnClick(Sender: TObject);
begin
  Model:='write';
  TampilTombolDetail(True);
  ActiveControl:=KodeCustSupp;
end;

procedure TFrbarangCust.KoreksiBtnClick(Sender: TObject);
begin
   mValid:=False;
   Model:='koreksi';
   //KodeSubGrp.Enabled:=False;
   if QuBeli.IsEmpty=False then
   begin
      TampilTombolDetail(True);
      KodeCustSupp.Text:=QuBeliKodeCustSupp.AsString;
      LNamaCustSupp.Caption:=QuBeliNamaCustSupp.AsString;
      Kodebrg.Text:=QuBelikodebrg.AsString;
      Harga.Value:=QuBeliharga.AsFloat;
      LnamaBrg.Caption:='[ '+QuBeliNamaBrg.AsString+' ]';
      ActiveControl:=Harga;
   end
   else
   begin
      ShowMessage('Tidak ada transaksi yang dikoreksi !');
      ActiveControl:=dxDBGrid1;
   end;
end;

procedure TFrbarangCust.HapusBtnClick(Sender: TObject);
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

procedure TFrbarangCust.BitBtn1Click(Sender: TObject);
var iDptDisimpan: Boolean;
begin
  iDptDisimpan:=True;
  if iDptDisimpan then
  begin
    if Model='write' then
    begin
        UpdateDataBeli('I');
        ClearPanelDetail;
        ActiveControl:=KodeCustSupp;
    end
    else if Model='koreksi' then
    begin
      UpdateDataBeli('U');
      SpeedButton1.Click;
    end;
  end;
end;

procedure TFrbarangCust.SpeedButton1Click(Sender: TObject);
begin
  mValid:=False;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
  ClearPanelDetail;
end;

procedure TFrbarangCust.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrbarangCust.KotaEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrbarangCust.KotaExit(Sender: TObject);
begin
  {if mValid=True then
  begin
    if Kota.Text='' then
    begin
          KodeBrows2:=1152;
          Application.CreateForm(TFrBrows2, FrBrows2);
          FrBrows2.IsiData:=Kota.Text;
          FrBrows2.ShowModal;
          if FrBrows2.ModalResult=mrOk then
          begin
            with FrBrows2.QuBrows do
            begin
               Kota.Text:=fieldbyname('KodeKota').AsString;
               LNamaKota.Caption:='[ '+FieldByName('NamaKota').AsString+' ]';
            end;
          end
          else
            ActiveControl:=Kota;
    end else
    begin
      if MyFindField('dbKota','KodeKota',Kota.Text)=true then
      begin
        Kota.Text:=DM.QuCari.fieldbyname('KodeKota').AsString;
        LNamaKota.Caption:='[ '+DM.QuCari.fieldbyname('NamaKota').AsString+' ]';
      end else
      begin
          KodeBrows2:=1152;
          Application.CreateForm(TFrBrows2, FrBrows2);
          FrBrows2.IsiData:=Kota.Text;
          FrBrows2.ShowModal;
          if FrBrows2.ModalResult=mrOk then
          begin
            with FrBrows2.QuBrows do
            begin
               Kota.Text:=fieldbyname('KodeKota').AsString;
               LNamaKota.Caption:='[ '+FieldByName('NamaKota').AsString+' ]';
            end;
          end
          else
            ActiveControl:=Kota;
      end;
    end;
  end }

end;

procedure TFrbarangCust.KodeExpExit(Sender: TObject);
begin
  {if mValid Then
  begin
    if length(KodeExp.Text)=0 then TampilIsiEkspedisi else
    begin
      if DataBersyarat('Select KodeExp, NamaExp from dbExpedisi '+
                      'where Perkiraan=''-'' and KodeExp=:0 Order by KodeExp',[KodeExp.Text],Dm.Qucari)=true then
      begin
        with DM.QuCari do
        begin
           KodeExp.Text:=fieldbyname('KodeExp').AsString;
           LNamaExp.Caption:='[ '+fieldbyname('NamaExp').AsString+' ]';
        end;
      end
      else TampilIsiEkspedisi;
    end;
  end; }
end;

procedure TFrbarangCust.kodeBrgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=VK_Escape then
  begin
    mValid:=False;
    SpeedButton1.Click;
  end;
end;

procedure TfrbarangCust.TampilIsiBarang;
begin
  KodeBrows:=911;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.IsEmpty=False) then
  begin
    with FrBrows.QuBrows do
    begin
      KodeBrg.Text:=fieldbyname('KodeBrg').AsString;
      LNamaBrg.Caption:='[ '+fieldbyname('NamaBrg').AsString+' ]';
      ActiveControl:=Harga;
    end;
  end
  else
    ActiveControl:=Kodebrg;
end;
procedure TFrbarangCust.AlamatEnter(Sender: TObject);
begin
  KeyPreview:=False;
end;

procedure TFrbarangCust.AlamatExit(Sender: TObject);
begin
  KeyPreview:=True;
end;

procedure TFrbarangCust.kodeBrgEnter(Sender: TObject);
begin
mValid:=True;
end;

procedure TFrbarangCust.kodeBrgExit(Sender: TObject);
begin
  if mValid Then
  begin
     if length(KodeBrg.Text)=0 then TampilIsiBarang else
        begin
          if DataBersyarat('Select A.kodebrg,A.NamaBrg from Dbbarang A '+
                           'where a.isAktif=1 and (a.KodeBrg like :0 or a.NamaBrg like :1) '+
                           'order by A.KodeBrg ',['%'+KodeBrg.Text+'%','%'+KodeBrg.Text+'%'],Dm.Qucari)=true then
          begin
            with DM.QuCari do
            begin
             KodeBrg.Text:=fieldbyname('KodeBrg').AsString;
             LNamaBrg.Caption:='[ '+fieldbyname('NamaBrg').AsString+' ]';
             ActiveControl:=Harga;
            end;
          end
          else TampilIsiBarang;
        end;
  end;
end;

procedure TFrbarangCust.SpeedButton4Click(Sender: TObject);
begin
  Model:='write';
  TampilTombolDetailKomisi(True);
  ActiveControl:=KodeCustSupp2;
end;

procedure TFrbarangCust.SpeedButton3Click(Sender: TObject);
begin
   mValid:=False;
   Model:='koreksi';
   if QuBeli.IsEmpty=False then
   begin
      TampilTombolDetailKomisi(True);
      KodeCustSupp2.Text:=QuKomisiKodeCustSupp.AsString;
      LNamaCustSupp2.Caption:=QuKomisinamaCustSupp.AsString;
      Nama.Text:=QuKomisiNama.AsString;
      JumlahKomisi.Value:=QuKomisiKurir.AsFloat;
      ActiveControl:=Nama;
   end
   else
   begin
      ShowMessage('Tidak ada transaksi yang dikoreksi !');
      ActiveControl:=dxDBGrid2;
   end;
end;

procedure TFrbarangCust.SpeedButton2Click(Sender: TObject);
begin
if QuKomisi.IsEmpty=True then
   begin
      Application.MessageBox('Tabel Kosong','Informasi'
      ,MB_OK Or MB_ICONWARNING);
   end
   else
   begin
      if (Application.MessageBox('Anda yakin satu baris data dihapus ?','Hapus Data',
              MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
      begin
              UpdateDataBeliKomisi('D');
      end;
   end;
end;

procedure TFrbarangCust.SpeedButton5Click(Sender: TObject);
begin
  mValid:=False;
  TampilTombolDetailKomisi(False);
  ActiveControl:=dxDBGrid2;
  ClearPanelDetailKomisi;
end;

procedure TFrbarangCust.KodeCustSuppEnter(Sender: TObject);
begin
mValid:=True;
end;

procedure TFrbarangCust.KodeCustSuppExit(Sender: TObject);
begin
  if mValid Then
  begin
   if length(Kodecustsupp.Text)=0 then tampilisiCustomer else
    begin
      if DataBersyarat('Select A.KodeCustSupp,A.Namacustsupp from DbCustSupp A '+
                       'where a.isAktif=1 and (a.KodeCustSupp like :0 or a.NamaCustSupp like :1) '+
                       'order by A.KodeCustSupp ',['%'+KodeCustSupp.Text+'%','%'+KodeCustSupp.Text+'%'],Dm.Qucari)=true then
      begin
        with DM.QuCari do
        begin
         KodeCustSupp.Text:=fieldbyname('KodeCustSupp').AsString;
         LNamaCustSupp.Caption:='[ '+fieldbyname('namaCustSupp').AsString+' ]';
         ActiveControl:=KodeBrg;
        end;
      end
      else TampilisiCustomer;
    end;
  end;
end;

procedure TfrbarangCust.TampilisiCustomer;
begin
  KodeBrows:=912;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.IsEmpty=False) then
  begin
    with FrBrows.QuBrows do
    begin
     if DxpageControl1.ActivePageIndex=0 then
      begin
      KodeCustSupp.Text:=fieldbyname('KodeCustSupp').AsString;
      lnamaCustSupp.Caption:='[ '+fieldbyname('NamaCustSupp').AsString+' ]';
      ActiveControl:=Kodebrg
      end
     else
      begin
      KodeCustSupp2.Text:=fieldbyname('KodeCustSupp').AsString;
      lnamaCustSupp2.Caption:='[ '+fieldbyname('NamaCustSupp').AsString+' ]';
      ActiveControl:=Nama
      end;
    end;
  end
  else
    ActiveControl:=KodeCustSupp;
end;

procedure TFrbarangCust.KodeCustSuppKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=VK_Escape then
  begin
    mValid:=False;
    SpeedButton1.Click;
  end;
end;

procedure TFrbarangCust.KodeCustSupp2Exit(Sender: TObject);
begin
  if mValid Then
  begin
   if length(Kodecustsupp2.Text)=0 then tampilisiCustomer else
    begin
      if DataBersyarat('Select A.KodeCustSupp,A.Namacustsupp from DbCustSupp A '+
                       'where a.isAktif=1 and (a.KodeCustSupp like :0 or a.NamaCustSupp like :1) '+
                       'order by A.KodeCustSupp ',['%'+KodeCustSupp2.Text+'%','%'+KodeCustSupp2.Text+'%'],Dm.Qucari)=true then
      begin
        with DM.QuCari do
        begin
         KodeCustSupp2.Text:=fieldbyname('KodeCustSupp').AsString;
         LNamaCustSupp2.Caption:='[ '+fieldbyname('namaCustSupp').AsString+' ]';
         ActiveControl:=Nama;
        end;
      end
      else TampilisiCustomer;
    end;
  end;
end;

end.
