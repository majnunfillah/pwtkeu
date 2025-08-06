unit FrmHitungUlang;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, PBNumEdit, Db, ADODB, ComCtrls, ExtCtrls, Gauges,Buttons,
  XiProgressBar, RxGIF, jpeg;

type
  TFrHitungUlang = class(TForm)
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
  FrHitungUlang: TFrHitungUlang;
  Maks:integer;
  posisi,count:real;

implementation
uses FrmBrows,MyProcedure,MyGlobal,MyModul;
{$R *.DFM}

Procedure TFrHitungUlang.ProsesAkhirBulan(xBulan,xTahun:integer);
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
    sql.Add('Select b.Kodebrg, c.Namabrg, b.kodegdg, b.SaldoQnt QntAwal, b.Saldo2Qnt Qnt2Awal, b.SaldoRp HrgAwal, B.HrgRata');
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

procedure TFrHitungUlang.FormShow(Sender: TObject);
begin
   Bulan.Value:=Strtoint(PeriodBln);                       
   Tahun.Value:=Strtoint(PeriodThn);
end;

procedure TFrHitungUlang.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then sendmessage(handle,WM_NEXTDLGCTL,0,0)
else if key=27 then close;
end;

procedure TFrHitungUlang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=cafree;
end;

procedure TFrHitungUlang.BitBtn1Click(Sender: TObject);
begin
  if MyCek_Lock_PeriodeProses(Bulan.Text,Tahun.Text) then
  begin
    //Delay(3);
    LoggingData(IDUser,'','','',' Hitung Ulang Periode '+Bulan.Text+'-'+Tahun.Text);
    Label2.Caption := 'Inisialisasi';
    Application.ProcessMessages;
    with Dm.QuCari do
    begin
      close;
      sql.Clear;
      sql.Add('Declare @bulan int,@Tahun int,@Kodebrg1 Varchar(25), @kodebrg2 varchar(25)');
      Sql.Add('Select @Kodebrg1=:0, @Kodebrg2=:1, @bulan=:2, @tahun=:3');
      sql.Add('Update dbstockbrg set ');
      sql.Add('QNTPBL=0, QNT2PBL=0, QNTRPB=0, QNT2RPB=0, ');
      Sql.add('QNTPNJ=0, QNT2PNJ=0, QNTRPJ=0, QNT2RPJ=0, ');
      Sql.add('QntUKI=0, Qnt2UKI=0, QntUKO=0, Qnt2UKO=0, ');
      sql.add('QntTRI=0, Qnt2TRI=0, QntTRO=0, Qnt2TRO=0, ');
      sql.add('QNTADI=0, QNT2ADI=0, QNTADO=0, QNT2ADO=0, ');
      sql.add('QNTPMK=0, QNT2PMK=0, QNTRPK=0, QNT2RPK=0, ');
      sql.add('QNTHPRD=0, QNT2HPRD=0 ');
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

    with DM.QuKOde do
    Begin
      close;
      sql.Clear;
      sql.Add('Select a.Tipe,a.Kodebrg, b.Namabrg, Sum(Case when Isnull(a.QntDB,0)<>0 then Isnull(a.QntDB,0) else Isnull(a.QntCR,0) end) Qnt, sum(Case when Isnull(a.Qnt2DB,0)<>0 then Isnull(a.Qnt2DB,0) else Isnull(a.Qnt2CR,0) end) Qnt2, a.KodeGdg');
      sql.add('from vwkartuStock a');
      sql.add('     left outer join dbbarang b on b.kodebrg=a.kodebrg');
      sql.add('where  Bulan=:0 and tahun=:1');
      if ComboBox1.ItemIndex=1 then
      begin
        sql.add('and (a.kodebrg between :2 and :3) ');
        sql.add('Group by a.Tipe,a.Kodebrg,b.Namabrg,a.Kodegdg');
        sql.add('Order by a.Tipe,a.Kodebrg,a.Kodegdg');
        Prepared;
        Parameters[0].Value := Bulan.AsInteger;
        Parameters[1].Value := Tahun.AsInteger;
        Parameters[2].Value :=Awal.Text;
        Parameters[3].Value :=Akhir.Text;
      end
      else
      begin
        Prepared;
        sql.add('Group by a.Tipe,a.Kodebrg,b.Namabrg,a.Kodegdg');
        sql.add('Order by a.Tipe,a.Kodebrg,a.Kodegdg');
        Parameters[0].Value := Bulan.AsInteger;
        Parameters[1].Value := Tahun.AsInteger;
      end;

      Open;
    end;
    if not DM.QuKOde.IsEmpty then
    begin
      XiProgressBar1.Position := 0;
      XiProgressBar1.Max := DM.QuKode.RecordCount;
      SP_HITUNGULANG.Close;
      SP_HITUNGULANG.ProcedureName :='Sp_HitungUlang;1';
      while not DM.QuKOde.Eof do
      begin
        XiProgressBar1.Position := XiProgressBar1.Position+1;
        Label2.Caption := 'Hitung Ulang Kode : '+ DM.Qukode.Fieldbyname('kodebrg').AsString +#13+
                          'Nama Barang : '+DM.QuKode.Fieldbyname(
                            'Namabrg').AsString;
        Application.ProcessMessages;
         with SP_HITUNGULANG do
         begin
           close;

           Parameters.Refresh;
           Parameters[1].Value := dm.QuKOde.Fieldbyname('Tipe').AsString;
           Parameters[2].Value := Bulan.AsInteger;
           Parameters[3].Value := Tahun.AsInteger;
           Parameters[4].Value := dm.QuKOde.Fieldbyname('Kodebrg').AsString;
           Parameters[5].Value := dm.QuKOde.Fieldbyname('Kodegdg').AsString;
           Parameters[6].Value := dm.QuKOde.Fieldbyname('Qnt').AsFloat;
           Parameters[7].Value := dm.QuKOde.Fieldbyname('Qnt2').AsFloat;
                 Label2.Caption := 'Hitung Ulang Kode : '+ DM.Qukode.Fieldbyname('kodebrg').AsString +#13+
                          'Nama Barang : '+DM.QuKode.Fieldbyname('Namabrg').AsString +#13+  DM.QuKode.Fieldbyname('Tipe').AsString +' '+ inttostr(DM.QuKode.recno);

           ExecProc;

         end;
                 Label2.Caption := 'Hitung Ulang Kode : '+ DM.Qukode.Fieldbyname('kodebrg').AsString +#13+
                          'Nama Barang : '+DM.QuKode.Fieldbyname('Namabrg').AsString +#13+  DM.QuKode.Fieldbyname('Tipe').AsString +' '+ inttostr(DM.QuKode.recno);
        Application.ProcessMessages;
        dm.QuKOde.Next;
      end;
    end;
    ProsesAkhirBulan(Bulan.AsInteger,Tahun.AsInteger);
    Label2.Caption := 'Proses hitung ulang selesai';
    XiProgressBar1.Position := 0;
  end
  else
    MessageDlg('Periode Sudah terkunci, tidak dapat hitung ulang',mtWarning,[mbok],0);
end;

procedure TFrHitungUlang.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrHitungUlang.ComboBox1Change(Sender: TObject);
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

procedure TFrHitungUlang.TampilIsiBarang;
begin
  KodeBrows:=300161;//40201;
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

procedure TFrHitungUlang.TampilIsiBarang2;
begin
  KodeBrows:=300161;//40201;
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

procedure TFrHitungUlang.AwalKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrHitungUlang.AkhirKeyDown(Sender: TObject; var Key: Word;
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

