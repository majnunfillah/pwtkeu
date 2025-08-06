unit FrmSPBKirim;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, PBNumEdit, ExtCtrls, Buttons, db,strUtils, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, RXCtrls, ADODB, dxDBTLCl, dxGrClms, Mask, ToolEdit,Variants,
  ComCtrls;

type
  TFrSPBKirim = class(TForm)
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Panel4: TPanel;
    PanelShow1: TPanel;
    HapusBtn: TSpeedButton;
    KoreksiBtn: TSpeedButton;
    TambahBtn: TSpeedButton;
    Panel1: TPanel;
    Sp_Beli: TADOStoredProc;
    Label2: TLabel;
    KodeBrg: TEdit;
    LNamaBrg: TRxLabel;
    Label8: TLabel;
    NoLot: TEdit;
    Label6: TLabel;
    NoPallet: TEdit;
    Label7: TLabel;
    NoRoll: TEdit;
    Label1: TLabel;
    Catatan: TMemo;
    Label5: TLabel;
    Qnt: TPBNumEdit;
    Nosat: TComboBox;
    LSatuan: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    NetW: TPBNumEdit;
    Label9: TLabel;
    GrossW: TPBNumEdit;
    LSatuan2: TLabel;
    Qnt2: TPBNumEdit;
    QuBeli: TADOQuery;
    QuBeliurut: TIntegerField;
    QuBeliNOENQDET: TStringField;
    QuBeliUrutENQ: TIntegerField;
    QuBeliNoPallet: TStringField;
    QuBeliNOROLL: TStringField;
    QuBeliNOLOT: TStringField;
    QuBeliNetW: TBCDField;
    QuBeliGrossW: TBCDField;
    QuBelikodebrg: TStringField;
    QuBeliNamabrg: TStringField;
    QuBeliSat_1: TStringField;
    QuBeliSat_2: TStringField;
    QuBeliQnt: TBCDField;
    QuBeliQnt2: TBCDField;
    QuBeliNosat: TWordField;
    QuBeliISI: TBCDField;
    QuBeliKeterangan: TStringField;
    DsQuBeli: TDataSource;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1kodebrg: TdxDBGridMaskColumn;
    dxDBGrid1Namabrg: TdxDBGridMaskColumn;
    dxDBGrid1NOLOT: TdxDBGridMaskColumn;
    dxDBGrid1NoPallet: TdxDBGridMaskColumn;
    dxDBGrid1NOROLL: TdxDBGridMaskColumn;
    dxDBGrid1Qnt2: TdxDBGridMaskColumn;
    dxDBGrid1Sat_2: TdxDBGridMaskColumn;
    dxDBGrid1Qnt: TdxDBGridMaskColumn;
    dxDBGrid1Sat_1: TdxDBGridMaskColumn;
    dxDBGrid1NetW: TdxDBGridMaskColumn;
    dxDBGrid1GrossW: TdxDBGridMaskColumn;
    dxDBGrid1Keterangan: TdxDBGridMaskColumn;
    Ambilbtn: TSpeedButton;
    OpenDialog1: TOpenDialog;
    DsSource: TDataSource;
    QuSource: TADOQuery;
    QuSourceKeyUrut: TIntegerField;
    QuSourceTanggal: TDateTimeField;
    QuSourceUrut: TIntegerField;
    QuSourceKeyNIK: TIntegerField;
    QuSourceNoAbsen: TStringField;
    QuSourceJamMasuk: TDateTimeField;
    QuSourceJamKeluar: TDateTimeField;
    QuSourceNIK: TStringField;
    QuSourceNama: TStringField;
    QuSourceKodeDept: TStringField;
    QuSourceKodeShf: TStringField;
    QuSourceKodeJab: TStringField;
    QuSourceKodeESL: TStringField;
    QuSourceKeyNIKAbsensi: TIntegerField;
    QuSourceUrutAbsensi: TIntegerField;
    QuSourceKodeTipeAbsensi: TStringField;
    mmDataAsli: TMemo;
    LokasiFileTxt: TEdit;
    PBProses: TProgressBar;
    QuBeliNoSO: TStringField;
    QuBeliKodeCustSupp: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TambahBtnClick(Sender: TObject);
    procedure SatuanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KoreksiBtnClick(Sender: TObject);
    procedure HapusBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NosatEnter(Sender: TObject);
    procedure CatatanEnter(Sender: TObject);
    procedure CatatanExit(Sender: TObject);
    procedure AmbilbtnClick(Sender: TObject);
    procedure KodeBrgEnter(Sender: TObject);
    procedure KodeBrgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeBrgExit(Sender: TObject);
  private
    { Private declarations }
    Model: String;
    mUrut: Integer;
    mSat_1, mSat_2: String;
    mIsiBrg, xQnt,xIsibrg,xQntSisa,xQnt2Sisa: Real;
    Sat : String;
    xStatus : Boolean;
    mDataKe: array [1..6] of String;
    procedure TampilData;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure ClearPanelDetail;
    procedure UpdateDataBeli(pChoice: Char);
    procedure SimpanKeTabelTemp;
    procedure TampilIsiBSTB;
  public
    { Public declarations }
     IsSimpan:Boolean;
     FormulaKodeBrg: String;
  end;

var
  FrSPBKirim: TFrSPBKirim;
  mValid:boolean;


implementation
uses myModul,Myprocedure,MyGlobal, FrmBrows, FrmSPB;
{$R *.DFM}

procedure TFrSPBKirim.TampilData;
begin
  with QuBeli do
  begin
    Close;
    {SQL.Clear;
    SQL.Add('Select A.urut,A.NOCR NOENQDET,A.UrutCR URUTENQ,A.Tglkirim,');
    sql.add('       b.kodebrg,b.Namabrg,A.Sat_1,A.Sat_2,A.Qnt,A.Qnt2,A.Nosat,A.ISI,A.MyID,');
    sql.add('   C.Qnt QntKirimEnq,C.Qnt2 Qnt2KirimEnq ');
    sql.add('from dbSPBKirim A ');
    sql.add('     left outer join (Select x.kodebrg, y.NamaBrg, x.Nobukti,x.Urut');
    Sql.Add('                      from dbSPBDet x, dbbarangjadi y ');
    sql.add('                      where x.kodebrg=y.Kodebrg) b on B.nobukti=A.NoCR and b.urut=a.urutCR ');
    SQl.Add('Where A.NOCR=:0 and A.UrutCR=:1');
    sql.add('Order by A.Urut');}
    Prepared;
    Parameters[0].Value := FrSPB.QuBeliNobukti.AsString;
    Parameters[1].Value := FrSPB.QuBeliurut.AsInteger;
    Open;
  end;
end;

procedure TFrSPBKirim.TampilTombolDetail(pNilai: Boolean);
begin
  //PanelShow1.Visible:=not pNilai;
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  Panel3.Enabled:=pNilai;
  TambahBtn.Enabled:=Panel2.Enabled;
  KoreksiBtn.Enabled:=Panel2.Enabled;
  HapusBtn.Enabled:=Panel2.Enabled;
end;

procedure TFrSPBKirim.ClearPanelDetail;
begin
    KodeBrg.Text:='';
    NoLot.Text:='';
    NoPallet.Text :='';
end;

procedure TFrSPBKirim.UpdateDataBeli(pChoice: Char);
begin
   BM:=QuBeli.GetBookmark;
   With Sp_Beli do
   begin
       close;
       Prepared;
       Parameters[1].Value:=pChoice;
       if pChoice='D' then
       begin
          Parameters[2].Value:=QuBeliurut.AsInteger;
          Parameters[3].Value:=FrSPB.NoBukti.Text;
          Parameters[4].Value:=FrSPB.QuBeliurut.AsInteger;
       end
       else
       begin
         Parameters[2].Value:=mUrut;
         Parameters[3].Value:=FrSPB.NoBukti.Text;
         Parameters[4].Value:=FrSPB.QuBeliurut.AsInteger;
         Parameters[5].Value:=NoLot.Text;
         Parameters[6].Value:=NoPallet.Text;
         Parameters[7].Value:=kodebrg.text;//NoRoll.Text;
         Parameters[8].Value:=NetW.Value;
         Parameters[9].Value:=GrossW.Value;
         Parameters[10].Value:=mSat_1;
         Parameters[11].Value:=mSat_2;
         if Nosat.ItemIndex=1 then
        begin
          Parameters[12].Value:=Qnt.AsFloat;
          Parameters[13].Value:=Qnt.AsFloat/mIsiBrg;
        end
        else if Nosat.ItemIndex=2 then
        begin
          Parameters[12].Value:=Qnt.AsFloat*mIsiBrg;
          Parameters[13].Value:=Qnt.AsFloat;
        end;
         Parameters[14].Value:=Nosat.ItemIndex;
         Parameters[15].Value:=mIsiBrg;
         Parameters[16].Value:=Trim(Catatan.Text);
       end;
       try
          ExecProc;
          if pChoice='I' then
          begin
            TampilData;
          end else if pChoice='U' then
          begin
            TampilData;
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
          Else if pChoice='D' then
          begin
            TampilData;
          end;
       except
         ShowMessage('Proses Gagal !')
       end;
   end;
end;

procedure TFrSPBKirim.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
end;

procedure TFrSPBKirim.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFrSPBKirim.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrSPBKirim.FormShow(Sender: TObject);
begin
  TampilData;
end;

procedure TFrSPBKirim.TambahBtnClick(Sender: TObject);
begin
  Model:='write';
  //KodeBrg.Text := FrSPB.QuBelikodebrg.AsString;
  //LNamaBrg.Caption :='[ '+ FrSPB.QuBeliNamabrgkom.AsString+' ]';
  
  Qnt.Value := FrSPB.QuBeliQnt.Value-dxDBGrid1Qnt.SummaryFooterValue;
  Qnt2.Value := FrSPB.QuBeliQnt2.Value-dxDBGrid1Qnt2.SummaryFooterValue;
  xQntSisa := FrSPB.QuBeliQnt.Value-dxDBGrid1Qnt.SummaryFooterValue;
  xQnt2Sisa := FrSPB.QuBeliQnt2.Value-dxDBGrid1Qnt2.SummaryFooterValue;
  mIsiBrg := FrSPB.QuBeliISI.Value;
  mSat_1 := FrSPB.QuBeliSAT_1.Value;
  mSat_2 := FrSPB.QuBeliSAT_2.Value;
  Nosat.Items.Clear;
  Nosat.Items.Add('Pilih Satuan');
  Nosat.Items.Add(mSat_1);
  Nosat.Items.Add(mSat_2);
  Nosat.ItemIndex:=FrSPB.QuBeli.FieldByName('nosat').AsInteger;
  Nosat.Enabled:=mSat_1<>mSat_2;
  if Nosat.ItemIndex=1 then
  begin
     Qnt.Value:=FrSPB.QuBeliQnt.AsFloat;
     LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value/mIsiBrg)+' '+mSat_2+' ]'
  end
  else
  if Nosat.ItemIndex=2 then
  begin
     Qnt.Value:=FrSPB.QuBeliQnt2.AsFloat;
     LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value*mIsiBrg)+' '+mSat_1+' ]';
  end;
  TampilTombolDetail(True);

  ActiveControl:=KodeBrg;
end;

procedure TFrSPBKirim.SatuanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    SpeedButton1.Click;
  end;
end;

procedure TFrSPBKirim.KoreksiBtnClick(Sender: TObject);
begin
   mValid:=False;
   Model:='koreksi';
   if QuBeli.IsEmpty=False then
   begin
      mUrut := QuBeliurut.AsInteger;
      KodeBrg.Text := FrSPB.QuBeliKODEBRG.AsString;
      LNamaBrg.Caption :='[ '+ FrSPB.QuBeliNamabrgkom.AsString+' ]';
      NoLot.Text := QuBeliNOLOT.Value;
      NoPallet.Text := QuBeliNoPallet.Value;
      NoRoll.Text := QuBeliNOROLL.Value;
      NetW.Value := QuBeliNetW.Value;
      GrossW.Value := QuBeliGrossW.Value;
      Qnt.Value := QuBeliQnt.Value;
      Qnt2.Value := QuBeliQnt2.Value;
      xQntSisa := (FrSPB.QuBeliQNT.Value-dxDBGrid1Qnt.SummaryFooterValue)+QuBeliQNT.Value;
      xQnt2Sisa := (FrSPB.QuBeliQnt2.Value-dxDBGrid1Qnt2.SummaryFooterValue)+QuBeliQNT2.Value;
      mIsiBrg := QuBeliISI.Value;
      mSat_1 := QuBeliSAT_1.Value;
      mSat_2 := QuBeliSAT_2.Value;
      Nosat.Items.Clear;
      Nosat.Items.Add('Pilih Satuan');
      Nosat.Items.Add(mSat_1);
      Nosat.Items.Add(mSat_2);
      Nosat.ItemIndex:=QuBeli.FieldByName('nosat').AsInteger;
      Nosat.Enabled:=mSat_1<>mSat_2;
      if Nosat.ItemIndex=1 then
      begin
         Qnt.Value := QuBeliQnt.Value;
         LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value/mIsiBrg)+' '+mSat_2+' ]'
      end
      else
      if Nosat.ItemIndex=2 then
      begin
         Qnt.Value := QuBeliQnt2.Value;
         LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value*mIsiBrg)+' '+mSat_1+' ]';
      end;
      Catatan.Lines.Text := QuBeliKeterangan.Value;
      TampilTombolDetail(True);
      //ActiveControl:=Nolot;
   end
   else
   begin
      ShowMessage('Tidak ada transaksi yang dikoreksi !');
      ActiveControl:=dxDBGrid1;
   end;
end;

procedure TFrSPBKirim.HapusBtnClick(Sender: TObject);
begin
   if QuBeli.IsEmpty=True then
   begin
      Application.MessageBox('Tabel Kosong','Informasi'
      ,MB_OK Or MB_ICONWARNING);
   end
   else
   begin
          if (Application.MessageBox('Anda yakin satu baris data akan dihapus','Hapus Data',
                  MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
          begin
                  UpdateDataBeli('D');
          end;
   end;
end;

procedure TFrSPBKirim.BitBtn1Click(Sender: TObject);
begin
  {if (NetW.Value>xQntSisa) or (GrossW.Value>xQnt2Sisa) then
  begin
    MessageDlg(Label7.Caption+' tidak boleh lebih dari '+FormatFloat(',0.##',xQntSisa), mtError, [mbOK], 0);
    ActiveControl:=NetW;
  end
  else }
  if Model='write' then
  begin
    UpdateDataBeli('I');
    ClearPanelDetail;
    //ActiveControl:=NoLot;
  end
  else if Model='koreksi' then
  begin
    UpdateDataBeli('U');
    TampilTombolDetail(False);
    ActiveControl:=dxDBGrid1;
    ClearPanelDetail;
  end;

end;

procedure TFrSPBKirim.SpeedButton1Click(Sender: TObject);
begin
  mValid:=False;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
  ClearPanelDetail;
end;

procedure TFrSPBKirim.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then Close;

end;

procedure TFrSPBKirim.NosatEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrSPBKirim.CatatanEnter(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TFrSPBKirim.CatatanExit(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TFrSPBKirim.TampilisiBSTB;
Begin
  KodeBrows:=120303;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.NoKira:=FrSPB.QuBeliKODECUSTSUPP.AsString;
  FrBrows.IsiData:=KodeBrg.Text;
//  FrBrows.NoKira2 := IntToStr(Flagmenu);
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.FieldByName('KodeBrg').AsString<>'') then
  begin
    with FrBrows.QuBrows do
    begin
      KodeBrg.Text:=FieldByName('KodeBrg').AsString;
      nolot.Text :=FieldByName('nobukti').AsString;
      nopallet.Text:=FieldByName('QNT').AsString;
      //NamaBrg.Text:=FieldByName('NamaBrgkom').AsString;
    end;
  end
  else
    ActiveControl:=KodeBrg;

end;
procedure TFrSPBKirim.SimpanKeTabelTemp;
var i, j, xJmlBaris, xPosTab, xKeyUrut: Integer;
    sLineAsli, xChrTab, sLineTemp, sSQLText: String;
    xTglInput: TDateTime;
begin
  with QuSource do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Delete From dbSPBLampiran where NoSPB=:0 and UrutSPB=:1 ');
    Prepared;
    Parameters[0].Value:=FrSPB.NoBukti.Text;
    Parameters[1].Value:=FrSPB.QuBeliurut.AsInteger;
    ExecSQL;
  end;

  xChrTab:=chr(9);
  xJmlBaris:=mmDataAsli.Lines.Count;
  PBProses.Max:=xJmlBaris;
  sLineAsli:=mmDataAsli.Lines.Strings[0];
  i:=0;
  while i<xJmlBaris do
  begin
    sSQLText:='';
    sLineAsli:=mmDataAsli.Lines.Strings[i];
    for j := 1 to 6 do
    begin
      xPosTab:=Pos(xChrTab, sLineAsli);
      if xPosTab=0 then mDataKe[j]:=sLineAsli
      else if xPosTab=1 then
      begin
        mDataKe[j]:='';
        sLineTemp:=copy(sLineAsli,xPosTab+1, length(sLineAsli)-xPosTab);
      end else
      begin
        mDataKe[j]:=copy(sLineAsli,1,xPosTab-1);
        sLineTemp:=copy(sLineAsli,xPosTab+1, length(sLineAsli)-xPosTab);
      end;
      sLineAsli:=sLineTemp;
    end;

    try
      if (mDataKe[1]<>'NOPALLET') then
      begin
        with Sp_Beli do
        begin
          close;
          Prepared;
          Parameters[1].Value:='I';
          Parameters[2].Value:=mUrut;
          Parameters[3].Value:=FrSPB.NoBukti.Text;
          Parameters[4].Value:=FrSPB.QuBeliurut.AsInteger;
          Parameters[5].Value:=mDataKe[2];
          Parameters[6].Value:=mDataKe[1];
          Parameters[7].Value:=mDataKe[3];
          Parameters[8].Value:=mDataKe[5];
          Parameters[9].Value:=mDataKe[6];
          Parameters[10].Value:='';
          Parameters[11].Value:='';
          //if Nosat.ItemIndex=1 then
          //begin
            Parameters[12].Value:=0;
            Parameters[13].Value:=0;
          {end
          else if Nosat.ItemIndex=2 then
          begin
            Parameters[12].Value:=Qnt.AsFloat*mIsiBrg;
            Parameters[13].Value:=Qnt.AsFloat;
          end;}
           Parameters[14].Value:=1;
           Parameters[15].Value:=1;
           Parameters[16].Value:=Trim(mDataKe[4]);

          try
            ExecProc;
          except
           ShowMessage('Proses Gagal !')
          end;
        end;
      end;
    except

    end;
    i:=i+1;
    PBProses.Position:=i;
    Application.ProcessMessages;
  end;
  PBProses.Position:=0;
end;

procedure TFrSPBKirim.AmbilbtnClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    LokasiFileTxt.Text:=OpenDialog1.FileName;
    mmDataAsli.Lines.LoadFromFile(OpenDialog1.FileName);
    PBProses.Visible:=True;
    Try
      SimpanKeTabelTemp;
      except
    end;
    PBProses.Visible:=False;
    TampilData;
    //QuSource.Close;
    //QuSource.Open;
  end;
end;

procedure TFrSPBKirim.KodeBrgEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrSPBKirim.KodeBrgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
    SpeedButton1.Click;

end;

procedure TFrSPBKirim.KodeBrgExit(Sender: TObject);
begin
  if mValid Then
  begin
    if Length(KodeBrg.Text)=0 then TampilIsiBSTB else
    begin
      {if DataBersyarat('Declare @nobukti varchar(50), @Kodebrg varchar(50) Select @nobukti=:0, @kodebrg=:1 '+
                       ' Select A.KODEBRG, B.NAMABRG, A.Namabrg Namabrgkom, A.Qnt2Sisa, A.Sat_2, A.QntSisa, A.Sat_1, A.Isi, A.NoBukti, A.Urut, A.Nosat, A.Toleransi, A.Qnt, A.Qnt2,A.QntSPB, A.Qnt2SPB '+
                       ' from vwOutSPP A left outer join dbBarangJadi B on B.KodeBrg=A.KodeBrg '+
                       ' left Outer join dbSPP c on c.nobukti=a.nobukti '+
                       ' where A.NoBukti=@nobukti and A.KodeBrg=@kodebrg and C.IsFlag='+IntToStr(Flagmenu)+
                       ' union '+
                       ' Select A.KODEBRG, B.NAMABRG, A.Namabrg Namabrgkom, A.Qnt2Sisa, A.Sat_2, A.QntSisa, A.Sat_1, A.Isi, A.NoBukti, A.Urut, A.Nosat, A.Toleransi, A.Qnt, A.Qnt2,A.QntSPB, A.Qnt2SPB '+
                       ' from vwOutSPP A left outer join dbBarang B on B.KodeBrg=A.KodeBrg '+
                       ' left Outer join dbSPPBHN c on c.nobukti=a.nobukti '+
                       ' where A.NoBukti=@nobukti and A.KodeBrg=@kodebrg and C.IsFlag='+IntToStr(Flagmenu)+
                       ' order by A.KodeBrg ',
      [NOSPP.Text,KodeBrg.Text], DM.QuCari)=True then
      begin
        with DM.QuCari do
        begin
          KodeBrg.Text:=FieldByName('KodeBrg').AsString;
          NamaBrg.Text :=FieldByName('NamaBrgKom').AsString;
          Toleransi :=FieldByName('Toleransi').AsFloat;
          mSat_1:=FieldByName('Sat_1').AsString;
          mSat_2:=FieldByName('Sat_2').AsString;
          mIsiBrg:=FieldByName('Isi').AsFloat;
          LNamaBrg.Caption:='[ '+FieldByName('NamaBrg').AsString+' ]'+
                            ' Toleransi : '+FormatFloat(',0.## %',FieldByName('Toleransi').AsFloat*100)+
                            ' Qnt SPP : '+FormatFloat(',0.## ',FieldByName('Qnt').AsFloat)+mSat_1+', '+
                            ' Qnt Max SPB : '+FormatFloat(',0.## ',FieldByName('Qnt').AsFloat+(FieldByName('Qnt').AsFloat*FieldByName('Toleransi').AsFloat))+mSat_1;
          mUrutSPP:=FieldByName('Urut').AsInteger;
          QntSPP.Value := FieldByName('Qnt').AsFloat+(FieldByName('Qnt').AsFloat*Toleransi);
          QntSPB1.Value := FieldByName('QntSPB').AsFloat;
          QntSPB2.Value := Qnt1.Value;
          SisaSPP.Value := QntSPP.Value-(QntSPB1.Value+QntSPB2.Value);

          LSatuan2.Caption:='[ '+mSat_2+' ]';
          LSatuan1.Caption:='[ '+mSat_1+' ]';
          Qnt2.Value:=FieldByName('Qnt2Sisa').AsFloat;
          Qnt1.Value:=FieldByName('QntSisa').AsFloat;
          Qnt2Sisa := FieldByName('Qnt2').AsFloat;
          QntSisa := FieldByName('Qnt').AsFloat;
          Qnt2SPB := FieldByName('Qnt2SPB').AsFloat;
          QntSPB := FieldByName('QntSPB').AsFloat;
          Nosat.Items.Clear;
          Nosat.Items.Add('Pilih Satuan');
          Nosat.Items.Add(mSat_1);
          Nosat.Items.Add(mSat_2);
          Nosat.ItemIndex := FieldByName('nosat').AsInteger;
          if FieldByName('nosat').AsInteger=1 then
          begin
             Qnt.Value:=FieldByName('QntSisa').AsFloat;
             LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value/mIsiBrg)+' '+mSat_2+' ]'
          end
          else
          if FieldByName('nosat').AsInteger=2 then
          begin
             Qnt.Value:=FieldByName('Qnt2Sisa').AsFloat;
             LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value*mIsiBrg)+' '+mSat_1+' ]';
          end;
        end;
      end
      else TampilIsiBarang;}
    end;
    {if KodeBrg.Text<>'' then
    begin
      DataBersyarat('select cast(nFix as int) Konversi from dbBarang where KodeBrg=:0',[KodeBrg.Text],DM.QuCari);
      TampilanQntSatuan(DM.QuCari.FieldByName('Konversi').AsInteger);
      if Qnt.CanFocus then
        Qnt.SetFocus;
      if Qnt2.CanFocus then
        Qnt2.SetFocus;
    end;}
  end;

end;

end.
