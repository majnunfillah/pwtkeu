unit FrmSubPPn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, PBNumEdit, ExtCtrls, Buttons, db,strUtils;

type
  TfrSubPPn = class(TForm)
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    Label11: TLabel;
    PPn: TPBNumEdit;
    Bevel1: TBevel;
    Label4: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Bulan: TPBNumEdit;
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
  frSubPPn: TfrSubPPn;
  mValid:boolean;


implementation
uses myModul,Myprocedure,MyGlobal, Frmbrows,FrmPPn, ADODB;
{$R *.DFM}

procedure TfrSubPPn.TampilIsiSubGroup;
begin

end;

procedure TfrSubPPn.TampilIsiMerk;
begin
end;

procedure TfrSubPPn.TampilIsiStatus;
begin

end;

procedure TfrSubPPn.TampilIsiJenis;
begin

end;

function TfrSubPPn.CariPerkiraan(No:String):Boolean;
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

procedure TfrSubPPn.ClearEdit;
var i :integer;
begin
   for i:= 0 to frSubPPn.ControlCount-1 do
   begin
      if (frSubPPn.Controls[i] is TEdit) then
         (frSubPPn.Controls[i] as TEdit).Clear;
      if (frSubPPn.Controls[i] is TPBNumEdit) then
         (frSubPPn.Controls[i] as TPBNumEdit).Value:=1;
   end;

end;

procedure TfrSubPPn.KodeBrgEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TfrSubPPn.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=VK_ESCAPE then CLOSE;
end;

procedure TfrSubPPn.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfrSubPPn.KodegrpEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TfrSubPPn.Kodegrpxit(Sender: TObject);
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

procedure TfrSubPPn.BitBtn3Click(Sender: TObject);
var i:Integer;
begin
   if IsSimpan=true then
   begin
     with FrPPn do
     begin
       SimpanData('I');
       ClearEdit;
     end;
//     ActiveControl:=kodebrg;
   end
   else
   begin
      with FrPPn do
      begin
        SimpanData('U');
      end;
      ModalResult:=mrOk;
   end;

end;

procedure TfrSubPPn.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrSubPPn.KodeSubGrpEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TfrSubPPn.KodeStsEnter(Sender: TObject);
begin
  mValid:=True;
end;

end.
