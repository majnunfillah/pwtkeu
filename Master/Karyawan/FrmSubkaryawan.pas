unit FrmSubkaryawan;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons, PBNumEdit, Mask, ToolEdit;

type
  TFrSubKaryawan = class(TForm)
    Image1: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Bevel2: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Tanggallahir: TDateEdit;
    Kelamin: TComboBox;
    Nik: TEdit;
    Nama: TEdit;
    tempatlahir: TEdit;
    Tinggi: TPBNumEdit;
    berat: TPBNumEdit;
    Agama: TEdit;
    NoKTP: TEdit;
    tglmasuk: TDateEdit;
    TelponHp: TEdit;
    NPWP: TEdit;
    Aktif: TComboBox;
    LamaKontrak: TPBNumEdit;
    TglAkhirKOntrak: TDateEdit;
    KOdepos: TEdit;
    KetPendidikan: TEdit;
    Label23: TLabel;
    Alamat: TEdit;
    Label20: TLabel;
    TglKeluar: TDateEdit;
    Issales: TComboBox;
    Label21: TLabel;
    Label22: TLabel;
    Produksi: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeVlsEnter(Sender: TObject);
    procedure KodeVlsExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IsSimpan : boolean;

  end;

var
  FrSubKaryawan: TFrSubKaryawan;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, Frmvalas, FrmKaryawan;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
  for i:=FrSubKaryawan.Panel1.ControlCount-1 downto 0 do
   begin
      if (FrSubKaryawan.panel1.Controls[i] is TEdit) then
         (FrSubKaryawan.panel1.Controls[i] as TEdit).Clear;
      if (FrSubKaryawan.panel1.Controls[i] is TPBNumEdit) then
         (FrSubKaryawan.panel1.Controls[i] as TPBNumEdit).Value:=1;
   end;

end;

procedure TFrSubKaryawan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if IsSimpan then
    begin
     if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
               MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
      begin
        Action:=caFree;
      end
      else
          Action:=caNone;
    end;
   Action:=caFree;
end;

procedure TFrSubKaryawan.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrSubKaryawan.BitBtn1Click(Sender: TObject);
begin
if NIK.Text<>'' then
begin
   if IsSimpan=true then
   begin
      with Frkaryawan do
      begin
        SimpanData('I');
         ClearKomponen;
      end;
      ActiveControl:=Nik;
   end
   else
   begin
      with Frkaryawan do
      begin
        Simpandata('U');
      end;
      ModalResult:=mrOk;
   end;
 end
end;

procedure TFrSubKaryawan.BitBtn2Click(Sender: TObject);
begin
   Close;
end;


procedure TFrSubKaryawan.KodeVlsEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubKaryawan.KodeVlsExit(Sender: TObject);
begin
  if (Issimpan) then
  begin
    if mValid then
    begin
      if length(Nik.Text)<>0 then
      begin
        if MyFindField('Dbkaryawan','NiK',NIK.Text)=true then
        begin
          ShowMessage('Data Sudah Ada !');
          ActiveControl:=NIK;
        end;
      end
      else
      begin
        ShowMessage('Data Tidak Boleh Kosong !');
        ActiveControl:=NIK;
      end;
    end;
  end;
end;

procedure TFrSubKaryawan.FormShow(Sender: TObject);
var i:integer;
begin
  //NIK.Enabled:=IsSimpan=True;
  //if IsSimpan=True then
  ActiveControl:=NIK ;
  if IsSimpan then
  begin
    for i:=FrSubKaryawan.Panel1.ControlCount-1 downto 0 do
     begin
        if (FrSubKaryawan.panel1.Controls[i] is TDateEdit) then
           (FrSubKaryawan.panel1.Controls[i] as TDateEdit).Date:=Now;
     end;
  end;
end;

procedure TFrSubKaryawan.FormDestroy(Sender: TObject);
begin
  FrSUBKaryawan:=nil;
end;

end.
