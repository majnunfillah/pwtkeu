unit FrmIsiNoFPJ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit;

type
  TFrIsiNoFPJ = class(TForm)
    NoFPJ: TEdit;
    TglPajak: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
    TandaTangan: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TandaTanganEnter(Sender: TObject);
    procedure TandaTanganExit(Sender: TObject);
  private
    { Private declarations }

    procedure TampilISiKaryawan;
  public
    { Public declarations }
    KeyNik : integer;
  end;

var
  FrIsiNoFPJ: TFrIsiNoFPJ;
  mValid:Boolean;

implementation
uses  FrmBrows,MyProcedure,Myglobal, MyModul ;

{$R *.dfm}

procedure TFrIsiNoFPJ.Button1Click(Sender: TObject);
begin
   ModalResult:=mrOK;
end;

procedure TFrIsiNoFPJ.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=13 then
      SendMessage(handle,WM_NEXTDLGCTL,0,0)
    else if key=27 then
      close;

end;

procedure TFrIsiNoFPJ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
end;

procedure TFrIsiNoFPJ.TandaTanganEnter(Sender: TObject);
begin
mvalid:=true;
end;

procedure TFrIsiNoFPJ.TandaTanganExit(Sender: TObject);
begin
  if mValid then
  begin
      if Length(TandaTangan.Text)=0 then TampilIsiKaryawan else
      begin
          if DataBersyarat('Select a.nik, b.nama  from dbproduksitenaker a      '+
                           'Left Outer Join dbkaryawan b on b.nik =a.nik '+
                           //'on a.NoBuKti=b.NoPo left Outer Join dbBarang c on a.Kodebrg=c.Kodebrg ' +
                           'where A.nama=:0 ',
                     [tandatangan.Text], DM.QuCari)=True then
        begin
             tandatangan.Text:=DM.QuCari.FieldByName('Nama').AsString;
             Keynik:=DM.QuCari.FieldByName('KeyNik').asinteger;
             //LTK1.Caption:='[ '+DM.QuCari.FieldByName('nama').AsString+' ]';
             //TftTenaker1.Value := DM.QuCari.FieldByName('Nik').AsString;
             {Qnt.MaxValue:=DM.QuCari.FieldByName('QntSisa').AsFloat+0.01;
             Qnt.AsFloat:=DM.QuCari.FieldByName('QntSisa').AsFloat;
             Harga.AsFloat:=DM.QuCari.FieldByName('Harga').AsFloat;
             IsiSatuan;}
        end
        {else
             TampilIsiKaryawan;}
      end;
  end;
  mvalid:=false;
end;

procedure TFrIsiNoFPJ.TampilISiKaryawan;
begin
 KodeBrows:=15779;
 Application.CreateForm(TFrBrows, FrBrows);
 FrBrows.ShowModal;
 if FrBrows.ModalResult=mrOk then
 begin
     KeyNik:=(FrBrows.QuBrows.FieldByName('KeyNik').asinteger);
     TandaTangan.Text:=FrBrows.QuBrows.FieldByName('Nama').AsString;
 end
 else
    ActiveControl:=Tandatangan;
end;

end.
