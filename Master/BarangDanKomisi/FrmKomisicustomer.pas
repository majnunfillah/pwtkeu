unit FrmKomisiCustomer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons, PBNumEdit, dxTL, dxDBCtrl,
  dxDBGrid, dxCntner, ADODB, dxDBTLCl, dxGrClms;

type
  TFrKomisiCustomer = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    LNamaCustSupp: TLabel;
    KodeCustSupp: TEdit;
    Panel2: TPanel;
    Panel4: TPanel;
    PanelShow1: TPanel;
    HapusBtn: TSpeedButton;
    KoreksiBtn: TSpeedButton;
    TambahBtn: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    Panel3: TPanel;
    Image1: TImage;
    Label30: TLabel;
    Label31: TLabel;
    Bevel2: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    QuBeli: TADOQuery;
    DsQuBeli: TDataSource;
    QuBeliKodeCustSupp: TStringField;
    QuBeliurut: TIntegerField;
    QuBeliNama: TStringField;
    QuBeliKurir: TBCDField;
    QuBelinamaCustSupp: TStringField;
    Label6: TLabel;
    Label4: TLabel;
    Nama: TEdit;
    JumlahKomisi: TPBNumEdit;
    dxDBGrid1Nama: TdxDBGridMaskColumn;
    dxDBGrid1Kurir: TdxDBGridMaskColumn;
    CheckBox1: TCheckBox;
    QuBelikodebrg: TStringField;
    QuBeliKurir_2: TBCDField;
    Label1: TLabel;
    JumlahKomisi2: TPBNumEdit;
    dxDBGrid1Kurir_2: TdxDBGridMaskColumn;
    QuBeliislunas: TBooleanField;
    dxDBGrid1islunas: TdxDBGridCheckColumn;
    Label2: TLabel;
    Kode: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeKotaEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure TambahBtnClick(Sender: TObject);
    procedure KoreksiBtnClick(Sender: TObject);
    procedure HapusBtnClick(Sender: TObject);
    procedure kodeBrgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NamaEnter(Sender: TObject);
    procedure Tampilisiexpedisi;
    procedure KodeExit(Sender: TObject);
    procedure KodeEnter(Sender: TObject);
  private
     Model: String;
    { Private declarations }
    function CariKode: String;

  public
    { Public declarations }
    IsSimpan : boolean;
    mKodeBrg, mKodeCustSupp : String;
  end;

var
  FrKomisiCustomer: TFrKomisiCustomer;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, FrmKota, MyModul,Frmbrows,Frmbarangdankomisi;
{$R *.DFM}



procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrKomisiCustomer.Panel1.ControlCount-1 do
   begin
      if (FrKomisiCustomer.Panel1.Controls[i] is TEdit) then
         (FrKomisiCustomer.Panel1.Controls[i] as TEdit).Clear;
   end;
   for i:= 0 to FrKomisiCustomer.Panel1.ControlCount-1 do
   begin
      if (FrKomisiCustomer.Panel1.Controls[i] is TPBNumEdit) then
         (FrKomisiCustomer.Panel1.Controls[i] as TPBNumEdit).value:=0;
   end;
end;

function TFrKomisiCustomer.CariKode: String;
var xNomor: String;
begin
end;

procedure TFrKomisiCustomer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrKomisiCustomer.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0)
    else if key=27 then
      close;
end;

procedure TFrKomisiCustomer.BitBtn1Click(Sender: TObject);
begin
  if Nama.Text<>'' then
  begin
     if IsSimpan=true then
     begin
        with FrbarangDanKomisi do
        begin
          Frbarangdankomisi.mPosisi:=Nama.Text;
          SimpanDataKomisi('I');
           ClearKomponen;
        end;
        ActiveControl:=Nama;
     end
     else
     begin
        with FrbarangDanKomisi do
        begin
          SimpanDataKomisi('U');
          ClearKomponen;
          TampilTombolDetail(False);
        end;
        //ModalResult:=mrOk;
     end;
  end  ;
  QuBeli.Close;
  QuBeli.Prepared;
  QuBeli.Parameters[0].Value :=FrBarangdankomisi.Quviewkodecustsupp.asstring;
  QuBeli.Open;
end;

procedure TFrKomisiCustomer.BitBtn2Click(Sender: TObject);
begin
  mValid:=False;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
  ClearKomponen;
end;

procedure TFrKomisiCustomer.KodeKotaEnter(Sender: TObject);
begin
  mValid:=true;
end;




procedure TFrKomisiCustomer.FormShow(Sender: TObject);
begin
  QuBeli.Close;
  QuBeli.Prepared;
  QuBeli.Parameters[0].Value :=mKodeCustSupp;
  QuBeli.Parameters[1].Value :=mKodeBrg;
  QuBeli.Open;
end;



procedure TFrKomisiCustomer.TampilTombolDetail(pNilai: Boolean);
begin
  PanelShow1.Enabled:=not pNilai;
  Panel1.Visible:=pNilai;
  //Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  Panel1.Enabled:=pNilai;
end;
procedure TFrKomisiCustomer.TambahBtnClick(Sender: TObject);
begin
  //Model:='write';
  IsSimpan:=True;
  TampilTombolDetail(True);
  ActiveControl:=Kode;
end;

procedure TFrKomisiCustomer.KoreksiBtnClick(Sender: TObject);
begin
   mValid:=False;
   //Model:='koreksi';
   IsSimpan:=false;
   if QuBeli.IsEmpty=False then
   begin
      TampilTombolDetail(True);
      Kode.Text:=QuBeliKodeCustSupp.AsString;
      Nama.Text:=QuBeliNama.AsString;
      JumlahKomisi.Value:=QuBeliKurir.AsFloat;
      JumlahKomisi2.Value:=QuBeliKurir_2.AsFloat;
      CheckBox1.Checked:=QuBeliislunas.AsBoolean;
      ActiveControl:=Kode;
   end
   else
   begin
      ShowMessage('Tidak ada transaksi yang dikoreksi !');
      ActiveControl:=dxDBGrid1;
   end;
end;

procedure TFrKomisiCustomer.HapusBtnClick(Sender: TObject);
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
              FrbarangDanKomisi.SimpanDataKomisi('D');
      end;
   end;
   QuBeli.Close;
  QuBeli.Prepared;
  QuBeli.Parameters[0].Value :=FrBarangdankomisi.Quviewkodecustsupp.asstring;
  QuBeli.Open;
end;

procedure TFrKomisiCustomer.kodeBrgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    mValid:=False;
    BitBtn2.Click;
  end
end;

procedure TFrKomisiCustomer.NamaEnter(Sender: TObject);
begin
mValid:=True;
end;

procedure TFrKomisiCustomer.TampilIsiExpedisi;
begin
  KodeBrows:=10143;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.IsEmpty=False) then
  begin
    with FrBrows.QuBrows do
    begin
      Kode.Text:=fieldbyname('KodeCustsupp').AsString;
      Nama.text:= fieldbyname('NamaCust').AsString ;
      {Sat1.Text :=fieldbyname('Sat1').AsString;
      Sat2.Text :=fieldbyname('Sat2').AsString;
      ActiveControl:=Hrg1_1;}
    end;
  end
  else
    ActiveControl:=Kode;
end;

procedure TFrKomisiCustomer.KodeExit(Sender: TObject);
begin
  if mValid Then
  begin
     if length(Nama.Text)=0 then Tampilisiexpedisi else
        begin
          if DataBersyarat('Select A.kodebrg,A.NamaBrg, Sat1, Sat2 from Dbbarang A '+
                           'where a.isAktif=1 and (a.KodeBrg like :0 or a.NamaBrg like :1 and left(kodebrg,2)=''BJ'') '+
                           'order by A.KodeBrg ',['%'+Kode.Text+'%','%'+Kode.Text+'%'],Dm.Qucari)=true then
          begin
            with DM.QuCari do
            begin
             Kode.Text:=fieldbyname('KodeBrg').AsString;
             Nama.Text:='[ '+fieldbyname('NamaBrg').AsString+' ]';
            end;
          end
          else Tampilisiexpedisi;
        end;
  end;
end;

procedure TFrKomisiCustomer.KodeEnter(Sender: TObject);
begin
mValid:=True;
end;

end.
