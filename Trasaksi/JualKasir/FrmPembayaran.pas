unit FrmPembayaran;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons, PBNumEdit, frxClass,
  sButtonControl, sCustomButton;

type
  TFrPembayaran = class(TForm)
    BitBtn1: TBitBtn;
    Bevel2: TBevel;
    Label23: TLabel;
    Total: TPBNumEdit;
    Label2: TLabel;
    JumlahBayar: TPBNumEdit;
    Label3: TLabel;
    Kembali: TPBNumEdit;
    NoDebet: TEdit;
    Label4: TLabel;
    BayarDebet: TPBNumEdit;
    Label5: TLabel;
    BayarKredit: TPBNumEdit;
    Label6: TLabel;
    BayarVoucher: TPBNumEdit;
    Label1: TLabel;
    Label7: TLabel;
    BankDebet: TEdit;
    TipeKreditCard: TComboBox;
    Label8: TLabel;
    NoKredit: TEdit;
    Label9: TLabel;
    BankKredit: TEdit;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    KodeCust: TEdit;
    NamaMember: TLabel;
    DiscCust: TPBNumEdit;
    Label11: TLabel;
    Label13: TLabel;
    nDiskonCust: TPBNumEdit;
    Bevel1: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label14: TLabel;
    Label15: TLabel;
    DiscHarian: TPBNumEdit;
    nDiscHarian: TPBNumEdit;
    Label16: TLabel;
    BitBtn2: TBitBtn;
    sSpeedButton1: TsSpeedButton;
    SpeedButton1: TSpeedButton;
    Label12: TLabel;
    Catatan: TEdit;
    Label17: TLabel;
    DP: TPBNumEdit;
    Label18: TLabel;
    Tax: TPBNumEdit;
    Service: TPBNumEdit;
    Label19: TLabel;
    Label40: TLabel;
    Piutang: TPBNumEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure JumlahBayarChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BayarDebetChange(Sender: TObject);
    procedure BayarKreditChange(Sender: TObject);
    procedure HitungKembali;
    procedure BayarVoucherChange(Sender: TObject);
    procedure KodeCustExit(Sender: TObject);
    procedure KodeCustEnter(Sender: TObject);
    procedure DiscCustChange(Sender: TObject);
    procedure DiscHarianChange(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IsSimpan : boolean;
    procedure TampilIsiCustomer;
    procedure CariDiskonHarian;
  end;

var
  FrPembayaran: TFrPembayaran;
  mValid:Boolean;
  vTotal:real;
  vHari:String;
implementation
uses  FrmBrows,MyGlobal,Myprocedure, MyModul, FrmJualKasir, ADODB, FrmUtama;
{$R *.DFM}


procedure TFrPembayaran.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrPembayaran.CariDiskonHarian;
begin
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Hari,Diskon,Aktif,');
    SQL.Add('case when Hari=0 then ''Minggu'' ');
    SQL.Add('     when Hari=1 then ''Senin'' ');
    SQL.Add('     when Hari=2 then ''Selasa'' ');
    SQL.Add('     when Hari=3 then ''Rabu'' ');
    SQL.Add('     when Hari=4 then ''Kamis'' ');
    SQL.Add('     when Hari=5 then ''Jumat'' ');
    SQL.Add('     when Hari=6 then ''Sabtu'' end NamaHari');
    SQL.Add('from dbDiskonHarian');
    SQL.Add('where (case when Hari=0 then ''Minggu'' ');
    SQL.Add('     when Hari=1 then ''Senin'' ');
    SQL.Add('     when Hari=2 then ''Selasa'' ');
    SQL.Add('     when Hari=3 then ''Rabu'' ');
    SQL.Add('     when Hari=4 then ''Kamis'' ');
    SQL.Add('     when Hari=5 then ''Jumat'' ');
    SQL.Add('     when Hari=6 then ''Sabtu'' end)=:0 and Aktif=1');
    Prepared;
    Parameters[0].Value:=vHari;
    Open;
  end;

  DiscHarian.Value:=DM.QuCari.FieldByName('Diskon').AsFloat;
end;

procedure TFrPembayaran.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

procedure TFrPembayaran.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then close;
end;



procedure TFrPembayaran.BitBtn1Click(Sender: TObject);
var
   j, i, Baris, T : integer;
begin

        if (vTotal<Total.Value+Tax.Value+Service.Value) and (FrJualKasir.IsOrder.Checked = False)  then
        begin
          ShowMessage('Jumlah Pembayaran Belum cukup !');
          ActiveControl:=BitBtn1;
        end
        else
        begin
          with DM.QuCari do
          begin
            Close;
            SQL.Clear;
            if FrJualKasir.IsOrder.Checked then
              SQL.Add('update dbPesanTunai set BayarTunai=:0, BayarDebet=:1, NoDebet=:2, BankDebet=:3, BayarKredit=:4,')
            else
              SQL.Add('update dbJualTunai set BayarTunai=:0, BayarDebet=:1, NoDebet=:2, BankDebet=:3, BayarKredit=:4,');
            SQL.Add('TipeKartuKredit=:5, NoKredit=:6, BankKredit=:7, BayarVoucher=:8, KodeCust=:9, DiscMember=:10, DiscHarian=:11, isCetak=1, Keterangan=:12,Piutang=:13');
            SQL.Add('where NoBukti=:14');
            Prepared;
            Parameters[0].Value:=JumlahBayar.Value;
            Parameters[1].Value:=BayarDebet.Value;
            Parameters[2].Value:=NoDebet.Text;
            Parameters[3].Value:=BankDebet.Text;
            Parameters[4].Value:=BayarKredit.Value;
            Parameters[5].Value:=TipeKreditCard.ItemIndex;
            Parameters[6].Value:=NoKredit.Text;
            Parameters[7].Value:=BankKredit.Text;
            Parameters[8].Value:=BayarVoucher.Value;
            Parameters[9].Value:=KodeCust.Text;
            Parameters[10].Value:=DiscCust.Value;
            Parameters[11].Value:=DiscHarian.Value;
            Parameters[12].Value:=Catatan.Text;
            Parameters[13].Value:=Piutang.AsFloat;
            Parameters[14].Value:=FrJualKasir.NoBukti.Text;
            ExecSQL;
          end;
          if Not FrJualKasir.IsOrder.Checked Then
          Begin
          if Piutang.AsFloat<>0 Then
          Begin
            with DM.QuCari do
             begin
                Close;
                SQL.Clear;
                SQL.Add('Insert into dbo.DBHUTPIUT(NoFaktur, NoRetur, TipeTrans, KodeCustSupp, NoBukti, NoMsk, Urut, Tanggal, JatuhTempo,');
                SQL.Add('                  Debet, Kredit,  Valas, Kurs,DebetD, KreditD, ');
                SQL.Add('                  KodeSales, Tipe, Perkiraan, Catatan, NOINVOICE,  KodeVls_, Kurs_) ');
                SQL.Add('Select  NoFaktur, NoRetur, Tipetrans, KODECUSTSUPP, Nobukti, NoMsk, urut, TANGGAL, JatuhTempo,     ');
                SQL.Add('Debet, Kredit,  Valas, KURS, ');
                SQL.Add('DebetD,  ');
                SQL.Add('KreditD,  ');
                SQL.Add('KodeSales, Tipe, PERKIRAAN, Catatan, NoInvoice, KodeVls_, Kurs_ ');
                SQL.Add('from Dbo.[fnc_PostJual]('+QuotedStr(FrJualKasir.NoBukti.Text)+') ');
                ExecSQL;
              end;
           end;
          end;
      //    Close;
          FrJualKasir.QuBeli.DisableControls;
          FrJualKasir.QuBeli.Requery;
          FrJualKasir.QuBeli.EnableControls;
          with FrJualKasir.frxDapur do
          begin
            LoadFromFile(CurrDir+'Nota\NotaJualEcer.fr3');
            PrepareReport;
           if FrUtama.XIdKoreksi='SA' Then
            DesignReport
           else
            Print;
            //DesignReport;
            //ShowReport;
          end;

          FrJualKasir.KeyPreview:=True;

          FrJualKasir.IsiNoBuktiBaru;
          FrJualKasir.TampilData;
          FrJualKasir.isPembatalan:=False;
          FrJualKasir.Pemesan.Text := '';

          if FrJualKasir.isAmbil = False then
            begin
              if FrJualKasir.IsOrder.Checked then
                begin
                  FrJualKasir.Label10.Enabled := True;
                  FrJualKasir.Label11.Enabled := True;
                  FrJualKasir.Label12.Enabled := True;
                  FrJualKasir.Alamat.Enabled  := True;
                  FrJualKasir.Telepon.Enabled := True;
                  FrJualKasir.TanggalAmbil.Enabled := True;

                  FrJualKasir.Alamat.Text  := '';
                  FrJualKasir.Telepon.Text := '';
                  FrJualKasir.TanggalAmbil.Date := Now;
                end
              else
                begin
                  FrJualKasir.Label10.Enabled := False;
                  FrJualKasir.Label11.Enabled := False;
                  FrJualKasir.Label12.Enabled := False;
                  FrJualKasir.Alamat.Enabled  := False;
                  FrJualKasir.Telepon.Enabled := False;
                  FrJualKasir.TanggalAmbil.Enabled := False;

                  FrJualKasir.Alamat.Text  := '';
                  FrJualKasir.Telepon.Text := '';
                  FrJualKasir.TanggalAmbil.Text := '  /  /    ';
                end;
              FrJualKasir.ActiveControl := FrJualKasir.Pemesan;
            end
          else
            begin
              with DM.QuCari do
                begin
                  Close;
                  SQL.Clear;
                  SQL.Add('update DBPesanTunai set IsAmbil = 1');
                  SQL.Add('where NoBukti = :0');
                  Parameters[0].Value := FrJualKasir.QuMasterNOBUKTI.AsString;
                  try
                    begin
                      ExecSQL;
                      FrJualKasir.QuMaster.Close;
                      FrJualKasir.QuMaster.Open;
                    end;
                  except
                    ShowMessage('Proses Gagal !');
                  end;
                end;

              FrJualKasir.Pemesan.Text := FrJualKasir.QuMasterPemesan.AsString;
              FrJualKasir.Alamat.Text  := FrJualKasir.QuMasterAlamat.AsString;
              FrJualKasir.Telepon.Text := FrJualKasir.QuMasterTelepon.AsString;
              FrJualKasir.TanggalAmbil.Date := FrJualKasir.QuMasterTanggalAmbil.AsDateTime;
            end;
          FrPembayaran.Close;

          for i := 1 to FrJualKasir.CountBarang do
          begin
            try
               FrJualKasir.TBarang[i].Free;
               FrJualKasir.TBarang[i] := Nil;
            except

            end;
          end;

          for i := 1 to FrJualKasir.CountToping do
          begin
            try
               FrJualKasir.TToping[i].Free;
               FrJualKasir.TToping[i] := Nil;
            except

            end;
          end;
          with dm.QuCari do
          begin
            close;
            sql.Clear;
            sql.Add('Select NamaSubGrp NamaGroup from dbSubGroup where KodeGrp=''BJ'' Order by NamaSubGrp');
            Open;
          end;
          for i := 1 to DM.QuCari.RecordCount do
          begin
            try
               Grp[i].Free;
               grp[i] := Nil;
            except

            end;
          end;
          FrJualKasir.HapusBtn.Enabled:=true;
          FrJualKasir.BuatDaftGroup;
          vTotal:=0;

        end;


end;

procedure TFrPembayaran.JumlahBayarChange(Sender: TObject);
begin
  HitungKembali;
end;

procedure TFrPembayaran.HitungKembali;
begin
  vTotal:=(JumlahBayar.Value+BayarDebet.Value+BayarKredit.Value+BayarVoucher.Value+DP.Value+Piutang.AsFloat);
  Kembali.Value:=(JumlahBayar.Value+BayarDebet.Value+BayarKredit.Value+BayarVoucher.Value+DP.Value+Piutang.AsFloat)-(Total.Value+Tax.Value+Service.Value);
end;

procedure TFrPembayaran.FormShow(Sender: TObject);
begin
  ActiveControl:=KodeCust;
  vHari:=FormatDateTime('dddd',Date);
  if FrJualKasir.isAmbil = False then CariDiskonHarian;
  if FrJualKasir.isPembatalan=True then
  begin
    Label12.Visible:=True;
    Catatan.Visible:=True;
  end else
  begin
    Label12.Visible:=False;
    Catatan.Visible:=False;
  end;
  ////
  if FrJualKasir.pageOrder.ActivePageIndex=1 Then
  Begin
   //JumlahBayar.AsFloat:=FrJualKasir.QuBeli.FieldByName('BayarTunai').AsFloat;
   //BayarDebet.AsFloat:=FrJualKasir.QuBeli.FieldByName('BayarDebet').AsFloat;
   //BayarKredit.AsFloat:=FrJualKasir.QuBeli.FieldByName('BayarKredit').AsFloat;
   Piutang.AsFloat:=FrJualKasir.QuBeli.FieldByName('Piutang').AsFloat;
  end;
  ///

end;

procedure TFrPembayaran.BayarDebetChange(Sender: TObject);
begin
//  Kembali.Value:=JumlahBayar.Value-Total.Value;
  if BayarDebet.Value>0 then
  begin
    Label1.Visible:=True;
    NoDebet.Visible:=True;
    Label7.Visible:=True;
    BankDebet.Visible:=True;
  end
  else
  begin
    Label1.Visible:=False;
    NoDebet.Visible:=False;
    Label7.Visible:=False;
    BankDebet.Visible:=False;
  end;

  HitungKembali;
end;

procedure TFrPembayaran.BayarKreditChange(Sender: TObject);
begin
//  Kembali.Value:=JumlahBayar.Value-Total.Value;
  if BayarKredit.Value>0 then
  begin
    TipeKreditCard.Visible:=True;
    Label8.Visible:=True;
    NoKredit.Visible:=True;
    Label9.Visible:=True;
    BankKredit.Visible:=True;
  end
  else
  begin
    TipeKreditCard.Visible:=False;
    Label8.Visible:=False;
    NoKredit.Visible:=False;
    Label9.Visible:=False;
    BankKredit.Visible:=False;
  end;

  HitungKembali;
end;

procedure TFrPembayaran.BayarVoucherChange(Sender: TObject);
begin
  HitungKembali;
end;

procedure TFrPembayaran.TampilIsiCustomer;
begin
  isSO:=False;
  KodeBrows:=81;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeCust.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    with FrBrows.QuBrows do
    begin
       KodeCust.Text:=fieldbyname('KODECUSTSUPP').AsString;
       NamaMember.Caption:='[ '+fieldbyname('NAMACUSTSUPP').AsString+' ]';
       DiscCust.Value:=fieldbyname('DiscMember').AsFloat;
    end;
  end
  else
    ActiveControl:=KodeCust;
end;

procedure TFrPembayaran.KodeCustExit(Sender: TObject);
begin
  if mValid Then
  begin
    if length(KodeCust.Text)=0 then TampilIsiCustomer else
    begin
      if DataBersyarat('Select KODECUSTSUPP,NAMACUSTSUPP,Alamat1+Char(13)+Alamat2+Char(13)+kota Alamat,TELPON,DiscMember  ' +
                      'from DBCUSTSUPP a '+
                      'where (a.KODECUSTSUPP like :0) or (a.NAMACUSTSUPP like :1) Order by KODECUSTSUPP',[KodeCust.Text,KodeCust.text],Dm.Qucari)=true then
      begin
        with DM.QuCari do
        begin
           KodeCust.Text:=fieldbyname('KODECUSTSUPP').AsString;
           NamaMember.Caption:='[ '+fieldbyname('NAMACUSTSUPP').AsString+' ]';
           if FrJualKasir.isAmbil = False then
             DiscCust.Value:=fieldbyname('DiscMember').AsFloat
           else
             DiscCust.Value:=0;
        end;
      end
      else TampilIsiCustomer;
    end;
    if FrJualKasir.isAmbil = False then DP.Value := 0;
  end;
end;

procedure TFrPembayaran.KodeCustEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrPembayaran.DiscCustChange(Sender: TObject);
begin
  nDiskonCust.Value:=FrJualKasir.Grandtotal2.Value*(DiscCust.Value/100);
  Total.Value:=FrJualKasir.Grandtotal2.Value-(nDiskonCust.Value+nDiscHarian.Value);
end;

procedure TFrPembayaran.DiscHarianChange(Sender: TObject);
begin
  nDiscHarian.Value:=FrJualKasir.Grandtotal2.Value*(DiscHarian.Value/100);
  Total.Value:=FrJualKasir.Grandtotal2.Value-(nDiskonCust.Value+nDiscHarian.Value);
end;

procedure TFrPembayaran.sSpeedButton1Click(Sender: TObject);
begin
  mValid :=true;
  TampilIsiCustomer;
  mValid := False;
end;

procedure TFrPembayaran.SpeedButton1Click(Sender: TObject);
begin
  FrJualKasir.QuBeli.DisableControls;
  FrJualKasir.QuBeli.Requery;
  FrJualKasir.QuBeli.EnableControls;

  with FrJualKasir.frxDapur do
    begin
      LoadFromFile(CurrDir+'Nota\NotaJualEcer.fr3');
      DesignReport;
    end;

  FrJualKasir.QuBeli.Close;
  FrJualKasir.QuBeli.Open;

end;

end.
