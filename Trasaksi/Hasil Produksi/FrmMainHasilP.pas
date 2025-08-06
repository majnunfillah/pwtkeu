unit FrmMainHasilP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  StdCtrls, ExtCtrls, Menus, dxGridMenus, dxDBTLCl, dxGrClms,shellapi, Grids,
  Buttons, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxEdit, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, frxDesgn, frxClass, frxDBSet;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrMainHasilP = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;            
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    QuView: TADOQuery;
    DsView: TDataSource;
    ToolButton5: TToolButton;
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
    MultiSelect1: TMenuItem;
    Sp_Batal: TADOStoredProc;
    ToolButton8: TToolButton;
    ToolButton11: TToolButton;
    dxDBGrid1: TdxDBGrid;
    QuNavigator: TADOQuery;
    PopupMenu2: TPopupMenu;
    TampilValid: TMenuItem;
    TampilBatal: TMenuItem;
    DsMaster: TDataSource;
    QuMaster: TADOQuery;
    Panel1: TPanel;
    QuViewnobukti: TStringField;
    QuViewTanggal: TDateTimeField;
    QuViewkodesupp: TStringField;
    QuViewFakturSupp: TStringField;
    QuViewKeterangan: TMemoField;
    QuViewKodeVls: TStringField;
    QuViewKurs: TBCDField;
    QuViewPPn: TWordField;
    QuViewTipeBayar: TWordField;
    QuViewHari: TIntegerField;
    QuViewDisc: TBCDField;
    QuViewIsCetak: TBooleanField;
    QuViewUrut: TSmallintField;
    QuViewKodebrg: TStringField;
    QuViewNosat: TWordField;
    QuViewIsi: TBCDField;
    QuViewQnt: TBCDField;
    QuViewHarga: TBCDField;
    QuViewDiscP1: TBCDField;
    QuViewDiscP2: TBCDField;
    QuViewdiscP3: TBCDField;
    QuViewDiscP4: TBCDField;
    QuViewDiscRP1: TBCDField;
    QuViewDiscRP2: TBCDField;
    QuViewdiscRP3: TBCDField;
    QuViewDiscRP4: TBCDField;
    QuViewDiscTOT: TBCDField;
    QuViewHrgNetto: TBCDField;
    QuViewNDiskon: TBCDField;
    QuViewSubtotal: TBCDField;
    QuViewNdpp: TBCDField;
    QuViewNPpn: TBCDField;
    QuViewNNet: TBCDField;
    QuViewNoPO: TStringField;
    QuViewUrutPO: TIntegerField;
    QuViewNamaSupp: TStringField;
    QuViewAlamat: TStringField;
    QuViewNamaVls: TStringField;
    QuViewNamabrg: TStringField;
    QuViewSatuan: TStringField;
    QuViewTglJatuhTempo: TDateTimeField;
    QuViewkodegdg: TStringField;
    QuViewKodelokasi: TStringField;
    QuViewNamaGdg: TStringField;
    QuViewNamaLokasi: TStringField;
    QuViewIsBatal: TBooleanField;
    QuViewDSDesigner: TStringField;
    QuViewGroupNoBukti: TStringField;
    dxDBGrid1Kodebrg: TdxDBGridMaskColumn;
    dxDBGrid1Qnt: TdxDBGridMaskColumn;
    dxDBGrid1Harga: TdxDBGridMaskColumn;
    dxDBGrid1DiscP1: TdxDBGridMaskColumn;
    dxDBGrid1DiscP2: TdxDBGridMaskColumn;
    dxDBGrid1discP3: TdxDBGridMaskColumn;
    dxDBGrid1DiscP4: TdxDBGridMaskColumn;
    dxDBGrid1Ndpp: TdxDBGridMaskColumn;
    dxDBGrid1NPpn: TdxDBGridMaskColumn;
    dxDBGrid1NNet: TdxDBGridMaskColumn;
    dxDBGrid1Namabrg: TdxDBGridMaskColumn;
    dxDBGrid1Satuan: TdxDBGridMaskColumn;
    dxDBGrid1Kodelokasi: TdxDBGridMaskColumn;
    dxDBGrid1NamaGdg: TdxDBGridMaskColumn;
    dxDBGrid1GroupNoBukti: TdxDBGridMaskColumn;
    QuDetail1: TADOQuery;
    DsDetail1: TDataSource;
    QuNavigatorNoBukti: TStringField;
    QuMasterNOBUKTI: TStringField;
    QuMasterNOURUT: TStringField;
    QuMasterTANGGAL: TDateTimeField;
    QuMasterKETERANGAN: TStringField;
    QuDetail1NOBUKTI: TStringField;
    QuDetail1URUT: TIntegerField;
    QuDetail1KODEBRG: TStringField;
    QuDetail1KodeGdg: TStringField;
    QuDetail1QNT: TBCDField;
    QuDetail1NOSAT: TWordField;
    QuDetail1SATUAN: TStringField;
    QuDetail1ISI: TBCDField;
    QuDetail1NamaBrg: TStringField;
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBTableView;
    tvMasterNoBukti: TcxGridDBColumn;
    tvMasterTanggal: TcxGridDBColumn;
    tvMasterNamaCustSupp: TcxGridDBColumn;
    tvDetail: TcxGridDBTableView;
    tvDetailKodeBrg: TcxGridDBColumn;
    tvDetailNamaBrg: TcxGridDBColumn;
    tvDetailQnt: TcxGridDBColumn;
    tvDetailSatuan: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    ToolButton4: TToolButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDataPerusahaan: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    QuMasterIsOtorisasi1: TBooleanField;
    QuMasterOtoUser1: TStringField;
    QuMasterTglOto1: TDateTimeField;
    QuMasterIsOtorisasi2: TBooleanField;
    QuMasterOtoUser2: TStringField;
    QuMasterTglOto2: TDateTimeField;
    QuMasterIsOtorisasi3: TBooleanField;
    QuMasterOtoUser3: TStringField;
    QuMasterTglOto3: TDateTimeField;
    QuMasterIsOtorisasi4: TBooleanField;
    QuMasterOtoUser4: TStringField;
    QuMasterTglOto4: TDateTimeField;
    QuMasterIsOtorisasi5: TBooleanField;
    QuMasterOtoUser5: TStringField;
    QuMasterTglOto5: TDateTimeField;
    QuMasterNoJurnal: TStringField;
    QuMasterNoUrutJurnal: TStringField;
    QuMasterTglJurnal: TDateTimeField;
    QuMasterCetakKe: TSmallintField;
    QuMasterMaxOL: TIntegerField;
    tvMasterIsOtorisasi1: TcxGridDBColumn;
    tvMasterOtoUser1: TcxGridDBColumn;
    tvMasterTglOto1: TcxGridDBColumn;
    tvMasterIsOtorisasi2: TcxGridDBColumn;
    tvMasterOtoUser2: TcxGridDBColumn;
    tvMasterTglOto2: TcxGridDBColumn;
    tvMasterIsOtorisasi3: TcxGridDBColumn;
    tvMasterOtoUser3: TcxGridDBColumn;
    tvMasterTglOto3: TcxGridDBColumn;
    tvMasterIsOtorisasi4: TcxGridDBColumn;
    tvMasterOtoUser4: TcxGridDBColumn;
    tvMasterTglOto4: TcxGridDBColumn;
    tvMasterIsOtorisasi5: TcxGridDBColumn;
    tvMasterOtoUser5: TcxGridDBColumn;
    tvMasterTglOto5: TcxGridDBColumn;
    QuMasterNeedOtorisasi: TBooleanField;
    Sp_Beli: TADOStoredProc;
    QuDetail1NoSO: TStringField;
    tvDetailNoSO: TcxGridDBColumn;
    QuDetail1NoPesanan: TStringField;
    QuDetail1KODECUST: TStringField;
    QuDetail1TglKirim: TDateTimeField;
    QuDetail1CATATAN: TStringField;
    QuDetail1AlamatKirim: TStringField;
    QuDetail1TipePPn: TWordField;
    QuSPP: TADOQuery;
    QuSPPNOBUKTI: TStringField;
    QuSPPURUT: TIntegerField;
    QuSPPKODEBRG: TStringField;
    QuSPPKodeGdg: TStringField;
    QuSPPQNT: TBCDField;
    QuSPPNOSAT: TWordField;
    QuSPPSATUAN: TStringField;
    QuSPPISI: TBCDField;
    QuSPPNoSPK: TStringField;
    QuSPPHPP: TBCDField;
    QuSPPNamaBrg: TStringField;
    QuSPPNoSO: TStringField;
    QuSPPNoPesanan: TStringField;
    QuSPPKODECUST: TStringField;
    QuSPPTglKirim: TDateTimeField;
    QuSPPCATATAN: TStringField;
    QuSPPTipePPn: TWordField;
    QuSPPNoAlamatKirim: TIntegerField;
    QuSPPHPPRP: TBCDField;
    Button1: TButton;
    Button2: TButton;
    QuSPPurutso: TIntegerField;
    tvMasterDBColumn1: TcxGridDBColumn;
    QuMasteradajurnal: TIntegerField;
    MainMenu1: TMainMenu;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ExportExcel1Click(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure AutoFilter1Click(Sender: TObject);
    procedure ShowGrid1Click(Sender: TObject);
    procedure ShowHeader1Click(Sender: TObject);
    procedure Show1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton2Click(Sender: TObject);
    procedure MultiSelect1Click(Sender: TObject);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GetData(bulan,tahun:integer);
    procedure TampilValidClick(Sender: TObject);
    procedure TampilBatalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tvMasterFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure ToolButton4Click(Sender: TObject);
    procedure frxReport1AfterPrintReport(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
  private
    { Private declarations }
    mSat_1, mSat_2, mStrMsg,Choice: String;
    procedure SimpanSPP(IsSimpan:Boolean);
    function  CekSudahAdaProsesSelanjutnya: Boolean;
  public
    { Public declarations }
    mPosisi,xStatus,MenuHasilP : string;
    IsTambah,IsKoreksi,IsHapus, IsCetak, ModalKoreksi, IsExcel : Boolean;
    SortBy,Prioritas :String;
    xQnt,xDiskon,xDPP,xPPN,xJumlah : Real;
    HasilPOL : integer;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrMainHasilP: TFrMainHasilP;
  S: array[0..255] of char;

implementation

uses MyModul, MyProcedure, MyGlobal, FrmBrows, FrmSetForm,
  FrmHasilP;
{$R *.dfm}
procedure TFrMainHasilP.SimpanSPP(IsSimpan:Boolean);
var brgspp:string;qntspp:integer;
begin
  //
  if IsSimpan then
    begin
      With Sp_Beli do
      begin
        close;
        Prepared;

        Parameters[1].Value:=Choice;
        Parameters[2].Value:=QuMasterNOBUKTI.AsString;
        Parameters[3].Value:=QuMasterNOURUT.AsString;
        Parameters[4].Value:=QuMasterTANGGAL.AsDateTime;
        Parameters[5].Value:=QuSPPNoSO.AsString;
        Parameters[6].Value:=QuSPPNoPesanan.AsString;
        Parameters[7].Value:=QuSPPKODECUST.AsString;
        Parameters[8].Value := QuSPPTglKirim.AsDateTime;
        Parameters[9].Value:='';
        Parameters[10].Value:='';
        Parameters[11].Value:=QuSPPCATATAN.Value;
        Parameters[12].Value:=0;
        Parameters[13].Value:=QuSPPurutso.AsInteger;
        Parameters[14].Value:=QuSPPKODEBRG.AsString;
        Case QuDetail1NOSAT.Value of
          1 : Begin
                Parameters[15].Value := QuSPPQNT.Value;
                Parameters[16].Value := QuSPPQNT.Value/QuDetail1ISI.Value;
              end;
          2 : Begin
                Parameters[15].Value := QuSPPQNT.Value*QuDetail1ISI.Value;
                Parameters[16].Value := QuSPPQNT.Value;
              End;
        end;
        Parameters[17].Value:=QuSPPSATUAN.AsString;
        Parameters[18].Value:=QuSPPSATUAN.AsString;
        Parameters[19].Value:=QuSPPNOSAT.AsInteger;
        Parameters[20].Value:=QuSPPISI.Value;
        Parameters[21].Value:=0;
        Parameters[22].Value:=0;
        Parameters[23].Value:='';
        Parameters[24].Value:=IDUser;
        Parameters[25].Value:=1;
        Parameters[26].Value := Trim(QuSPPNamaBrg.Value);
        Parameters[27].Value :=0;
        Parameters[28].Value:=QuSPPNoAlamatKirim.AsInteger;
        Parameters[29].Value := '';
        Parameters[30].Value := '';
        Parameters[31].Value := 0;
       // Parameters[32].Value := dxMemProsesSPPKodegdg.Value;
        Parameters[32].Value := QuSPPKodeGdg.text;
        Parameters[33].Value := QuSPPTipePPn.AsInteger;
        Parameters[34].Value := QuSPPHPPRP.AsFloat;

        try
          ExecProc;
            LoggingData(IDUser,Choice,'SPP',QuMasterNOBUKTI.AsString,
                    'Kode Brg = '+QuSPPKODEBRG.AsString+' , Qnt = '+
                    QuSPPQNT.AsString
                    );
            //TampilData(NOBUKTI.Text);
        except
          MsgProsesGagal('I');
        end;
      end;
    end
  else
    begin
        with QuSPP do
          begin
            Close;
            Parameters[0].Value := QuMasterNOBUKTI.AsString;
            Open;
            First;
          end;
        brgspp:=QuSPPKODEBRG.AsString; qntspp :=QuSPPQNT.AsInteger;
      with DM.QuCari do

        begin
          Close;
          SQL.Clear;
          SQL.Add('delete from dbSPP where NoBukti = :0');
          Parameters[0].Value := QuMasterNOBUKTI.AsString;
          try
            ExecSQL;
            LoggingData(IDUser,'D','SPP',QuMasterNOBUKTI.AsString,
                    'Kode Brg = '+brgspp+' , Qnt = '+inttostr (qntspp));
            //TampilData(NOBUKTI.Text);
          except
            ShowMessage('Proses Hapus SPP Gagal!');
          end;
        end;
    end;
end;


function TFrMainHasilP.CekSudahAdaProsesSelanjutnya: Boolean;
var xStrMsg, xStrMsgDet: String;
begin
  xStrMsg:='';
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select  NoBukti from dbSPP ');
    SQL.Add('where IsOtorisasi1=1 and otouser1<>''''  and Nobukti='+QuotedStr(QuMasterNOBUKTI.AsString));
    Open;
    xStrMsgDet:='';
    if not IsEmpty then
    begin
      while not Eof do
      begin
        if xStrMsgDet='' then xStrMsgDet:=FieldByName('NoBukti').AsString
          else xStrMsgDet:=xStrMsgDet+', '+FieldByName('NoBukti').AsString;
        Next;
      end;
      if xStrMsg='' then
        xStrMsg:=xStrMsg+'Perintah Kirim No. Bukti : '+xStrMsgDet
      else xStrMsg:=xStrMsg+chr(13)+'Retur Barang No. Bukti : '+xStrMsgDet;
    end;
  end;
  mStrMsg:=xStrMsg;
  if xStrMsg='' then
  begin
    Result:=False
  end else
  begin
    Result:=True;
  end;
end;

procedure TFrMainHasilP.GetData(bulan,tahun:integer);
begin
  QuNavigator.Close;
  QuNavigator.SQL.Clear;
  QuNavigator.SQL.Add('select NoBukti from dbHasilPRD ');
  QuNavigator.SQL.Add(' where month(tanggal)='+IntToStr(bulan)+'  and year(tanggal)='+IntToStr(tahun));
  QuNavigator.SQL.Add(' order by NoBukti ');
  QuNavigator.Open;
  with QuMaster do
  begin
    Close;
    SQL.Strings[2]:='select @Tahun='+IntToStr(tahun)+', @Bulan='+IntToStr(bulan);
    Open;
  end;
end;

procedure TFrMainHasilP.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrMainHasilP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
           MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
  begin
    if Application.FindComponent('FrHasilP')<>nil then
    begin
       MessageDlg('Modul '+FrHasilP.Caption+' belum ditutup !',mtWarning,[mbok],0);
       Action := caNone
    end
    else Action:=caFree;
  end
  else Action:=caNone;
end;

procedure TFrMainHasilP.FormDestroy(Sender: TObject);
begin
  FrMainHasilP:=nil;
end;

procedure TFrMainHasilP.FormShow(Sender: TObject);
begin
  TampilValid.Checked:=true;
  TampilBatal.Checked:=false;
  ToolButton10.Click;
end;

procedure TFrMainHasilP.ToolButton10Click(Sender: TObject);
begin
   GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
end;

procedure TFrMainHasilP.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrMainHasilP.ExportExcel1Click(Sender: TObject);
begin
  with QuView do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select * from dbHasilPrd a Left Outer Join dbHasilPrdDet b On a.NoBukti=b.NoBukti where month(tanggal)=:0 and year(tanggal)=:1 and isbatal=:2');
    Prepared;
    Parameters[0].Value:=strtoint(PeriodBln);
    Parameters[1].Value:=strtoint(PeriodThn);
    Parameters[2].Value:=TampilValid.Checked;
    Open;
  end;
  if (IsExcel) then
  begin
    //Save('xls', 'Microsoft Excel (*.xls)|*.xls', FrMainHasilP.Caption, dxDBGrid1.SaveToXLS);
    ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
    //LoggingData(Caption,'User '+IdUser+' Export Data '+ SaveDialog.FileName,dm.qucari);
  end else
  begin
      ShowMessage('Anda tidak berhak Mengeksport Excel');
  end;
end;

procedure TFrMainHasilP.AutoFilter1Click(Sender: TObject);
begin
    if dxDBGrid1.Filter.Active=false then
    dxDBGrid1.Filter.Active:=true
    else
    dxDBGrid1.Filter.Active:=false;

end;

procedure TFrMainHasilP.ShowGrid1Click(Sender: TObject);
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

procedure TFrMainHasilP.ShowHeader1Click(Sender: TObject);
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

procedure TFrMainHasilP.Show1Click(Sender: TObject);
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

procedure TFrMainHasilP.ToolButton1Click(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if IsTambah then
    begin
      if Assigned(FrHasilP) then FrHasilP.Show else
      begin
        ModalKoreksi:=False;
        xStatus := 'H';
        Application.CreateForm(TFrHasilP,FrHasilP);
        CekOtoritasMenu(IDUser,tag,FrHasilP.Istambah,FrHasilP.Ishapus,
          FrHasilP.Iskoreksi, FrHasilP.isCetak, FrHasilP.isExcel);
        //FrSPP.PanelShow2.Visible:=false;
        FrHasilP.Show;
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
       ActiveControl := dxDBGrid1;
  end;
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin

  end
  else
  begin
    MsgPeriodeSudahDikunci;
    ActiveControl:=cxGrid1;
  end;
end;

procedure TFrMainHasilP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_ESCAPE then
   begin
      Close;
   end else
   if Key=VK_RETURN then
   begin
       ToolButton2.Click;
   end
   else if key=VK_INSERT then
   begin
       ToolButton1.Click;
   end
   else if key=VK_Delete then
   begin
        ToolButton3.Click;
   end;
end;

procedure TFrMainHasilP.ToolButton2Click(Sender: TObject);
begin
   if IsLockPeriodenk(StrToInt(PeriodBln),StrToInt(PeriodThn))  then
   Begin
          if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
          begin
            if IsKoreksi then
            begin
              if QuMaster.IsEmpty=False then
              begin
              if Not QuMasterNeedOtorisasi.Value then
                  begin
                    MsgNeedOtorisasi;
                    ActiveControl:= cxGrid1;
                  end
                 else
               Begin
                if Assigned(FrHasilP) then
                  FrHasilP.Show
                else
                begin
                  ModalKoreksi:=True;
                  Application.CreateForm(TFrHasilP,FrHasilP);
                  CekOtoritasMenu(IDUser,tag,FrHasilP.Istambah,FrHasilP.Ishapus,
                    FrHasilP.Iskoreksi, FrHasilP.isCetak, FrHasilP.isExcel);

                  //FrPO.PanelShow2.Visible:=true;
                  //FrPO.ActiveControl := FrPO.Tanggal;
                  FrHasilP.Show;
                end;
               end
              end else
              begin
                ShowMessage('Tidak ada transaksi yang dikoreksi !');
                ActiveControl:=dxDBGrid1;
              end;

            end else
            begin
              ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
            end;
          end
          else
          begin
        //ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
           MessageDlg('Periode telah terkunci !',mtWarning,[mbok],0);
          end;
   end
          else
          begin
            MessageDlg('Periode telah terkunci !',mtWarning,[mbok],0);
            ActiveControl := dxDBGrid1;
          end;
end;

procedure TFrMainHasilP.MultiSelect1Click(Sender: TObject);
begin
   if MultiSelect1.Checked then
   begin
      dxDBGrid1.OptionsBehavior:=[edgoAutoSearch,edgoAutoSort,edgoDragScroll,edgoEnterShowEditor,edgoTabThrough,edgoVertThrough];
      MultiSelect1.Checked:=false;
   end else
   begin
      dxDBGrid1.OptionsBehavior:=[edgoAutoSearch,edgoAutoSort,edgoDragScroll,edgoEnterShowEditor,edgoMultiSelect,edgoTabThrough,edgoVertThrough];
      MultiSelect1.Checked:=true;
   end;   
end;

procedure TFrMainHasilP.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

procedure TFrMainHasilP.TampilValidClick(Sender: TObject);
begin
   ToolButton11.Caption:=TampilValid.Caption;
   TampilValid.Checked:=true;
   TampilBatal.Checked:=false;
   ToolButton1.Enabled:=true;
   ToolButton2.Enabled:=true;
   ToolButton3.Caption:='&Batal';
   ToolButton10Click(self);
end;

procedure TFrMainHasilP.TampilBatalClick(Sender: TObject);
begin
   ToolButton11.Caption:=TampilBatal.Caption;
   TampilValid.Checked:=false;
   TampilBatal.Checked:=True;
   ToolButton1.Enabled:=false;
   ToolButton2.Enabled:=false;
   ToolButton3.Caption:='&Valid';
   ToolButton10Click(self);
end;

procedure TFrMainHasilP.FormCreate(Sender: TObject);
begin
  Panel1.Color:=FrSetForm.PanelMain.Color;
  ToolBar1.Color:=FrSetForm.ToolBarMain.Color;
end;

procedure TFrMainHasilP.tvMasterFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
 with QuDetail1 do
  begin
    Close;
    Open;
  end;

end;

procedure TFrMainHasilP.ToolButton4Click(Sender: TObject);
var i : integer;
    DaftarNoBukti : String;
begin
if Iscetak then
    //MainCetak(frxDBDataset1,frxDataPerusahaan,DM.QuCari,Dm.QuCari2,'CetakHasilproduksi','Vwperusahaan',QuMasterNoBukti.AsString,'Nota\NotaHasilproduksi.fr3',frxReport1)
   begin
      frxDBDataset1.DataSet := DM.QuCari;
      with DM.QuCari do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select * from vwCetakHasilProduksi ');
          SQL.Add('where	NoBukti in ( ');

          DaftarNoBukti := '';
          for i:= 0 to tvMaster.Controller.SelectedRowCount - 1 do
            begin
              if i = 0 then DaftarNoBukti := QuotedStr(tvMaster.Controller.SelectedRows[i].Values[0])
              else DaftarNoBukti := DaftarNoBukti +','+ QuotedStr(tvMaster.Controller.SelectedRows[i].Values[0]);
              if i <> tvMaster.Controller.SelectedRowCount - 1 then SQL.Add(QuotedStr(tvMaster.Controller.SelectedRows[i].Values[0])+',')
              else SQL.Add(QuotedStr(tvMaster.Controller.SelectedRows[i].Values[0])+') ')
            end;
          SQL.Add('order by Urut');
          Open;
        end;
      frxDBDataset1.Close;
      frxDBDataset1.Open;
      frxDataPerusahaan.DataSet := DM.QuCari2;
      with DM.QuCari2 do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select * from Vwperusahaan ');
          Open;
        end;
      frxDataPerusahaan.Close;
      frxDataPerusahaan.Open;
  frxReport1.LoadFromFile('Nota\NotaHasilproduksi.fr3');
  frxReport1.ShowReport;
   end
else
   MsgTidakBerhakCetakData
end;

procedure TFrMainHasilP.frxReport1AfterPrintReport(Sender: TObject);
begin
NilaiCetak('CetakKe','DBHasilPrd',QuMasterNoBukti.AsString);
end;

procedure TFrMainHasilP.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
if CompareText(varName,'iduser')=0 then
        value:=IDUser;
end;

procedure TFrMainHasilP.ToolButton12Click(Sender: TObject);
var jmlbarang: integer;
begin
 {if QuMasterIsOtorisasi1.Value then
  begin
    MessageDlg('No. '+QuMasterNoBukti.AsString+' telah diotorisasi oleh user '+QuMasterOtoUser1.AsString+#13+'pada tanggal '+
               FormatDatetime('DD-MMM-YYYY',QuMasterTglOto1.AsDateTime)+' Jam '+FormatDateTime('HH:MM:SS',QuMasterTglOto1.AsDateTime)+#13+
               'Data tidak dapat diotorisasi lagi !!!',mtWarning,[mbok],0);
    ActiveControl := cxGrid1;
  end
  else}
  begin

    {if QuMasterNeedOtorisasi.AsBoolean  = false  then
      begin
        with QuSPP do
          begin
            Close;
            Parameters[0].Value := QuMasterNOBUKTI.AsString;
            Open;
            First;
            while not QuSPP.Eof do
              begin
                SimpanSPP(True);
                Next;
              end;
          end;
      end;}

    BM := QuMaster.GetBookmark;
    {frLogin := TFrLogin.Create(Self);
    frLogin.Label2.Caption :='Otorisasi';
    if frLogin.ShowModal=mrok then }
    begin
      Otorisasi('DBHasilPrd',MenuHasilP,IDUser,'',QuMasterNoBukti.Value);
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

        if (QuMasterNeedOtorisasi.AsBoolean  = false) and (QuMasteradajurnal.AsInteger=1)  then
      begin
             with dm.QuCari do
             begin
               Close;
               sql.Clear;
               sql.Add('select count(*) jumlah from dbsppdet where nobukti =:0 ');
               Prepared;
               Parameters[0].Value:=QuMasterNOBUKTI.AsString;
               Open;
               jmlbarang:=fieldbyname('jumlah').AsInteger;

             end;
             if jmlbarang=0 then
               begin
                Choice:='I';
                with QuSPP do
                  begin
                    Close;
                    Parameters[0].Value := QuMasterNOBUKTI.AsString;
                    Open;
                    First;
                    while not QuSPP.Eof do
                      begin
                        SimpanSPP(True);
                        Next;
                      end;
                  end;
               end
      end;
  end;
end;

procedure TFrMainHasilP.ToolButton13Click(Sender: TObject);
begin
        if CekSudahAdaProsesSelanjutnya=True then
        begin
          MessageDlg('Data tidak dapat dihapus, sudah ada transaksi'+chr(13)+mStrMsg, mtInformation,[mbOK],0);
          ActiveControl:=cxGrid1;
        end else
        begin
            BM := QuMaster.GetBookmark;
            {frLogin := TFrLogin.Create(Self);
            frLogin.Label2.Caption :='Otorisasi';
            if frLogin.ShowModal=mrok then  }
            begin
              BatalOtorisasi('DBHasilPrd',MenuHasilP,IDUser,'',QuMasterNoBukti.Value);
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
            Choice:='D';
            SimpanSPP(False);
        end;
end;

end.
