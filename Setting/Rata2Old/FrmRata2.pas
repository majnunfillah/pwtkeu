unit FrmRata2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, PBNumEdit, Db, ADODB, ComCtrls, ExtCtrls, Gauges,Buttons,
  XiProgressBar, RxGIF, jpeg;

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
    QuTempHPP: TADOQuery;
    QuTempHPPKodeBrg: TStringField;
    QuTempHPPNQnt: TBCDField;
    QuTempHPPNRp: TBCDField;
    QuTempHPPNHrgRata: TBCDField;
    QuTempHPPNamaBrg: TStringField;
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
    strBulan, strTahun: String;
  public
    { Public declarations }
    IsTambah,IsKoreksi,IsHapus, IsCetak, isExcel : Integer;
    Myharga : Real;
    MyWip,MyHPP :real;
    Procedure ProsesBahan(xBulan,xTahun:integer; xKodebrg1,xkodebrg2:String);
    Procedure InHPPtoTRS(xBulan,xTahun:integer; xKodebrg1,xkodebrg2:String);
    Procedure ProsesKemasan(xBulan,xTahun:Integer);
    Procedure ProsesAkhirBulan(xBulan,xTahun:integer);
    procedure TampilIsiBarang;
    procedure TampilIsiBarang2;
  end;

var
  FrRata2: TFrRata2;
implementation
uses FrmBrows,MyProcedure,MyGlobal,MyModul;
{$R *.DFM}

Procedure TFrRata2.ProsesBahan(xBulan,xTahun:integer; xKodebrg1,xkodebrg2:String);
begin
  with dm.QuCari do
  begin
    SQL.Clear;
    sql.Add('Declare @bulan int,@Tahun int,@Kodebrg1 Varchar(25), @kodebrg2 varchar(25)');
    Sql.Add('Select @Kodebrg1=:0, @Kodebrg2=:1, @bulan=:2, @tahun=:3');
    sql.Add('Select a.Kodebrg,B.Namabrg,Sum(a.QntSaldo) Qnt,Sum(a.HrgSaldo) DPP, Case when Sum(a.QntSaldo)<>0 then Sum(a.HrgSaldo)/Sum(a.QntSaldo) else 0 end HPP');
    sql.Add('from vwKartuStock a');
    sql.add('     left outer join dbbarang b on b.kodebrg=a.kodebrg ');
    SQl.Add('     left outer join DBSTOCKBRG C on C.KODEBRG=a.Kodebrg and C.BULAN=@bulan and C.TAHUN=@Tahun');
    sql.Add('where a.Bulan=@bulan and a.Tahun=@tahun and Tipe in (''AWL'',''BP'',''RBP'',''ADI'' ) and ');
    sql.Add('      (C.QNTPBL<>0 or C.QNT2PBL<>0 or C.QNTRPB<>0 or C.QNT2RPB<>0 or C.QNTADI<>0 or C.QNT2ADI<>0)');
    if ComboBox1.ItemIndex=1 then
    begin
      Sql.add('      and (a.Kodebrg between @kodebrg1 and @kodebrg2) ');
    end;
    sql.Add('group by a.Kodebrg, B.namabrg');
    sql.Add('ORder by a.Kodebrg');
    Prepared;
    Parameters[0].Value := xKodebrg1;
    Parameters[1].Value := xkodebrg2;
    Parameters[2].Value := xBulan;
    Parameters[3].Value := xTahun;
    Open;
  end;
  if not DM.QuCari.IsEmpty then
  begin
    XiProgressBar1.Position :=0;
    XiProgressBar1.Max := DM.QuCari.RecordCount;
    DM.QuCari.DisableControls;
    DM.QuCari.First;
    while not dm.QuCari.Eof do
    begin
      Application.ProcessMessages;
      Label2.Caption := 'Proses Hitung HPP Bahan Baku Dan Bahan Pembantu '+#13+
                        'Kode Barang : '+ DM.QuCari.Fieldbyname('kodebrg').AsString +#13+
                        'Nama Barang : '+DM.QuCari.Fieldbyname('Namabrg').AsString;
      XiProgressBar1.Position := DM.QuCari.RecNo;
      with DM.QuKOde do
      begin
        close;
        sql.Clear;
        sql.Add('update dbstockbrg set HrgRata=:0 ');
        Sql.add('where kodebrg=:1 and Bulan=:2 and tahun=:3');
        Prepared;
        Parameters[0].Value := DM.QuCari.FieldByname('HPP').AsFloat;
        Parameters[1].Value := DM.QuCari.FieldByname('kodebrg').AsString;
        Parameters[2].Value := xBulan;
        Parameters[3].Value := xTahun;
        ExecSQL;
      end;
      dm.QuCari.Next;
    end;
    DM.QuCari.EnableControls;
  end;
end;

Procedure TFrRata2.InHPPtoTRS(xBulan,xTahun:integer; xKodebrg1,xkodebrg2:String);
begin
  with dm.QuCari do
  begin
    SQL.Clear;
    sql.Add('Declare @bulan int,@Tahun int,@Kodebrg1 Varchar(25), @kodebrg2 varchar(25)');
    Sql.Add('Select @Kodebrg1=:0, @Kodebrg2=:1, @bulan=:2, @tahun=:3');
    sql.Add('Select a.Kodebrg,B.Namabrg,A.Tipe,A.kodegdg,Sum(a.QntSaldo) Qnt, ');
    SQL.Add('       Case when a.Tipe in (''BP'', ''RBP'',''ADI'') then Sum(a.HrgSaldo) else ');
    sql.Add('       Case when Sum(a.QntSaldo)<0 then -SUM(a.QntSaldo)');
    sql.Add('            else SUM(a.QntSaldo) ');
    sql.Add('       end*Max(C.HRGRATA) end DPP, Max(C.HRGRATA) HPP');
    sql.Add('from vwKartuStock a');
    sql.add('     left outer join dbbarang b on b.kodebrg=a.kodebrg ');
    SQl.Add('     left outer join DBSTOCKBRG C on C.KODEBRG=a.Kodebrg and C.BULAN=@bulan and C.TAHUN=@Tahun');
    sql.Add('where a.Bulan=@bulan and a.Tahun=@tahun and Tipe not in (''AWL'') ');
    if ComboBox1.ItemIndex=1 then
    begin
      Sql.add('      and (a.Kodebrg between @kodebrg1 and @kodebrg2) ');
    end;
    sql.Add('group by a.Kodebrg,B.Namabrg,A.Tipe, A.kodegdg');
    sql.Add('Order by a.Kodebrg');
    Prepared;
    Parameters[0].Value := xKodebrg1;
    Parameters[1].Value := xkodebrg2;
    Parameters[2].Value := xBulan;
    Parameters[3].Value := xTahun;
    Open;
  end;
  if not DM.QuCari.IsEmpty then
  begin
    XiProgressBar1.Position :=0;
    XiProgressBar1.Max := DM.QuCari.RecordCount;
    DM.QuCari.DisableControls;
    DM.QuCari.First;
    while not dm.QuCari.Eof do
    begin
      Application.ProcessMessages;
      Label2.Caption := 'Proses Input HPP Ke Transaksi dan Stock '+#13+
                        'Kode Barang : '+ DM.QuCari.Fieldbyname('kodebrg').AsString +#13+
                        'Nama Barang : '+DM.QuCari.Fieldbyname('Namabrg').AsString;
      XiProgressBar1.Position := DM.QuCari.RecNo;
      with DM.QuKOde do
      begin
        close;
        sql.Clear;
        sql.Add('Declare @bulan int,@Tahun int,@Kodebrg Varchar(25), @Harga Numeric(18,2), @DPP numeric(18,2), @kodegdg varchar(15)');
        Sql.Add('Select @Harga=:0, @Kodebrg=:1, @bulan=:2, @tahun=:3, @DPP=:4, @kodegdg=:5');
        if DM.QuCari.FieldByName('Tipe').AsString='BPPB' then
        begin
          sql.Add('update DBstockbrg set HRGBPPB=@DPP ');
          Sql.add('where kodebrg=@kodebrg and Bulan=@bulan and Tahun=@tahun and Kodegdg=@kodegdg');

          sql.Add('update dbPermintaanbrgdet set Hpp=@harga ');
          sql.add('from dbPermintaanbrg a ');
          Sql.add('where a.nobukti=dbpermintaanbrgdet.nobukti and dbpermintaanbrgdet.kodebrg=@kodebrg and month(a.tanggal)=@bulan and year(a.tanggal)=@tahun');
        end
        else if DM.QuCari.FieldByName('Tipe').AsString='BBPPB' then
        begin
          sql.Add('update DBstockbrg set HRGBatalBPPB=@DPP ');
          Sql.add('where kodebrg=@kodebrg and Bulan=@bulan and Tahun=@tahun and Kodegdg=@kodegdg');
          sql.Add('update DBBatalMintabrgdet set Hpp=@harga ');
          sql.add('from DBBatalMintabrg a ');
          Sql.add('where a.nobukti=DBBatalMintabrgdet.nobukti and DBBatalMintabrgdet.kodebrg=@kodebrg and month(a.tanggal)=@bulan and year(a.tanggal)=@tahun');
        end
        else if DM.QuCari.FieldByName('Tipe').AsString='BPB' then
        begin
          sql.Add('update DBstockbrg set HRGBPB=@DPP ');
          Sql.add('where kodebrg=@kodebrg and Bulan=@bulan and Tahun=@tahun and Kodegdg=@kodegdg');
          sql.Add('update DBPenyerahanbrgdet set Hpp=@harga ');
          sql.add('from DBPenyerahanbrg a ');
          Sql.add('where a.nobukti=DBPenyerahanbrgdet.nobukti and DBPenyerahanbrgdet.kodebrg=@kodebrg and month(a.tanggal)=@bulan and year(a.tanggal)=@tahun');
        end
        else if DM.QuCari.FieldByName('Tipe').AsString='RBPB' then
        begin
          sql.Add('update DBstockbrg set HRGRBPB=@DPP ');
          Sql.add('where kodebrg=@kodebrg and Bulan=@bulan and Tahun=@tahun and Kodegdg=@kodegdg');
          sql.Add('update DBRPenyerahanbrgdet set Hpp=@harga');
          sql.add('from DBPenyerahanbrg a ');
          Sql.add('where a.nobukti=DBRPenyerahanbrgdet.nobukti and DBRPenyerahanbrgdet.kodebrg=@kodebrg and month(a.tanggal)=@bulan and year(a.tanggal)=@tahun');
        end
        else if DM.QuCari.FieldByName('Tipe').AsString='PPL' then
        begin
          sql.Add('update DBstockbrg set HRGPPL=@DPP ');
          Sql.add('where kodebrg=@kodebrg and Bulan=@bulan and Tahun=@tahun and Kodegdg=@kodegdg');
          sql.Add('update DBPPLdet set Hpp=@harga');
          sql.add('from DBPPL a ');
          Sql.add('where a.nobukti=DBPPLdet.nobukti and DBPPLdet.kodebrg=@kodebrg and month(a.tanggal)=@bulan and year(a.tanggal)=@tahun');
        end
        else if DM.QuCari.FieldByName('Tipe').AsString='BPL' then
        begin
          sql.Add('update DBstockbrg set HRGBPL=@DPP ');
          Sql.add('where kodebrg=@kodebrg and Bulan=@bulan and Tahun=@tahun and Kodegdg=@kodegdg');
          sql.Add('update DBBatalPPLdet set Hpp=@harga');
          sql.add('from DBBatalPPL a ');
          Sql.add('where a.nobukti=DBBatalPPLdet.nobukti and DBBatalPPLdet.kodebrg=@kodebrg and month(a.tanggal)=@bulan and year(a.tanggal)=@tahun');
        end
        else if DM.QuCari.FieldByName('Tipe').AsString='SPRK' then
        begin
          sql.Add('update DBstockbrg set HRGSPRK=@DPP ');
          Sql.add('where kodebrg=@kodebrg and Bulan=@bulan and Tahun=@tahun and Kodegdg=@kodegdg');
          sql.Add('update DBSPRKdet set Hpp=@harga');
          sql.add('from DBSPRK a ');
          Sql.add('where a.nobukti=DBSPRKdet.nobukti and DBSPRKdet.kodebrg=@kodebrg and month(a.tanggal)=@bulan and year(a.tanggal)=@tahun');
        end
        else if DM.QuCari.FieldByName('Tipe').AsString='BSPRK' then
        begin
          sql.Add('update DBstockbrg set HRGBSPRK=@DPP ');
          Sql.add('where kodebrg=@kodebrg and Bulan=@bulan and Tahun=@tahun and Kodegdg=@kodegdg');
          sql.Add('update DBBatalSPRKdet set Hpp=@harga');
          sql.add('from DBBatalSPRK a ');
          Sql.add('where a.nobukti=DBBatalSPRKdet.nobukti and DBBatalSPRKdet.kodebrg=@kodebrg and month(a.tanggal)=@bulan and year(a.tanggal)=@tahun');
        end
        else if DM.QuCari.FieldByName('Tipe').AsString='OP' then
        begin
          sql.Add('update DBstockbrg set HRGPO=@DPP ');
          Sql.add('where kodebrg=@kodebrg and Bulan=@bulan and Tahun=@tahun and Kodegdg=@kodegdg');
        end
        else if DM.QuCari.FieldByName('Tipe').AsString='BOP' then
        begin
          sql.Add('update DBstockbrg set HRGBPO=@DPP ');
          Sql.add('where kodebrg=@kodebrg and Bulan=@bulan and Tahun=@tahun and Kodegdg=@kodegdg');
          sql.Add('update DBBatalPOdet set Hpp=@harga');
          sql.add('from DBBatalPO a ');
          Sql.add('where a.nobukti=DBBatalPodet.nobukti and DBBatalPodet.kodebrg=@kodebrg and month(a.tanggal)=@bulan and year(a.tanggal)=@tahun');
        end
        else if DM.QuCari.FieldByName('Tipe').AsString='BP' then
        begin
          sql.Add('update DBstockbrg set HRGPBL=@DPP ');
          Sql.add('where kodebrg=@kodebrg and Bulan=@bulan and Tahun=@tahun and Kodegdg=@kodegdg');
        end
        else if DM.QuCari.FieldByName('Tipe').AsString='RBP' then
        begin
          sql.Add('update DBstockbrg set HRGRPB=@DPP ');
          Sql.add('where kodebrg=@kodebrg and Bulan=@bulan and Tahun=@tahun and Kodegdg=@kodegdg');
        end
        else if DM.QuCari.FieldByName('Tipe').AsString='INS' then
        begin
          sql.Add('update DBstockbrg set HRGINS=@DPP ');
          Sql.add('where kodebrg=@kodebrg and Bulan=@bulan and Tahun=@tahun and Kodegdg=@kodegdg');
          sql.Add('update DBInspeksidet set Hpp=@harga');
          sql.add('from DBInspeksi a ');
          Sql.add('where a.nobukti=DBInspeksidet.nobukti and DBInspeksidet.kodebrg=@kodebrg and month(a.tanggal)=@bulan and year(a.tanggal)=@tahun');
        end
        else if DM.QuCari.FieldByName('Tipe').AsString='KNS' then
        begin
          sql.Add('update DBstockbrg set HRGKNS=@DPP ');
          Sql.add('where kodebrg=@kodebrg and Bulan=@bulan and Tahun=@tahun and Kodegdg=@kodegdg');
          sql.Add('update DBKonsesidet set Hpp=@harga');
          sql.add('from DBKonsesi a ');
          Sql.add('where a.nobukti=DBKonsesidet.nobukti and DBKonsesidet.kodebrg=@kodebrg  and month(a.tanggal)=@bulan and year(a.tanggal)=@tahun');
        end
        else if DM.QuCari.FieldByName('Tipe').AsString='SPAT' then
        begin
          sql.Add('update DBstockbrg set HRGSPAT=@DPP ');
          Sql.add('where kodebrg=@kodebrg and Bulan=@bulan and Tahun=@tahun and Kodegdg=@kodegdg');
          sql.Add('update DBSpengantardet set Hpp=@harga');
          sql.add('from DBSpengantar a ');
          Sql.add('where a.nobukti=DBSpengantardet.nobukti and DBSpengantardet.kodebrg=@kodebrg and month(a.tanggal)=@bulan and year(a.tanggal)=@tahun');
        end
        else if (DM.QuCari.FieldByName('Tipe').AsString='ADI') or (DM.QuCari.FieldByName('Tipe').AsString='ADO')  then
        begin
          if (DM.QuCari.FieldByName('Tipe').AsString='ADI') then
          begin
            sql.Add('update DBstockbrg set HRGADI=@DPP ');
            Sql.add('where kodebrg=@kodebrg and Bulan=@bulan and Tahun=@tahun and Kodegdg=@kodegdg');
          end
          else if (DM.QuCari.FieldByName('Tipe').AsString='ADO')   then
          begin
            sql.Add('update DBstockbrg set HRGADO=@DPP ');
            Sql.add('where kodebrg=@kodebrg and Bulan=@bulan and Tahun=@tahun and Kodegdg=@kodegdg');
          end;
          sql.Add('update DBkoreksidet set Hpp=@harga');
          sql.add('from DBkoreksi a ');
          Sql.add('where a.nobukti=DBkoreksidet.nobukti and DBkoreksidet.kodebrg=@kodebrg and month(a.tanggal)=@bulan and year(a.tanggal)=@tahun');
        end;
        Prepared;
        Parameters[0].Value := DM.QuCari.FieldByName('HPP').AsFloat;
        Parameters[1].Value := DM.QuCari.FieldByName('Kodebrg').AsString;
        Parameters[2].Value := xBulan;
        Parameters[3].Value := xTahun;
        Parameters[4].Value := DM.QuCari.FieldByName('DPP').AsFloat;
        Parameters[5].Value := DM.QuCari.FieldByName('kodegdg').AsString;
        ExecSQL;
      end;
      dm.QuCari.Next;
    end;
    DM.QuCari.EnableControls;
  end;

end;



Procedure TFrRata2.ProsesKemasan(xBulan,xTahun:Integer);
begin
{    with MySP do
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
        ProsesBahan(Dm.QuCari.Fieldbyname('Kodebrg').AsString,Bulan.AsInteger,Tahun.AsInteger,Myharga);
        InHPPtoTRS(DM.QuCari.Fieldbyname('kodebrg').AsString,Bulan.AsInteger,Tahun.AsInteger,Myharga);
        InHPPtoSTK(DM.QuCari.Fieldbyname('kodebrg').AsString,Bulan.AsInteger,Tahun.AsInteger);
        XiProgressBar1.Position := XiProgressBar1.Position+1;
        DM.QuCari.Next;
      end;
    end;
}
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
    sql.Add('Declare @Bulan int,@tahun int');
    Sql.Add('Select @Bulan=:0,@tahun=:1');
    sql.Add('Update dbStockbrg set qntAwal=0, Qnt2Awal=0, hrgawal=0 ');
    if ComboBox1.ItemIndex=1 then
    begin
      sql.Add('where Bulan=Case when @bulan=12 then 1 else @bulan+1 end and Tahun=Case when @bulan=12 then @tahun+1 else @tahun end and (kodebrg between :2 and :3) ');
      Parameters[0].Value:=Bulan.AsInteger;
      Parameters[1].Value:=Tahun.AsInteger;
      Parameters[2].Value:=Awal.Text;
      Parameters[3].Value:=Akhir.Text;
    end else
    begin
      sql.Add('where Bulan=Case when @bulan=12 then 1 else @bulan+1 end and Tahun=Case when @bulan=12 then @tahun+1 else @tahun end ');
      Parameters[0].Value:=Bulan.AsInteger;
      Parameters[1].Value:=Tahun.AsInteger;
    end;
    Prepared;
    ExecSQL;
    close;
    sql.Clear;
    sql.Add('Select b.Kodebrg, c.Namabrg, b.kodegdg, b.SaldoQnt QntAwal, b.SaldoQnt2 Qnt2Awal, b.SaldoRp HrgAwal, B.HrgRata');
    sql.Add('from dbstockbrg b');
    sql.Add('left outer join dbbarang c on c.kodebrg=b.kodebrg');
    sql.add('Where b.bulan=:0 and b.Tahun=:1 ');
    {and ');
    sql.add('   ((b.SaldoQnt<>0 or b.Saldoqnt2<>0 or b.SaldoRp<>0))');}

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
  try
    if DM.QuCari.IsEmpty then XiProgressBar1.Max:=1
    else XiProgressBar1.Max := DM.QuCari.RecordCount;
  except
    XiProgressBar1.Max:=1;
  end;
  //XiProgressBar1.Max := DM.QuCari.RecordCount;
  while not Dm.QuCari.Eof do
  begin
    //Delay(3);
    XiProgressBar1.Position := XiProgressBar1.Position+1;
    Label2.Caption := 'Pindah Saldo Stock : '+ DM.QuCari.Fieldbyname('kodebrg').AsString +#13+
                      'Nama Barang : '+DM.QuCari.Fieldbyname('Namabrg').AsString;
    Application.ProcessMessages;
    With dm.QuKOde do
    begin
      close;
      sql.Clear;
      Sql.Add('Declare @Kodebrg varchar(25),@Kodegdg varchar(15),@kodeLokasi Varchar(15),');
      sql.Add('        @QntAwal numeric(18,2), @Qnt2Awal numeric(18,2), @HrgAwal numeric(18,2),@Bulan int,@Tahun int, @hrgRata numeric(18,2)');
      sql.Add('Select @kodebrg=:0,@Kodegdg=:1, @QntAwal=:2,@Qnt2Awal=:3, @hrgAwal=:4,@bulan=:5,@Tahun=:6, @HrgRata=:7');
      if DataBersyarat('Select Kodebrg from dbstockbrg Where Kodebrg=:0 and Kodegdg=:1 and Bulan=:2 and Tahun=:3',
         [DM.QuCari.Fieldbyname('kodebrg').AsString,DM.QuCari.Fieldbyname('kodegdg').AsString,
          xBulan,xTahun],Dm.QuNomor) then
      begin
        sql.Add('Update dbstockbrg set QntAwal=@Qntawal,Qnt2Awal=@Qnt2Awal, HrgAwal=@HrgAwal, HrgRata=@hrgRata');
        Sql.Add('Where Kodebrg=@Kodebrg and Kodegdg=@Kodegdg and Bulan=@Bulan and Tahun=@tahun');
      end
      else
      begin
        Sql.Add('Insert into dbStockbrg(Kodebrg,Kodegdg,Bulan,Tahun,QntAwal,Qnt2Awal,HrgAwal, HrgRata)');
        sql.Add('Values(@Kodebrg,@Kodegdg,@Bulan,@Tahun,@QntAwal,@Qnt2Awal,@HrgAwal,@HrgRata)');
      end;
      Prepared;
      Parameters[0].Value := DM.QuCari.Fieldbyname('kodebrg').AsString;
      Parameters[1].Value := DM.QuCari.Fieldbyname('kodegdg').AsString;
      Parameters[2].Value := DM.QuCari.Fieldbyname('Qntawal').AsFloat;
      Parameters[3].Value := DM.QuCari.Fieldbyname('Qnt2awal').AsFloat;
      Parameters[4].Value := DM.QuCari.Fieldbyname('Hrgawal').AsFloat;
      Parameters[5].Value := xBulan;
      Parameters[6].Value := xTahun;
      Parameters[7].Value := DM.QuCari.Fieldbyname('HrgRata').AsFloat;
      ExecSql;
    end;
    dm.QuCari.Next;
  end;
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
  strBulan:=IntToStr(Bulan.AsInteger);
  strTahun:=IntToStr(Tahun.AsInteger);
  if MyCek_Lock_PeriodeProses(Bulan.Text,Tahun.Text) then
  begin
    Delay(3);
    LoggingData(IDUser,'','','',' Hitung Harga Pokok Periode '+Bulan.Text+'-'+Tahun.Text);
    Label2.Caption := 'Inisialisasi';
    DisableEnableTrigger(False,'DBPermintaanbrgDet');
    DisableEnableTrigger(False,'DBBatalMintabrgDet');
    DisableEnableTrigger(False,'DBPenyerahanbrgDet');
    DisableEnableTrigger(False,'DBRPenyerahanbrgDet');
    DisableEnableTrigger(False,'DBPPLDet');
    DisableEnableTrigger(False,'DBBatalPPLDet');
    DisableEnableTrigger(False,'DBSPRKDet');
    DisableEnableTrigger(False,'DBBatalSPRKDet');
    DisableEnableTrigger(False,'DBBatalPODet');
    DisableEnableTrigger(False,'DBInspeksiDet');
    DisableEnableTrigger(False,'DBKonsesiDet');
    DisableEnableTrigger(False,'DBSpengantarDet');
    DisableEnableTrigger(False,'DBkoreksiDet');
    with Dm.QuCari do
    begin
      Close;
      sql.Clear;
      sql.Add('Declare @bulan int,@Tahun int,@Kodebrg1 Varchar(25), @kodebrg2 varchar(25)');
      Sql.Add('Select @Kodebrg1=:0, @Kodebrg2=:1, @bulan=:2, @tahun=:3');
      sql.Add('Update dbStockBrg set HRGBPPB=0, HRGBatalBPPB=0, HRGBPB=0, HRGRBPB=0, ');
      sql.Add('HRGPPL=0, HRGBPL=0, HRGSPRK=0, HRGBSPRK=0, HRGINS=0, HRGKNS=0, HRGSPAT=0,');
      sql.Add('HRGPO=0, HRGBPO=0,');
      sql.Add('HrgPBL=0, HrgRPB=0, HrgPNJ=0, HrgRPJ=0, HrgPRO=0,');
      sql.Add('HrgADI=0,HrgADO=0,HrgUKI=0,HrgUKO=0,HrgTRI=0,HrgTRO=0, HRGBHN=0 ');
      sql.Add('where  Bulan=@bulan and Tahun=@tahun  ');
      if ComboBox1.ItemIndex=1 then
      begin
        SQL.add(' and (kodebrg between @kodebrg1 and @kodebrg2)');
      end;
      Prepared;
      Parameters[0].Value :=Awal.Text;
      Parameters[1].Value :=Akhir.Text;
      Parameters[2].Value := Bulan.AsInteger;
      Parameters[3].Value := Tahun.AsInteger;
      ExecSQL;
    end;
    ProsesBahan(Bulan.AsInteger,Tahun.AsInteger,Awal.Text,Akhir.Text);
    InHPPtoTRS(Bulan.AsInteger,Tahun.AsInteger,Awal.Text,Akhir.Text);


    DisableEnableTrigger(True,'DBPermintaanbrgDet');
    DisableEnableTrigger(True,'DBBatalMintabrgDet');
    DisableEnableTrigger(True,'DBPenyerahanbrgDet');
    DisableEnableTrigger(True,'DBRPenyerahanbrgDet');
    DisableEnableTrigger(True,'DBPPLDet');
    DisableEnableTrigger(True,'DBBatalPPLDet');
    DisableEnableTrigger(True,'DBSPRKDet');
    DisableEnableTrigger(True,'DBBatalSPRKDet');
    DisableEnableTrigger(True,'DBBatalPODet');
    DisableEnableTrigger(True,'DBInspeksiDet');
    DisableEnableTrigger(True,'DBKonsesiDet');
    DisableEnableTrigger(True,'DBSpengantarDet');
    DisableEnableTrigger(True,'DBkoreksiDet');

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
  KodeBrows:=40201;
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
  KodeBrows:=40201;
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
        if DataBersyarat('Select KodeBrg, NamaBrg, Sat1 from dbBarang where Jenis=0 and KodeBrg=:0', [Awal.Text], DM.QuCari)=True then

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
        if DataBersyarat('Select KodeBrg, NamaBrg, Sat1 from dbBarang where Jenis=0 and KodeBrg=:0', [Akhir.Text], DM.QuCari)=True then

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

