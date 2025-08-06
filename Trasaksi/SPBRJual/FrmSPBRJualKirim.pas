unit FrmSPBRjualKirim;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, PBNumEdit, ExtCtrls, Buttons, db,strUtils, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, RXCtrls, ADODB, dxDBTLCl, dxGrClms, Mask, ToolEdit,Variants,
  ComCtrls;

type
  TFrSPBRJualKirim = class(TForm)
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
  public
    { Public declarations }
     IsSimpan:Boolean;
     FormulaKodeBrg: String;
  end;

var
  FrSPBRJualKirim: TFrSPBRJualKirim;
  mValid:boolean;


implementation
uses myModul,Myprocedure,MyGlobal, FrmBrows, FrmSPBRJual;
{$R *.DFM}

procedure TFrSPBRJualKirim.TampilData;
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
    Parameters[0].Value := FrSPBRjual.QuBeliNobukti.AsString;
    Parameters[1].Value := FrSPBRjual.QuBeliurut.AsInteger;
    Open;
  end;
end;

procedure TFrSPBRJualKirim.TampilTombolDetail(pNilai: Boolean);
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

procedure TFrSPBRJualKirim.ClearPanelDetail;
begin
end;

procedure TFrSPBRJualKirim.UpdateDataBeli(pChoice: Char);
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
          Parameters[3].Value:=FrSPBRjual.NoBukti.Text;
          Parameters[4].Value:=FrSPBRjual.QuBeliurut.AsInteger;
       end
       else
       begin
         Parameters[2].Value:=mUrut;
         Parameters[3].Value:=FrSPBRjual.NoBukti.Text;
         Parameters[4].Value:=FrSPBRjual.QuBeliurut.AsInteger;
         Parameters[5].Value:=NoLot.Text;
         Parameters[6].Value:=NoPallet.Text;
         Parameters[7].Value:=NoRoll.Text;
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

procedure TFrSPBRJualKirim.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
end;

procedure TFrSPBRJualKirim.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFrSPBRJualKirim.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrSPBRJualKirim.FormShow(Sender: TObject);
begin
  TampilData;
end;

procedure TFrSPBRJualKirim.TambahBtnClick(Sender: TObject);
begin
  Model:='write';
  KodeBrg.Text := FrSPBRjual.QuBelikodebrg.AsString;
  LNamaBrg.Caption :='[ '+ FrSPBRjual.QuBeliNamabrgkom.AsString+' ]';
  Qnt.Value := FrSPBRjual.QuBeliQnt.Value-dxDBGrid1Qnt.SummaryFooterValue;
  Qnt2.Value := FrSPBRjual.QuBeliQnt2.Value-dxDBGrid1Qnt2.SummaryFooterValue;
  xQntSisa := FrSPBRjual.QuBeliQnt.Value-dxDBGrid1Qnt.SummaryFooterValue;
  xQnt2Sisa := FrSPBRjual.QuBeliQnt2.Value-dxDBGrid1Qnt2.SummaryFooterValue;
  mIsiBrg := FrSPBRjual.QuBeliISI.Value;
  mSat_1 := FrSPBRjual.QuBeliSAT_1.Value;
  mSat_2 := FrSPBRjual.QuBeliSAT_2.Value;
  Nosat.Items.Clear;
  Nosat.Items.Add('Pilih Satuan');
  Nosat.Items.Add(mSat_1);
  Nosat.Items.Add(mSat_2);
  Nosat.ItemIndex:=FrSPBRjual.QuBeli.FieldByName('nosat').AsInteger;
  Nosat.Enabled:=mSat_1<>mSat_2;
  if Nosat.ItemIndex=1 then
  begin
     Qnt.Value:=FrSPBRjual.QuBeliQnt.AsFloat;
     LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value/mIsiBrg)+' '+mSat_2+' ]'
  end
  else
  if Nosat.ItemIndex=2 then
  begin
     Qnt.Value:=FrSPBRjual.QuBeliQnt2.AsFloat;
     LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value*mIsiBrg)+' '+mSat_1+' ]';
  end;
  TampilTombolDetail(True);

  ActiveControl:=NoLot;
end;

procedure TFrSPBRJualKirim.SatuanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    SpeedButton1.Click;
  end;
end;

procedure TFrSPBRJualKirim.KoreksiBtnClick(Sender: TObject);
begin
   mValid:=False;
   Model:='koreksi';
   if QuBeli.IsEmpty=False then
   begin
      mUrut := QuBeliurut.AsInteger;
      KodeBrg.Text := FrSPBRjual.QuBeliKODEBRG.AsString;
      LNamaBrg.Caption :='[ '+ FrSPBRjual.QuBeliNamabrgkom.AsString+' ]';
      NoLot.Text := QuBeliNOLOT.Value;
      NoPallet.Text := QuBeliNoPallet.Value;
      NoRoll.Text := QuBeliNOROLL.Value;
      NetW.Value := QuBeliNetW.Value;
      GrossW.Value := QuBeliGrossW.Value;
      Qnt.Value := QuBeliQnt.Value;
      Qnt2.Value := QuBeliQnt2.Value;
      xQntSisa := (FrSPBRjual.QuBeliQNT.Value-dxDBGrid1Qnt.SummaryFooterValue)+QuBeliQNT.Value;
      xQnt2Sisa := (FrSPBRjual.QuBeliQnt2.Value-dxDBGrid1Qnt2.SummaryFooterValue)+QuBeliQNT2.Value;
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
      ActiveControl:=Nolot;
   end
   else
   begin
      ShowMessage('Tidak ada transaksi yang dikoreksi !');
      ActiveControl:=dxDBGrid1;
   end;
end;

procedure TFrSPBRJualKirim.HapusBtnClick(Sender: TObject);
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

procedure TFrSPBRJualKirim.BitBtn1Click(Sender: TObject);
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
    ActiveControl:=NoLot;
  end
  else if Model='koreksi' then
  begin
    UpdateDataBeli('U');
    TampilTombolDetail(False);
    ActiveControl:=dxDBGrid1;
    ClearPanelDetail;
  end;

end;

procedure TFrSPBRJualKirim.SpeedButton1Click(Sender: TObject);
begin
  mValid:=False;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
  ClearPanelDetail;
end;

procedure TFrSPBRJualKirim.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then Close;

end;

procedure TFrSPBRJualKirim.NosatEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrSPBRJualKirim.CatatanEnter(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TFrSPBRJualKirim.CatatanExit(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TFrSPBRJualKirim.SimpanKeTabelTemp;
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
    Parameters[0].Value:=FrSPBRjual.NoBukti.Text;
    Parameters[1].Value:=FrSPBRjual.QuBeliurut.AsInteger;
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
          Parameters[3].Value:=FrSPBRjual.NoBukti.Text;
          Parameters[4].Value:=FrSPBRjual.QuBeliurut.AsInteger;
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

procedure TFrSPBRJualKirim.AmbilbtnClick(Sender: TObject);
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

end.
