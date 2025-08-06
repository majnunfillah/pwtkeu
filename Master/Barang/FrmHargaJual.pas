unit FrmHargaJual;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons, PBNumEdit, ADODB, dxCntner,
  dxTL, dxDBCtrl, dxDBGrid, dxPageControl;

type
  TFrHargaJual = class(TForm)
    Panel3: TPanel;
    Image1: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Bevel2: TBevel;
    QuView: TADOQuery;
    DsView: TDataSource;
    dxPageControl1: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    dxTabSheet2: TdxTabSheet;
    Panel2: TPanel;
    PanelShow1: TPanel;
    Cetak: TSpeedButton;
    HapusBtn: TSpeedButton;
    KoreksiBtn: TSpeedButton;
    TambahBtn: TSpeedButton;
    SpeedButton8: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1KodeCustSupp: TdxDBGridColumn;
    dxDBGrid1namaCustSupp: TdxDBGridColumn;
    Panel1: TPanel;
    Label2: TLabel;
    LNamaJenis: TLabel;
    Jenis: TEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    dxDBGrid2: TdxDBGrid;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    dxDBGridColumn3: TdxDBGridColumn;
    Panel6: TPanel;
    Label4: TLabel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Quview2: TADOQuery;
    Ds2: TDataSource;
    Quview2KeyNik: TStringField;
    Quview2Tahun: TIntegerField;
    Quview2Rp1: TBCDField;
    Quview2Rp2: TBCDField;
    Quview2Rp3: TBCDField;
    Quview2Rp4: TBCDField;
    Quview2Rp5: TBCDField;
    Quview2Rp6: TBCDField;
    Quview2Rp7: TBCDField;
    Quview2Rp8: TBCDField;
    Quview2Rp9: TBCDField;
    Quview2Rp10: TBCDField;
    Quview2Rp11: TBCDField;
    Quview2Rp12: TBCDField;
    Quview2nama: TStringField;
    dxDBGrid2Column4: TdxDBGridColumn;
    dxDBGrid2Column5: TdxDBGridColumn;
    dxDBGrid2Column6: TdxDBGridColumn;
    dxDBGrid2Column7: TdxDBGridColumn;
    dxDBGrid2Column8: TdxDBGridColumn;
    dxDBGrid2Column9: TdxDBGridColumn;
    dxDBGrid2Column10: TdxDBGridColumn;
    dxDBGrid2Column11: TdxDBGridColumn;
    dxDBGrid2Column12: TdxDBGridColumn;
    Tahun: TPBNumEdit;
    Rp1: TPBNumEdit;
    Rp2: TPBNumEdit;
    Rp3: TPBNumEdit;
    Rp4: TPBNumEdit;
    Rp5: TPBNumEdit;
    Rp6: TPBNumEdit;
    Rp7: TPBNumEdit;
    Rp8: TPBNumEdit;
    Rp9: TPBNumEdit;
    Rp10: TPBNumEdit;
    Rp11: TPBNumEdit;
    Label1: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Rp12: TPBNumEdit;
    QuViewKOdebrg: TStringField;
    QuViewNamaBrg: TStringField;
    QuViewKodeJenisCustSupp: TStringField;
    QuViewNamaJenis: TStringField;
    QuViewHarga1: TBCDField;
    QuViewHarga2: TBCDField;
    dxDBGrid1Column3: TdxDBGridColumn;
    Harga1: TPBNumEdit;
    Label19: TLabel;
    Label3: TLabel;
    Harga2: TPBNumEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeSalesEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TambahBtnClick(Sender: TObject);
    procedure SimpanData(Mode:Char);
    procedure KoreksiBtnClick(Sender: TObject);
    procedure JenisExit(Sender: TObject);
    procedure JenisEnter(Sender: TObject);
    procedure tampildet;
    procedure HapusBtnClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ClearKomponentarget;
    procedure BitBtn3Click(Sender: TObject);
    procedure TahunKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JenisKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    IsSimpan : boolean;
    xsimpan,XSimpantarget: String;
  end;

var
  FrHargaJual: TFrHargaJual;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, MyModul,FrmBrows, FrmDevisi, FrmBarangJ;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:=FrHargaJual.Panel1.ControlCount-1 downto 0 do
   begin
      if (FrHargaJual.Panel1.Controls[i] is TEdit) then
         (FrHargaJual.Panel1.Controls[i] as TEdit).Clear;
       if (FrHargaJual.Panel1.Controls[i] is TPBNumEdit) then
         (FrHargaJual.Panel1.Controls[i] as TPBNumEdit).Value:=0;
   end;
end;

procedure TFrHargaJual.ClearKomponentarget;
var i:integer;
begin
   for i:=FrHargaJual.Panel6.ControlCount-1 downto 0 do
   begin
      if (FrHargaJual.Panel6.Controls[i] is TPBNumEdit) then
         (FrHargaJual.Panel6.Controls[i] as TPBNumEdit).Value:=0;
   end;
end;

procedure TFrHargaJual.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
    begin
      Action:=caFree;
    end
    else
      Action:=caNone;
end;

procedure TFrHargaJual.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrHargaJual.BitBtn1Click(Sender: TObject);
begin
if Jenis.Text<>'' then
 begin
    if xsimpan ='I' then
       begin
       SimpanData('I');
       ClearKomponen;
       ActiveControl:=Jenis;
       end
    else if xsimpan='U'  then
       begin
       SimpanData('U');
       ClearKomponen;
       Panel1.Visible:=False;
       Panel2.Enabled:=True;
       PanelShow1.Enabled:=True;
       ActiveControl:=dxDBGrid1;
       end
    else if xsimpan='D'  then
       begin
       end;
     // ModalResult:=mrOk;
 end
 else
 begin
 ShowMessage('Kode Customer harus Diisi');
 ActiveControl:=Jenis;
 end;
 tampildet;
 PanelShow1.Enabled:=True;
end;

procedure TFrHargaJual.BitBtn2Click(Sender: TObject);
begin
  mValid:=False;
  PanelShow1.Enabled:=True;
  Panel2.Enabled:=True;
  ActiveControl:=dxDBGrid1;
  ClearKomponen;
  panel1.Visible:=False;

end;


procedure TFrHargaJual.KodeSalesEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrHargaJual.FormShow(Sender: TObject);
begin
    //if IsSimpan= then
   tampildet;
   panel1.Visible:=not IsSimpan;
   panel6.Visible:=not Issimpan;
end;

procedure TFrHargaJual.TambahBtnClick(Sender: TObject);
begin
  panel1.Visible:=true;
  ActiveControl:=Jenis;
  xsimpan:='I';
  PanelShow1.Enabled:=False;
  Panel2.Enabled:=False;
end;

procedure TFrHargaJual.SimpanData(Mode:Char);
begin
  if (MOde='I') or (Mode='U') then
     begin
     If (DataBersyarat('Select * from DbHargaJual where KOdebrg=:0 and KOdeJenisCustSupp=:1',[frbarangJ.QuViewKOdebrg.asstring,Jenis.text],DM.Qucari ) ) then
      begin
        if Mode='I' then
        begin
        MsgDataSudahADA(Dm.Qucari.Fieldbyname('KodeJenisCustSupp').asstring) ;
        Exit;
        End;
      End;
     End;
   if Mode='I' then
      begin
        with Dm.Qucari2 do
        begin
          close;
          Sql.Clear;
          Sql.add('Insert Into DbHargaJual (Kodebrg,KOdejenisCustSupp,Harga1,Harga2)');
          sql.add('Values(:0,:1,:2,:3)');
          Parameters[0].Value:=FrbarangJ.QuViewKOdebrg.AsString;
          Parameters[1].Value:=Jenis.Text;
          Parameters[2].Value:=Harga1.Value;
          Parameters[3].Value:=Harga2.Value;
          try
          ExecSQL;
          except
          ShowMessage('Proses Input gagal');
          end;
        end;
      end
   else if Mode='U' then
     Begin
      with Dm.Qucari2 do
        begin
          close;
          Sql.Clear;
          Sql.add('Update DbHargaJual set KOdeJenisCustSupp=:0,Harga1=:1,Harga2=:2');
          sql.add('where Kodebrg=:3 and KOdeJenisCustSupp=:4 ');
          Parameters[0].Value:=Jenis.Text;
          Parameters[1].Value:=Harga1.Value;
          Parameters[2].Value:=Harga2.Value;
          Parameters[3].Value:=FrBarangJ.QuViewKOdebrg.AsString;
          Parameters[4].Value:=Jenis.Text;
          ExecSQL;
        end;
     End
   else if Mode='D' then
     begin
      with Dm.Qucari2 do
        begin
          close;
          Sql.Clear;
          Sql.add('Delete DbHargaJual ');
          sql.add('where Kodebrg=:0 and KodeJenisCustSupp=:1 ');
          Parameters[0].Value:=frBarangJ.QuviewKOdeBrg.AsString;
          Parameters[1].Value:=QuViewKodeJenisCustSupp.AsString;
          ExecSQL;
        end;
     end;
tampildet;

end;


procedure TFrHargaJual.KoreksiBtnClick(Sender: TObject);
begin
    xsimpan:='U';
    Panel1.Visible:=True;
    Jenis.Text:=QuViewKodeJenisCustSupp.AsString;
    LNamaJenis.Caption:=QuViewNamaJenis.AsString;
    Harga1.Value :=QuViewHarga1.AsFloat;
    Harga2.Value :=QuViewHarga2.AsFloat;
    PanelShow1.Enabled:=False;
    Panel2.Enabled:=False;
end;

procedure TFrHargaJual.JenisExit(Sender: TObject);
begin
  if mValid Then
  begin
    GetBrowse(91112,'DbJenisCustSupp','KodeJenis','NamaJenis',FrhargaJual,Jenis,LnamaJenis);
  end;
end;


procedure TFrHargaJual.JenisEnter(Sender: TObject);
begin
mValid:=True;
end;
procedure TFrHargaJual.tampildet;
begin
   QuView.Close;
   Quview.SQL.Strings[2]:='select @KOdebrg=:0';
   Quview.Parameters[0].Value:=frBarangJ.QuViewKOdebrg.AsString;
   Quview.Open;
end;
procedure TFrHargaJual.HapusBtnClick(Sender: TObject);
begin
   if QuView.IsEmpty then
      ShowMessage('data kosong')
   else
     begin
       StrPCopy(S,Format('Anda yakin Kode %s dan Nama %s dihapus ?',
           [QuView.Fields[0].asstring,
            QuView.Fields[1].asstring]));
      if (Application.MessageBox(S,'Peringatan',
          MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
      begin
         with dm.QuCari do
         begin
          SimpanData('D');
         end;
      end;
     end;
end;

procedure TFrHargaJual.SpeedButton4Click(Sender: TObject);
begin
  panel6.Visible:=true;
  tahun.Enabled:=True;
  ActiveControl:=tahun;
  XSimpantarget:='I';
  Panel5.Enabled:=False;
  Panel4.Enabled:=False;
end;

procedure TFrHargaJual.SpeedButton3Click(Sender: TObject);
begin
    XSimpantarget:='U';
    Panel6.Visible:=True;
    Tahun.value:=Quview2Tahun.AsFloat;
    Rp1.value:=Quview2Rp1.AsFloat;
    Rp2.value:=Quview2Rp2.AsFloat;
    Rp3.value:=Quview2Rp3.AsFloat;
    Rp4.value:=Quview2Rp4.AsFloat;
    Rp5.value:=Quview2Rp5.AsFloat;
    Rp6.value:=Quview2Rp6.AsFloat;
    Rp7.value:=Quview2Rp7.AsFloat;
    Rp8.value:=Quview2Rp8.AsFloat;
    Rp9.value:=Quview2Rp9.AsFloat;
    Rp10.value:=Quview2Rp10.AsFloat;
    Rp11.value:=Quview2Rp11.AsFloat;
    Rp12.value:=Quview2Rp12.AsFloat;
    tahun.Enabled:=False;
    Panel5.Enabled:=False;
    Panel4.Enabled:=False;
    ActiveControl:=Rp1;
end;

procedure TFrHargaJual.BitBtn3Click(Sender: TObject);
begin
  mValid:=False;
  Panel4.Enabled:=True;
  Panel5.Enabled:=True;
  ActiveControl:=dxDBGrid2;
  ClearKomponentarget;
  panel6.Visible:=False;
end;

procedure TFrHargaJual.TahunKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_Escape then
   begin
      mValid:=False;
      ClearKomponentarget;
      BitBtn3.Click;
   end;
end;

procedure TFrHargaJual.JenisKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_Escape then
   begin
      mValid:=False;
      ClearKomponen;
      BitBtn2.Click;
   end;
end;

end.
