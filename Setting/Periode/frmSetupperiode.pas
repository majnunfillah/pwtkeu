unit frmSetupperiode;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, PBNumEdit, ExtCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, dxCntner, dxEditor, dxExEdtr, dxEdLib, jpeg;

type
  TfrSetUpPeriode = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Image1: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Shape1: TShape;
    Bevel2: TBevel;
    Image2: TImage;
    Tahun: TdxCurrencyEdit;
    QuSimpan: TADOQuery;
    Bulan: TComboBox;
    procedure BitBtn1Click(Sender: TObject);
    function CariPeriode(Nama:string):Boolean;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BulanEnter(Sender: TObject);
    procedure BulanExit(Sender: TObject);
    procedure TahunEnter(Sender: TObject);
    procedure TahunExit(Sender: TObject);
    function ViewPeriode(Nama:string):Boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    IsiBulan,IsiTahun:String;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel : Integer;
  end;

var
  frSetUpPeriode: TfrSetUpPeriode;
  mValid:Boolean;
implementation
uses myModul,Myprocedure,MyGlobal, FrmUtama;
{$R *.DFM}

function TfrSetUpPeriode.ViewPeriode(Nama:string):Boolean;
begin
   with dm.QuCari do
   begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from dbPeriode');
      SQL.Add('Where USERID=:0');
      Prepared;
      Parameters[0].Value:=Nama;
      Open;
   end;
   if not DM.QuCari.IsEmpty then
   begin
      Result:= true;
      PeriodBln:=DM.QuCari.fieldbyName('Bulan').AsString;
      PeriodThn:=DM.QuCari.fieldbyName('Tahun').AsString;
   end
   else
      Result:=false;
end;


function TfrSetUpPeriode.CariPeriode(Nama:string):Boolean;
begin
   with dm.QuCari do
   begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from dbPeriode');
      SQL.Add('Where USERID=:0');
      Prepared;
      Parameters[0].Value:=Nama;
      Open;
   end;
   if not DM.QuCari.IsEmpty then
   begin
      Result:= true;
   end
   else
      Result:=false;
end;

procedure TfrSetUpPeriode.BitBtn1Click(Sender: TObject);
var I:Integer;
begin
   if Bulan.ItemIndex < 10 then
   begin
      IsiBulan:='0'+inttoStr(bulan.ItemIndex);
      IsiTahun:=FloatToStr(Tahun.Value);
   end
   else
   begin
      IsiBulan:=inttoStr(bulan.ItemIndex);
      IsiTahun:=FloatToStr(Tahun.Value);
   end;
   if Bulan.ItemIndex<>0 then
   begin
      with QuSimpan do
      begin
        Close;
        SQL.Clear;
        if CariPeriode(IdUser)=true then
        begin
        //update
           SQL.Add('Update dbPeriode');
           SQL.Add('set Bulan=:0,Tahun=:1');
           SQL.Add('where USERID=:2');
        end
        else
        begin
        //insert
           SQL.Add('insert into dbPeriode(bulan,tahun,USERID)');
           SQL.Add('values (:0,:1,:2)');
        end;
        Prepared;
        Parameters[0].Value:=IsiBulan;
        Parameters[1].Value:=ISiTahun;
        Parameters[2].Value:=IdUser;
        ExecSQL;
      end;
      {
      LoggingData(frSetUpPeriode.Caption,
                  'User '+IDUser+' ganti periode dari '+PeriodBln+'-'+PeriodThn+#13+
                  'Ke '+IsiBulan+'-'+IsiTahun+#13+
                  'Dari Komputer '+GetMyHostName,QuSimpan);
      }
     FrUtama.StatusBar1.Panels[2].Text:='Periode '+IsiBulan+'/'+IsiTahun;
     periodthn:=IsiTahun;
     PeriodBln:=IsiBulan;
     if Frutama.MDIChildCount > 0 then
     begin
        For I := frUtama.MDIChildCount -1 to 0 do
        begin
             frutama.MDIChildren[i].Close ;
        end;
     end;
  Close;
  end
  else
  begin
    ShowMessage('Penulisan Bulan Tidak Sesuai !');
    ActiveControl:=Bulan;
   end;
end;

procedure TfrSetUpPeriode.FormShow(Sender: TObject);
begin
   if ViewPeriode(idUser)=true then
   begin
      Bulan.ItemIndex:=StrToInt(PeriodBln);
      Tahun.Value:=StrToFloat(PeriodThn);
   end;
end;

procedure TfrSetUpPeriode.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then sendmessage(handle,WM_NEXTDLGCTL,0,0)
else
if key=27 then Close;
end;

procedure TfrSetUpPeriode.BulanEnter(Sender: TObject);
begin
mValid:=true;
end;

procedure TfrSetUpPeriode.BulanExit(Sender: TObject);
begin
if mValid then
begin
   if Bulan.ItemIndex=0 then
   begin
      ShowMessage('Penulisan Bulan Tidak Sesuai !');
      ActiveControl:=Bulan;
   end;
end;
end;

procedure TfrSetUpPeriode.TahunEnter(Sender: TObject);
begin
mValid:=true;
end;

procedure TfrSetUpPeriode.TahunExit(Sender: TObject);
begin
if mValid then
begin
   if (Tahun.Value < Tahun.MinValue) or (Tahun.Value > Tahun.MaxValue)then
   begin
      ShowMessage('Penulisan Tahun minimal 1900 dan maksimal 9999 !');
      ActiveControl:=Tahun;
   end;
end;

end;

procedure TfrSetUpPeriode.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

end.
