unit FrmLokasi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons, PBNumEdit, ADODB, dxCntner,
  dxTL, dxDBCtrl, dxDBGrid, dxPageControl, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxEdit, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid;

type
  TFrLokasi = class(TForm)
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
    Panel1: TPanel;
    Label2: TLabel;
    Lokasi: TEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Panel6: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Quview2: TADOQuery;
    Ds2: TDataSource;
    QuViewKODEGDG: TStringField;
    QuViewNAMA: TStringField;
    QuViewlokasi: TStringField;
    Label1: TLabel;
    Kodebrg: TEdit;
    Quview2KODEGDG: TStringField;
    Quview2NAMA: TStringField;
    Quview2lokasi: TStringField;
    QuView3: TADOQuery;
    DS3: TDataSource;
    cxGrid2: TcxGrid;
    TvLokasi: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    TVBrgLokasi: TcxGridDBTableView;
    TVBrgLokasiDBColumn1: TcxGridDBColumn;
    TVBrgLokasiDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridLevel2: TcxGridLevel;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Lokasi: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridColumn;
    dxDBGrid1Column3: TdxDBGridColumn;
    Lokasi2: TEdit;
    Label3: TLabel;
    LNamaBrg: TLabel;
    QuView3KODEGDG: TStringField;
    QuView3Lokasi: TStringField;
    QuView3KOdebrg: TStringField;
    QuView3NamaBrg: TStringField;
    QuView3Nama: TStringField;
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
    procedure TampilLokasi;
    Procedure TampilIsiBarang;
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
    procedure LokasiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Lokasi2Exit(Sender: TObject);
    procedure Lokasi2Enter(Sender: TObject);
    procedure KodebrgExit(Sender: TObject);
    procedure KodebrgEnter(Sender: TObject);
    procedure Lokasi2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    IsSimpan : boolean;
    xsimpan,XSimpantarget: String;
  end;

var
  FrLokasi: TFrLokasi;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, Frmvalas, Frmsales, MyModul,FrmBrows,FrmGudang;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:=FrLokasi.Panel1.ControlCount-1 downto 0 do
   begin
      if (FrLokasi.Panel1.Controls[i] is TEdit) then
         (FrLokasi.Panel1.Controls[i] as TEdit).Clear;
   end;
end;

procedure TFrLokasi.ClearKomponentarget;
var i:integer;
begin
   for i:=FrLokasi.Panel6.ControlCount-1 downto 0 do
   begin
      if (FrLokasi.Panel6.Controls[i] is TPBNumEdit) then
         (FrLokasi.Panel6.Controls[i] as TPBNumEdit).Value:=0;
      if (FrLokasi.Panel6.Controls[i] is TEdit) then
         (FrLokasi.Panel6.Controls[i] as TEdit).Text:='';
   end;
   LNamaBrg.Caption:='';
end;

procedure TFrLokasi.FormClose(Sender: TObject;
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

procedure TFrLokasi.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrLokasi.BitBtn1Click(Sender: TObject);
begin
if Lokasi.Text<>'' then
 begin
    if xsimpan ='I' then
       begin
       SimpanData('I');
       ClearKomponen;
       ActiveControl:=Lokasi;
       end
    else if xsimpan='U'  then
       begin
       SimpanData('U');
       ClearKomponen;
       Panel1.Visible:=False;
       Panel2.Enabled:=True;
       PanelShow1.Enabled:=True;
       ActiveControl:=cxGrid2;
       end
    else if xsimpan='D'  then
       begin
       end;
     // ModalResult:=mrOk;
 end
 else
 begin
 ShowMessage('Lokasi Harus Diisi');
 ActiveControl:=Lokasi;
 end;
 tampildet;
 PanelShow1.Enabled:=True;
end;

procedure TFrLokasi.BitBtn2Click(Sender: TObject);
begin
  mValid:=False;
  PanelShow1.Enabled:=True;
  Panel2.Enabled:=True;
  Panel4.Enabled:=True;
  ActiveControl:=cxGrid2;
  ClearKomponen;
  panel1.Visible:=False;

end;


procedure TFrLokasi.KodeSalesEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrLokasi.FormShow(Sender: TObject);
begin
   tampildet;
   panel1.Visible:=not IsSimpan;
   panel6.Visible:=not Issimpan;
end;

procedure TFrLokasi.TambahBtnClick(Sender: TObject);
begin
  panel1.Visible:=true;
  ActiveControl:=Lokasi;
  xsimpan:='I';
  PanelShow1.Enabled:=False;
  Panel2.Enabled:=False;
end;

procedure TFrLokasi.SimpanData(Mode:Char);
begin
   if Mode='I' then
      begin
        with Dm.Qucari2 do
        begin
          close;
          Sql.Clear;
          Sql.add('Insert Into DbLokasi (kodeGdg,lokasi)');
          sql.add('Values(:0,:1)');
          Parameters[0].Value:=FRgudang.QuViewkOdeGdG.asString;
          Parameters[1].Value:=Lokasi.Text;
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
          Sql.add('Update DbLokasi set Lokasi=:0');
          sql.add('where KodeGdg=:1 ');
          Parameters[0].Value:=Lokasi.text;
          Parameters[1].Value:=FRgudang.QuViewkOdeGdG.asString;

          ExecSQL;
        end;
     End
   else if Mode='D' then
     begin
      with Dm.Qucari2 do
        begin
          close;
          Sql.Clear;
          Sql.add('Delete DbLokasi ');
          sql.add('where Lokasi=:0 and KodeGdg=:1');
          Parameters[0].Value:=QuViewLokasi.AsString;
          Parameters[1].Value:=FRgudang.QuViewkOdeGdG.asString;
          ExecSQL;
        end;
     end;
tampildet;

end;

 procedure TFrLokasi.SimpanDataTaRget(Mode:Char);
begin
   if Mode='I' then
      begin
        with Dm.Qucari2 do
        begin

          close;
          Sql.Clear;
          Sql.add('Insert Into DbBaranglokasi (kodeGdg,Lokasi,kodeBrg)');
          Sql.Add('Values (:0,:1,:2)');
          Parameters[0].Value:=FRgudang.QuViewkOdeGdG.asString;
          Parameters[1].Value:=Lokasi2.Text;
          Parameters[2].value:=Kodebrg.Text;
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
          Sql.add('Update DbBaranglokasi set KodeBrg=:0');
          Sql.add('where KodeGdg=:1 and Lokasi=:2');
          Parameters[0].value:=Kodebrg.Text;
          Parameters[1].Value:=QuView3KODEGDG.asString;
          Parameters[2].Value:=QuView3lokasi.AsString;
          ExecSQL;
        end;
     End
   else if Mode='D' then
     begin
      with Dm.Qucari2 do
        begin
          close;
          Sql.Clear;
          Sql.add('Delete DbBaranglokasi ');
          sql.add('where KodeGDg=:0 and Lokasi=:1 and Kodebrg=:2');
          Parameters[0].Value:=QuView3KODEGDG.asString;
          Parameters[1].Value:=QuView3lokasi.AsString;
          Parameters[2].Value:=QuView3Kodebrg.AsString;
          ExecSQL;
        end;
     end;
tampildet;

end;

procedure TFrLokasi.KoreksiBtnClick(Sender: TObject);
begin
    xsimpan:='U';
    Panel1.Visible:=True;
    Lokasi.Text:=QuViewLokasi.AsString;
    PanelShow1.Enabled:=False;
    Panel2.Enabled:=False;
end;

procedure TFrLokasi.TampilLokasi;
begin
  KodeBrows:=914;
  Application.CreateForm(TFrBrows, FrBrows);
   FrBrows.NoKira:=FrGudang.QuViewKODEGDG.AsString;
  FrBrows.ShowModal;
  if (FrBrows.ModalResult=mrOk) and (FrBrows.QuBrows.IsEmpty=False) then
  begin
    with FrBrows.QuBrows do
    begin
      Lokasi2.Text:=fieldbyname('Lokasi').AsString;
      ActiveControl:=kodebrg;
    end;
  end
  else
    ActiveControl:=Lokasi2;
end;

procedure TFrLokasi.tampildet;
begin
   QuView.Close;
   Quview.SQL.Strings[2]:='select @KodeGDG=:0';
   Quview.Parameters[0].Value:=Frgudang.Quview.FieldByName('kodeGdg').Asstring;
   Quview.Open;

   QuView2.Close;
   Quview2.SQL.Strings[2]:='select @KodeGDG=:0';
   Quview2.Parameters[0].Value:=Frgudang.Quview.FieldByName('KodeGDG').Asstring;
   Quview2.Open;

   QuView3.Close;
   Quview3.SQL.Strings[2]:='select @KodeGDG=:0,@lokasi=:1';
   Quview3.Parameters[0].Value:=Frgudang.Quview.FieldByName('KodeGDG').Asstring;
   Quview3.Parameters[1].Value:=Quview2.FieldByName('Lokasi').Asstring;
   Quview3.Open;
end;
procedure TFrLokasi.HapusBtnClick(Sender: TObject);
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

procedure TFrLokasi.SpeedButton4Click(Sender: TObject);
begin
  Lokasi2.Enabled:=true;
  panel6.Visible:=true;
  ActiveControl:=Lokasi2;
  XSimpantarget:='I';
  Panel5.Enabled:=False;
  Panel4.Enabled:=False;
end;

procedure TFrLokasi.SpeedButton3Click(Sender: TObject);
begin
    XSimpantarget:='U';
    Panel6.Visible:=True;
    Lokasi2.Enabled:=False;
    Panel5.Enabled:=False;
    Panel4.Enabled:=False;
    ActiveControl:=KodeBrg;
    lokasi2.Text :=QuView3Lokasi.AsString;
    Kodebrg.Text :=QuView3KOdebrg.AsString;

end;

procedure TFrLokasi.SpeedButton2Click(Sender: TObject);
begin
 if QuView.IsEmpty then
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

procedure TFrLokasi.BitBtn4Click(Sender: TObject);
begin
if KodeBrg.Text<>'' then
 begin
    if XSimpantarget ='I' then
       begin
       SimpanDataTarget('I');
       ClearKomponentarget;
       KOdeBrg.Enabled:=true;
       ActiveControl:=Lokasi2;
       end
    else if XSimpantarget='U'  then
       begin
       SimpanDatatarget('U');
       ClearKomponentarget;
       Panel6.Visible:=False;
       Panel4.Enabled:=True;
       Panel5.Enabled:=True;
       ActiveControl:=dxDBGrid1;
       end
    else if XSimpantarget='D'  then
       begin
       end;
 end
 else
 begin
 ShowMessage('Kode tahun harus Diisi');
 ActiveControl:=Lokasi;
 end;
 tampildet;
 PanelShow1.Enabled:=True;
end;

procedure TFrLokasi.BitBtn3Click(Sender: TObject);
begin
  mValid:=False;
  Panel4.Enabled:=True;
  Panel5.Enabled:=True;
  ActiveControl:=dxDBGrid1;
  ClearKomponentarget;
  panel6.Visible:=False;
end;

procedure TFrLokasi.TahunKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_Escape then
   begin
      mValid:=False;
      ClearKomponentarget;
      BitBtn3.Click;
   end;
end;

procedure TFrLokasi.LokasiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_Escape then
   begin
      mValid:=False;
      ClearKomponen;
      BitBtn2.Click;
   end;
end;

procedure TFrLokasi.Lokasi2Exit(Sender: TObject);
begin
  if mValid=True then
  begin
  if Length(Lokasi2.Text)=0 then TampilLokasi else
    begin
      if DataBersyarat('select Lokasi From DbLokasi where KodeGdg=:0 ',[FrGudang.QuViewKODEGDG.asstring], DM.QuCari)=True then
      begin
        Lokasi2.Text:=DM.QuCari.FieldByName('Lokasi').AsString;
      end else
        TampilLokasi;
    end;
  end;
end;

procedure TFrLokasi.Lokasi2Enter(Sender: TObject);
begin
mValid:=True;
end;

procedure TFrLokasi.KodebrgExit(Sender: TObject);
begin
  if mValid Then
  begin
     if length(KodeBrg.Text)=0 then TampilIsiBarang else
        begin
          if DataBersyarat('Select A.kodebrg,A.NamaBrg from Dbbarang A '+
                           'where a.isAktif=1 and (a.KodeBrg like :0 or a.NamaBrg like :1) '+
                           'order by A.KodeBrg ',['%'+KodeBrg.Text+'%','%'+KodeBrg.Text+'%'],Dm.Qucari)=true then
          begin
            with DM.QuCari do
            begin
             KodeBrg.Text:=fieldbyname('KodeBrg').AsString;
             LNamaBrg.Caption:='[ '+fieldbyname('NamaBrg').AsString+' ]';
             ActiveControl:=Bitbtn4;
            end;
          end
          else TampilIsiBarang;
        end;
  end;
end;


procedure TFRLokasi.TampilIsiBarang;
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
      ActiveControl:=Bitbtn4;
    end;
  end
  else
    ActiveControl:=Kodebrg;
end;

procedure TFrLokasi.KodebrgEnter(Sender: TObject);
begin
mValid:=True;
end;

procedure TFrLokasi.Lokasi2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_Escape then
   begin
      mValid:=False;
      ClearKomponen;
      BitBtn3.Click;
   end;
end;

end.
