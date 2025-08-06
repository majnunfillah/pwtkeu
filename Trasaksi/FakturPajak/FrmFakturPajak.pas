unit FrmFakturPajak;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  ImgList, StdCtrls, ExtCtrls, Menus,dxDBTLCl, dxGrClms, dxGridMenus, Mask,
  ToolEdit, frxClass, frxDBSet, frxExportXLS, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxEdit, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, dateutils, cxGridBandedTableView,
  cxGridDBBandedTableView;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrFakturPajak = class(TForm)
    ToolBar1: TToolBar;
    ToolButton6: TToolButton;
    PopupMenu1: TPopupMenu;
    ExportExcel1: TMenuItem;
    N1: TMenuItem;
    ShowGrid1: TMenuItem;
    ShowHeader1: TMenuItem;
    Show1: TMenuItem;
    N2: TMenuItem;
    AutoFilter1: TMenuItem;
    ToolButton7: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    SaveDialog: TSaveDialog;
    Panel1: TPanel;
    Label1: TLabel;
    TglAwal: TDateEdit;
    MultiSelect1: TMenuItem;
    TglAkhir: TDateEdit;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    quCetak: TADOQuery;
    DataSource1: TDataSource;
    ToolButton4: TToolButton;
    frxXLSExport1: TfrxXLSExport;
    frxReport1: TfrxReport;
    Panel2: TPanel;
    dxDBGrid1: TdxDBGrid;
    frxDBDataset1: TfrxDBDataset;
    Panel3: TPanel;
    ComboBox1: TComboBox;
    ToolButton5: TToolButton;
    DsMasterInv: TDataSource;
    QuMasterInv: TADOQuery;
    QuMasterInvNoBukti: TStringField;
    QuMasterInvNoUrut: TStringField;
    QuMasterInvTanggal: TDateTimeField;
    QuMasterInvNoSPP: TStringField;
    QuMasterInvTglSPP: TDateTimeField;
    QuMasterInvNoSO: TStringField;
    QuMasterInvTGLSO: TDateTimeField;
    QuMasterInvKodeCustSupp: TStringField;
    QuMasterInvNamaCustSupp: TStringField;
    QuMasterInvConsignee: TStringField;
    QuMasterInvNotifyParty: TStringField;
    QuMasterInvContractNo: TStringField;
    QuMasterInvPONo: TStringField;
    QuMasterInvPaymentTerm: TStringField;
    QuMasterInvDocCreditNo: TStringField;
    QuMasterInvPoL: TStringField;
    QuMasterInvPoD: TStringField;
    QuMasterInvNameOfVessel: TStringField;
    QuMasterInvShipOnBoardDate: TDateTimeField;
    QuMasterInvPacking: TStringField;
    QuMasterInvOthers: TStringField;
    QuMasterInvISLOKAL: TBooleanField;
    QuMasterInvIsCetak: TBooleanField;
    QuMasterInvIDUser: TStringField;
    QuMasterInvIsOtorisasi1: TBooleanField;
    QuMasterInvOtoUser1: TStringField;
    QuMasterInvTglOto1: TDateTimeField;
    QuMasterInvIsOtorisasi2: TBooleanField;
    QuMasterInvOtoUser2: TStringField;
    QuMasterInvTglOto2: TDateTimeField;
    QuMasterInvIsOtorisasi3: TBooleanField;
    QuMasterInvOtoUser3: TStringField;
    QuMasterInvTglOto3: TDateTimeField;
    QuMasterInvIsOtorisasi4: TBooleanField;
    QuMasterInvOtoUser4: TStringField;
    QuMasterInvTglOto4: TDateTimeField;
    QuMasterInvIsOtorisasi5: TBooleanField;
    QuMasterInvOtoUser5: TStringField;
    QuMasterInvTglOto5: TDateTimeField;
    QuMasterInvNoSPB: TStringField;
    QuMasterInvTglSPB: TDateTimeField;
    QuDetailInv: TADOQuery;
    DsDetailInv: TDataSource;
    cxGrid3: TcxGrid;
    tvMaster3: TcxGridDBBandedTableView;
    tvMaster3NoBukti: TcxGridDBBandedColumn;
    tvMaster3Tanggal: TcxGridDBBandedColumn;
    tvMaster3KodeCustSupp: TcxGridDBBandedColumn;
    tvMaster3NamaCustSupp: TcxGridDBBandedColumn;
    tvMaster3NoSHip: TcxGridDBBandedColumn;
    tvMaster3TGLSHip: TcxGridDBBandedColumn;
    tvMaster3NoSPP: TcxGridDBBandedColumn;
    tvMaster3TglSPP: TcxGridDBBandedColumn;
    tvMaster3NoSO: TcxGridDBBandedColumn;
    tvMaster3TGLSO: TcxGridDBBandedColumn;
    tvMaster3IsOtorisasi1: TcxGridDBBandedColumn;
    tvMaster3OtoUser1: TcxGridDBBandedColumn;
    tvMaster3TglOto1: TcxGridDBBandedColumn;
    tvMaster3IsOtorisasi2: TcxGridDBBandedColumn;
    tvMaster3OtoUser2: TcxGridDBBandedColumn;
    tvMaster3TglOto2: TcxGridDBBandedColumn;
    tvMaster3IsOtorisasi3: TcxGridDBBandedColumn;
    tvMaster3OtoUser3: TcxGridDBBandedColumn;
    tvMaster3TglOto3: TcxGridDBBandedColumn;
    tvMaster3IsOtorisasi4: TcxGridDBBandedColumn;
    tvMaster3OtoUser4: TcxGridDBBandedColumn;
    tvMaster3TglOto4: TcxGridDBBandedColumn;
    tvMaster3IsOtorisasi5: TcxGridDBBandedColumn;
    tvMaster3OtoUser5: TcxGridDBBandedColumn;
    tvMaster3TglOto5: TcxGridDBBandedColumn;
    tvDetail3: TcxGridDBBandedTableView;
    tvDetail3KodeBrg: TcxGridDBBandedColumn;
    tvDetail3NAMABRG: TcxGridDBBandedColumn;
    tvDetail3SAT_2: TcxGridDBBandedColumn;
    tvDetail3QNT2: TcxGridDBBandedColumn;
    tvDetail3SAT_1: TcxGridDBBandedColumn;
    tvDetail3QNT: TcxGridDBBandedColumn;
    tvDetail3NetW: TcxGridDBBandedColumn;
    tvDetail3GrossW: TcxGridDBBandedColumn;
    tvDetail3HARGA: TcxGridDBBandedColumn;
    tvDetail3SUBTOTAL: TcxGridDBBandedColumn;
    tvDetail3KetDetail: TcxGridDBBandedColumn;
    cxGridLevel3: TcxGridLevel;
    cxGridLevel4: TcxGridLevel;
    QuMasterInvNoPajak: TStringField;
    QuMasterInvTglFPJ: TDateTimeField;
    tvMaster3DBNoPajak: TcxGridDBBandedColumn;
    tvMaster3DBTglFpj: TcxGridDBBandedColumn;
    quCetakNoBukti: TStringField;
    quCetakNoPNJ: TStringField;
    quCetakKodeBrg: TStringField;
    quCetakNOFPJ: TStringField;
    quCetakTglFPJ: TDateTimeField;
    quCetakMySeri: TStringField;
    quCetakKurs: TBCDField;
    quCetakUsaha: TStringField;
    quCetakKodeGrp: TStringField;
    quCetakNamaPKP: TStringField;
    quCetakAlamatPKP: TStringField;
    quCetakalamat2: TStringField;
    quCetakNPWPPKP: TStringField;
    quCetakTglPKP: TDateTimeField;
    quCetakKodeCustSupp: TStringField;
    quCetakNAMACUSTSUPP: TStringField;
    quCetakAlamatCust: TStringField;
    quCetakNPWPCust: TStringField;
    quCetakalamatcustom: TStringField;
    quCetakkotacustom: TStringField;
    quCetakKodeBrg_1: TStringField;
    quCetakNamaBrg: TStringField;
    quCetakJumlah: TBCDField;
    quCetakUangMuka: TIntegerField;
    quCetakQnt: TBCDField;
    quCetakSAT_1: TStringField;
    quCetakSAT_2: TStringField;
    quCetakNDpp: TBCDField;
    quCetakNppn: TBCDField;
    quCetakNnet: TBCDField;
    quCetakValas: TStringField;
    quCetakHarga: TBCDField;
    quCetakKota: TStringField;
    quCetakDireksi: TStringField;
    quCetakJabatan: TStringField;
    quCetakKetNota: TStringField;
    quCetakGroupNobukti2: TStringField;
    quCetaknamacustpkp: TStringField;
    quCetakalamatcustpkp: TStringField;
    quCetakalamatcustpkp2: TStringField;
    quCetakkotacustpkp: TStringField;
    quCetaknamax: TStringField;
    quCetakalamat1x: TStringField;
    quCetakalamat2x: TStringField;
    quCetakkotapkpx: TStringField;
    quCetakJum: TBCDField;
    quCetakHrgNetto: TBCDField;
    quCetakstn: TStringField;
    ToolButton8: TToolButton;
    ToolButton11: TToolButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ExportExcel1Click(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure AutoFilter1Click(Sender: TObject);
    procedure ShowGrid1Click(Sender: TObject);
    procedure ShowHeader1Click(Sender: TObject);
    procedure Show1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MultiSelect1Click(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ToolButton10Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure frxReport1AfterPrintReport(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);

  private
    { Private declarations }
    mPosisi: String;
  public
        Menu:String;
    { Public declarations }
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrFakturPajak: TFrFakturPajak;
    BM: TBookmark;
implementation
uses dxEdLib,FrmUtama, myModul,Myprocedure,MyGlobal, FrmIsiNoFPJ, FrmSetForm;
{$R *.dfm}

procedure TFrFakturPajak.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do
  begin
    DefaultExt := ADefaultExt;
    Filter := AFilter;
    FileName := AFileName;
    if Execute then
    begin
       if MultiSelect1.Checked=true then
          AMethod(FileName, false)
       else
          AMethod(FileName, true);
    end
  end;
end;


procedure TFrFakturPajak.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
    begin
        Action:=caFree;
    end
    else
        Action:=caNone;
end;

procedure TFrFakturPajak.FormDestroy(Sender: TObject);
begin
FrFakturPajak:=nil;
end;

procedure TFrFakturPajak.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrFakturPajak.ExportExcel1Click(Sender: TObject);
begin
//   Save('xls', 'Microsoft Excel (*.xls)|*.xls', Caption, dxDBGrid1.SaveToXLS);
end;

procedure TFrFakturPajak.AutoFilter1Click(Sender: TObject);
begin
    if dxDBGrid1.Filter.Active=false then
    dxDBGrid1.Filter.Active:=true
    else
    dxDBGrid1.Filter.Active:=false;

end;

procedure TFrFakturPajak.ShowGrid1Click(Sender: TObject);
begin
   if ShowGrid1.Checked then
   begin
      dxDBGrid1.ShowGrid:=false;
      ShowGrid1.Checked:=false;
   end else
   begin
      dxDBGrid1.ShowGrid:=true;
      ShowGrid1.Checked:=true;
   end;
end;

procedure TFrFakturPajak.ShowHeader1Click(Sender: TObject);
begin
   if ShowHeader1.Checked then
   begin
      dxDBGrid1.ShowHeader:=false;
      ShowHeader1.Checked:=false;
   end else
   begin
      dxDBGrid1.ShowHeader:=true;
      ShowHeader1.Checked:=true;
   end;

end;

procedure TFrFakturPajak.Show1Click(Sender: TObject);
begin
   if Show1.Checked then
   begin
      dxDBGrid1.ShowSummaryFooter := false;
      Show1.Checked:=false;
   end else
   begin
      dxDBGrid1.ShowSummaryFooter := true;
      Show1.Checked:=true;
   end;

end;

procedure TFrFakturPajak.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_ESCAPE then
   begin
      Close;
   end
   else if key=VK_return then
   begin
      ToolButton1.Click;
   end
   else if key=VK_Delete then
   begin
      ToolButton2.Click;
   end

end;

procedure TFrFakturPajak.MultiSelect1Click(Sender: TObject);
begin
   if MultiSelect1.Checked then
   begin
      dxDBGrid1.Options := dxDBGrid1.Options - [egoMultiSelect];
      MultiSelect1.Checked:=false;
   end else
   begin
      dxDBGrid1.Options := dxDBGrid1.Options + [egoMultiSelect];
      MultiSelect1.Checked:=true;
   end;
end;

procedure TFrFakturPajak.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if ANode.HasChildren then
    Exit;

    if not ASelected then
    begin
      if ANode.Index mod 2 =0 then
         AColor:=$00F7F8F8
      else
         AColor:=$00DFECF1;
      AFont.Color:=clBlack;

    end;

  // yg non aktif warna merah
  {if ANode.Values[dxDBGrid1Nonaktif.Index] = dxDBGrid1Nonaktif.ValueChecked then
  begin
    AFont.Style := AFont.Style + [fsBold];
    if ASelected then
      AFont.Color := clWhite
    else
      AFont.Color := clRed;
  end;
  // Perkiraan General Bold
  if ANode.Strings[dxDBGrid1mTipe.Index]<>'Detail' then
  begin
    AFont.Style := AFont.Style + [fsBold];
    if ASelected then
      AFont.Color := clWhite
    else
      AFont.Color := clBlack;
  end;}

end;

procedure TFrFakturPajak.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);

end;

procedure TFrFakturPajak.ToolButton10Click(Sender: TObject);
begin
  with QuMasterInv do
  begin
    Close;
    SQL.Strings[2]:='select @TglAwal='+QuotedStr(FormatDateTime('MM/dd/yyyy',TglAwal.Date))+', @TglAkhir='+QuotedStr(FormatDateTime('MM/dd/yyyy',TglAkhir.Date));
    Open;
  end;

  with QuDetailInv do
  begin
    Close;
    SQL.Strings[2]:='select @Nobukti='+QuotedStr(QuMasterInvNoBukti.AsString);
    Open;
  end;
end;

procedure TFrFakturPajak.FormShow(Sender: TObject);
var yy,mm,dd : word;
begin
   DecodeDate(Date,YY,MM,DD);
  If DayOfTheMonth(Date)<=DD then
     DD:=DayOfTheMonth(Date);
  try
    Tglawal.Date := EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),1);
  except
    Tglawal.Date:=EndOfAMonth(StrToInt(PeriodThn),StrToInt(PeriodBln));
  end;
   //TglAwal.Date:=EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),1);
   if StrToInt(PeriodBln)=12 then
   TglAkhir.Date:=EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),31)
   else
   TglAkhir.Date:=EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln)+1,1)-1;
   ToolButton10.Click;
end;

procedure TFrFakturPajak.ToolButton1Click(Sender: TObject);
begin
   Application.CreateForm(TFrIsiNoFPJ, FrIsiNoFPJ);
   FrIsiNoFPJ.TglPajak.Date:=QuMasterInvTglFPJ.AsDateTime;
   FrIsiNoFPJ.NoFPJ.Text:=QuMasterInvNoPajak.AsString;
   FrIsiNoFPJ.Showmodal;
   if FrIsiNoFPJ.ModalResult=mrOK then
   begin
      with DM.QuCari do
      begin
         Close;
         SQL.Clear;
         DisableEnableTrigger(False,'DbInvoicePL');
         SQL.Add('Update DbInvoicePL set NoPajak=:0, TglFPJ=:1, KeyNIK =:2 where NoBukti=:3');
         Parameters[0].Value:=FrIsiNoFPJ.NoFPJ.Text;
         Parameters[1].Value:=FrIsiNoFPJ.TglPajak.Date;
         Parameters[2].Value:=FrIsiNoFPJ.keynik ;
         Parameters[3].Value:=QuMasterInvNoBukti.AsString;
         ExecSQL;
          DisableEnableTrigger(True,'DbInvoicePL');
      end;
      mPosisi:=QuMasterInvNoBukti.AsString;
      ToolButton10.Click;
      QuMasterInv.Locate('NoBukti',mPosisi,[]);
   end

end;

procedure TFrFakturPajak.ToolButton2Click(Sender: TObject);
begin
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Update DbInvoicePL set NoPajak='''', TglFPJ=null where NoBukti='+QuotedStr(QuMasterInvNoBukti.AsString));
    ExecSQL;
  end;
  mPosisi:=QuMasterInvNoBukti.AsString;
  ToolButton10.Click;
  QuMasterInv.Locate('NoBukti',mPosisi,[]);
end;

procedure TFrFakturPajak.ToolButton3Click(Sender: TObject);
begin
  with quCetak do
  begin
    Close;
    SQL.Clear;
    SQL.Add('exec sp_FakturPajak '+QuotedStr(QuMasterInvNoBukti.AsString));
    Open;
  end;
  frxDBDataset1.Close;
  frxDBDataset1.DataSet:=quCetak;
  frxDBDataset1.Open;


  with frxReport1 do
  begin
     if combobox1.ItemIndex=0 then
     LoadFromFile(currDir+'Nota\FPJ.fr3');
     if combobox1.ItemIndex=1 then
     LoadFromFile(currDir+'Nota\FPJ1.fr3');
     if combobox1.ItemIndex=2 then
     LoadFromFile(currDir+'Nota\FPJ2.fr3');
     if combobox1.ItemIndex=3 then
     LoadFromFile(currDir+'Nota\FPJ3.fr3');

     ShowReport;
     Delay(5);

  end;


end;

procedure TFrFakturPajak.ToolButton4Click(Sender: TObject);
begin
  with frxReport1 do
  begin
     LoadFromFile(currDir+'Nota\FPJ2.fr3');
     DesignReport;
  end;
end;

procedure TFrFakturPajak.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
  if ComboBox1.ItemIndex=0 then
  begin
    if VarName='LembarKe' then
      Value:='1';
    if VarName='KetLembar' then
      Value:='Untuk Pembeli BKP/Penerima JKP sebagai'+chr(13)+
             'Bukti Pajak Masukan';
  end else
  if ComboBox1.ItemIndex=1 then
  begin
    if VarName='LembarKe' then
      Value:='2';
    if VarName='KetLembar' then
      Value:='Untuk PKP yang menerbitkan Faktur'+chr(13)+
             'Pajak Standar sebagai Bukti Pajak Keluaran';
  end;
end;

procedure TFrFakturPajak.frxReport1AfterPrintReport(Sender: TObject);
begin
with dm.QuCari do
{ begin
 close;
 sql.Clear;
 sql.Add('update dbjual set cetakfpj =1 where nobukti =:0');
 parameters[0].Value := QuMasterInv.fieldbyname('nobukti').AsString;
 execSql;
 end;  }
end;

procedure TFrFakturPajak.ToolButton8Click(Sender: TObject);
begin
 {if QuMasterIsOtorisasi1.Value then
  begin
    MessageDlg('No. Faktur Pajak '+QuMasterNoBukti.AsString+' telah diotorisasi oleh user '+QuMasterOtoUser1.AsString+#13+'pada tanggal '+
               FormatDatetime('DD-MMM-YYYY',QuMasterTglOto1.AsDateTime)+' Jam '+FormatDateTime('HH:MM:SS',QuMasterTglOto1.AsDateTime)+#13+
               'Data tidak dapat diotorisasi lagi !!!',mtWarning,[mbok],0);
    //ActiveControl := cxGrid1;
  end
  else
  begin
    BM := QuMaster.GetBookmark; }
    {frLogin := TFrLogin.Create(Self);
    frLogin.Label2.Caption :='Otorisasi';
    if frLogin.ShowModal=mrok then }
    {begin
      Otorisasi('DBPO',Menu,IDUser,'',QuMasterNoBukti.Value);
      Begin
        ToolButton10.Click;
        if QuMaster.BookmarkValid(BM) then
        begin
          try
             QuMaster.GotoBookmark(BM);
          finally
             QuMaster.FreeBookmark(BM);
          end
        end else
        begin
          QuMaster.FreeBookmark(BM);
          QuMaster.Last;
        end;
      end;
    end;
  end;}

end;

procedure TFrFakturPajak.ToolButton11Click(Sender: TObject);
begin
//BM := QuMaster.GetBookmark;
  {frLogin := TFrLogin.Create(Self);
  frLogin.Label2.Caption :='Otorisasi';
  if frLogin.ShowModal=mrok then  }
  {begin
    BatalOtorisasi('DBPO',Menu,IDUser,'',QuMasterNoBukti.Value);
    Begin
      ToolButton10.Click;
      if QuMaster.BookmarkValid(BM) then
      begin
        try
           QuMaster.GotoBookmark(BM);
        finally
           QuMaster.FreeBookmark(BM);
        end
      end else
      begin
        QuMaster.FreeBookmark(BM);
        QuMaster.Last;
      end;
    end;
  end;}

end;

end.



