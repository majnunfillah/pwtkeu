unit FrmBarangCustomer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons, PBNumEdit, dxTL, dxDBCtrl,
  dxDBGrid, dxCntner, ADODB, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxEdit, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxGrid;

type
  TFrBarangCustomer = class(TForm)
    Panel1: TPanel;
    LNamaBrg: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    LNamaCustSupp: TLabel;
    kodeBrg: TEdit;
    KodeCustSupp: TEdit;
    Panel2: TPanel;
    Panel4: TPanel;
    PanelShow1: TPanel;
    HapusBtn: TSpeedButton;
    KoreksiBtn: TSpeedButton;
    TambahBtn: TSpeedButton;
    Panel3: TPanel;
    Image1: TImage;
    Label30: TLabel;
    Label31: TLabel;
    Bevel2: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    QuBeli: TADOQuery;
    QuBeliKodeCustSupp: TStringField;
    QuBelikodebrg: TStringField;
    QuBeliNamaBrg: TStringField;
    QuBeliNamaCustSupp: TStringField;
    DsQuBeli: TDataSource;
    Label1: TLabel;
    Hrg1_1: TPBNumEdit;
    Hrg1_2: TPBNumEdit;
    Label3: TLabel;
    Sat1: TEdit;
    Sat2: TEdit;
    QuBeliSat_1: TStringField;
    QuBeliharga_1: TBCDField;
    QuBeliSat_2: TStringField;
    QuBeliHarga_2: TBCDField;
    QuBeliKomisi: TBCDField;
    SpeedButton1: TSpeedButton;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    tvBarangCust: TcxGridDBBandedTableView;
    cxGrid1Level2: TcxGridLevel;
    tvkomisi: TcxGridDBBandedTableView;
    tvBarangCustkodebrg: TcxGridDBBandedColumn;
    tvBarangCustNamaBrg: TcxGridDBBandedColumn;
    tvBarangCustSat_1: TcxGridDBBandedColumn;
    tvBarangCustharga_1: TcxGridDBBandedColumn;
    tvBarangCustSat_2: TcxGridDBBandedColumn;
    tvBarangCustHarga_2: TcxGridDBBandedColumn;
    tvBarangCustKomisi: TcxGridDBBandedColumn;
    DSKomisi: TDataSource;
    Qukomisi: TADOQuery;
    QuBeliKeyUrut: TStringField;
    tvkomisiKodeCustSupp: TcxGridDBBandedColumn;
    tvkomisiNama: TcxGridDBBandedColumn;
    tvkomisiKurir: TcxGridDBBandedColumn;
    tvkomisiislunas: TcxGridDBBandedColumn;
    tvkomisinamaCustSupp: TcxGridDBBandedColumn;
    tvkomisikodebrg: TcxGridDBBandedColumn;
    tvkomisiNamabrg: TcxGridDBBandedColumn;
    tvkomisiSat1: TcxGridDBBandedColumn;
    tvkomisiSat2: TcxGridDBBandedColumn;
    tvkomisiKeyUrut: TcxGridDBBandedColumn;
    QukomisiKodeCustSupp: TStringField;
    QukomisiSat1: TStringField;
    QukomisiSat2: TStringField;
    Qukomisiurut: TIntegerField;
    QukomisiNama: TStringField;
    QukomisiKurir: TBCDField;
    QukomisinamaCustSupp: TStringField;
    QukomisiKeyUrut: TStringField;
    Qukomisiislunas: TBooleanField;
    Qukomisikodebrg: TStringField;
    QukomisiNamabrg: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeKotaEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure kodeBrgExit(Sender: TObject);
    procedure KodeCustSuppExit(Sender: TObject);
    procedure KodeCustSuppEnter(Sender: TObject);
    procedure kodeBrgEnter(Sender: TObject);
    procedure TampilIsiBarang;
    procedure tampilisiCustomer;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure TambahBtnClick(Sender: TObject);
    procedure KoreksiBtnClick(Sender: TObject);
    procedure HapusBtnClick(Sender: TObject);
    procedure kodeBrgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure tvBarangCustFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
     Model: String;
    { Private declarations }
    function CariKode: String;

  public
    { Public declarations }
    IsSimpan : boolean;
  end;

var
  FrBarangCustomer: TFrBarangCustomer;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, FrmKota, MyModul,Frmbrows,Frmbarangdankomisi,
  FrmKomisiCustomer;
{$R *.DFM}
procedure TfrbarangCustomer.TampilIsiBarang;
begin
  KodeBrows:=911;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.IsEmpty=False) then
  begin
    with FrBrows.QuBrows do
    begin
      KodeBrg.Text:=fieldbyname('KodeBrg').AsString;
      LNamaBrg.Caption:='[ '+fieldbyname('NamaBrg').AsString+' ]';
      Sat1.Text :=fieldbyname('Sat1').AsString;
      Sat2.Text :=fieldbyname('Sat2').AsString;
      ActiveControl:=Hrg1_1;
    end;
  end
  else
    ActiveControl:=Kodebrg;
end;
procedure TFrbarangCustomer.KodeCustSuppExit(Sender: TObject);
begin
  if mValid Then
  begin
   if length(Kodecustsupp.Text)=0 then tampilisiCustomer else
    begin
      if DataBersyarat('Select A.KodeCustSupp,A.Namacustsupp from DbCustSupp A '+
                       'where a.isAktif=1 and (a.KodeCustSupp like :0 or a.NamaCustSupp like :1) '+
                       'order by A.KodeCustSupp ',['%'+KodeCustSupp.Text+'%','%'+KodeCustSupp.Text+'%'],Dm.Qucari)=true then
      begin
        with DM.QuCari do
        begin
         KodeCustSupp.Text:=fieldbyname('KodeCustSupp').AsString;
         LNamaCustSupp.Caption:='[ '+fieldbyname('namaCustSupp').AsString+' ]';
         ActiveControl:=KodeBrg;
        end;
      end
      else TampilisiCustomer;
    end;
  end;
end;
procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrBarangCustomer.Panel1.ControlCount-1 do
   begin
      if (FrBarangCustomer.Panel1.Controls[i] is TEdit) then
         (FrBarangCustomer.Panel1.Controls[i] as TEdit).Clear;
   end;
   for i:= 0 to FrBarangCustomer.Panel1.ControlCount-1 do
   begin
      if (FrBarangCustomer.Panel1.Controls[i] is TPBNumEdit) then
         (FrBarangCustomer.Panel1.Controls[i] as TPBNumEdit).value:=0;
   end;
   FrBarangCustomer.LNamaBrg.Caption:='[...]';
   FrBarangCustomer.LNamaCustSupp.Caption:='[...]';
end;

function TFrBarangCustomer.CariKode: String;
var xNomor: String;
begin
end;

procedure TFrBarangCustomer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrBarangCustomer.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0)
    else if key=27 then
      close;
end;

procedure TFrBarangCustomer.BitBtn1Click(Sender: TObject);
begin
  if KodeBrg.Text<>'' then
  begin
     if IsSimpan=true then
     begin
        with FrbarangDanKomisi do
        begin
          Frbarangdankomisi.mPosisi:=Kodebrg.Text;
          SimpanData('I');
           ClearKomponen;
        end;
        ActiveControl:=Kodebrg;
     end
     else
     begin
        with FrbarangDanKomisi do
        begin
          Simpandata('U');
          ClearKomponen;
          kodeBrg.Enabled := True;
          TampilTombolDetail(False);
        end;
        //ModalResult:=mrOk;
     end;
  end  ;
  QuBeli.Close;
  QuBeli.Prepared;
  QuBeli.Parameters[0].Value :=FrBarangdankomisi.Quviewkodecustsupp.asstring;
  QuBeli.Open;
end;

procedure TFrBarangCustomer.BitBtn2Click(Sender: TObject);
begin
  mValid:=False;
  TampilTombolDetail(False);
  ActiveControl:=cxGrid1;
  ClearKomponen;
end;

procedure TFrBarangCustomer.KodeKotaEnter(Sender: TObject);
begin
  mValid:=true;
end;




procedure TFrBarangCustomer.FormShow(Sender: TObject);
begin
 QuBeli.Close;
  QuBeli.Prepared;
  QuBeli.Parameters[0].Value :=FrBarangdankomisi.Quviewkodecustsupp.asstring;
  QuBeli.Open;
end;


procedure TFrBarangCustomer.kodeBrgExit(Sender: TObject);
begin
  if mValid Then
  begin
     if length(KodeBrg.Text)=0 then TampilIsiBarang else
        begin
          if DataBersyarat('Select A.kodebrg,A.NamaBrg, Sat1, Sat2 from Dbbarang A '+
                           'where a.isAktif=1 and (a.KodeBrg like :0 or a.NamaBrg like :1 and left(kodebrg,2)=''BJ'') '+
                           'order by A.KodeBrg ',['%'+KodeBrg.Text+'%','%'+KodeBrg.Text+'%'],Dm.Qucari)=true then
          begin
            with DM.QuCari do
            begin
             KodeBrg.Text:=fieldbyname('KodeBrg').AsString;
             LNamaBrg.Caption:='[ '+fieldbyname('NamaBrg').AsString+' ]';
             Sat1.Text :=fieldbyname('Sat1').AsString;
             Sat2.Text :=fieldbyname('Sat2').AsString;
             ActiveControl:=Hrg1_1;
            end;
          end
          else TampilIsiBarang;
        end;
  end;
end;



procedure TFrBarangCustomer.KodeCustSuppEnter(Sender: TObject);
begin
mValid:=True;
end;

procedure TFrBarangCustomer.kodeBrgEnter(Sender: TObject);
begin
mValid:=True;
end;
procedure TfrBarangCustomer.TampilisiCustomer;
begin
  KodeBrows:=912;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.IsEmpty=False) then
  begin
    with FrBrows.QuBrows do
    begin

      KodeCustSupp.Text:=fieldbyname('KodeCustSupp').AsString;
      lnamaCustSupp.Caption:='[ '+fieldbyname('NamaCustSupp').AsString+' ]';
      ActiveControl:=Kodebrg
    end;
  end
  else
    ActiveControl:=KodeCustSupp;
end;

procedure TFrbarangCustomer.TampilTombolDetail(pNilai: Boolean);
begin
  PanelShow1.Enabled:=not pNilai;
  Panel1.Visible:=pNilai;

  //Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  Panel1.Enabled:=pNilai;
end;
procedure TFrBarangCustomer.TambahBtnClick(Sender: TObject);
begin
  //Model:='write';
  IsSimpan:=True;
  TampilTombolDetail(True);
  ActiveControl:=kodeBrg;
end;

procedure TFrBarangCustomer.KoreksiBtnClick(Sender: TObject);
begin
   mValid:=False;
   //Model:='koreksi';
   IsSimpan:=false;
   if QuBeli.IsEmpty=False then
   begin
      kodeBrg.Enabled:=False ;
      TampilTombolDetail(True);
      kodeBrg.Text:=QuBelikodebrg.AsString;
      Sat1.Text :=QuBeliSat_1.AsString;
      Sat2.Text :=QuBeliSat_2.AsString;
      Hrg1_1.Value:=QuBeliharga_1.AsFloat;
      Hrg1_2.Value:=QuBeliharga_2.AsFloat;
      //Komisi.Value:=QuBeliKomisi.AsFloat;
      LNamaBrg.Caption:='[ '+QuBeliNamaBrg.AsString+' ]';
      ActiveControl:=Hrg1_1;
   end
   else
   begin
      ShowMessage('Tidak ada transaksi yang dikoreksi !');
      ActiveControl:=cxGrid1;
   end;
end;

procedure TFrBarangCustomer.HapusBtnClick(Sender: TObject);
begin
if QuBeli.IsEmpty=True then
   begin
      Application.MessageBox('Tabel Kosong','Informasi'
      ,MB_OK Or MB_ICONWARNING);
   end
   else
   begin
      if (Application.MessageBox('Anda yakin satu baris data dihapus ?','Hapus Data',
              MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
      begin
              FrbarangDanKomisi.SimpanData('D');
      end;
   end;
   QuBeli.Close;
  QuBeli.Prepared;
  QuBeli.Parameters[0].Value :=FrBarangdankomisi.Quviewkodecustsupp.asstring;
  QuBeli.Open;
end;

procedure TFrBarangCustomer.kodeBrgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    mValid:=False;
    BitBtn2.Click;
  end
end;

procedure TFrBarangCustomer.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFrKomisiCustomer, FrkomisiCustomer);
  FrKomisiCustomer.mKodeCustSupp := QuBeliKodeCustSupp.AsString;
  FrKomisiCustomer.mKodeBrg := QuBelikodebrg.AsString;
  FrKomisiCustomer.Label4.Caption := 'Komisi Per '+QuBeliSat_1.AsString;
  FrKomisiCustomer.Label1.Caption := 'Komisi Per '+QuBeliSat_2.AsString;
    FrkomisiCustomer.IsSimpan:=True;
    FrkomisiCustomer.ShowModal;
end;

procedure TFrBarangCustomer.tvBarangCustFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  with Qukomisi do
  begin
    close;
    open;
  end;
end;

end.
