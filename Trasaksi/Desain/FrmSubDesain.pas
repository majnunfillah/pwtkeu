unit FrmSubDesain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons, Mask, ToolEdit,DateUtils, PBNumEdit;

type
  TFrSubDesain = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Label30: TLabel;
    Label31: TLabel;
    Bevel2: TBevel;
    KodeKota: TEdit;
    NamaKota: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    KodeArea: TEdit;
    Label3: TLabel;
    NmArea: TLabel;
    Label42: TLabel;
    Tanggal: TDateEdit;
    Label4: TLabel;
    Label5: TLabel;
    TglMulai: TDateEdit;
    Label6: TLabel;
    TglSelesai: TDateEdit;
    Logo: TCheckBox;
    Label7: TLabel;
    ModalKerja: TCheckBox;
    Konsep: TCheckBox;
    Softcopy: TCheckBox;
    Lainnya: TCheckBox;
    KetLainnya: TEdit;
    Keterangan: TMemo;
    Label8: TLabel;
    Label9: TLabel;
    KetMeeting: TComboBox;
    Label10: TLabel;
    QntSample: TPBNumEdit;
    Label11: TLabel;
    CatMeeting: TMemo;
    NoUrut: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Usulan: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeKotaEnter(Sender: TObject);
    procedure KodeKotaExit(Sender: TObject);
    procedure NamaKotaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure KodeAreaEnter(Sender: TObject);
    procedure KodeAreaExit(Sender: TObject);
    procedure TampilisiArea;
    Procedure AmBilDataBeli;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function CariKode: String;
    procedure IsiNoBuktiBaru;
    procedure TampilIsiCustomer;
  public
    { Public declarations }
    IsSimpan : boolean;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel,xModalKoreksi,CRNomor : Boolean;
  end;

var
  FrSubDesain: TFrSubDesain;
  mValid:Boolean;
  TipeTrans,Nomor,XCUstSupp :String;
implementation
uses  MyGlobal,Myprocedure, FrmDesain, MyModul,Frmbrows;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubDesain.ControlCount-1 do
   begin
      if (FrSubDesain.Controls[i] is TEdit) then
         (FrSubDesain.Controls[i] as TEdit).Clear;
   end;
end;


procedure TFrSubDesain.TampilIsiCustomer;
begin
  //KodeBrows:=1107019;
  Kodebrows:=81;
  Application.CreateForm(TFrBrows, FrBrows);

  //FrBrows.Nokira:=KodeSls.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    with FrBrows.QuBrows do
    begin
       NamaKota.Text:=fieldbyname('KodecustSupp').AsString;
       Label4.Caption:=fieldbyname('NamaCustSupp').AsString;
       {LAlamatSupp.Caption:=fieldbyname('Alamat').AsString;
       Hari.AsInteger:=FieldByName('DueDate').AsInteger;
       IsPPN:=fieldbyname('PPN').AsInteger;
       XCUstSupp:=fieldbyname('KodeCustSupp').Asstring;
       CRNomor:=True;

       NoAlamatKirim.Text :='0';
       mValid := True;
       NoAlamatKirimExit(NoAlamatKirim);
       mValid:=false;
       }
    end;
  end
  else
   // ActiveControl:=KodeCust;
end;


Procedure TFrSubDesain.AmBilDataBeli;
begin
   if not frdesain.QuView.IsEmpty then
   begin
      KodeKota.Text:=FrDesain.QuViewNoBukti.AsString;
      tanggal.Date :=FrDesain.QuViewTanggal.AsDateTime;
      nourut.Text:=FrDesain.QuViewNoUrut.AsString;
      NamaKota.Text:=FrDesain.QuViewKodeCustSupp.AsString;
      Usulan.Text:=FrDesain.QuViewUsulan.AsString;
      Kodearea.Text:=FrDesain.QuViewKodeBrg.AsString;
      TglMulai.date:=FrDesain.QuViewtglmulai.AsDateTime;
      Tglselesai.date:=FrDesain.QuViewTglSelesai.AsDateTime;
      if FrDesain.QuViewLogo.AsBoolean then
        logo.Checked :=true
      else
        logo.Checked :=False;
      if FrDesain.QuViewModalKerja.AsBoolean then
        ModalKerja.Checked :=true
      else
        ModalKerja.Checked :=false;
      if FrDesain.QuViewKonsepDesain.AsBoolean then
        Konsep.Checked :=true
      else
        Konsep.Checked :=false;
      if FrDesain.QuViewSoftCopy.AsBoolean then
        Softcopy.Checked :=true
      else
        Softcopy.Checked :=false;
      if FrDesain.QuViewLainnya.AsBoolean then
        Lainnya.Checked :=true
      else
        Lainnya.Checked :=false;
      KetLainnya.Text:=FrDesain.QuViewKetLainnya.Text;
      keterangan.Text:=FrDesain.QuViewKeterangan.Text;
      KetMeeting.ItemIndex:=FrDesain.QuViewKetMeeting.AsInteger;
      QntSample.Value:=FrDesain.QuViewQntSample.AsInteger;
      CatMeeting.Text :=FrDesain.QuViewCatatan.AsString;

   end;
   //TampilLabelDiskon(mTipeDisc,LDiskonP,LDiskonRp);
end;

procedure TFrSubDesain.IsiNoBuktiBaru;
var xNomor: String;
begin

  DecodeDate(Date,YY,MM,DD);
  If DayOfTheMonth(Date)<=DD then
     DD:=DayOfTheMonth(date);
  Try
    TANGGAL.Date := EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),DD);
  Except
    TANGGAL.Date := EndOfAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln));
  end;
  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),TipeTrans,Nomor,NomorBukti,
  Tanggal.Date);
  NoUrut.Text := NomorBukti;
  KodeKota.Text := Nomor;
{if GenerateNomor(xNomor)=True then
    begin
      NoBukti.Text:=xNomor+'/PK-PWT/'+MyRomawi(StrToInt(PeriodBln))+'/'+PeriodThn;
    end;}

end;

function TFrSubDesain.CariKode: String;
var xNomor: String;
begin
  { with DM.QuCari do
   begin
      Close;
      SQL.Clear;
      SQL.Add('select max(cast(substring(KodeKota,2,4) as int)) from dbKota ');
      SQL.Add('where substring(KodeKota,1,1)='+QuotedStr(LeftStr(NamaKota.Text,1)));
      SQL.Add('and isnumeric(substring(KodeKota,2,4))=1');
      Open;
      if IsEmpty then
        xNomor:='0001'
      else xNomor:=FormatFloat('0000',Fields[0].AsInteger+1);
   end;
   Result:=LeftStr(NamaKota.Text,1)+xNomor;}
end;

procedure TFrSubDesain.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubDesain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrSubDesain.BitBtn1Click(Sender: TObject);
begin
  if KodeKota.Text<>'' then
  begin
     if IsSimpan=true then
     begin
        with FrDesain do
        begin
          FrDesain.mPosisi:=KodeKota.Text;
          SimpanData('I');
           ClearKomponen;
           NmArea.caption:='[...]';
        end;
        ActiveControl:=KodeKota;
        //ActiveControl:=NamaKota;
     end
     else
     begin
        with FrDesain do
        begin
          Simpandata('U');
        end;
        ModalResult:=mrOk;
     end;
  end
end;

procedure TFrSubDesain.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

procedure TFrSubDesain.KodeKotaEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubDesain.KodeKotaExit(Sender: TObject);
begin
  If (IsSimpan) then
  begin
    if mValid then
    begin
      if length(KodeKota.Text)<>0 then
      begin
        if MyFindField('dbDesain','KodeKota',KodeKota.Text)=true then
        begin
          ShowMessage('Data Sudah Ada !');
          ActiveControl:=KodeKota;
        end;
      end
      else
      begin
        ShowMessage('Data Tidak Boleh Kosong !');
         ActiveControl:=KodeKota;
      end;
    end;
  end;
end;

procedure TFrSubDesain.NamaKotaExit(Sender: TObject);
begin
        TampilIsiCustomer;
{  if Trim(NamaKota.Text)<>'' then
  begin
    if (IsSimpan=True)  then
    begin
      //KodeKota.Text:=CariKode;
    end;
  end
  else
  begin
    MsgDataTidakBolehKosong('Nama Kota');
    ActiveControl:=NamaKota;
  end;
  if trim(NamaKota.Text)<>'' then
  begin
    if (Issimpan=true)  then
    begin
      TempCode :='JN'+GenerateCode('dbKota','KodeKota',uppercase(LeftStr(NamaKota.text,1)));
      KodeKota.Text:=tempCode;
    end;
  end
  else
  begin
   Showmessage('Must Fill The Data');
   activeControl:=NamaKota;
 end;}
end;

procedure TFrSubDesain.FormShow(Sender: TObject);
begin
  //KodeKota.Enabled:=IsSimpan;
  //KodeKota.Enabled:=False;
  {if IsSimpan then
     ActiveControl:=Kodekota
  else
     begin
     ActiveControl:=namakota;
     kodekota.enabled:=False;
     end;}
  mValid:=False;
  //xModalKoreksi:=FrMainSO.ModalKoreksi;
  If xModalKoreksi = False then
  begin
    IsiNoBuktiBaru;
    //TampilData(NoBukti.Text);
    //NoUrut.Enabled:=True;
    //ActiveControl:=KodeSls;
  end
  else
  Begin
    //NoUrut.Text:=FrMainSO.QuMasterNoUrut.AsString;
    //NOBUKTI.Text := gTempNoBuktiSO;
    //Hapus_Daftar_Nomor_User ('SO',IDUser);
    //AmbilUrut(NOBUKTI.Text,NomorBukti);
    //Daftar_Nomor(TipeTrans,NoUrut.Text,NOBUKTI.Text,isMax);
    //TampilData(NOBUKTI.Text);
    //IsPPN:=FrMainSO.QuMasterTipePPN.AsInteger;
    AmBilDataBeli;
    //NoUrut.Enabled:=False;
  end;
end;

procedure TFrSubDesain.KodeAreaEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubDesain.KodeAreaExit(Sender: TObject);
begin
if mValid then
 begin
   if length(Kodearea.Text)=0 then TampilisiArea else
   begin
     if DataBersyarat('Select * from Dbarea where Kodearea like :0',['%'+kodearea.text+'%'],DM.QuCari)=true then
     begin
         NmArea.Caption:='[ '+DM.QuCari.fieldbyname('Namaarea').AsString+' ]';
         Kodearea.Text:=DM.QuCari.fieldbyname('KodeArea').AsString;
     end
     else TampilisiArea;
   end;
 end;
end;

procedure TFrSubDesain.TampilIsiArea;
begin
     KodeBrows:=9132;
     Application.CreateForm(TFrBrows, FrBrows);
     FrBrows.ShowModal;
     if FrBrows.ModalResult=mrOk then
     begin
         KOdearea.Text:=FrBrows.QuBrows.FieldByName('Kodebrg').AsString;
         NmArea.Caption:='[ '+FrBrows.QuBrows.FieldByName('NamaBrg').AsString+' ]';
     end
     else
        ActiveControl:=kodearea;
end;

procedure TFrSubDesain.FormCreate(Sender: TObject);
begin
    Tipetrans:='DSN';
end;

end.
