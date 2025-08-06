unit FrmTglKirimRevPO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, PBNumEdit, Mask, ToolEdit, ExtCtrls;

type
  TFrTglKirimRevPO = class(TForm)
    Tanggal1: TDateEdit;
    Label42: TLabel;
    Qnt1: TPBNumEdit;
    BtnSimpan: TBitBtn;
    BtnBatal: TBitBtn;
    Label1: TLabel;
    Tanggal2: TDateEdit;
    Label2: TLabel;
    Qnt2: TPBNumEdit;
    Label3: TLabel;
    Tanggal3: TDateEdit;
    Label4: TLabel;
    Qnt3: TPBNumEdit;
    Label5: TLabel;
    Tanggal4: TDateEdit;
    Label6: TLabel;
    Qnt4: TPBNumEdit;
    Label7: TLabel;
    Tanggal5: TDateEdit;
    Label8: TLabel;
    Qnt5: TPBNumEdit;
    Label9: TLabel;
    Tanggal6: TDateEdit;
    Label10: TLabel;
    Qnt6: TPBNumEdit;
    Label11: TLabel;
    Tanggal7: TDateEdit;
    Label12: TLabel;
    Qnt7: TPBNumEdit;
    Label13: TLabel;
    Tanggal8: TDateEdit;
    Label14: TLabel;
    Qnt8: TPBNumEdit;
    Label15: TLabel;
    Bevel1: TBevel;
    LabelKodeBrg: TLabel;
    LabelNamaBrg: TLabel;
    LabelSatuan: TLabel;
    procedure BtnBatalClick(Sender: TObject);
    procedure BtnSimpanClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Qnt1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    mNoBukti_TglKirimPO, mKodeBrg_TglKirimPO: String;
    mNoSat_TglKirimPO: Integer;
    TotalPO : Real;
  end;

var
  FrTglKirimRevPO: TFrTglKirimRevPO;

implementation

uses MyModul, MyProcedure, MyGlobal, FrmBrows, FrmPO, DB, ADODB, FrmRevPO;

{$R *.dfm}

procedure TFrTglKirimRevPO.BtnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFrTglKirimRevPO.BtnSimpanClick(Sender: TObject);
var iForDo: Integer;
    TotalKirim : Real;
begin
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('delete dbKirimDet where NoBukti='+QuotedStr(mNoBukti_TglKirimPO));
    SQL.Add('and KodeBrg='+QuotedStr(mKodeBrg_TglKirimPO)+' and NoSat='+IntToStr(mNoSat_TglKirimPO));
    ExecSQL;
  end;
  TotalKirim:= (Qnt1.Value+Qnt2.Value+Qnt3.Value+Qnt4.Value+Qnt5.Value+Qnt6.Value+Qnt7.Value+Qnt8.Value);
  if TotalKirim=TotalPO then
  Begin
    for iForDo := 1 to 5 do
    begin
      with DM.QuCari do
      begin
        Close;
        SQL.Clear;
        SQL.Add('insert into dbKirimDet (NoBukti, KodeBrg, NoSat, Urut, Tanggal, Qnt)');
        SQL.Add('values ('+QuotedStr(mNoBukti_TglKirimPO)+','+QuotedStr(mKodeBrg_TglKirimPO)+','+IntToStr(mNoSat_TglKirimPO)+','+IntToStr(iForDo)+', :0, :1)');
        Prepared;
        case iForDo of
          1 : Parameters[0].Value:=Tanggal1.Date;
          2 : Parameters[0].Value:=Tanggal2.Date;
          3 : Parameters[0].Value:=Tanggal3.Date;
          4 : Parameters[0].Value:=Tanggal4.Date;
          5 : Parameters[0].Value:=Tanggal5.Date;
          6 : Parameters[0].Value:=Tanggal6.Date;
          7 : Parameters[0].Value:=Tanggal7.Date;
          8 : Parameters[0].Value:=Tanggal8.Date;
        end;
        case iForDo of
          1 : Parameters[1].Value:=Qnt1.Value;
          2 : Parameters[1].Value:=Qnt2.Value;
          3 : Parameters[1].Value:=Qnt3.Value;
          4 : Parameters[1].Value:=Qnt4.Value;
          5 : Parameters[1].Value:=Qnt5.Value;
          6 : Parameters[1].Value:=Qnt6.Value;
          7 : Parameters[1].Value:=Qnt7.Value;
          8 : Parameters[1].Value:=Qnt8.Value;
        end;
        case iForDo of
          1 : if Qnt1.Value<>0 then ExecSQL;
          2 : if Qnt2.Value<>0 then ExecSQL;
          3 : if Qnt3.Value<>0 then ExecSQL;
          4 : if Qnt4.Value<>0 then ExecSQL;
          5 : if Qnt5.Value<>0 then ExecSQL;
          6 : if Qnt6.Value<>0 then ExecSQL;
          7 : if Qnt7.Value<>0 then ExecSQL;
          8 : if Qnt8.Value<>0 then ExecSQL;
        end;
      end;
    end;
    ModalResult:=mrOk;
  end
  else
  begin
    MessageDlg('Total jadwal kirim '+FormatFloat(',0.00',TotalKirim)+' tidak sama total PO '+FormatFloat(',0.00',TotalPO),mtWarning,[mbok],0);
    ActiveControl := Qnt1
  end;
end;

procedure TFrTglKirimRevPO.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0)
  else if Key=VK_Escape then Close;
end;

procedure TFrTglKirimRevPO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrTglKirimRevPO.FormShow(Sender: TObject);
begin
  LabelKodeBrg.Caption:='Kode Barang : '+FrRevPO.QuGridKirimKodeBrg.AsString;
  LabelNamaBrg.Caption:='Nama Barang : '+FrRevPO.QuGridkirimNamaBrg.AsString;
  LabelSatuan.Caption:='Satuan : '+FrRevPO.QuGridkirimSatuan.AsString;
  Tanggal1.Date:=FrRevPO.QuGridkirimTanggal1.AsDateTime;
  Qnt1.Value:=FrRevPO.QugridkirimQnt1.AsCurrency;
  Tanggal2.Date:=FrRevPO.QuGridkirimTanggal2.AsDateTime;
  Qnt2.Value:=FrRevPO.QuGridkirimQnt2.AsCurrency;
  Tanggal3.Date:=FrRevPO.QuGridkirimTanggal3.AsDateTime;
  Qnt3.Value:=FrRevPO.QuGridkirimQnt3.AsCurrency;
  Tanggal4.Date:=FrRevPO.QuGridkirimTanggal4.AsDateTime;
  Qnt4.Value:=FrRevPO.QuGridkirimQnt4.AsCurrency;
  Tanggal5.Date:=FrRevPO.QugridkirimTanggal5.AsDateTime;
  Qnt5.Value:=FrRevPO.QuGridkirimQnt5.AsCurrency;
  if Qnt1.Value=0 then
  begin
    Tanggal1.Date:=FrRevPO.Tanggal.Date;
    Qnt1.Value:=FrRevPO.QuGridkirimQnt.AsFloat;
  end;
  //Tanggal6.Date:=FrPO.QukirimTanggal6.AsDateTime;
  //Qnt6.Value:=FrPO.QukirimQnt6.AsCurrency;
  //Tanggal7.Date:=FrPO.QukirimTanggal7.AsDateTime;
  //Qnt7.Value:=FrPO.QukirimQnt7.AsCurrency;
  //Tanggal8.Date:=FrPO.QukirimTanggal8.AsDateTime;
  //Qnt8.Value:=FrPO.QukirimQnt8.AsCurrency;
  ActiveControl:=Tanggal1;
end;

procedure TFrTglKirimRevPO.Qnt1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
  begin
    if (Sender as TPBNumEdit).Value=0 then
      ActiveControl:=BtnSimpan;
  end;
end;

end.
