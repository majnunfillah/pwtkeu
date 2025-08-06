unit FrmTargetSales;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons, PBNumEdit, ADODB, dxCntner,
  dxTL, dxDBCtrl, dxDBGrid, dxPageControl;

type
  TFrTargetSales = class(TForm)
    Panel3: TPanel;
    Image1: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Bevel2: TBevel;
    QuView: TADOQuery;
    DsView: TDataSource;
    QuViewKeynik: TIntegerField;
    QuViewkodeCustSupp: TStringField;
    QuViewNik: TStringField;
    QuViewnamaCustSupp: TStringField;
    QuViewnama: TStringField;
    QuViewMingguke: TWordField;
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
    dxDBGrid1Mingguke: TdxDBGridColumn;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    LnamaCustSupp: TLabel;
    KodeCustSupp: TEdit;
    minggu: TComboBox;
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
    procedure KodeCustSuppExit(Sender: TObject);
    procedure TampilIsiCustSupp;
    procedure KodeCustSuppEnter(Sender: TObject);
    procedure tampildet;
    procedure HapusBtnClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SimpanDataTarget(Mode:Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure ClearKomponentarget;
    procedure BitBtn3Click(Sender: TObject);
    procedure TahunKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeCustSuppKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    IsSimpan : boolean;
    xsimpan,XSimpantarget: String;
  end;

var
  FrTargetSales: TFrTargetSales;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, Frmvalas, Frmsales, MyModul,FrmBrows,
  FrmCustSales;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:=FrCustSales.Panel1.ControlCount-1 downto 0 do
   begin
      if (FrCustSales.Panel1.Controls[i] is TEdit) then
         (FrCustSales.Panel1.Controls[i] as TEdit).Clear;
   end;
end;

procedure TFrTargetSales.ClearKomponentarget;
var i:integer;
begin
   for i:=FrTargetSales.Panel6.ControlCount-1 downto 0 do
   begin
      if (FrTargetSales.Panel6.Controls[i] is TPBNumEdit) then
         (FrTargetSales.Panel6.Controls[i] as TPBNumEdit).Value:=0;
   end;
end;

procedure TFrTargetSales.FormClose(Sender: TObject;
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

procedure TFrTargetSales.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrTargetSales.BitBtn1Click(Sender: TObject);
begin
if KodeCustSupp.Text<>'' then
 begin
    if xsimpan ='I' then
       begin
       SimpanData('I');
       ClearKomponen;
       ActiveControl:=KodeCustSupp;
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
 ActiveControl:=KodeCustSupp;
 end;
 tampildet;
 PanelShow1.Enabled:=True;
end;

procedure TFrTargetSales.BitBtn2Click(Sender: TObject);
begin
  mValid:=False;
  PanelShow1.Enabled:=True;
  Panel2.Enabled:=True;
  ActiveControl:=dxDBGrid1;
  ClearKomponen;
  panel1.Visible:=False;

end;


procedure TFrTargetSales.KodeSalesEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrTargetSales.FormShow(Sender: TObject);
begin
    //if IsSimpan= then
   tampildet;
   panel1.Visible:=not IsSimpan;
   panel6.Visible:=not Issimpan;
end;

procedure TFrTargetSales.TambahBtnClick(Sender: TObject);
begin
  panel1.Visible:=true;
  ActiveControl:=KodeCustSupp;
  xsimpan:='I';
  PanelShow1.Enabled:=False;
  Panel2.Enabled:=False;
end;

procedure TFrTargetSales.SimpanData(Mode:Char);
begin
   if Mode='I' then
      begin
        with Dm.Qucari2 do
        begin

          close;
          Sql.Clear;
          Sql.add('Insert Into DBSalesCustomer (KeyNik,KodeCustSupp,NIK,MingguKe)');
          sql.add('Values(:0,:1,:2,:3)');
          Parameters[0].Value:=Frsales.QuViewKeyNIK.AsInteger;
          Parameters[1].Value:=KodeCustSupp.Text;
          Parameters[2].Value:=Frsales.QuViewNIK.AsString;
          Parameters[3].Value:=minggu.ItemIndex;
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
          Sql.add('Update DBSalesCustomer set MingguKe=:0');
          sql.add('where KeyNik=:1 and kodecustSupp=:2 ');
          Parameters[0].Value:=minggu.ItemIndex;
          Parameters[1].Value:=Frsales.QuViewKeyNIK.AsInteger;
          Parameters[2].Value:=KodeCustSupp.Text;
          ExecSQL;
        end;
     End
   else if Mode='D' then
     begin
      with Dm.Qucari2 do
        begin
          close;
          Sql.Clear;
          Sql.add('Delete DBSalesCustomer ');
          sql.add('where KeyNik=:0 and kodecustSupp=:1 ');
          Parameters[0].Value:=FrCustSales.QuViewKeynik.AsInteger;
          Parameters[1].Value:=FrCustSales.QuViewkodeCustSupp.AsString;
          ExecSQL;
        end;
     end;
tampildet;

end;

 procedure TFrTargetSales.SimpanDataTaRget(Mode:Char);
begin
   if Mode='I' then
      begin
        with Dm.Qucari2 do
        begin

          close;
          Sql.Clear;
          Sql.add('Insert Into DbTargetsales (KeyNik,tahun,Rp1,Rp2,Rp3,Rp4,Rp5,Rp6,Rp7,Rp8,Rp9,Rp10,Rp11,Rp12)');
          sql.add('Values(:0,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13)');
          Parameters[0].Value:=Frsales.QuViewKeyNIK.AsInteger;
          Parameters[1].Value:=Tahun.Value;
          Parameters[2].Value:=Rp1.Value;
          Parameters[3].Value:=Rp2.Value;
          Parameters[4].Value:=Rp3.Value;
          Parameters[5].Value:=Rp4.Value;
          Parameters[6].Value:=Rp5.Value;
          Parameters[7].Value:=Rp6.Value;
          Parameters[8].Value:=Rp7.Value;
          Parameters[9].Value:=Rp8.Value;
          Parameters[10].Value:=Rp9.Value;
          Parameters[11].Value:=Rp10.Value;
          Parameters[12].Value:=Rp11.Value;
          Parameters[13].Value:=Rp12.Value;
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
          Sql.add('Update DbTargetsales set Rp1=:0,Rp2=:1,Rp3=:2,Rp4=:3,Rp5=:4,Rp6=:5,Rp7=:6,Rp8=:7,Rp9=:8,Rp10=:9,Rp11=:10,Rp12=:11');
          sql.add('where KeyNik=:12 and tahun=:13 ');

          Parameters[0].Value:=Rp1.Value;
          Parameters[1].Value:=Rp2.Value;
          Parameters[2].Value:=Rp3.Value;
          Parameters[3].Value:=Rp4.Value;
          Parameters[4].Value:=Rp5.Value;
          Parameters[5].Value:=Rp6.Value;
          Parameters[6].Value:=Rp7.Value;
          Parameters[7].Value:=Rp8.Value;
          Parameters[8].Value:=Rp9.Value;
          Parameters[9].Value:=Rp10.Value;
          Parameters[10].Value:=Rp11.Value;
          Parameters[11].Value:=Rp12.Value;
          Parameters[12].Value:=FrTargetSales.Quview2KeyNik.AsInteger;
          Parameters[13].Value:=FrTargetSales.Quview2Tahun.AsInteger;
          ExecSQL;
        end;
     End
   else if Mode='D' then
     begin
      with Dm.Qucari2 do
        begin
          close;
          Sql.Clear;
          Sql.add('Delete DbtargetSales ');
          sql.add('where KeyNik=:0 and tahun=:1 ');
          Parameters[0].Value:=FrTargetSales.Quview2KeyNik.AsInteger;
          Parameters[1].Value:=FrTargetSales.Quview2Tahun.AsString;
          ExecSQL;
        end;
     end;
tampildet;

end;

procedure TFrTargetSales.KoreksiBtnClick(Sender: TObject);
begin
    xsimpan:='U';
    Panel1.Visible:=True;
    KodeCustSupp.Text:=QuViewkodeCustSupp.AsString;
    minggu.ItemIndex:=QuViewMingguke.AsInteger;
    LnamaCustSupp.Caption:=QuViewnamaCustSupp.AsString;
    PanelShow1.Enabled:=False;
    Panel2.Enabled:=False;
end;

procedure TFrTargetSales.KodeCustSuppExit(Sender: TObject);
begin
  if mValid=True then
  begin
  if Length(KodeCustSupp.Text)=0 then TampilIsiCustSupp else
    begin
      if DataBersyarat('select KodecustSupp, NamaCustSupp from DbCustSUpp where KodeCustSupp=:0 ',[kodeCustSupp.Text], DM.QuCari)=True then
      begin
        KodeCustSupp.Text:=DM.QuCari.FieldByName('KodecustSupp').AsString;
        LnamaCustSupp.Caption:= DM.QuCari.FieldByName('NamaCustSupp').AsString;
      end else
        TampilIsiCustSupp;
    end;
  end;
end;

procedure TFrTargetSales.TampilIsiCustSupp;
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
      ActiveControl:=minggu;
    end;
  end
  else
    ActiveControl:=KodeCustSupp;
end;

procedure TFrTargetSales.KodeCustSuppEnter(Sender: TObject);
begin
mValid:=True;
end;
procedure TFrTargetSales.tampildet;
begin

   QuView2.Close;
   Quview2.SQL.Strings[2]:='select @Keynik=:0';
   Quview2.Parameters[0].Value:=FrSales.Quview.FieldByName('keynik').AsInteger;
   Quview2.Open;
end;
procedure TFrTargetSales.HapusBtnClick(Sender: TObject);
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

procedure TFrTargetSales.SpeedButton4Click(Sender: TObject);
begin
  panel6.Visible:=true;
  tahun.Enabled:=True;
  ActiveControl:=tahun;
  XSimpantarget:='I';
  Panel5.Enabled:=False;
  Panel4.Enabled:=False;
end;

procedure TFrTargetSales.SpeedButton3Click(Sender: TObject);
begin
  if quview2.IsEmpty then
     ShowMessage('Data Kosong')
  else
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
end;

procedure TFrTargetSales.SpeedButton2Click(Sender: TObject);
begin
 if Quview2.IsEmpty then
      ShowMessage('data kosong')
   else
     begin
       StrPCopy(S,Format('Anda yakin Kode %s dan Nama %s dihapus ?',
           [QuView2.Fields[0].asstring,
            QuView2.Fields[1].asstring]));
      if (Application.MessageBox(S,'Peringatan',
          MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
      begin
         with dm.QuCari do
         begin
          SimpanDataTarget('D');
         end;
      end;
     end;
end;

procedure TFrTargetSales.BitBtn4Click(Sender: TObject);
begin
if tahun.value<>0 then
 begin
    if XSimpantarget ='I' then
       begin
       SimpanDataTarget('I');
       ClearKomponentarget;
       tahun.Enabled:=true;
       ActiveControl:=tahun;
       end
    else if XSimpantarget='U'  then
       begin
       SimpanDatatarget('U');
       ClearKomponentarget;
       Panel6.Visible:=False;
       Panel4.Enabled:=True;
       Panel5.Enabled:=True;
       ActiveControl:=dxDBGrid2;
       end
    else if XSimpantarget='D'  then
       begin
       end;
  tampildet;
 end
 else
 begin
 ShowMessage('Kode tahun harus Diisi');
 ActiveControl:=KodeCustSupp;
 end;
 tampildet;
 PanelShow1.Enabled:=True;
end;

procedure TFrTargetSales.BitBtn3Click(Sender: TObject);
begin
  mValid:=False;
  Panel4.Enabled:=True;
  Panel5.Enabled:=True;
  ActiveControl:=dxDBGrid2;
  ClearKomponentarget;
  panel6.Visible:=False;
end;

procedure TFrTargetSales.TahunKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_Escape then
   begin
      mValid:=False;
      ClearKomponentarget;
      BitBtn3.Click;
   end;
end;

procedure TFrTargetSales.KodeCustSuppKeyDown(Sender: TObject; var Key: Word;
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
