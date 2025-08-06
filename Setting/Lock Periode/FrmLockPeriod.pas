unit FrmLockPeriod;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, PBNumEdit, Buttons, CheckLst, Db, ADODB,
  IBCustomDataSet, IBQuery, dxCntner, dxEditor, dxExEdtr, dxEdLib, jpeg,
  IBUpdateSQL;

type
  TFrLockPeriod = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    CheckListBox1: TCheckListBox;
    Image1: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Bevel2: TBevel;
    Image2: TImage;
    Tahun: TdxCurrencyEdit;
    QuSimpan: TADOQuery;
    Label5: TLabel;
    Bevel3: TBevel;
    CheckListBox2: TCheckListBox;
    Label4: TLabel;
    procedure Simpan;
    function CariPeriod(Thn:string):boolean;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ViewChecked(Thn:String);
    procedure TahunChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TahunKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel : Integer;
  end;

var
  FrLockPeriod: TFrLockPeriod;

implementation
uses MyModul,Myprocedure,myglobal;
{$R *.DFM}

function TFrLockPeriod.CariPeriod(Thn:string):boolean;
begin
   with DM.QuCari do
   begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from dbLockPeriode');
      SQL.Add('Where Tahun=:0');
      Prepared;
      Parameters[0].Value:=Thn;
      Open;
   end;
   if not DM.QuCari.isempty then
   result:=true
   else
   result:=false;
end;

procedure TFrLockPeriod.ViewChecked(Thn:String);
var
    Numeric,Code,i:integer;
begin
   for i:= 0 to 11 do
   begin
      CheckListBox1.Checked[i]:=false;
   end;
   with DM.QuCari do
   begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from dbLockPeriode');
      SQL.Add('Where Tahun=:0');
      prepared;
      Parameters[0].Value:=Thn;
      Open;
   end;
   if not DM.QuCari.isempty then
   begin
      DM.QuCari.First;
      while not DM.QuCari.Eof do
      begin
         val(DM.QuCari.fieldbyName('Bulan').AsString,numeric,Code);
         if code=0 then
         begin
            numeric:=numeric-1;
            CheckListBox1.Checked[Numeric]:=true;
         end;
         DM.QuCari.Next;
      end;
   end;

   for i:= 0 to 11 do
   begin
      CheckListBox2.Checked[i]:=false;
   end;
   with DM.QuCari do
   begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from dbLockPeriode');
      SQL.Add('Where NKTahun=:0');
      prepared;
      Parameters[0].Value:=Thn;
      Open;
   end;
   if not DM.QuCari.isempty then
   begin
      DM.QuCari.First;
      while not DM.QuCari.Eof do
      begin
         val(DM.QuCari.fieldbyName('NKBulan').AsString,numeric,Code);
         if code=0 then
         begin
            numeric:=numeric-1;
            CheckListBox2.Checked[Numeric]:=true;
         end;
         DM.QuCari.Next;
      end;
   end;
end;

procedure TFrLockPeriod.Simpan;
var Bulan : String;
    Ket : Array [1..12] of String;
    j : integer;
begin
//simpan data
    for j:=1 to 12 do
    begin
      if  j < 10 then
        Bulan:='0'+inttostr(j)
      else
        Bulan:=inttostr(j);

      DataBersyarat('select Bulan,Tahun from dblockperiode where bulan=:0 and Tahun=:1',
      [Bulan,FloattoStr(Tahun.Value)],dm.qucari);
      Ket[j]:='';
      with QuSimpan do
      begin
        Close;
        SQL.Clear;
        if (dm.QuCari.IsEmpty) and (CheckListBox1.Checked[j-1]) then
        begin
          SQL.Add('Insert into dbLockPeriode(bulan,tahun)');
          SQL.Add('values(:0,:1)');
          Prepared;
          Parameters[0].Value:=Bulan;
          Parameters[1].Value:=FloatToStr(Tahun.Value);
          ExecSQL;
          Ket[j]:='Mengunci Periode --> '+Bulan+'-'+FloatToStr(Tahun.Value);
              LoggingData(IDUser,'','LOCK','',
                      FrLockPeriod.Caption+' '+Ket[j]);

        end
        else if (not dm.QuCari.IsEmpty) and (not CheckListBox1.Checked[j-1]) then
        begin
          SQL.Add('delete from dblockperiode where Bulan=:0 and Tahun=:1');
          Prepared;
          Parameters[0].Value:=Bulan;
          Parameters[1].Value:=FloatToStr(Tahun.Value);
          ExecSQL;
          Ket[j]:='Membuka Periode --> '+Bulan+'-'+FloatToStr(Tahun.Value);
                        LoggingData(IDUser,'','LOCK','',
                      FrLockPeriod.Caption+' '+Ket[j]);
        end;
      end;


   DataBersyarat('select NKBulan,NKTahun from dblockperiode where NKbulan=:0 and NKTahun=:1 and NKBulan is not null ',
    [Bulan,FloattoStr(Tahun.Value)],dm.qucari);
    Ket[j]:='';
    with QuSimpan do
    begin
      Close;
      SQL.Clear;
      if (dm.QuCari.IsEmpty) and (CheckListBox2.Checked[j-1]) then
      begin
        SQL.Add('Insert into dbLockPeriode(NKbulan,NKtahun,Bulan,Tahun)');
        SQL.Add('values(:0,:1,:2,:3)');
        Prepared;
        Parameters[0].Value:=Bulan;
        Parameters[1].Value:=FloatToStr(Tahun.Value);
        Parameters[2].Value:=0;
        Parameters[3].Value:=0;
        ExecSQL;
        Ket[j]:='Mengunci Periode --> '+Bulan+'-'+FloatToStr(Tahun.Value);

              LoggingData(IDUser,'','LOCK','',
                      FrLockPeriod.Caption+' '+Ket[j]);

      end
      else if (not dm.QuCari.IsEmpty) and (not CheckListBox2.Checked[j-1]) then
      begin
        SQL.Add('delete from dblockperiode where NKBulan=:0 and NKTahun=:1');
        Prepared;
        Parameters[0].Value:=Bulan;
        Parameters[1].Value:=FloatToStr(Tahun.Value);
        ExecSQL;
        Ket[j]:='Membuka Periode --> '+Bulan+'-'+FloatToStr(Tahun.Value);
              LoggingData(IDUser,'','LOCK','',
                      FrLockPeriod.Caption+' '+Ket[j]);
      end;
    end;

  end;
    Bulan:='';
    For j:=1 to 12 do
    begin
      if Ket[J]<>'' then
         Bulan := Bulan+ket[j]+#13;
    end;
    //LoggingData(FrLockPeriod.Caption,'User SA '+Bulan,dm.qucari);
    LoggingData(IDUser,'','LOCK','',
                      FrLockPeriod.Caption+' '+Bulan);
end;

procedure TFrLockPeriod.BitBtn1Click(Sender: TObject);
begin
  if CariPeriod(FloattoStr(Tahun.value)) then
  begin
    Simpan;
  end
  else
    Simpan;
  Close;
end;

procedure TFrLockPeriod.FormShow(Sender: TObject);
begin
   tahun.Value:=StrToFloat(PeriodThn);
end;

procedure TFrLockPeriod.TahunChange(Sender: TObject);
begin
   ViewChecked(FloatToStr(Tahun.Value));
end;

procedure TFrLockPeriod.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action:=cafree;
end;

procedure TFrLockPeriod.TahunKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then Close;
end;

end.
