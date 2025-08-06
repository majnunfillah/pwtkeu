unit FrmKomisiCustomer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons, PBNumEdit;

type
  TFrKomisiCustomer = class(TForm)
    Image1: TImage;
    Label30: TLabel;
    Label31: TLabel;
    Bevel2: TBevel;
    Panel1: TPanel;
    Label5: TLabel;
    LNamaCustSupp: TLabel;
    KodeCustSupp: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Nama: TEdit;
    Label6: TLabel;
    JumlahKomisi: TPBNumEdit;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeKotaEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure KodeCustSuppExit(Sender: TObject);
    procedure KodeCustSuppEnter(Sender: TObject);
    procedure kodeBrgEnter(Sender: TObject);
    procedure tampilisiCustomer;
  private
    { Private declarations }
    function CariKode: String;
  public
    { Public declarations }
    IsSimpan : boolean;
  end;

var
  FrKomisiCustomer: TFrKomisiCustomer;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, FrmKota, MyModul,Frmbrows,Frmbarangdankomisi;
{$R *.DFM}

procedure TFrKomisiCustomer.KodeCustSuppExit(Sender: TObject);
begin
  if mValid Then
  begin
   if length(Kodecustsupp.Text)=0 then tampilisiCustomer else
    begin
      if DataBersyarat('Select A.KodeCustSupp,A.Namacustsupp from DbCustSupp A '+
                       'where a.isAktif=1 and (a.KodeCustSupp like :0 or a.NamaCustSupp like :1) '+
                       'order by A.KodeCustSupp ',['%'+KodeCustSupp.Text+'%','%'+KodeCustSupp.Text+'%'],Dm.Qucari)=true then
      begin
        with DM.QuCari do
        begin
         KodeCustSupp.Text:=fieldbyname('KodeCustSupp').AsString;
         LNamaCustSupp.Caption:='[ '+fieldbyname('namaCustSupp').AsString+' ]';
         ActiveControl:=Nama;
        end;
      end
      else TampilisiCustomer;
    end;
  end;
end;
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

   FrKomisiCustomer.LNamaCustSupp.Caption:='[...]';
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
  if KodeCustSupp.Text<>'' then
  begin
     if IsSimpan=true then
     begin
        with FrbarangDanKomisi do
        begin
          Frbarangdankomisi.mPosisi:=KodeCustsupp.Text;
          SimpanDatakomisi('I');
           ClearKomponen;
        end;
        ActiveControl:=KodeCustSupp;
     end
     else
     begin
        with FrbarangDanKomisi do
        begin
          SimpandataKomisi('U');
        end;
        ModalResult:=mrOk;
     end;
  end ;
  FrbarangdanKomisi.ToolButton10.Click;
end;

procedure TFrKomisiCustomer.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

procedure TFrKomisiCustomer.KodeKotaEnter(Sender: TObject);
begin
  mValid:=true;
end;




procedure TFrKomisiCustomer.FormShow(Sender: TObject);
begin

  if IsSimpan then
     ActiveControl:=KodeCustSupp
  else
     begin
     ActiveControl:=Nama;
     kodeCustSupp.enabled:=False;
     nama.enabled:=False;
     end;
end;

procedure TFrKomisiCustomer.KodeCustSuppEnter(Sender: TObject);
begin
mValid:=True;
end;

procedure TFrKomisiCustomer.kodeBrgEnter(Sender: TObject);
begin
mValid:=True;
end;
procedure TFrKomisiCustomer.TampilisiCustomer;
begin
  KodeBrows:=912;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.IsEmpty=False) then
  begin
    with FrBrows.QuBrows do
    begin

      KodeCustSupp.Text:=fieldbyname('KodeCustSupp').AsString;
      lnamaCustSupp.Caption:='[ '+fieldbyname('NamaCustSupp').AsString+' ]';
      ActiveControl:=Nama
    end;
  end
  else
    ActiveControl:=KodeCustSupp;
end;
end.
