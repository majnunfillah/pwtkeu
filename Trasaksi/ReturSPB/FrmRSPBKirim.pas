unit FrmRSPBKirim;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, PBNumEdit, ExtCtrls, Buttons, db,strUtils, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, RXCtrls, ADODB, dxDBTLCl, dxGrClms, Mask, ToolEdit,Variants;

type
  TFrRSPBKirim = class(TForm)
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
  private
    { Private declarations }
    Model: String;
    mUrut: Integer;
    mSat_1, mSat_2: String;
    mIsiBrg, xQnt,xIsibrg,xQntSisa,xQnt2Sisa: Real;
    Sat : String;
    xStatus : Boolean;
    procedure TampilData;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure ClearPanelDetail;
    procedure UpdateDataBeli(pChoice: Char);
  public
    { Public declarations }
     IsSimpan:Boolean;
     FormulaKodeBrg: String;
  end;

var
  FrRSPBKirim: TFrRSPBKirim;
  mValid:boolean;


implementation
uses myModul,Myprocedure,MyGlobal, FrmBrows, FrmRSPB;
{$R *.DFM}

procedure TFrRSPBKirim.TampilData;
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
    Parameters[0].Value := FrRSPB.QuBeliNobukti.AsString;
    Parameters[1].Value := FrRSPB.QuBeliurut.AsInteger;
    Open;
  end;
end;

procedure TFrRSPBKirim.TampilTombolDetail(pNilai: Boolean);
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

procedure TFrRSPBKirim.ClearPanelDetail;
begin
end;

procedure TFrRSPBKirim.UpdateDataBeli(pChoice: Char);
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
          Parameters[3].Value:=FrRSPB.NoBukti.Text;
          Parameters[4].Value:=FrRSPB.QuBeliurut.AsInteger;
       end
       else
       begin
         Parameters[2].Value:=mUrut;
         Parameters[3].Value:=FrRSPB.NoBukti.Text;
         Parameters[4].Value:=FrRSPB.QuBeliurut.AsInteger;
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
                  LoggingData(IDUser,pChoice,'RSPBKirim',FrRSPB.NoBukti.Text,
                    '''');
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

procedure TFrRSPBKirim.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
end;

procedure TFrRSPBKirim.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFrRSPBKirim.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrRSPBKirim.FormShow(Sender: TObject);
begin
  TampilData;
end;

procedure TFrRSPBKirim.TambahBtnClick(Sender: TObject);
begin
  Model:='write';
  KodeBrg.Text := FrRSPB.QuBelikodebrg.AsString;
  LNamaBrg.Caption :='[ '+ FrRSPB.QuBeliNamabrgkom.AsString+' ]';
  Qnt.Value := FrRSPB.QuBeliQnt.Value-dxDBGrid1Qnt.SummaryFooterValue;
  Qnt2.Value := FrRSPB.QuBeliQnt2.Value-dxDBGrid1Qnt2.SummaryFooterValue;
  xQntSisa := FrRSPB.QuBeliQnt.Value-dxDBGrid1Qnt.SummaryFooterValue;
  xQnt2Sisa := FrRSPB.QuBeliQnt2.Value-dxDBGrid1Qnt2.SummaryFooterValue;
  mIsiBrg := FrRSPB.QuBeliISI.Value;
  mSat_1 := FrRSPB.QuBeliSAT_1.Value;
  mSat_2 := FrRSPB.QuBeliSAT_2.Value;
  Nosat.Items.Clear;
  Nosat.Items.Add('Pilih Satuan');
  Nosat.Items.Add(mSat_1);
  Nosat.Items.Add(mSat_2);
  Nosat.ItemIndex:=FrRSPB.QuBeli.FieldByName('nosat').AsInteger;
  Nosat.Enabled:=mSat_1<>mSat_2;
  if Nosat.ItemIndex=1 then
  begin
     Qnt.Value:=FrRSPB.QuBeliQnt.AsFloat;
     LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value/mIsiBrg)+' '+mSat_2+' ]'
  end
  else
  if Nosat.ItemIndex=2 then
  begin
     Qnt.Value:=FrRSPB.QuBeliQnt2.AsFloat;
     LSatuan.Caption := '[ '+Formatfloat(',0.##',Qnt.AsFloat)+' '+Nosat.Text+' = '+Formatfloat(',0.##',Qnt.Value*mIsiBrg)+' '+mSat_1+' ]';
  end;
  TampilTombolDetail(True);

  ActiveControl:=NoLot;
end;

procedure TFrRSPBKirim.SatuanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    SpeedButton1.Click;
  end;
end;

procedure TFrRSPBKirim.KoreksiBtnClick(Sender: TObject);
begin
   mValid:=False;
   Model:='koreksi';
   if QuBeli.IsEmpty=False then
   begin
      mUrut := QuBeliurut.AsInteger;
      KodeBrg.Text := FrRSPB.QuBeliKODEBRG.AsString;
      LNamaBrg.Caption :='[ '+ FrRSPB.QuBeliNamabrgkom.AsString+' ]';
      NetW.Value := QuBeliNetW.Value;
      GrossW.Value := QuBeliGrossW.Value;
      Qnt.Value := QuBeliQnt.Value;
      Qnt2.Value := QuBeliQnt2.Value;
      xQntSisa := (FrRSPB.QuBeliQNT.Value-dxDBGrid1Qnt.SummaryFooterValue)+QuBeliQNT.Value;
      xQnt2Sisa := (FrRSPB.QuBeliQnt2.Value-dxDBGrid1Qnt2.SummaryFooterValue)+QuBeliQNT2.Value;
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

procedure TFrRSPBKirim.HapusBtnClick(Sender: TObject);
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

procedure TFrRSPBKirim.BitBtn1Click(Sender: TObject);
begin
  if (NetW.Value>xQntSisa) or (GrossW.Value>xQnt2Sisa) then
  begin
    MessageDlg(Label7.Caption+' tidak boleh lebih dari '+FormatFloat(',0.##',xQntSisa), mtError, [mbOK], 0);
    ActiveControl:=NetW;
  end
  else
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

procedure TFrRSPBKirim.SpeedButton1Click(Sender: TObject);
begin
  mValid:=False;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
  ClearPanelDetail;
end;

procedure TFrRSPBKirim.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then Close;

end;

procedure TFrRSPBKirim.NosatEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrRSPBKirim.CatatanEnter(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TFrRSPBKirim.CatatanExit(Sender: TObject);
begin
  KeyPreview := True;
end;

end.
