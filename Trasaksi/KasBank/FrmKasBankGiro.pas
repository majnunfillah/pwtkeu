unit FrmKasBankGiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, PBNumEdit, Mask,
  ToolEdit, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid;

type
  TFrKasBankGiro = class(TForm)
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
    tvGiro: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel1: TPanel;
    tvGiroBank: TcxGridDBColumn;
    tvGiroNogiro: TcxGridDBColumn;
    tvGiroTglGiro: TcxGridDBColumn;
    tvGiroDebet: TcxGridDBColumn;
    tvGiroKredit: TcxGridDBColumn;
    tvGiroDebetRp: TcxGridDBColumn;
    tvGiroKreditRp: TcxGridDBColumn;
    tvGiroJumlah: TcxGridDBColumn;
    tvGiroJumlahRP: TcxGridDBColumn;
    tvGiroKodevls: TcxGridDBColumn;
    tvGiroKurs: TcxGridDBColumn;
    Label6: TLabel;
    Label7: TLabel;
    Kurs: TPBNumEdit;
    KodeVls: TEdit;
    LValas: TLabel;
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
    procedure KodeVlsEnter(Sender: TObject);
    procedure KodeVlsExit(Sender: TObject);
  private
    ModelGiro:String;
    { Private declarations }
  public
    { Public declarations }
    mValid,mExit,StatusSimpan: Boolean;
    procedure TampilGiroBelumCair;
  end;

var
  FrKasBankGiro: TFrKasBankGiro;

implementation
Uses MyProcedure,myGlobal,FrmKasBank, ADODB, MyModul, FrmBrows;

{$R *.dfm}
procedure TFrKasBankGiro.TampilGiroBelumCair;
begin
  if FrKasBank.StatusGiro='H-' then
     KodeBrows := 100405
  else
     Kodebrows := 100406;
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
        DetNoGiro.Text := Fieldbyname('NoGiro').AsString;
        DetTglGiro.Date := Fieldbyname('TglGiro').AsDateTime;
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

procedure TFrKasBankGiro.TampildataGiro;
var nRecNoGiro: Integer;
begin
  nRecNoGiro := FrkasBank.dxGiro.RecNo;
  FrkasBank.JumlahNilaiGiro:=0;
  FrkasBank.dxGiro.First;
  //FrkasBank.dxGiro.DisableControls;
  while not FrkasBank.dxGiro.Eof do
  begin
    if FrKasBank.dxGiro.FieldByname('KodeVls').AsString='IDR' then
    FrkasBank.JumlahNilaiGiro := FrkasBank.JumlahNilaiGiro + FrKasBank.dxGiro.FieldByname('JumlahRp').AsCurrency
    else
    FrkasBank.JumlahNilaiGiro := FrkasBank.JumlahNilaiGiro + FrKasBank.dxGiro.FieldByname('Jumlah').AsCurrency;
    FrkasBank.dxGiro.Next;
  end;
  //FrkasBank.dxGiro.EnableControls;
  FrkasBank.dxGiro.RecNo := nRecNoGiro;
end;

procedure TFrKasBankGiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if mExit then
     Action := caFree
  else
     Action := caNone;
end;

procedure TFrKasBankGiro.FormDestroy(Sender: TObject);
begin
  FrKasBankGiro := nil;
end;

procedure TFrKasBankGiro.btnTambahGiroClick(Sender: TObject);
begin
  pnlIsianGiro.Visible := True;
  pnlGiro.Enabled := False;
  ModelGiro := 'write';
  DetNoGiro.Text := '';
  DetBank.Text := '';
  DetTglGiro.Date := Frkasbank.TANGGAL.Date;
  KodeVls.Text := FrKasBank.Valas.Text;
  Kurs.Value := FrKasBank.Kurs.Value;
  DetNilaiGiro.Value := 0;
  DetKeterangan.Text:='';
  //KodeVls.Enabled := false;
  //Kurs.Enabled := False;
  DetBank.Enabled:=True;
  if DetBank.CanFocus then DetBank.SetFocus else
  begin
    try
      ActiveControl:=DetNoGiro;
    except

    end;
  end;
  //if ((Copy(FrKasBank.THPC.Text,2,1) ='P') and ((FrKasBank.Mode.Text = 'BKK') or ((FrKasBank.Mode.Text = 'BBM')) )) or
  //   ((Copy(FrKasBank.THPC.Text,2,1)='H') and ((FrKasBank.Mode.Text = 'BBK')))
  if (FrKasBank.StatusGiro='P-') or (FrKasBank.StatusGiro='H-') then
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
  if FrKasBank.StatusGiro='H+' then
  begin
    DetBank.Text:=FrKasBank.mPerkiraan.Text;
    DetBank.Enabled:=False;
  end;
end;

procedure TFrKasBankGiro.btnKoreksiGiroClick(Sender: TObject);
begin
  if not FrKasBank.dxGiro.IsEmpty then
  begin
    pnlIsianGiro.Visible := True;
    pnlGiro.Enabled := False;
    ModelGiro := 'koreksi';
    DetNoGiro.Text := FrKasBank.dxGiro.fieldbyname('NoGiro').AsString;
    DetBank.Text := FrKasBank.dxGiro.fieldbyname('Bank').AsString;
    DetTglGiro.Date := FrKasBank.dxGiro.fieldbyname('TglGiro').AsDateTime;

    DetKeterangan.Text := FrKasBank.dxGiro.fieldbyname('Keterangan').AsString;
    KodeVls.Text := FrKasBank.dxGiro.fieldbyname('kodeVls').AsString;
    Kurs.Value:=FrKasBank.dxGiro.fieldbyname('Kurs').Value;
    if KodeVls.Text='IDR' then
       DetNilaiGiro.Value := FrKasBank.dxGiro.fieldbyname('jumlahRp').AsCurrency
    else
       DetNilaiGiro.Value := FrKasBank.dxGiro.fieldbyname('jumlah').AsCurrency;
    DetNoGiro.Enabled := False;
    DetBank.Enabled := False;
    if DetNilaiGiro.CanFocus then DetNilaiGiro.SetFocus;
  end;
end;

procedure TFrKasBankGiro.btnBatalClick(Sender: TObject);
begin
  pnlIsianGiro.Visible := False;
  pnlGiro.Enabled := True;
  if cxGrid1.CanFocus then cxGrid1.SetFocus;
end;

procedure TFrKasBankGiro.btnHapusGiroClick(Sender: TObject);
var pDapatDihapus: Boolean;
begin
  if not Frkasbank.dxGiro.IsEmpty then
  begin
    pDapatDihapus := True;
    if (Copy(Frkasbank.THPC.Text,2,1) = 'H') and (FrkasBank.Mode.Text = 'BKK')then
    begin
      if not Frkasbank.dxGiro.FieldByName('TglCair').IsNull then
      begin
        pDapatDihapus := False;
        Application.MessageBox('Sudah ada pencairan', 'Informasi', MB_OK);
      end;
    end
    else
    if (Copy(Frkasbank.THPC.Text,2,1) = 'P') and ((FrkasBank.Mode.Text = 'BKM'))then
    begin
      if not Frkasbank.dxGiro.FieldByName('TglCair').IsNull then
      begin
        pDapatDihapus := False;
        Application.MessageBox('Sudah ada pencairan', 'Informasi', MB_OK);
      end;
    end;

    if pDapatDihapus = True then
    begin
      if (Copy(Frkasbank.THPC.Text,2,1) = 'P') and ((FrkasBank.Mode.Text = 'BKK') or (FrkasBank.Mode.Text = 'BBM'))then
      begin
        with dm.QuCari do
        begin
          close;
          sql.Clear;
          sql.Add('Update DbGiro set Kredit=0,TglCair=null,Bukticair='''',urutBuktiCair=0 ');
          sql.add('where Bank='+QuotedStr(FrkasBank.dxGiro.FieldByname('Bank').AsString)+' and nogiro='+QuotedStr(FrkasBank.dxGiro.FieldByname('Nogiro').AsString));
          sql.add('and TglGiro='+QuotedStr(FormatDateTime('MM-DD-YYYY',FrkasBank.dxGiro.FieldByname('Bank').AsDateTime))+' and tipe=''PT'' ');
          ExecSQL;
        end;
      end;
      if (Copy(Frkasbank.THPC.Text,2,1) = 'H') and ((FrkasBank.Mode.Text = 'BBK'))then
      begin
        with dm.QuCari do
        begin
          close;
          sql.Clear;
          sql.Add('Update DbGiro set Debet=0,TglCair=null,Bukticair='''',urutBuktiCair=0 ');
          sql.add('where Bank='+QuotedStr(FrkasBank.dxGiro.FieldByname('Bank').AsString)+' and nogiro='+QuotedStr(FrkasBank.dxGiro.FieldByname('Nogiro').AsString));
          sql.add('and TglGiro='+QuotedStr(FormatDateTime('MM-DD-YYYY',FrkasBank.dxGiro.FieldByname('TglGiro').AsDateTime))+' and tipe=''HT'' ');
          ExecSQL;
        end;
      end;
      Frkasbank.dxGiro.Delete;
      TampildataGiro;
      DetNoGiro.Enabled := True;
      DetBank.Enabled := True;
    end;
  end;
end;

procedure TFrKasBankGiro.btnOKClick(Sender: TObject);
var pDapatDisimpan: Boolean;
begin
  pDapatDisimpan := True;
  if ModelGiro = 'write' then
  begin
    if FrKasBank.StatusGiro='H+' then //(Copy(FrKasBank.THPC.Text,2,1) = 'H') and (FrKasBank.Mode.Text = 'BKK') then
    begin
      if (DetNoGiro.Text<>'') and (DetBank.Text<>'') then
      begin
        if (DataBersyarat('Select * from dbGiro where NoGiro=:0 and Bank=:1 and TglGiro=:2 and Tipe=''HT''',
           [DetNoGiro.Text,DetBank.Text,detTglGiro.date],DM.QuCari)=True)  then
          begin
            ShowMessage('No. Giro '+DetNoGiro.Text+' dengan Bank '+DetBank.Text+' sudah ada');
            pDapatDisimpan := False;
            if DetBank.CanFocus then DetBank.SetFocus;
          end;
      end else
      begin
        ShowMessage('No. Giro dan Bank masih kosong');
        pDapatDisimpan := False;
        if DetBank.CanFocus then DetBank.SetFocus;
      end;
    end else
    if FrKasBank.StatusGiro='P+' then//(Copy(FrKasBank.THPC.Text,2,1) = 'P') and (FrKasBank.Mode.Text = 'BKM') then
    begin
      if (DetNoGiro.Text<>'') and (DetBank.Text<>'') then
      begin
        if (DataBersyarat('Select * from dbGiro where NoGiro=:0 and Bank=:1 and TglGiro=:2 and Tipe=''PT''',
           [DetNoGiro.Text,DetBank.Text,detTglGiro.date],DM.QuCari)=True)    then
        begin
          ShowMessage('No. Giro '+DetNoGiro.Text+' dengan Bank '+DetBank.Text+' sudah ada');
          pDapatDisimpan := False;
          if DetBank.CanFocus then DetBank.SetFocus;
        end;
      end else
      begin
        ShowMessage('No. Giro dan Bank masih kosong');
        pDapatDisimpan := False;
        if DetBank.CanFocus then DetBank.SetFocus;
      end;
    end;
  end;

  if (pDapatDisimpan = True) and (ModelGiro = 'write')  then
  begin
    if FrKasBank.dxGiro.Locate('NoGiro;Bank;TglGiro', VarArrayOf([DetNoGiro.Text, DetBank.Text,DetTglGiro.Date]), []) = True then
    begin
      pDapatDisimpan := False;
      Application.MessageBox('Data sudah dimasukkan sebelumnya', 'Informasi', MB_OK);
      if DetNoGiro.CanFocus then DetNoGiro.SetFocus;
    end;
  end;

  if pDapatDisimpan = True then
  begin
    if ModelGiro = 'write' then
       FrKasBank.dxGiro.Append
    else
       FrKasBank.dxGiro.Edit;
    FrKasBank.dxGiro.FieldByName('Bank').Value := DetBank.Text;
    FrKasBank.dxGiro.FieldByName('Nogiro').Value := DetNoGiro.Text;
    FrKasBank.dxGiro.FieldByName('TglGiro').Value := DetTglGiro.Date;
    FrKasBank.dxGiro.FieldByName('KodeVls').Value := KodeVls.Text;
    FrKasBank.dxGiro.FieldByName('Kurs').Value := Kurs.Value;
    if FrKasBank.StatusGiro='P+' then //(Copy(FrKasBank.THPC.Text,2,1) = 'P') and (FrKasBank.Mode.Text='BKM') then
    begin
      FrKasBank.dxGiro.FieldByName('Keterangan').Value := DetKeterangan.Text;
      if KodeVls.Text='IDR' then
      begin
         FrKasBank.dxGiro.FieldByName('Debet').Value := 0;
         FrKasBank.dxGiro.FieldByName('Jumlah').Value := 0;
      end
      else
      begin
         FrKasBank.dxGiro.FieldByName('Debet').Value := DetNilaiGiro.AsCurrency;
         FrKasBank.dxGiro.FieldByName('Jumlah').Value := DetNilaiGiro.AsCurrency;
      end;
      FrKasBank.dxGiro.FieldByName('DebetRp').Value := DetNilaiGiro.AsCurrency*Kurs.Value;
      FrKasBank.dxGiro.FieldByName('Kredit').Value := 0;
      FrKasBank.dxGiro.FieldByName('KreditRp').Value := 0;
      FrKasBank.dxGiro.FieldByName('JumlahRp').Value := DetNilaiGiro.AsCurrency*Kurs.Value;
      FrKasBank.dxGiro.FieldByName('Tipe').Value := 'PT';
      FrKasBank.dxGiro.FieldByName('BuktiBuka').Value:=FrKasBank.NOBUKTI.Text;
      FrKasBank.dxGiro.FieldByName('urutBuktiBuka').Value:=FrKasBank.mUrut;
      FrKasBank.dxGiro.FieldByName('TglBuka').Value:=FrKasBank.TANGGAL.Date;
    end
    else
    if FrKasBank.StatusGiro='P-' then //(Copy(FrKasBank.THPC.Text,2,1) = 'P') and ((FrKasBank.Mode.Text='BKK') or (FrKasBank.Mode.Text='BBM') ) then
    begin
      FrKasBank.dxGiro.FieldByName('KeteranganCair').Value := DetKeterangan.Text;
      FrKasBank.dxGiro.FieldByName('Debet').Value := 0;
      FrKasBank.dxGiro.FieldByName('DebetRp').Value := 0;
      if KodeVls.Text='IDR' then
      begin
         FrKasBank.dxGiro.FieldByName('Kredit').Value := 0;
         FrKasBank.dxGiro.FieldByName('Jumlah').Value := 0;
      end
      else
      begin
         FrKasBank.dxGiro.FieldByName('Kredit').Value := DetNilaiGiro.AsCurrency;
         FrKasBank.dxGiro.FieldByName('Jumlah').Value := DetNilaiGiro.AsCurrency;
      end;
      FrKasBank.dxGiro.FieldByName('KreditRp').Value := DetNilaiGiro.AsCurrency*Kurs.Value;
      FrKasBank.dxGiro.FieldByName('JumlahRp').Value := DetNilaiGiro.AsCurrency*Kurs.Value;
      FrKasBank.dxGiro.FieldByName('Tipe').Value := 'PT';
      FrKasBank.dxGiro.FieldByName('BuktiCair').Value:=FrKasBank.NOBUKTI.Text;
      FrKasBank.dxGiro.FieldByName('urutBuktiCair').Value:=FrKasBank.mUrut;
      FrKasBank.dxGiro.FieldByName('TglCair').Value:=FrKasBank.TANGGAL.Date;
    end;

    if FrKasBank.StatusGiro='H+' then //(Copy(FrkasBank.THPC.Text,2,1) = 'H') and (FrkasBank.Mode.Text = 'BKK') then
    begin
      if KodeVls.Text='IDR' then
      begin
         FrKasBank.dxGiro.FieldByName('kredit').Value := 0;
         FrKasBank.dxGiro.FieldByName('Jumlah').Value := 0;
      end
      else
      begin
         FrKasBank.dxGiro.FieldByName('Kredit').Value := DetNilaiGiro.AsCurrency;
         FrKasBank.dxGiro.FieldByName('Jumlah').Value := DetNilaiGiro.AsCurrency;
      end;
      FrKasBank.dxGiro.FieldByName('Keterangan').Value := DetKeterangan.Text;
      FrKasBank.dxGiro.FieldByName('Debet').Value := 0;
      FrKasBank.dxGiro.FieldByName('DebetRp').Value := 0;

      FrKasBank.dxGiro.FieldByName('KreditRp').Value := DetNilaiGiro.AsCurrency*Kurs.Value;
      FrKasBank.dxGiro.FieldByName('JumlahRp').Value := DetNilaiGiro.AsCurrency*Kurs.Value;
      FrKasBank.dxGiro.FieldByName('Tipe').Value := 'HT';
      FrKasBank.dxGiro.FieldByName('BuktiBuka').Value:=FrKasBank.NOBUKTI.Text;
      FrKasBank.dxGiro.FieldByName('urutBuktiBuka').Value:=FrKasBank.mUrut;
      FrKasBank.dxGiro.FieldByName('TglBuka').Value:=FrKasBank.TANGGAL.Date;
    end else
    if FrKasBank.StatusGiro='H-' then //(Copy(FrkasBank.THPC.Text,2,1) = 'H') and (FrkasBank.Mode.Text = 'BBK') then
    begin
      if KodeVls.Text='IDR' then
      begin
         FrKasBank.dxGiro.FieldByName('Debet').Value := 0;
         FrKasBank.dxGiro.FieldByName('Jumlah').Value := 0;
      end
      else
      begin
         FrKasBank.dxGiro.FieldByName('Debet').Value := DetNilaiGiro.AsCurrency;
         FrKasBank.dxGiro.FieldByName('Jumlah').Value := DetNilaiGiro.AsCurrency;
      end;
      FrKasBank.dxGiro.FieldByName('KeteranganCair').Value := DetKeterangan.Text;
      FrKasBank.dxGiro.FieldByName('DebetRp').Value := DetNilaiGiro.AsCurrency*Kurs.Value;
      FrKasBank.dxGiro.FieldByName('JumlahRp').Value := DetNilaiGiro.AsCurrency*Kurs.Value;
      FrKasBank.dxGiro.FieldByName('Kredit').Value := 0;
      FrKasBank.dxGiro.FieldByName('KreditRp').Value := 0;
      FrKasBank.dxGiro.FieldByName('Tipe').Value := 'HT';
      FrKasBank.dxGiro.FieldByName('BuktiCair').Value:=FrKasBank.NOBUKTI.Text;
      FrKasBank.dxGiro.FieldByName('urutBuktiCair').Value:=FrKasBank.mUrut;
      FrKasBank.dxGiro.FieldByName('TglCair').Value:=FrKasBank.TANGGAL.Date;
      FrKasBank.dxGiro.FieldByName('KAS').Value:=FrKasBank.mPerkiraan.text;
    end;
    FrKasBank.dxGiro.Post;
    DetNoGiro.Enabled := True;
    DetBank.Enabled := True;
    TampildataGiro;
    if ModelGiro = 'write' then
    begin
      DetNoGiro.Text := '';
      if FrKasBank.StatusGiro<>'H+' then
      begin
        DetBank.Text := '';
      end else
        DetBank.Enabled:=False;
      DetNilaiGiro.Value := 0;
      DetKeterangan.Text:='';
      if DetBank.CanFocus then DetBank.SetFocus else
      begin
        try
          ActiveControl:=DetNoGiro;
        except
        end;
      end;
    end else
      btnBatal.Click;
  end;
end;

procedure TFrKasBankGiro.btnTutupGiroClick(Sender: TObject);
begin
  mExit:=True;
  if FrkasBank.Jumlah.AsCurrency <> FrkasBank.JumlahNilaiGiro then
     FrkasBank.Jumlah.Value := FrkasBank.JumlahNilaiGiro;
  FrKasBank.JumlahGiro.Value:= FrKasBank.Jumlah.Value;
  //FrKasBank.JumlahGiro.Value:=FrKasBank.JumlahNilaiGiro;
  Close;
end;

procedure TFrKasBankGiro.FormShow(Sender: TObject);
begin
  FrKasBank.TampilDataGiro(Copy(FrKasBank.THPC.Text,2,1)+'T',FrKasBank.NOBUKTI.Text,FrKasBank.StatusGiro,FrKasBank.mUrut);
  TampildataGiro;
end;

procedure TFrKasBankGiro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
     SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if Key=vk_Escape then
     close;
end;

procedure TFrKasBankGiro.DetBankKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
  begin
    if (copy(FrKasBank.THPC.Text,2,1)='H') and (FrKasBank.StatusGiro='H+') then
    begin
      if DataBersyarat('select * from dbPerkiraan where Perkiraan=:0',[detBank.text],DM.Qucari) then
      begin
        DetBank.Text := DM.QuCari.Fieldbyname('Perkiraan').AsString;
      end
      else
      begin
        SetLength(xValue,2);
        TampilIsiData(FrKasBankGiro,DetBank,LValas,100404,'Perkiraan','Keterangan');
      end;
    end
    else
    if ((copy(FrKasBank.THPC.Text,2,1)='H') or (copy(FrKasBank.THPC.Text,2,1)='R')) and (FrKasBank.StatusGiro='H-') then
    begin
      if DataBersyarat('select * from dbGiro where NoGiro=:0 and Bank=:1 and Tipe=''HT'' and TglCair is null',
         [DetNoGiro.text,detBank.text],DM.Qucari) then
      begin
        DetBank.Text := DM.QuCari.Fieldbyname('Bank').AsString;
        DetNoGiro.Text := DM.QuCari.Fieldbyname('NoGiro').AsString;
        DetTglGiro.Date := DM.QuCari.Fieldbyname('TglGiro').AsDateTime;
        KodeVls.Text := DM.QuCari.Fieldbyname('kodevls').AsString;
        Kurs.Value := DM.QuCari.Fieldbyname('Kurs').AsFloat;
        if KodeVls.Text='IDR' then
          DetNilaiGiro.AsFloat := DM.QuCari.Fieldbyname('KreditRp').AsFloat
        else
          DetNilaiGiro.AsFloat := DM.QuCari.Fieldbyname('Kredit').AsFloat;
        DetKeterangan.Text := DM.QuCari.Fieldbyname('Keterangan').AsString;
      end
      else
      begin
        TampilGiroBelumCair;
      end;
    end
    else
    if (copy(FrKasBank.THPC.Text,2,1)='P') and (FrKasBank.StatusGiro='P-') then
    begin
      if DataBersyarat('select * from dbGiro where NoGiro=:0 and Bank=:1 and Tipe=''PT'' and Tglcair is null',
         [DetNoGiro.text,detBank.text],DM.Qucari) then
      begin
        DetBank.Text := DM.QuCari.Fieldbyname('Bank').AsString;
        DetNoGiro.Text := DM.QuCari.Fieldbyname('NoGiro').AsString;
        DetTglGiro.Date := DM.QuCari.Fieldbyname('TglGiro').AsDateTime;
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

procedure TFrKasBankGiro.KodeVlsEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrKasBankGiro.KodeVlsExit(Sender: TObject);
var i : Integer;
begin
  if mValid Then
  begin
    SetLength(xValue,3);
    if DataBersyarat('select kodevls,namavls,kurs from dbValas where kodevls=:0',[kodeVls.text],DM.Qucari) then
    begin
      kodevls.Text :=DM.QuCari.FieldByname('Kodevls').AsString;
      for i := Low(xValue) to High(xValue) do
      begin
        xValue[i] := DM.QuCari.Fields[i].Value;
      end;
    end
    else
      TampilIsiData(FrKasBankGiro,Kodevls,LValas,1006,'kodevls','Namavls');
    if ModelGiro='write' then
      for I := LOW(xValue) to High(xValue) do
      begin
        if I= High(xValue) then
           Kurs.Value:=xValue[i];
      end;
    if Kodevls.Text='IDR' then
    begin
       Kurs.Enabled:=false;
       try
         ActiveControl:=DetNilaiGiro;
       except
         try
           ActiveControl:=DetKeterangan;
         except
           ActiveControl:=btnOK;
         end;
       end;
    end
    else
    begin
       Kurs.Enabled:=true;
       ActiveControl:=Kurs;
    end;
  end;
end;

end.
