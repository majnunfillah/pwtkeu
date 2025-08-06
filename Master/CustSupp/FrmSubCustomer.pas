unit FrmSubCustomer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons,db, Mask, ToolEdit, PBNumEdit,StrUtils,
  ComCtrls, dxPageControl;

type
  TFrSubCustomer = class(TForm)
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    Label30: TLabel;
    Label31: TLabel;
    Bevel2: TBevel;
    Aktif: TComboBox;
    Label11: TLabel;
    dxPageControl1: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    dxTabSheet2: TdxTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label22: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label27: TLabel;
    Label5: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Email: TEdit;
    KodePos: TEdit;
    Alamat2: TEdit;
    Telpon: TEdit;
    Negara: TEdit;
    Alamat1: TEdit;
    Usaha: TEdit;
    NamaCust: TEdit;
    KodeCust: TEdit;
    KodeKota: TEdit;
    Fax: TEdit;
    Jenis: TComboBox;
    Label21: TLabel;
    Label6: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label23: TLabel;
    NPWP: TEdit;
    NamaPKP: TEdit;
    AlamatPkp1: TEdit;
    AlamatPkp2: TEdit;
    KotaPkp: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    Plafon: TPBNumEdit;
    Hari: TPBNumEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ClearKomponen;
    procedure BitBtn2Click(Sender: TObject);
    procedure KodeCustExit(Sender: TObject);
  private
    { Private declarations }
    function  IsiKodeCustomer: String;
    procedure TampilIsiValas;
    procedure TampilIsiPerkiraan;
  public
    { Public declarations }
    isSimpan : Boolean;
  end;

var
  FrSubCustomer: TFrSubCustomer;
   mValid:Boolean;
implementation
uses FrmCustomer,MyGlobal,Myprocedure, MyModul,FrmBrows;
{$R *.DFM}

procedure TFrSubCustomer.ClearKomponen;
var i:integer;
begin
  for i:= 0 to FrSubCustomer.dxPageControl1.Pages[0].ControlCount-1 do
  begin
    if (FrSubCustomer.dxPageControl1.Pages[0].Controls[i] is TEdit) then
       (FrSubCustomer.dxPageControl1.Pages[0].Controls[i] as TEdit).Clear;
  end;
  for i:= 0 to FrSubCustomer.dxPageControl1.Pages[1].ControlCount-1 do
  begin
    if (FrSubCustomer.dxPageControl1.Pages[1].Controls[i] is TEdit) then
       (FrSubCustomer.dxPageControl1.Pages[1].Controls[i] as TEdit).Clear;
  end;
  Plafon.value:=0;
  Hari.value:=0;
end;

function TFrSubCustomer.IsiKodeCustomer: String;
begin
end;

procedure TFrSubCustomer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFrSubCustomer.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0)
    else if key=27 then
      close;
end;

procedure TFrSubCustomer.FormShow(Sender: TObject);
begin
  dxPageControl1.ActivePageIndex:=0;
  KodeCust.Enabled:=IsSimpan=True;
  if IsSimpan=True then
    ActiveControl:=Jenis
  else ActiveControl:=NamaCust;
end;

procedure TFrSubCustomer.BitBtn3Click(Sender: TObject);
begin
  if IsSimpan=true then
  begin
    FrCustomer.mPosisi:=KodeCust.Text;
    FrCustomer.SimpanData('I');
    ClearKomponen;
    dxPageControl1.ActivePageIndex:=0;
    ActiveControl:=Jenis;
  end
  else
  begin
    FrCustomer.SimpanData('U');
    ModalResult:=mrOK;
  end;
end;

procedure TFrSubCustomer.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrSubCustomer.KodeCustExit(Sender: TObject);
begin
  if length(KodeCust.Text)=0 then
  begin
    Showmessage('Kode Customer tidak boleh kosong !');
    Activecontrol:=KodeCust;
  end
  else
  begin
    if (Issimpan=true)  then
    begin
      if DataBersyarat('Select kodecustSupp from dbcustSupp where kodecustSupp=:0',[kodecust.text],Dm.Qucari) then
      begin
        MessageDlg('Data Customer Sudah ada !',mtWarning,[mbok],0)
      end;
    end;
  end;
end;

procedure TFrSubCustomer.TampilIsiPerkiraan;
begin
end;

procedure TFrSubCustomer.TampilIsiValas;
begin
end;

end.
