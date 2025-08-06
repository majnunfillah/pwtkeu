unit FrmbarangCustomer1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, PBNumEdit, ExtCtrls, Buttons, db,strUtils, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, RXCtrls, ADODB, dxDBTLCl, dxGrClms;

type
  TFrbarangCustomer1 = class(TForm)
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Panel4: TPanel;
    PanelShow1: TPanel;
    HapusBtn: TSpeedButton;
    KoreksiBtn: TSpeedButton;
    TambahBtn: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    Panel1: TPanel;
    Image1: TImage;
    Label30: TLabel;
    Label31: TLabel;
    Bevel2: TBevel;
    DsQuBeli: TDataSource;
    QuBeli: TADOQuery;
    QuBeliKodeCustSupp: TStringField;
    QuBelikodebrg: TStringField;
    QuBeliharga: TBCDField;
    QuBeliNamaBrg: TStringField;
    QuBeliNamaCustSupp: TStringField;
    LNamaBrg: TLabel;
    Label8: TLabel;
    Label2: TLabel;
    kodeBrg: TEdit;
    Harga: TPBNumEdit;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridColumn;
    dxDBGrid1Column3: TdxDBGridColumn;
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
  FrbarangCustomer1: TFrbarangCustomer1;
  mValid: Boolean;
  BM : TBookmark;


implementation
uses MyModul, MyProcedure, MyGlobal, FrmBarangDanKomisi;
{$R *.DFM}

procedure TFrbarangCustomer1.TampilData;
begin
  QuBeli.Close;
  QuBeli.Prepared;
  QuBeli.Parameters[0].Value :=FrBarangdankomisi.Quviewkodecustsupp.asstring;
  QuBeli.Open;
end;

procedure TFrbarangCustomer1.TampilIsiEkspedisi;
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

procedure TFrbarangCustomer1.TampilTombolDetail(pNilai: Boolean);
begin
  PanelShow1.Enabled:=not pNilai;
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  Panel3.Enabled:=pNilai;
end;

procedure TFrbarangCustomer1.ClearPanelDetail;
begin
  kodeBrg.Text:='';
  Harga.Value:=1;
  LNamaBrg.Caption:='[ . . . ]';
end;

procedure TFrbarangCustomer1.UpdateDataBeli(pChoice: Char);
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
     DM.QuCari.SQL.Add('insert into DbbarangCustomer (KodeCustSupp, Kodebrg, harga)');
     DM.QuCari.SQL.Add('values(:0,:1,:2)');
     DM.qucari.Prepared;
     DM.QuCari.Parameters[0].Value:=Frbarangdankomisi.QuviewKodecustSupp.asstring;
     DM.QuCari.Parameters[1].Value:=Trim(kodeBrg.Text);
     DM.QuCari.Parameters[2].Value:=Harga.Value;
   end else
   if pChoice='U' then
   begin
     DM.QuCari.SQL.Add('update DbbarangCustomer set harga=:0');
     DM.QuCari.SQL.Add('where KodeCustSupp=:1 and KodeBrg=:2');
     DM.QuCari.Prepared;
     DM.QuCari.Parameters[0].Value:=Harga.Value;
     DM.QuCari.Parameters[1].Value:=Frbarangdankomisi.QuviewKodecustSupp.asstring;
     DM.QuCari.Parameters[2].Value:=Trim(kodeBrg.Text);

   end else
   if pChoice='D' then
   begin
     DM.QuCari.SQL.Add('delete DbbarangCustomer ');
     DM.QuCari.SQL.Add('where KodeCustsupp=:0');
     DM.QuCari.Prepared;
     DM.QuCari.Parameters[0].Value:=Frbarangdankomisi.QuviewKodecustSupp.asstring;
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

function TFrbarangCustomer1.CekDataSudahAda: Boolean;
begin
end;

procedure TFrbarangCustomer1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
end;

procedure TFrbarangCustomer1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrbarangCustomer1.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrbarangCustomer1.FormShow(Sender: TObject);
begin
  {LblKode.Caption:=mKodeCust_AlamatCust;
  if DataBersyarat('Select NamaCustsupp from dbCustsupp where KodeCustsupp=:0',
    [mKodeCust_AlamatCust],DM.QuCari)=True then
    LblNama.Caption:=DM.QuCari.FieldByName('NamaCustSupp').AsString
  else LblNama.Caption:='';
  Caption:='Alamat Kirim '+LblNama.Caption;  }
  TampilData;
end;

procedure TFrbarangCustomer1.TambahBtnClick(Sender: TObject);
begin
  Model:='write';
  TampilTombolDetail(True);
  ActiveControl:=kodeBrg;
end;

procedure TFrbarangCustomer1.KoreksiBtnClick(Sender: TObject);
begin
   mValid:=False;
   Model:='koreksi';
   if QuBeli.IsEmpty=False then
   begin
      kodeBrg.Enabled:=False ;
      TampilTombolDetail(True);
      kodeBrg.Text:=QuBelikodebrg.AsString;
      Harga.Value:=QuBeliharga.AsFloat;
      LNamaBrg.Caption:='[ '+QuBeliNamaBrg.AsString+' ]';
      ActiveControl:=Harga;
   end
   else
   begin
      ShowMessage('Tidak ada transaksi yang dikoreksi !');
      ActiveControl:=dxDBGrid1;
   end;
end;

procedure TFrbarangCustomer1.HapusBtnClick(Sender: TObject);
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

procedure TFrbarangCustomer1.BitBtn1Click(Sender: TObject);
var iDptDisimpan: Boolean;
begin
  iDptDisimpan:=True;
  if iDptDisimpan then
  begin
    if Model='write' then
    begin
        UpdateDataBeli('I');
        ClearPanelDetail;
        ActiveControl:=kodeBrg;
    end
    else if Model='koreksi' then
    begin
      UpdateDataBeli('U');
      SpeedButton1.Click;
    end;
  end;
end;

procedure TFrbarangCustomer1.SpeedButton1Click(Sender: TObject);
begin
  mValid:=False;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
  ClearPanelDetail;
end;

procedure TFrbarangCustomer1.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrbarangCustomer1.KotaEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrbarangCustomer1.KotaExit(Sender: TObject);
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

procedure TFrbarangCustomer1.KodeExpExit(Sender: TObject);
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

procedure TFrbarangCustomer1.NamaKirimKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    mValid:=False;
    SpeedButton1.Click;
  end
end;

procedure TFrbarangCustomer1.AlamatEnter(Sender: TObject);
begin
  KeyPreview:=False;
end;

procedure TFrbarangCustomer1.AlamatExit(Sender: TObject);
begin
  KeyPreview:=True;
end;

end.
