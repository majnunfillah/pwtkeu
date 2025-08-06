unit FrmMemorialGiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, PBNumEdit, Mask,
  ToolEdit, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid;

type
  TFrMemorialGiro = class(TForm)
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
  FrMemorialGiro: TFrMemorialGiro;

implementation
Uses MyProcedure,myGlobal,FrmMemorial, ADODB, MyModul, FrmBrows;

{$R *.dfm}
procedure TFrMemorialGiro.TampilGiroBelumCair;
begin
  if FrMemorial.StatusGiro='H-' then
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

procedure TFrMemorialGiro.TampildataGiro;
var nRecNoGiro: Integer;
begin
  nRecNoGiro := FrMemorial.dxGiro.RecNo;
  FrMemorial.JumlahNilaiGiro:=0;
  FrMemorial.dxGiro.First;
  //FrMemorial.dxGiro.DisableControls;
  while not FrMemorial.dxGiro.Eof do
  begin
    if FrMemorial.dxGiro.FieldByname('KodeVls').AsString='IDR' then
    FrMemorial.JumlahNilaiGiro := FrMemorial.JumlahNilaiGiro + FrMemorial.dxGiro.FieldByname('JumlahRp').AsCurrency
    else
    FrMemorial.JumlahNilaiGiro := FrMemorial.JumlahNilaiGiro + FrMemorial.dxGiro.FieldByname('Jumlah').AsCurrency;
    FrMemorial.dxGiro.Next;
  end;
  //FrMemorial.dxGiro.EnableControls;
  FrMemorial.dxGiro.RecNo := nRecNoGiro;
end;

procedure TFrMemorialGiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if mExit then
     Action := caFree
  else
     Action := caNone;
end;

procedure TFrMemorialGiro.FormDestroy(Sender: TObject);
begin
  FrMemorialGiro := nil;
end;

procedure TFrMemorialGiro.btnTambahGiroClick(Sender: TObject);
begin
  pnlIsianGiro.Visible := True;
  pnlGiro.Enabled := False;
  ModelGiro := 'write';
  DetNoGiro.Text := '';
  DetBank.Text := '';
  DetTglGiro.Date := FrMemorial.TANGGAL.Date;
  KodeVls.Text := FrMemorial.Valas.Text;
  Kurs.Value := FrMemorial.Kurs.Value;
  DetNilaiGiro.Value := 0;
  DetKeterangan.Text:='';
  KodeVls.Enabled := false;
  Kurs.Enabled := False;
  if DetBank.CanFocus then DetBank.SetFocus;
  if ((Copy(FrMemorial.THPC.Text,2,1) ='P') and ((FrMemorial.Mode.Text = 'BKK') or ((FrMemorial.Mode.Text = 'BBM')) )) or
     ((Copy(FrMemorial.THPC.Text,2,1)='H') and ((FrMemorial.Mode.Text = 'BBK')))
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

procedure TFrMemorialGiro.btnKoreksiGiroClick(Sender: TObject);
begin
  if not FrMemorial.dxGiro.IsEmpty then
  begin
    pnlIsianGiro.Visible := True;
    pnlGiro.Enabled := False;
    ModelGiro := 'koreksi';
    DetNoGiro.Text := FrMemorial.dxGiro.fieldbyname('NoGiro').AsString;
    DetBank.Text := FrMemorial.dxGiro.fieldbyname('Bank').AsString;
    DetTglGiro.Date := FrMemorial.dxGiro.fieldbyname('TglGiro').AsDateTime;

    DetKeterangan.Text := FrMemorial.dxGiro.fieldbyname('Keterangan').AsString;
    KodeVls.Text := FrMemorial.dxGiro.fieldbyname('kodeVls').AsString;
    Kurs.Value:=FrMemorial.dxGiro.fieldbyname('Kurs').Value;
    if KodeVls.Text='IDR' then
       DetNilaiGiro.Value := FrMemorial.dxGiro.fieldbyname('jumlahRp').AsCurrency
    else
       DetNilaiGiro.Value := FrMemorial.dxGiro.fieldbyname('jumlah').AsCurrency;
    DetNoGiro.Enabled := False;
    DetBank.Enabled := False;
    if DetNilaiGiro.CanFocus then DetNilaiGiro.SetFocus;
  end;
end;

procedure TFrMemorialGiro.btnBatalClick(Sender: TObject);
begin
  pnlIsianGiro.Visible := False;
  pnlGiro.Enabled := True;
  if cxGrid1.CanFocus then cxGrid1.SetFocus;
end;

procedure TFrMemorialGiro.btnHapusGiroClick(Sender: TObject);
var pDapatDihapus: Boolean;
begin
  if not FrMemorial.dxGiro.IsEmpty then
  begin
    pDapatDihapus := True;
    if (Copy(FrMemorial.THPC.Text,2,1) = 'H') and (FrMemorial.Mode.Text = 'BKK')then
    begin
      if not FrMemorial.dxGiro.FieldByName('TglCair').IsNull then
      begin
        pDapatDihapus := False;
        Application.MessageBox('Sudah ada pencairan', 'Informasi', MB_OK);
      end;
    end
    else
    if (Copy(FrMemorial.THPC.Text,2,1) = 'P') and ((FrMemorial.Mode.Text = 'BKM'))then
    begin
      if not FrMemorial.dxGiro.FieldByName('TglCair').IsNull then
      begin
        pDapatDihapus := False;
        Application.MessageBox('Sudah ada pencairan', 'Informasi', MB_OK);
      end;
    end;

    if pDapatDihapus = True then
    begin
      if (Copy(FrMemorial.THPC.Text,2,1) = 'P') and ((FrMemorial.Mode.Text = 'BKK') or (FrMemorial.Mode.Text = 'BBM'))then
      begin
        with dm.QuCari do
        begin
          close;
          sql.Clear;
          sql.Add('Update DbGiro set Kredit=0,TglCair=null,Bukticair='''',urutBuktiCair=0 ');
          sql.add('where Bank='+QuotedStr(FrMemorial.dxGiro.FieldByname('Bank').AsString)+' and nogiro='+QuotedStr(FrMemorial.dxGiro.FieldByname('Nogito').AsString));
          sql.add('and TglGiro='+QuotedStr(FormatDateTime('MM-DD-YYYY',FrMemorial.dxGiro.FieldByname('Bank').AsDateTime))+' and tipe=''PT'' ');
          ExecSQL;
        end;
      end;
      if (Copy(FrMemorial.THPC.Text,2,1) = 'H') and ((FrMemorial.Mode.Text = 'BBK'))then
      begin
        with dm.QuCari do
        begin
          close;
          sql.Clear;
          sql.Add('Update DbGiro set Debet=0,TglCair=null,Bukticair='''',urutBuktiCair=0 ');
          sql.add('where Bank='+QuotedStr(FrMemorial.dxGiro.FieldByname('Bank').AsString)+' and nogiro='+QuotedStr(FrMemorial.dxGiro.FieldByname('Nogito').AsString));
          sql.add('and TglGiro='+QuotedStr(FormatDateTime('MM-DD-YYYY',FrMemorial.dxGiro.FieldByname('Bank').AsDateTime))+' and tipe=''HT'' ');
          ExecSQL;
        end;
      end;
      FrMemorial.dxGiro.Delete;
      TampildataGiro;
      DetNoGiro.Enabled := True;
      DetBank.Enabled := True;
    end;
  end;
end;

procedure TFrMemorialGiro.btnOKClick(Sender: TObject);
var pDapatDisimpan: Boolean;
begin
  pDapatDisimpan := True;
  if ModelGiro = 'write' then
  begin
    if (Copy(FrMemorial.THPC.Text,2,1) = 'H') and (FrMemorial.Mode.Text = 'BKK') then
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
    if (Copy(FrMemorial.THPC.Text,2,1) = 'P') and (FrMemorial.Mode.Text = 'BKM') then
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
    if FrMemorial.dxGiro.Locate('NoGiro;Bank;TglGiro', VarArrayOf([DetNoGiro.Text, DetBank.Text,DetTglGiro.Date]), []) = True then
    begin
      pDapatDisimpan := False;
      Application.MessageBox('Data sudah dimasukkan sebelumnya', 'Informasi', MB_OK);
      if DetNoGiro.CanFocus then DetNoGiro.SetFocus;
    end;
  end;

  if pDapatDisimpan = True then
  begin
    if ModelGiro = 'write' then
       FrMemorial.dxGiro.Append
    else
       FrMemorial.dxGiro.Edit;
    FrMemorial.dxGiro.FieldByName('Bank').Value := DetBank.Text;
    FrMemorial.dxGiro.FieldByName('Nogiro').Value := DetNoGiro.Text;
    FrMemorial.dxGiro.FieldByName('TglGiro').Value := DetTglGiro.Date;
    FrMemorial.dxGiro.FieldByName('KodeVls').Value := KodeVls.Text;
    FrMemorial.dxGiro.FieldByName('Kurs').Value := Kurs.Value;
    if (Copy(FrMemorial.THPC.Text,2,1) = 'P') and (FrMemorial.Mode.Text='BKM') then
    begin
      FrMemorial.dxGiro.FieldByName('Keterangan').Value := DetKeterangan.Text;
      if KodeVls.Text='IDR' then
      begin
         FrMemorial.dxGiro.FieldByName('Debet').Value := 0;
         FrMemorial.dxGiro.FieldByName('Jumlah').Value := 0;
      end
      else
      begin
         FrMemorial.dxGiro.FieldByName('Debet').Value := DetNilaiGiro.AsCurrency;
         FrMemorial.dxGiro.FieldByName('Jumlah').Value := DetNilaiGiro.AsCurrency;
      end;
      FrMemorial.dxGiro.FieldByName('DebetRp').Value := DetNilaiGiro.AsCurrency*Kurs.Value;
      FrMemorial.dxGiro.FieldByName('Kredit').Value := 0;
      FrMemorial.dxGiro.FieldByName('KreditRp').Value := 0;
      FrMemorial.dxGiro.FieldByName('JumlahRp').Value := DetNilaiGiro.AsCurrency*Kurs.Value;
      FrMemorial.dxGiro.FieldByName('Tipe').Value := 'PT';
      FrMemorial.dxGiro.FieldByName('BuktiBuka').Value:=FrMemorial.NOBUKTI.Text;
      FrMemorial.dxGiro.FieldByName('urutBuktiBuka').Value:=FrMemorial.mUrut;
      FrMemorial.dxGiro.FieldByName('TglBuka').Value:=FrMemorial.TANGGAL.Date;
    end
    else
    if (Copy(FrMemorial.THPC.Text,2,1) = 'P') and ((FrMemorial.Mode.Text='BKK') or (FrMemorial.Mode.Text='BBM') ) then
    begin
      FrMemorial.dxGiro.FieldByName('KeteranganCair').Value := DetKeterangan.Text;
      FrMemorial.dxGiro.FieldByName('Debet').Value := 0;
      FrMemorial.dxGiro.FieldByName('DebetRp').Value := 0;
      if KodeVls.Text='IDR' then
      begin
         FrMemorial.dxGiro.FieldByName('Kredit').Value := 0;
         FrMemorial.dxGiro.FieldByName('Jumlah').Value := 0;
      end
      else
      begin
         FrMemorial.dxGiro.FieldByName('Kredit').Value := DetNilaiGiro.AsCurrency;
         FrMemorial.dxGiro.FieldByName('Jumlah').Value := DetNilaiGiro.AsCurrency;
      end;
      FrMemorial.dxGiro.FieldByName('KreditRp').Value := DetNilaiGiro.AsCurrency*Kurs.Value;
      FrMemorial.dxGiro.FieldByName('JumlahRp').Value := DetNilaiGiro.AsCurrency*Kurs.Value;
      FrMemorial.dxGiro.FieldByName('Tipe').Value := 'PT';
      FrMemorial.dxGiro.FieldByName('BuktiCair').Value:=FrMemorial.NOBUKTI.Text;
      FrMemorial.dxGiro.FieldByName('urutBuktiCair').Value:=FrMemorial.mUrut;
      FrMemorial.dxGiro.FieldByName('TglCair').Value:=FrMemorial.TANGGAL.Date;
    end;

    if (Copy(FrMemorial.THPC.Text,2,1) = 'H') and (FrMemorial.Mode.Text = 'BKK') then
    begin
      if KodeVls.Text='IDR' then
      begin
         FrMemorial.dxGiro.FieldByName('kredit').Value := 0;
         FrMemorial.dxGiro.FieldByName('Jumlah').Value := 0;
      end
      else
      begin
         FrMemorial.dxGiro.FieldByName('Kredit').Value := DetNilaiGiro.AsCurrency;
         FrMemorial.dxGiro.FieldByName('Jumlah').Value := DetNilaiGiro.AsCurrency;
      end;
      FrMemorial.dxGiro.FieldByName('Keterangan').Value := DetKeterangan.Text;
      FrMemorial.dxGiro.FieldByName('Debet').Value := 0;
      FrMemorial.dxGiro.FieldByName('DebetRp').Value := 0;

      FrMemorial.dxGiro.FieldByName('KreditRp').Value := DetNilaiGiro.AsCurrency*Kurs.Value;
      FrMemorial.dxGiro.FieldByName('JumlahRp').Value := DetNilaiGiro.AsCurrency*Kurs.Value;
      FrMemorial.dxGiro.FieldByName('Tipe').Value := 'HT';
      FrMemorial.dxGiro.FieldByName('BuktiBuka').Value:=FrMemorial.NOBUKTI.Text;
      FrMemorial.dxGiro.FieldByName('urutBuktiBuka').Value:=FrMemorial.mUrut;
      FrMemorial.dxGiro.FieldByName('TglBuka').Value:=FrMemorial.TANGGAL.Date;
    end else
    if (Copy(FrMemorial.THPC.Text,2,1) = 'H') and (FrMemorial.Mode.Text = 'BBK') then
    begin
      if KodeVls.Text='IDR' then
      begin
         FrMemorial.dxGiro.FieldByName('Debet').Value := 0;
         FrMemorial.dxGiro.FieldByName('Jumlah').Value := 0;
      end
      else
      begin
         FrMemorial.dxGiro.FieldByName('Debet').Value := DetNilaiGiro.AsCurrency;
         FrMemorial.dxGiro.FieldByName('Jumlah').Value := DetNilaiGiro.AsCurrency;
      end;
      FrMemorial.dxGiro.FieldByName('KeteranganCair').Value := DetKeterangan.Text;
      FrMemorial.dxGiro.FieldByName('DebetRp').Value := DetNilaiGiro.AsCurrency*Kurs.Value;
      FrMemorial.dxGiro.FieldByName('JumlahRp').Value := DetNilaiGiro.AsCurrency*Kurs.Value;
      FrMemorial.dxGiro.FieldByName('Kredit').Value := 0;
      FrMemorial.dxGiro.FieldByName('KreditRp').Value := 0;
      FrMemorial.dxGiro.FieldByName('Tipe').Value := 'HT';
      FrMemorial.dxGiro.FieldByName('BuktiCair').Value:=FrMemorial.NOBUKTI.Text;
      FrMemorial.dxGiro.FieldByName('urutBuktiCair').Value:=FrMemorial.mUrut;
      FrMemorial.dxGiro.FieldByName('TglCair').Value:=FrMemorial.TANGGAL.Date;
    end;
    FrMemorial.dxGiro.Post;
    DetNoGiro.Enabled := True;
    DetBank.Enabled := True;
    TampildataGiro;
    if ModelGiro = 'write' then
    begin
      DetNoGiro.Text := '';
      DetBank.Text := '';
      DetNilaiGiro.Value := 0;
      DetKeterangan.Text:='';
      if DetBank.CanFocus then DetBank.SetFocus;
    end else
      btnBatal.Click;
  end;
end;

procedure TFrMemorialGiro.btnTutupGiroClick(Sender: TObject);
begin
  mExit := True;
  if FrMemorial.Jumlah.AsCurrency <> FrMemorial.JumlahNilaiGiro then
     FrMemorial.Jumlah.Value := FrMemorial.JumlahNilaiGiro;
     
     FrMemorial.JumlahGiro.Value:= FrMemorial.Jumlah.Value;
  Close;
end;

procedure TFrMemorialGiro.FormShow(Sender: TObject);
begin
  FrMemorial.TampilDataGiro(Copy(FrMemorial.THPC.Text,2,1)+'T',FrMemorial.NOBUKTI.Text,FrMemorial.StatusGiro,FrMemorial.mUrut);
  TampildataGiro;
end;

procedure TFrMemorialGiro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
     SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if Key=vk_Escape then
     close;
end;

procedure TFrMemorialGiro.DetBankKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
  begin
    if (copy(FrMemorial.THPC.Text,2,1)='H') and (FrMemorial.StatusGiro='H+') then
    begin
      if DataBersyarat('select * from dbPerkiraan where Perkiraan=:0',[detBank.text],DM.Qucari) then
      begin
        DetBank.Text := DM.QuCari.Fieldbyname('Perkiraan').AsString;
      end
      else
      begin
        SetLength(xValue,2);
        TampilIsiData(FrMemorialGiro,DetBank,LValas,100404,'Perkiraan','Keterangan');
      end;
    end
    else
    if (copy(FrMemorial.THPC.Text,2,1)='H') and (FrMemorial.StatusGiro='H-') then
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
    if (copy(FrMemorial.THPC.Text,2,1)='P') and (FrMemorial.StatusGiro='P-') then
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

procedure TFrMemorialGiro.KodeVlsEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrMemorialGiro.KodeVlsExit(Sender: TObject);
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
      TampilIsiData(FrMemorialGiro,Kodevls,LValas,1006,'kodevls','Namavls');
    if ModelGiro='write' then
      for I := LOW(xValue) to High(xValue) do
      begin
        if I= High(xValue) then
           Kurs.Value:=xValue[i];
      end;
    if Kodevls.Text='IDR' then
    begin
       Kurs.Enabled:=false;
       ActiveControl:=DetNilaiGiro;
    end
    else
    begin
       Kurs.Enabled:=true;
       ActiveControl:=Kurs;
    end;
  end;
end;

end.
