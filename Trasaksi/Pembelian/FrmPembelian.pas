unit FrmPembelian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, ToolEdit, StdCtrls, PBNumEdit, Buttons, RXCtrls, ExtCtrls,
  DateUtils;

type
  TFrPembelian = class(TForm)
    LNamaSubTipe: TRxLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LNamaCustSupp: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    LNamaTipe: TRxLabel;
    BtnSimpan: TBitBtn;
    Harga: TPBNumEdit;
    KodeSubTipe: TEdit;
    Qnt: TPBNumEdit;
    NoBukti: TEdit;
    KodeCustSupp: TEdit;
    PPN: TComboBox;
    Tanggal: TDateEdit;
    KodeTipe: TEdit;
    Label8: TLabel;
    NDPP: TPBNumEdit;
    NPPN: TPBNumEdit;
    Label10: TLabel;
    NNET: TPBNumEdit;
    Label11: TLabel;
    Image1: TImage;
    Label30: TLabel;
    Label31: TLabel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    BtnBatal: TBitBtn;
    JatuhTempo: TDateEdit;
    Label12: TLabel;
    Label13: TLabel;
    Kurs: TPBNumEdit;
    KodeVls: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    NDPPD: TPBNumEdit;
    NPPND: TPBNumEdit;
    NNetD: TPBNumEdit;
    procedure BtnSimpanClick(Sender: TObject);
    procedure BtnBatalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure KodeTipeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NoBuktiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TanggalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeCustSuppEnter(Sender: TObject);
    procedure KodeCustSuppExit(Sender: TObject);
    procedure KodeTipeExit(Sender: TObject);
    procedure KodeSubTipeExit(Sender: TObject);
    procedure KodeVlsExit(Sender: TObject);
    procedure NDPPDChange(Sender: TObject);
    procedure NDPPChange(Sender: TObject);
    procedure NPPNChange(Sender: TObject);
    procedure NPPNDChange(Sender: TObject);
    procedure HargaChange(Sender: TObject);
  private
    { Private declarations }
    mValid: Boolean;
    YY,MM,DD: Word;
    procedure ClearInputan;
  public
    { Public declarations }
    IsSimpan: Boolean;
    mUrut: Integer;
  end;

var
  FrPembelian: TFrPembelian;

implementation

uses FrmMainBeli, MyProcedure, MyGlobal, MyModul, FrmBrows;

{$R *.dfm}

procedure TFrPembelian.ClearInputan;
begin
  KodeTipe.Text:='';
  LNamaTipe.Caption:='[ . . . ]';
  KodeSubTipe.Text:='';
  LNamaSubTipe.Caption:='[ . . . ]';
  Qnt.Value:=0;
  Harga.Value:=0;
  KodeVls.Text:='IDR';
  Kurs.Value:=1;
  NDPPD.Value:=0;
  NPPND.Value:=0;
  NNetD.Value:=0;
  NDPP.Value:=0;
  NPPN.Value:=0;
  NNET.Value:=0;
end;

procedure TFrPembelian.BtnSimpanClick(Sender: TObject);
begin
  if NoBukti.Text='' then
  begin
  end else
  begin
    if IsSimpan=True then
    begin
      FrMainBeli.SimpanData('I');
      ClearInputan;
      ActiveControl:=KodeTipe;
    end else
    begin
      FrMainBeli.SimpanData('U');
      ModalResult:=mrOk;
    end;
  end
end;

procedure TFrPembelian.BtnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFrPembelian.FormShow(Sender: TObject);
begin
  NoBukti.Enabled:=IsSimpan=True;
  if IsSimpan=True then
  begin
    DecodeDate(Date,YY,MM,DD);
    if DayOfTheMonth(Date)<=DD then
       DD:=DayOfTheMonth(date);
    try
      Tanggal.Date:=EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),DD);
    except
      Tanggal.Date:=EndOfAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln))
    end;
    JatuhTempo.Date:=Tanggal.Date;
  end;
end;

procedure TFrPembelian.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
    SendMessage(Handle,WM_NEXTDLGCTL,0,0);
  //else if Key=27 then
  //  Close;
end;

procedure TFrPembelian.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrPembelian.KodeTipeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    mValid:=False;
    KodeCustSupp.Text:='';
    LNamaCustSupp.Caption:='[ . . . ]';
    NoBukti.Text:='';
    if IsSimpan=True then
      ActiveControl:=NoBukti
    else
      BtnBatal.Click;
  end;
end;

procedure TFrPembelian.NoBuktiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    mValid:=False;
    Close;
  end;
end;

procedure TFrPembelian.TanggalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    mValid:=False;
    KodeCustSupp.Text:='';
    LNamaCustSupp.Caption:='[ . . . ]';
    NoBukti.Text:='';
    if IsSimpan=True then
      ActiveControl:=NoBukti
    else
      BtnBatal.Click;
  end;
end;

procedure TFrPembelian.KodeCustSuppEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrPembelian.KodeCustSuppExit(Sender: TObject);
begin
  if mValid Then
  begin
      if (length(KodeCustSupp.Text)<>0) and
         (DataBersyarat(' select X.KodeCustSupp, Y.NamaCustSupp, '+
                        ' rtrim(ltrim(isnull(Y.Alamat1,'''')+case when isnull(Y.Alamat2,'''')='''' then '''' else '' ''+Y.Alamat2 end)) Alamat, '+
                        ' Y.Kota '+
                        ' from '+
                        '  (select A.KodeCustSupp from DBPERKCUSTSUPP A, DBPOSTHUTPIUT B '+
                        '   where B.Perkiraan=A.Perkiraan and B.Kode='+QuotedStr('HT')+
                        '   group by A.KodeCustSupp '+
                        '  ) X, DBCUSTSUPP Y '+
                        ' where X.KodeCustSupp=Y.KodeCustSupp and X.KodeCustSupp=:0 '+
                        ' order by X.KodeCustSupp',
         [KodeCustSupp.Text],DM.QuCari)=True) then
      begin
        KodeCustSupp.Text:=DM.QuCari.FieldByName('KodeCustSupp').AsString;
        LNamaCustSupp.Caption:='[ '+DM.QuCari.FieldByName('NamaCustSupp').AsString+' ]';
      end else
      begin
        KodeBrows:=110701;
        Application.CreateForm(TFrBrows, FrBrows);
        FrBrows.IsiData:=KodeCustSupp.Text;
        FrBrows.NoKira:='HT';
        FrBrows.ShowModal;
        if FrBrows.ModalResult=mrOk then
        begin
          with FrBrows.QuBrows do
          begin
            KodeCustSupp.Text:=FieldByName('KodeCustSupp').AsString;
            LNamaCustSupp.Caption:='[ '+FieldByName('NamaCustSupp').AsString+' ]';
          end;
        end else
          ActiveControl:=KodeCustSupp;
      end;
  end;
end;

procedure TFrPembelian.KodeTipeExit(Sender: TObject);
begin
  if mValid Then
  begin
    if (length(KodeTipe.Text)<>0) and
      (DataBersyarat('Select A.KODETIPE,A.Nama '+
              ' from DBTIPETRANS A where A.KodeTipe=:0 and A.IsJasaBeliJual=1 '+
              ' Order by A.KODETIPE',
      [KodeTipe.Text],DM.QuCari)=True) then
    begin
      KodeTipe.Text:=DM.QuCari.FieldByName('KodeTipe').AsString;
      LNamaTipe.Caption:='[ '+DM.QuCari.FieldByName('Nama').AsString+' ]';
    end else
    begin
      KodeBrows:=30057;
      Application.CreateForm(TFrBrows, FrBrows);
      FrBrows.IsiData:=KodeTipe.Text;
      FrBrows.JnsPakai:=1;
      FrBrows.ShowModal;
      if FrBrows.ModalResult=mrOk then
      begin
        KodeTipe.Text:=FrBrows.QuBrows.FieldByName('KodeTipe').AsString;
        LNamaTipe.Caption:='[ '+FrBrows.QuBrows.FieldByName('Nama').AsString+' ]';
      end
      else
        ActiveControl:=KodeTipe;
    end;
  end;
end;

procedure TFrPembelian.KodeSubTipeExit(Sender: TObject);
begin
  if mValid Then
  begin
    if (length(KodeSubTipe.Text)<>0) and
      (DataBersyarat('Select A.KODETIPE, B.KODESUBTIPE, B.Nama '+
                     ' from DBTIPETRANS A '+
                     ' Left Outer join DBSUBTIPETRANS B on B.KODETIPE=A.KODETIPE '+
                     ' where B.KodeSubTipe=:0 and A.KodeTipe=:1 '+
                     'Order by A.KODETIPE, B.KODESUBTIPE',
      [KodeSubTipe.Text,KodeTipe.Text],DM.QuCari)=True) then
    begin
      KodeSubTipe.Text:=DM.QuCari.FieldByName('KodeSubTipe').AsString;
      LNamaSubTipe.Caption:='[ '+DM.QuCari.FieldByName('Nama').AsString+' ]';
    end else
    begin
      KodeBrows:=30056;
      Application.CreateForm(TFrBrows, FrBrows);
      FrBrows.IsiData:=KodeSubTipe.Text;
      FrBrows.NoKira:=KodeTipe.Text;
      FrBrows.ShowModal;
      if FrBrows.ModalResult=mrOk then
      begin
        with FrBrows.QuBrows do
        begin
           KodeSubTipe.Text:=FieldByName('KodeSubTipe').AsString;
           LNamaSubTipe.Caption:='[ '+FieldByName('Nama').AsString+' ]';
        end;
      end
      else
        ActiveControl:=KodeSubTipe;
    end;
  end;
end;

procedure TFrPembelian.KodeVlsExit(Sender: TObject);
begin
  if mValid Then
  begin
    if (KodeVls.Text<>'') and
      (DataBersyarat('select KodeVls, NamaVls, Kurs from dbValas where KodeVls=:0',
      [KodeVls.Text],DM.QuCari)=True) then
    begin
      KodeVls.Text :=DM.QuCari.FieldByname('Kodevls').AsString;
      if IsSimpan=True then
         Kurs.Value :=DM.QuCari.FieldByname('Kurs').AsFloat;
    end
    else
    begin
      KodeBrows:=11001;
      Application.CreateForm(TFrBrows, FrBrows);
      FrBrows.IsiData:=KodeVls.Text;
      FrBrows.ShowModal;
      if FrBrows.ModalResult=mrOk then
      begin
        with FrBrows.QuBrows do
        begin
           KodeVls.Text:=FieldByName('KodeVls').AsString;
           Kurs.Value:=FieldByname('Kurs').AsFloat;
        end;
      end
      else
        ActiveControl:=KodeVls;
    end;
  end;
end;

procedure TFrPembelian.NDPPDChange(Sender: TObject);
begin
  if mValid then
  begin
    NNetD.Value:=NDPPD.AsFloat+NPPND.AsFloat;
    NDPP.Value:=NDPPD.AsFloat*Kurs.AsFloat;
    NNET.Value:=NDPP.AsFloat+NPPN.AsFloat;
  end;
end;

procedure TFrPembelian.NDPPChange(Sender: TObject);
begin
  if mValid then
  begin
    NNET.Value:=NDPP.AsFloat+NPPN.AsFloat;
  end;
end;

procedure TFrPembelian.NPPNChange(Sender: TObject);
begin
  if mValid then
  begin
    NNET.Value:=NDPP.AsFloat+NPPN.AsFloat;
  end;
end;

procedure TFrPembelian.NPPNDChange(Sender: TObject);
begin
  if mValid then
  begin
    NNetD.Value:=NDPPD.AsFloat+NPPND.AsFloat;
    NPPN.Value:=NPPND.AsFloat*Kurs.AsFloat;
    NNET.Value:=NDPP.AsFloat+NPPN.AsFloat;
  end;
end;

procedure TFrPembelian.HargaChange(Sender: TObject);
begin
  if (Harga.Value<>0) and (Qnt.Value<>0) and (KodeVls.Text<>'') then
  Begin
    if KodeVls.Text='IDR' Then
    begin
     NDPPD.AsFloat:=0;
     NPPND.AsFloat:=0;
     NDPP.AsFloat:=Harga.AsFloat*Qnt.AsFloat;
     if IsSimpan=True then
       NPPN.AsFloat:=NDPP.AsFloat*0.1;
    end
    else
    Begin
     NDPPD.AsFloat:=Harga.AsFloat*Qnt.AsFloat;
     if IsSimpan=True then
       NPPND.AsFloat:=NDPPD.AsFloat*0.1;
    NDPPDChange(NDPPD);
    NPPNDChange(NPPND);
    end;
  end;
end;

end.
