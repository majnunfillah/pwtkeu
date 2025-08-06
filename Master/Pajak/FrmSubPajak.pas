unit FrmSubPajak;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, PBNumEdit, ExtCtrls, Buttons, db,strUtils;

type
  TfrSubPajak = class(TForm)
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    Label11: TLabel;
    PPn: TPBNumEdit;
    Bevel1: TBevel;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Service: TPBNumEdit;
    Label3: TLabel;
    Label5: TLabel;
    Bulan: TPBNumEdit;
    Tahun: TPBNumEdit;
    Label6: TLabel;
    Pilihan: TCheckBox;
    procedure KodeBrgEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ClearEdit;
    procedure KodegrpEnter(Sender: TObject);
    procedure Kodegrpxit(Sender: TObject);
    function CariPerkiraan(No:String):Boolean;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure KodeSubGrpEnter(Sender: TObject);
    procedure KodeStsEnter(Sender: TObject);
  private
    { Private declarations }
    procedure TampilIsiSubGroup;
    procedure TampilIsiMerk;
    procedure TampilIsiStatus;
    procedure TampilIsiJenis;
  public
    { Public declarations }
     IsSimpan:Boolean;
  end;

var
  frSubPajak: TfrSubPajak;
  mValid:boolean;


implementation
uses myModul,Myprocedure,MyGlobal, Frmbrows,FrmPajak, ADODB;
{$R *.DFM}

procedure TfrSubPajak.TampilIsiSubGroup;
begin

end;

procedure TfrSubPajak.TampilIsiMerk;
begin
end;

procedure TfrSubPajak.TampilIsiStatus;
begin

end;

procedure TfrSubPajak.TampilIsiJenis;
begin

end;

function TfrSubPajak.CariPerkiraan(No:String):Boolean;
begin
    with DM.QuCariGL do
    begin
         Close;
         SQL.Clear;
         SQL.Add('Select * from Neraca');
         SQL.Add('Where Perkiraan =:0 and tipe=:1');
         Prepared;
         Parameters[0].value:=No;
         Parameters[1].value:='D';
         Open;
    end;
    if DM.QuCari.RecordCount > 0 then
    begin
       CariPerkiraan:=true;
       Kode:=DM.QuCariGL.fieldbyname('Perkiraan').AsString;
    end
    else
    begin
       CariPerkiraan:=false;
       Kode:='';
    end;
end;

procedure TfrSubPajak.ClearEdit;
var i :integer;
begin
   for i:= 0 to frSubPajak.ControlCount-1 do
   begin
      if (frSubPajak.Controls[i] is TEdit) then
         (frSubPajak.Controls[i] as TEdit).Clear;
      if (frSubPajak.Controls[i] is TPBNumEdit) then
         (frSubPajak.Controls[i] as TPBNumEdit).Value:=1;
   end;

end;

procedure TfrSubPajak.KodeBrgEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TfrSubPajak.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=VK_ESCAPE then CLOSE;
end;

procedure TfrSubPajak.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfrSubPajak.KodegrpEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TfrSubPajak.Kodegrpxit(Sender: TObject);
begin
{ if mValid then
 begin
   if length(kodegrp.Text)=0 then
   begin
     KodeBrows:=2;
     Application.CreateForm(Tfrbrows, frbrows);
     FrBrows.IsiData:=Kodegrp.Text;
     frbrows.Showmodal;
     if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.IsEmpty=False) then
     begin
         Kodegrp.Text:=FrBrows.QuBrows.fieldbyname('KOdeGrp').AsString;
         NamaGroup.Caption:='[ '+FrBrows.QuBrows.fieldbyname('Nama').AsString+' ]';
     end
     else
        ActiveControl:=kodegrp;
   end
   else
   begin
     if MyFindField('dbgroup','kodegrp',kodegrp.Text)=true then
     begin
         Kodegrp.Text:=DM.QuCari.fieldbyname('KOdeGrp').AsString;
         NamaGroup.Caption:='[ '+DM.QuCari.fieldbyname('Nama').AsString+' ]';
     end
     else
     begin
        KodeBrows:=2;
        Application.CreateForm(Tfrbrows, frbrows);
        FrBrows.IsiData:=Kodegrp.Text;
        frbrows.Showmodal;
        if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.IsEmpty=False) then
        begin
           Kodegrp.Text:=FrBrows.QuBrows.fieldbyname('KOdeGrp').AsString;
           NamaGroup.Caption:='[ '+FrBrows.QuBrows.fieldbyname('Nama').AsString+' ]';
         end
        else
           ActiveControl:=kodegrp;
     end;
   end;
 end;}
end;

procedure TfrSubPajak.BitBtn3Click(Sender: TObject);
var i:Integer;
begin
   if IsSimpan=true then
   begin
     with FrPajak do
     begin
       SimpanData('I');
       ClearEdit;
     end;
//     ActiveControl:=kodebrg;
   end
   else
   begin
      with FrPajak do
      begin
        SimpanData('U');
      end;
      ModalResult:=mrOk;
   end;

end;

procedure TfrSubPajak.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrSubPajak.KodeSubGrpEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TfrSubPajak.KodeStsEnter(Sender: TObject);
begin
  mValid:=True;
end;

end.
