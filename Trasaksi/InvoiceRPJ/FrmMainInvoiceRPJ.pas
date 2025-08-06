unit FrmMainInvoiceRPJ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  ImgList, StdCtrls, ExtCtrls, Menus, ppBands, ppVar, ppCtrls, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,ppviewr,
  dxGridMenus, frxClass, frxDBSet, dxDBTLCl, dxGrClms, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid,cxExportGrid4Link,ShellApi, FrmBrows,
  PBNumEdit, cxGridBandedTableView, cxGridDBBandedTableView,
  dxPageControl, frxDesgn ;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrMainInvoiceRPJ = class(TForm)
    PopupMenu1: TPopupMenu;
    ExportExcel1: TMenuItem;
    N1: TMenuItem;
    ShowGrid1: TMenuItem;
    ShowHeader1: TMenuItem;
    Show1: TMenuItem;
    N2: TMenuItem;
    AutoFilter1: TMenuItem;
    SaveDialog: TSaveDialog;
    MultiSelect1: TMenuItem;
    sp_barang: TADOStoredProc;
    frxDBDataset1: TfrxDBDataset;
    adoqBarang: TADOQuery;
    frxReport1: TfrxReport;
    PopupMenu2: TPopupMenu;
    Semua: TMenuItem;
    Aktif: TMenuItem;
    TidakAktif: TMenuItem;
    ShowGroupPanel1: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton4: TToolButton;
    ToolButton10: TToolButton;
    ToolButton7: TToolButton;
    ToolButton6: TToolButton;
    ToolButton9: TToolButton;
    PopupMenu3: TPopupMenu;
    InvoiceUangMukaPembelian1: TMenuItem;
    InvoiceBP1: TMenuItem;
    InvoiceLogistik1: TMenuItem;
    InvoiceShippingInstruction1: TMenuItem;
    InvoiceTruckingInstruction1: TMenuItem;
    InvoiceSuratJalanSPB1: TMenuItem;
    ToolButton8: TToolButton;
    cxGrid8: TcxGrid;
    tvInvoiceRPJ: TcxGridDBBandedTableView;
    cxGridDBBandedColumn109: TcxGridDBBandedColumn;
    cxGridDBBandedColumn110: TcxGridDBBandedColumn;
    cxGridDBBandedColumn111: TcxGridDBBandedColumn;
    cxGridDBBandedColumn112: TcxGridDBBandedColumn;
    cxGridDBBandedColumn113: TcxGridDBBandedColumn;
    cxGridDBBandedColumn114: TcxGridDBBandedColumn;
    cxGridDBBandedColumn115: TcxGridDBBandedColumn;
    cxGridDBBandedColumn116: TcxGridDBBandedColumn;
    cxGridDBBandedColumn117: TcxGridDBBandedColumn;
    cxGridDBBandedColumn118: TcxGridDBBandedColumn;
    cxGridDBBandedColumn119: TcxGridDBBandedColumn;
    cxGridDBBandedColumn120: TcxGridDBBandedColumn;
    cxGridDBBandedColumn121: TcxGridDBBandedColumn;
    cxGridDBBandedColumn122: TcxGridDBBandedColumn;
    cxGridDBBandedColumn123: TcxGridDBBandedColumn;
    cxGridDBBandedColumn124: TcxGridDBBandedColumn;
    cxGridDBBandedColumn125: TcxGridDBBandedColumn;
    cxGridDBBandedColumn126: TcxGridDBBandedColumn;
    cxGridDBBandedColumn127: TcxGridDBBandedColumn;
    cxGridDBBandedColumn146: TcxGridDBBandedColumn;
    cxGridDBBandedColumn147: TcxGridDBBandedColumn;
    cxGridDBBandedColumn148: TcxGridDBBandedColumn;
    cxGridDBBandedColumn149: TcxGridDBBandedColumn;
    cxGridDBBandedColumn150: TcxGridDBBandedColumn;
    cxGridDBBandedColumn151: TcxGridDBBandedColumn;
    cxGridDBBandedColumn152: TcxGridDBBandedColumn;
    cxGridDBBandedColumn153: TcxGridDBBandedColumn;
    cxGridDBBandedColumn154: TcxGridDBBandedColumn;
    cxGridDBBandedColumn155: TcxGridDBBandedColumn;
    cxGridDBBandedColumn156: TcxGridDBBandedColumn;
    cxGridDBBandedColumn157: TcxGridDBBandedColumn;
    tvDetailInvoiceRPJ: TcxGridDBBandedTableView;
    cxGridDBBandedColumn158: TcxGridDBBandedColumn;
    cxGridDBBandedColumn159: TcxGridDBBandedColumn;
    cxGridDBBandedColumn160: TcxGridDBBandedColumn;
    cxGridDBBandedColumn161: TcxGridDBBandedColumn;
    cxGridDBBandedColumn162: TcxGridDBBandedColumn;
    cxGridDBBandedColumn163: TcxGridDBBandedColumn;
    cxGridDBBandedColumn164: TcxGridDBBandedColumn;
    cxGridDBBandedColumn165: TcxGridDBBandedColumn;
    cxGridDBBandedColumn166: TcxGridDBBandedColumn;
    cxGridDBBandedColumn167: TcxGridDBBandedColumn;
    cxGridDBBandedColumn168: TcxGridDBBandedColumn;
    cxGridDBBandedColumn169: TcxGridDBBandedColumn;
    cxGridDBBandedColumn170: TcxGridDBBandedColumn;
    cxGridDBBandedColumn171: TcxGridDBBandedColumn;
    cxGridDBBandedColumn172: TcxGridDBBandedColumn;
    cxGridDBBandedColumn173: TcxGridDBBandedColumn;
    cxGridDBBandedColumn174: TcxGridDBBandedColumn;
    cxGridDBBandedColumn175: TcxGridDBBandedColumn;
    cxGridLevel14: TcxGridLevel;
    cxGridLevel15: TcxGridLevel;
    QuInvoiceRPJ: TADOQuery;
    DSInvoiceRPJ: TDataSource;
    QuDetailInvoiceRPJ: TADOQuery;
    DSDetailInvoiceRPJ: TDataSource;
    QuInvoiceRPJNOBUKTI: TStringField;
    QuInvoiceRPJNOURUT: TStringField;
    QuInvoiceRPJTANGGAL: TDateTimeField;
    QuInvoiceRPJTglJatuhTempo: TDateTimeField;
    QuInvoiceRPJKODECUSTSUPP: TStringField;
    QuInvoiceRPJNamaCustSupp: TStringField;
    QuInvoiceRPJAlamat: TStringField;
    QuInvoiceRPJKota: TStringField;
    QuInvoiceRPJTotSubTotal: TBCDField;
    QuInvoiceRPJTotDiskon: TBCDField;
    QuInvoiceRPJTotTotal: TBCDField;
    QuInvoiceRPJTotDPP: TBCDField;
    QuInvoiceRPJTotPPN: TBCDField;
    QuInvoiceRPJTotNet: TBCDField;
    QuInvoiceRPJTotSubTotalRp: TBCDField;
    QuInvoiceRPJTotDiskonRp: TBCDField;
    QuInvoiceRPJTotTotalRp: TBCDField;
    QuInvoiceRPJTotDPPRp: TBCDField;
    QuInvoiceRPJTotPPNRp: TBCDField;
    QuInvoiceRPJTotNetRp: TBCDField;
    QuInvoiceRPJNoinvoice: TStringField;
    QuInvoiceRPJTglInvoice: TDateTimeField;
    QuInvoiceRPJKodevls: TStringField;
    QuInvoiceRPJKurs: TBCDField;
    QuInvoiceRPJIsOtorisasi1: TBooleanField;
    QuInvoiceRPJOtoUser1: TStringField;
    QuInvoiceRPJTglOto1: TDateTimeField;
    QuInvoiceRPJIsOtorisasi2: TBooleanField;
    QuInvoiceRPJOtoUser2: TStringField;
    QuInvoiceRPJTglOto2: TDateTimeField;
    QuInvoiceRPJIsOtorisasi3: TBooleanField;
    QuInvoiceRPJOtoUser3: TStringField;
    QuInvoiceRPJTglOto3: TDateTimeField;
    QuInvoiceRPJIsOtorisasi4: TBooleanField;
    QuInvoiceRPJOtoUser4: TStringField;
    QuInvoiceRPJTglOto4: TDateTimeField;
    QuInvoiceRPJIsOtorisasi5: TBooleanField;
    QuInvoiceRPJOtoUser5: TStringField;
    QuInvoiceRPJTglOto5: TDateTimeField;
    QuInvoiceRPJNoJurnal: TStringField;
    QuInvoiceRPJNoUrutJurnal: TStringField;
    QuInvoiceRPJTglJurnal: TDateTimeField;
    QuDetailInvoiceRPJNOBUKTI: TStringField;
    QuDetailInvoiceRPJNOURUT: TStringField;
    QuDetailInvoiceRPJTANGGAL: TDateTimeField;
    QuDetailInvoiceRPJTglJatuhTempo: TDateTimeField;
    QuDetailInvoiceRPJKODECUSTSUPP: TStringField;
    QuDetailInvoiceRPJNamaCustSupp: TStringField;
    QuDetailInvoiceRPJAlamat: TStringField;
    QuDetailInvoiceRPJKota: TStringField;
    QuDetailInvoiceRPJNOPBL: TStringField;
    QuDetailInvoiceRPJKODEVLS: TStringField;
    QuDetailInvoiceRPJKURS: TBCDField;
    QuDetailInvoiceRPJPPN: TWordField;
    QuDetailInvoiceRPJTIPEBAYAR: TWordField;
    QuDetailInvoiceRPJHARI: TIntegerField;
    QuDetailInvoiceRPJDISC: TBCDField;
    QuDetailInvoiceRPJDISCRP: TBCDField;
    QuDetailInvoiceRPJFREIGHT: TBCDField;
    QuDetailInvoiceRPJLAIN2: TBCDField;
    QuDetailInvoiceRPJISCETAK: TBooleanField;
    QuDetailInvoiceRPJISCETAKGDG: TBooleanField;
    QuDetailInvoiceRPJIsBatal: TBooleanField;
    QuDetailInvoiceRPJUserBatal: TStringField;
    QuDetailInvoiceRPJIDUser: TStringField;
    QuDetailInvoiceRPJURUT: TIntegerField;
    QuDetailInvoiceRPJKODEBRG: TStringField;
    QuDetailInvoiceRPJNamaBrg: TStringField;
    QuDetailInvoiceRPJQNT: TBCDField;
    QuDetailInvoiceRPJQNT2: TBCDField;
    QuDetailInvoiceRPJSAT_1: TStringField;
    QuDetailInvoiceRPJSAT_2: TStringField;
    QuDetailInvoiceRPJNoSat: TWordField;
    QuDetailInvoiceRPJISI: TBCDField;
    QuDetailInvoiceRPJHARGA: TBCDField;
    QuDetailInvoiceRPJDiscP1: TBCDField;
    QuDetailInvoiceRPJDiscRp1: TBCDField;
    QuDetailInvoiceRPJDiscP2: TBCDField;
    QuDetailInvoiceRPJDiscRp2: TBCDField;
    QuDetailInvoiceRPJDiscP3: TBCDField;
    QuDetailInvoiceRPJDiscRp3: TBCDField;
    QuDetailInvoiceRPJDiscP4: TBCDField;
    QuDetailInvoiceRPJDiscRp4: TBCDField;
    QuDetailInvoiceRPJDISCTOT: TBCDField;
    QuDetailInvoiceRPJBYANGKUT: TBCDField;
    QuDetailInvoiceRPJHRGNETTO: TBCDField;
    QuDetailInvoiceRPJNDISKON: TBCDField;
    QuDetailInvoiceRPJSUBTOTAL: TBCDField;
    QuDetailInvoiceRPJNDPP: TBCDField;
    QuDetailInvoiceRPJNPPN: TBCDField;
    QuDetailInvoiceRPJNNET: TBCDField;
    QuDetailInvoiceRPJSUBTOTALRp: TBCDField;
    QuDetailInvoiceRPJNDPPRp: TBCDField;
    QuDetailInvoiceRPJNPPNRp: TBCDField;
    QuDetailInvoiceRPJNNETRp: TBCDField;
    QuDetailInvoiceRPJKeterangan: TStringField;
    QuDetailInvoiceRPJTotSubTotal: TBCDField;
    QuDetailInvoiceRPJTotDiskon: TBCDField;
    QuDetailInvoiceRPJTotTotal: TBCDField;
    QuDetailInvoiceRPJTotDPP: TBCDField;
    QuDetailInvoiceRPJTotPPN: TBCDField;
    QuDetailInvoiceRPJTotNet: TBCDField;
    QuDetailInvoiceRPJTotSubTotalRp: TBCDField;
    QuDetailInvoiceRPJTotDiskonRp: TBCDField;
    QuDetailInvoiceRPJTotTotalRp: TBCDField;
    QuDetailInvoiceRPJTotDPPRp: TBCDField;
    QuDetailInvoiceRPJTotPPNRp: TBCDField;
    QuDetailInvoiceRPJTotNetRp: TBCDField;
    QuDetailInvoiceRPJKonversi: TIntegerField;
    QuDetailInvoiceRPJUrutTrans: TIntegerField;
    QuDetailInvoiceRPJNoinvoice: TStringField;
    QuInvoiceRPJMyTipe: TStringField;
    tvInvoiceRPJMyTipe: TcxGridDBBandedColumn;
    QuDetailInvoiceRPJUrutSPR: TIntegerField;
    QuInvoiceRPJNeedOtorisasi: TBooleanField;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    QuInvoiceRPJIsBatal: TBooleanField;
    QuInvoiceRPJUserbatal: TStringField;
    QuInvoiceRPJTglBatal: TDateTimeField;
    tvInvoiceRPJDBBandedColumn1: TcxGridDBBandedColumn;
    tvInvoiceRPJDBBandedColumn2: TcxGridDBBandedColumn;
    tvInvoiceRPJDBBandedColumn3: TcxGridDBBandedColumn;
    ToolButton13: TToolButton;
    QuInvoiceRPJFlagTipe: TWordField;
    frxDataPerusahaan: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    tvInvoiceRPJDBBandedColumn4: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ExportExcel1Click(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure AutoFilter1Click(Sender: TObject);
    procedure ShowGrid1Click(Sender: TObject);
    procedure ShowHeader1Click(Sender: TObject);
    procedure Show1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton2Click(Sender: TObject);
    procedure MultiSelect1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure DevisiChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ShowGroupPanel1Click(Sender: TObject);
    procedure BulanChange(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure dxPageControl1Change(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure tvInvoiceRPJFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure ToolButton11Click(Sender: TObject);
    procedure tvInvoiceRPJCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tvInvoiceRPJCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    mPosisi : string;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel,CountSelected,ModalKoreksi : Boolean;
    VerfOL: Integer;
    MenuVerf : String;
    Procedure Tampildata;
   
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrMainInvoiceRPJ: TFrMainInvoiceRPJ;
  S: array[0..255] of char;
  BM: TBookmark;

implementation
uses myModul,Myprocedure,MyGlobal,
  FrmInvoiceRPJ;
{$R *.dfm}

Procedure TFrMainInvoiceRPJ.Tampildata;
begin

  with QuInvoiceRPJ do
  begin
    close;
    Prepared;
    Parameters[0].Value:=Strtoint(PeriodBln);
    Parameters[1].Value:=Strtoint(PeriodThn);
    Open;
  end;
  ViewOtorisasi(TvInvoiceRPJ,QuInvoiceRPJ,VerfOL);

end;

procedure TFrMainInvoiceRPJ.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do
  begin
    DefaultExt := ADefaultExt;
    Filter := AFilter;
    FileName := AFileName;
    if Execute then
      AMethod(FileName, true);
  end;
end;


procedure TFrMainInvoiceRPJ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
    begin
      if Assigned(FrInvoiceRPJ)then
      begin
         MessageDlg('Modul '+FrInvoiceRPJ.Caption+' belum ditutup !',mtWarning,[mbok],0);
         Action := caNone;
      end
      else
        Action:=caFree;

    end
    else
        Action:=caNone;
end;

procedure TFrMainInvoiceRPJ.FormDestroy(Sender: TObject);
begin
 FrMainInvoiceRPJ:=nil;
end;

procedure TFrMainInvoiceRPJ.FormShow(Sender: TObject);
begin
//  Tampildata;
  Tampildata;
  {case dxPageControl1.ActivePageIndex of
    //0: activeControl:=cxGrid6;
    1: activeControl:=cxGrid1;
  end;}
end;

procedure TFrMainInvoiceRPJ.ToolButton10Click(Sender: TObject);
begin
  Tampildata;
end;

procedure TFrMainInvoiceRPJ.ToolButton5Click(Sender: TObject);
begin
   Close;
end;

procedure TFrMainInvoiceRPJ.ExportExcel1Click(Sender: TObject);
begin
  if IsExcel then
  begin
    SaveDialog.FileName := Caption;
    if SaveDialog.Execute then
    begin
      ExportGrid4ToExcel(SaveDialog.FileName,cxGrid8,False,True,True);
      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
      LoggingData(IDUser,'Export to excel',FrMainInvoiceRPJ.Caption,'','export to excel dengan nama file : '+SaveDialog.FileName);
    end
  end;
  //Save('xls', 'Microsoft Excel (*.xls)|*.xls', FrAktiva.Caption, dxDBGrid1.SaveToXLS);
end;

procedure TFrMainInvoiceRPJ.AutoFilter1Click(Sender: TObject);
begin
    if tvInvoiceRPJ.OptionsCustomize.ColumnFiltering=false then
    tvInvoiceRPJ.OptionsCustomize.ColumnFiltering:=true
    else
    tvInvoiceRPJ.OptionsCustomize.ColumnFiltering:=false;
end;

procedure TFrMainInvoiceRPJ.ShowGrid1Click(Sender: TObject);
begin
   if ShowGrid1.Checked then
   begin
      tvInvoiceRPJ.OptionsView.GridLines:=glNone;
      ShowGrid1.Checked:=false;
   end else
   begin
      tvInvoiceRPJ.OptionsView.GridLines:=glBoth;
      ShowGrid1.Checked:=true;
   end;
end;

procedure TFrMainInvoiceRPJ.ShowHeader1Click(Sender: TObject);
begin
   if ShowHeader1.Checked then
   begin
      tvInvoiceRPJ.OptionsView.Header:= False;
      ShowHeader1.Checked:=false;
   end else
   begin
      tvInvoiceRPJ.OptionsView.Header:=True;
      ShowHeader1.Checked:=true;
   end;
end;

procedure TFrMainInvoiceRPJ.Show1Click(Sender: TObject);
begin
   if Show1.Checked then
   begin
      tvInvoiceRPJ.OptionsView.Footer:= false;
      Show1.Checked:=false;
   end else
   begin
      tvInvoiceRPJ.OptionsView.Footer:= true;
      Show1.Checked:=true;
   end;
end;

procedure TFrMainInvoiceRPJ.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_ESCAPE then
   begin
      Close;
   end else
   if Key=VK_RETURN then
   begin
     SendMessage(Handle,WM_NEXTDLGCTL,0,0);
   end
   else if key=VK_INSERT then
   begin

   end
   else if key=VK_Delete then
   begin

   end;
end;

procedure TFrMainInvoiceRPJ.ToolButton2Click(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if IsKoreksi then
    begin
      if QuInvoiceRPJ.IsEmpty=False then
      begin
        if QuInvoiceRPJNeedOtorisasi.Value then
        begin
          gTempNoBukti:=QuInvoiceRPJNoBukti.AsString;
          if Assigned(FrInvoiceRPJ) then
             FrInvoiceRPJ.Show
          else
          begin
            ModalKoreksi:=True;
            Application.CreateForm(TFrInvoiceRPJ,FrInvoiceRPJ);
            CekOtoritasMenu(IDUser,tag,FrInvoiceRPJ.Istambah,FrInvoiceRPJ.Ishapus,
                            FrInvoiceRPJ.Iskoreksi, FrInvoiceRPJ.isCetak, FrInvoiceRPJ.isExcel);
            FrInvoiceRPJ.Show;
          end;
        end
        else
        begin
          MsgNeedOtorisasi;
          ActiveControl := cxGrid8;
        end;
      end
      else
      begin
        MsgKoreksiDataKosong;
        ActiveControl:=cxGrid8;
      end;

    end
    else
    begin
      MsgTidakBerhakKoreksiData;
    end;
  end
  else
  begin
    MessageDlg('Periode ditelh terkunci !',mtWarning,[mbok],0);
  end;
end;

procedure TFrMainInvoiceRPJ.MultiSelect1Click(Sender: TObject);
begin
   if MultiSelect1.Checked then
   begin
      tvInvoiceRPJ.OptionsSelection.MultiSelect:=false;
      MultiSelect1.Checked:=false;
   end else
   begin
      tvInvoiceRPJ.OptionsSelection.MultiSelect:=True;
      MultiSelect1.Checked:=true;
   end;

end;

procedure TFrMainInvoiceRPJ.ToolButton3Click(Sender: TObject);
begin
  if IsHapus then
  begin
    {case dxPageControl1.ActivePageIndex of
      0 : begin
             if QuInvoiceUMPO.IsEmpty=true then
             begin
                Application.MessageBox('Tabel Kosong','Informasi',MB_OK Or MB_ICONWARNING);
             end
             else
             begin
                StrPCopy(S,Format('Anda yakin Perkiraan %s dan Keterangan %s dihapus ?',
                     [QuInvoiceUMPO.Fields[0].asstring,
                      QuInvoiceUMPO.Fields[1].asstring]));
                if (Application.MessageBox(S,'Peringatan',
                    MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
                begin
                   with dm.QuCari do
                   begin
                     close;
                     sql.Clear;
                     SQL.Add('Delete dbPajakMasuk where nobukti=:0');
                     Prepared;
                     Parameters[0].Value := QuInvoiceUMPONoBukti.Value;
                     ExecSQL;
                     close;
                     sql.Clear;
                     SQL.Add('Delete dbinvoiceUMPO where nobukti=:0');
                     Prepared;
                     Parameters[0].Value := QuInvoiceUMPONoBukti.Value;
                     ExecSQL;
                   end;
                end;
             end;
          end;
    end;        }
    Tampildata;
  end else
  begin
     ShowMessage('Anda Tidak Berhak Menghapus Data');
  end;
end;

procedure TFrMainInvoiceRPJ.DevisiChange(Sender: TObject);
begin
//  mDevisi := '0'+IntToStr(Devisi.ItemIndex);
  Tampildata;
end;

procedure TFrMainInvoiceRPJ.FormCreate(Sender: TObject);
begin
  with DM.QuCari do
  begin
    close;
    sql.Clear;
    sql.Add('Select Devisi,NamaDevisi from dbDevisi Order by Devisi');
    Open;
//    Devisi.Items.Clear;
//    Devisi.Items.Add('Semua');
    while not eof do
    begin
//      Devisi.Items.Add(FieldByname('NamaDevisi').AsString+' ('+FieldByname('Devisi').AsString+')');
      next;
    end;
//    Devisi.ItemIndex := 0;
  end;
  //ToolButton3.Enabled := (dxPageControl1.ActivePageIndex=0) and (cxGrid6.ActiveLevel.Index=1);
  //dxPageControl1.Tabs[0].Visible := False;
end;

procedure TFrMainInvoiceRPJ.ShowGroupPanel1Click(Sender: TObject);
begin
  if ShowGroupPanel1.Checked then
   begin
      tvInvoiceRPJ.OptionsView.GroupByBox:= false;
      ShowGroupPanel1.Checked:=false;
   end else
   begin
      tvInvoiceRPJ.OptionsView.GroupByBox:= true;
      ShowGroupPanel1.Checked:=true;
   end;
end;

procedure TFrMainInvoiceRPJ.BulanChange(Sender: TObject);
begin
  Tampildata;
end;

procedure TFrMainInvoiceRPJ.ToolButton1Click(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if IsTambah then
    begin
     if Assigned(FrInvoiceRPJ) then
        FrInvoiceRPJ.Show
     else
     begin
       ModalKoreksi:=False;
       Application.CreateForm(TFrInvoiceRPJ,FrInvoiceRPJ);
       CekOtoritasMenu(IDUser,tag,FrInvoiceRPJ.Istambah,FrInvoiceRPJ.Ishapus,
                   FrInvoiceRPJ.Iskoreksi, FrInvoiceRPJ.isCetak, FrInvoiceRPJ.isExcel);

       FrInvoiceRPJ.Show;
     end;
    end
    else
    begin
       MsgTidakBerhakTambahData;
    end;
  end
  else
  begin
    MessageDlg('Periode telah terkunci !',mtWarning,[mbok],0);
  end;
end;

procedure TFrMainInvoiceRPJ.ToolButton9Click(Sender: TObject);
begin
  close;
end;

procedure TFrMainInvoiceRPJ.dxPageControl1Change(Sender: TObject);
begin
  Tampildata;

          ToolButton1.Enabled:=true;
          ToolButton2.Enabled:=True;
          ToolButton3.Visible := False;

end;

procedure TFrMainInvoiceRPJ.ToolButton8Click(Sender: TObject);
begin
  BM := QuInvoiceRPJ.GetBookmark;


  {frLogin := TFrLogin.Create(Self);
  frLogin.Label2.Caption :='Otorisasi';
  if frLogin.ShowModal=mrok then }
  //if LanjutOtorisasi=IDYES then
  begin
    Otorisasi('DBInvoiceRPJ',MenuVerf,IDUser,'',QuInvoiceRPJNOBUKTI.Value);

    ToolButton10.Click;
    if QuInvoiceRPJ.BookmarkValid(BM) then
          begin
            try
               QuInvoiceRPJ.GotoBookmark(BM);
            finally
               QuInvoiceRPJ.FreeBookmark(BM);
            end
          end else
          begin
            QuInvoiceRPJ.FreeBookmark(BM);
            QuInvoiceRPJ.Last;
          end;
  End;
end;

procedure TFrMainInvoiceRPJ.tvInvoiceRPJFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  toolbutton8.Enabled := QuInvoiceRPJNeedOtorisasi.Value;
  with QuDetailInvoiceRPJ do
  begin
    close;
    Open;
  end;
end;

procedure TFrMainInvoiceRPJ.ToolButton11Click(Sender: TObject);
begin
  BM := QuInvoiceRPJ.GetBookmark;
  begin
    BatalOtorisasi('DBInvoiceRPJ',MenuVerf,IDUser,'',QuInvoiceRPJNOBUKTI.Value);

    ToolButton10.Click;
    if QuInvoiceRPJ.BookmarkValid(BM) then
    begin
      try
         QuInvoiceRPJ.GotoBookmark(BM);
      finally
         QuInvoiceRPJ.FreeBookmark(BM);
      end
    end else
    begin
      QuInvoiceRPJ.FreeBookmark(BM);
      QuInvoiceRPJ.Last;
    end;
  end;
end;

procedure TFrMainInvoiceRPJ.tvInvoiceRPJCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 if QuInvoiceRPJIsBatal.AsBoolean=true then
     begin
       ToolButton13.Caption:='Aktif' ;
       Xbatal:=False;
     End
   else
     begin
        ToolButton13.Caption:='Batal' ;
        Xbatal:=true;
     end;
end;

procedure TFrMainInvoiceRPJ.tvInvoiceRPJCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if AViewInfo.GridRecord.DisplayTexts[32]='True' then
   ACanvas.Brush.Color := Clred;
end;

procedure TFrMainInvoiceRPJ.ToolButton13Click(Sender: TObject);
begin
 BM := QuInvoiceRPJ.GetBookmark;
    begin
     pembatalan('DBInvoiceRPJ','IsBatal',QuInvoiceRPJNOBUKTI.AsString,IDUser,MenuVerf);
      Begin
        ToolButton10.Click;
        if QuInvoiceRPJ.BookmarkValid(BM) then
        begin
          try
             QuInvoiceRPJ.GotoBookmark(BM);
          finally
             QuInvoiceRPJ.FreeBookmark(BM);
          end
        end else
        begin
          QuInvoiceRPJ.FreeBookmark(BM);
          QuInvoiceRPJ.Last;
        end;
      end;
    end;
  if QuInvoiceRPJIsBatal.AsBoolean=true then
     begin
       ToolButton13.Caption:='Aktif' ;
       Xbatal:=False;
     End
   else
     begin
        ToolButton13.Caption:='Batal' ;
        Xbatal:=true;
     end;
end;

procedure TFrMainInvoiceRPJ.ToolButton4Click(Sender: TObject);
begin
    if Iscetak then
         MainCetak(frxDBDataset1,frxDataPerusahaan,DM.QuCari,Dm.QuCari2,'SP_CETAKRjual','Vwperusahaan',QuInvoiceRPJNOBUKTI.AsString,'Nota\NotaRJual.fr3',frxReport1)
    else
         MsgTidakBerhakCetakData;

end;

end.
