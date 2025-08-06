unit FrmAlamatCustSupp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, PBNumEdit, ExtCtrls, Buttons, db,strUtils, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, RXCtrls, ADODB, dxDBTLCl, dxGrClms;

type
  TFrAlamatCustSupp = class(TForm)
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Panel4: TPanel;
    PanelShow1: TPanel;
    HapusBtn: TSpeedButton;
    KoreksiBtn: TSpeedButton;
    TambahBtn: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    Panel1: TPanel;
    QuBeli: TADOQuery;
    DsQuBeli: TDataSource;
    LblKode: TLabel;
    LblNama: TLabel;
    Kota: TEdit;
    Alamat: TMemo;
    dxDBGrid1KodeCust: TdxDBGridMaskColumn;
    dxDBGrid1Nomor: TdxDBGridMaskColumn;
    dxDBGrid1Kota: TdxDBGridMaskColumn;
    dxDBGrid1Alamat: TdxDBGridMemoColumn;
    dxDBGrid1AlamatTxt: TdxDBGridMemoColumn;
    KodeExp: TEdit;
    Label1: TLabel;
    LNamaExp: TLabel;
    dxDBGrid1KodeExp: TdxDBGridMaskColumn;
    NamaKirim: TEdit;
    Label2: TLabel;
    dxDBGrid1NamaKirim: TdxDBGridMaskColumn;
    Label3: TLabel;
    QuBeliKodeCustSupp: TStringField;
    QuBeliNomor: TIntegerField;
    QuBeliNama: TStringField;
    QuBeliAlamat: TStringField;
    QuBeliTelp: TStringField;
    QuBeliFax: TStringField;
    QuBeliAlamatTxt: TMemoField;
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
    procedure NamaKirimKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AlamatEnter(Sender: TObject);
    procedure AlamatExit(Sender: TObject);
  private
    { Private declarations }
    Model: String;
    procedure TampilData;
    procedure TampilIsiEkspedisi;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure ClearPanelDetail;
    procedure UpdateDataBeli(pChoice: Char);
    function  CekDataSudahAda: Boolean;
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
  FrAlamatCustSupp: TFrAlamatCustSupp;
  mValid: Boolean;
  BM : TBookmark;


implementation
uses MyModul, MyProcedure, MyGlobal;
{$R *.DFM}

procedure TFrAlamatCustSupp.TampilData;
begin
  QuBeli.Close;
  QuBeli.Prepared;
  QuBeli.Parameters[0].Value :=mKodeCust_AlamatCust;
  QuBeli.Open;
end;

procedure TFrAlamatCustSupp.TampilIsiEkspedisi;
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

procedure TFrAlamatCustSupp.TampilTombolDetail(pNilai: Boolean);
begin
  PanelShow1.Enabled:=not pNilai;
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  Panel3.Enabled:=pNilai;
end;

procedure TFrAlamatCustSupp.ClearPanelDetail;
begin
  Alamat.Text:='';
  Kota.Text:='';
  //LNamaKota.Caption:='[ . . . ]';
  KodeExp.Text:='';
  LNamaExp.Caption:='[ . . . ]';
end;

procedure TFrAlamatCustSupp.UpdateDataBeli(pChoice: Char);
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

function TFrAlamatCustSupp.CekDataSudahAda: Boolean;
begin
end;

procedure TFrAlamatCustSupp.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
end;

procedure TFrAlamatCustSupp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrAlamatCustSupp.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrAlamatCustSupp.FormShow(Sender: TObject);
begin
  LblKode.Caption:=mKodeCust_AlamatCust;
  if DataBersyarat('Select NamaCustsupp from dbCustsupp where KodeCustsupp=:0',
    [mKodeCust_AlamatCust],DM.QuCari)=True then
    LblNama.Caption:=DM.QuCari.FieldByName('NamaCustSupp').AsString
  else LblNama.Caption:='';
  Caption:='Alamat Kirim '+LblNama.Caption;
  TampilData;
end;

procedure TFrAlamatCustSupp.TambahBtnClick(Sender: TObject);
begin
  Model:='write';
  TampilTombolDetail(True);
  ActiveControl:=NamaKirim;
end;

procedure TFrAlamatCustSupp.KoreksiBtnClick(Sender: TObject);
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

procedure TFrAlamatCustSupp.HapusBtnClick(Sender: TObject);
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

procedure TFrAlamatCustSupp.BitBtn1Click(Sender: TObject);
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

procedure TFrAlamatCustSupp.SpeedButton1Click(Sender: TObject);
begin
  mValid:=False;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
  ClearPanelDetail;
end;

procedure TFrAlamatCustSupp.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrAlamatCustSupp.KotaEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrAlamatCustSupp.KotaExit(Sender: TObject);
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

procedure TFrAlamatCustSupp.KodeExpExit(Sender: TObject);
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

procedure TFrAlamatCustSupp.NamaKirimKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    mValid:=False;
    SpeedButton1.Click;
  end
end;

procedure TFrAlamatCustSupp.AlamatEnter(Sender: TObject);
begin
  KeyPreview:=False;
end;

procedure TFrAlamatCustSupp.AlamatExit(Sender: TObject);
begin
  KeyPreview:=True;
end;

end.
