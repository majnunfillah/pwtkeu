unit FrmPPL;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, DBCtrls, ImgList, dxDBTLCl, dxGrClms,
  dxTL, dxDBCtrl, dxDBGrid, dxCntner, variants, dxEditor, dxExEdtr, dxEdLib,
  Dateutils, raCodMod, frxClass, frxDMPExport, frxDBSet, frxDesgn, MyGlobal, StrUtils;

type
  TFrPPL = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    QuBeli: TADOQuery;
    Sp_Beli: TADOStoredProc;
    DsQuBeli: TDataSource;
    QuUpdatedbbeli: TADOQuery;
    Label10: TLabel;
    DataSource1: TDataSource;
    QuReport: TADOQuery;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    PanelShow2: TPanel;
    PanelShow1: TPanel;
    Cetak: TSpeedButton;
    HapusBtn: TSpeedButton;
    KoreksiBtn: TSpeedButton;
    TambahBtn: TSpeedButton;
    frxDataPerusahaan: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    SpeedButton8: TSpeedButton;
    frxReport1: TfrxReport;
    frxDesigner1: TfrxDesigner;
    dxDBGrid1KodeBrg: TdxDBGridMaskColumn;
    dxDBGrid1NamaBrg: TdxDBGridMaskColumn;
    dxDBGrid1Satuan: TdxDBGridMaskColumn;
    dxDBGrid1Qnt: TdxDBGridMaskColumn;
    QuByAngkut: TADOQuery;
    Label26: TLabel;
    Label42: TLabel;
    Shape4: TShape;
    Label12: TLabel;
    NoUrut: TEdit;
    Tanggal: TDateEdit;
    NoBukti: TEdit;
    LNamaBrg: TRxLabel;
    Label1: TLabel;
    Label4: TLabel;
    Qnt: TPBNumEdit;
    KodeBrg: TEdit;
    Label19: TLabel;
    NoSat: TPBNumEdit;
    LNamaSat: TRxLabel;
    Label2: TLabel;
    Ket: TEdit;
    CB2: TCheckBox;
    CB1: TCheckBox;
    dxDBGrid1Column5: TdxDBGridCheckColumn;
    QuBeliNobukti: TStringField;
    QuBeliNourut: TStringField;
    QuBeliTanggal: TDateTimeField;
    QuBeliIsClose: TBooleanField;
    QuBeliNobukti_1: TStringField;
    QuBeliurut: TIntegerField;
    QuBelikodebrg: TStringField;
    QuBeliSat: TStringField;
    QuBeliNosat: TWordField;
    QuBeliIsi: TBCDField;
    QuBeliQnt: TBCDField;
    QuBeliKeterangan: TStringField;
    QuBeliIsClose_1: TBooleanField;
    QuBeliNamabrg: TStringField;
    QuBeliKDDep: TStringField;
    QuBeliQntPO: TBCDField;
    QuBeliNMDep: TStringField;
    Label3: TLabel;
    KodeBag: TEdit;
    LNamaBag: TLabel;
    Label7: TLabel;
    KetBrg: TEdit;
    QuBeliNamaBArang: TStringField;
    QuBeliJasa: TIntegerField;
    QuBeliIsOtorisasi3: TBooleanField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure TampilData(No_Bukti,ID:String);
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
    Function CheckFormMaster:boolean;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure NoDOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure KodeGdgEnter(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure KodeBrgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton8Click(Sender: TObject);
    procedure KdDepEnter(Sender: TObject);
    procedure TanggalChange(Sender: TObject);
    procedure NoUrutEnter(Sender: TObject);
    procedure KodeBrgEnter(Sender: TObject);
    procedure KodeBrgExit(Sender: TObject);
    procedure QntEnter(Sender: TObject);
    procedure NoUrutChange(Sender: TObject);
    procedure CB2Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure KodeBagEnter(Sender: TObject);
    procedure KodeBagExit(Sender: TObject);
    procedure frxReport1AfterPrintReport(Sender: TObject);
    procedure NoUrutExit(Sender: TObject);

  private
    { Private declarations }
    mUbahHd, mUbahHdDet: Boolean;
    mNamaSatuan: TNamaSatuanBrg;
    mIsiSatuan: TIsiSatuanBrg;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure TampilIsiDept;
    procedure TampilIsiBarang;
    procedure IsiNoBuktiBaru;
    procedure IsiSatuan;
    Procedure AmBilDataBeli;

  public
    { Public declarations }
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel,xModalKoreksi: Boolean;
    yy,mm,dd : word;
    sishal, tothal : integer ;


  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrPPL: TFrPPL;
  mValid,mExit,mMasterKoreksi,xIsPpn: Boolean;
  Sat:String;
  mUrut,mUrutPO,IsTutup,mNosat,mPosisi,mUrutRO:Integer;
  TipeTrans,PlusPPN,Nomor,Model:String;
  mBulan,mTahun:string;
  S:array[0..255]of char;
  BM : TBookmark;

implementation
uses FrmBrows, MyProcedure, MyModul, FrmMainPPL;
{$R *.DFM}

// PROCEDURE DAN FUNCTION PRIBADI

procedure TFrPPL.TampilTombolDetail(pNilai: Boolean);
begin
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  Panel3.Enabled:=pNilai;
  CB1.Enabled:=model='koreksi';
end;

procedure TFrPPL.TampilIsiDept;
begin

end;




procedure TFrPPL.TampilIsiBarang;
begin
  KodeBrows:=2420121;
  Application.CreateForm(TFrBrows, FrBrows);
  //FrBrows.IsiData:='%'+KodeBrg.Text+'%';
  FrBrows.EditFilter.Text:=KodeBag.Text;
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.IsEmpty=False) then
  begin
    with FrBrows.QuBrows do
    begin
      KodeBrg.Text:=fieldbyname('KodeBrg').AsString;
      LNamaBrg.Caption:='[ '+fieldbyname('NamaBrg').AsString+' ]';
      if fieldbyname('IsJasa').AsInteger=0 then
        KetBrg.Enabled := False
      else
        KetBrg.Enabled := True;
      //KetBrg.Enabled:=fieldbyname('IsJasa').AsBoolean;
       if  KetBrg.Enabled Then ActiveControl:=KetBrg
             else ActiveControl:=Qnt;

      //ActiveControl:=Qnt;
    end;
    IsiSatuan;
  end
  else
    ActiveControl:=KodeBrg;
end;



procedure TFrPPL.IsiNoBuktiBaru;
begin
  DecodeDate(Date,YY,MM,DD);
  If DayOfTheMonth(Date)<=DD then
     DD:=DayOfTheMonth(date);
  Try
    TANGGAL.Date := EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),DD);
  Except
    TANGGAL.Date := EndOfAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln))
  end;
  Check_Nomor(StrToInt(PeriodBln),StrToInt(PeriodThn),'PR',Nomor,NomorBukti,Tanggal.Date);
  NoUrut.Text := NomorBukti;
  NOBUKTI.Text := Nomor;
end;

procedure TFrPPL.TampilData(No_Bukti,ID:String);
begin
   QuBeli.Close;

   QuBeli.SQL.Strings[2]:='select @NoBukti='+QuotedStr(No_Bukti);
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

Function TFrPPL.CheckFormMaster:boolean;
begin
   CheckFormMaster:=true;
end;

procedure TFrPPL.UpdatedbBeli;
begin
  if (not QuBeli.IsEmpty)and(FrMainPPL.ModalKoreksi) then
  begin
    with QuUpdatedbBeli do
    begin
       Close;
       Sql.Clear;
       SQL.Add('Update dbPPL');
       SQL.Add('set TANGGAL=:0,IsClose=:1, KDDep=:2');
       SQL.Add('Where NoBukti='+QuotedStr(NoBukti.Text));
       Prepared;
       Parameters[0].Value := TANGGAL.Date;
       Parameters[1].Value := CB2.Checked;
       Parameters[2].Value := KodeBag.Text;
       ExecSQL;

    end;
    TampilData(NoBukti.Text,'1');
  end;
end;

procedure TFrPPL.ClearPanelDetail;
begin
   KodeBrg.Text:='';
   LNamaBrg.Caption:='[ . . . ]';
   Qnt.Value:=0;
   Nosat.AsInteger:=1;
   LNamaSat.Caption:='[. . . ]';
   Ket.Text:='';
end;

procedure TFrPPL.RefreshAll;
var i:integer;
begin
   mValid:=False;
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
   CB2.Enabled:=FrMainPPL.ModalKoreksi;
   ClearPanelDetail;
end;

procedure TFrPPL.UpdateDataBeli(Choice:Char;Kodet:String);
var iProses: Integer;
    iDapatDisimpan: Boolean;
begin
   BM:=QuBeli.GetBookmark;
   With Sp_Beli do
   begin
       Parameters.Refresh;
       Parameters[1].Value:=Choice;
       Parameters[2].Value:=NoBukti.Text;
       Parameters[3].Value:=NoUrut.Text;
       Parameters[4].Value:=TANGGAL.Date;
       if Choice<>'I' then Parameters[5].Value:=QuBeliURUT.AsInteger
       else Parameters[5].Value:=0;
       Parameters[6].Value:=KodeBrg.Text;
       Parameters[7].Value:=Qnt.AsFloat;
       Parameters[8].Value:=NoSat.AsInteger;
       Parameters[9].Value:=mNamaSatuan[NoSat.AsInteger];
       Parameters[10].Value:=mIsiSatuan[NoSat.AsInteger];
       Parameters[11].Value:=Ket.Text;
       Parameters[12].Value:=Cb2.Checked;
       Parameters[13].Value:=Cb1.Checked;
       Parameters[14].Value:=KodeBag.Text;
       Parameters[15].Value:=QuBeliJasa.AsInteger;
       Parameters[16].Value:=KetBrg.Text;
       Parameters[17].Value:=IDUser;

       try
          //ExecProc;
          iProses:=0;
          iDapatDisimpan:=False;
          repeat
            try
              ExecProc;
              iDapatDisimpan:=True;
            except
              Delay(20);
              IsiNoBuktiBaru;
              Parameters[2].Value:=NoBukti.Text;
              Parameters[3].Value:=NoUrut.Text;
              iProses:=iProses+1;
            end;
          until (iDapatDisimpan=True) or (iProses=10);
          if Choice='I' then
          begin
            TampilData(NOBUKTI.Text,'1');
            //QuBeli.Locate('KodeBrg',KodeBrg.Text,[LOP,LOC]);
            LoggingData(IDUser,Choice,'PR',NoBukti.Text,
                    ' Barang = '+QuotedStr(KodeBrg.Text)+
                    ' Qnt = '+QuotedStr(Qnt.Text));
          end else if Choice='U' then
          begin
            TampilData(NOBUKTI.Text,'1');
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
            end;

            LoggingData(IDUser,Choice,'PR',NoBukti.Text,
                    ' Barang = '+QuotedStr(KodeBrg.Text)+
                    ' Qnt = '+QuotedStr(Qnt.Text));
          end
          Else if Choice='D' then
          begin
            LoggingData(IDUser,Choice,'PR',NoBukti.Text,
                    ' Barang = '+QuotedStr(QuBeliKodeBrg.AsString)+
                    ' Qnt = '+QuotedStr(QuBeliQnt.DisplayText));
            TampilData(NOBUKTI.Text,'1');
          end;
          //Hitung;
          QuBeli.Locate('Urut', mUrut, []);
       except
          If (Choice='I') Or (Choice='U') then
             showmessage('Proses Gagal !                   ')
          else If (Choice='D') then
             showmessage('Proses Gagal !, Barang berkaitan dengan transaksi lain.');
       end;

   end;
end;

Procedure TFrPPL.AmBilDataBeli;
begin
   if not QuBeli.IsEmpty then
   begin
      Tanggal.Date:=QuBeliTanggal.AsDateTime;
      CB2.Checked:=QuBeliIsClose.AsBoolean;
      KodeBag.Text := QuBeliKDDep.Value;
      LNamaBag.Caption := '[ '+QuBeliNMDep.Value+' ]';
   end;
end;

// PROCEDURE DAN FUNCTION MILIK DELPHI

procedure TFrPPL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if mExit=true then
  begin
     Hapus_Daftar_Nomor('PR',NoBukti.Text,IDUser);
     FrMainPPL.GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
     Action:=cafree;
  end
  else
  begin
     Action:=caNone;
  end;
end;

procedure TFrPPL.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrPPL.FormShow(Sender: TObject);
begin
  mValid:=False;
  xModalKoreksi:=FrMainPPL.ModalKoreksi;
  if FrMainPPL.ModalKoreksi = False then
  begin
    RefreshAll;
    IsiNoBuktiBaru;
    TampilData(NoBukti.Text,'0');
    Daftar_Nomor('PR',NoUrut.Text,NOBUKTI.Text,isMax);
    //NoUrut.Enabled:=True;
    //ActiveControl:=NoUrut;
  end
  else
  Begin
    KoreksiBtn.Caption:='&Koreksi';
    NOBUKTI.Text := FrMainPPL.QuMaster.FieldByname('Nobukti').AsString;
    Hapus_Daftar_Nomor_User ('PR',IDUser);
    //Daftar_Nomor('PR',NoUrut.Text,NOBUKTI.Text,isMax);
    TampilData(NOBUKTI.Text,'1');
    AmBilDataBeli;
    NoUrut.Text:=QuBeliNOURUT.AsString;
    NoUrut.Enabled:=False;
  end;
 dxDBGrid1Column5.DisableEditor:=FrMainPPL.ModalKoreksi;  
end;

procedure TFrPPL.FormCreate(Sender: TObject);
begin
  TipeTrans := 'PR';
  Hapus_Daftar_Nomor_User('PR',IDUser);
end;

procedure TFrPPL.TambahBtnClick(Sender: TObject);
begin
  if CheckFormMaster=true then
  begin
      Model:='write';
      TampilTombolDetail(True);
      KodeBrg.Enabled:=True;
      //KodeBrg.Text:=FrMainPPL.QuBppBKodebrg.AsString;
      //LNamaBrg.Caption:='[ '+FrMainPPL.QuBppBNAMABRG.AsString+' ]';
      IsiSatuan;
      //Qnt.AsFloat:=abs(FrMainPPL.QuBppBSisa.AsFloat-FrMainPPL.QuBppBOSPPL.AsFloat-FrMainPPL.QuBppBOSPO.AsFloat-FrMainPPL.QuBppBStok.AsFloat);
      ActiveControl:=kodebrg;
  end
  else
  begin
     ShowMessage('Form Master Tidak Lengkap, Silahkan Anda Periksa !');
  end;
end;

procedure TFrPPL.QntKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key=VK_Escape then
   begin
      mValid:=false;
      KodeBrg.Enabled:=True;
      //Panel2.Enabled:=true;
      ClearPanelDetail;
      SpeedButton1.Click;
   end;
end;

procedure TFrPPL.TanggalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_Return then
  begin
    if  (CekPeriode(IDUser,TANGGAL.Date)=False) then
      Abort;
    If FrMainPPL.ModalKoreksi Then UpdatedbBeli;
  end
  else if Key=Vk_Escape then
  begin
    If FrMainPPL.ModalKoreksi = False then
    begin
      Hapus_Daftar_Nomor_User('PR',IDUser);
      mValid:=False;
      RefreshAll;
      IsiNoBuktiBaru;
      TampilData(NOBUKTI.Text,'0');
      if nourut.Enabled then

      ActiveControl := NoUrut;
    end
    else
    begin
      mExit := true;
      close;
    end;
  end;
end;

procedure TFrPPL.KoreksiBtnClick(Sender: TObject);
begin

  if CheckFormMaster=true then
  begin
     mValid:=false;
   // data yang di update
     if QuBeli.IsEmpty=false then
     begin
                  with DM.QuCari do
               Begin
                Close;
                SQL.Clear;
                SQL.Add('Select KodeBrg,nobukti from dbPODet a where KodeBrg=:0 and NoPPL=:1 and UrutPPL= :2');
                Parameters[0].Value:=QuBeliKodeBrg.AsString;
                Parameters[1].Value:=NoBukti.Text;
                Parameters[2].Value:=QuBeliurut.AsInteger;
                Open;
               end;
               if DM.QuCari.RecordCount>0 Then
               begin
                 MessageDlg('NoBukti='+NoBukti.Text+' dan Kodebrg='+QuBeliKodeBrg.AsString+' Sudah Ada Transaksi di PO Nobukti'+ QuotedStr(DM.QuCari.fieldbyname('nobukti').asstring),mtError,[mbOK],0)
               end
               else
        begin
        TampilTombolDetail(True);
        KodeBrg.Enabled:=False;
        KodeBrg.Text:=QuBeliKODEBRG.AsString;
        LNamaBrg.Caption:='[ '+QuBeliNamaBrg.AsString+' ]';
        IsiSatuan;
        model:='koreksi';
        NoSat.AsInteger:=QuBeliNOSAT.AsInteger;
        Qnt.AsFloat:=QuBeliQNT.AsFloat;
        Ket.Text:=QuBeliKeterangan.AsString;
        CB1.Checked:=QuBeliIsClose_1.AsBoolean;
        mPosisi:=QuBeliURUT.AsInteger;
                If QuBeliJasa.AsInteger=1 Then
         Begin
           KetBrg.Enabled:=True;
           KetBrg.Text:=QuBeliNamaBarang.AsString;
         end
        else
          KetBrg.Enabled:=False;

        ActiveControl:=Qnt;
        end;
     end
     else
     begin
        ShowMessage('Tidak ada transaksi yang dikoreksi !');
        ActiveControl:=dxDBGrid1;
     end;
  end else
  begin
     ShowMessage('Form Master Tidak Lengkap, Silahkan Anda Periksa !');
  end;
end;

procedure TFrPPL.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Escape then
  begin
    Hapus_Daftar_Nomor_User('PR',IDUser);
    if xmodalkoreksi then
    begin
      mExit := True;
      Close;
    end
    else
    begin
      RefreshAll;
      IsiNoBuktiBaru;
      TampilData(NOBUKTI.Text,'0');
      if nourut.Enabled then
      ActiveControl:=NoUrut;
    end;
  end
  else if key=VK_return then
  begin
    if QuBeli.IsEmpty then
      TambahBtn.Click
    else KoreksiBtn.Click;
  end
  else if key=VK_delete then
  begin
    HapusBtn.Click;
  end
  else if key=VK_insert then
  begin
    TambahBtn.Click;
  end;
end;

procedure TFrPPL.HapusBtnClick(Sender: TObject);
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
            StrPCopy(S,Format('Anda yakin NO %s dan Nama %s dihapus ?',
            [QuBeli.Fields[0].asstring,
            QuBeli.Fields[2].asstring]));
            if (Application.MessageBox(S,'Hapus Data',
               MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
            begin
             with DM.QuCari do
               Begin
                Close;
                SQL.Clear;
                SQL.Add('Select KodeBrg,nobukti from dbPODet a where KodeBrg=:0 and NoPPL=:1 and UrutPPL= :2');
                Parameters[0].Value:=QuBeliKodeBrg.AsString;
                Parameters[1].Value:=NoBukti.Text;
                Parameters[2].Value:=QuBeliurut.AsInteger;
                Open;
               end;
               if DM.QuCari.RecordCount>0 Then
                 MessageDlg('NoBukti='+NoBukti.Text+' dan Kodebrg='+QuBeliKodeBrg.AsString+' Sudah Ada Transaksi di PO Nobukti'+ QuotedStr(DM.QuCari.fieldbyname('nobukti').asstring),mtError,[mbOK],0)
               else
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

procedure TFrPPL.wwDBGrid1Enter(Sender: TObject);
begin
  FrPPL.KeyPreview:=false;
  if CheckFormMaster=false then
  begin
     ShowMessage('Form Master Tidak Lengkap, Silahkan Anda Periksa !');
     Hapus_Daftar_Nomor(TipeTrans,NoBukti.Text,iduser);
     if nourut.Enabled then

     ActiveControl:=NoUrut;
  end;
end;

procedure TFrPPL.wwDBGrid1Exit(Sender: TObject);
begin
  FrPPL.KeyPreview:=true;
end;

procedure TFrPPL.wwDBGrid1DblClick(Sender: TObject);
begin
  KoreksiBtn.Click;
end;

procedure TFrPPL.NoUrutKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 { if Key=Vk_Return then
  begin
    If Length(NoUrut.Text)<4 then
    begin
      MessageDlg('Nomor urut kurang '+InttoStr(4-Length(NoUrut.Text))+' digit.',mtWarning,[MbOk],0);
      ActiveControl := NoUrut;
    end
    else
    begin
      TampilData(nobukti.Text,'0');
      if not QuBeli.IsEmpty then
      Begin
         AmBilDataBeli;
      end
      else
      Begin
        if FrMainPPL.ModalKoreksi then
        begin
          ActiveControl := NoUrut;
        end;
      end;
      If Not Daftar_Nomor('PPL',NoUrut.Text,NOBUKTI.Text,IsMax) then
      begin
        MessageDlg('Nomor : '+NOBUKTI.Text+' telah digunakan oleh '+MyUser+'.',mtWarning,[MbOk],0);
        ActiveControl := NoUrut;
      end;
    end;
  end
  else} if Key=Vk_Escape then
  begin
    mExit := true;
    Close;
  end;
end;

procedure TFrPPL.TanggalEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrPPL.TanggalExit(Sender: TObject);
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

procedure TFrPPL.KodeSuppEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrPPL.CetakClick(Sender: TObject);
var N1, N2, N3 : string;
    T1, T2 : Real;
    Tot : byte;
    H1  : real;
begin
  tothal :=(QuBeli.RecordCount div 10);
  sishal :=(QuBeli.RecordCount mod 10);
  if sishal>0 then tothal :=tothal+1;
  With QuUpdatedbbeli do
  begin
    close;
    sql.clear;
    sql.add('Select * From vwPerusahaan ');
    Open;
  end;
  //frxDBDataset1.DataSet.Close;
  frxDBDataset1.DataSet := Qureport;
  with Qureport do
  begin
    Close;
    Sql.Clear;
    Sql.Add('exec CetakPR '+QuotedStr(Nobukti.Text));
    Open;
  end;
  frxDBDataset1.Close;
  frxDBDataset1.Open;
  frxReport1.LoadFromFile(currDir+'Nota\NotaPR.fr3');
  frxReport1.ShowReport;
end;

procedure TFrPPL.BitBtn1Click(Sender: TObject);
begin
   if CekPeriode(IDUser, Tanggal.Date)=True then
   begin
      if Model='write' then
         begin
               if length(Kodebrg.Text)>0 then
               begin
                  UpdateDataBeli('I','BL');
                  //SpeedButton1.Click;
                  ClearPanelDetail;
                  ActiveControl:=KodeBrg;
               end
               else
               begin
                  ShowMessage('Kode barang tidak boleh kosong !');
                 // ActiveControl:=KodeBrg;
               end;

         end
         else if model='koreksi' then
         begin
             if length(Kodebrg.Text)>0 then
             begin
                mValid:=false;
                UpdateDataBeli('U','BL');
                SpeedButton1.Click;
             end
             else
             begin
                ShowMessage('Kode barang tidak boleh kosong !');
                //ActiveControl:=KodeBrg;
             end;
         end;
   end
   else
     ShowMessage('Tanggal Periode Tidak Sesuai !');
end;

procedure TFrPPL.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
  ClearPanelDetail;
  xModalKoreksi:=true;
end;

procedure TFrPPL.NoDOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Escape then
  begin
     mValid :=false;
     SpeedButton1.Click;
  end;
end;

procedure TFrPPL.FormDestroy(Sender: TObject);
begin
  FrPPL:=nil;
end;

procedure TFrPPL.KodeGdgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrPPL.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrPPL.KodeBrgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    mValid:=False;
    SpeedButton1.Click;
  end;
end;

procedure TFrPPL.SpeedButton8Click(Sender: TObject);
begin
  frxReport1.LoadFromFile(currDir+'Nota\NotaPR.fr3');
  frxReport1.DesignReport;
end;

procedure TFrPPL.KdDepEnter(Sender: TObject);
begin
  //mValid:=True;
end;

procedure TFrPPL.TanggalChange(Sender: TObject);
begin
  mUbahHd:=True;
end;

procedure TFrPPL.NoUrutEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrPPL.IsiSatuan;
begin
  LNamaSat.Caption:=IsiSatuanBrg(KodeBrg.Text, mNamaSatuan, mIsiSatuan);
end;

procedure TFrPPL.KodeBrgEnter(Sender: TObject);
begin
mValid:=True;
end;

procedure TFrPPL.KodeBrgExit(Sender: TObject);
begin
  if mValid Then
  begin
     if length(KodeBrg.Text)=0
       then TampilIsiBarang else
        begin
          if DataBersyarat('Select A.KodeBrg, A.NamaBrg, Isnull(Sisa,0) QntSaldo,QntBPPB,Stock '+
                      'from dbBarang A '+
                      'left outer join (select a.Kodebrg,0.00 QntBPPB,Isnull(b.Qnt,0)Stock,0.00 Sisa from DBBPPBDET a '+
                      'left Outer Join (select Kodebrg,Sum(SaldoQnt+AWLQNTBPPB)Qnt from DBStockBrg where Bulan='+PeriodBln+' and Tahun='+PeriodThn+' group by kodebrg)b On b.kodebrg=a.KodeBrg group by a.KodeBrg,b.Qnt)b On a.KODEBRG=b.Kodebrg ' +
                      'where a.isAktif=1 and (a.KodeBrg like :0 or a.NamaBrg like :1) '+
                      'order by A.KodeBrg ',['%'+KodeBrg.Text+'%','%'+KodeBrg.Text+'%'],Dm.Qucari)=true then
          begin
            with DM.QuCari do
            begin
             KodeBrg.Text:=fieldbyname('KodeBrg').AsString;
             LNamaBrg.Caption:='[ '+fieldbyname('NamaBrg').AsString+' ]';
             Qnt.AsFloat:=ABS(fieldbyname('QntSaldo').AsFloat);
             IsiSatuan;
             ActiveControl:=Qnt;
            end;
          end
          else TampilIsiBarang;
        end;
      end;
      {if QuBeliJasa.AsInteger=1
       Then KetBrg.Clear;}
end;

procedure TFrPPL.QntEnter(Sender: TObject);
begin
 IsiSatuan;
end;

procedure TFrPPL.NoUrutChange(Sender: TObject);
begin
 if mValid then
  begin
    if Length(NoUrut.Text)=4 then
    begin
      Konfig(TipeTrans,Nourut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date);
      NOBUKTI.Text:=MyNoBukti;
    end
    else
      if nourut.Enabled then

      ActiveControl := NoUrut;
  end;
end;

procedure TFrPPL.CB2Click(Sender: TObject);
begin
if CB2.Checked Then
Begin
 With DM.QuCari do
 Begin
  Close;
  SQL.Clear;
  SQL.Add('Update dbPPLdet set IsClose=1 where noBukti='+QuotedStr(NoBukti.Text));
  ExecSQL;
 end;
end
else
 Begin
  With DM.QuCari do
  Begin
   Close;
   SQL.Clear;
   SQL.Add('Update dbPPLdet set IsClose=0 where noBukti='+QuotedStr(NoBukti.Text));
   ExecSQL;
 end;
 end;
 TampilData(NoBukti.Text,'1');
end;

procedure TFrPPL.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
if CompareText(varName,'iduser')=0 then
        value:=IDUser;
end;

procedure TFrPPL.KodeBagEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrPPL.KodeBagExit(Sender: TObject);
begin
  if mValid then
  begin
    if Length(KodeBag.Text)=0 then
       TampilIsiData(Frppl,Kodebag ,Lnamabag,10021,'kddep','Nmdep')
    else if DataBersyarat('select * from dbdepart where kddep=:0',[kodebag.text],DM.Qucari) then
    begin
      KodeBag.Text :=DM.QuCari.FieldByname('Kddep').AsString;
      LNamaBag.Caption:='[ '+DM.QuCari.FieldByname('Nmdep').AsString+' ]';
    end
    else
      TampilIsiData(Frppl,Kodebag ,Lnamabag,10021,'kddep','Nmdep');
  end;
end;

procedure TFrPPL.frxReport1AfterPrintReport(Sender: TObject);
var cetakke:integer;
begin
 DataBersyarat('Select Isnull(Cetakke,0)+1 cetakke from DbPPL where nobukti=:0',[Nobukti.text], Dm.Qucari);
 cetakke:=Dm.Qucari.Fieldbyname('Cetakke').AsInteger;
 with dm.qucari do
  begin
    close;
    sql.Clear;
    Sql.add('Update DBPPL set CetakKe=:0 where Nobukti='+Quotedstr(nobukti.text));
    Parameters[0].Value:=cetakke;
    Prepared;
    ExecSql;
  end;
end;

procedure TFrPPL.NoUrutExit(Sender: TObject);
var myTempNoUrut: String;
begin
  if mValid then
  begin
    myTempNoUrut:=NoUrut.Text;
    NoUrut.Text:=RightStr('00000'+myTempNoUrut,4);
    Konfig(TipeTrans,NoUrut.Text,F1,F2,F3,F4,NomorBukti,xN1,xN2,xN3,xN4,Tanggal.Date);
    NOBUKTI.Text:=MyNoBukti;
    TampilData(NoBukti.Text,'1');
    If Length(NoUrut.Text)<4 then
    begin
      MessageDlg('Nomor urut kurang '+InttoStr(5-Length(NoUrut.Text))+' digit.',mtWarning,[MbOk],0);
      if nourut.Enabled then

      ActiveControl := NoUrut;
    end
    else
    begin
      if (not QuBeli.IsEmpty) then
      Begin
        if (xModalKoreksi=True)  then
           AmBilDataBeli
        else
        Begin
          TampilData('','1');
          MsgDataSudahADA(NoBukti.Text);
          if nourut.Enabled then

          ActiveControl := NoUrut;
        end;
      end;
      If Not Daftar_Nomor(TipeTrans,NoUrut.Text, NOBUKTI.Text,isMax) then
      begin
        MessageDlg('Nomor : '+NOBUKTI.Text+' telah digunakan oleh '+MyUser+'.',mtWarning,[MbOk],0);
        if NoUrut.Enabled then

        ActiveControl := NoUrut;
      end;
    end;
  end;
end;

end.
