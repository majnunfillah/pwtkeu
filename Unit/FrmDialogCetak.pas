unit FrmDialogCetak;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, ADODB, frxClass, frxDMPExport,
  frxDBSet, frxBarcode, Menus;

type
  TFrDialogCetak = class(TForm)
    BtnOK: TBitBtn;
    BtnCancel: TBitBtn;
    SpeedButton6: TSpeedButton;
    QuReport: TADOQuery;
    DataSource1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxDotMatrixExport2: TfrxDotMatrixExport;
    frxReport1: TfrxReport;
    PopupMenu1: TPopupMenu;
    DesignCetak1: TMenuItem;
    frxDBCetak: TfrxDBDataset;
    frxDBCetakPO: TfrxDBDataset;
    procedure BtnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure frxReport1AfterPrintReport(Sender: TObject);
    procedure DesignCetak1Click(Sender: TObject);
  private
    { Private declarations }
    mTeksTerbilang: String;
    mIDuserCetak, mAlasanCetakUlang: String;
    mCetakUlangKe: Integer;
  public
    { Public declarations }
    mNoBuktiCetak: String;
    mKodeFormCetak: Integer;
    procedure IsiKodeFormNoBukti(pKodeForm: Integer; pNoBukti: String);
    procedure CetakNota(pKodeForm: Integer; pNoBukti: String; pIsCetak: Integer);
    procedure CetakUlangNota(pKodeForm: Integer; pNoBukti, pIDUser: String; pIsCetak: Integer);
    function  MyTerbilang(pNilai: Real): String;
  end;

var
  FrDialogCetak: TFrDialogCetak;

implementation

uses MyModul, MyGlobal, MyProcedure, FrmLogin;

{$R *.dfm}

function TFrDialogCetak.MyTerbilang(pNilai: Real): String;
var N1, N2, N3: string;
    T1, T2: Real;
    Tot: byte;
    H1: real;
begin
  N3:=FloatToStr(pNilai);
  Tot:=CariKoma(N3);
  if Tot<>0 then
  begin
    N1:=copy(N3, 1, Tot-1);
    N2:=copy(N3, Tot+1, 2);
  end else
  begin
    N1:=N3;
    N2:='0';
  end;
  T1:=StrToFloat(N1);
  T2:=StrToFloat(N2);
  N1:=KonversiKeTeks(T1);
  if T2<>0 then
  begin
    if T2<10 then
       N2:=KonversiKeTeks(T2)
    else
       N2:=KonversiKeTeks(T2);
    if N1= '' then
       TempCode:=N2+'Sen'
    else
       TempCode:=N1+'Rupiah '+N2+'Sen';
  end
  else
    TempCode:=N1+'Rupiah ';
  Result:=TempCode;
end;

procedure TFrDialogCetak.IsiKodeFormNoBukti(pKodeForm: Integer; pNoBukti: String);
begin
  mKodeFormCetak:=pKodeForm;
  mNoBuktiCetak:=pNoBukti;
end;

procedure TFrDialogCetak.CetakNota(pKodeForm: Integer; pNoBukti: String; pIsCetak: Integer);
begin
{
  if pIsCetak=3 then
  begin
    mAlasanCetakUlang:=gAlasanCetakUlang;
  end else
  begin
    mCetakUlangKe:=0;
    mAlasanCetakUlang:='';
    mIDuserCetak:=IDUser;
  end;
}
  mKodeFormCetak:=pKodeForm;
  mNoBuktiCetak:=pNoBukti;
  case pKodeForm of
    3001   : begin
              frxDBCetak.DataSet.Close;
              frxDBCetak.DataSet:=QuReport;
              DataBuka('exec sp_CetakBPPB '+QuotedStr(pNoBukti), QuReport);
              frxDBCetak.Close;
              frxDBCetak.Open;
              frxReport1.LoadFromFile(CurrDir+'Nota\BPPB.fr3');
            end;
  end;
  if (pIsCetak=2) or (pIsCetak=3) then
    frxReport1.PreviewOptions.Buttons:=[pbPrint,pbZoom,pbFind,pbOutline,pbTools,pbNavigator]
  else
    frxReport1.PreviewOptions.Buttons:=[pbZoom,pbFind,pbOutline,pbTools,pbNavigator];
  case pIsCetak of
    0 : frxReport1.DesignReport;
    1 : frxReport1.ShowReport;
    2 : frxReport1.ShowReport;
    3 : frxReport1.ShowReport;
  end;
end;

procedure TFrDialogCetak.CetakUlangNota(pKodeForm: Integer; pNoBukti, pIDUser: String; pIsCetak: Integer);
begin
  mCetakUlangKe:=pIsCetak;
  mIDuserCetak:=pIDUser;
  CetakNota(pKodeForm, pNoBukti, 3);
end;

procedure TFrDialogCetak.BtnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFrDialogCetak.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //Action:=caFree;
end;

procedure TFrDialogCetak.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
  if VarName='MyUser' then Value:=IDUser;
  if VarName='Terbilang' then Value:=mTeksTerbilang;
end;

procedure TFrDialogCetak.frxReport1AfterPrintReport(Sender: TObject);
begin
{
  case mKodeFormCetak of
    301 : ExecBersyarat('update dbSPP set IsCetak=isnull(IsCetak,0)+1 where NoBukti=:0',[mNoBuktiCetak],DM.QuCari2);
    312 : ExecBersyarat('update dbPO set IsCetak=isnull(IsCetak,0)+1 where NoBukti=:0',[mNoBuktiCetak],DM.QuCari2);
    313 : ExecBersyarat('update dbBeli set IsCetakGdg=isnull(IsCetakGdg,0)+1 where NoBukti=:0',[mNoBuktiCetak],DM.QuCari2);
    316 : ExecBersyarat('update dbRBeli set IsCetakGdg=isnull(IsCetakGdg,0)+1 where NoBukti=:0',[mNoBuktiCetak],DM.QuCari2);
    410 : ExecBersyarat('update dbDR set IsCetak=isnull(IsCetak,0)+1 where NoBukti=:0',[mNoBuktiCetak],DM.QuCari2);
    420 : ExecBersyarat('update dbDN set IsCetak=isnull(IsCetak,0)+1 where NoBukti=:0',[mNoBuktiCetak],DM.QuCari2);
    440 : ExecBersyarat('update dbTransfer set IsCetak=isnull(IsCetak,0)+1 where NoBukti=:0',[mNoBuktiCetak],DM.QuCari2);
    450 : ExecBersyarat('update dbRInternal set IsCetak=isnull(IsCetak,0)+1 where NoBukti=:0',[mNoBuktiCetak],DM.QuCari2);
  end;
  if mCetakUlangKe=0 then
  begin
    case mKodeFormCetak of
      301 : LoggingData(mIDuserCetak,'C','SPP',mNoBuktiCetak,'');
      312 : LoggingData(mIDuserCetak,'C','PO',mNoBuktiCetak,'');
      313 : LoggingData(mIDuserCetak,'C','PBL',mNoBuktiCetak,'');
      316 : LoggingData(mIDuserCetak,'C','RPB',mNoBuktiCetak,'');
      410 : LoggingData(mIDuserCetak,'C','ODR',mNoBuktiCetak,'');
      420 : LoggingData(mIDuserCetak,'C','FDR',mNoBuktiCetak,'');
      440 : LoggingData(mIDuserCetak,'C','TRF',mNoBuktiCetak,'');
      450 : LoggingData(mIDuserCetak,'C','HSM',mNoBuktiCetak,'');
    end;
  end else
  begin
    case mKodeFormCetak of
      301 : LoggingData(mIDuserCetak,'RE','SPP',mNoBuktiCetak,'Reprint Ke-'+IntToStr(mCetakUlangKe)+' '+mAlasanCetakUlang);
      312 : LoggingData(mIDuserCetak,'RE','PO',mNoBuktiCetak,'Reprint Ke-'+IntToStr(mCetakUlangKe)+' '+mAlasanCetakUlang);
      313 : LoggingData(mIDuserCetak,'RE','PBL',mNoBuktiCetak,'Reprint Ke-'+IntToStr(mCetakUlangKe)+' '+mAlasanCetakUlang);
      316 : LoggingData(mIDuserCetak,'RE','RPB',mNoBuktiCetak,'Reprint Ke-'+IntToStr(mCetakUlangKe)+' '+mAlasanCetakUlang);
      410 : LoggingData(mIDuserCetak,'RE','ODR',mNoBuktiCetak,'Reprint Ke-'+IntToStr(mCetakUlangKe)+' '+mAlasanCetakUlang);
      420 : LoggingData(mIDuserCetak,'RE','FDR',mNoBuktiCetak,'Reprint Ke-'+IntToStr(mCetakUlangKe)+' '+mAlasanCetakUlang);
      440 : LoggingData(mIDuserCetak,'RE','TRF',mNoBuktiCetak,'Reprint Ke-'+IntToStr(mCetakUlangKe)+' '+mAlasanCetakUlang);
      450 : LoggingData(mIDuserCetak,'RE','HSM',mNoBuktiCetak,'Reprint Ke-'+IntToStr(mCetakUlangKe)+' '+mAlasanCetakUlang);
    end;
  end;
}
  frxReport1.PreviewForm.Close;
end;

procedure TFrDialogCetak.DesignCetak1Click(Sender: TObject);
begin
  CetakNota(mKodeFormCetak,mNoBuktiCetak,0);
end;

end.
