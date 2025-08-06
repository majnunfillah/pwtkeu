unit FrmRata2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, PBNumEdit, Db, ADODB, ComCtrls, ExtCtrls, Gauges,Buttons,
  XiProgressBar, RxGIF, jpeg, Math;

type
  TFrRata2 = class(TForm)
    Bulan: TPBNumEdit;
    Tahun: TPBNumEdit;
    Shape1: TShape;
    Bevel1: TBevel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    XiProgressBar1: TXiProgressBar;
    Image2: TImage;
    BitBtn2: TBitBtn;
    Bevel2: TBevel;
    Label2: TLabel;
    MySP: TADOStoredProc;
    ComboBox1: TComboBox;
    Awal: TEdit;
    Label24: TLabel;
    Akhir: TEdit;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure AwalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AkhirKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    IsTambah,IsKoreksi,IsHapus, IsCetak, isExcel : Integer;
    Myharga,Myharga2 : Real;
    MyWip,MyHPP :real;
    Procedure ProsesBahan(xKodebrg:string;xBulan,xTahun:integer;var xHarga,xHargastg : Real);
    Procedure InHPPtoTRS(xKodebrg:string;xBulan,xTahun:integer;xHarga,xHargastg : Real);
    Procedure InHPPtoSTK(xKodebrg:string;xBulan,xTahun:integer);
    Procedure ProsesKemasan(xBulan,xTahun:Integer);
    Procedure ProsesAkhirBulan(xBulan,xTahun:integer);
    procedure TampilIsiBarang;
    procedure TampilIsiBarang2;
    Procedure ProsesBrgJadi(xKodebrg:string;xBulan,xTahun:integer;var xHarga : Real);
    Procedure ProsesBahan1(xKodebrg:string;xBulan,xTahun:integer;var xHarga : Real);
  end;

var
  FrRata2: TFrRata2;
implementation
uses FrmBrows,MyProcedure,MyGlobal,MyModul;
{$R *.DFM}

Procedure TFrRata2.ProsesBrgJadi(xKodebrg:string;xBulan,xTahun:integer;var xHarga : Real);
var xHrgRata,xHrgPBL,xHrgRPB,xHrgADI,xHrgUKI,xHrgAwal,
    xQntPBL,xQntRPB,xQntADI,xQntUKI,xQntAwal,xQntWIP,xHrgWIP,xQntJD,xHrgJD,xWIPGL,xHRGWIPGL,xJDGL,xHrgJDGL : Real;
    xTipe : String;
begin
  xHrgPBL  :=0;xHrgRPB:=0;xHrgADI:=0;xHrgUKI:=0;xHrgAwal:=0;
  xQntPBL :=0;xQntRPB:=0;xQntADI:=0;xQntUKI:=0;xQntAwal:=0;
  xQntWIP :=0;xHrgWIP:=0;xQntJD:=0;xHrgJD:=0;
  with DM.QuKOde do
  Begin
    close;
    sql.Clear;
    sql.Add('Declare @bulan int,@Tahun int,@Kodebrg Varchar(25)');
    Sql.Add('Select @Kodebrg='+QuotedStr(xKodebrg)+' ,@bulan='+IntToStr(xBulan)+' ,@tahun='+IntToStr(xTahun));
    SQL.Add('Select kodebrg,Bulan,Tahun,hppbrg');
    SQL.Add('From dbhppProduksi X ');
    Sql.Add('where kodebrg=:0 and bulan=:1 and tahun=:2');
    Prepared;
    Parameters[0].Value := xkodebrg;
    Parameters[1].Value := xBulan;
    Parameters[2].Value := xtahun;
    Open;
  end;
  if not dm.QuKOde.IsEmpty then
  begin
    if RoundTo(DM.QuKOde.FieldByname('hppbrg').AsFloat,-2)=0 then
      xHrgRata:=0
    else
      xHrgRata:=DM.QuKOde.FieldByname('hppbrg').AsFloat;
    xHarga := xHrgRata;
  end;
end;

Procedure TFrRata2.ProsesBahan1(xKodebrg:string;xBulan,xTahun:integer;var xHarga : Real);
var xHrgRata,xHrgPBL,xHrgRPB,xHrgADI,xHrgUKI,xHrgAwal,
    xQntPBL,xQntRPB,xQntADI,xQntUKI,xQntAwal,xQntWIP,xHrgWIP,xQntJD,xHrgJD,xWIPGL,xHRGWIPGL,xJDGL,xHrgJDGL : Real;
    xTipe : String;
begin
  xHrgPBL  :=0;xHrgRPB:=0;xHrgADI:=0;xHrgUKI:=0;xHrgAwal:=0;
  xQntPBL :=0;xQntRPB:=0;xQntADI:=0;xQntUKI:=0;xQntAwal:=0;
  xQntWIP :=0;xHrgWIP:=0;xQntJD:=0;xHrgJD:=0;
  with DM.QuKOde do
  Begin
    close;
    sql.Clear;
    sql.Add('Declare @bulan int,@Tahun int,@Kodebrg Varchar(25)');
    Sql.Add('Select @Kodebrg='+QuotedStr(xKodebrg)+' ,@bulan='+IntToStr(xBulan)+' ,@tahun='+IntToStr(xTahun));
    SQL.Add('select sum(Qnt) Qnt, sum(DPP) DPP from ');
    SQL.Add('( ');
    SQL.Add('select KodeBrg, ''AWL'' Tipe, sum(QntAwal) Qnt, sum(HrgAwal) DPP ');
    SQL.Add('from dbStockBrg ');
    SQL.Add('where KodeBrg=@KodeBrg and Bulan=@Bulan and Tahun=@Tahun ');
    SQL.Add('group by KodeBrg ');
    SQL.Add('union all ');
    sql.Add('Select Kodebrg, Tipe, Sum(QntSaldo) Qnt, Sum(HrgSaldo) DPP');
    sql.Add('from vwKartuStock');
    sql.Add('where Kodebrg=@kodebrg and Bulan=@bulan and Tahun=@tahun');
    SQL.Add('and Tipe in (''PBL'',''ADI'',''UKI'',''PRI'') ');
    sql.Add('group by Kodebrg,Tipe');
    SQL.Add(') X ');
    Open;
  end;
  if not dm.QuKOde.IsEmpty then
  begin
    {while not dm.QuKOde.Eof do
    begin
       xTipe := DM.QuKOde.FieldByname('Tipe').AsString;
       if xTipe ='AWL' then
       begin
         xQntAwal := DM.QuKOde.FieldByname('Qnt').AsFloat;
         xHrgAwal := DM.QuKOde.FieldByname('DPP').AsFloat;
       end
       else if xTipe = 'PBL' then
       begin
         xQntPBL := DM.QuKOde.FieldByname('Qnt').AsFloat;
         xHrgPBL := DM.QuKOde.FieldByname('DPP').AsFloat;
       end
       else if xTipe = 'RPB' then
       begin
         xQntRPB := DM.QuKOde.FieldByname('Qnt').AsFloat;
         xHrgRPB := DM.QuKOde.FieldByname('DPP').AsFloat;
       end
       else if xTipe = 'ADI' then
       begin
         xQntADI := DM.QuKOde.FieldByname('Qnt').AsFloat;
         xHrgADI := DM.QuKOde.FieldByname('DPP').AsFloat;
       end
       else if xTipe = 'UKI' then
       begin
         xQntUKI := DM.QuKOde.FieldByname('Qnt').AsFloat;
         xHrgUKI := DM.QuKOde.FieldByname('DPP').AsFloat;
       end;
       dm.QuKOde.Next;
    end;
    }
    if RoundTo(DM.QuKOde.FieldByname('Qnt').AsFloat,-2)=0 then
      xHrgRata:=0
    else
      xHrgRata:=DM.QuKOde.FieldByname('DPP').AsFloat/DM.QuKOde.FieldByname('Qnt').AsFloat;
    xHarga := xHrgRata;
  end;
end;

Procedure TFrRata2.ProsesBahan(xKodebrg:string;xBulan,xTahun:integer;var xHarga,xHargaSTG : Real);
var xHrgRata,xHrgRata2,xHrgPBL,xHrgRPB,xHrgADI,xHrgUKI,xHrgAwal,
    xQntPBL,xQntRPB,xQntADI,xQntUKI,xQntAwal,xQntWIP,xHrgWIP,xQntJD,xHrgJD,xWIPGL,xHRGWIPGL,xJDGL,xHrgJDGL : Real;
    xTipe : String;
begin
  xHrgPBL  :=0;xHrgRPB:=0;xHrgADI:=0;xHrgUKI:=0;xHrgAwal:=0;
  xQntPBL :=0;xQntRPB:=0;xQntADI:=0;xQntUKI:=0;xQntAwal:=0;
  xQntWIP :=0;xHrgWIP:=0;xQntJD:=0;xHrgJD:=0;xHrgRata:=0;xHrgRata2:=0;
  with DM.QuKOde do
  Begin
    close;
    sql.Clear;
    sql.Add('Declare @bulan int,@Tahun int,@Kodebrg Varchar(25)');
    Sql.Add('Select @Kodebrg='+QuotedStr(xKodebrg)+' ,@bulan='+IntToStr(xBulan)+' ,@tahun='+IntToStr(xTahun));
    SQL.Add('select sum(Qnt) Qnt, sum(DPP) DPP from ');
    SQL.Add('( ');
    SQL.Add('select KodeBrg, ''AWL'' Tipe, sum(QntAwal) Qnt, sum(HrgAwal) DPP ');
    SQL.Add('from dbStockBrg ');
    SQL.Add('where KodeBrg=@KodeBrg and Bulan=@Bulan and Tahun=@Tahun ');
    SQL.Add('group by KodeBrg ');
    SQL.Add('union all ');
    sql.Add('Select Kodebrg, Tipe, Sum(QntSaldo) Qnt, Sum(HrgSaldo) DPP');
    sql.Add('from vwKartuStock');
    sql.Add('where Kodebrg=@kodebrg and Bulan=@bulan and Tahun=@tahun');
    SQL.Add('and Tipe in (''PBL'',''ADI'',''UKI'') ');
    sql.Add('group by Kodebrg,Tipe');
    SQL.Add('union all ');
    sql.Add('Select Kodebrg, ''PRI'', 0 Qnt, HPPBrg DPP');
    sql.Add('from dbHPPProduksi ');
    sql.Add('where Kodebrg=@kodebrg and Bulan=@bulan and Tahun=@tahun');
   { SQL.Add('union all ');
    sql.Add('Select Kodebrg, ''PRI1/2'', 0 Qnt, [HPPBrg1/2] DPP');
    sql.Add('from dbHPPProduksi ');
    sql.Add('where Kodebrg=@kodebrg and Bulan=@bulan and Tahun=@tahun'); }
    SQL.Add(') X ');
    Open;
  end;
  if not dm.QuKOde.IsEmpty then
  begin
    {while not dm.QuKOde.Eof do
    begin
       xTipe := DM.QuKOde.FieldByname('Tipe').AsString;
       if xTipe ='AWL' then
       begin
         xQntAwal := DM.QuKOde.FieldByname('Qnt').AsFloat;
         xHrgAwal := DM.QuKOde.FieldByname('DPP').AsFloat;
       end
       else if xTipe = 'PBL' then
       begin
         xQntPBL := DM.QuKOde.FieldByname('Qnt').AsFloat;
         xHrgPBL := DM.QuKOde.FieldByname('DPP').AsFloat;
       end
       else if xTipe = 'RPB' then
       begin
         xQntRPB := DM.QuKOde.FieldByname('Qnt').AsFloat;
         xHrgRPB := DM.QuKOde.FieldByname('DPP').AsFloat;
       end
       else if xTipe = 'ADI' then
       begin
         xQntADI := DM.QuKOde.FieldByname('Qnt').AsFloat;
         xHrgADI := DM.QuKOde.FieldByname('DPP').AsFloat;
       end
       else if xTipe = 'UKI' then
       begin
         xQntUKI := DM.QuKOde.FieldByname('Qnt').AsFloat;
         xHrgUKI := DM.QuKOde.FieldByname('DPP').AsFloat;
       end;
       dm.QuKOde.Next;
    end;
    }
    if RoundTo(DM.QuKOde.FieldByname('Qnt').AsFloat,-2)=0 then
      xHrgRata:=DM.QuKOde.FieldByname('DPP').AsFloat
    else
      xHrgRata:=DM.QuKOde.FieldByname('DPP').AsFloat/DM.QuKOde.FieldByname('Qnt').AsFloat;
    xHarga := xHrgRata;
  end;
  with DM.QuKOde do
  Begin
    close;
    sql.Clear;
    sql.Add('Declare @bulan int,@Tahun int,@Kodebrg Varchar(25)');
    Sql.Add('Select @Kodebrg='+QuotedStr(xKodebrg)+' ,@bulan='+IntToStr(xBulan)+' ,@tahun='+IntToStr(xTahun));
    SQL.Add('select sum(Qnt) Qnt, sum(DPP) DPP from ');
    SQL.Add('( ');
    SQL.Add('select KodeBrg, ''AWL'' Tipe, sum([QntAwal1/2]) Qnt, sum([HRGAwal/2]) DPP ');
    SQL.Add('from dbStockBrg ');
    SQL.Add('where KodeBrg=@KodeBrg and Bulan=@Bulan and Tahun=@Tahun ');
    SQL.Add('group by KodeBrg ');
    SQL.Add('union all ');
    sql.Add('Select Kodebrg, ''PRI'', 0 Qnt, [HPPBrg1/2] DPP');
    sql.Add('from dbHPPProduksi ');
    sql.Add('where Kodebrg=@kodebrg and Bulan=@bulan and Tahun=@tahun');
    SQL.Add(') X ');
    Open;
  end;
  if not dm.QuKOde.IsEmpty then
  begin
   if RoundTo(DM.QuKOde.FieldByname('Qnt').AsFloat,-2)=0 then
      xHrgRata2:=DM.QuKOde.FieldByname('DPP').AsFloat
   else
      xHrgRata2:=DM.QuKOde.FieldByname('DPP').AsFloat/DM.QuKOde.FieldByname('Qnt').AsFloat;
    xHargastg := xHrgRata2;
  end;
end;

Procedure TFrRata2.InHPPtoTRS(xKodebrg:string;xBulan,xTahun:integer; xHarga,xHargastg : Real);
begin
  with dm.Qunomor do
  begin
    close;
    sql.Clear;
    sql.Add('Update dbStockbrg set HrgRata=:0');
    sql.Add('where Kodebrg=:1 and Bulan=:2 and Tahun=:3 ');
    Prepared;
    Parameters[0].Value := xHarga;
    Parameters[1].Value := xKodebrg;
    Parameters[2].Value := xBulan;
    Parameters[3].Value := xTahun;
    ExecSQL;
    close;
    sql.Clear;
    sql.Add('Update dbHasilPrd set [HPP1/2]=:0');
    sql.Add('where Kodebrg=:1 and month(tanggal)=:2 and Year(tanggal)=:3 ');
    Prepared;
    Parameters[0].Value := xHargastg;
    Parameters[1].Value := xKodebrg;
    Parameters[2].Value := xBulan;
    Parameters[3].Value := xTahun;
    ExecSQL;
    close;
    sql.Clear;
    sql.Add('Update dbStockbrg set [HrgRata1/2]=:0');
    sql.Add('where Kodebrg=:1 and Bulan=:2 and Tahun=:3 ');
    Prepared;
    Parameters[0].Value := xHargastg;
    Parameters[1].Value := xKodebrg;
    Parameters[2].Value := xBulan;
    Parameters[3].Value := xTahun;
    ExecSQL;
    close;
    sql.Clear;
    sql.Add('Update dbProduksiBJdet set [HPP1/2]=:0');
    sql.Add('from dbProduksiBJdet a left Outer Join dbProduksiBJ b on a.Nobukti=b.NoBukti where a.Kodebrg=:1 and month(b.tanggal)=:2 and Year(b.tanggal)=:3 ');
    Prepared;
    Parameters[0].Value := xHargastg;
    Parameters[1].Value := xKodebrg;
    Parameters[2].Value := xBulan;
    Parameters[3].Value := xTahun;
    ExecSQL;
    close;
    sql.Clear;
    SQL.Add('Update dbJualdet set Hpp=:0');
    SQL.Add('from dbJualDet a ');
    SQL.Add('left outer join dbJual b on b.NoBukti=a.NoBukti ');
    SQL.Add('where a.kodebrg=:1 ');
    SQL.Add('and month(b.tanggal)=:2 and year(b.tanggal)=:3');
    Prepared;
    Parameters[0].Value := xHarga;
    Parameters[1].Value := xkodebrg;
    Parameters[2].Value := xBulan;
    Parameters[3].Value := xTahun;
    ExecSQL;
    close;

    close;
    sql.Clear;
    SQL.Add('Update dbSJLNdet set Hpp=:0');
    SQL.Add('from dbSJLNDet a ');
    SQL.Add('left outer join dbSJLN b on b.NoBukti=a.NoBukti ');
    SQL.Add('where a.kodebrg=:1 ');
    SQL.Add('and month(b.tanggal)=:2 and year(b.tanggal)=:3');
    Prepared;
    Parameters[0].Value := xHarga;
    Parameters[1].Value := xkodebrg;
    Parameters[2].Value := xBulan;
    Parameters[3].Value := xTahun;
    ExecSQL;
    close;

    close;
    sql.Clear;
    SQL.Add('Update dbBeliCelupdet set Hpp=:0');
    SQL.Add('from dbBeliCelupdet a ');
    SQL.Add('left outer join dbBeliCelup b on b.NoBukti=a.NoBukti ');
    SQL.Add('where a.kodebrg=:1 ');
    SQL.Add('and month(b.tanggal)=:2 and year(b.tanggal)=:3');
    Prepared;
    Parameters[0].Value := xHarga;
    Parameters[1].Value := xkodebrg;
    Parameters[2].Value := xBulan;
    Parameters[3].Value := xTahun;
    ExecSQL;
    close;

    close;
    sql.Clear;
    SQL.Add('Update dbPermintaandet set Hpp=:0');
    SQL.Add('from dbPermintaandet a ');
    SQL.Add('left outer join dbPermintaan b on b.NoBukti=a.NoBukti ');
    SQL.Add('where a.kodebrg=:1 ');
    SQL.Add('and month(b.tanggal)=:2 and year(b.tanggal)=:3');
    Prepared;
    Parameters[0].Value := xHarga;
    Parameters[1].Value := xkodebrg;
    Parameters[2].Value := xBulan;
    Parameters[3].Value := xTahun;
    ExecSQL;
    close;

    close;
    sql.Clear;
    SQL.Add('Update dbRPermintaandet set Hpp=Isnull((Select max(Isnull(HPP,0)) from dbPermintaandet where NoBukti=b.NOBPPB and KodeBrg=a.KodeBrg),0) ');
    SQL.Add('from dbRPermintaandet a ');
    SQL.Add('left outer join dbRPermintaan b on b.NoBukti=a.NoBukti ');
    SQL.Add('where a.kodebrg=:0 ');
    SQL.Add('and month(b.tanggal)=:1 and year(b.tanggal)=:2');
    Prepared;
    Parameters[0].Value := xkodebrg;
    Parameters[1].Value := xBulan;
    Parameters[2].Value := xTahun;
    ExecSQL;
    close;

    close;
    sql.Clear;
    SQL.Add('Update dbProduksiBJdet set Hpp=:0');//Isnull((Select Isnull(HPPBrg,0) from dbHPPProduksi where Kodebrg=a.KodeBrg and Bulan='+PeriodBln+' and Tahun='+PeriodThn+'),0) ');
    SQL.Add('from dbProduksiBJdet a ');
    SQL.Add('left outer join dbProduksiBJ b on b.NoBukti=a.NoBukti ');
    SQL.Add('where a.kodebrg=:1 ');
    SQL.Add('and month(b.tanggal)=:2 and year(b.tanggal)=:3');
    Prepared;
    Parameters[0].Value := xHarga;
    Parameters[1].Value := xkodebrg;
    Parameters[2].Value := xBulan;
    Parameters[3].Value := xTahun;
    ExecSQL;
    close;

    close;
    sql.Clear;
    SQL.Add('Update dbRJualdet set Hpp=:0');
    SQL.Add('from dbRJualDet a ');
    SQL.Add('left outer join dbRJual b on b.NoBukti=a.NoBukti ');
    SQL.Add('where a.kodebrg=:1 ');
    SQL.Add('and month(b.tanggal)=:2 and year(b.tanggal)=:3');
    Prepared;
    Parameters[0].Value := xHarga;
    Parameters[1].Value := xkodebrg;
    Parameters[2].Value := xBulan;
    Parameters[3].Value := xTahun;
    ExecSQL;

    close;
    sql.Clear;
    SQL.Add('Update dbKoreksiDet set Hpp=:0');
    SQL.Add('from dbKoreksiDet a ');
    SQL.Add('left outer join dbKoreksi b on b.NoBukti=a.NoBukti ');
    SQL.Add('where a.kodebrg=:1 ');
    SQL.Add('and month(b.tanggal)=:2 and year(b.tanggal)=:3');
    Prepared;
    Parameters[0].Value := xHarga;
    Parameters[1].Value := xkodebrg;
    Parameters[2].Value := xBulan;
    Parameters[3].Value := xTahun;
    ExecSQL;

    close;
    sql.Clear;
    SQL.Add('Update dbTransferDet set hpp=:0 ');
    SQL.Add('from dbTransferDet a ');
    SQL.Add('left outer join dbTransfer b on b.NoBukti=a.NoBukti ');
    SQL.Add('where a.kodebrg=:1 ');
    SQL.Add('and month(b.tanggal)=:2 and year(b.tanggal)=:3');
    Prepared;
    Parameters[0].Value := xHarga;
    Parameters[1].Value := xkodebrg;
    Parameters[2].Value := xBulan;
    Parameters[3].Value := xTahun;
    ExecSQL;

    close;
    sql.Clear;
    SQL.Add('Update dbUbahKemasanDet set Hpp=:0');
    SQL.Add('from dbUbahKemasanDet a ');
    SQL.Add('left outer join dbUbahKemasan b on b.NoBukti=a.NoBukti ');
    SQL.Add('where a.kodebrg=:1 ');
    SQL.Add('and month(b.tanggal)=:2 and year(b.tanggal)=:3');
    Prepared;
    Parameters[0].Value := xHarga;
    Parameters[1].Value := xkodebrg;
    Parameters[2].Value := xBulan;
    Parameters[3].Value := xTahun;
    ExecSQL;

    close;
    sql.Clear;
    SQL.Add('Update dbBeliDet set Hpp=:0');
    SQL.Add('from dbBeliDet a ');
    SQL.Add('left outer join dbBeli b on b.NoBukti=a.NoBukti ');
    SQL.Add('where a.kodebrg=:1 ');
    SQL.Add('and month(b.tanggal)=:2 and year(b.tanggal)=:3');
    Prepared;
    Parameters[0].Value := xHarga;
    Parameters[1].Value := xkodebrg;
    Parameters[2].Value := xBulan;
    Parameters[3].Value := xTahun;
    ExecSQL;

    close;
    sql.Clear;
    SQL.Add('Update dbRBeliDet set Hpp=:0');
    SQL.Add('from dbRBeliDet a ');
    SQL.Add('left outer join dbRBeli b on b.NoBukti=a.NoBukti ');
    SQL.Add('where a.kodebrg=:1 ');
    SQL.Add('and month(b.tanggal)=:2 and year(b.tanggal)=:3');
    Prepared;
    Parameters[0].Value := xHarga;
    Parameters[1].Value := xkodebrg;
    Parameters[2].Value := xBulan;
    Parameters[3].Value := xTahun;
    ExecSQL;
  end;
end;

Procedure TFrRata2.InHPPtoSTK(xKodebrg:string;xBulan,xTahun:integer);
var xTipe : String; Mytotal : real;
begin
  with DM.QuKOde do
  begin
    close;
    sql.Clear;
    sql.Add('Select Kodebrg, kodegdg, Tipe, abs(Sum(HrgSaldo)) DPP from vwKartuStock');
    sql.Add('Where Kodebrg=:0 and Bulan=:1 and Tahun=:2 ');
    sql.Add('Group by Kodebrg,kodegdg,Tipe');
    Prepared;
    Parameters[0].Value := xKodebrg;
    Parameters[1].Value := xBulan;
    Parameters[2].Value := xTahun;
    open;
  end;
  if not DM.QuKOde.IsEmpty then
  begin
    DM.QuKOde.First;
    while not DM.QuKOde.Eof do
    begin
      xTipe := DM.QuKOde.FieldByname('Tipe').AsString;
      if (xTipe<>'AWL') then
      begin
        with Dm.QuNomor do
        begin
          close;
          sql.Clear;
          if xTipe='PBL' then
          begin
            sql.Add('update dbstockbrg set hrgPBL=:0');
            sql.Add('Where Kodebrg=:1 and Kodegdg=:2 and Bulan=:3 and Tahun=:4');
          end
          else
          if xTipe='RPB' then
          begin
            sql.Add('update dbstockbrg set hrgRPB=:0');
            sql.Add('Where Kodebrg=:1 and Kodegdg=:2 and Bulan=:3 and Tahun=:4');
          end
          else
          if xTipe='PNJ' then
          begin
            sql.Add('update dbstockbrg set hrgPNJ=:0');
            sql.Add('Where Kodebrg=:1 and Kodegdg=:2 and Bulan=:3 and Tahun=:4');
          end
          else
          if xTipe='RPJ' then
          begin
            sql.Add('update dbstockbrg set hrgRPJ=:0');
            sql.Add('Where Kodebrg=:1 and Kodegdg=:2 and Bulan=:3 and Tahun=:4');
          end else
          if xTipe='PRJ' then
          begin
            sql.Add('update dbstockbrg set hrgPRJ=:0');
            sql.Add('Where Kodebrg=:1 and Kodegdg=:2 and Bulan=:3 and Tahun=:4');
          end else
          if xTipe='ADI' then
          begin
            sql.Add('update dbstockbrg set hrgADI=:0');
            sql.Add('Where Kodebrg=:1 and Kodegdg=:2 and Bulan=:3 and Tahun=:4');
          end else
          if xTipe='ADO' then
          begin
            sql.Add('update dbstockbrg set hrgADO=:0');
            sql.Add('Where Kodebrg=:1 and Kodegdg=:2 and Bulan=:3 and Tahun=:4');
          end else
          if xTipe='TRI' then
          begin
            sql.Add('update dbstockbrg set hrgTRI=:0');
            sql.Add('Where Kodebrg=:1 and Kodegdg=:2 and Bulan=:3 and Tahun=:4');
          end else
          if xTipe='TRO' then
          begin
            sql.Add('update dbstockbrg set hrgTRO=:0');
            sql.Add('Where Kodebrg=:1 and Kodegdg=:2 and Bulan=:3 and Tahun=:4');
          end else
          if xTipe='UKI' then
          begin
            sql.Add('update dbstockbrg set hrgUKI=:0');
            sql.Add('Where Kodebrg=:1 and Kodegdg=:2 and Bulan=:3 and Tahun=:4');
          end else
          if xTipe='UKO' then
          begin
            sql.Add('update dbstockbrg set hrgUKO=:0');
            sql.Add('Where Kodebrg=:1 and Kodegdg=:2 and Bulan=:3 and Tahun=:4');
          end{ else
          if (xTipe='PRI') then
          Begin
            sql.Add('update dbstockbrg set hrgPRI=:0');
            sql.Add('Where Kodebrg=:1 and Kodegdg=:2 and Bulan=:3 and Tahun=' +
              ':4');
          end else
          if (xTipe='PRO') then
          Begin
            sql.Add('update dbstockbrg set hrgPRO=:0');
            sql.Add('Where Kodebrg=:1 and Kodegdg=:2 and Bulan=:3 and Tahun=' +
              ':4');
          end} ;
          if (xTipe='PRI')or (xTipe='PRO') then
          else
          Begin
            Prepared;
            Parameters[0].Value := dm.qukode.FieldByname('DPP').AsFloat;
            Parameters[1].Value := xkodebrg;
            Parameters[2].Value := dm.qukode.FieldByname('Kodegdg').AsString;
            Parameters[3].Value := xBulan;
            Parameters[4].Value := xtahun;
            ExecSQL;
           end;
          end;
      end;
      dm.QuKOde.Next;
    end;
  end;
end;

Procedure TFrRata2.ProsesKemasan(xBulan,xTahun:Integer);
begin
    with MySP do
    begin
      close;
      ProcedureName:='sp_ProsesUbahKemasan;1';
      Parameters.Refresh;
      Parameters[1].Value := xBulan;
      Parameters[2].Value := xTahun;
      ExecProc;
    end;
    with Dm.QuCari do
    begin
      close;
      sql.Clear;
      sql.Add('select Distinct  b.Kodebrg,c.Namabrg ');
      sql.Add('from dbubahKemasan a');
      sql.Add('left outer join dbubahkemasandet b on (a.nobukti=b.nobukti)');
      sql.Add('left outer join dbbarang c on c.kodebrg=b.kodebrg');
      sql.Add('where month(a.tanggal)=:0 and year(a.tanggal)=:1 and b.qntdb<>0 and c.Jenis in (0,1) ');

      sql.Add('order by b.kodebrg');
      Prepared;
      Parameters[0].Value := xBulan;
      Parameters[1].Value := xTahun;
      open;
    end;
    if not DM.QuCari.IsEmpty then
    begin
      XiProgressBar1.Max := Dm.QuCari.RecordCount;
      XiProgressBar1.Position := 0;
      while not Dm.QuCari.Eof do
      begin
        Delay(3);
        Label2.Caption := 'Proses Bahan Dalam ubah Kemasan'+#13+
                          'Kode Barang : '+ DM.QuCari.Fieldbyname('kodebrg').AsString +#13+
                          'Nama Barang : '+DM.QuCari.Fieldbyname('Namabrg').AsString;
        ProsesBahan(Dm.QuCari.Fieldbyname('Kodebrg').AsString,Bulan.AsInteger,Tahun.AsInteger,Myharga,Myharga2);
        InHPPtoTRS(DM.QuCari.Fieldbyname('kodebrg').AsString,Bulan.AsInteger,Tahun.AsInteger,Myharga,Myharga2);
        InHPPtoSTK(DM.QuCari.Fieldbyname('kodebrg').AsString,Bulan.AsInteger,Tahun.AsInteger);
        XiProgressBar1.Position := XiProgressBar1.Position+1;
        DM.QuCari.Next;
      end;
    end;
end;

Procedure TFrRata2.ProsesAkhirBulan(xBulan,xTahun:integer);
begin
  if Bulan.AsInteger = 12 then
  begin
    xBulan := 1;
    xTahun := xTahun+1;
  end
  else
  begin
    xBulan := xBulan+1;
    xTahun := xTahun;
  end;
    //Delay(3);
    Label2.Caption := 'Inisialisasi';
    with Dm.QuCari do
    begin
      close;
      sql.Clear;
      sql.Add('Select b.Kodebrg, c.Namabrg, b.kodegdg,0 QntAwal,0 [QntAwal1/2]/*, b.SaldoQnt QntAwal, b.[SaldoQnt1/2] [QntAwal1/2]*/, ');
      //sql.Add('b.SaldoRp HrgAwal');
      sql.Add('(  b.HRGAWAL+b.HRGPBL+(b.QNTRPJ*b.HrgRata)+b.HRGADI+(b.QNTUKI*b.HrgRata)+(b.QNTTRI*b.HrgRata) )-');
      sql.Add('(  (b.QNTRPB*b.HrgRata)+(b.QNTPNJ*b.HrgRata)+(b.QNTADO*b.HrgRata)+(b.QNTUKO*b.HrgRata)+(b.QNTTRO*b.HrgRata) ) HrgAwal,b.[HrgAwal/2]');
      sql.Add('from dbstockbrg b');
      sql.Add('left outer join dbbarang c on c.kodebrg=b.kodebrg');
      sql.add('Where b.bulan=:0 and b.Tahun=:1');

      if ComboBox1.ItemIndex=1 then
      begin
        sql.Add('and b.kodebrg >=:2 and b.kodebrg <=:3 ');
        sql.Add('order by b.KodeBrg');
        Parameters[0].Value := Bulan.AsInteger;
        Parameters[1].Value := Tahun.AsInteger;
        Parameters[2].Value:=Awal.Text;
        Parameters[3].Value:=Akhir.Text;

      end else
      begin
        sql.Add('order by b.KodeBrg');
        Parameters[0].Value := Bulan.AsInteger;
        Parameters[1].Value := Tahun.AsInteger;
      end;
      Prepared;
      Open;
    end;
    XiProgressBar1.Position := 0;
    XiProgressBar1.Max := DM.QuCari.RecordCount+1;
    while not Dm.QuCari.Eof do
    begin
      //Delay(3);
      XiProgressBar1.Position := XiProgressBar1.Position+1;
      Label2.Caption := 'Pindah Saldo Harga : '+ DM.QuCari.Fieldbyname('kodebrg').AsString +#13+
                        'Nama Barang : '+DM.QuCari.Fieldbyname('Namabrg').AsString;
      Application.ProcessMessages;
      With dm.QuKOde do
      begin
        close;
        sql.Clear;
        Sql.Add('Declare @Kodebrg varchar(30),@Kodegdg varchar(15),@kodeLokasi Varchar(15),');
        sql.Add('        @QntAwal numeric(18,2),@QntAwalStg numeric(18,2),@HrgAwalStg numeric(18,2),@HrgAwal numeric(18,2),');
        sql.Add('        @QntAwalSemu numeric(18,2),@HrgAwalSemu numeric(18,2),@Bulan int,@Tahun int');
        sql.Add('Select @kodebrg=:0,@Kodegdg=:1, @QntAwal=:2,@hrgAwal=:3,@bulan=:4,@Tahun=:5,@QntAwalStg=:6,@HrgAwalStg=:7');
        if DataBersyarat('Select Kodebrg from dbstockbrg Where Kodebrg=:0 and Kodegdg=:1 and Bulan=:2 and Tahun=:3',
           [DM.QuCari.Fieldbyname('kodebrg').AsString,DM.QuCari.Fieldbyname('kodegdg').AsString,
            xBulan,xTahun],Dm.QuNomor) then
        begin
          sql.Add('Update dbstockbrg set /*QntAwal=@Qntawal,[QntAwal1/2]=@QntawalStg,*/HrgAwal=@HrgAwal,[HrgAwal/2]=@HrgAwalStg');
          Sql.Add('Where Kodebrg=@Kodebrg and Kodegdg=@Kodegdg and Bulan=@Bulan and Tahun=@tahun');
        end
        else
        begin
          Sql.Add('Insert into dbStockbrg(Kodebrg,Kodegdg,Bulan,Tahun,/*QntAwal,*/HrgAwal,/*[QntAwal1/2],*/[HrgAwal/2])');
          sql.Add('Values(@Kodebrg,@Kodegdg,@Bulan,@Tahun/*,@QntAwal*/,@HrgAwal/*,@QntAwalStg*/,@HrgAwalStg)');
        end;
        Prepared;
        Parameters[0].Value := DM.QuCari.Fieldbyname('kodebrg').AsString;
        Parameters[1].Value := DM.QuCari.Fieldbyname('kodegdg').AsString;
        Parameters[2].Value := DM.QuCari.Fieldbyname('Qntawal').AsFloat;
        Parameters[3].Value := DM.QuCari.Fieldbyname('Hrgawal').AsFloat;
        Parameters[4].Value := xBulan;
        Parameters[5].Value := xTahun;
        Parameters[6].Value := DM.QuCari.Fieldbyname('QntAwal1/2').AsFloat;
        Parameters[7].Value := DM.QuCari.Fieldbyname('HrgAwal/2').AsFloat;
        ExecSql;
      end;
      dm.QuCari.Next;
    end;
    //Delay(3);
    XiProgressBar1.Position := 0;
end;

procedure TFrRata2.FormShow(Sender: TObject);
begin
   Bulan.Value:=Strtoint(PeriodBln);
   Tahun.Value:=Strtoint(PeriodThn);
end;

procedure TFrRata2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then sendmessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then close;
end;

procedure TFrRata2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=cafree;
end;

procedure TFrRata2.BitBtn1Click(Sender: TObject);
begin
  Myharga := 0; Myharga2 := 0;
  MyWip:=0;
  MyHPP:=0;
  if IsLockPeriode(Bulan.AsInteger,Tahun.AsInteger) then
  begin
    Label2.Caption := 'Inisialisasi';
    with Dm.QuCari do
    begin
      close;
      sql.Clear;
      sql.Add('Update dbstockbrg set HrgPBL=0,HrgRPB=0,HrgPNJ=0,HrgRPJ=0, HrgPRJ=0,');
      sql.Add('HrgADI=0,HrgADO=0,HrgUKI=0,HrgUKO=0,HrgTRI=0,HrgTRO=0, HRGPB=0');
      if ComboBox1.ItemIndex=1 then
      begin
        sql.Add('where Bulan=:0 and Tahun=:1 and (kodebrg between :2 and :3) ');
        Parameters[0].Value:=Bulan.AsInteger;
        Parameters[1].Value:=Tahun.AsInteger;
        Parameters[2].Value:=Awal.Text;
        Parameters[3].Value:=Akhir.Text;
      end else
      begin
        sql.Add('where Bulan=:0 and Tahun=:1 ');
        Parameters[0].Value:=Bulan.AsInteger;
        Parameters[1].Value:=Tahun.AsInteger;
      end;
      Prepared;
      ExecSQL;

      close;
      sql.clear;
      sql.add('alter Table dbjualdet Disable Trigger TRG_UPD_DBJUALDET');
      ExecSQL;
      close;
      sql.clear;
      sql.add('alter Table dbSJLNDet Disable Trigger TRG_UPD_DBSJLNDET');
      ExecSQL;
      close;
      sql.clear;
      sql.add('alter Table dbrjualdet DISABLE Trigger TRI_UPD_DBRJUALDET');
      ExecSQL;
      close;
      sql.clear;
      sql.add('alter Table dbKoreksiDet Disable Trigger TRI_UPD_DBKoreksidet');
      ExecSQL;
      close;
      sql.clear;
      sql.add('alter Table dbTransferDet Disable Trigger TRI_UPD_DBTransferdet');
      ExecSQL;
      close;
      sql.clear;
      sql.add('alter Table dbUbahKemasanDet Disable Trigger TRI_UPD_DBUBAHKEMASANDET');
      ExecSQL;
      close;
      sql.clear;
      sql.add('alter Table dbRBeliDet Disable Trigger Trg_UPD_DBRBELIdet');
      ExecSQL;

      close;
      sql.Clear;
      sql.Add('Select distinct a.Kodebrg, b.Namabrg ');
      sql.add('from vwKartuStock a');
      sql.add('left outer join dbbarang b on b.kodebrg=a.kodebrg');
      sql.add('where  Bulan='+IntToStr(Bulan.AsInteger)+' and tahun='+IntToStr(Tahun.AsInteger)+' ');//and b.Kodegrp not in (''BJ'',''BSJ'')');
      if ComboBox1.ItemIndex=1 then
      begin
        sql.add('and (a.kodebrg between '+QuotedStr(Awal.Text)+' and '+QuotedStr(Akhir.Text)+') ');
        //sql.add('Order by a.Kodebrg');
      end
      else
      begin
        //Prepared;
        //sql.add('Order by a.Kodebrg ');
      end;
      sql.Add('union Select distinct a.Kodebrg, b.Namabrg ');
      sql.add('from dbStockBrg a');
      sql.add('left outer join dbbarang b on b.kodebrg=a.kodebrg');
      sql.add('where  Bulan='+IntToStr(Bulan.AsInteger)+' and tahun='+IntToStr(Tahun.AsInteger)+' ');//and b.Kodegrp not in (''BJ'',''BSJ'')');
      SQL.Add('and (QntAwal<>0 or HrgAwal<>0) ');
      if ComboBox1.ItemIndex=1 then
      begin
        sql.add('and (a.kodebrg between '+QuotedStr(Awal.Text)+' and '+QuotedStr(Akhir.Text)+') ');
        //sql.add('Order by a.Kodebrg');
      end
      else
      begin
        //Prepared;
        //sql.add('Order by a.Kodebrg ');
      end;
      SQL.Add('order by a.KodeBrg ');
      Open;
    end;
    if not dm.QuCari.IsEmpty then
    begin
      XiProgressBar1.Position := 0;
      XiProgressBar1.Max := DM.QuCari.RecordCount;
      while not Dm.QuCari.Eof do
      begin
        //Delay(3);
        Label2.Caption := 'Kode Barang : '+ DM.QuCari.Fieldbyname('kodebrg').AsString +#13+
                          'Nama Barang : '+DM.QuCari.Fieldbyname('Namabrg').AsString;
        Application.ProcessMessages;
        ProsesBahan(DM.QuCari.Fieldbyname('kodebrg').AsString,Bulan.AsInteger,Tahun.AsInteger,Myharga,Myharga2);
        InHPPtoTRS(DM.QuCari.Fieldbyname('kodebrg').AsString,Bulan.AsInteger,Tahun.AsInteger,Myharga,Myharga2);
        InHPPtoSTK(DM.QuCari.Fieldbyname('kodebrg').AsString,Bulan.AsInteger,Tahun.AsInteger);
        XiProgressBar1.Position := XiProgressBar1.Position+1;
        dm.QuCari.Next;
      end;
    end;
    
  {  with Dm.QuCari do
    begin
      close;
      sql.Clear;
      sql.Add('Select distinct a.Kodebrg, b.Namabrg ');
      sql.add('from vwKartuStock a');
      sql.add('left outer join dbbarang b on b.kodebrg=a.kodebrg');
      sql.add('where  Bulan='+IntToStr(Bulan.AsInteger)+' and tahun='+IntToStr(Tahun.AsInteger)+' and b.Kodegrp in (''BJ'',''BSJ'')');
      if ComboBox1.ItemIndex=1 then
      begin
        sql.add('and (a.kodebrg between '+QuotedStr(Awal.Text)+' and '+QuotedStr(Akhir.Text)+') ');
        //sql.add('Order by a.Kodebrg');
      end
      else
      begin
        //Prepared;
        //sql.add('Order by a.Kodebrg ');
      end;
      sql.Add('union Select distinct a.Kodebrg, b.Namabrg ');
      sql.add('from dbStockBrg a');
      sql.add('left outer join dbbarang b on b.kodebrg=a.kodebrg');
      sql.add('where  Bulan='+IntToStr(Bulan.AsInteger)+' and tahun='+IntToStr(Tahun.AsInteger)+' and b.Kodegrp in (''BJ'',''BSJ'')');
      SQL.Add('and (QntAwal<>0 or HrgAwal<>0) ');
      if ComboBox1.ItemIndex=1 then
      begin
        sql.add('and (a.kodebrg between '+QuotedStr(Awal.Text)+' and '+QuotedStr(Akhir.Text)+') ');
        //sql.add('Order by a.Kodebrg');
      end
      else
      begin
        //Prepared;
        //sql.add('Order by a.Kodebrg ');
      end;
      SQL.Add('order by a.KodeBrg ');
      Open;
    end;
    if not dm.QuCari.IsEmpty then
    begin
      XiProgressBar1.Position := 0;
      XiProgressBar1.Max := DM.QuCari.RecordCount;
      while not Dm.QuCari.Eof do
      begin
        //Delay(3);
        Label2.Caption := 'Kode Barang : '+ DM.QuCari.Fieldbyname('kodebrg').AsString +#13+
                          'Nama Barang : '+DM.QuCari.Fieldbyname('Namabrg').AsString;
        Application.ProcessMessages;
        ProsesBrgJadi(DM.QuCari.Fieldbyname('kodebrg').AsString,Bulan.AsInteger,Tahun.AsInteger,Myharga);
        InHPPtoTRS(DM.QuCari.Fieldbyname('kodebrg').AsString,Bulan.AsInteger,Tahun.AsInteger,Myharga);
        InHPPtoSTK(DM.QuCari.Fieldbyname('kodebrg').AsString,Bulan.AsInteger,Tahun.AsInteger);
        XiProgressBar1.Position := XiProgressBar1.Position+1;
        dm.QuCari.Next;
      end;
    end; }

   { with Dm.QuCari do
    begin
      close;
      sql.Clear;
      sql.Add('Select distinct a.Kodebrg, b.Namabrg ');
      sql.add('from vwKartuStock a');
      sql.add('left outer join dbbarang b on b.kodebrg=a.kodebrg');
      sql.add('where  Bulan='+IntToStr(Bulan.AsInteger)+' and tahun='+IntToStr(Tahun.AsInteger)+' and b.Kodegrp in (''BJ'',''BSJ'')');
      if ComboBox1.ItemIndex=1 then
      begin
        sql.add('and (a.kodebrg between '+QuotedStr(Awal.Text)+' and '+QuotedStr(Akhir.Text)+') ');
        //sql.add('Order by a.Kodebrg');
      end
      else
      begin
        //Prepared;
        //sql.add('Order by a.Kodebrg ');
      end;
      sql.Add('union Select distinct a.Kodebrg, b.Namabrg ');
      sql.add('from dbStockBrg a');
      sql.add('left outer join dbbarang b on b.kodebrg=a.kodebrg');
      sql.add('where  Bulan='+IntToStr(Bulan.AsInteger)+' and tahun='+IntToStr(Tahun.AsInteger)+' and b.Kodegrp in (''BJ'',''BSJ'')');
      SQL.Add('and (QntAwal<>0 or HrgAwal<>0) ');
      if ComboBox1.ItemIndex=1 then
      begin
        sql.add('and (a.kodebrg between '+QuotedStr(Awal.Text)+' and '+QuotedStr(Akhir.Text)+') ');
        //sql.add('Order by a.Kodebrg');
      end
      else
      begin
        //Prepared;
        //sql.add('Order by a.Kodebrg ');
      end;
      SQL.Add('order by a.KodeBrg ');
      Open;
    end;
    if not dm.QuCari.IsEmpty then
    begin
      XiProgressBar1.Position := 0;
      XiProgressBar1.Max := DM.QuCari.RecordCount;
      while not Dm.QuCari.Eof do
      begin
        //Delay(3);
        Label2.Caption := 'Kode Barang : '+ DM.QuCari.Fieldbyname('kodebrg').AsString +#13+
                          'Nama Barang : '+DM.QuCari.Fieldbyname('Namabrg').AsString;
        Application.ProcessMessages;
        ProsesBahan(DM.QuCari.Fieldbyname('kodebrg').AsString,Bulan.AsInteger,Tahun.AsInteger,Myharga);
        InHPPtoTRS(DM.QuCari.Fieldbyname('kodebrg').AsString,Bulan.AsInteger,Tahun.AsInteger,Myharga);
        InHPPtoSTK(DM.QuCari.Fieldbyname('kodebrg').AsString,Bulan.AsInteger,Tahun.AsInteger);
        XiProgressBar1.Position := XiProgressBar1.Position+1;
        dm.QuCari.Next;
      end;
    end;  }

    with dm.QuCari do
    begin
      close;
      sql.Clear;
      sql.add('alter Table dbjualdet Enable Trigger TRG_UPD_DBJUALDET');
      ExecSQL;
      close;
      sql.Clear;
      sql.add('alter Table dbSJLNDet Enable Trigger TRG_UPD_DBSJLNDET');
      ExecSQL;
      close;
      sql.clear;
      sql.add('alter Table dbrjualdet Enable Trigger TRI_UPD_DBRJUALDET');
      ExecSQL;
      close;
      sql.clear;
      sql.add('alter Table dbKoreksiDet Enable Trigger TRI_UPD_DBKoreksidet');
      ExecSQL;
      close;
      sql.clear;
      sql.add('alter Table dbTransferDet enable Trigger TRI_UPD_DBTransferdet');
      ExecSQL;
      close;
      sql.clear;
      sql.add('alter Table dbUbahKemasanDet enable Trigger TRI_UPD_DBUBAHKEMASANDET');
      ExecSQL;
      close;
      sql.clear;
      sql.add('alter Table dbRBeliDet enable Trigger Trg_UPD_DBRBELIdet');
      ExecSQL;
    end;
    ProsesAkhirBulan(Bulan.AsInteger,Tahun.AsInteger);
    Label2.Caption := 'Proses hitung harga pokok selesai.';
    XiProgressBar1.Position := 0;
  end
  else
    MessageDlg('Periode Sudah terkunci, tidak dapat hitung ulang',mtWarning,[mbok],0);
end;

procedure TFrRata2.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrRata2.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.ItemIndex=0 then
  begin
    Awal.Visible:=False;
    Akhir.Visible:=False;
    Label24.Visible:=False;
  end else
  begin
    Awal.Visible:=True;
    Akhir.Visible:=True;
    Label24.Visible:=True;
  end;
end;

procedure TFrRata2.TampilIsiBarang;
begin
  KodeBrows:=1235;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=Awal.Text;
  FrBrows.IsiData1:=Awal.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    with FrBrows.QuBrows do
    begin
      Awal.Text:=FieldByName('KodeBrg').AsString;
    end;
  end
   else
    ActiveControl:=Awal;
end;

procedure TFrRata2.TampilIsiBarang2;
begin
  KodeBrows:=1235;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=Akhir.Text;
  FrBrows.IsiData1:=Akhir.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    with FrBrows.QuBrows do
    begin
      Akhir.Text:=FieldByName('KodeBrg').AsString;
    end;
  end
   else
    ActiveControl:=Akhir;
end;

procedure TFrRata2.AwalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
  begin
      if Length(Awal.Text)=0 then TampilIsiBarang else
      begin
        if DataBersyarat('Select KodeBrg, NamaBrg, Sat1 from dbBarang where KodeBrg=:0', [Awal.Text], DM.QuCari)=True then

        begin
             Awal.Text:=DM.QuCari.FieldByName('KodeBrg').AsString;
        end else
             TampilIsiBarang;
      end;

  end
  Else if Key=VK_Escape then
  begin
//    SpeedButton1.Click;
  end;
end;

procedure TFrRata2.AkhirKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
  begin
      if Length(Akhir.Text)=0 then TampilIsiBarang2 else
      begin
        if DataBersyarat('Select KodeBrg, NamaBrg, Sat1 from dbBarang where KodeBrg=:0', [Akhir.Text], DM.QuCari)=True then

        begin
             Akhir.Text:=DM.QuCari.FieldByName('KodeBrg').AsString;
        end else
             TampilIsiBarang2;
      end;

  end
  Else if Key=VK_Escape then
  begin
//    SpeedButton1.Click;
  end;
end;

end.

