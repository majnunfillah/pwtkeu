unit FrmBeli;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, DBCtrls, ImgList, dxDBTLCl, dxGrClms,
  dxTL, dxDBCtrl, dxDBGrid, dxCntner, variants, dxEditor, dxExEdtr, dxEdLib,
  Dateutils, raCodMod, frxClass, frxDMPExport, frxDBSet, frxDesgn;

type
  TFrBeli = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    QuBeli: TADOQuery;
    Sp_Beli: TADOStoredProc;
    DsQuBeli: TDataSource;
    QuUpdatedbbeli: TADOQuery;
    Label10: TLabel;
    DataSource1: TDataSource;
    QuReport: TADOQuery;
    Panel2: TPanel;
    Panel4: TPanel;
    dxDBGrid1: TdxDBGrid;
    PanelShow2: TPanel;
    BPrev: TSpeedButton;
    BNext: TSpeedButton;
    PanelShow1: TPanel;
    Cetak: TSpeedButton;
    HapusBtn: TSpeedButton;
    KoreksiBtn: TSpeedButton;
    TambahBtn: TSpeedButton;
    frxDataPerusahaan: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    SpeedButton8: TSpeedButton;
    frxDesigner1: TfrxDesigner;
    dxDBGrid1KodeBrg: TdxDBGridMaskColumn;
    dxDBGrid1NamaBrg: TdxDBGridMaskColumn;
    dxDBGrid1Qnt: TdxDBGridMaskColumn;
    dxDBGrid1Harga: TdxDBGridMaskColumn;
    QuByAngkut: TADOQuery;
    frxReport1: TfrxReport;
    Shape4: TShape;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    Panel6: TPanel;
    LDiskonP: TLabel;
    Label25: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    LDiskonRp: TLabel;
    DiskonP: TPBNumEdit;
    GrandTotal: TPBNumEdit;
    Pajak: TPBNumEdit;
    DPP: TPBNumEdit;
    DiskonRp: TPBNumEdit;
    LNamaBrg: TRxLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Harga: TPBNumEdit;
    KodeBrg: TEdit;
    Qnt: TPBNumEdit;
    QuBeliNoBukti: TStringField;
    QuBeliKodesubTipe: TStringField;
    QuBeliPPn: TWordField;
    QuBeliKeterangan: TStringField;
    QuBeliQnt: TBCDField;
    QuBeliRp: TBCDField;
    QuBeliNamaPersediaan: TStringField;
    QuBeliNamaPPN: TStringField;
    QuBeliNamaHutPiut: TStringField;
    QuBeliPerk_Persediaan: TStringField;
    QuBeliPerk_PPn: TStringField;
    QuBeliPerk_HutPiut: TStringField;
    QuBeliUrut: TIntegerField;
    QuBeliNPPn: TBCDField;
    QuBeliNDPP: TBCDField;
    QuBeliNNet: TBCDField;
    dxDBGrid1Perk_Persediaan: TdxDBGridMaskColumn;
    dxDBGrid1Perk_PPn: TdxDBGridMaskColumn;
    dxDBGrid1Perk_HutPiut: TdxDBGridMaskColumn;
    dxDBGrid1NPPn: TdxDBGridMaskColumn;
    dxDBGrid1NDPP: TdxDBGridMaskColumn;
    dxDBGrid1NNet: TdxDBGridMaskColumn;
    QuBeliKodeCustSupp: TStringField;
    QuBeliNamaCustSupp: TStringField;
    QuBeliALamat: TStringField;
    QuBeliTanggal: TDateTimeField;
    Label2: TLabel;
    Label3: TLabel;
    NoBukti: TEdit;
    KodeSupp: TEdit;
    Shape1: TShape;
    LnamaSupp: TLabel;
    LAlamatSupp: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    PPN: TComboBox;
    Tanggal: TDateEdit;
    Label8: TLabel;
    NoUrut: TEdit;
    dxDBGrid1NoBukti: TdxDBGridMaskColumn;
    dxDBGrid1KodeCustSupp: TdxDBGridMaskColumn;
    dxDBGrid1NamaCustSupp: TdxDBGridMaskColumn;
    dxDBGrid1Tanggal: TdxDBGridDateColumn;
    Label9: TLabel;
    KodeTipe: TEdit;
    LNamaTipe: TRxLabel;
    QuBeliNamaTipeTrans: TStringField;
    QuBeliKodeTipe: TStringField;
    dxDBGrid1NamaTipeTrans: TdxDBGridMaskColumn;
    dxDBGrid1KodeTipe: TdxDBGridMaskColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure TampilData(No_Bukti:String);
    procedure UpdateDataBeli(Choice:Char;Kodet:String);
    procedure FormCreate(Sender: TObject);
    procedure TambahBtnClick(Sender: TObject);
    procedure ClearPanelDetail;
    procedure RefreshAll;
    procedure QntKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TanggalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UpdatedbBeli;
    procedure KoreksiBtnClick(Sender: TObject);
    procedure wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure HapusBtnClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure NoUrutKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TanggalEnter(Sender: TObject);
    procedure TanggalExit(Sender: TObject);
    procedure KodeSuppEnter(Sender: TObject);
    procedure CetakClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure NoDOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure BPrevClick(Sender: TObject);
    procedure BNextClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure NoUrutChange(Sender: TObject);
    procedure KodeBrgExit(Sender: TObject);
    procedure KodeBrgEnter(Sender: TObject);
    procedure NoPOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DiskonPEnter(Sender: TObject);
    procedure DiskonPExit(Sender: TObject);
    procedure DiskonRpExit(Sender: TObject);
    procedure DiscPExit(Sender: TObject);
    procedure TanggalChange(Sender: TObject);
    procedure DiskonPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NoUrutEnter(Sender: TObject);
    procedure NoBuktiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeSuppExit(Sender: TObject);
    procedure KodeTipeExit(Sender: TObject);

  private
    { Private declarations }
    mUrutPO, mTipeDisc: Integer;
    mNilaiEnter: Real;
    mUbahHd, mUbahHdDet: Boolean;
    mValidQnt2: Boolean;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure TampilIsiSupplier;
    procedure TampilIsiEkspedisi;
    procedure TampilIsiGudang;
    procedure TampilIsiValas;
    procedure TampilIsiValasTerm1;
    procedure TampilIsiValasTerm2;
    procedure TampilIsiValasTerm3;
    procedure TampilIsiValasTerm4;
    procedure TampilIsiBarang;
    procedure IsiNoBuktiBaru;
    procedure UpdateDiskon;
    procedure TampilIsiPO;
    procedure TampilIsiBarangPO;
    procedure TampilDataUpdateDiskon(No_Bukti:String);
    procedure TampilIsiTipe;
  public
    { Public declarations }
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel, xModalKoreksi: Boolean;
    NDiskon,NSubTotal,NDPP,NPPN,NNet,DiskonTotal:real;
    yy,mm,dd : word;
    sishal, tothal : integer ;
    Procedure AmBilDataBeli;

  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrBeli: TFrBeli;
  mValid,mExit,mMasterKoreksi,xIsPpn: Boolean;
  Sat:String;
  mUrut,IsTutup,mNosat,mPosisi,mUrutRO:Integer;
  TipeTrans,PlusPPN,Nomor,Model:String;
  mBulan,mTahun:string;
  Biaya,IsiBrg,potongan:Real;
  S:array[0..255]of char;
  BM : TBookmark;

implementation
uses FrmBrows,MyProcedure,MyGlobal,MyModul, FrmMainBeli;
{$R *.DFM}

// PROCEDURE DAN FUNCTION PRIBADI

procedure TFrBeli.TampilTombolDetail(pNilai: Boolean);
begin
  //PanelShow1.Visible:=not pNilai;
  //PanelShow2.Visible:=not pNilai;
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  //Panel3.Enabled:=pNilai;
end;

procedure TFrBeli.TampilIsiSupplier;
begin
  KodeBrows:=10144;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeSupp.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    with FrBrows.QuBrows do
    begin
      KodeSupp.Text:=fieldbyname('KodeCustSupp').AsString;
      LnamaSupp.Caption:=fieldbyname('NamaCustSupp').AsString;
      LAlamatSupp.Caption:=fieldbyname('Alamat').AsString;
    end;
  end else
    ActiveControl:=KodeSupp;
end;

procedure TFrBeli.TampilIsiGudang;
begin

end;

procedure TFrBeli.TampilIsiValas;
begin

end;

procedure TFrBeli.TampilIsiValasTerm1;
begin

end;

procedure TFrBeli.TampilIsiValasTerm2;
begin

end;

procedure TFrBeli.TampilIsiValasTerm3;
begin

end;

procedure TFrBeli.TampilIsiValasTerm4;
begin

end;

procedure TFrBeli.TampilIsiTipe;
begin
  KodeBrows:=30057;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeTipe.Text;
  FrBrows.JnsPakai:=1;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    with FrBrows.QuBrows do
    begin
       KodeTipe.Text:=fieldbyname('KodeTipe').AsString;
       LNamaTipe.Caption:='[ '+fieldbyname('Nama').AsString+' ]';
    end;
  end
  else
    ActiveControl:=KodeTipe;
end;

procedure TFrBeli.TampilIsiBarang;
begin
  KodeBrows:=30056;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeBrg.Text;
  FrBrows.NoKira :=KodeTipe.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    with FrBrows.QuBrows do
    begin
       KodeBrg.Text:=fieldbyname('KodeSubTipe').AsString;
       LNamaBrg.Caption:='[ '+fieldbyname('Nama').AsString+' ]';
    end;
  end
  else
    ActiveControl:=KodeBrg;
end;

procedure TFrBeli.TampilIsiBarangPO;
begin

end;

procedure TFrBeli.TampilIsiEkspedisi;
begin

end;

procedure TFrBeli.IsiNoBuktiBaru;
begin
  DecodeDate(Date,YY,MM,DD);
  If DayOfTheMonth(Date)<=DD then
     DD:=DayOfTheMonth(Date);
  TANGGAL.Date := EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),DD);
  //Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),'PBL',Nomor,NomorBukti,Tanggal.Date,Kodesupp.Text,xIsPpn);
  //NoUrut.Text := NomorBukti;
  //NOBUKTI.Text := Nomor;
end;

procedure TFrBeli.UpdateDiskon;
begin
    if (not QuBeli.IsEmpty) then
    begin
      {with QuUpdatedbBeli do
      begin
         Close;
         Sql.Clear;
         SQL.Add('Update dbBeli');
         SQL.Add('set TIPEDISC=:0, DISC=:1, DISCRP=:2 ');
         SQL.Add('Where NoBukti='+QuotedStr(NoBukti.Text));
         Prepared;
         Parameters[0].Value:=mTipeDisc;
         if mTipeDisc=0 then
         begin
           Parameters[1].Value:=DiskonP.AsFloat;
           Parameters[2].Value:= 0;
         end else
         begin
           if QuBeliTotSubTotal.AsFloat=0 then Parameters[1].Value:=0
             else Parameters[1].Value := (DiskonRp.AsFloat*100)/QuBeliTotSubTotal.AsFloat;
           Parameters[2].Value:= DiskonRp.AsFloat;
         end;
         ExecSQL;
         Close;
         SQL.Clear;
         SQL.Add('exec sp_UpdateBeli '+QuotedStr(NoBukti.Text));
         ExecSQL;
      end; }
      TampilData(NoBukti.Text);
    end;
end;

procedure TFrBeli.TampilIsiPO;
begin

end;

procedure TFrBeli.TampilData(No_Bukti:String);
begin
   QuBeli.Close;
   QuBeli.SQL.Strings[2]:='select @Bulan='+PeriodBln+',@Tahun='+PeriodThn;
   QuBeli.Open;
   if QuBeli.IsEmpty=false then
   begin
      dxDBGrid1.OptionsDB:=[edgoCanNavigation,edgoLoadAllRecords,edgoUseBookmarks]
   end
   else
   begin
      dxDBGrid1.OptionsDB:=[edgoCanNavigation,edgoUseBookmarks];
   end;
   //Hitung;
end;

procedure TFrBeli.TampilDataUpdateDiskon(No_Bukti:String);
begin

end;

procedure TFrBeli.UpdatedbBeli;
begin
  if (not QuBeli.IsEmpty) and (mUbahHd=True) then
  begin
    with QuUpdatedbBeli do
    begin
       Close;
       Sql.Clear;
       SQL.Add('Update dbPembelian');
       SQL.Add('set TANGGAL=:0,  PPN=:1');
       SQL.Add('Where NoBukti='+QuotedStr(NoBukti.Text));
       Prepared;
       Parameters[0].Value := TANGGAL.Date;

       Parameters[1].Value := PPN.ItemIndex;
       ExecSQL;
       {if mUbahHdDet=True then
       begin
         Close;
         SQL.Clear;
         SQL.Add('exec sp_UpdateBeli '+QuotedStr(NoBukti.Text));
         ExecSQL;
       end;  }
       mUbahHd:=False; mUbahHdDet:=False;
    end;
    TampilData(NoBukti.Text);
  end;
end;

procedure TFrBeli.ClearPanelDetail;
begin
   //NoPO.Text:='';
   KodeBrg.Text:='';
   LNamaBrg.Caption:='[ . . . ]';
   Qnt.Value:=0;
   Harga.Value:=0;
end;

procedure TFrBeli.RefreshAll;
var i:integer;
begin
   mValid:=False;
   KodeSupp.Enabled:=true;
   for i:= 0 to Panel1.ControlCount-1 do
   begin
      if (Panel1.Controls[i] is TEdit) then
         (Panel1.Controls[i] as TEdit).Clear;
      if (Panel1.Controls[i] is TPBNumEdit) then
         (Panel1.Controls[i] as TPBNumEdit).Value:=0;
   end;
   for i:= 0 to Panel3.ControlCount-1 do
   begin
      if (Panel3.Controls[i] is TEdit) then
         (Panel3.Controls[i] as TEdit).Clear;
      if (Panel3.Controls[i] is TPBNumEdit) then
         (Panel3.Controls[i] as TPBNumEdit).Value:=0;
   end;
   LnamaSupp.Caption:='';
   LAlamatSupp.Caption:='';

   ClearPanelDetail;

end;

procedure TFrBeli.UpdateDataBeli(Choice:Char;Kodet:String);
begin
   if Choice='I' then mUrut:=1
     else mUrut:=QuBeliUrut.AsInteger;

   BM:=QuBeli.GetBookmark;
   With Sp_Beli do
   begin
       Parameters.Refresh;
       Parameters[1].Value:=Choice;
       Parameters[2].Value:=NoBukti.Text;
       Parameters[3].Value:=mUrut;
       Parameters[4].Value:=TANGGAL.Date;
       Parameters[5].Value:=KodeSupp.Text;
       Parameters[6].Value:=PPN.ItemIndex;
       Parameters[7].Value:=KodeBrg.Text;;
       Parameters[8].Value:=Qnt.AsFloat;
       Parameters[9].Value:=Harga.AsFloat;
       Parameters[10].Value:=False;
       Parameters[11].Value:=KodeTipe.text;
       try
          ExecProc;
          if Choice='I' then
          begin
            TampilData(NOBUKTI.Text);
          end else if Choice='U' then
          begin
            TampilData(NOBUKTI.Text);
            if QuBeli.BookmarkValid(BM) then
            begin
              try
                 QuBeli.GotoBookmark(BM);
              finally
                 QuBeli.FreeBookmark(BM);
              end
            end else
            begin
              QuBeli.FreeBookmark(BM);
              QuBeli.Last;
            end;
          end
          Else if Choice='D' then
          begin
            TampilData(NOBUKTI.Text);
          end;
       except
          If (Choice='I') Or (Choice='U') then
             showmessage('Proses Gagal !                   ')
          else If (Choice='D') then
             showmessage('Proses Gagal !, Barang berkaitan dengan transaksi lain.');
       end;
   end;
end;

Procedure TFrBeli.AmBilDataBeli;
begin
   if not QuBeli.IsEmpty then
   begin
      Tanggal.Date:=QuBeliTanggal.AsDateTime;
      KodeSupp.Text:=QuBeliKodeCustSupp.AsString;
      LNamaSupp.Caption:=QuBeliNamaCustSupp.AsString;
      LAlamatSupp.Caption:=QuBeliAlamat.AsString;

      PPN.ItemIndex:=QuBeliPPN.AsInteger;
      TampilLabelDiskon(mTipeDisc,LDiskonP,LDiskonRp);
   end;
   TampilLabelDiskon(mTipeDisc,LDiskonP,LDiskonRp);
end;



// PROCEDURE DAN FUNCTION MILIK DELPHI

procedure TFrBeli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     FrMainBeli.ToolButton10.Click;
     Hapus_Daftar_Nomor('PBL',NoBukti.Text,IDUser);
     Action:=cafree;
end;

procedure TFrBeli.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrBeli.FormShow(Sender: TObject);
begin
  mValid:=False;
  xModalKoreksi:=FrMainBeli.ModalKoreksi;
  If FrMainBeli.ModalKoreksi = False then
  begin
    RefreshAll;
    IsiNoBuktiBaru;
    TampilData(NoBukti.Text);
    NoUrut.Enabled:=True;
  end
  else
  Begin
    NOBUKTI.Text := FrMainBeli.QuMaster.FieldByname('Nobukti').AsString;
    //Hapus_Daftar_Nomor_User ('PBL',IDUser);
    //AmbilUrut(NOBUKTI.Text,NomorBukti);
    //Daftar_Nomor('PBL',NOBUKTI.Text,IsMax);
    TampilData(NOBUKTI.Text);
    AmBilDataBeli;
    //NoUrut.Text := NomorBukti;
    //NoUrut.Text:=QuBeliNoUrut.AsString;
    NoUrut.Enabled:=False;
  end;
end;

procedure TFrBeli.FormCreate(Sender: TObject);
begin
  LnamaSupp.Caption:='';
  LAlamatSupp.Caption:='';
  Hapus_Daftar_Nomor_User('PBL',IDUser);
end;

procedure TFrBeli.TambahBtnClick(Sender: TObject);
begin
  //if CheckFormMaster=true then
  begin
      Model:='write';
      TampilTombolDetail(True);
      NoBukti.Enabled := True;
      KodeSupp.Enabled := True;
      Tanggal.Enabled := True;
      PPN.Enabled := True;
      KodeBrg.Enabled := True;
      ActiveControl:=NoBukti;
  end
 // else
 // begin
//     ShowMessage('Form Master Tidak Lengkap, Silahkan Anda Periksa !');
//  end;
end;

procedure TFrBeli.QntKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key=VK_Escape then
   begin
      mValid:=false;
      KodeBrg.Enabled:=true;
      //Panel2.Enabled:=true;
      ClearPanelDetail;
      if model='write' then
         ActiveControl:=nobukti
      else
      begin
         SpeedButton1.Click;
      end;
   end;
end;

procedure TFrBeli.TanggalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_Return then
  begin
    if ((Sender=Tanggal) or (Sender=PPN)) and (CekPeriode(IDUser,TANGGAL.Date)=False) then
      Abort;
    UpdatedbBeli;
  end
  else if Key=Vk_Escape then
  begin
    {If FrMainBeli.ModalKoreksi = False then
    begin
      Hapus_Daftar_Nomor_User('PBL',IDUser);
      mValid:=False;
      RefreshAll;
      IsiNoBuktiBaru;
      TampilData(NOBUKTI.Text);
      ActiveControl := NoBukti;
    end
    else}
    begin
      mExit := true;
      close;
    end;
  end;
end;

procedure TFrBeli.KoreksiBtnClick(Sender: TObject);
begin
  //if CheckFormMaster=true then
  begin
     mValid:=false;
     model:='koreksi';
     // data yang di update
     if QuBeli.IsEmpty=false then
     begin
        TampilTombolDetail(True);
        KodeBrg.Enabled:=False;
        NoBukti.Enabled := False;
        KodeSupp.Enabled := False;
        NoBukti.Text := QuBeliNoBukti.AsString;
        Tanggal.date := QuBeliTanggal.AsDateTime;
        KodeSupp.Text := QuBeliKodeCustSupp.AsString;
        LnamaSupp.Caption := QuBeliNamaCustSupp.AsString;
        LAlamatSupp.Caption := QuBeliALamat.AsString;
        PPN.ItemIndex := QuBeliPPn.AsInteger;
        KodeBrg.Text:=QuBeliKodesubTipe.AsString;
        LNamaBrg.Caption:='[ '+QuBeliKeterangan.AsString+' ]';
        KodeTipe.Text:=QuBeliKodeTipe.AsString;
        LNamaTipe.Caption:='[ '+QuBeliNamaTipeTrans.AsString+' ]';
        Qnt.AsFloat:=QuBeliQnt.AsFloat;
        Harga.AsCurrency:=QuBeliRp.AsCurrency;
        mUrut:=QuBeliUrut.AsInteger;
        ActiveControl:=Harga;
     end
     else
     begin
        ShowMessage('Tidak ada transaksi yang dikoreksi !');
        ActiveControl:=dxDBGrid1;
     end;
  end //else
 // begin
     //ShowMessage('Form Master Tidak Lengkap, Silahkan Anda Periksa !');
 // end;
end;

procedure TFrBeli.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Escape then
  begin
    Hapus_Daftar_Nomor_User('PBL',IDUser);
    mExit := True;
    Close;
    {if xModalKoreksi then
    begin
      mExit := True;
      Close;
    end
    else
    begin
      Hapus_Daftar_Nomor_User('PBL',IDUser);
      RefreshAll;
      IsiNoBuktiBaru;
      TampilData(NOBUKTI.Text);
      ActiveControl:=NoBukti;
    end;}
  end
  else if key=VK_return then
  begin
    KoreksiBtn.Click;
  end
  else if key=VK_delete then
  begin
    //HapusBtn.Click;
  end
  else if key=VK_insert then
  begin
    //TambahBtn.Click;
  end;
end;

procedure TFrBeli.HapusBtnClick(Sender: TObject);
begin
      if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
      begin
         if QuBeli.IsEmpty=true then
         begin
            Application.MessageBox('Tabel Kosong','Informasi',
            MB_OK Or MB_ICONWARNING);
         end
         else
         begin
            StrPCopy(S,Format('Anda yakin Kode %s dan Nama Barang %s dihapus ?',
            [QuBeliKodeSubTipe.asstring, QuBeliKeterangan.asstring]));
            if (Application.MessageBox(S,'Hapus Data',
               MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
            begin
               UpdateDataBeli('D','BL');
            end;
         end;
      end
      else
      begin
         ShowMessage('Periode Sudah Di Kunci !');
         ActiveControl:=dxDBGrid1;
      end;
end;

procedure TFrBeli.wwDBGrid1Enter(Sender: TObject);
begin
  FrBeli.KeyPreview:=false;
  //CheckFormMaster;
end;

procedure TFrBeli.wwDBGrid1Exit(Sender: TObject);
begin
  FrBeli.KeyPreview:=true;
end;

procedure TFrBeli.wwDBGrid1DblClick(Sender: TObject);
begin
  KoreksiBtn.Click;
end;

procedure TFrBeli.NoUrutKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_Return then
  begin
    {If Length(NoUrut.Text)<5 then
    begin
      MessageDlg('Nomor urut kurang '+InttoStr(5-Length(NoUrut.Text))+' digit.',mtWarning,[MbOk],0);
      ActiveControl := NoUrut;
    end
    else }
    begin
      TampilData(nobukti.Text);
      if not QuBeli.IsEmpty then
      Begin
         AmBilDataBeli;
      end
      {else
      Begin
        if FrMainBeli.ModalKoreksi then
        begin
          ActiveControl := NoBukti;
        end;
      end; }
      {If Not Daftar_Nomor('PBL',NOBUKTI.Text,IsMax) then
      begin
        MessageDlg('Nomor : '+NOBUKTI.Text+' telah digunakan oleh '+MyUser+'.',mtWarning,[MbOk],0);
        ActiveControl := NoUrut;
      end;}
    end;
  end
  else if Key=Vk_Escape then
  begin
    //mExit := True;
    Close;
  end;
end;

procedure TFrBeli.TanggalEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrBeli.TanggalExit(Sender: TObject);
begin
  if mValid then
  begin
     if CekPeriode(IDUser,TANGGAL.Date)=false then
     begin
        MessageDlg('Tanggal tidak sesuai periode transaksi.',mtWarning,[mbok],0);
        ActiveControl:=Tanggal;
     end;
  end;
end;

procedure TFrBeli.KodeSuppEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrBeli.CetakClick(Sender: TObject);
var N1, N2, N3 : string;
    T1, T2 : Real;
    Tot : byte;
    H1  : real;
begin
  tothal :=(QuBeli.RecordCount div 10);
  sishal :=(QuBeli.RecordCount mod 10);
  if sishal>0 then tothal :=tothal+1;
  N3  := FloatToStr(GrandTotal.Value);
  Tot := CariKoma(N3);
  if Tot <> 0 then
  begin
    N1  := copy(N3, 1, Tot-1);
    N2  := copy(N3, Tot+1, 2);
  end else
  begin
    N1  := N3;
    N2  := '0';
  end;
  //H1  := (GrandTotal.Value+HandlingFee.AsFloat);
  T1  := StrToFloat(N1);
  T2  := StrToFloat(N2);
  N1  := KonversiKeTeks(T1);
  if T2 <> 0 then
  begin
    if T2 < 10 then
       N2 := KonversiKeTeks(T2)
    else
       N2 := KonversiKeTeks(T2);
    if N1 = '' then
       TempCode:=N2+'Sen'
    else
       TempCode:=N1+'Rupiah '+N2+'Sen';
  end
  else
    TempCode:=N1+'Rupiah ';

  With QuUpdatedbbeli do
  begin
    close;
    sql.clear;
    sql.add('Select * From vwPerusahaan ');
    Open;
  end;

  {  if QuUpdatedbbeli.FieldByName('Nama').AsString='Zona Accessories' then
       frxReport1.LoadFromFile(currDir+'Nota\NOTABeliZ.fr3') else }

  frxReport1.LoadFromFile(currDir+'Nota\NotaBELI01.fr3');
  frxReport1.ShowReport;

end;

procedure TFrBeli.BitBtn1Click(Sender: TObject);
begin
  if CekPeriode(IdUser,TANGGAL.Date)=True then
  begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      if length(Kodebrg.Text)>0 then
      begin
        if model='write' then
        begin
              UpdateDataBeli('I','BL');
              ClearPanelDetail;
              ActiveControl:=Kodebrg;
        end
        else if model='koreksi' then
        begin
            UpdateDataBeli('U','BL');
            SpeedButton1.Click;
        end
      end else
      begin
        ShowMessage('Kode barang tidak boleh kosong !');
        ActiveControl:=Kodebrg;
      end;
    end
    else
    begin
      ShowMessage('Periode Sudah Di Kunci !');
      if Model='Koreksi' then
         ActiveControl:=Qnt
      else
       ActiveControl:=Qnt;
    end;
  end
  else
    ShowMessage('Tanggal Periode Tidak Sesuai !');
end;

procedure TFrBeli.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
  ClearPanelDetail;
end;

procedure TFrBeli.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
   QuBeli.Sort:=AFieldName;
end;

procedure TFrBeli.NoDOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Escape then
  begin
     mValid :=false;
     SpeedButton1.Click;
  end;
end;

procedure TFrBeli.FormDestroy(Sender: TObject);
begin
  FrBeli:=nil;
end;

procedure TFrBeli.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
    if ANode.HasChildren then
      Exit;

    if not AFocused then
    begin
      if ANode.Index mod 2 =0 then
         AColor:=clWhite
      else
         AColor:=$00E1FFFF;
    end;
end;

procedure TFrBeli.BPrevClick(Sender: TObject);
begin
        Hapus_Daftar_Nomor('PBL',NoBukti.Text,iduser);
        RefreshAll;
        ActiveControl:=TANGGAL;
        Hapus_Daftar_Nomor('PBL',NoBukti.Text,iduser);

        FrMainBeli.QuNavigator.Locate('nobukti',FrMainBeli.QuMaster.fieldbyname('nobukti').AsString,[LOC,LOP]);
        FrMainBeli.QuNavigator.Prior;
        FrMainBeli.QuMaster.Locate('nobukti',FrMainBeli.QuNavigator.fieldbyname('nobukti').AsString,[LOC,LOP]);

        FormShow(self);
end;

procedure TFrBeli.BNextClick(Sender: TObject);
begin
        Hapus_Daftar_Nomor('PBL',NoBukti.Text,iduser);
        RefreshAll;
        ActiveControl:=TANGGAL;
        Hapus_Daftar_Nomor('PBL',NoBukti.Text,iduser);

        FrMainBeli.QuNavigator.Locate('nobukti',FrMainBeli.QuMaster.fieldbyname('nobukti').AsString,[LOC,LOP]);
        FrMainBeli.QuNavigator.Next;
        FrMainBeli.QuMaster.Locate('nobukti',FrMainBeli.QuNavigator.fieldbyname('nobukti').AsString,[LOC,LOP]);

        FormShow(self);

end;

procedure TFrBeli.SpeedButton8Click(Sender: TObject);
begin
  With QuUpdatedbbeli do
  begin
    close;
    sql.clear;
    sql.add('Select * From vwPerusahaan ');
    Open;
  end;

  {if QuUpdatedbbeli.FieldByName('Nama').AsString='Zona Accessories' then
       frxReport1.LoadFromFile(currDir+'Nota\NOTABeliZ.fr3') else }
  frxReport1.LoadFromFile(currDir+'Nota\NotaBELI01.fr3');
  frxReport1.DesignReport;
end;

procedure TFrBeli.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
  if comparetext(varname,'Terbilang')=0 then
  value := '# '+TempCode+' #';
  if comparetext(varname,'Total')=0 then
     value := GrandTotal.Value;
  if comparetext(varname,'Tothal')=0 then
      value := tothal;
end;

procedure TFrBeli.NoUrutChange(Sender: TObject);
begin
  if mValid then
  begin
    if Length(NoUrut.Text)=5 then
    begin
      Konfig('PBL',Nourut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date,xIsPpn);
      NOBUKTI.Text := F1+Separator+F2+Separator+F3+Separator+F4;
    end
    else
      ActiveControl := NoUrut;
  end;
end;

procedure TFrBeli.KodeBrgExit(Sender: TObject);
var xStrSql : String;
begin
  if mValid Then
  begin
    xStrSQL :='Select A.KODETIPE,B.KODESUBTIPE,B.Nama '+
                       'from DBTIPETRANS A '+
                       '     Left Outer join DBSUBTIPETRANS B on B.KODETIPE=A.KODETIPE '+
                       ' where B.KodeSubtipe=:0 and A.KodeTipe=:1 '+
                       'Order by A.KODETIPE,B.KODESUBTIPE';
    if length(KodeBrg.Text)=0 then TampilIsiBarang else
    begin
        if DataBersyarat(xStrSQL,[KodeBrg.Text, KodeTipe.Text],DM.QuCari)=True then
        begin
          with DM.QuCari do
          begin
             KodeBrg.Text:=fieldbyname('KodeBrg').AsString;
             LNamaBrg.Caption:='[ '+fieldbyname('NamaBrg').AsString+' ]';
          end;
        end
        else TampilIsiBarang;
    end;
  end;
end;

procedure TFrBeli.KodeBrgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrBeli.NoPOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key=Vk_Escape then
 begin
   SpeedButton1.Click;
 end
end;

procedure TFrBeli.DiskonPEnter(Sender: TObject);
begin
  mNilaiEnter:=DiskonP.Value;
  FrBeli.KeyPreview:=False;
end;

procedure TFrBeli.DiskonPExit(Sender: TObject);
begin
  FrBeli.KeyPreview:=True;
  if FormatFloat(',0.00',mNilaiEnter)<>FormatFloat(',0.00',DiskonP.Value) then
  begin
    mTipeDisc:=0;
    UpdateDiskon;
  end;
  TampilLabelDiskon(mTipeDisc,LDiskonP,LDiskonRp);
end;

procedure TFrBeli.DiskonRpExit(Sender: TObject);
begin
  FrBeli.KeyPreview:=True;
  {if QuBeli.IsEmpty then mNilaiEnter:=0 else
  begin
    if mTipeDisc=0 then mNilaiEnter:=QuBeliTotDiskon.AsCurrency
      else mNilaiEnter:=QuBeliDiscRp.Value;
  end;
  if mNilaiEnter<>DiskonRp.Value then
  begin
    mTipeDisc:=1;
    UpdateDiskon;
  end; }
  TampilLabelDiskon(mTipeDisc,LDiskonP,LDiskonRp);
end;

procedure TFrBeli.DiscPExit(Sender: TObject);
begin
  {if Sender=DiscRp then
    DiskonTotal:=ProsesDiskon(Sender)
  else if Sender=DiscP then
  begin
    if Model='write' then DiskonTotal:=ProsesDiskon(Sender)
    else if (Model='koreksi') and (QuBeliDiscP1.AsCurrency<>DiscP.AsCurrency) then
      DiskonTotal:=ProsesDiskon(Sender);
  end;  }
end;

procedure TFrBeli.TanggalChange(Sender: TObject);
begin
  mUbahHd:=True;

  if (Sender=PPN) then
    mUbahHdDet:=True;
end;

procedure TFrBeli.DiskonPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Escape) or (Key=VK_Return) then
  begin
    ActiveControl:=dxDBGrid1;
  end;
end;

procedure TFrBeli.NoUrutEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrBeli.NoBuktiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_Return then
  begin
    {If Length(NoUrut.Text)<5 then
    begin
      MessageDlg('Nomor urut kurang '+InttoStr(5-Length(NoUrut.Text))+' digit.',mtWarning,[MbOk],0);
      ActiveControl := NoUrut;
    end
    else
    begin
      TampilData(nobukti.Text);
      if not QuBeli.IsEmpty then
      Begin
         AmBilDataBeli;
      end
      else
      Begin
        if FrMainBeli.ModalKoreksi then
        begin
          ActiveControl := NoBukti;
        end;
      end;
      If Not Daftar_Nomor('PBL',NOBUKTI.Text,IsMax) then
      begin
        MessageDlg('Nomor : '+NOBUKTI.Text+' telah digunakan oleh '+MyUser+'.',mtWarning,[MbOk],0);
        ActiveControl := NoUrut;
      end;
    end;}
  end
  else if Key=Vk_Escape then
  begin
    //mExit := True;
    SpeedButton1.Click;
  end;
end;

procedure TFrBeli.KodeSuppExit(Sender: TObject);
begin
  if mValid then
  begin
    if DataBersyarat(' Select A.KodeCustSupp, A.NamaCustSupp, A.Alamat, A.Kota from vwBrowsSupp A '+
                    ' Where A.kodecustSupp=:0  '+
                    ' order by A.KodeCustSupp',[KodeSupp.Text],DM.qucari) then
    begin
      KodeSupp.Text:=DM.qucari.FieldByName('KodeCustSupp').AsString;
      LNamaSupp.Caption:=DM.qucari.FieldByName('NamaCustSupp').AsString;
      LAlamatSupp.Caption:=DM.qucari.FieldByName('Alamat').AsString+chr(13)+DM.qucari.FieldByName('Kota').AsString;
    end
    else
    TampilIsiSupplier;
  end;
end;

procedure TFrBeli.KodeTipeExit(Sender: TObject);
var xStrSql : String;
begin
  if mValid Then
  begin
    xStrSQL :='Select A.KODETIPE,A.Nama '+
              'from DBTIPETRANS A where A.Tipe=:0 '+
              'Order by A.KODETIPE';
    if length(KodeTipe.Text)=0 then TampilIsiTipe else
    begin
        if DataBersyarat(xStrSQL,[KodeTipe.Text],DM.QuCari)=True then
        begin
          with DM.QuCari do
          begin
             KodeBrg.Text:=fieldbyname('KodeTipe').AsString;
             LNamaBrg.Caption:='[ '+fieldbyname('Nama').AsString+' ]';
          end;
        end
        else TampilIsiTipe;
    end;
  end;
end;

end.
