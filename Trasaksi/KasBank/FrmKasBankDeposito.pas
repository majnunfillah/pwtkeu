unit FrmKasBankDeposito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, PBNumEdit, Mask,
  ToolEdit, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid;

type
  TFrKasBankDeposito = class(TForm)
    pnlGiro: TPanel;
    pnlIsianGiro: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DetNoGiro: TEdit;
    DetTglGiro: TDateEdit;
    DetBank: TEdit;
    DetNilaiGiro: TPBNumEdit;
    btnOK: TBitBtn;
    btnBatal: TBitBtn;
    DetKeterangan: TEdit;
    pnlGrid: TPanel;
    pnlTombolGiro: TPanel;
    btnKoreksiGiro: TSpeedButton;
    btnHapusGiro: TSpeedButton;
    btnTutupGiro: TSpeedButton;
    btnTambahGiro: TBitBtn;
    cxGrid1: TcxGrid;
    tvDeposito: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel1: TPanel;
    tvDepositoBank: TcxGridDBColumn;
    tvDepositoNogiro: TcxGridDBColumn;
    tvDepositoDebet: TcxGridDBColumn;
    tvDepositoKredit: TcxGridDBColumn;
    tvDepositoDebetRp: TcxGridDBColumn;
    tvDepositoKreditRp: TcxGridDBColumn;
    tvDepositoJumlah: TcxGridDBColumn;
    tvDepositoJumlahRP: TcxGridDBColumn;
    tvDepositoKodevls: TcxGridDBColumn;
    tvDepositoKurs: TcxGridDBColumn;
    Label6: TLabel;
    Label7: TLabel;
    Kurs: TPBNumEdit;
    KodeVls: TEdit;
    LValas: TLabel;
    tvDepositoTanggal: TcxGridDBColumn;
    tvDepositoTglJatuhTempo: TcxGridDBColumn;
    tvDepositoNamaPerkiraan: TcxGridDBColumn;
    Label8: TLabel;
    detTglJatuhTempo: TDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnTambahGiroClick(Sender: TObject);
    procedure btnKoreksiGiroClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnHapusGiroClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnTutupGiroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TampildataGiro;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DetBankKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    ModelGiro:String;
    { Private declarations }
  public
    { Public declarations }
    mValid,mExit,StatusSimpan: Boolean;
    xPerkiraan,xStatus : String;
    procedure TampilGiroBelumCair;
  end;

var
  FrKasBankDeposito: TFrKasBankDeposito;

implementation
Uses MyProcedure,myGlobal,FrmKasBank, ADODB, MyModul, FrmBrows;

{$R *.dfm}
procedure TFrKasBankDeposito.TampilGiroBelumCair;
begin
  KodeBrows := 100411;
  Application.CreateForm(Tfrbrows,FrBrows);
  FrBrows.IsiData := DetBank.Text;
  FrBrows.isidata1 := DetNoGiro.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult = MrOk then
  begin
    with FrBrows.QuBrows do
    begin
      if IsEmpty then
         ActiveControl := DetBank
      else
      begin
        DetBank.Text := Fieldbyname('Bank').AsString;
        DetNoGiro.Text := Fieldbyname('NoDeposito').AsString;
        DetTglGiro.Date := Fieldbyname('TglJatuhtempo').AsDateTime;
        DetNilaiGiro.AsFloat := Fieldbyname('Jumlah').AsFloat;
        KodeVls.Text := Fieldbyname('kodevls').AsString;
        Kurs.Value :=Fieldbyname('Kurs').AsFloat;
        DetKeterangan.Text := Fieldbyname('Keterangan').AsString;
      end;
    end;
  end
  else
    ActiveControl := DetBank
end;

procedure TFrKasBankDeposito.TampildataGiro;
var nRecNoGiro: Integer;
begin
  nRecNoGiro := FrkasBank.dxDeposito.RecNo;
  FrkasBank.JumlahNilaiGiro:=0;
  FrkasBank.dxDeposito.First;
  //FrkasBank.dxDeposito.DisableControls;
  while not FrkasBank.dxDeposito.Eof do
  begin
    if FrKasBank.dxDeposito.FieldByname('KodeVls').AsString='IDR' then
    FrkasBank.JumlahNilaiGiro := FrkasBank.JumlahNilaiGiro + FrKasBank.dxDeposito.FieldByname('JumlahRp').AsCurrency
    else
    FrkasBank.JumlahNilaiGiro := FrkasBank.JumlahNilaiGiro + FrKasBank.dxDeposito.FieldByname('Jumlah').AsCurrency;
    FrkasBank.dxDeposito.Next;
  end;
  //FrkasBank.dxDeposito.EnableControls;
  FrkasBank.dxDeposito.RecNo := nRecNoGiro;
end;

procedure TFrKasBankDeposito.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if mExit then
     Action := caFree
  else
     Action := caNone;
end;

procedure TFrKasBankDeposito.FormDestroy(Sender: TObject);
begin
  FrKasBankDeposito := nil;
end;

procedure TFrKasBankDeposito.btnTambahGiroClick(Sender: TObject);
begin
  pnlIsianGiro.Visible := True;
  pnlGiro.Enabled := False;
  ModelGiro := 'write';
  DetNoGiro.Text := '';
  DetBank.Text := xPerkiraan;
  DetTglGiro.Date := Frkasbank.TANGGAL.Date;
  KodeVls.Text := FrKasBank.Valas.Text;
  Kurs.Value := FrKasBank.Kurs.Value;
  DetNilaiGiro.Value := 0;
  DetKeterangan.Text:='';
  if DetBank.CanFocus then DetBank.SetFocus;
  if ((Copy(FrKasBank.THPC.Text,2,1) ='P') and ((FrKasBank.Mode.Text = 'BKK') or ((FrKasBank.Mode.Text = 'BBM')) )) or
     ((Copy(FrKasBank.THPC.Text,2,1)='H') and ((FrKasBank.Mode.Text = 'BBK')))
  then
  begin
    DetTglGiro.TabStop := False;
    DetTglGiro.Enabled:= false;
    DetNilaiGiro.Enabled:=false;
    DetNilaiGiro.TabStop := false;
  end
  else
  begin
    DetTglGiro.TabStop := True;
    DetTglGiro.Enabled:= True;
    DetNilaiGiro.Enabled:=true;
    DetNilaiGiro.TabStop := true;
    DetKeterangan.TabStop := True;
    DetKeterangan.Enabled := True;
  end;
end;

procedure TFrKasBankDeposito.btnKoreksiGiroClick(Sender: TObject);
begin
  if not FrKasBank.dxDeposito.IsEmpty then
  begin
    pnlIsianGiro.Visible := True;
    pnlGiro.Enabled := False;
    ModelGiro := 'koreksi';
    DetNoGiro.Text := FrKasBank.dxDeposito.fieldbyname('NoGiro').AsString;
    DetBank.Text := FrKasBank.dxDeposito.fieldbyname('Bank').AsString;
    DetTglGiro.Date := FrKasBank.dxDeposito.fieldbyname('TglGiro').AsDateTime;

    DetKeterangan.Text := FrKasBank.dxDeposito.fieldbyname('Keterangan').AsString;
    KodeVls.Text := FrKasBank.dxDeposito.fieldbyname('kodeVls').AsString;
    Kurs.Value:=FrKasBank.dxDeposito.fieldbyname('Kurs').Value;
    if KodeVls.Text='IDR' then
       DetNilaiGiro.Value := FrKasBank.dxDeposito.fieldbyname('jumlahRp').AsCurrency
    else
       DetNilaiGiro.Value := FrKasBank.dxDeposito.fieldbyname('jumlah').AsCurrency;
    DetNoGiro.Enabled := False;
    DetBank.Enabled := False;
    if DetNilaiGiro.CanFocus then DetNilaiGiro.SetFocus;
  end;
end;

procedure TFrKasBankDeposito.btnBatalClick(Sender: TObject);
begin
  pnlIsianGiro.Visible := False;
  pnlGiro.Enabled := True;
  if cxGrid1.CanFocus then cxGrid1.SetFocus;
end;

procedure TFrKasBankDeposito.btnHapusGiroClick(Sender: TObject);
var pDapatDihapus: Boolean;
begin
  if not Frkasbank.dxDeposito.IsEmpty then
  begin
    pDapatDihapus := True;
    if xStatus= 'DP+' then
    begin
      if not Frkasbank.dxDeposito.FieldByName('TglCair').IsNull then
      begin
        pDapatDihapus := False;
        Application.MessageBox('Sudah ada pencairan', 'Informasi', MB_OK);
      end;
    end;

    if pDapatDihapus = True then
    begin
      if xStatus='DP-' then
      begin
        with dm.QuCari do
        begin
          close;
          sql.Clear;
          sql.Add('Update DbDeposito set Kredit=0,TglCair=null,Bukticair='''',urutBuktiCair=0 ');
          sql.add('where Bank='+QuotedStr(FrkasBank.dxDeposito.FieldByname('Bank').AsString)+' and noDeposito='+QuotedStr(FrkasBank.dxDeposito.FieldByname('Nogiro').AsString));
          sql.add('and Tanggal='+QuotedStr(FormatDateTime('MM-DD-YYYY',FrkasBank.dxDeposito.FieldByname('Tanggal').AsDateTime)));
          ExecSQL;
        end;
      end;
      Frkasbank.dxDeposito.Delete;
      TampildataGiro;
      DetNoGiro.Enabled := True;
      DetBank.Enabled := True;
    end;
  end;
end;

procedure TFrKasBankDeposito.btnOKClick(Sender: TObject);
var pDapatDisimpan: Boolean;
begin
  pDapatDisimpan := True;
  if ModelGiro = 'write' then
  begin
    if xStatus='DP+' then
    begin
      if (DetNoGiro.Text<>'') and (DetBank.Text<>'') then
      begin
        if (DataBersyarat('Select * from dbDeposito where NoDeposito=:0 and Bank=:1 and Tanggal=:2 ',
           [DetNoGiro.Text,DetBank.Text,detTglGiro.date],DM.QuCari)=True)  then
          begin
            ShowMessage('No. Deposito '+DetNoGiro.Text+' dengan Bank '+DetBank.Text+' sudah ada');
            pDapatDisimpan := False;
            if DetBank.CanFocus then DetBank.SetFocus;
          end;
      end else
      begin
        ShowMessage('No. Deposito dan Bank masih kosong');
        pDapatDisimpan := False;
        if DetBank.CanFocus then DetBank.SetFocus;
      end;
    end;
  end;

  if (pDapatDisimpan = True) and (ModelGiro = 'write')  then
  begin
    if FrKasBank.dxDeposito.Locate('NoDeposito;Bank;Tanggal', VarArrayOf([DetNoGiro.Text, DetBank.Text,DetTglGiro.Date]), []) = True then
    begin
      pDapatDisimpan := False;
      Application.MessageBox('Data sudah dimasukkan sebelumnya', 'Informasi', MB_OK);
      if DetNoGiro.CanFocus then DetNoGiro.SetFocus;
    end;
  end;

  if pDapatDisimpan = True then
  begin
    if ModelGiro = 'write' then
       FrKasBank.dxDeposito.Append
    else
       FrKasBank.dxDeposito.Edit;
    FrKasBank.dxDeposito.FieldByName('Bank').Value := DetBank.Text;
    FrKasBank.dxDeposito.FieldByName('NoDeposito').Value := DetNoGiro.Text;
    FrKasBank.dxDeposito.FieldByName('Tanggal').Value := DetTglGiro.Date;
    FrKasBank.dxDeposito.FieldByName('TglJatuhTempo').Value := detTglJatuhTempo.Date;
    FrKasBank.dxDeposito.FieldByName('KodeVls').Value := KodeVls.Text;
    FrKasBank.dxDeposito.FieldByName('Kurs').Value := Kurs.Value;
    if xStatus='DP+' then
    begin
      FrKasBank.dxDeposito.FieldByName('Keterangan').Value := DetKeterangan.Text;
      if KodeVls.Text='IDR' then
      begin
         FrKasBank.dxDeposito.FieldByName('Debet').Value := 0;
         FrKasBank.dxDeposito.FieldByName('Jumlah').Value := 0;
      end
      else
      begin
         FrKasBank.dxDeposito.FieldByName('Debet').Value := DetNilaiGiro.AsCurrency;
         FrKasBank.dxDeposito.FieldByName('Jumlah').Value := DetNilaiGiro.AsCurrency;
      end;
      FrKasBank.dxDeposito.FieldByName('DebetRp').Value := DetNilaiGiro.AsCurrency*Kurs.Value;
      FrKasBank.dxDeposito.FieldByName('Kredit').Value := 0;
      FrKasBank.dxDeposito.FieldByName('KreditRp').Value := 0;
      FrKasBank.dxDeposito.FieldByName('JumlahRp').Value := DetNilaiGiro.AsCurrency*Kurs.Value;
      FrKasBank.dxDeposito.FieldByName('BuktiBuka').Value:=FrKasBank.NOBUKTI.Text;
      FrKasBank.dxDeposito.FieldByName('urutBuktiBuka').Value:=FrKasBank.mUrut;
      FrKasBank.dxDeposito.FieldByName('TglBuka').Value:=FrKasBank.TANGGAL.Date;
    end
    else
    if (xStatus='DP-') then
    begin
      FrKasBank.dxDeposito.FieldByName('KeteranganCair').Value := DetKeterangan.Text;
      FrKasBank.dxDeposito.FieldByName('Debet').Value := 0;
      FrKasBank.dxDeposito.FieldByName('DebetRp').Value := 0;
      if KodeVls.Text='IDR' then
      begin
         FrKasBank.dxDeposito.FieldByName('Kredit').Value := 0;
         FrKasBank.dxDeposito.FieldByName('Jumlah').Value := 0;
      end
      else
      begin
         FrKasBank.dxDeposito.FieldByName('Kredit').Value := DetNilaiGiro.AsCurrency;
         FrKasBank.dxDeposito.FieldByName('Jumlah').Value := DetNilaiGiro.AsCurrency;
      end;
      FrKasBank.dxDeposito.FieldByName('KreditRp').Value := DetNilaiGiro.AsCurrency*Kurs.Value;
      FrKasBank.dxDeposito.FieldByName('JumlahRp').Value := DetNilaiGiro.AsCurrency*Kurs.Value;
      FrKasBank.dxDeposito.FieldByName('Tipe').Value := 'PT';
      FrKasBank.dxDeposito.FieldByName('BuktiCair').Value:=FrKasBank.NOBUKTI.Text;
      FrKasBank.dxDeposito.FieldByName('urutBuktiCair').Value:=FrKasBank.mUrut;
      FrKasBank.dxDeposito.FieldByName('TglCair').Value:=FrKasBank.TANGGAL.Date;
    end;

    FrKasBank.dxDeposito.Post;
    DetNoGiro.Enabled := True;
    TampildataGiro;
    if ModelGiro = 'write' then
    begin
      DetNoGiro.Text := '';
      DetNilaiGiro.Value := 0;
      DetKeterangan.Text:='';
      if DetBank.CanFocus then DetBank.SetFocus else DetNoGiro.SetFocus;
    end else
      btnBatal.Click;
  end;
end;

procedure TFrKasBankDeposito.btnTutupGiroClick(Sender: TObject);
begin
  mExit := True;
  if FrkasBank.Jumlah.AsCurrency <> FrkasBank.JumlahNilaiGiro then
     FrkasBank.Jumlah.Value := FrkasBank.JumlahNilaiGiro;
     
     FrKasBank.JumlahGiro.Value:= FrKasBank.Jumlah.Value;
  Close;
end;

procedure TFrKasBankDeposito.FormShow(Sender: TObject);
begin
  FrKasBank.TampilDeposito(FrKasBank.NOBUKTI.Text,xStatus,xPerkiraan,FrKasBank.mUrut);
  TampildataGiro;
end;

procedure TFrKasBankDeposito.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
     SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if Key=vk_Escape then
     close;
end;

procedure TFrKasBankDeposito.DetBankKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
  begin
    if xStatus='DP+' then
    begin
      if DataBersyarat(' select A.Perkiraan,a.Keterangan from dbPerkiraan a '+
                       ' left outer join dbPosthutpiut b on b.perkiraan=a.perkiraan '+
                       ' where a.Perkiraan=:0 and b.kode=''DP'' ',[detBank.text],DM.Qucari) then
      begin
        DetBank.Text := DM.QuCari.Fieldbyname('Perkiraan').AsString;
      end
      else
      begin
        SetLength(xValue,2);
        TampilIsiData(FrKasBankDeposito,DetBank,LValas,100410,'Perkiraan','Keterangan');
      end;
    end
    else
    if xStatus='DP-' then
    begin
      if DataBersyarat('select * from dbDeposito where NoDeposito=:0 and Bank=:1  and TglCair is null',
         [DetNoGiro.text,detBank.text],DM.Qucari) then
      begin
        DetBank.Text := DM.QuCari.Fieldbyname('Bank').AsString;
        DetNoGiro.Text := DM.QuCari.Fieldbyname('NoDeposito').AsString;
        DetTglGiro.Date := DM.QuCari.Fieldbyname('TglJatuhTempo').AsDateTime;
        KodeVls.Text := DM.QuCari.Fieldbyname('kodevls').AsString;
        Kurs.Value := DM.QuCari.Fieldbyname('Kurs').AsFloat;
        if KodeVls.Text='IDR' then
          DetNilaiGiro.AsFloat := DM.QuCari.Fieldbyname('DebetRp').AsFloat
        else
          DetNilaiGiro.AsFloat := DM.QuCari.Fieldbyname('Debet').AsFloat;
        DetKeterangan.Text := DM.QuCari.Fieldbyname('Keterangan').AsString;
      end
      else
      begin
        TampilGiroBelumCair;
      end;
    end;
  end
  else if key=VK_Escape then
  begin
    btnBatal.Click;
  end;
end;

end.
