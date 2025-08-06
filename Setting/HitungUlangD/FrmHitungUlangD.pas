unit FrmHitungUlangD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, PBNumEdit, Db, ADODB, ComCtrls, ExtCtrls, Gauges,Buttons,
  XiProgressBar, RxGIF, jpeg;

type
  TFrHitungUlangD = class(TForm)
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
    SP_HITUNGULANG: TADOStoredProc;
    Awal: TEdit;
    ComboBox1: TComboBox;
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
    procedure TampilIsiBarang;
    procedure TampilIsiBarang2;
    procedure AkhirKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    Procedure ProsesAkhirBulan(xBulan,xTahun:integer);
  public
    { Public declarations }
    IsTambah,IsKoreksi,IsHapus, IsCetak, isExcel : Integer;
  end;

var
  FrHitungUlangD: TFrHitungUlangD;
  Maks:integer;
  posisi,count:real;

implementation
uses FrmBrows,MyProcedure,MyGlobal,MyModul;
{$R *.DFM}

Procedure TFrHitungUlangD.ProsesAkhirBulan(xBulan,xTahun:integer);
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

procedure TFrHitungUlangD.FormShow(Sender: TObject);
begin
   Bulan.Value:=Strtoint(PeriodBln);
   Tahun.Value:=Strtoint(PeriodThn);
end;

procedure TFrHitungUlangD.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then sendmessage(handle,WM_NEXTDLGCTL,0,0)
else if key=27 then close;
end;

procedure TFrHitungUlangD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=cafree;
end;

procedure TFrHitungUlangD.BitBtn1Click(Sender: TObject);
begin
  if MyCek_Lock_PeriodeProses(Bulan.Text,Tahun.Text) then
  begin
    //Delay(3);
    LoggingData(IDUser,'','','',' Hitung Ulang Data');
    Label2.Caption := 'Inisialisasi';
    Application.ProcessMessages;
    with Dm.QuCari do
    begin
      close;
      sql.Clear;
      sql.Add('Delete dbDataBarang');
      ExecSQL;
      close;
      sql.Clear;
      SQL.Add('Select kodebrg,NAMABRG,SUM(QntPPL)QntPPL,SUM(QntPO)QntPO from(');
      SQL.Add('select a.kodebrg,c.NAMABRG,');
      SQL.Add( '(Case when a.Nosat=1 then a.Qnt*Isi  ');
      SQL.Add( '         when a.Nosat=2 then a.Qnt      ');
      SQL.Add( '         else 0                         ');
      SQL.Add( '    end)QntPPL,(Isnull(b.Qnt,0)) QntPO   ');
      SQL.Add('from DBPPLDET a                                ');
      SQL.Add('Left Outer Join (select NoPPL,Kodebrg,         ');
      SQL.Add('                        Sum(Case when a.Nosat=1 then a.Qnt*Isi ');
      SQL.Add('                                 when a.Nosat=2 then a.Qnt     ');
      SQL.Add('                                 else 0             ');
      SQL.Add('                            end)Qnt                 ');
      SQL.Add('                 from DBPODET a                     ');
      SQL.Add('                 group by NoPPL,Kodebrg)b On a.Nobukti=b.NoPPL and a.kodebrg=b.KODEBRG ');
      SQL.Add('left Outer Join DBBARANG c On c.KODEBRG=a.kodebrg                                      ');
      SQL.Add('Left Outer Join dbPPL A1 On A1.NoBukti=A.NoBukti                                       ');
      SQL.Add('where Case when Isnull(A1.IsClose,0)=0 Then Isnull(A.IsClose,0)else Isnull(A1.IsClose,0) end=0  and (a.Qnt*isi)-(Isnull(b.Qnt,0))<>0)a  ');
      SQL.Add('group By kodebrg,NAMABRG');
      SQL.Add('Having SUM(QntPPL)-SUM(QntPO)<>0');
      SQL.Add('Order By a.KodeBrg');
      Open;
    end;

    if not DM.QuCari.IsEmpty then
    begin
      XiProgressBar1.Position := 0;
      XiProgressBar1.Max := DM.QuCari.RecordCount;
      while not DM.QuCari.Eof do
      begin
        XiProgressBar1.Position := XiProgressBar1.Position+1;
        Label2.Caption := 'Hitung Ulang Kode : '+ DM.QuCari.Fieldbyname('kodebrg').AsString +#13+
                          'Nama Barang : '+DM.QuCari.Fieldbyname('Namabrg').AsString;
        Application.ProcessMessages;
        DM.QuKOde.Close;
        DM.QuKOde.SQL.Clear;
        DM.QuKOde.SQL.Add('if Not Exists(select KodeBrg from dbDataBarang where KodeBrg='+QuotedStr(DM.QuCari.FieldByName('KodeBrg').AsString)+')');
        DM.QuKOde.SQL.Add('Begin');
        DM.QuKOde.SQL.Add('Insert Into dbDataBarang(KodeBrg,QntPPL,QntPO) ');
        DM.QuKOde.SQL.Add('Values(:0,:1,:2)');
        DM.QuKOde.SQL.Add('End');
        DM.QuKOde.SQL.Add('else');
        DM.QuKOde.SQL.Add('Update dbDataBarang Set QntPPL=:3,QntPO=:4 where KodeBrg='+QuotedStr(DM.QuCari.FieldByName('KodeBrg').AsString));
        DM.QuKOde.Parameters[0].Value:=DM.QuCari.FieldByName('KodeBrg').AsString;
        DM.QuKOde.Parameters[1].Value:=DM.QuCari.FieldByName('QNTPPL').AsFloat;
        DM.QuKOde.Parameters[2].Value:=DM.QuCari.FieldByName('QNTPO').AsFloat;
        DM.QuKOde.Parameters[3].Value:=DM.QuCari.FieldByName('QNTPPL').AsFloat;
        DM.QuKOde.Parameters[4].Value:=DM.QuCari.FieldByName('QNTPO').AsFloat;
        DM.QuKOde.ExecSQL;
        dm.QuCari.Next;
      end;
    end;
    Label2.Caption := 'Proses hitung ulang selesai';
    XiProgressBar1.Position := 0;
    //---------------
    with Dm.QuCari do
    begin
      Close;
      sql.Clear;
      SQL.Add('select a.Kodebrg,d.NAMABRG,Isnull(SUM(a.QNT*isi),0)QntBPPB,Isnull(b.Qnt,0)QntBP');
      SQL.Add('from DBSPKDET a ');
      SQL.Add('left Outer Join (select Kodebrg,SUM(Qnt)Qnt,Sum(Qnt2)QNT2 from DBPenyerahanBhnDET group by kodebrg)b On b.kodebrg=a.KodeBrg ');
      SQL.Add('Left Outer Join DBBARANG d On a.KODEBRG=d.kodebrg   ');
      SQL.Add('group by a.KodeBrg,d.NAMABRG,b.Qnt   ');
      SQL.Add('having Isnull(SUM(a.QNT*isi),0)-Isnull(b.Qnt,0)<>0');
      SQL.Add('Order By a.KodeBrg');
      Open;
    end;
     if not DM.QuCari.IsEmpty then
    begin
      XiProgressBar1.Position := 0;
      XiProgressBar1.Max := DM.QuCari.RecordCount;
      while not DM.QuCari.Eof do
      begin
        XiProgressBar1.Position := XiProgressBar1.Position+1;
        Label2.Caption := 'Hitung Ulang Kode : '+ DM.QuCari.Fieldbyname('kodebrg').AsString +#13+
                          'Nama Barang : '+DM.QuCari.Fieldbyname('Namabrg').AsString;
        Application.ProcessMessages;
        DM.QuKOde.Close;
        DM.QuKOde.SQL.Clear;
        DM.QuKOde.SQL.Add('if Not Exists(select KodeBrg from dbDataBarang where KodeBrg='+QuotedStr(DM.QuCari.FieldByName('KodeBrg').AsString)+')');
        DM.QuKOde.SQL.Add('Begin');
        DM.QuKOde.SQL.Add('Insert Into dbDataBarang(KodeBrg,QntBPPB,QntPB) ');
        DM.QuKOde.SQL.Add('Values(:0,:1,:2)');
        DM.QuKOde.SQL.Add('End');
        DM.QuKOde.SQL.Add('else');
        DM.QuKOde.SQL.Add('Update dbDataBarang Set QntBPPB=:3,QntPB=:4 where KodeBrg='+QuotedStr(DM.QuCari.FieldByName('KodeBrg').AsString));
        DM.QuKOde.Parameters[0].Value:=DM.QuCari.FieldByName('KodeBrg').AsString;
        DM.QuKOde.Parameters[1].Value:=DM.QuCari.FieldByName('QNTBPPB').AsFloat;
        DM.QuKOde.Parameters[2].Value:=DM.QuCari.FieldByName('QNTBP').AsFloat;
        DM.QuKOde.Parameters[3].Value:=DM.QuCari.FieldByName('QNTBPPB').AsFloat;
        DM.QuKOde.Parameters[4].Value:=DM.QuCari.FieldByName('QNTBP').AsFloat;
        DM.QuKOde.ExecSQL;
        dm.QuCari.Next;
      end;
    end;
    Label2.Caption := 'Proses hitung ulang selesai';
    XiProgressBar1.Position := 0;
    ///-------------
    with Dm.QuCari do
    begin
      Close;
      sql.Clear;
      SQL.Add('select a.Kodebrg,d.NAMABRG,Sum(Qnt)QntSaldo ');
      SQL.Add('from vwKartuStock a ');
      SQL.Add('Left Outer Join DBBARANG d On a.KODEBRG=d.kodebrg   ');
      SQL.Add('where a.Tipe in(''BP'')');
      SQL.Add('and Bulan=:0 and Tahun=:1');
      SQL.Add('group by a.KodeBrg,d.NAMABRG   ');
      SQL.Add('Order By a.KodeBrg');
      Parameters[0].Value:=Bulan.AsInteger;
      Parameters[1].Value:=Tahun.AsInteger;
      Open;
    end;
     if not DM.QuCari.IsEmpty then
    begin
      XiProgressBar1.Position := 0;
      XiProgressBar1.Max := DM.QuCari.RecordCount;
      while not DM.QuCari.Eof do
      begin
        XiProgressBar1.Position := XiProgressBar1.Position+1;
        Label2.Caption := 'Hitung Ulang Kode : '+ DM.QuCari.Fieldbyname('kodebrg').AsString +#13+
                          'Nama Barang : '+DM.QuCari.Fieldbyname('Namabrg').AsString;
        Application.ProcessMessages;
        DM.QuKOde.Close;
        DM.QuKOde.SQL.Clear;
        DM.QuKOde.SQL.Add('if Not Exists(select KodeBrg from dbDataBarang where KodeBrg='+QuotedStr(DM.QuCari.FieldByName('KodeBrg').AsString)+')');
        DM.QuKOde.SQL.Add('Begin');
        DM.QuKOde.SQL.Add('Insert Into dbDataBarang(KodeBrg,QntPBL) ');
        DM.QuKOde.SQL.Add('Values(:0,:1)');
        DM.QuKOde.SQL.Add('End');
        DM.QuKOde.SQL.Add('else');
        DM.QuKOde.SQL.Add('Update dbDataBarang Set QntPBL=:2 where KodeBrg='+QuotedStr(DM.QuCari.FieldByName('KodeBrg').AsString));
        DM.QuKOde.Parameters[0].Value:=DM.QuCari.FieldByName('KodeBrg').AsString;
        DM.QuKOde.Parameters[1].Value:=DM.QuCari.FieldByName('QntSaldo').AsFloat;
        DM.QuKOde.Parameters[2].Value:=DM.QuCari.FieldByName('QntSaldo').AsFloat;
        DM.QuKOde.ExecSQL;
        dm.QuCari.Next;
      end;
    end;
    Label2.Caption := 'Proses hitung ulang selesai';
    XiProgressBar1.Position := 0;
  end
  else
    MessageDlg('Periode Sudah terkunci, tidak dapat hitung ulang',mtWarning,[mbok],0);
end;

procedure TFrHitungUlangD.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrHitungUlangD.ComboBox1Change(Sender: TObject);
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

procedure TFrHitungUlangD.TampilIsiBarang;
begin
  KodeBrows:=30011;//40201;
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

procedure TFrHitungUlangD.TampilIsiBarang2;
begin
  KodeBrows:=30011;//40201;
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

procedure TFrHitungUlangD.AwalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
  begin
      if Length(Awal.Text)=0 then TampilIsiBarang else
      begin
        if DataBersyarat('Select KodeBrg, NamaBrg, Sat1 from dbBarang where JKodeBrg=:0', [Awal.Text], DM.QuCari)=True then

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

procedure TFrHitungUlangD.AkhirKeyDown(Sender: TObject; var Key: Word;
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

