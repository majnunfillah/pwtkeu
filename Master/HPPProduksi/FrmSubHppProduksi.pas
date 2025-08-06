unit FrmSubHppProduksi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons, PBNumEdit, ComCtrls, ADODB;

type
  TFrSubHPPProduksi = class(TForm)
    Panel1: TPanel;
    Bevel2: TBevel;
    Label31: TLabel;
    Label30: TLabel;
    Image1: TImage;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    LblKodeBrg: TLabel;
    KOdebrg: TEdit;
    Bulan: TPBNumEdit;
    tahun: TPBNumEdit;
    HPP: TPBNumEdit;
    Panel3: TPanel;
    mmDataAsli: TMemo;
    OpenDialog1: TOpenDialog;
    PBProses: TProgressBar;
    QuSource: TADOQuery;
    QuSourceKeyUrut: TIntegerField;
    QuSourceTanggal: TDateTimeField;
    QuSourceUrut: TIntegerField;
    QuSourceKeyNIK: TIntegerField;
    QuSourceNoAbsen: TStringField;
    QuSourceJamMasuk: TDateTimeField;
    QuSourceJamKeluar: TDateTimeField;
    QuSourceNIK: TStringField;
    QuSourceNama: TStringField;
    QuSourceKodeDept: TStringField;
    QuSourceKodeShf: TStringField;
    QuSourceKodeJab: TStringField;
    QuSourceKodeESL: TStringField;
    QuSourceKeyNIKAbsensi: TIntegerField;
    QuSourceUrutAbsensi: TIntegerField;
    QuSourceKodeTipeAbsensi: TStringField;
    DsSource: TDataSource;
    Ambilbtn: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    LokasiFileTxt: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeBrdEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure KOdebrgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KOdebrgExit(Sender: TObject);
    procedure KOdebrgEnter(Sender: TObject);
    procedure AmbilbtnClick(Sender: TObject);
    procedure SimpanKeTabelTemp;
  private
    { Private declarations }
    mDataKe: array [1..5] of String;
    Model: String;
    mUrut: Integer;
    mSat_1, mSat_2: String;
    mIsiBrg, xQnt,xIsibrg,xQntSisa,xQnt2Sisa: Real;
    Sat : String;
    xStatus : Boolean;
  public
    { Public declarations }
    IsSimpan : boolean;

  end;

var
  FrSubHPPProduksi: TFrSubHPPProduksi;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, FrmHPPProduksi, MyModul, FrmBrows;
{$R *.DFM}

procedure TFrSubHPPProduksi.SimpanKeTabelTemp;
var i, j, xJmlBaris, xPosTab, xKeyUrut: Integer;
    sLineAsli, xChrTab, sLineTemp, sSQLText: String;
    xTglInput: TDateTime;
begin
 { with QuSource do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Delete From dbSPBLampiran where NoSPB=:0 and UrutSPB=:1 ');
    Prepared;
    Parameters[0].Value:=NoBukti.Text;
    Parameters[1].Value:=QuBeliurut.AsInteger;
    ExecSQL;
  end;   }

  xChrTab:=chr(9);
  xJmlBaris:=mmDataAsli.Lines.Count;
  PBProses.Max:=xJmlBaris;
  sLineAsli:=mmDataAsli.Lines.Strings[0];
  i:=0;
  while i<xJmlBaris do
  begin
    sSQLText:='';
    sLineAsli:=mmDataAsli.Lines.Strings[i];
    for j := 1 to 6 do
    begin
      xPosTab:=Pos(xChrTab, sLineAsli);
      if xPosTab=0 then mDataKe[j]:=sLineAsli
      else if xPosTab=1 then
      begin
        mDataKe[j]:='';
        sLineTemp:=copy(sLineAsli,xPosTab+1, length(sLineAsli)-xPosTab);
      end else
      begin
        mDataKe[j]:=copy(sLineAsli,1,xPosTab-1);
        sLineTemp:=copy(sLineAsli,xPosTab+1, length(sLineAsli)-xPosTab);
      end;
      sLineAsli:=sLineTemp;
    end;

    try
      if (mDataKe[1]<>'NOPALLET') then
      begin
        with FrHPPProduksi.Sp_Merk do
        begin
          close;
          Prepared;
          Parameters[1].Value:='I';
          Parameters[2].Value := strtoint(mDataKe[1]);
          Parameters[3].Value := strtoint(mDataKe[2]);
          Parameters[4].Value := mDataKe[3];
          Parameters[5].Value := StrToFloat(mDataKe[5]);

          try
            ExecProc;
          except
           ShowMessage('Proses Gagal !')
          end;
        end;
      end;
    except

    end;
    i:=i+1;
    PBProses.Position:=i;
    Application.ProcessMessages;
  end;
  PBProses.Position:=0;
end;

procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubHPPProduksi.ControlCount-1 do
   begin
      if (FrSubHPPProduksi.Controls[i] is TEdit) then
         (FrSubHPPProduksi.Controls[i] as TEdit).Clear;
   end;
end;

procedure TFrSubHPPProduksi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubHPPProduksi.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrSubHPPProduksi.BitBtn1Click(Sender: TObject);
begin
if KOdeBrg.Text<>'' then
begin
   if IsSimpan=true then
   begin
      with FrHPPProduksi do
      begin
         SimpanData('I');
         ClearKomponen;
      end;
      ActiveControl:=KOdebrg;
   end
   else
   begin
      with FrHPPProduksi do
      begin
         Simpandata('U');
      end;
      ModalResult:=mrOk;
   end;
 end
end;

procedure TFrSubHPPProduksi.BitBtn2Click(Sender: TObject);
begin
   Close;
end;


procedure TFrSubHPPProduksi.KodeBrdEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubHPPProduksi.FormShow(Sender: TObject);
begin
  Kodebrg.Enabled:=IsSimpan;
  Bulan.Enabled:=IsSimpan;
  Tahun.Enabled:=IsSimpan;
  //panel3.Visible :=false;
 // mmDataAsli.Visible:=false;
end;

procedure TFrSubHPPProduksi.KOdebrgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin    {
    if (IsSimpan) then
      begin
        if mValid then
        begin
          if length(KodeBrg.Text)<>0 then
          begin
            if MyFindField('dbbarangJadi','KodeBrg',KodeBrd.Text)=true then
            begin
               ShowMessage('Data Sudah Ada !');
               ActiveControl:=Bulan;
            end;
          end
          else
          begin
            ShowMessage('Data Tidak Boleh Kosong !');
            ActiveControl:=Bulan;
          end;
        end;
      end;     }
end;

procedure TFrSubHPPProduksi.KOdebrgExit(Sender: TObject);
begin
  if mValid Then
  begin
    if DataBersyarat('select Kodebrg,Namabrg,sat1,sat2 from DbBarangjadi where Kodebrg=:0',[KOdebrg.text],DM.Qucari) then
    begin
      KOdebrg.Text :=DM.QuCari.FieldByname('Kodebrg').AsString;
      LblKOdebrg.Caption := '[ '+DM.QuCari.FieldByname('NamaBrg').AsString+' ]';
    end
    else
      TampilIsiData(FrSubHPPProduksi,Kodebrg,LblKodeBrg,10131,'KOdebrg','NamaBrg');
  end;
end;

procedure TFrSubHPPProduksi.KOdebrgEnter(Sender: TObject);
begin
 mValid := true;
end;

procedure TFrSubHPPProduksi.AmbilbtnClick(Sender: TObject);
begin
//panel3.Visible:=true;
//mmDataAsli.Visible:=true;
  if OpenDialog1.Execute then
  begin
    LokasiFileTxt.Text:=OpenDialog1.FileName;
    mmDataAsli.Lines.LoadFromFile(OpenDialog1.FileName);
    PBProses.Visible:=True;
    Try
      SimpanKeTabelTemp;
      except
    end;
    PBProses.Visible:=False;
    frHPPProduksi.AmbilData;
    //QuSource.Close;
    //QuSource.Open;
  end;
end;

end.
