unit FrmSubBon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, PBNumEdit, Mask, ToolEdit, DateUtils;

type
  TFrSubBon = class(TForm)
    Bevel1: TBevel;
    Label8: TLabel;
    Label7: TLabel;
    Image1: TImage;
    BtnSimpan: TBitBtn;
    BtnBatal: TBitBtn;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Tanggal: TDateEdit;
    Penerima: TEdit;
    Keterangan: TEdit;
    Debet: TPBNumEdit;
    Kredit: TPBNumEdit;
    NoBukti: TEdit;
    Bevel2: TBevel;
    Label14: TLabel;
    KodeVls: TEdit;
    Label13: TLabel;
    Kurs: TPBNumEdit;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnBatalClick(Sender: TObject);
    procedure BtnSimpanClick(Sender: TObject);
    procedure TanggalExit(Sender: TObject);
    procedure KodeVlsEnter(Sender: TObject);
    procedure KodeVlsExit(Sender: TObject);
  private
    { Private declarations }
    YY, MM, DD: Word;
    procedure ClearInputan;
    procedure IsiNoBuktiBaru;
  public
    { Public declarations }
    IsSimpan, IsDebet: Boolean;
    mBon_Perkiraan, mBon_Devisi: String;
  end;

var
  FrSubBon: TFrSubBon;

implementation

uses MyModul, MyGlobal, MyProcedure, FrmBon, DB, ADODB, FrmBrows;

{$R *.dfm}

procedure TFrSubBon.ClearInputan;
begin
  Penerima.Text:='';
  Keterangan.Text:='';
  Debet.Value:=0;
  Kredit.Value:=0;
  KodeVls.Text:='';
  Kurs.Value:=0;
end;

procedure TFrSubBon.IsiNoBuktiBaru;
begin
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select top 1 NoBukti ');
    SQL.Add('from dbBon');
    SQL.Add('where month(Tanggal)='+IntToStr(StrToInt(PeriodBln))+' and year(Tanggal)='+IntToStr(StrToInt(PeriodThn)));
    SQL.Add(' and Perkiraan='+QuotedStr(mBon_Perkiraan)+' and Devisi='+QuotedStr(mBon_Devisi)+' and Debet<>0 ');
    SQL.Add('order by NoBukti desc ');
    Open;
    if IsEmpty then
      NoBukti.Text:=FormatDateTime('YYMM',Tanggal.Date)+'001'
    else
      NoBukti.Text:=FormatFloat('0000000',StrToInt(FieldByName('NoBukti').AsString)+1);
  end;
end;

procedure TFrSubBon.FormShow(Sender: TObject);
begin
  if IsSimpan=True then
  begin
    DecodeDate(Date,YY,MM,DD);
    if DaysInAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln))<DD then
      DD:=DaysInAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln));
    try
      Tanggal.Date:=EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),DD);
    except
      Tanggal.Date:=EndOfAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln));
    end;
    if IsDebet=True then
    begin
      IsiNoBuktiBaru;
    end;
    Debet.Enabled:=IsDebet;
    Kredit.Enabled:=not IsDebet;
  end else
  begin
    Debet.Enabled:=IsDebet;
    Kredit.Enabled:=not IsDebet;
  end;
end;

procedure TFrSubBon.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
    SendMessage(Handle,WM_NEXTDLGCTL,0,0) else
  if Key=27 then
    Close;
end;

procedure TFrSubBon.BtnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFrSubBon.BtnSimpanClick(Sender: TObject);
var xJumlahDebet, xJumlahKredit: Real;
begin
  if IsDebet=False then
  begin
    with DM.QuKOde do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select sum(Debet) Debet, sum(Kredit) Kredit from dbBon where NoBukti='+QuotedStr(NoBukti.Text));
      SQL.Add('and Perkiraan='+QuotedStr(mBon_Perkiraan)+' and Devisi='+QuotedStr(mBon_Devisi));
      if IsSimpan=False then
      begin
        SQL.Add('and NoBukti+right(''00000''+cast(Urut as varchar(5)),5)<>'+QuotedStr(NoBukti.Text+FormatFloat('00000',FrBon.QuMasterUrut.AsInteger)));
      end;
      Open;
      xJumlahDebet:=FieldByName('Debet').AsCurrency;
      xJumlahKredit:=FieldByName('Kredit').AsCurrency;
    end;
  end;

  if FrSubBon.IsSimpan=True then
  begin
    if (IsDebet=True) and (Debet.Value=0) then
    begin
      MsgDataTidakBolehKosong('Debet');
      ActiveControl:=Debet;
    end else
    if (IsDebet=False) and (Kredit.Value=0) then
    begin
      MsgDataTidakBolehKosong('Kredit');
      ActiveControl:=Kredit;
    end else
    if (IsDebet=False) and (xJumlahKredit+Kredit.Value>xJumlahDebet) then
    begin
      MessageDlg('Jumlah Kredit tidak boleh lebih dari '+FormatFloat(',0',xJumlahDebet-xJumlahKredit)+'',
        mtInformation, [mbOK],0);
      ActiveControl:=Kredit;
    end else
    begin
      FrBon.SimpanData('I');
      if IsDebet=True then
      begin
        //FrBon.ToolButton10.Click;
        //FrBon.QuMaster.Locate('NoBukti',NoBukti.Text,[]);
        ClearInputan;
        IsiNoBuktiBaru;
        ActiveControl:=Tanggal;
      end else
      begin
        //FrBon.ToolButton10.Click;
        //FrBon.QuMaster.Locate('NoBukti',NoBukti.Text,[]);
        ModalResult:=MrOK;
      end;
    end;
  end else
  begin
    if (IsDebet=True) and (Debet.Value=0) then
    begin
      MsgDataTidakBolehKosong('Debet');
      ActiveControl:=Debet;
    end else
    if (IsDebet=False) and (Kredit.Value=0) then
    begin
      MsgDataTidakBolehKosong('Kredit');
      ActiveControl:=Kredit;
    end else
    if (IsDebet=False) and (xJumlahKredit+Kredit.Value>xJumlahDebet) then
    begin
      MessageDlg('Jumlah Kredit tidak boleh lebih dari '+FormatFloat(',0',xJumlahDebet-xJumlahKredit)+'',
        mtInformation, [mbOK],0);
      ActiveControl:=Kredit;
    end else
    begin
      FrBon.SimpanData('U');
      ModalResult:=mrOK;
    end;
  end;
end;

procedure TFrSubBon.TanggalExit(Sender: TObject);
begin
  if CekPeriode(IDUser,Tanggal.Date)=False then
  begin
    ActiveControl:=Tanggal;
    MsgTanggalTidakSesuaiPeriode;
  end;
end;

procedure TFrSubBon.KodeVlsEnter(Sender: TObject);
begin
 mValid:=True;
end;

procedure TFrSubBon.KodeVlsExit(Sender: TObject);
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

end.
