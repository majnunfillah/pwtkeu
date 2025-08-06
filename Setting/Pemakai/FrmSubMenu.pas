unit FrmSubMenu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, ExtCtrls, Buttons;

type
  TFrSubMenu = class(TForm)
    Label1: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    QuUpdate: TADOQuery;
    Bevel1: TBevel;
    CheckBox4: TCheckBox;
    BitBtn1: TBitBtn;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    L0,L1,Userid,Kodegdg : string;
    Mode : integer;
  end;

var
  FrSubMenu: TFrSubMenu;

implementation
uses MyProcedure,MyGlobal,MyModul, FrmMenu;
{$R *.dfm}

procedure TFrSubMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFrSubMenu.FormShow(Sender: TObject);
begin
   if Mode=1 then
   begin
      CheckBox1.Enabled:=true;
      CheckBox2.Enabled:=true;
      CheckBox3.Enabled:=true;
      CheckBox4.Enabled:=true;
      CheckBox5.Enabled:=true;
      CheckBox6.Enabled:=true;
   end else
   begin
      CheckBox1.Enabled:=true;
      CheckBox2.Enabled:=false;
      CheckBox3.Enabled:=false;
      CheckBox4.Enabled:=false;
      CheckBox5.Enabled:=false;
      CheckBox6.Enabled:=false;
   end;
end;

procedure TFrSubMenu.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#27 then close
else if key=#13 then BitBtn1.Click; 
end;

procedure TFrSubMenu.BitBtn1Click(Sender: TObject);
begin
 if Mode=1 then
 begin
   if L0<>'0' then
   begin
       with QuUpdate do
       begin
         Close;
         SQL.Clear;
         SQL.Add('update dbflmenu set HASACCESS=:0, Tambah=:1, Hapus=:2, Koreksi=:3, Cetak=:4, Excel=:5   ');
         sql.Add('where userid=:6 and l1=:7 ');
         Parameters[0].Value:=CheckBox1.Checked;
         if CheckBox2.Checked=true then
         Parameters[1].Value:=1
         else
         Parameters[1].Value:=0;

         if CheckBox3.Checked=true then
         Parameters[2].Value:=1
         else
         Parameters[2].Value:=0;

         if CheckBox4.Checked=true then
         Parameters[3].Value:=1
         else
         Parameters[3].Value:=0;

         if CheckBox5.Checked=true then
         Parameters[4].Value:=1
         else
         Parameters[4].Value:=0;

         if CheckBox6.Checked=true then
         Parameters[5].Value:=1
         else
         Parameters[5].Value:=0;

         Parameters[6].Value:=Userid;
         Parameters[7].Value:=L1;

         ExecSQL;
       end;
    end else
    begin
       with QuUpdate do
       begin
         Close;
         SQL.Clear;
        // SQL.Add('update dbflmenu set HASACCESS=:0 where userid=:1 and l1 like :2');
         SQL.Add('update dbflmenu set HASACCESS=:0, Tambah=:1, Hapus=:2, Koreksi=:3, Cetak=:4, Excel=:5 where userid=:6 and l1 like :7');
         //, Tambah=:1, Hapus=:2, Koreksi=:3, Cetak=:4
         Parameters[0].Value:=CheckBox1.Checked;
         if (CheckBox2.Checked) then
           Parameters[1].Value:=1
         else
           Parameters[1].Value:=0;

         if (CheckBox3.Checked) then
           Parameters[2].Value:=1
         else
           Parameters[2].Value:=0;

         if (CheckBox4.Checked) then
           Parameters[3].Value:=1
         else
           Parameters[3].Value:=0;

         if (CheckBox5.Checked) then
           Parameters[4].Value:=1
         else
           Parameters[4].Value:=0;

         if (CheckBox6.Checked) then
           Parameters[5].Value:=1
         else
           Parameters[5].Value:=0;

         Parameters[6].Value:=Userid;
         Parameters[7].Value:=L1+'%';
         ExecSQL;
       end;
    end;
    frMenu.L1:=L1;
    ModalResult:=mrok;
 end else
 begin
       with QuUpdate do
       begin
         Close;
         SQL.Clear;
         SQL.Add('update dbflpassdet set tampil=:0 where userid=:1 and kodegdg=:2');
         if CheckBox1.Checked=true then
         Parameters[0].Value:=1
         else
         Parameters[0].Value:=0;
         Parameters[1].Value:=Userid;
         Parameters[2].Value:=kodegdg;
         ExecSQL;
       end;
       frMenu.kodegdg:=Kodegdg;
       ModalResult:=mrok;
 end;
end;

end.
