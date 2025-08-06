unit FrmMainUMInvoicePL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  ImgList, StdCtrls, ExtCtrls, Menus,
  dxGridMenus, dxDBTLCl, dxGrClms, Mask, DBCtrls, Grids,
  ShellApi, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxEdit, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, dxPageControl, DBGrids, cxGridBandedTableView,
  cxGridDBBandedTableView, frxRich, frxClass, frxDBSet, MoneyStr;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrMainUMInvoicePL = class(TForm)
    PopupMenu2: TPopupMenu;
    TampilValid: TMenuItem;
    TampilBatal: TMenuItem;
    PopupMenu1: TPopupMenu;
    ExportExcel1: TMenuItem;
    N1: TMenuItem;
    ShowGrid1: TMenuItem;
    ShowHeader1: TMenuItem;
    Show1: TMenuItem;
    N2: TMenuItem;
    AutoFilter1: TMenuItem;
    MultiSelect1: TMenuItem;
    SaveDialog: TSaveDialog;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton10: TToolButton;
    ToolButton7: TToolButton;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton11: TToolButton;
    dxPageControl1: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    QuMasterInv: TADOQuery;
    DsMasterInv: TDataSource;
    QuDetailInv: TADOQuery;
    DsDetailInv: TDataSource;
    dxTabSheet2: TdxTabSheet;
    cxGrid3: TcxGrid;
    tvMaster3: TcxGridDBBandedTableView;
    tvDetail3: TcxGridDBBandedTableView;
    cxGridLevel3: TcxGridLevel;
    cxGridLevel4: TcxGridLevel;
    tvDetail3KodeBrg: TcxGridDBBandedColumn;
    tvDetail3NAMABRG: TcxGridDBBandedColumn;
    tvDetail3QNT: TcxGridDBBandedColumn;
    tvDetail3QNT2: TcxGridDBBandedColumn;
    tvDetail3SAT_1: TcxGridDBBandedColumn;
    tvDetail3SAT_2: TcxGridDBBandedColumn;
    tvDetail3NetW: TcxGridDBBandedColumn;
    tvDetail3GrossW: TcxGridDBBandedColumn;
    tvDetail3HARGA: TcxGridDBBandedColumn;
    tvDetail3SUBTOTAL: TcxGridDBBandedColumn;
    tvDetail3KetDetail: TcxGridDBBandedColumn;
    tvMaster3NoBukti: TcxGridDBBandedColumn;
    tvMaster3Tanggal: TcxGridDBBandedColumn;
    tvMaster3KodeCustSupp: TcxGridDBBandedColumn;
    tvMaster3NamaCustSupp: TcxGridDBBandedColumn;
    DsDetail4: TDataSource;
    QuDetail4: TADOQuery;
    DsMaster4: TDataSource;
    QuMaster4: TADOQuery;
    cxGrid4: TcxGrid;
    tvMaster4: TcxGridDBBandedTableView;
    tvDetail4: TcxGridDBBandedTableView;
    tvDetail4Kodebrg: TcxGridDBBandedColumn;
    tvDetail4NAMABRG: TcxGridDBBandedColumn;
    tvDetail4Sat_2: TcxGridDBBandedColumn;
    tvDetail4Qnt2: TcxGridDBBandedColumn;
    tvDetail4Sat_1: TcxGridDBBandedColumn;
    tvDetail4Qnt: TcxGridDBBandedColumn;
    tvDetail4MyKey: TcxGridDBBandedColumn;
    tvSPB: TcxGridDBBandedTableView;
    tvSPBNoBukti: TcxGridDBBandedColumn;
    tvSPBTanggal: TcxGridDBBandedColumn;
    tvSPBSAT_2: TcxGridDBBandedColumn;
    tvSPBQnt2: TcxGridDBBandedColumn;
    tvSPBSAT_1: TcxGridDBBandedColumn;
    tvSPBQnt: TcxGridDBBandedColumn;
    tvSPBMySHIP: TcxGridDBBandedColumn;
    tvSPBMyKey: TcxGridDBBandedColumn;
    cxGridLevel7: TcxGridLevel;
    cxGridLevel8: TcxGridLevel;
    ToolButton4: TToolButton;
    tvMaster4NoSHIP: TcxGridDBBandedColumn;
    tvMaster4KodeCustSupp: TcxGridDBBandedColumn;
    tvMaster4TglShip: TcxGridDBBandedColumn;
    tvMaster4NamaCustSupp: TcxGridDBBandedColumn;
    tvMaster3NoSHip: TcxGridDBBandedColumn;
    tvMaster3TGLSHip: TcxGridDBBandedColumn;
    tvMaster3NoSPP: TcxGridDBBandedColumn;
    tvMaster3TglSPP: TcxGridDBBandedColumn;
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
    tvMaster3NoSO: TcxGridDBBandedColumn;
    tvMaster3TGLSO: TcxGridDBBandedColumn;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    QuBeli: TADOQuery;
    QuBeliNoBukti: TStringField;
    QuBeliNoUrut: TStringField;
    QuBeliTanggal: TDateTimeField;
    QuBeliNoSPP: TStringField;
    QuBeliTglSPP: TDateTimeField;
    QuBeliNoSO: TStringField;
    QuBeliTglSO: TDateTimeField;
    QuBeliKodeCustSupp: TStringField;
    QuBeliKODESLS: TIntegerField;
    QuBeliValas: TStringField;
    QuBeliKurs: TBCDField;
    QuBeliIsLokal: TBooleanField;
    QuBeliConsignee: TStringField;
    QuBeliNotifyParty: TStringField;
    QuBeliPONo: TStringField;
    QuBeliPaymentTerm: TStringField;
    QuBeliPoL: TStringField;
    QuBeliPoD: TStringField;
    QuBeliNameOfVessel: TStringField;
    QuBeliShipOnBoardDate: TDateTimeField;
    QuBeliPacking: TStringField;
    QuBeliUrut: TIntegerField;
    QuBeliUrutSPB: TIntegerField;
    QuBeliKodeBrg: TStringField;
    QuBeliPPN: TWordField;
    QuBeliDISC: TBCDField;
    QuBeliQNT1: TBCDField;
    QuBeliQNT2: TBCDField;
    QuBeliSAT_1: TStringField;
    QuBeliSAT_2: TStringField;
    QuBeliNOSAT: TIntegerField;
    QuBeliISI: TBCDField;
    QuBeliNetW: TBCDField;
    QuBeliGrossW: TBCDField;
    QuBeliHARGA: TBCDField;
    QuBeliDiscP: TBCDField;
    QuBeliDiscRp: TBCDField;
    QuBeliDISCTOT: TBCDField;
    QuBeliHrgNetto: TBCDField;
    QuBeliSubTotal: TBCDField;
    QuBeliNDiskon: TBCDField;
    QuBeliNDPP: TBCDField;
    QuBeliNPPN: TBCDField;
    QuBeliNNET: TBCDField;
    QuBeliSubTotalRp: TBCDField;
    QuBeliNDiskonRp: TBCDField;
    QuBeliNDPPRp: TBCDField;
    QuBeliNPPNRp: TBCDField;
    QuBeliNNETRp: TBCDField;
    QuBeliKetDetail: TStringField;
    QuBeliConsigneeSC: TStringField;
    QuBeliPaymentTerm_1: TStringField;
    QuBeliNotifyParty_1: TStringField;
    QuBeliPoLSC: TStringField;
    QuBeliPoD_1: TStringField;
    QuBeliPacking_1: TStringField;
    QuBeliNAMABRG: TStringField;
    QuBeliNamaCustSupp: TStringField;
    QuBeliAlamat: TStringField;
    QuBelikota: TStringField;
    QuBeliNegara: TStringField;
    QuBeliNamabrgKom: TStringField;
    QuBeliNoBL: TStringField;
    QuBeliNoteBeneficiary1: TStringField;
    QuBeliNoteBeneficiary2: TStringField;
    QuBeliNoteBeneficiary3: TStringField;
    QuBeliShipmentAdvice1: TStringField;
    QuBeliShipmentAdvice2: TStringField;
    QuBeliShippingMark: TStringField;
    QuBeliETADestination: TDateTimeField;
    QuBeliToShipmentAdvice2: TStringField;
    QuBeliFootNote: TStringField;
    QuBeliIssuingBank: TStringField;
    QuBeliNamaVls: TStringField;
    QuBeliQnt: TBCDField;
    QuBeliSatuan: TStringField;
    QuBeliNoSPB: TStringField;
    QuBeliNamaSls: TStringField;
    QuBeliTipeBayar: TWordField;
    QuBeliHari: TIntegerField;
    QuBeliNoAlamatKirim: TIntegerField;
    QuBeliNama: TStringField;
    QuBeliAlamat_1: TStringField;
    QuBeliTelp: TStringField;
    QuBeliFax: TStringField;
    QuBeliTotal: TBCDField;
    QuBeliDiskon: TBCDField;
    QuBeliTotalDPP: TBCDField;
    QuBeliTotalPPn: TBCDField;
    QuBeliTotalNetto: TBCDField;
    QuBeliUrutTrans: TIntegerField;
    QuUpdatedbBeli: TADOQuery;
    frxReport1: TfrxReport;
    frxDBCetak: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxRichObject1: TfrxRichObject;
    QuBeli1: TADOQuery;
    QuBeli1NoBukti: TStringField;
    QuBeli1Urut: TIntegerField;
    QuBeli1Keterangan: TStringField;
    QuBeli1KodeVls: TStringField;
    QuBeli1Kurs: TBCDField;
    QuBeli1Harga: TBCDField;
    QuBeli1NNet: TBCDField;
    MoneyString1: TMoneyString;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    tvMaster3DBBandedColumn1: TcxGridDBBandedColumn;
    tvMaster3DBBandedColumn2: TcxGridDBBandedColumn;
    tvMaster3DBBandedColumn3: TcxGridDBBandedColumn;
    PopupMenu3: TPopupMenu;
    INVOICE1: TMenuItem;
    KWITANSI1: TMenuItem;
    ANDATERIMA1: TMenuItem;
    QuMaster4NoBukti: TStringField;
    QuMaster4Tanggal: TDateTimeField;
    QuMaster4KodeCustSupp: TStringField;
    QuMaster4NamaCustSupp: TStringField;
    QuDetail4NoBukti: TStringField;
    QuDetail4Urut: TIntegerField;
    QuDetail4NoSPP: TStringField;
    QuDetail4UrutSPP: TIntegerField;
    QuDetail4KodeBrg: TStringField;
    QuDetail4Namabrg: TStringField;
    QuDetail4Qnt: TBCDField;
    QuDetail4QNT2: TBCDField;
    QuDetail4SAT_1: TStringField;
    QuDetail4SAT_2: TStringField;
    QuDetail4NOSAT: TWordField;
    QuDetail4ISI: TBCDField;
    QuDetail4NetW: TBCDField;
    QuDetail4GrossW: TBCDField;
    QuDetail4HPP: TBCDField;
    QuDetail4KodeGdg: TStringField;
    QuDetail4isCetakKitir: TBooleanField;
    QuDetail4NAMABRG_1: TStringField;
    QuDetail4MyKey: TStringField;
    QuMasterInvNoBukti: TStringField;
    QuMasterInvNoUrut: TStringField;
    QuMasterInvTanggal: TDateTimeField;
    QuMasterInvNoSPP: TStringField;
    QuMasterInvTglSPP: TIntegerField;
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
    QuMasterInvNoSPB: TStringField;
    QuMasterInvTglSPB: TDateTimeField;
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
    QuMasterInvNeedOtorisasi: TBooleanField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton2Click(Sender: TObject);
    procedure GetData(bulan,tahun:integer);
    procedure FormCreate(Sender: TObject);
    procedure dxPageControl1Change(Sender: TObject);
    procedure tvMaster3FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tvMaster4FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure ToolButton15Click(Sender: TObject);
    procedure tvMaster3CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tvMaster3CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure INVOICE1Click(Sender: TObject);
    procedure KWITANSI1Click(Sender: TObject);
    procedure ANDATERIMA1Click(Sender: TObject);
  private
    procedure ProsesPembuatanInvoice;
    { Private declarations }
  public
    { Public declarations }
    mPosisi : string;
    IsTambah, IsKoreksi, IsHapus, IsCetak, IsExcel: Boolean;
    ModalKoreksi : Boolean;
    INVOL: Integer;
    MenuINV : String;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrMainUMInvoicePL: TFrMainUMInvoicePL;
  S: array[0..255] of char;

implementation

uses MyModul, Myprocedure, MyGlobal, FrmBrows, FrmSetForm, FrmUMInvoicePL,
  frmLogin, FrmUMInvoicePLProses;

{$R *.dfm}

procedure TFrMainUMInvoicePL.GetData(bulan,tahun:integer);
begin
  with QuMasterInv do
  begin
    Close;
    SQL.Strings[2]:='select @Tahun='+IntToStr(tahun)+', @Bulan='+IntToStr(bulan);
    Open;
  end;
   with QuMaster4 do
  begin
    Close;
    //SQL.Strings[2]:='select @Tahun='+IntToStr(tahun)+', @Bulan='+IntToStr(bulan);
    Open;
  end;
end;

procedure TFrMainUMInvoicePL.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrMainUMInvoicePL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
           MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
  begin
    if Application.FindComponent('FrUMInvoicePL')<>nil then
    begin
       MessageDlg('Modul '+FrUMInvoicePL.Caption+' belum ditutup !',mtWarning,[mbok],0);
       Action := caNone
    end
    else Action:=caFree;
  end
  else
      Action:=caNone;
end;

procedure TFrMainUMInvoicePL.FormDestroy(Sender: TObject);
begin
  FrMainUMInvoicePL:=nil;
end;

procedure TFrMainUMInvoicePL.FormShow(Sender: TObject);
begin
  ToolButton1.Enabled:=(dxPageControl1.ActivePageIndex=0);
  ToolButton2.Enabled:=(dxPageControl1.ActivePageIndex=1);
  ToolButton10.Click;
end;

procedure TFrMainUMInvoicePL.ToolButton10Click(Sender: TObject);
begin
  GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
end;

procedure TFrMainUMInvoicePL.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrMainUMInvoicePL.ProsesPembuatanInvoice;
var i:Integer;
begin
   Application.CreateForm(TFrUMInvoicePLProses,FrUMInvoicePLProses);
   FrUMInvoicePLProses.mNOSO_SJProses:=QuMaster4NoBukti.AsString;
   FrUMInvoicePLProses.ShowModal;
   if FrUMInvoicePLProses.ModalResult=mrOK then
   begin
     if Assigned(FrUMInvoicePL) then
       begin
        FrUMInvoicePL.Show;
       end
     else
     begin
       gTempNoBukti := FrUMInvoicePLProses.NoBukti;
       gTempNoBuktiSO:=FrUMInvoicePLProses.mNOSO_SJProses;
       ModalKoreksi:=True;
       Application.CreateForm(TFrUMInvoicePL,FrUMInvoicePL);
       CekOtoritasMenu(IDUser,tag,FrUMInvoicePL.Istambah,FrUMInvoicePL.Ishapus,
                   FrUMInvoicePL.Iskoreksi, FrUMInvoicePL.isCetak, FrUMInvoicePL.isExcel);
       FrUMInvoicePL.Show;
     end;
   end;
end;

procedure TFrMainUMInvoicePL.ToolButton1Click(Sender: TObject);
var xNoBuktiSPP: String;
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
   if IsTambah then
   begin
     if ((dxPageControl1.ActivePageIndex=0) and (QuMaster4.IsEmpty)) then
     begin
       MessageDlg('Outstanding SPB tidak ada!',mtWarning,[mbok],0);
     end else
     begin
         ProsesPembuatanInvoice;
     end;
   end
   else
   begin
     ShowMessage('Anda tidak berhak Menambah Data');
   end;
  end
  else
  begin
   MessageDlg('Periode telah terkunci !',mtWarning,[mbok],0);
   //ActiveControl := dxDBGrid1;
  end;
  {if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if IsTambah then
    begin
      xIsLokal := False;
      Application.CreateForm(TFrNoBuktiInvoicePL, FrNoBuktiInvoicePL);
      FrNoBuktiInvoicePL.mTipeTransAsal:='SPB';
      FrNoBuktiInvoicePL.mNoBuktiAsal:=QuMaster4NoBukti.AsString;
      FrNoBuktiInvoicePL.ShowModal;
      if FrNoBuktiInvoicePL.ModalResult=mrOK then
      begin
        xNoBuktiSPP:=FrNoBuktiInvoicePL.NoBukti.Text;
        ToolButton10.Click;
        QuMasterInv.Locate('Nobukti',xNoBuktiSPP,[]);

        gTempNoBukti:=QuMasterInvNoBukti.AsString;
        if Assigned(FrUMInvoicePL) then
           FrUMInvoicePL.Show
        else
        begin
          ModalKoreksi:=True;
          Application.CreateForm(TFrUMInvoicePL,FrUMInvoicePL);
          CekOtoritasMenu(IDUser,tag,FrUMInvoicePL.Istambah,FrUMInvoicePL.Ishapus,
                          FrUMInvoicePL.Iskoreksi, FrUMInvoicePL.isCetak, FrUMInvoicePL.isExcel);
          FrUMInvoicePL.xModalKoreksi:=ModalKoreksi;
          FrUMInvoicePL.Show;
        end;
      end;
    end
    else
    begin
      MsgTidakBerhakTambahData;
      if cxGrid3.CanFocus then
        ActiveControl:=cxGrid3;
    end;
  end
  else
  begin
    MsgPeriodeSudahDikunci;
    if cxGrid3.CanFocus then
        ActiveControl:=cxGrid3;
  end;  }
end;

procedure TFrMainUMInvoicePL.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key=VK_ESCAPE then
   begin
      Close;
   end;
end;

procedure TFrMainUMInvoicePL.ToolButton2Click(Sender: TObject);
begin
  if dxPageControl1.ActivePageIndex=1 then
  Begin
    if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
    begin
      if QuMasterInv.IsEmpty=False then
      begin
        if IsKoreksi then
        begin
          if not QuMasterInvNeedOtorisasi.Value then
          begin
            MsgNeedOtorisasi;
            ActiveControl:= cxGrid3;
          end
          else
          begin
            gTempNoBukti:=QuMasterINVNoBukti.AsString;
            if Assigned(FrUMInvoicePL) then
              FrUMInvoicePL.Show
            else
            begin
              ModalKoreksi:=True;
              Application.CreateForm(TFrUMInvoicePL,FrUMInvoicePL);
              CekOtoritasMenu(IDUser,Tag,FrUMInvoicePL.IsTambah,FrUMInvoicePL.IsHapus,
                          FrUMInvoicePL.IsKoreksi, FrUMInvoicePL.IsCetak, FrUMInvoicePL.IsExcel);
              FrUMInvoicePL.Show;
            end;
          end;
        end else
        begin
          MsgTidakBerhakKoreksiData;
          //ActiveControl:=cxGrd;
        end;
      end else
      begin
        MsgKoreksiDataKosong;
        //ActiveControl:=cxGrd;
      end;
    end else
    begin
      MsgPeriodeSudahDikunci;
      //ActiveControl:=cxGrd;
    end;
  end;
end;

procedure TFrMainUMInvoicePL.FormCreate(Sender: TObject);
begin
  dxPageControl1.ActivePageIndex:=1;
  Panel1.Color:=FrSetForm.PanelMain.Color;
  ToolBar1.Color:=FrSetForm.ToolBarMain.Color;
  FrMainUMInvoicePL.Color:=FrSetForm.FormMain.Color;
  ToolButton1.Enabled:=(dxPageControl1.ActivePageIndex=0);
  ToolButton2.Enabled:=(dxPageControl1.ActivePageIndex=1);
  ToolButton13.Enabled:=(dxPageControl1.ActivePageIndex=1);
end;

procedure TFrMainUMInvoicePL.dxPageControl1Change(Sender: TObject);
begin
  ToolButton1.Enabled:=(dxPageControl1.ActivePageIndex=0);
  ToolButton2.Enabled:=(dxPageControl1.ActivePageIndex=1);
  ToolButton13.Enabled:=(dxPageControl1.ActivePageIndex=1);
end;

procedure TFrMainUMInvoicePL.tvMaster3FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  with QuDetailInv do
  begin
    close;
    open;
  end;
end;

procedure TFrMainUMInvoicePL.tvMaster4FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  with QuDetail4 do
  begin
    Close;
    Open;
  end;
end;

procedure TFrMainUMInvoicePL.ToolButton4Click(Sender: TObject);
begin
  {if QuMasterInvIsOtorisasi1.Value then
  begin
    MessageDlg('No. Invoice Penjualan '+QuMasterInvNoBukti.AsString+' telah diotorisasi oleh user '+QuMasterInvOtoUser1.AsString+#13+'pada tanggal '+
               FormatDatetime('DD-MMM-YYYY',QuMasterInvTglOto1.AsDateTime)+' Jam '+FormatDateTime('HH:MM:SS',QuMasterInvTglOto1.AsDateTime)+#13+
               'Data tidak dapat diotorisasi lagi !!!',mtWarning,[mbok],0);
    ActiveControl := cxGrid3;
  end
  else }
  begin
    BM := QuMasterInv.GetBookmark;
    {frLogin := TFrLogin.Create(Self);
    frLogin.Label2.Caption :='Otorisasi';
    if frLogin.ShowModal=mrok then}
    begin
      //Otorisasi('DBInvoicePL',MenuINV,IDUser,'',QuMasterInvNoBukti.Value);
      Otorisasi('DBInvoiceUM',MenuINV,IDUser,'',QuMasterInvNoBukti.Value);
      ToolButton10.Click;
      if QuMasterInv.BookmarkValid(BM) then
      begin
        try
           QuMasterinv.GotoBookmark(BM);
        finally
           QuMasterinv.FreeBookmark(BM);
        end
      end else
      begin
        QuMasterinv.FreeBookmark(BM);
        QuMasterinv.Last;
      end;
    end;
  end
end;

procedure TFrMainUMInvoicePL.ToolButton12Click(Sender: TObject);
begin
    BM := QuMasterInv.GetBookmark;
    {frLogin := TFrLogin.Create(Self);
    frLogin.Label2.Caption :='Otorisasi';
    if frLogin.ShowModal=mrok then }
    begin
      //BatalOtorisasi('DBInvoicePL',MenuINV,IDUser,frLogin.KUNCI.Text,QuMasterInvNoBukti.Value);
      BatalOtorisasi('DBInvoiceUM',MenuINV,IDUser,'',QuMasterInvNoBukti.Value);

      ToolButton10.Click;
      if QuMasterInv.BookmarkValid(BM) then
      begin
        try
           QuMasterinv.GotoBookmark(BM);
        finally
           QuMasterinv.FreeBookmark(BM);
        end
      end else
      begin
        QuMasterinv.FreeBookmark(BM);
        QuMasterinv.Last;
      end;
    end;
end;

procedure TFrMainUMInvoicePL.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
  if CompareText(VarName,'Terbilang')=0 then
  begin
    if QuBeliValas.AsString<>'IDR' then
       Value := QuBeliNamaVls.AsString+' '+StringReplace(MoneyString1.Caption,'zero cents',' only',[rfReplaceAll, rfIgnoreCase])
    else
       Value := StringReplace(MoneyString1.Caption,'zero cents','',[rfReplaceAll, rfIgnoreCase]);
  end;
  if CompareText(VarName,'InvoiceValue')=0 then
  begin
    Value := MoneyString1.Value;
  end;
end;

procedure TFrMainUMInvoicePL.ToolButton15Click(Sender: TObject);
begin
if  DataBersyarat('select NOBukti from DbInvoicePL Where (NOPajak is not null or NoPajak not in ('''')) '+
                 ' and (TglFpj is not null or TglFpj not in ('''')) and nobukti=:0',[QuMasterInvNoBukti.ASstring],DM.Qucari)=true then
 begin
    BM := QuMasterInv.GetBookmark;
    begin
      pembatalan('DbInvoicePL','IsBatal',QuMasterInvNoBukti.AsString,IDUser,MenuINV);
      Begin
        ToolButton10.Click;
        if QuMasterInv.BookmarkValid(BM) then
        begin
          try
             QuMasterInv.GotoBookmark(BM);
          finally
             QuMasterInv.FreeBookmark(BM);
          end
        end else
        begin
          QuMasterInv.FreeBookmark(BM);
          QuMasterInv.Last;
        end;
      end;
    end;
 end
 else
 ShowMessage('Nomor Invoice '+QuMasterInvNoBukti.AsString+' Sudah Terdaftar Dalam Faktur Pajak');
 if QuMasterInvNoBukti.AsBoolean=true then
     begin
       ToolButton15.Caption:='Aktif' ;
       Xbatal:=False;
     End
   else
     begin
        ToolButton15.Caption:='Batal' ;
        Xbatal:=true;
     end;

end;

procedure TFrMainUMInvoicePL.tvMaster3CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
if QuMasterInvNoBukti.AsBoolean=true then
     begin
       ToolButton15.Caption:='Aktif' ;
       Xbatal:=False;
     End
   else
     begin
        ToolButton15.Caption:='Batal' ;
        Xbatal:=true;
     end;
end;

procedure TFrMainUMInvoicePL.tvMaster3CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if AViewInfo.GridRecord.DisplayTexts[25]='True' then
   ACanvas.Brush.Color := Clred;
end;

procedure TFrMainUMInvoicePL.INVOICE1Click(Sender: TObject);
var xNet : Real;
begin
   if IsCetak then
   begin
      begin
        frxDBCetak.DataSet.Close;
        frxDBCetak.DataSet := QuUpdatedbbeli;
        //frxDBDataset2.DataSet.Close;
        frxDBDataset2.DataSet := QuBeli1;
        with QuUpdatedbbeli do
        begin
          close;
          sql.Clear;
          sql.Add('Exec cetakInvoicePenjualan '+QuotedStr(QuMasterInvNoBukti.AsString));
          Prepared;
          open;
        end;
        QuUpdatedbBeli.DisableControls;
        QuUpdatedbBeli.First;
        while not QuUpdatedbBeli.Eof do
        begin
          xNet := xNet + QuUpdatedbBeli.FieldByname('NNet').AsFloat;
          QuUpdatedbBeli.Next;
        end;
        QuUpdatedbBeli.EnableControls;
        MoneyString1.Value := xNet;
        frxDBCetak.DataSet.Open;
        frxDBDataset2.DataSet.Open;
        with frxReport1 do
        begin
          LoadFromFile(ExtractFilePath(Application.ExeName)+'Nota\InvoicePL.fr3');
          ShowReport;
        end;
      end
   end
   else MsgTidakBerhakCetakData;
end;

procedure TFrMainUMInvoicePL.KWITANSI1Click(Sender: TObject);
var xNet : Real;
begin
   if IsCetak then
   begin
      begin
        frxDBCetak.DataSet.Close;
        frxDBCetak.DataSet := QuUpdatedbbeli;
        //frxDBDataset2.DataSet.Close;
        frxDBDataset2.DataSet := QuBeli1;
        with QuUpdatedbbeli do
        begin
          close;
          sql.Clear;
          sql.Add('Exec cetakInvoicePenjualan '+QuotedStr(QuMasterInvNoBukti.AsString));
          Prepared;
          open;
        end;
        QuUpdatedbBeli.DisableControls;
        QuUpdatedbBeli.First;
        while not QuUpdatedbBeli.Eof do
        begin
          xNet := xNet + QuUpdatedbBeli.FieldByname('NNet').AsFloat;
          QuUpdatedbBeli.Next;
        end;
        QuUpdatedbBeli.EnableControls;
        MoneyString1.Value := xNet;
        frxDBCetak.DataSet.Open;
        frxDBDataset2.DataSet.Open;
        with frxReport1 do
        begin
          LoadFromFile(ExtractFilePath(Application.ExeName)+'Nota\KwitansiPL.fr3');
          ShowReport;
        end;
      end
   end
   else MsgTidakBerhakCetakData;
end;

procedure TFrMainUMInvoicePL.ANDATERIMA1Click(Sender: TObject);
var xNet : Real;
begin
   if IsCetak then
   begin
      begin
        frxDBCetak.DataSet.Close;
        frxDBCetak.DataSet := QuUpdatedbbeli;
        //frxDBDataset2.DataSet.Close;
        frxDBDataset2.DataSet := QuBeli1;
        with QuUpdatedbbeli do
        begin
          close;
          sql.Clear;
          sql.Add('Exec cetakTTInvoicePenjualan '+QuotedStr(QuMasterInvNoBukti.AsString));
          Prepared;
          open;
        end;
        QuUpdatedbBeli.DisableControls;
        QuUpdatedbBeli.First;
        while not QuUpdatedbBeli.Eof do
        begin
          xNet := xNet + QuUpdatedbBeli.FieldByname('NNet').AsFloat;
          QuUpdatedbBeli.Next;
        end;
        QuUpdatedbBeli.EnableControls;
        MoneyString1.Value := xNet;
        frxDBCetak.DataSet.Open;
        frxDBDataset2.DataSet.Open;
        with frxReport1 do
        begin
          LoadFromFile(ExtractFilePath(Application.ExeName)+'Nota\TandaTerimaPL.fr3');
          ShowReport;
        end;
      end
   end
   else MsgTidakBerhakCetakData;
end;

end.
