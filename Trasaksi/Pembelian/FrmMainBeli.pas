unit FrmMainBeli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  StdCtrls, ExtCtrls, Menus, dxGridMenus, dxDBTLCl, dxGrClms,shellapi, Grids,
  Buttons, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxEdit, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrMainBeli = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;            
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
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
    sp_Pembelian: TADOStoredProc;
    ToolButton8: TToolButton;
    ToolButton11: TToolButton;
    PopupMenu2: TPopupMenu;
    TampilValid: TMenuItem;
    TampilBatal: TMenuItem;
    DsMaster: TDataSource;
    QuMaster: TADOQuery;
    Panel1: TPanel;
    ToolButton4: TToolButton;
    ToolButton13: TToolButton;
    OpenDialog1: TOpenDialog;
    LokasiFileTxt: TEdit;
    PBProses: TProgressBar;
    QuMasterNoBukti: TStringField;
    QuMasterUrut: TIntegerField;
    QuMasterTanggal: TDateTimeField;
    QuMasterJatuhTempo: TDateTimeField;
    QuMasterPPn: TWordField;
    QuMasterKodeCustSupp: TStringField;
    QuMasterKodeTipe: TStringField;
    QuMasterKodeSubTipe: TStringField;
    QuMasterQnt: TBCDField;
    QuMasterNDPP: TBCDField;
    QuMasterNPPN: TBCDField;
    QuMasterNNet: TBCDField;
    QuMasterAccPersediaan: TStringField;
    QuMasterAccPPN: TStringField;
    QuMasterAccHutPiut: TStringField;
    QuMasterNamaCustSupp: TStringField;
    QuMasterHarga: TBCDField;
    QuMasterNamaTipe: TStringField;
    QuMasterNamaSubTipe: TStringField;
    QuMasterKeyNoBukti: TStringField;
    QuMasterIsExcel: TBooleanField;
    QuMasterKodeVls: TStringField;
    QuMasterKurs: TBCDField;
    QuMasterNDPPD: TBCDField;
    QuMasterNPPND: TBCDField;
    QuMasterNNetD: TBCDField;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1NoBukti: TdxDBGridMaskColumn;
    dxDBGrid1Urut: TdxDBGridMaskColumn;
    dxDBGrid1Tanggal: TdxDBGridDateColumn;
    dxDBGrid1JatuhTempo: TdxDBGridDateColumn;
    dxDBGrid1PPn: TdxDBGridMaskColumn;
    dxDBGrid1KodeCustSupp: TdxDBGridMaskColumn;
    dxDBGrid1KodeTipe: TdxDBGridMaskColumn;
    dxDBGrid1KodeSubTipe: TdxDBGridMaskColumn;
    dxDBGrid1Qnt: TdxDBGridMaskColumn;
    dxDBGrid1NDPP: TdxDBGridMaskColumn;
    dxDBGrid1NPPN: TdxDBGridMaskColumn;
    dxDBGrid1NNet: TdxDBGridMaskColumn;
    dxDBGrid1AccPersediaan: TdxDBGridMaskColumn;
    dxDBGrid1AccPPN: TdxDBGridMaskColumn;
    dxDBGrid1AccHutPiut: TdxDBGridMaskColumn;
    dxDBGrid1NamaCustSupp: TdxDBGridMaskColumn;
    dxDBGrid1Harga: TdxDBGridMaskColumn;
    dxDBGrid1NamaTipe: TdxDBGridMaskColumn;
    dxDBGrid1NamaSubTipe: TdxDBGridMaskColumn;
    dxDBGrid1KeyNoBukti: TdxDBGridMaskColumn;
    dxDBGrid1IsExcel: TdxDBGridCheckColumn;
    dxDBGrid1KodeVls: TdxDBGridMaskColumn;
    dxDBGrid1Kurs: TdxDBGridMaskColumn;
    dxDBGrid1NDPPD: TdxDBGridMaskColumn;
    dxDBGrid1NPPND: TdxDBGridMaskColumn;
    dxDBGrid1NNetD: TdxDBGridMaskColumn;
    QuMasterFlagSimbol: TStringField;
    QuMasterLeft2NoBukti: TStringField;
    dxDBGrid1Left2NoBukti: TdxDBGridMaskColumn;
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
    procedure ToolButton13Click(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure ExportExcel1Click(Sender: TObject);
    procedure AutoFilter1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPosisi : string;
    IsTambah,IsKoreksi,IsHapus, IsCetak, ModalKoreksi, IsExcel : Boolean;
    SortBy,Prioritas :String;
    xQnt,xDiskon,xDPP,xPPN,xJumlah : Real;
    mDataKe: array [1..8] of String;
    mAsalTrasferdata: String;
    procedure SimpanData(pChoice: String);
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrMainBeli: TFrMainBeli;
  S: array[0..255] of char;

implementation

uses MyModul, MyProcedure, MyGlobal, FrmBrows, FrmSetForm,
  FrmPembelian, ToolEdit, PBNumEdit, FrmLoadDataTXT;
{$R *.dfm}

procedure TFrMainBeli.SimpanData(pChoice: String);
var xUrut: Integer;
    xAccPersediaan, xAccPPN, xAccHutPiut: String;
begin
  if pChoice='I' then
  begin
    with DM.QuCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select top 1 Urut from dbPembelian where NoBukti='+QuotedStr(FrPembelian.NoBukti.Text));
      SQL.Add('order by Urut desc ');
      Open;
      if IsEmpty then
        xUrut:=1
      else
        xUrut:=FieldByName('Urut').AsInteger+1;
    end;
  end else
    xUrut:=QuMasterUrut.AsInteger;
    
  if pChoice='D' then
  begin
    xAccPersediaan:=QuMasterAccPersediaan.AsString;
    xAccPPN:=QuMasterAccPPN.AsString;
    xAccHutPiut:=QuMasterAccHutPiut.AsString;
  end else
  begin
    with DM.QuCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from DBSUBTIPETRANS ');
      SQL.Add('where KodeTipe='+QuotedStr(FrPembelian.KodeTipe.Text));
      SQL.Add('and KodeSubTipe='+QuotedStr(FrPembelian.KodeSubTipe.Text));
      Open;
      if IsEmpty then
      begin
        xAccPersediaan:='';
        xAccPPN:='';
        xAccHutPiut:='';
      end else
      begin
        xAccPersediaan:=FieldByName('Persediaan').AsString;
        xAccPPN:=FieldByName('PPn').AsString;
        xAccHutPiut:=FieldByName('HutPiut').AsString;
      end;
    end;
  end;

  with sp_Pembelian do
  begin
    Prepared;
    Parameters[1].Value:=pChoice;
    if pChoice='D' then
      Parameters[2].Value:=QuMasterNoBukti.AsString
    else
      Parameters[2].Value:=FrPembelian.NoBukti.Text;
    Parameters[3].Value:=xUrut;
    if pChoice<>'D' then
    begin
      Parameters[4].Value:=FrPembelian.Tanggal.Date;
      Parameters[5].Value:=FrPembelian.Tanggal.Date;
      Parameters[6].Value:=FrPembelian.KodeCustSupp.Text;
      Parameters[7].Value:=FrPembelian.PPN.ItemIndex;
      Parameters[8].Value:=FrPembelian.KodeTipe.Text;
      Parameters[9].Value:=FrPembelian.KodeSubTipe.Text;
      Parameters[10].Value:=FrPembelian.Qnt.Value;
      Parameters[11].Value:=FrPembelian.Harga.Value;
      Parameters[12].Value:=FrPembelian.NDPP.Value;
      Parameters[13].Value:=FrPembelian.NPPN.Value;
      Parameters[14].Value:=FrPembelian.NNET.Value;
    end;
    Parameters[15].Value:=xAccPersediaan;
    Parameters[16].Value:=xAccPPN;
    Parameters[17].Value:=xAccHutPiut;
    Parameters[18].Value:=False;
    Parameters[19].Value:=FrPembelian.KodeVls.Text;
    Parameters[20].Value:=FrPembelian.Kurs.Value;
    Parameters[21].Value:=FrPembelian.NDPPD.Value;
    Parameters[22].Value:=FrPembelian.NPPND.Value;
    Parameters[23].Value:=FrPembelian.NNetD.Value;
    try
      ExecProc;
      QuMaster.Close;
      QuMaster.Open;
      if pChoice<>'D' then
      begin
        QuMaster.Locate('NoBukti;Urut',VarArrayOf([FrPembelian.NoBukti.Text,xUrut]),[]);
      end;
    except
    end;
  end;
end;

procedure TFrMainBeli.GetData(bulan,tahun:integer);
begin
  with QuMaster do
  begin
    Close;
    SQL.Strings[2]:='select @Tahun='+IntToStr(tahun)+', @Bulan='+IntToStr(bulan);
    Open;
  end;
end;

procedure TFrMainBeli.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrMainBeli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
           MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
  begin
    Action:=caFree;
  end
  else Action:=caNone;
end;

procedure TFrMainBeli.FormDestroy(Sender: TObject);
begin
  FrMainBeli:=nil;
end;

procedure TFrMainBeli.FormShow(Sender: TObject);
begin
  TampilValid.Checked:=true;
  TampilBatal.Checked:=false;
  ToolButton10.Click;
end;

procedure TFrMainBeli.ToolButton10Click(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    with DM.QuCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add('update DBPembelian set AccHutPiut=isnull(B.HutPiut,''''), AccPersediaan=isnull(B.Persediaan,''''), AccPPN=isnull(B.PPn,'''') ');
      SQL.Add('from DBPembelian A ');
      SQL.Add('left outer join DBSUBTIPETRANS B on B.KODETIPE=A.KodeTipe and B.KODESUBTIPE=A.KodeSubTipe ');
      SQL.Add('where year(A.Tanggal)='+IntToStr(StrToInt(PeriodThn))+' and month(A.Tanggal)='+IntToStr(StrToInt(PeriodBln)));
      SQL.Add('and ((isnull(A.AccHutPiut,'''')<>isnull(B.HutPiut,'''')) or (isnull(A.AccPersediaan,'''')=isnull(B.Persediaan,'''')) or (isnull(A.AccPPN,'''')=isnull(B.PPn,''''))) ');
      ExecSQL;
    end;
  end;
  GetData(StrToInt(PeriodBln),StrToInt(PeriodThn));
end;

procedure TFrMainBeli.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrMainBeli.ToolButton1Click(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if IsTambah then
    begin
        ModalKoreksi:=False;
        Application.CreateForm(TFrPembelian,FrPembelian);
        FrPembelian.IsSimpan:=True;
        FrPembelian.ShowModal;
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
end;

procedure TFrMainBeli.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrMainBeli.ToolButton2Click(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if IsKoreksi then
    begin
      if QuMaster.IsEmpty=False then
      begin
        Application.CreateForm(TFrPembelian,FrPembelian);
        FrPembelian.IsSimpan:=False;
        FrPembelian.NoBukti.Text:=QuMasterNoBukti.AsString;
        FrPembelian.PPN.ItemIndex:=QuMasterPPn.AsInteger;
        FrPembelian.Tanggal.Date:=QuMasterTanggal.AsDateTime;
        FrPembelian.JatuhTempo.Date:=QuMasterJatuhTempo.AsDateTime;
        FrPembelian.KodeCustSupp.Text:=QuMasterKodeCustSupp.AsString;
        FrPembelian.LNamaCustSupp.Caption:='[ '+QuMasterNamaCustSupp.AsString+' ]';
        FrPembelian.KodeTipe.Text:=QuMasterKodeTipe.AsString;
        FrPembelian.LNamaTipe.Caption:='[ '+QuMasterNamaTipe.AsString+' ]';
        FrPembelian.LNamaSubTipe.Caption:='[ '+QuMasterNamaSubTipe.AsString+' ]';
        FrPembelian.KodeSubTipe.Text:=QuMasterKodeSubTipe.AsString;
        FrPembelian.Qnt.Value:=QuMasterQnt.AsFloat;
        FrPembelian.Harga.Value:=QuMasterHarga.AsFloat;
        FrPembelian.KodeVls.Text:=QuMasterKodeVls.AsString;
        FrPembelian.Kurs.Value:=QuMasterKurs.AsFloat;
        FrPembelian.NDPP.Value:=QuMasterNDPP.AsFloat;
        FrPembelian.NPPN.Value:=QuMasterNPPN.AsFloat;
        FrPembelian.NNET.Value:=QuMasterNNet.AsFloat;
        FrPembelian.NDPPD.Value:=QuMasterNDPPD.AsFloat;
        FrPembelian.NPPND.Value:=QuMasterNPPND.AsFloat;
        FrPembelian.NNetD.Value:=QuMasterNNetD.AsFloat;
        FrPembelian.ShowModal;
      end else
      begin
        ShowMessage('Tidak ada transaksi yang dikoreksi !');
        //ActiveControl:=dxDBGrid1;
      end;
    end else
    begin
      ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
    end;
  end
  else
  begin
    MessageDlg('Periode telah terkunci !',mtWarning,[mbok],0);
    //ActiveControl := dxDBGrid1;
  end;
end;

procedure TFrMainBeli.FormCreate(Sender: TObject);
begin
  Panel1.Color:=FrSetForm.PanelMain.Color;
  ToolBar1.Color:=FrSetForm.ToolBarMain.Color;
end;

procedure TFrMainBeli.ToolButton13Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    Application.CreateForm(TFrLoadDataTXT, FrLoadDataTXT);
    FrLoadDataTXT.mPengirimLoadData:=1;
    FrLoadDataTXT.FMemo.Lines.LoadFromFile(OpenDialog1.FileName);
    FrLoadDataTXT.ShowModal;
    if FrLoadDataTXT.ModalResult=mrOK then
    begin
      QuMaster.Close;
      QuMaster.Open;
    end;
  end;
end;

procedure TFrMainBeli.dxDBGrid1CustomDrawCell(Sender: TObject;
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
       AColor:=FrSetForm.WarnaRowGridTrans2
    else
       AColor:=FrSetForm.WarnaRowGridTrans1;
  end;
end;

procedure TFrMainBeli.ExportExcel1Click(Sender: TObject);
begin
  if (IsExcel) then
  begin
      Save('xls', 'Microsoft Excel (*.xls)|*.xls', 'Pembelian', dxDBGrid1.SaveToXLS);
      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
  end else
  begin
      ShowMessage('Anda tidak berhak Mengeksport Excel');
  end;
end;

procedure TFrMainBeli.AutoFilter1Click(Sender: TObject);
begin
    if dxDBGrid1.Filter.Active=False then
       dxDBGrid1.Filter.Active:=True
    else
       dxDBGrid1.Filter.Active:=False;
end;

procedure TFrMainBeli.ToolButton3Click(Sender: TObject);
begin
  if IsLockPeriode(StrToInt(PeriodBln),StrToInt(PeriodThn)) then
  begin
    if IsHapus then
    begin
      if QuMaster.IsEmpty=False then
      begin
        if (Application.MessageBox('Anada yakin akan menghaspus satu baris data ?','Hapus Data',
          MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
        begin
          with DM.QuBukaKunci do
          begin
            Close;
            SQL.Clear;
            SQL.Add('delete dbPembelian where NoBukti='+QuotedStr(QuMasterNoBukti.AsString)+' and Urut='+IntToStr(QuMasterUrut.AsInteger));
            ExecSQL;
          end;
          ToolButton10.Click;
        end;
      end else
      begin
        ShowMessage('Tidak ada transaksi yang dihapus !');
        ActiveControl:=dxDBGrid1;
      end;
    end else
    begin
      ShowMessage('Anda Tidak Berhak Menghapus Data');
      ActiveControl:=dxDBGrid1;
    end;
  end
  else
  begin
    MessageDlg('Periode telah terkunci !',mtWarning,[mbok],0);
    ActiveControl := dxDBGrid1;
  end;
end;

end.
