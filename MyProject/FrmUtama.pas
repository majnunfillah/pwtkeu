unit FrmUtama;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, ADODB, Menus, ComCtrls,StrUtils;

type

  TFrUtama = class(TForm)
    QuMenu: TADOQuery;
    Timer1: TTimer;
    //QuMenu: TADOQuery;
    Panel1: TPanel;
    Image1: TImage;
    quGambar: TADOQuery;
    StatusBar1: TStatusBar;
    StatusBar2: TStatusBar;
    procedure MyAppHandler(Sender : TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CekUser;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
    XLevelKoreksi:Boolean;
    IdKoreksi:string;
    procedure SettingAwalGlobal;

  public
    { Public declarations }
    MyMainMenu : TMainMenu;
    TMenu : Array[0..5] of  TMenuItem;
    MyOL : Array of Integer;
    JmlLogin:integer;
    IsPesan : Boolean;
    Property  LevelKoreksi:Boolean Read  XLevelKoreksi write XLevelKoreksi;
    Property  XIdKoreksi:String Read IdKoreksi write IdKoreksi;
  end;

var
  FrUtama: TFrUtama;


implementation
uses MyModul, MyGlobal, MyProcedure, FrmBrows, FrmLogin, FrmSetupPeriode,
  FrmPemakai, FrmLockPeriod, FrmPassword, FrmKonfigurasi, FrmReportPreview,
  FrmPerkiraan, FrmAktiva, FrmPosting, FrmHutang, FrmPiutang,
  FrmGiro, FrmMainKasBank, FrmNeraca, FrmLR,
  FrmCustomer, FrmSupplier, FrmMainMemorial, FrmValas, FrmDeposito,
  FrmProsesTutupBuku, FrmHitungUlang, FrmAktivitasUser,
  frmDaftarMenu, FrmBon, FrmMainRJual,frmGroup,
  FrmTipeTrans, FrmMainBeli, FrmMainJual, FrmUMHutang,
  FrmUMPiutang, FrmMainRBeli, FrmAjcTransfer, FrmAjcTransferPajak,
  FrmBarang, FrmBarangL, FrmBarangJ, FrmDepart, FrmMainBPPB, FrmMainPPL,
  FrmMainPO, FrmMainBeliNota, FrmMainPB, FrmGudang, FrmEkspedisi,
  FrmMainRBeliGdg, FrmMainBPPBT, FrmMainSPK, FrmMainRPB, FrmMainBeliRe,
  FrmKota, FrmKaryawan, FrmSales, FrmArea, FrmBarangCust,
  FrmBarangDanKomisi, FrmMainSO, FrmMainInv, FrmMainDebetN, FrmMainPORev,
  FrmMainUbahKemasan, FrmMainKoreksi, FrmMainKoreksiBJ,
  FrmMainUbahKemasanBJ, FrmMainSPP, FrmMainInvoicePL, FrmMainSPB,
  FrmMainSPBRJual, FrmHitungUlangD, FrmMainKreditN, FrmJabatan,
   FrmBiaya, FrmMainRSPB, FrmMainTransfer, FrmMainLunas,
  FrmDasboard, FrmFakturPajak, FrmFakturPajakRbeli,FrmHPPProduksi,
  FrmMainInvoiceRPJ, frmRata2, FrmMainPBSampel, FrmMainRPBSampel,
  FrmJenisTambahan, FrmJualKasir, FrmDiskonHarian, FrmJualKasirOrder,
  FrmPajak, FrmMainSPKPesan, FrmMainHasilPPesan, FrmMainJualKasir,
  FrmPostingJurnalOto, FrmASM, FrmBOM, FrmDevisi, FrmJenisCust,
  FrmMainPROut, FrmMainPOOut, FrmMainSORev, FrmMainCloseSO, FrmMainHasilP,
  FrmMainUMInvoicePL, FrmProses,  FrmJadwalPRD, FrmBiayaProses,
  FrmTarifTenaker, FrmMainJadwalProduksi, FrmMainKoreksiDk,
  FrmMainBeliBahan, FrmMainProduksi, FrmMainPBJadi, FrmProsesProduksi,
  FrmDesain, FrmArusKas, FrmLapArusKas, FrmAktivaFk,
  FrmPostingUlangJurnalOto, FrmMesin, FrmMainFinishing, FrmJenisMesin,
  FrmMainPBLain, FrmMainRPBLain, FrmProsesTutupBukuFiskal,
  FrmMainMemorialLain, FrmMainAnggaran;
{$R *.DFM}

procedure TFrUtama.SettingAwalGlobal;
begin
  gDatabaseStk:=DM.MyStock.DefaultDatabase;
  if not DM.TaNomor.Active then
     DM.TaNomor.Active := True;
end;

procedure TFrUtama.CekUser;
begin
  if MyCariPeriode(IDUSER)=true then
  begin
     frutama.StatusBar1.Panels[2].Text:='Periode '+PeriodBln+'/'+PeriodThn;
     StatusBar1.Panels[4].Text := 'Tanggal : '+DateToStr(Date);
     SetUpTgl:=EncodeDate(Strtoint(PeriodThn),StrtoInt(PeriodBln),1);
  end
  else
  begin
    Application.CreateForm(TFrSetUpPeriode, frSetUpPeriode);
    frSetUpPeriode.Tahun.Value := StrToFloat(FormatDateTime('YYYY',Date));
    frSetUpPeriode.Showmodal;
  end;
end;

procedure TFrUtama.FormShow(Sender: TObject);
var
  mStatus, Mlevel : integer;
begin
  SimbolFlagMenu[0]:='A';
  SimbolFlagMenu[1]:='B';
  currDir := ExtractFilePath(Application.ExeName);
  FrUtama.Caption:=Application.Title;
  frLogin := TFrLogin.Create(Self);
  if frLogin.ShowModal=mrCancel then
     Application.Terminate
  else
  begin
    WindowState:=wsMaximized;
    IDUser:=UpperCase(frLogin.namaUser.Text);
    if IDUser='SA' then
       UpdateStatusUser(IDUser, 0);
    if (MyCariUserName(IdUser,frlogin.Kunci.Text,mStatus, Mlevel)=true) then
    begin
        if mStatus=0 then
      begin
         UpdateStatusUser(IDUser, 1);
         LevelUserAccess:=MLevel;
         if Not quMenu.Active then
            qumenu.Active := True;
          with QuMenu do
          begin
            Close;
            SQL.Clear;
            SQL.Add('Select A.USERID, B.L0, B.KodeMenu L1, B.Keterangan Caption, B.ACCESS, A.HASACCESS, A.ISTAMBAH, A.ISKOREKSI, A.ISHAPUS, A.ISCETAK,');
            sql.add('       A.ISEXPORT, A.TIPE');
            sql.add('from DBFLMENU A');
            Sql.add('     left outer join dbMenu B on B.Kodemenu=A.L1');
            Sql.Add('where A.Userid=:0');
            Sql.Add('Order by A.Userid, A.L1');
            Prepared;
            Parameters[0].Value:=IDUser;
            Open;
          end;

          quMenu.First;
          MyMainMenu := TMainMenu.Create(Self);
          While (Not QuMenu.Eof)Do
          Begin
            if quMenu.FieldByName('L0').Asinteger=0 then
            Begin
              if quMenu.FieldByName('HASACCESS').AsBoolean Then
              Begin
                TMenu[0] := TMenuItem.Create(Self);
                TMenu[0].Caption := quMenu.fieldbyname('Caption').Asstring;
                if quMenu.FieldByName('CAPTION').AsString = 'Jendela' Then
                Begin
                  TMenu[0].Name := 'MyWindow';
                  frUtama.WindowMenu := TMenu[0];
                end;
                MyMainMenu.Items.Add(TMenu[0]);
              end;
            end
            else
            Begin
              if quMenu.FieldByName('HASACCESS').AsBoolean Then
              Begin
                TMenu[qumenu.FieldByName('L0').Asinteger] := TMenuItem.Create(Self);
                TMenu[quMenu.FieldByName('L0').Asinteger].Caption := qumenu.fieldbyname('Caption').Asstring;
                TMenu[quMenu.FieldByName('L0').Asinteger].Tag := quMenu.FieldByName('Access').AsInteger;
                TMenu[quMenu.FieldByName('L0').Asinteger].Hint := QuMenu.FieldByname('L1').Value;
                TMenu[quMenu.FieldByName('L0').Asinteger].OnClick := MyAppHandler;
                TMenu[quMenu.FieldByName('L0').Asinteger-1].Add(TMenu[qumenu.FieldByName('L0').Asinteger]);
              end;
            end;
            quMenu.Next;
          End;
          StatusBar1.Panels[1].Text:='Username : '+IDUser;
          SettingAwalGlobal;
          CekUser;
          Frutama.Menu:=MyMainMenu;
          Timer1.Enabled:=true;
      end
      else
      begin
        ShowMessage('Sorry, User : '+IDUser+' already Login !');
        Inc(JmlLogin);
        if JmlLogin > 3 then
           Application.Terminate else
        FormShow(sender);
      end;
    end
    else
    begin
      ShowMessage('Sorry, Login Failed ! Check User Name and Password.');
      Inc(JmlLogin);
      if JmlLogin > 3 then
         Application.Terminate
      else
      begin
        FormShow(sender);
      end
    end;
  end;
end;

procedure TfrUtama.MyAppHandler(Sender : TObject);
var i,iForm : integer; mStatus, Mlevel : integer;
MMenu,IdKunci : String;
begin
  With Sender as TMenuItem Do Begin
      DataBersyarat('Select Kodemenu from dbMenu where access=:0',[Tag], Dm.Qucari);
         MMenu:=dm.QuCari.fieldbyname('kodemenu').AsString;
    Case Tag of
       1   :begin
               if FrUtama.MDIChildCount>0 then
               begin
                 Application.MessageBox('Semua Form harus ditutup dahulu','Informasi',MB_OK+MB_ICONINFORMATION+MB_DEFBUTTON1);
               end else
               begin
                 Application.CreateForm(TfrSetUpPeriode, frSetUpPeriode);
                 frSetUpPeriode.ShowModal;
               end;
               //Application.CreateForm(TfrSetUpPeriode, frSetUpPeriode);
               //frSetUpPeriode.ShowModal;
            end;
       2   :begin
               Application.CreateForm(TFrLockPeriod, FrLockPeriod);
               FrLockPeriod.ShowModal;
            end;
       3   :begin
               Application.CreateForm(TFrKonfigurasi, FrKonfigurasi);
               FrKonfigurasi.ShowModal;
            end;
      31   :begin
                if Assigned(FrDaftarMenu) then
                   FrDaftarMenu.Show
                else
                begin
                   Application.CreateForm(TFrDaftarMenu, FrDaftarMenu);
                   CekOtoritasMenu(IDUser,Tag,FrDaftarMenu.Istambah,
                   FrDaftarMenu.IsHapus,FrDaftarMenu.IsKoreksi,FrDaftarMenu.IsCetak,
                   FrDaftarMenu.IsExcel);
                   FrDaftarMenu.Show;
                end;
                FrDaftarMenu.WindowState:=wsMaximized;
            end;
       4   :begin
                if Assigned(FrPemakai) then
                   FrPemakai.Show
                else
                begin
                   Application.CreateForm(TFrPemakai, FrPemakai);
                   CekOtoritasMenu(IDUser,Tag,frPemakai.Istambah,
                   FrPemakai.IsHapus,FrPemakai.IsKoreksi,FrPemakai.IsCetak,
                   FrPemakai.IsExcel);
                   FrPemakai.Show;
                end;
                FrPemakai.WindowState:=wsMaximized;
            end;
       5  :begin
               Application.CreateForm(TfrPassword, frPassword);
               frPassword.ShowModal;
            end;
       6  :begin
             if (WinExec ('c:\windows\System32\calc.exe',SW_SHOWMAXIMIZED) < 32) then
             if (WinExec ('c:\winNT\System32\calc.exe',SW_SHOWMAXIMIZED) < 32) then
                 MessageDlg ('Gagal menjalankan Program Calculator ', mtError, [mbOK],0);
           end;
       7  :begin
               JmlLogin:=1;
               iForm:=0;
               with FrUtama do
               begin
                  for i := MDIChildCount-1 downto 0 do
                  begin
                       inc(iform);
                  end;
               end;
               if iform=0 then
               begin
                   MyMainMenu.Destroy;
                   UpdateStatusUser(IDUser,0);
                   FormShow(Sender);
               end else
               begin
                   Showmessage('Semua Modul Harus di Tutup dulu, sebelum log off!');
               end;
            end;
       8   :begin
               Close;
            end;
     1001001
        :begin
           if Assigned(FrPerkiraan) then
              FrPerkiraan.Show
           else
           begin
              Application.CreateForm(TFrPerkiraan, FrPerkiraan);
              CekOtoritasMenu(IDUser,tag,FrPerkiraan.Istambah,FrPerkiraan.Ishapus,
              FrPerkiraan.Iskoreksi, FrPerkiraan.isCetak, FrPerkiraan.isExcel);
              FrPerkiraan.Show;
           end;
           FrPerkiraan.WindowState:=wsMaximized;
         end;
     1001002
        :begin
           if Assigned(FrAktiva) then
              FrAktiva.Show
           else
           begin
              Application.CreateForm(TFrAktiva, FrAktiva);
              CekOtoritasMenu(IDUser,tag,FrAktiva.Istambah,FrAktiva.Ishapus,
              FrAktiva.Iskoreksi, FrAktiva.isCetak, FrAktiva.isExcel);
              FrAktiva.Show;
           end;
           FrAktiva.WindowState:=wsMaximized;
         end;
     10010021
        :begin
           if Assigned(FrAktivaFk) then
              FrAktivaFK.Show
           else
           begin
              Application.CreateForm(TFrAktivaFk, FrAktivaFk);
              CekOtoritasMenu(IDUser,tag,FrAktivaFk.Istambah,FrAktivaFk.Ishapus,
              FrAktivaFk.Iskoreksi, FrAktivaFk.isCetak, FrAktivaFk.isExcel);
              FrAktivaFk.Show;
           end;
           FrAktivaFk.WindowState:=wsMaximized;
         end;
    1002015
        :begin
                if Assigned(FrGroup) then
                   FrGroup.Show
                else
                begin
                   Application.CreateForm(TFrGroup, FrGroup);
                   CekOtoritasMenu(IDUser,Tag,FrGroup.Istambah,
                   FrGroup.IsHapus,FrGroup.IsKoreksi,FrGroup.IsCetak,
                   FrGroup.IsExcel);
                   FrGroup.Show;
                end;
                FrGroup.WindowState:=wsMaximized;
            end;
     1002016
        :begin
                if Assigned(FrBarang) then
                   FrBarang.Show
                else
                begin
                   Application.CreateForm(TFrBarang, FrBarang);
                   CekOtoritasMenu(IDUser,Tag,FrBarang.Istambah,
                   FrBarang.IsHapus,FrBarang.IsKoreksi,FrBarang.IsCetak,
                   FrBarang.IsExcel);
                   FrBarang.Show;
                end;
                FrBarang.WindowState:=wsMaximized;
            end;
{
     1002017
        :begin
                if Assigned(FrBarangL) then
                   FrBarangL.Show
                else
                begin
                   Application.CreateForm(TFrBarangL, FrBarangL);
                   CekOtoritasMenu(IDUser,Tag,FrBarangL.Istambah,
                   FrBarangL.IsHapus,FrBarangL.IsKoreksi,FrBarangL.IsCetak,
                   FrBarangL.IsExcel);
                   FrBarangL.Show;
                end;
                FrBarangL.WindowState:=wsMaximized;
            end;
}
     {1002017
        :begin
                if Assigned(FrJenisTambahan) then
                   FrJenisTambahan.Show
                else
                begin
                   Application.CreateForm(TFrJenisTambahan, FrJenisTambahan);
                   CekOtoritasMenu(IDUser,Tag,FrJenisTambahan.Istambah,
                   FrJenisTambahan.IsHapus,FrJenisTambahan.IsKoreksi,FrJenisTambahan.IsCetak,
                   FrJenisTambahan.IsExcel);
                   FrJenisTambahan.Show;
                end;
                FrJenisTambahan.WindowState:=wsMaximized;
            end; }
            1002017  : begin
                 if Assigned(FrBarangL) then
                   FrBarangL.Show
                 else
                 begin
                   Application.CreateForm(TFrBarangL, FrBarangL);
                   CekOtoritasMenu(IDUser,Tag,FrBarangL.Istambah,
                   FrBarangL.IsHapus,FrBarangL.IsKoreksi,FrBarangL.IsCetak,
                   FrBarangL.IsExcel);
                   FrBarangL.Show;
                 end;
                 FrBarangL.WindowState:=wsMaximized;
               end;
{     1002018
        :begin
                if Assigned(FrBarangJ) then
                   FrBarangJ.Show
                else
                begin
                   Application.CreateForm(TFrBarangJ, FrBarangJ);
                   CekOtoritasMenu(IDUser,Tag,FrBarangJ.Istambah,
                   FrBarangJ.IsHapus,FrBarangJ.IsKoreksi,FrBarangJ.IsCetak,
                   FrBarangJ.IsExcel);
                   FrBarangJ.Show;
                end;
                FrBarangJ.WindowState:=wsMaximized;
            end;  }
     1002018
        :begin
                if Assigned(FrBarangJ) then
                   FrBarangJ.Show
                else
                begin
                   JenisBJ:='BJB';
                   NamaBJ:='[ Barang Jadi Beli]';
                   Application.CreateForm(TFrBarangJ, FrBarangJ);



                   FrBarangJ.Caption:='Master Barang Jadi Beli';
                   CekOtoritasMenu(IDUser,Tag,FrBarangJ.Istambah,
                   FrBarangJ.IsHapus,FrBarangJ.IsKoreksi,FrBarangJ.IsCetak,
                   FrBarangJ.IsExcel);
                   FrBarangJ.Show;
                end;
                FrBarangJ.WindowState:=wsMaximized;
            end;
     1002021
        :begin
                if Assigned(FrBarangJ) then
                   FrBarangJ.Show
                else
                begin
                   JenisBJ:='BJP';
                   Application.CreateForm(TFrBarangJ, FrBarangJ);
                   NamaBJ:='[ Barang Jadi Produksi]';
                   FrBarangJ.Caption:='Master Barang Jadi Produksi';
                   CekOtoritasMenu(IDUser,Tag,FrBarangJ.Istambah,
                   FrBarangJ.IsHapus,FrBarangJ.IsKoreksi,FrBarangJ.IsCetak,
                   FrBarangJ.IsExcel);
                   //frbarangj.Visible:=true;
                   FrBarangJ.Show;
                end;
                FrBarangJ.WindowState:=wsMaximized;
            end;
     1002022
        :begin
                if Assigned(FrBarangJ) then
                   FrBarangJ.Show
                else
                begin
                   JenisBJ:='BLB';
                   Application.CreateForm(TFrBarangJ, FrBarangJ);

                   NamaBJ:='[ Barang Langsung Biaya ]';
                   FrBarangJ.Caption:='Master Barang Langsung Biaya';
                   CekOtoritasMenu(IDUser,Tag,FrBarangJ.Istambah,
                   FrBarangJ.IsHapus,FrBarangJ.IsKoreksi,FrBarangJ.IsCetak,
                   FrBarangJ.IsExcel);
                   FrBarangJ.Show;
                end;
                FrBarangJ.WindowState:=wsMaximized;
            end;

     1002023
        :begin
                if Assigned(FrBarangJ) then
                   FrBarangJ.Show
                else
                begin
                   JenisBJ:='BLL';
                   Application.CreateForm(TFrBarangJ, FrBarangJ);

                   NamaBJ:='[ Barang Langsung Biaya ]';
                   FrBarangJ.Caption:='Master Barang Langsung Biaya';
                   CekOtoritasMenu(IDUser,Tag,FrBarangJ.Istambah,
                   FrBarangJ.IsHapus,FrBarangJ.IsKoreksi,FrBarangJ.IsCetak,
                   FrBarangJ.IsExcel);
                   FrBarangJ.Show;
                end;
                FrBarangJ.WindowState:=wsMaximized;
            end;

     1002019
        :begin
                if Assigned(FrDepart) then
                   FrDepart.Show
                else
                begin
                   Application.CreateForm(TFrDepart, FrDepart);
                   CekOtoritasMenu(IDUser,Tag,FrDepart.Istambah,
                   FrDepart.IsHapus,FrDepart.IsKoreksi,FrDepart.IsCetak,
                   FrDepart.IsExcel);
                   FrDepart.Show;
                end;
                FrDepart.WindowState:=wsMaximized;
            end;
     1001003
        :begin
           if Assigned(Frhutang) then
              Frhutang.Show
           else
           begin
              Application.CreateForm(TFrhutang, Frhutang);
              CekOtoritasMenu(IDUser,tag,Frhutang.Istambah,Frhutang.Ishapus,
              Frhutang.Iskoreksi, Frhutang.isCetak, Frhutang.isExcel);
              Frhutang.Show;
           end;
           Frhutang.WindowState:=wsMaximized;
         end;
     10010031
        :begin
           if Assigned(FrUMhutang) then
              FrUMhutang.Show
           else
           begin
              Application.CreateForm(TFrUMhutang, FrUMhutang);
              CekOtoritasMenu(IDUser,tag,FrUMhutang.Istambah,FrUMhutang.Ishapus,
              FrUMhutang.Iskoreksi, FrUMhutang.isCetak, FrUMhutang.isExcel);
              FrUMhutang.Show;
           end;
           FrUMhutang.WindowState:=wsMaximized;
         end;
     1001004
        :begin
           if Assigned(FrPiutang) then
              FrPiutang.Show
           else
           begin
              Application.CreateForm(TFrPiutang, FrPiutang);
              CekOtoritasMenu(IDUser,tag,FrPiutang.Istambah,FrPiutang.Ishapus,
              FrPiutang.Iskoreksi, FrPiutang.isCetak, FrPiutang.isExcel);
              FrPiutang.Show;
           end;
           FrPiutang.WindowState:=wsMaximized;
         end;
     10010041
        :begin
           if Assigned(FrUMPiutang) then
              FrUMPiutang.Show
           else
           begin
              Application.CreateForm(TFrUMPiutang, FrUMPiutang);
              CekOtoritasMenu(IDUser,tag,FrUMPiutang.Istambah,FrUMPiutang.Ishapus,
              FrUMPiutang.Iskoreksi, FrUMPiutang.isCetak, FrUMPiutang.isExcel);
              FrUMPiutang.Show;
           end;
           FrUMPiutang.WindowState:=wsMaximized;
         end;
     1001005
        :begin
           if Assigned(FrGiro) then
              FrGiro.Show
           else
           begin
              Application.CreateForm(TFrGiro, FrGiro);
              CekOtoritasMenu(IDUser,tag,FrGiro.Istambah,FrGiro.Ishapus,
              FrGiro.Iskoreksi, FrGiro.isCetak, FrGiro.isExcel);
              FrGiro.Show;
           end;
           FrGiro.WindowState:=wsMaximized;
         end;
     10010051
        :begin
           if Assigned(FrDeposito) then
              FrDeposito.Show
           else
           begin
              Application.CreateForm(TFrDeposito, FrDeposito);
              CekOtoritasMenu(IDUser,tag,FrDeposito.Istambah,FrDeposito.Ishapus,
              FrDeposito.Iskoreksi, FrDeposito.isCetak, FrDeposito.isExcel);
              FrDeposito.Show;
           end;
           FrDeposito.WindowState:=wsMaximized;
         end;
      1001006
        :begin
           if Assigned(FrLR) then
              FrLR.Show
           else
           begin
              Application.CreateForm(TFrLR, FrLR);
              CekOtoritasMenu(IDUser,tag,FrLR.Istambah,FrLR.Ishapus,
              FrLR.Iskoreksi, FrLR.isCetak, FrLR.isExcel);
              FrLR.Show;
           end;
           FrLR.WindowState:=wsMaximized;
         end;
     1001007
        :begin
           if Assigned(FrNeraca) then
              FrNeraca.Show
           else
           begin
              Application.CreateForm(TFrNeraca, FrNeraca);
              CekOtoritasMenu(IDUser,tag,FrNeraca.Istambah,FrNeraca.Ishapus,
              FrNeraca.Iskoreksi, FrNeraca.isCetak, FrNeraca.isExcel);
              FrNeraca.Show;
           end;
           FrNeraca.WindowState:=wsMaximized;
         end;
    1001008
        :begin
           if Assigned(FrPosting) then

           else
           begin
              Application.CreateForm(TFrPosting, FrPosting);
              CekOtoritasMenu(IDUser,tag,FrPosting.Istambah,FrPosting.Ishapus,
              FrPosting.Iskoreksi, FrPosting.isCetak, FrPosting.isExcel);
              FrPosting.ShowModal;
           end;
         end;
    {1001009
        :begin
           if Assigned(FrValas) then
              FrValas.Show
           else
           begin
              Application.CreateForm(TFrValas, FrValas);
              CekOtoritasMenu(IDUser,tag,FrValas.Istambah,FrValas.Ishapus,
              FrValas.Iskoreksi, FrValas.isCetak, FrValas.isExcel);
              FrValas.Show;
           end;
           FrValas.WindowState := wsMaximized;
         end;}
    1001009
        :begin
           if Assigned(FrArusKas) then
              FrArusKas.Show
           else
           begin
              Application.CreateForm(TFrArusKas, FrArusKas);
              CekOtoritasMenu(IDUser,tag,FrArusKas.Istambah,FrArusKas.Ishapus,
              FrArusKas.Iskoreksi, FrArusKas.isCetak, FrArusKas.isExcel);
              FrArusKas.Show;
           end;
           FrArusKas.WindowState := wsMaximized;
         end;
         
    10010090
        :begin
           if Assigned(FrArusKas) then
              FrArusKas.Show
           else
           begin
              Application.CreateForm(TFrArusKas, FrArusKas);
              CekOtoritasMenu(IDUser,tag,FrArusKas.Istambah,FrArusKas.Ishapus,
              FrArusKas.Iskoreksi, FrArusKas.isCetak, FrArusKas.isExcel);
              FrArusKas.Show;
           end;
           FrArusKas.WindowState := wsMaximized;
         end;
    10010091
        :begin
           if Assigned(FrLapArusKas) then
              FrLapArusKas.Show
           else
           begin
              Application.CreateForm(TFrLapArusKas, FrLapArusKas);
              CekOtoritasMenu(IDUser,tag,FrLapArusKas.Istambah,FrLapArusKas.Ishapus,
              FrLapArusKas.Iskoreksi, FrLapArusKas.isCetak, FrLapArusKas.isExcel);
              FrLapArusKas.Show;
           end;
           FrLapArusKas.WindowState := wsMaximized;
         end;

       1002014
        :begin
           if Assigned(FrTipeTrans) then
              FrTipeTrans.Show
           else
           begin
              Application.CreateForm(TFrTipeTrans, FrTipeTrans);
              FrTipeTrans.Tag := Tag;
              CekOtoritasMenu(IDUser,FrTipeTrans.tag,FrTipeTrans.Istambah,FrTipeTrans.Ishapus,
              FrTipeTrans.Iskoreksi, FrTipeTrans.isCetak, FrTipeTrans.isExcel);
              FrTipeTrans.Show;
           end;
           FrTipeTrans.WindowState:=wsMaximized;
         end;
    1002099 :
        {:begin
           if Assigned(FrSupplier) then
              FrSupplier.Show
           else
           begin
              Application.CreateForm(TFrSupplier, FrSupplier);
              CekOtoritasMenu(IDUser,tag,FrSupplier.Istambah,FrSupplier.Ishapus,
              FrSupplier.Iskoreksi, FrSupplier.isCetak, FrSupplier.isExcel);
              FrSupplier.Show;
           end;
           FrSupplier.WindowState:=wsMaximized;
         end;
         }
         begin
            if Application.FindComponent('FrSupplier')<>nil then
            begin
              if FrSupplier.mSupplier_FlagMenu=0 then
                FrSupplier.Show
              else
              begin
                FrSupplier.Show;
                MessageDlg('Modul '+FrSupplier.Caption+' harus ditutup dulu !',mtInformation,[mbOK],0);
              end;
            end else
            begin
              gFlagMenu:=0;
              Application.CreateForm(TFrSupplier, FrSupplier);
              QuMenu.Locate('Access',Tag,[]);
              FrSupplier.Caption:=QuMenu.FieldByName('Caption').AsString;
              CekOtoritasMenu(IDUser,tag,FrSupplier.Istambah,FrSupplier.Ishapus,
                FrSupplier.Iskoreksi, FrSupplier.isCetak, FrSupplier.isExcel);
              FrSupplier.Show;
            end;
         end;
    1002101 :
         begin
            if Application.FindComponent('FrSupplier')<>nil then
            begin
              if FrSupplier.mSupplier_FlagMenu=1 then
                FrSupplier.Show
              else
              begin
                FrSupplier.Show;
                MessageDlg('Modul '+FrSupplier.Caption+' harus ditutup dulu !',mtInformation,[mbOK],0);
              end;
            end else
            begin
              gFlagMenu:=1;
              Application.CreateForm(TFrSupplier, FrSupplier);
              QuMenu.Locate('Access',Tag,[]);
              FrSupplier.Caption:=QuMenu.FieldByName('Caption').AsString;
              CekOtoritasMenu(IDUser,tag,FrSupplier.Istambah,FrSupplier.Ishapus,
                FrSupplier.Iskoreksi, FrSupplier.isCetak, FrSupplier.isExcel);
              FrSupplier.Show;
            end;
         end;
    1002102 :
         begin
            if Application.FindComponent('FrSupplier')<>nil then
            begin
              if FrSupplier.mSupplier_FlagMenu=2 then
                FrSupplier.Show
              else
              begin
                FrSupplier.Show;
                MessageDlg('Modul '+FrSupplier.Caption+' harus ditutup dulu !',mtInformation,[mbOK],0);
              end;
            end else
            begin
              gFlagMenu:=2;
              Application.CreateForm(TFrSupplier, FrSupplier);
              QuMenu.Locate('Access',Tag,[]);
              FrSupplier.Caption:=QuMenu.FieldByName('Caption').AsString;
              CekOtoritasMenu(IDUser,tag,FrSupplier.Istambah,FrSupplier.Ishapus,
                FrSupplier.Iskoreksi, FrSupplier.isCetak, FrSupplier.isExcel);
              FrSupplier.Show;
            end;
         end;
    1002103 :
         begin
            if Application.FindComponent('FrSupplier')<>nil then
            begin
              if FrSupplier.mSupplier_FlagMenu=3 then
                FrSupplier.Show
              else
              begin
                FrSupplier.Show;
                MessageDlg('Modul '+FrSupplier.Caption+' harus ditutup dulu !',mtInformation,[mbOK],0);
              end;
            end else
            begin
              gFlagMenu:=3;
              Application.CreateForm(TFrSupplier, FrSupplier);
              QuMenu.Locate('Access',Tag,[]);
              FrSupplier.Caption:=QuMenu.FieldByName('Caption').AsString;
              CekOtoritasMenu(IDUser,tag,FrSupplier.Istambah,FrSupplier.Ishapus,
                FrSupplier.Iskoreksi, FrSupplier.isCetak, FrSupplier.isExcel);
              FrSupplier.Show;
            end;
         end;
        {:begin
           if Assigned(FrSupplier) then
              FrSupplier.Show
           else
           begin
              Application.CreateForm(TFrSupplier, FrSupplier);
              CekOtoritasMenu(IDUser,tag,FrSupplier.Istambah,FrSupplier.Ishapus,
              FrSupplier.Iskoreksi, FrSupplier.isCetak, FrSupplier.isExcel);
              FrSupplier.Show;
           end;
           FrSupplier.WindowState:=wsMaximized;
         end;}
     1003099
        :begin
           if Assigned(FrCustomer) then
              FrCustomer.Show
           else
           begin
              Application.CreateForm(TFrCustomer, FrCustomer);
              FrCustomer.Tag := tag;
              CekOtoritasMenu(IDUser,tag,FrCustomer.Istambah,FrCustomer.Ishapus,
              FrCustomer.Iskoreksi, FrCustomer.isCetak, FrCustomer.isExcel);
              FrCustomer.Show;
           end;
           FrCustomer.WindowState:=wsMaximized;
         end;
     1002020
        :begin
           if Assigned(FrEksPedisi) then
              FrEksPedisi.Show
           else
           begin
              Application.CreateForm(TFrEksPedisi, FrEksPedisi);
              FrEksPedisi.Tag := tag;
              CekOtoritasMenu(IDUser,tag,FrEksPedisi.Istambah,FrEksPedisi.Ishapus,
              FrEksPedisi.Iskoreksi, FrEksPedisi.isCetak, FrEksPedisi.isExcel);
              FrEksPedisi.Show;
           end;
           FrEksPedisi.WindowState:=wsMaximized;
         end;
     1002013
        :begin
           if Assigned(FrGudang) then
              FrGudang.Show
           else
           begin
              Application.CreateForm(TFrGudang, FrGudang);
              FrGudang.Tag := tag;
              CekOtoritasMenu(IDUser,tag,FrGudang.Istambah,FrGudang.Ishapus,
              FrGudang.Iskoreksi, FrGudang.isCetak, FrGudang.isExcel);
              FrGudang.Show;
           end;
           FrGudang.WindowState:=wsMaximized;
         end;
     100501
        :begin
              if Assigned(FrProses) then
                 FrProses.Show
              else
              begin
                 Application.CreateForm(TFrProses, FrProses);
                 CekOtoritasMenu(IDUser,Tag,FrProses.Istambah,
                 FrProses.IsHapus,FrProses.IsKoreksi,FrProses.IsCetak,
                 FrProses.IsExcel);
                 FrProses.Show;
              end;
              FrProses.WindowState:=wsMaximized;
        end;
     100502
        :begin
              if Assigned(FrMesin) then
                 FrMesin.Show
              else
              begin
                 Application.CreateForm(TFrMesin, FrMesin);
                 CekOtoritasMenu(IDUser,Tag,FrMesin.Istambah,
                 FrMesin.IsHapus,FrMesin.IsKoreksi,FrMesin.IsCetak,
                 FrMesin.IsExcel);
                 FrMesin.Show;
              end;
              FrMesin.WindowState:=wsMaximized;
        end;
     100506
        :begin
              if Assigned(FrJenisMesin) then
                 FrJenisMesin.Show
              else
              begin
                 Application.CreateForm(TFrJenisMesin, FrJenisMesin);
                 CekOtoritasMenu(IDUser,Tag,FrJenisMesin.Istambah,
                 FrJenisMesin.IsHapus,FrJenisMesin.IsKoreksi,FrJenisMesin.IsCetak,
                 FrJenisMesin.IsExcel);
                 FrJenisMesin.Show;
              end;
              FrJenisMesin.WindowState:=wsMaximized;
        end;

     100503
        :begin
              if Assigned(FrJadwalPRD) then
                 FrJadwalPRD.Show
              else
              begin
                 Application.CreateForm(TFrJadwalPRD, FrJadwalPRD);
                 CekOtoritasMenu(IDUser,Tag,FrJadwalPRD.Istambah,
                 FrJadwalPRD.IsHapus,FrJadwalPRD.IsKoreksi,FrJadwalPRD.IsCetak,
                 FrJadwalPRD.IsExcel);
                 FrJadwalPRD.Show;
              end;
              FrJadwalPRD.WindowState:=wsMaximized;
        end;
     100504
        :begin
              if Assigned(FrBiayaProses) then
                 FrBiayaProses.Show
              else
              begin
                 Application.CreateForm(TFrBiayaProses, FrBiayaProses);
                 CekOtoritasMenu(IDUser,Tag,FrBiayaProses.Istambah,
                 FrBiayaProses.IsHapus,FrBiayaProses.IsKoreksi,FrBiayaProses.IsCetak,
                 FrBiayaProses.IsExcel);
                 FrBiayaProses.Show;
              end;
              FrBiayaProses.WindowState:=wsMaximized;
        end;
     100505  :begin
              if Assigned(FrTarifTenaker) then
                 FrTarifTenaker.Show
              else
              begin
                 Application.CreateForm(TFrTarifTenaker, FrTarifTenaker);
                 CekOtoritasMenu(IDUser,Tag,FrTarifTenaker.Istambah,
                 FrTarifTenaker.IsHapus,FrTarifTenaker.IsKoreksi,FrTarifTenaker.IsCetak,
                 FrTarifTenaker.IsExcel);
                 FrTarifTenaker.Show;
              end;
              FrTarifTenaker.WindowState:=wsMaximized;
        end;
     1005 :begin
              if Assigned(FrDiskonHarian) then
                 FrDiskonHarian.Show
              else
              begin
                 Application.CreateForm(TFrDiskonHarian, FrDiskonHarian);
                 CekOtoritasMenu(IDUser,Tag,FrDiskonHarian.Istambah,
                 FrDiskonHarian.IsHapus,FrDiskonHarian.IsKoreksi,FrDiskonHarian.IsCetak,
                 FrDiskonHarian.IsExcel);
                 FrDiskonHarian.Show;
              end;
              FrDiskonHarian.WindowState:=wsMaximized;
          end;

     1006 :begin
              if Assigned(FrPajak) then
                 FrPajak.Show
              else
              begin
                 Application.CreateForm(TFrPajak, FrPajak);
                 CekOtoritasMenu(IDUser,Tag,FrPajak.Istambah,
                 FrPajak.IsHapus,FrPajak.IsKoreksi,FrPajak.IsCetak,
                 FrPajak.IsExcel);
                 FrPajak.Show;
              end;
              FrPajak.WindowState:=wsMaximized;
          end;

     2001
        : begin
           if Assigned(FrMainKasbank) then
              FrMainKasbank.Show
           else
           begin
              Application.CreateForm(TFrMainKasbank, FrMainKasbank);
              CekOtoritasMenu(IDUser,tag,FrMainKasbank.Istambah,FrMainKasbank.Ishapus,
              FrMainKasbank.Iskoreksi, FrMainKasbank.isCetak, FrMainKasbank.isExcel);
              FrMainKasBank.MenuKasbank := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainKasBank.KasBankOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainKasbank.Show;
           end;
           with FrMainKasbank do
           begin
             ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,KasBankOL);
           end;
           FrMainKasbank.WindowState:=wsMaximized;
          end;
     2005 :begin
            MyGlobal.gTipeTrans:='HT';
            if Application.FindComponent('FrMainLunas')=nil then
            begin
               Application.CreateForm(TFrMainLunas, FrMainLunas);
               CekOtoritasMenu(IDUser,tag,FrMainLunas.Istambah,FrMainLunas.Ishapus,
               FrMainLunas.Iskoreksi, FrMainLunas.isCetak, FrMainLunas.isExcel);
               FrMainLunas.MenuLunas := Hint;
               DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
               FrMainLunas.LunasOL := DM.QuCari.Fieldbyname('OL').Value;
               FrMainLunas.Show;
            end else ShowMessage('Modul Piutang Harus Ditutup Terlebih dahulu');
            with FrMainLunas do
            begin
             ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,LunasOL);
            end;
                FrMainLunas.WindowState:=wsMaximized;
          end;
     2006 :begin
            MyGlobal.gTipeTrans:='PT';
            if Application.FindComponent('FrMainLunas')=nil then
                begin
                   Application.CreateForm(TFrMainLunas, FrMainLunas);
                   CekOtoritasMenu(IDUser,tag,FrMainLunas.Istambah,FrMainLunas.Ishapus,
                   FrMainLunas.Iskoreksi, FrMainLunas.isCetak, FrMainLunas.isExcel);
                   FrMainLunas.MenuLunas := Hint;
                   DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
                   FrMainLunas.LunasOL := DM.QuCari.Fieldbyname('OL').Value;
                   FrMainLunas.Show;
                end else  ShowMessage('Modul Hutang Harus Ditutup Terlebih dahulu');
                with FrMainLunas do
                begin
                 ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,LunasOL);
                end;
                FrMainLunas.WindowState:=wsMaximized;

          end;
     2007 :Begin
           if Assigned(FrMainAnggaran) then
              FrMainAnggaran.Show
           else
           begin
              Application.CreateForm(TFrMainAnggaran, FrMainAnggaran);
              CekOtoritasMenu(IDUser,tag,FrMainAnggaran.Istambah,FrMainAnggaran.Ishapus,
              FrMainAnggaran.Iskoreksi, FrMainAnggaran.isCetak, FrMainAnggaran.isExcel);
              FrMainAnggaran.MenuPPL := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainAnggaran.PPLOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainAnggaran.Show;
           end;
           with FrMainAnggaran do
           begin
             ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,PPLOL);
           end;
           FrMainAnggaran.WindowState:=wsMaximized;
           End;
     2002
        :begin
           if Assigned(FrMainMemorial) then
              FrMainMemorial.Show
           else
           begin
              Application.CreateForm(TFrMainMemorial, FrMainMemorial);
              CekOtoritasMenu(IDUser,tag,FrMainMemorial.Istambah,FrMainMemorial.Ishapus,
              FrMainMemorial.Iskoreksi, FrMainMemorial.isCetak, FrMainMemorial.isExcel);
              FrMainMemorial.MenuMemorial := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainMemorial.MemorialOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainMemorial.Show;
           end;
           with FrMainMemorial do
           begin
             ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,MemorialOL);
           end;
           FrMainMemorial.WindowState:=wsMaximized;
         end;
     2003
        :begin
           if Assigned(FrBon) then
              FrBon.Show
           else
           begin
              Application.CreateForm(TFrBon, FrBon);
              CekOtoritasMenu(IDUser,tag,FrBon.Istambah,FrBon.Ishapus,
              FrBon.Iskoreksi, FrBon.isCetak, FrBon.isExcel);
              FrBon.MenuBon := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrBon.BonOL := DM.QuCari.Fieldbyname('OL').Value;
              FrBon.Show;
           end;
           FrBon.WindowState:=wsMaximized;
         end;
     2004
        :begin
           if Assigned(FrMainMemorialLain) then
              FrMainMemorialLain.Show
           else
           begin
              Application.CreateForm(TFrMainMemorialLain, FrMainMemorialLain);
              CekOtoritasMenu(IDUser,tag,FrMainMemorialLain.Istambah,FrMainMemorialLain.Ishapus,
              FrMainMemorialLain.Iskoreksi, FrMainMemorialLain.isCetak, FrMainMemorialLain.isExcel);
              FrMainMemorialLain.MenuMemorial := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainMemorialLain.MemorialOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainMemorialLain.Show;
           end;
           with FrMainMemorialLain do
           begin
             ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,MemorialOL);
           end;
           FrMainMemorialLain.WindowState:=wsMaximized;
         end;


      3001
        :begin
           if Assigned(FrMainBPPB) then
              FrMainBPPB.Show
           else
           begin
              Application.CreateForm(TFrMainBPPB, FrMainBPPB);
              CekOtoritasMenu(IDUser,tag,FrMainBPPB.Istambah,FrMainBPPB.Ishapus,
              FrMainBPPB.Iskoreksi, FrMainBPPB.isCetak, FrMainBPPB.isExcel);
              FrMainBPPB.MenuBPPB := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainBPPB.BPPBOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainBPPB.Show;
           end;
           with FrMainBPPB do
           begin
             ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,BPPBOL);
           end;
           FrMainBPPB.WindowState:=wsMaximized;
         end;
      3002
        :begin
           if Assigned(FrMainBPPBT) then
              FrMainBPPBT.Show
           else
           begin
              Application.CreateForm(TFrMainBPPBT, FrMainBPPBT);
              CekOtoritasMenu(IDUser,tag,FrMainBPPBT.Istambah,FrMainBPPBT.Ishapus,
              FrMainBPPBT.Iskoreksi, FrMainBPPBT.isCetak, FrMainBPPBT.isExcel);
              FrMainBPPBT.MenuBPPBT := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainBPPBT.BPPBTOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainBPPBT.Show;
           end;
           with FrMainBPPBT do
           begin
             ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,BPPBTOL);
           end;
           FrMainBPPBT.WindowState:=wsMaximized;
         end;
      3003
        :begin
           if Assigned(FrMainPPL) then
              FrMainPPL.Show
           else
           begin
              Application.CreateForm(TFrMainPPL, FrMainPPL);
              CekOtoritasMenu(IDUser,tag,FrMainPPL.Istambah,FrMainPPL.Ishapus,
              FrMainPPL.Iskoreksi, FrMainPPL.isCetak, FrMainPPL.isExcel);
              FrMainPPL.MenuPPL := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainPPL.PPLOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainPPL.Show;
           end;
           with FrMainPPL do
           begin
             ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,PPLOL);
           end;
           FrMainPPL.WindowState:=wsMaximized;
         end;
      3004
        :begin
           if Assigned(FrMainPO) then
              FrMainPO.Show
           else
           begin
              Application.CreateForm(TFrMainPO, FrMainPO);
              CekOtoritasMenu(IDUser,tag,FrMainPO.Istambah,FrMainPO.Ishapus,
              FrMainPO.Iskoreksi, FrMainPO.isCetak, FrMainPO.isExcel);
              FrMainPO.MenuPO := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainPO.PoOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainPO.Show;
           end;
           FrMainPO.WindowState:=wsMaximized;
           with FrMainPO do
            begin
              ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,POOL);
            end;
         end;
      30041
        :begin
           if Assigned(FrMainBeliBahan) then
              FrMainBeliBahan.Show
           else
           begin
              Application.CreateForm(TFrMainBeliBahan, FrMainBeliBahan);
              CekOtoritasMenu(IDUser,tag,FrMainBeliBahan.Istambah,FrMainBeliBahan.Ishapus,
              FrMainBeliBahan.Iskoreksi, FrMainBeliBahan.isCetak, FrMainBeliBahan.isExcel);
              FrMainBeliBahan.MenuBeliGDG := Hint;
              FrMainBeliBahan.Caption := 'Penerimaan Gudang Bahan - PPn';
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainBeliBahan.BeliGDGOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainBeliBahan.Show;
           end;
           FrMainBeliBahan.WindowState:=wsMaximized;
           with FrMainBeliBahan do
           begin
             ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,BeliGDGOL);
           end;
         end;

      3005
        :begin
           if Assigned(FrMainBeli) then
              FrMainBeli.Show
           else                                                                                               
           begin
              Application.CreateForm(TFrMainBeli, FrMainBeli);
              CekOtoritasMenu(IDUser,tag,FrMainBeli.Istambah,FrMainBeli.Ishapus,
              FrMainBeli.Iskoreksi, FrMainBeli.isCetak, FrMainBeli.isExcel);
              FrMainBeli.MenuBeliGDG := Hint;
              FrMainBeli.Caption := 'Penerimaan Gudang - PPn';
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainBeli.BeliGDGOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainBeli.Show;
           end;
           FrMainBeli.WindowState:=wsMaximized;
           with FrMainBeli do
           begin
             ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,BeliGDGOL);
           end;
         end;
         
      30062:
         begin
            if Application.FindComponent('FrSupplier')<>nil then
            begin
              if FrSupplier.mSupplier_FlagMenu=2 then
                FrSupplier.Show
              else
              begin
                FrSupplier.Show;
                MessageDlg('Modul '+FrSupplier.Caption+' harus ditutup dulu !',mtInformation,[mbOK],0);
              end;
            end else
            begin
              gFlagMenu:=2;
              Application.CreateForm(TFrSupplier, FrSupplier);
              QuMenu.Locate('Access',Tag,[]);
              FrSupplier.Caption:=QuMenu.FieldByName('Caption').AsString;
              CekOtoritasMenu(IDUser,tag,FrSupplier.Istambah,FrSupplier.Ishapus,
                FrSupplier.Iskoreksi, FrSupplier.isCetak, FrSupplier.isExcel);
              FrSupplier.Show;
            end;
         end;
      3006      //Nota Kredit
        :begin
           //if Assigned(FrMainBeliNota) then
           if Application.FindComponent('MainBeliNota')<>nil then
           begin
              //FrMainBeliNota.Show
              if FrMainBeliNota.Menu='0' then
                FrMainBeliNota.Show
              else
              begin
                FrMainBeliNota.Show;
                MessageDlg('Modul '+FrMainBeliNota.Caption+' harus ditutup dulu !',mtInformation,[mbOK],0);
              end;
           end
           else
           begin
              gFlagMenu:=0;
              Application.CreateForm(TFrMainBeliNota, FrMainBeliNota);
              CekOtoritasMenu(IDUser,tag,FrMainBeliNota.Istambah,FrMainBeliNota.Ishapus,
              FrMainBeliNota.Iskoreksi, FrMainBeliNota.isCetak, FrMainBeliNota.isExcel);
              FrmainBeliNota.Menu :=Hint;
              FrMainBeliNota.MenuBeliNota := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainBeliNota.BeliNotaOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainBeliNota.Show;
           end;
           with FrMainBeliNota do
           begin
             ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,BeliNotaOL);
           end;
           FrMainBeliNota.WindowState:=wsMaximized;
         end;
      30061   //Nota Tunai
        :begin
           //if Assigned(FrMainBeliNota) then
           //if Application.FindComponent('MainBeliNota')<>nil then

              //FrMainBeliNota.Show
           if Application.FindComponent('MainBeliNota')<>nil then
           begin
              //FrMainBeliNota.Show
              if FrMainBeliNota.Menu='1' then
                FrMainBeliNota.Show
              else
              begin
                FrMainBeliNota.Show;
                MessageDlg('Modul '+FrMainBeliNota.Caption+' harus ditutup dulu !',mtInformation,[mbOK],0);
              end;
           end
           else
           begin
              gFlagMenu:=1;
              Application.CreateForm(TFrMainBeliNota, FrMainBeliNota);
              CekOtoritasMenu(IDUser,tag,FrMainBeliNota.Istambah,FrMainBeliNota.Ishapus,
              FrMainBeliNota.Iskoreksi, FrMainBeliNota.isCetak, FrMainBeliNota.isExcel);
              FrmainBeliNota.Menu :=Hint;
              FrMainBeliNota.MenuBeliNota := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainBeliNota.BeliNotaOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainBeliNota.Show;
           end;
           with FrMainBeliNota do
           begin
             ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,BeliNotaOL);
           end;
           FrMainBeliNota.WindowState:=wsMaximized;
         end;
      3007
        :begin
           if Assigned(FrMainBeli) then
              FrMainBeli.Show
           else
           begin
              Application.CreateForm(TFrMainBeli, FrMainBeli);
              CekOtoritasMenu(IDUser,tag,FrMainBeli.Istambah,FrMainBeli.Ishapus,
              FrMainBeli.Iskoreksi, FrMainBeli.isCetak, FrMainBeli.isExcel);
              FrMainBeli.MenuBeliGDG := Hint;
              FrMainBeli.Caption := 'Penerimaan Gudang - PPn';
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainBeli.BeliGDGOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainBeli.Show;
           end;
           FrMainBeli.WindowState:=wsMaximized;
           with FrMainBeli do
           begin
             ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,BeliGDGOL);
           end;
         end;
       3008
        :begin
           if Assigned(FrMainPB) then
              FrMainPB.Show
           else
           begin

              Application.CreateForm(TFrMainPB, FrMainPB);
              CekOtoritasMenu(IDUser,tag,FrMainPB.Istambah,FrMainPB.Ishapus,
              FrMainPB.Iskoreksi, FrMainPB.isCetak, FrMainPB.isExcel);
              FrMainPB.MenuPB := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainPB.PBOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainPB.Show;
           end;
           with FrMainPB do
           begin
             ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,PBOL);
           end;
           FrMainPB.WindowState:=wsMaximized;
         end;
       3014
        :begin
           if Assigned(FrMainPBLain) then
              FrMainPBLain.Show
           else
           begin

              Application.CreateForm(TFrMainPBLain, FrMainPBLain);
              CekOtoritasMenu(IDUser,tag,FrMainPBLain.Istambah,FrMainPBLain.Ishapus,
              FrMainPBLain.Iskoreksi, FrMainPBLain.isCetak, FrMainPBLain.isExcel);
              FrMainPBLain.MenuPB := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainPBLain.PBOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainPBLain.Show;
           end;

           with FrMainPBLain do
           begin
             ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,PBOL);
           end;
           FrMainPBLain.WindowState:=wsMaximized;
         end;
        3015 :
        begin
           if Assigned(FrMainRPBLain) then
              FrMainRPBLain.Show
           else
           begin

              Application.CreateForm(TFrMainRPBLain, FrMainRPBLain);
              CekOtoritasMenu(IDUser,tag,FrMainRPBLain.Istambah,FrMainRPBLain.Ishapus,
              FrMainRPBLain.Iskoreksi, FrMainRPBLain.isCetak, FrMainRPBLain.isExcel);
              FrMainRPBLain.MenuRPB := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainRPBLain.RPBOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainRPBLain.Show;
           end;
           with FrMainRPBLain do
           begin
             ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,RPBOL);
           end;
           FrMainRPBLain.WindowState:=wsMaximized;

        end;
        600101
        :begin
           if Assigned(FrMainPBSampel) then
              FrMainPBSampel.Show
           else
           begin

              Application.CreateForm(TFrMainPBSampel, FrMainPBSampel);
              CekOtoritasMenu(IDUser,tag,FrMainPBSampel.Istambah,FrMainPBSampel.Ishapus,
              FrMainPBSampel.Iskoreksi, FrMainPBSampel.isCetak, FrMainPBSampel.isExcel);
              FrMainPBSampel.MenuPB := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainPBSampel.PBOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainPBSampel.Show;
           end;
           with FrMainPBSampel do
           begin
             ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,PBOL);
           end;
           FrMainPBSampel.WindowState:=wsMaximized;
         end;
        3009
        :begin
           if Assigned(FrMainRPB) then
              FrMainRPB.Show
           else
           begin

              Application.CreateForm(TFrMainRPB, FrMainRPB);
              CekOtoritasMenu(IDUser,tag,FrMainRPB.Istambah,FrMainRPB.Ishapus,
              FrMainRPB.Iskoreksi, FrMainRPB.isCetak, FrMainRPB.isExcel);
              FrMainRPB.MenuRPB := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainRPB.RPBOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainRPB.Show;
           end;
           with FrMainRPB do
           begin
             ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,RPBOL);
           end;
           FrMainRPB.WindowState:=wsMaximized;
         end;
       3012
        :begin
           if Assigned(FrMainPBJadi) then
              FrMainPBJadi.Show
           else
           begin

              Application.CreateForm(TFrMainPBJadi, FrMainPBJadi);
              CekOtoritasMenu(IDUser,tag,FrMainPBJadi.Istambah,FrMainPBJadi.Ishapus,
              FrMainPBJadi.Iskoreksi, FrMainPBJadi.isCetak, FrMainPBJadi.isExcel);
              FrMainPBJadi.MenuPB := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainPBJadi.PBOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainPBJadi.Show;
           end;
           with FrMainPBJadi do
           begin
             ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,PBOL);
           end;
           FrMainPBJadi.WindowState:=wsMaximized;
         end;

        600201
        :begin
           if Assigned(FrMainRPBSampel) then
              FrMainRPBSampel.Show
           else
           begin
              
              Application.CreateForm(TFrMainRPBSampel, FrMainRPBSampel);
              CekOtoritasMenu(IDUser,tag,FrMainRPBSampel.Istambah,FrMainRPBSampel.Ishapus,
              FrMainRPBSampel.Iskoreksi, FrMainRPBSampel.isCetak, FrMainRPBSampel.isExcel);
              FrMainRPBSampel.MenuRPB := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainRPBSampel.RPBOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainRPBSampel.Show;
           end;
           with FrMainRPBSampel do
           begin
             ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,RPBOL);
           end;
           FrMainRPBSampel.WindowState:=wsMaximized;
         end;
        3010
        :begin
           if Assigned(FrMainBeliRe) then
              FrMainBeliRe.Show
           else
           begin
              Application.CreateForm(TFrMainBeliRe, FrMainBeliRe);
              CekOtoritasMenu(IDUser,tag,FrMainBeliRe.Istambah,FrMainBeliRe.Ishapus,
              FrMainBeliRe.Iskoreksi, FrMainBeliRe.isCetak, FrMainBeliRe.isExcel);
              FrMainBeliRe.MenuBeliRE := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainBeliRe.BeliREOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainBeliRe.Menu :=MMenu;
              FrMainBeliRe.Show;
           end;
           with FrMainBeliRe do
           begin
             ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,BeliREOL);
           end;
           FrMainBeliRe.WindowState:=wsMaximized;
         end;
       3011
        :begin
           if Assigned(FrMainPORev) then
              FrMainPORev.Show
           else
           begin
              Application.CreateForm(TFrMainPORev, FrMainPORev);
              CekOtoritasMenu(IDUser,tag,FrMainPORev.Istambah,FrMainPORev.Ishapus,
              FrMainPORev.Iskoreksi, FrMainPORev.isCetak, FrMainPORev.isExcel);
              FrMainPORev.Show;
           end;
           FrMainPORev.WindowState:=wsMaximized;
         end;
     3030
        :begin
           if Assigned(FrMainRBeliGdg) then
              FrMainRBeliGdg.Show
           else
           begin
              Application.CreateForm(TFrMainRBeliGdg, FrMainRBeliGdg);
              CekOtoritasMenu(IDUser,tag,FrMainRBeliGdg.Istambah,FrMainRBeliGdg.Ishapus,
              FrMainRBeliGdg.Iskoreksi, FrMainRBeliGdg.isCetak, FrMainRBeliGdg.isExcel);
              FrMainRBeliGdg.MenuRBeli := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainRBeliGdg.RBeliOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainRBeliGdg.Show;
           end;
           with FrMainRBeliGdg do
           begin
             ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,RBeliOL);
           end;
           FrMainRBeliGdg.WindowState:=wsMaximized;
         end;
      3031
        :begin
           if Assigned(FrMainRBeli) then
              FrMainRBeli.Show
           else
           begin
              Application.CreateForm(TFrMainRBeli, FrMainRBeli);
              CekOtoritasMenu(IDUser,tag,FrMainRBeli.Istambah,FrMainRBeli.Ishapus,
              FrMainRBeli.Iskoreksi, FrMainRBeli.isCetak, FrMainRBeli.isExcel);
              FrMainRBeli.MenuRBeli := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainRBeli.RBeliOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainRBeli.Show;
           end;
           with FrMainRBeli do
           begin
             ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,RBeliOL);
           end;
           FrMainRBeli.WindowState:=wsMaximized;
         end;
       3032
        :begin
           if Assigned(FrMainInv) then
              FrMainInv.Show
           else
           begin
              Application.CreateForm(TFrMainInv, FrMainInv);
              CekOtoritasMenu(IDUser,tag,FrMainInv.Istambah,FrMainInv.Ishapus,
              FrMainInv.Iskoreksi, FrMainInv.isCetak, FrMainInv.isExcel);
              FrmainINV.Menu :=MMenu;
              FrMainInv.Show;
           end;
           FrMainInv.WindowState:=wsMaximized;
         end;
       3033
        :begin
           if Assigned(FrMainDebetN) then
              FrMainDebetN.Show
           else
           begin
              Application.CreateForm(TFrMainDebetN, FrMainDebetN);
              CekOtoritasMenu(IDUser,tag,FrMainDebetN.Istambah,FrMainDebetN.Ishapus,
              FrMainDebetN.Iskoreksi, FrMainDebetN.isCetak, FrMainDebetN.isExcel);
              FrMainDebetN.MenuDebetN := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainDebetN.DebetNOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainDebetN.Show;
           end;
           with FrMainDebetN do
           begin
             ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,DebetNOL);
           end;
           FrMainDebetN.WindowState:=wsMaximized;
         end;
     4001
        :begin
           if Assigned(FrMainSO) then
              FrMainSO.Show
           else
           begin
              Application.CreateForm(TFrMainSO, FrMainSO);
              CekOtoritasMenu(IDUser,tag,FrMainSO.Istambah,FrMainSO.Ishapus,
              FrMainSO.Iskoreksi, FrMainSO.isCetak, FrMainSO.isExcel);
              FrMainSO.MenuSO := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainSO.MenuSOOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainSO.Show;
           end;
           with FrMainSO do
           begin
             ViewOtorisasiNonBandedTableView(tvMaster,Qumaster,MenuSOOL);
           end;
           FrMainSO.WindowState:=wsMaximized;
         end;
     4002
        :begin
           if Assigned(FrMainSPP) then
              FrMainSPP.Show
           else
           begin
              Application.CreateForm(TFrMainSPP, FrMainSPP);
              CekOtoritasMenu(IDUser,tag,FrMainSPP.Istambah,FrMainSPP.Ishapus,
              FrMainSPP.Iskoreksi, FrMainSPP.isCetak, FrMainSPP.isExcel);
              FrMainSPP.MenuSPP := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainSPP.SPPOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainSPP.Show;
           end;
           with FrMainSPP do
           begin
             ViewOtorisasi(tvMaster,QumasterBP,SPPOL);
           end;
           FrMainSPP.WindowState:=wsMaximized;
         end;
     4003
        :begin
           if Assigned(FrMainSPB) then
              FrMainSPB.Show
           else
           begin
              Application.CreateForm(TFrMainSPB, FrMainSPB);
              CekOtoritasMenu(IDUser,tag,FrMainSPB.Istambah,FrMainSPB.Ishapus,
              FrMainSPB.Iskoreksi, FrMainSPB.isCetak, FrMainSPB.isExcel);
              FrMainSPB.MenuSPB := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainSPB.SPBOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainSPB.Show;
           end;
           with FrMainSPB do
           begin
             ViewOtorisasi(tvMaster,QumasterBP,SPBOL);
           end;
           FrMainSPB.WindowState:=wsMaximized;
         end;
     40031
        :Begin
           if Assigned(FrMainRSPB) then
              FrMainRSPB.Show
           else
           begin
              Application.CreateForm(TFrMainRSPB, FrMainRSPB);
              QuMenu.Locate('Access',Tag,[]);
              FrMainRSPB.Caption:=QuMenu.FieldByName('Caption').AsString;
              CekOtoritasMenu(IDUser,tag,FrMainRSPB.Istambah,FrMainRSPB.Ishapus,
              FrMainRSPB.Iskoreksi, FrMainRSPB.isCetak, FrMainRSPB.isExcel);
              FrMainRSPB.MenuRSPB := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainRSPB.RSPBOL := DM.QuCari.Fieldbyname('OL').Value;
              with FrMainRSPB do
              begin
                ViewOtorisasi(TvMaster,QumasterBP,RSPBOL);
              end;
              FrMainRSPB.Show;
           end;
           FrMainRSPB.WindowState:=wsMaximized;
         end;    
     4004
        :begin
           if Assigned(FrMainInvoicePL) then
              FrMainInvoicePL.Show
           else
           begin
              Application.CreateForm(TFrMainInvoicePL, FrMainInvoicePL);
              CekOtoritasMenu(IDUser,tag,FrMainInvoicePL.Istambah,FrMainInvoicePL.Ishapus,
              FrMainInvoicePL.Iskoreksi, FrMainInvoicePL.isCetak, FrMainInvoicePL.isExcel);
              FrMainInvoicePL.MenuINV := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainInvoicePL.INVOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainInvoicePL.Show;
           end;
           with FrMainInvoicePL do
           begin
             ViewOtorisasi(tvMaster3,QumasterInv,INVOL);
           end;
           FrMainInvoicePL.WindowState:=wsMaximized;
         end;
     {
     4005
        :begin
           if Assigned(FrMainRJual) then
              FrMainRJual.Show
           else
           begin
              Application.CreateForm(TFrMainRJual, FrMainRJual);
              CekOtoritasMenu(IDUser,tag,FrMainRJual.Istambah,FrMainRJual.Ishapus,
              FrMainRJual.Iskoreksi, FrMainRJual.isCetak, FrMainRJual.isExcel);
              FrMainRJual.MenuRInvoicePL := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainRJual.RInvoicePLOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainRJual.Show;
           end;
           with FrMainRjual do
           begin
             ViewOtorisasi(tvMaster,QumasterBp,RInvoicePLOL);
           end;
           FrMainRJual.WindowState:=wsMaximized;
         end; }
     4006
        :begin
           if Assigned(FrMainSPBRJual) then
              FrMainSPBRJual.Show
           else
           begin
              Application.CreateForm(TFrMainSPBRJual, FrMainSPBRJual);
              CekOtoritasMenu(IDUser,tag,FrMainSPBRJual.Istambah,FrMainSPBRJual.Ishapus,
              FrMainSPBRJual.Iskoreksi, FrMainSPBRJual.isCetak, FrMainSPBRJual.isExcel);
              FrMainSPBRjual.MenuSPB := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainSPBRjual.SPBOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainSPBRJual.Show;
           end;
           with FrMainSPBRjual do
           begin
             ViewOtorisasi(tvMaster,QumasterBp,SPBOL);
           end;
           FrMainSPBRJual.WindowState:=wsMaximized;
         end;
     4007
        :begin
           if Assigned(FrMainInvoiceRPJ) then
              FrMainInvoiceRPJ.Show
           else
           begin
              Application.CreateForm(TFrMainInvoiceRPJ, FrMainInvoiceRPJ);
              CekOtoritasMenu(IDUser,tag,FrMainInvoiceRPJ.Istambah,FrMainInvoiceRPJ.Ishapus,
              FrMainInvoiceRPJ.Iskoreksi, FrMainInvoiceRPJ.isCetak, FrMainInvoiceRPJ.isExcel);
              FrMainInvoiceRPJ.MenuVerf := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainInvoiceRPJ.VerfOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainInvoiceRPJ.Show;
           end;
           with FrMainInvoiceRPJ do
           begin
             ViewOtorisasi(tvInvoiceRPJ,QuInvoiceRPJ,VerfOL);
           end;
           FrMainInvoiceRPJ.WindowState:=wsMaximized;
         end;
     4010
        :begin
           if Assigned(FrMainKreditN) then
              FrMainKreditN.Show
           else
           begin
              Application.CreateForm(TFrMainKreditN, FrMainKreditN);
              CekOtoritasMenu(IDUser,tag,FrMainKreditN.Istambah,FrMainKreditN.Ishapus,
              FrMainKreditN.Iskoreksi, FrMainKreditN.isCetak, FrMainKreditN.isExcel);
              FrMainKreditN.MenuKreditNote := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainKreditN.KreditNoteOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainKreditN.Show;
           end;
           with FrMainKreditN do
           begin
             ViewOtorisasiNonBandedTableView(tvMaster,Qumaster,KreditNoteOL);
           end;
           FrMainKreditN.WindowState:=wsMaximized;
         end;
  40011:Begin
           if Assigned(FrMainUMInvoicePL) then
              FrMainUMInvoicePL.Show
           else
           begin
              Application.CreateForm(TFrMainUMInvoicePL, FrMainUMInvoicePL);
              CekOtoritasMenu(IDUser,tag,FrMainUMInvoicePL.Istambah,FrMainUMInvoicePL.Ishapus,
              FrMainUMInvoicePL.Iskoreksi, FrMainUMInvoicePL.isCetak, 
              FrMainUMInvoicePL.isExcel);
              FrMainUMInvoicePL.MenuINV := Hint;
              FrMainUMInvoicePL.Show;
           end;
           FrMainUMInvoicePL.WindowState:=wsMaximized;
         end;
     40005
        : begin
           if Assigned(FrDesain) then
              FrDesain.Show
           else
           begin
              Application.CreateForm(TFrDesain, FrDesain);
              CekOtoritasMenu(IDUser,tag,FrDesain.Istambah,FrDesain.Ishapus,
              FrDesain.Iskoreksi, FrDesain.isCetak, FrDesain.isExcel);
              FrDesain.Show;
           end;
           FrDesain.WindowState := wsMaximized;
         end;
        5000
        :begin
            if Assigned(FrBOM) then
                   FrBOM.Show
                else
                begin
                   Application.CreateForm(TFrBOM, FrBOM);
                   CekOtoritasMenu(IDUser,Tag,FrBOM.Istambah,
                   FrBOM.IsHapus,FrBOM.IsKoreksi,FrBOM.IsCetak,
                   FrBOM.IsExcel);
                   FrBOM.Show;
                end;
                FrBOM.WindowState:=wsMaximized;
         end;

         5001
        :begin
           if Assigned(FrMainSPK) then
              FrMainSPK.Show
           else
           begin
              Application.CreateForm(TFrMainSPK, FrMainSPK);
              CekOtoritasMenu(IDUser,tag,FrMainSPK.Istambah,FrMainSPK.Ishapus,
              FrMainSPK.Iskoreksi, FrMainSPK.isCetak, FrMainSPK.isExcel);
              FrMainSPK.MenuSPK := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainSPK.SPKOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainSPK.Show;
           end;
           with FrMainSPK do
           begin
             ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,SPKOL);
           end;
           FrMainSPK.WindowState:=wsMaximized;
         end;
     5002
        :begin
           if Assigned(FrMainHasilP) then
              FrMainHasilP.Show
           else
           begin
              Application.CreateForm(TFrMainHasilP, FrMainHasilP);
              CekOtoritasMenu(IDUser,tag,FrMainHasilP.Istambah,FrMainHasilP.Ishapus,
              FrMainHasilP.Iskoreksi, FrMainHasilP.isCetak, FrMainHasilP.isExcel);
              frMainHasilP.MenuHasilP := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainHasilP.HasilPOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainHasilP.Show;
           end;
           with FrMainHasilP do
           begin
             ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,HasilPOL);
           end;
           FrMainHasilP.WindowState:=wsMaximized;
         end;
     5003
        :begin
           if Assigned(FrMainProduksi) then
              FrMainHasilP.Show
           else
           begin
              Application.CreateForm(TFrMainProduksi, FrMainProduksi);
              CekOtoritasMenu(IDUser,tag,FrMainProduksi.Istambah,FrMainProduksi.Ishapus,
              FrMainProduksi.Iskoreksi, FrMainProduksi.isCetak, FrMainProduksi.isExcel);
              frMainProduksi.MenuProduksi := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], 
                Dm.Qucari);
              FrMainProduksi.BeliNotaOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainProduksi.Show;
           end;
           with FrMainProduksi do
           begin
             ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,BeliNotaOL);
           end;
           FrMainProduksi.WindowState:=wsMaximized;
         end;
     5004
        :begin
           if Assigned(FrProsesProduksi) then
              FrProsesProduksi.Show
           else
           begin
              Application.CreateForm(TFrProsesProduksi, FrProsesProduksi);
              CekOtoritasMenu(IDUser,tag,FrProsesProduksi.Istambah,FrProsesProduksi.Ishapus,
              FrProsesProduksi.Iskoreksi, FrProsesProduksi.isCetak, FrProsesProduksi.isExcel);
              //frProsesProduksi.MenuProduksi := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint],
                Dm.Qucari);
              //FrProsesProduksi.BeliNotaOL := DM.QuCari.Fieldbyname('OL').Value;
              FrProsesProduksi.Show;
           end;
          { with FrProsesProduksi do
           begin
             ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,BeliNotaOL);
           end;   }
           FrProsesProduksi.WindowState:=wsMaximized;
         end;
     5005
        :begin
           if Assigned(FrMainFinishing) then
              FrMainFinishing.Show
           else
           begin
              Application.CreateForm(TFrMainFinishing, FrMainFinishing);
              CekOtoritasMenu(IDUser,tag,FrMainFinishing.Istambah,FrMainFinishing.Ishapus,
              FrMainFinishing.Iskoreksi, FrMainFinishing.isCetak, FrMainFinishing.isExcel);
              frMainFinishing.MenuProduksi := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint],
                Dm.Qucari);
              FrMainFinishing.BeliNotaOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainFinishing.Show;
           end;
           with FrMainFinishing do
           begin
             ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,BeliNotaOL);
           end;
           FrMainFinishing.WindowState:=wsMaximized;
         end;

    50011
        :begin
           if Assigned(FrMainJadwalProduksi) then
              FrMainJadwalProduksi.Show
           else
           begin
              Application.CreateForm(TFrMainJadwalProduksi, FrMainJadwalProduksi);
              CekOtoritasMenu(IDUser,tag,FrMainJadwalProduksi.Istambah,FrMainJadwalProduksi.Ishapus,
              FrMainJadwalProduksi.Iskoreksi, FrMainJadwalProduksi.isCetak, FrMainJadwalProduksi.isExcel);
              FrMainJadwalProduksi.MenuSPK := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainJadwalProduksi.SPKOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainJadwalProduksi.Show;
           end;
           FrMainJadwalProduksi.WindowState:=wsMaximized;
         end;
     6010
        :begin
           if Assigned(FrMainUbahKemasan) then
              FrMainUbahKemasan.Show
           else
           begin
              Application.CreateForm(TFrMainUbahKemasan, FrMainUbahKemasan);
              CekOtoritasMenu(IDUser,tag,FrMainUbahKemasan.Istambah,FrMainUbahKemasan.Ishapus,
              FrMainUbahKemasan.Iskoreksi, FrMainUbahKemasan.isCetak, FrMainUbahKemasan.isExcel);
              FrMainUbahKemasan.MenuUkemas := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainUbahKemasan.UkemasOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainUbahKemasan.Show;
           end;
           with FrMainUbahKemasan do
           begin
             ViewOtorisasiNonBandedTableView(tvMaster,Qumaster,UkemasOL);
           end;
           FrMainUbahKemasan.WindowState:=wsMaximized;
         end;
     6011
        :begin
           if Assigned(FrMainUbahKemasanBJ) then
              FrMainUbahKemasanBJ.Show
           else
           begin
              Application.CreateForm(TFrMainUbahKemasanBJ, FrMainUbahKemasanBJ);
              CekOtoritasMenu(IDUser,tag,FrMainUbahKemasanBJ.Istambah,FrMainUbahKemasanBJ.Ishapus,
              FrMainUbahKemasanBJ.Iskoreksi, FrMainUbahKemasanBJ.isCetak, FrMainUbahKemasanBJ.isExcel);
              FrMainUbahKemasanBJ.MenuUkemas := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainUbahKemasanBJ.UkemasOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainUbahKemasanBJ.Show;
           end;
           FrMainUbahKemasanBJ.WindowState:=wsMaximized;
         end;
    601101:begin
           if Assigned(FrMainTransfer) then
              FrMainTransfer.Show
           else
           begin
              Application.CreateForm(TFrMainTransfer, FrMainTransfer);
              CekOtoritasMenu(IDUser,tag,FrMainTransfer.Istambah, FrMainTransfer.Ishapus,
              FrMainTransfer.Iskoreksi, FrMainTransfer.isCetak, FrMainTransfer.isExcel);
              FrMainTransfer.MenuTransfer := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainTransfer.TransferOL := DM.QuCari.Fieldbyname('OL').Value;

              FrMainTransfer.Show;
           end;
           with FrMainTransfer do
              begin
                ViewOtorisasi(TvMaster,QumasterBP,TransferOL);
              end;
           FrMainTransfer.WindowState:=wsMaximized;
         end;
      6012
        :begin
           if Assigned(FrMainKoreksi) then
              FrMainKoreksi.Show
           else
           begin
              Application.CreateForm(TFrMainKoreksi, FrMainKoreksi);
              CekOtoritasMenu(IDUser,tag,FrMainKoreksi.Istambah,FrMainKoreksi.Ishapus,
              FrMainKoreksi.Iskoreksi, FrMainKoreksi.isCetak, FrMainKoreksi.isExcel);
              frMainKoreksi.MenuOpname := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainKoreksi.OpnameOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainKoreksi.Show;
           end;
           with FrMainKoreksi do
              begin
                ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,OpnameOL);
              end;
           FrMainKoreksi.WindowState:=wsMaximized;
         end;
       6013
        :begin
           if Assigned(FrMainKoreksiBJ) then
              FrMainKoreksiBJ.Show
           else
           begin
              Application.CreateForm(TFrMainKoreksiBJ, FrMainKoreksiBJ);
              CekOtoritasMenu(IDUser,tag,FrMainKoreksiBJ.Istambah,FrMainKoreksiBJ.Ishapus,
              FrMainKoreksiBJ.Iskoreksi, FrMainKoreksiBJ.isCetak, FrMainKoreksiBJ.isExcel);
              frMainKoreksiBJ.MenuOpname := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainKoreksiBJ.OpnameOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainKoreksiBJ.Show;
           end;
           with FrMainKoreksiBJ do
              begin
                ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,OpnameOL);
              end;
           FrMainKoreksiBJ.WindowState:=wsMaximized;
         end;
     60131
        :begin
           if Assigned(FrMainKoreksiDK) then
              FrMainKoreksiDK.Show
           else
           begin
              Application.CreateForm(TFrMainKoreksiDK, FrMainKoreksiDK);
              CekOtoritasMenu(IDUser,tag,FrMainKoreksiDK.Istambah,FrMainKoreksiDK.Ishapus,
              FrMainKoreksiDK.Iskoreksi, FrMainKoreksiDK.isCetak, FrMainKoreksiDK.isExcel);
              FrMainKoreksiDK.MenuKOreksi:= Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainKoreksiDK.KoreksiOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainKoreksiDK.Show;
           end;
           with FrMainKoreksiDK do
              begin
                ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,FrMainKoreksiDK.KOreksiOL);
              end;
           FrMainKoreksiDK.WindowState:=wsMaximized;
         end;

     4030
        :begin
           if Assigned(FrMainRJual) then
              FrMainRJual.Show
           else
           begin
              Application.CreateForm(TFrMainRJual, FrMainRJual);
              CekOtoritasMenu(IDUser,tag,FrMainRJual.Istambah,FrMainRJual.Ishapus,
              FrMainRJual.Iskoreksi, FrMainRJual.isCetak, FrMainRJual.isExcel);
              FrMainRJual.Show;
           end;
           FrMainRJual.WindowState:=wsMaximized;
         end;
     6014
        :begin
          { if Assigned(FrMainHasilP) then
              FrMainHasilP.Show
           else
           begin
              Application.CreateForm(TFrMainHasilP, FrMainHasilP);
              CekOtoritasMenu(IDUser,tag,FrMainHasilP.Istambah,FrMainHasilP.Ishapus,
              FrMainHasilP.Iskoreksi, FrMainHasilP.isCetak, FrMainHasilP.isExcel);
              FrMainHasilP.Show;
           end;
           FrMainHasilP.WindowState:=wsMaximized; }
         end;
     701   :begin
    { if LevelUserAccess>0 Then
     Begin
      if MessageDlg('Koreksi Nota?',mtInformation,[mbYes,MbNo],0)=IdYes Then
      Begin
       XLevelKoreksi:=True;
       if Assigned(FrMainJualKasir) then
              FrMainJualKasir.Show
           else
           begin
              Application.CreateForm(TFrMainJualKasir, FrMainJualKasir);
              CekOtoritasMenu(IDUser,tag,FrMainJualKasir.Istambah,FrMainJualKasir.Ishapus,
              FrMainJualKasir.Iskoreksi, FrMainJualKasir.isCetak, FrMainJualKasir.isExcel);
              FrMainJualKasir.Show;
           end;
           FrMainJualKasir.WindowState:=wsMaximized;
      end
      else
      Begin
         XLevelKoreksi:=False;
         with DM.QuCari do
               begin
                 Close;
                 SQL.Clear;
                 SQL.Add('select KodeKasir from DBFLPASS');
                 SQL.Add('where UserId = :0');
                 Parameters[0].Value := IDUser;
                 Open;

                 if Fields[0].AsString = '' then
                   ShowMessage('User ini tidak memiliki Kode Kasir !')
                 else
                   begin
                     Application.CreateForm(TFrJualKasir, FrJualKasir);
                     FrJualKasir.KodeKasir := Fields[0].AsString;
                     FrJualKasir.ShowModal;

                   end;
               end;
      end;
     end
     else }
   //  Begin
       XLevelKoreksi:=False;   
             with DM.QuCari do
               begin
                 Close;
                 SQL.Clear;
                 SQL.Add('select KodeKasir from DBFLPASS');
                 SQL.Add('where UserId = :0');
                 Parameters[0].Value := IDUser;
                 Open;

                 if Fields[0].AsString = '' then
                   ShowMessage('User ini tidak memiliki Kode Kasir !')
                 else
                   begin
                     Application.CreateForm(TFrJualKasir, FrJualKasir);
                     FrJualKasir.KodeKasir := Fields[0].AsString;
                     FrJualKasir.ShowModal;
                   end;
             end;
      end;

     7011 : Begin
              frLogin := TFrLogin.Create(Self);
              frLogin.ShowModal;
              IdKoreksi:=frLogin.NamaUser.Text;
              IdKunci:=frLogin.KUNCI.Text;
               if (MyCariUserName(IdKoreksi,IdKunci,mStatus, Mlevel)=true) then
                 begin
                    if Mlevel >0 Then
                    Begin
                      XLevelKoreksi:=True;
                      if Assigned(FrMainJualKasir) then
                       FrMainJualKasir.Show
                      else
                      begin
                       Application.CreateForm(TFrMainJualKasir, FrMainJualKasir);
                       CekOtoritasMenu(IDUser,tag,FrMainJualKasir.Istambah,FrMainJualKasir.Ishapus,
                       FrMainJualKasir.Iskoreksi, FrMainJualKasir.isCetak, FrMainJualKasir.isExcel);
                       FrMainJualKasir.Show;
                      end;
                       FrMainJualKasir.WindowState:=wsMaximized;
                    end;
                 end;
            end;
     702   :begin
              if Assigned(FrJualKasirOrder) then
                 ShowMessage('Form Daftar Order belum di tutup !')
              else
              begin
                Application.CreateForm(TFrJualKasirOrder, FrJualKasirOrder);
                FrJualKasirOrder.Caption := 'Order / Pesanan : Daftar Pesanan';
                FrJualKasirOrder.IsOrder := 1;
                FrJualKasirOrder.ShowModal;
              end;
            end;

     703   :begin
              if Assigned(FrJualKasirOrder) then
                 ShowMessage('Form Daftar Pesanan belum di tutup !')
              else
              begin
                Application.CreateForm(TFrJualKasirOrder, FrJualKasirOrder);
                FrJualKasirOrder.Caption := 'Order / Pesanan : Daftar Order';
                FrJualKasirOrder.IsOrder := 0;
                FrJualKasirOrder.ShowModal;
              end;
            end;

      8001 :begin
              if Assigned(FrReportPreview) then
                 FrReportPreview.Show
              else
              begin
                 Application.CreateForm(TFrReportPreview,FrReportPreview);
                 FrReportPreview.Show;
              end;
              FrReportPreview.WindowState:=wsMaximized;
            end;
      8005 :begin
              if Assigned(FrAktivitasUser) then
                 FrAktivitasUser.Show
              else
              begin
                 Application.CreateForm(TFrAktivitasUser,FrAktivitasUser);
                 FrAktivitasUser.Show;
              end;
              FrAktivitasUser.WindowState:=wsMaximized;
            end;
       8006 :begin
              begin
                 Application.CreateForm(TFrHitungUlangD,FrHitungUlangD);
                 FrHitungUlangD.ShowModal;
              end;

            end;
      8101 :begin
              {if Assigned(FrTutupbuku) then
                 FrTutupbuku.Show
              else}
              begin
                 Application.CreateForm(TFrTutupbuku,FrTutupbuku);
                 FrTutupbuku.Showmodal;
              end;
              //FrTutupbuku.WindowState:=wsMaximized;
            end;
       8102 :begin
              {if Assigned(FrTutupbuku) then
                 FrTutupbuku.Show
              else}
              begin
                 Application.CreateForm(TFrHitungUlang,FrHitungUlang);
                 FrHitungUlang.Showmodal;
              end;
              //FrTutupbuku.WindowState:=wsMaximized;
            end;
      8103 :begin
              {if Assigned(FrTutupbuku) then
                 FrTutupbuku.Show
              else}
              begin
                 Application.CreateForm(TFrTutupbukuFiskal,FrTutupbukuFiskal);
                 FrTutupbukuFiskal.Showmodal;
              end;
              //FrTutupbuku.WindowState:=wsMaximized;
            end;

       8013 :begin
                 Application.CreateForm(TFrRata2,FrRata2);
                 FrRata2.ShowModal;
             end;
       8104 :begin
                 Application.CreateForm(TFrAjcTransfer,FrAjcTransfer);
                 FrAjcTransfer.ShowModal;
             end;
       8105 :begin
                 Application.CreateForm(TFrAjcTransferPajak,FrAjcTransferPajak);
                 FrAjcTransferPajak.ShowModal;
             end;
       8106 :begin
              if Assigned(FrHppProduksi) then
              FrHppProduksi.Show
              else
              begin
               Application.CreateForm(TFrHppProduksi, FrHppProduksi);
               CekOtoritasMenu(IDUser,tag,FrHppProduksi.Istambah,FrHppProduksi.Ishapus,
               FrHppProduksi.Iskoreksi, FrHppProduksi.isCetak, FrHppProduksi.isExcel);
               FrHppProduksi.Show;
              end;
              FrHppProduksi.WindowState:=wsMaximized;
             end;
       {8107 :begin
                 Application.CreateForm(TFrAjcTransferPajak,FrAjcTransferPajak);
                 FrAjcTransferPajak.ShowModal;
             end; }
       8107: begin
               Application.CreateForm(TFrPostingJurnalOto,FrPostingJurnalOto);
               QuMenu.Locate('Access',Tag,[]);
               FrPostingJurnalOto.Caption:=QuMenu.FieldByName('Caption').AsString;
               FrPostingJurnalOto.Showmodal;

             end;
       901 :begin
               Cascade;
            end;
      9021 :begin
               TileMode:=tbHorizontal;
               Tile
            end;
      9022 :begin
               TileMode:=tbVertical;
               Tile
            end;

       903 :begin
               ArrangeIcons;
            end;
       1001010
        :begin
           if Assigned(Frkota) then
              Frkota.Show
           else
           begin
              Application.CreateForm(TFrKota, Frkota);
              CekOtoritasMenu(IDUser,tag,Frkota.Istambah,Frkota.Ishapus,
              Frkota.Iskoreksi, Frkota.isCetak, Frkota.isExcel);
              Frkota.Show;
           end;
           Frkota.WindowState := wsMaximized;
         end;
    1001011
        :begin
           if Assigned(FrArea) then
              FrArea.Show
           else
           begin
              Application.CreateForm(TFrArea, FrArea);
              CekOtoritasMenu(IDUser,tag,FrArea.Istambah,FrArea.Ishapus,
              FrArea.Iskoreksi, FrArea.isCetak, FrArea.isExcel);
              FrArea.Show;
           end;
           Frarea.WindowState := wsMaximized;
         end;
    1004006: begin
             if Assigned(FrJabatan) then
              FrJabatan.Show
             else
             begin
                Application.CreateForm(TFrJabatan, FrJabatan);
                CekOtoritasMenu(IDUser,tag,FrJabatan.Istambah,FrJabatan.Ishapus,
                FrJabatan.Iskoreksi, FrJabatan.isCetak, FrJabatan.isExcel);
                FrJabatan.Show;
             end;
             FrJabatan.WindowState:=wsMaximized;
            end;
     1004007: begin
             if Assigned(Frkaryawan) then
              Frkaryawan.Show
             else
             begin
                Application.CreateForm(TFrkaryawan, Frkaryawan);
                CekOtoritasMenu(IDUser,tag,Frkaryawan.Istambah,Frkaryawan.Ishapus,
                Frkaryawan.Iskoreksi, Frkaryawan.isCetak, Frkaryawan.isExcel);
                Frkaryawan.Show;
             end;
             Frkaryawan.WindowState:=wsMaximized;
            end;
     1004008: begin
             if Assigned(FrSales) then
              FrSales.Show
             else
             begin
                Application.CreateForm(TFrSales, FrSales);
                CekOtoritasMenu(IDUser,tag,FrSales.Istambah,FrSales.Ishapus,
                FrSales.Iskoreksi, FrSales.isCetak, FrSales.isExcel);
                FrSales.Show;
             end;
             FrSales.WindowState:=wsMaximized;
            end;
     1002100 :begin
              if Assigned(FrbarangDanKomisi) then
                 FrbarangDanKomisi.Show
              else
              begin
                Application.CreateForm(TFrbarangDanKomisi, FrbarangDanKomisi);
                CekOtoritasMenu(IDUser,tag,FrbarangDanKomisi.Istambah,FrbarangDanKomisi.Ishapus,
                FrbarangDanKomisi.Iskoreksi, FrbarangDanKomisi.isCetak, FrbarangDanKomisi.isExcel);
                FrbarangDanKomisi.Show;
              end;
              FrbarangDanKomisi.WindowState:=wsMaximized;
            end;
     10040080: begin
             if Assigned(FrBiaya) then
              FrSales.Show
             else
             begin
                Application.CreateForm(TFrbiAYA, FrBiaya);
                CekOtoritasMenu(IDUser,tag,FrBiaya.Istambah,FrBiaya.Ishapus,
                FrBiaya.Iskoreksi, FrBiaya.isCetak, FrBiaya.isExcel);
                FrBiaya.Show;
             end;
             FrBiaya.WindowState:=wsMaximized;
            end;
     10040081
        :begin
           if Assigned(FrDevisi) then
              FrDevisi.Show
           else
           begin
              Application.CreateForm(TFrDevisi, FrDevisi);
              CekOtoritasMenu(IDUser,tag,FrDevisi.Istambah,FrDevisi.Ishapus,
              FrDevisi.Iskoreksi, FrDevisi.isCetak, FrDevisi.isExcel);
              FrDevisi.Show;
           end;
           FrDevisi.WindowState := wsMaximized;
         end;
     8002 :begin
            if Assigned(FrDasboard) then
               FrDasboard.Show
            else
            begin
               Application.CreateForm(TFrDasboard,FrDasboard);
               FrDasboard.Show;
            end;
           FrDasboard.WindowState:=wsMaximized;
           end;
     40041:begin
            if Application.FindComponent('FrFakturPajak')<>nil then
              begin
                FrFakturPajak.Show;
              end else
              begin
                Application.CreateForm(TFrFakturPajak, FrFakturPajak);
                QuMenu.Locate('Access',Tag,[]);
                FrFakturPajak.Caption:=QuMenu.FieldByName('Caption').AsString;
                //FrFakturPajak.Menu:=MMenu;
                FrFakturPajak.Show;
              end;
           End;
     3034:begin
            if Application.FindComponent('FrFakturPajakRBeli')<>nil then
              begin
                FrFakturPajakRBeli.Show;
              end else
              begin
                Application.CreateForm(TFrFakturPajakRBeli, FrFakturPajakRBeli);
                QuMenu.Locate('Access',Tag,[]);
                FrFakturPajakRBeli.Caption:=QuMenu.FieldByName('Caption').AsString;
                FrFakturPajakRBeli.Menu :=MMenu;
                FrFakturPajakRBeli.Show;
              end;
           End;
     8110 : begin        //upoad data
               Application.CreateForm(TFrPostingJurnalOto,FrPostingJurnalOto);
               QuMenu.Locate('Access',Tag,[]);
               FrPostingJurnalOto.Caption:=QuMenu.FieldByName('Caption').AsString;
               FrPostingJurnalOto.Showmodal;
             end;
     8108 : begin
               Application.CreateForm(TFrPostingUlangJurnalOto,FrPostingUlangJurnalOto);
               QuMenu.Locate('Access',Tag,[]);
               FrPostingULangJurnalOto.Caption:=QuMenu.FieldByName('Caption').AsString;
               FrPostingUlangJurnalOto.Showmodal;
             end;
     1003013
        :begin
           if Assigned(FrASM) then
              FrGudang.Show
           else
           begin
              Application.CreateForm(TFrASM, FrASM);
              FrASM.Tag := tag;
              CekOtoritasMenu(IDUser,tag,FrASM.Istambah,FrASM.Ishapus,
              FrASM.Iskoreksi, FrASM.isCetak, FrASM.isExcel);
              FrASM.Show;
           end;
           FrASM.WindowState:=wsMaximized;
         end;

     1003014 :begin
              if Assigned(FrJenisCust) then
                 FrJenisCust.Show
              else
              begin
                Application.CreateForm(TFrJenisCust, FrJenisCust);
                CekOtoritasMenu(IDUser,tag,FrJenisCust.Istambah,FrJenisCust.Ishapus,
                FrJenisCust.Iskoreksi, FrJenisCust.isCetak, FrJenisCust.isExcel);
                FrJenisCust.Show;
              end;
              FrJenisCust.WindowState:=wsMaximized;
            end;
     30011
        :begin
           if Assigned(FrMainPROut) then
              FrMainPROut.Show
           else
           begin
              Application.CreateForm(TFrMainPROut, FrMainPROut);
              CekOtoritasMenu(IDUser,tag,FrMainPROut.Istambah,FrMainPROut.Ishapus,
              FrMainPROut.Iskoreksi, FrMainPROut.isCetak, FrMainPROut.isExcel);
              FrMainPROut.MenuPO := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainPROut.PoOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainPROut.Show;
           end;
           FrMainPROut.WindowState:=wsMaximized;
           with FrMainPROut do
            begin
              ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,POOL);
            end;
         end;
     3013
        :begin
           if Assigned(FrMainPOOut) then
              FrMainPOOut.Show
           else
           begin
              Application.CreateForm(TFrMainPOOut, FrMainPOOut);
              CekOtoritasMenu(IDUser,tag,FrMainPOOut.Istambah,FrMainPOOut.Ishapus,
              FrMainPOOut.Iskoreksi, FrMainPOOut.isCetak, FrMainPOOut.isExcel);
              FrMainPOout.MenuPO := Hint;
              DataBersyarat('Select OL from dbmenu where kodemenu=:0',[Hint], Dm.Qucari);
              FrMainPOOut.PoOL := DM.QuCari.Fieldbyname('OL').Value;
              FrMainPOOut.Show;
           end;
           FrMainPOOut.WindowState:=wsMaximized;
           with FrMainPOOut do
            begin
              ViewOtorisasiNonBandedTableView(TvMaster,Qumaster,POOL);
            end;
         end;
     {40011:Begin
           if Assigned(FrMainSORev) then
              FrMainSORev.Show
           else
           begin
              Application.CreateForm(TFrMainSORev, FrMainSORev);
              CekOtoritasMenu(IDUser,tag,FrMainSORev.Istambah,FrMainSORev.Ishapus,
              FrMainSORev.Iskoreksi, FrMainSORev.isCetak, FrMainSORev.isExcel);
              FrMainSORev.Show;
           end;
           FrMainSORev.WindowState:=wsMaximized;
         end; }
     40015:Begin
           if Assigned(FrMainCloseSO) then
              FrMainCloseSO.Show
           else
           begin
              Application.CreateForm(TFrMainCloseSO, FrMainCloseSO);
              CekOtoritasMenu(IDUser,tag,FrMainCloseSO.Istambah,FrMainCloseSO.Ishapus,
              FrMainCloseSO.Iskoreksi, FrMainCloseSO.isCetak, FrMainCloseSO.isExcel);
              FrMainCloseSO.Show;
           end;
           FrMainCloseSO.WindowState:=wsMaximized;
         end;
    End;
  end;
end;

procedure TFrUtama.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if Frutama.MDIChildCount > 0 then
    begin
        ShowMessage('Ada Form yang belum tertutup!!! ');
        Action:=caNone;
    end else
    begin
       if (Application.MessageBox('Anda yakin keluar program ?','Keluar Program',
                 MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
       begin
         UpdateStatusUser(IDUser,0);
         Action:=cafree;
       end
       else
         Action:=caNone;
    end;
end;

procedure TFrUtama.Timer1Timer(Sender: TObject);
function SecondsIdle: DWord;
var
   liInfo: TLastInputInfo;
begin
   liInfo.cbSize := SizeOf(TLastInputInfo) ;
   GetLastInputInfo(liInfo) ;
   Result := (GetTickCount - liInfo.dwTime) DIV 1000;
end;

function SecToTime(Sec: Integer): string;
var
   H, M, S: string;
   ZH, ZM, ZS: Integer;
begin
   ZH := Sec div 3600;
   ZM := Sec div 60 - ZH * 60;
   ZS := Sec - (ZH * 3600 + ZM * 60) ;
   if ZH<10 then
      H := '0'+IntToStr(ZH)
   else
      H := IntToStr(ZH) ;
   if ZM<10 then
      M := '0'+IntToStr(ZM)
   else
      M := IntToStr(ZM) ;
   if ZS<10 then
      S := '0'+IntToStr(ZS)
   else
      S := IntToStr(ZS) ;
   Result := H + ' : ' + M + ' : ' + S;
end;
var Hasil:string;
begin
   geserKalimat(Panel1.Caption,Hasil);
   StatusBar1.Panels[3].Text := 'Jam : '+TimeToStr(Time);
   //Caption := Format('System IDLE last %S seconds', [SecTotime(SecondsIdle)])+' '+IntToStr(SecondsIdle);
   Panel1.Caption:=Hasil;
end;



end.
