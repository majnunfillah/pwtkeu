unit FrmSubGroup_JnsTambah;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, PBNumEdit, ExtCtrls, Buttons, db,strUtils, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, RXCtrls, ADODB;

type
  TFrSubGroup_JnsTambah = class(TForm)
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    Label9: TLabel;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Panel4: TPanel;
    PanelShow1: TPanel;
    HapusBtn: TSpeedButton;
    KoreksiBtn: TSpeedButton;
    TambahBtn: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    Panel1: TPanel;
    QuBeli: TADOQuery;
    DsQuBeli: TDataSource;
    Sp_Beli: TADOStoredProc;
    Image1: TImage;
    LblKode: TLabel;
    LblNama: TLabel;
    Label2: TLabel;
    PerkP: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    PerkH: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    PerkPPN: TEdit;
    Label6: TLabel;
    QuBeliKodeGrp: TStringField;
    QuBeliKodeSubGrp: TStringField;
    QuBeliUrut: TIntegerField;
    QuBeliKeterangan: TStringField;
    dxDBGrid1KodeGrp: TdxDBGridMaskColumn;
    dxDBGrid1KodeSubGrp: TdxDBGridMaskColumn;
    dxDBGrid1Urut: TdxDBGridMaskColumn;
    dxDBGrid1Keterangan: TdxDBGridMaskColumn;
    QuBeliKode: TStringField;
    dxDBGrid1Kode: TdxDBGridMaskColumn;
    Keterangan: TEdit;
    LNamaBag: TLabel;
    QuBeliNMDEP: TStringField;
    dxDBGrid1Column6: TdxDBGridColumn;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TambahBtnClick(Sender: TObject);
    procedure KodeSubJnsTambahanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KoreksiBtnClick(Sender: TObject);
    procedure HapusBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PerkPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PerkHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PerkPPNKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KeteranganEnter(Sender: TObject);
    procedure KeteranganExit(Sender: TObject);
  private
    { Private declarations }
    Model: String;
    procedure TampilData;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure ClearPanelDetail;
    procedure UpdateDataBeli(pChoice: Char);
    function  CekDataSudahAda: Boolean;
  public
    { Public declarations }
     IsSimpan:Boolean;
     SubGroup_JnsTambah_KodeGrp,SubGroup_JnsTambah_KodeSubGrp: String;
  end;

var
  FrSubGroup_JnsTambah: TFrSubGroup_JnsTambah;
  mValid:boolean;


implementation
uses myModul,Myprocedure,MyGlobal, Frmbrows,FrmBarang;
{$R *.DFM}

procedure TFrSubGroup_JnsTambah.TampilData;
begin
  QuBeli.Close;
  QuBeli.SQL.Strings[5]:='where KodeGrp = '+QuotedStr(SubGroup_JnsTambah_KodeGrp)+' and KodeSubGrp = '+ QuotedStr(SubGroup_JnsTambah_KodeSubGrp);
  QuBeli.Open;
end;

procedure TFrSubGroup_JnsTambah.TampilTombolDetail(pNilai: Boolean);
begin
  PanelShow1.Visible:=not pNilai;
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  Panel3.Enabled:=pNilai;
end;

procedure TFrSubGroup_JnsTambah.ClearPanelDetail;
begin
  Keterangan.Text:='';
end;

procedure TFrSubGroup_JnsTambah.UpdateDataBeli(pChoice: Char);
begin
   BM:=QuBeli.GetBookmark;
   DM.QuCari.Close;
   DM.QuCari.SQL.Clear;
   if pChoice='I' then
   begin
     DM.QuCari.SQL.Add('declare @Urut int = 0');
     DM.QuCari.SQL.Add('select @Urut=isnull(max(urut),0)+1 from DBSubGroupJnsTambah Where KodeGrp='+QuotedStr(SubGroup_JnsTambah_KodeGrp)+' and KodeSubGrp='+QuotedStr(SubGroup_JnsTambah_KodeSubGrp));
     DM.QuCari.SQL.Add('insert into DBSubGroupJnsTambah (KodeGrp, KodeSubGrp, Urut, Keterangan)');
     DM.QuCari.SQL.Add('values(:0, :1, @Urut, :2)');
     DM.QuCari.Parameters[0].Value := SubGroup_JnsTambah_KodeGrp;
     DM.QuCari.Parameters[1].Value := SubGroup_JnsTambah_KodeSubGrp;
     DM.QuCari.Parameters[2].Value := Keterangan.Text;
   end else
   if pChoice='U' then
   begin
     DM.QuCari.SQL.Add('update DBSubGroupJnsTambah set Keterangan='+QuotedStr(Keterangan.Text));
     DM.QuCari.SQL.Add('where KodeGrp='+QuotedStr(SubGroup_JnsTambah_KodeGrp)+' and KodeSubGrp='+QuotedStr(SubGroup_JnsTambah_KodeSubGrp)+' and Urut='+QuotedStr(QuBeliUrut.AsString));
   end else
   if pChoice='D' then
   begin
     DM.QuCari.SQL.Add('delete DBSubGroupJnsTambah ');
     DM.QuCari.SQL.Add('where KodeGrp='+QuotedStr(SubGroup_JnsTambah_KodeGrp)+' and KodeSubGrp='+QuotedStr(SubGroup_JnsTambah_KodeSubGrp)+' and Urut='+QuotedStr(QuBeliUrut.AsString));
   end;
   try
     DM.QuCari.ExecSQL;
     if pChoice='I' then
     begin
       TampilData;
     end
     else if pChoice='U' then
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
     else if pChoice='D' then
     begin
       TampilData;
     end;
   except
     ShowMessage('Proses Gagal !!!')
   end;
end;

function TFrSubGroup_JnsTambah.CekDataSudahAda: Boolean;
begin
{
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from DBJnsTambahanDet where KodeJnsTambahan='+QuotedStr(SubJenisTambahan_KodeJnsTambahan)+' and KodeSubJnsTambahan='+QuotedStr(KodeSubJnsTambahan.Text));
    Open;
    CekDataSudahAda:=not IsEmpty;
    Close;
  end;
}
end;

procedure TFrSubGroup_JnsTambah.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  //else if Key=VK_ESCAPE then Close;
end;

procedure TFrSubGroup_JnsTambah.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFrSubGroup_JnsTambah.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrSubGroup_JnsTambah.FormShow(Sender: TObject);
begin
  TampilData;
end;

procedure TFrSubGroup_JnsTambah.TambahBtnClick(Sender: TObject);
begin
  Model:='write';
  TampilTombolDetail(True);
  ActiveControl:=Keterangan;
end;

procedure TFrSubGroup_JnsTambah.KodeSubJnsTambahanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    SpeedButton1.Click;
  end;
end;

procedure TFrSubGroup_JnsTambah.KoreksiBtnClick(Sender: TObject);
begin
   mValid:=False;
   Model:='koreksi';
   if QuBeli.IsEmpty=False then
   begin
      TampilTombolDetail(True);
      Keterangan.Text := QuBeliKeterangan.AsString;
      LNamaBag.Caption := QuBeliNMDEP.AsString;
      ActiveControl:=Keterangan;
   end
   else
   begin
      ShowMessage('Tidak ada transaksi yang dikoreksi !');
      ActiveControl:=dxDBGrid1;
   end;
end;

procedure TFrSubGroup_JnsTambah.HapusBtnClick(Sender: TObject);
begin
   if QuBeli.IsEmpty=True then
   begin
      Application.MessageBox('Tabel Kosong','Informasi'
      ,MB_OK Or MB_ICONWARNING);
   end
   else
   begin
      StrPCopy(S,Format('Anda yakin Keterangan %s dihapus ?',
      [QuBeli.FieldByName('Keterangan').AsString]));
      if (Application.MessageBox(S,'Hapus Data',
              MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
      begin
              UpdateDataBeli('D');
      end;
   end;
end;

procedure TFrSubGroup_JnsTambah.BitBtn1Click(Sender: TObject);
var iDptDisimpan: Boolean;
begin
  iDptDisimpan:=True;
  if Length(Keterangan.Text)=0 then
  begin
    iDptDisimpan:=False;
    ShowMessage('Keterangan tidak boleh kosong');
    ActiveControl:=Keterangan;
  end;
{
  else if (Model='write') and (CekDataSudahAda) then
  begin
    iDptDisimpan:=False;
    ShowMessage('Data sudah ada');
    ActiveControl:=KodeSubJnsTambahan;
  end;
}
  if iDptDisimpan then
  begin
    if Model='write' then
    begin
        UpdateDataBeli('I');
        ClearPanelDetail;
        ActiveControl:=Keterangan;
    end
    else if Model='koreksi' then
    begin
      UpdateDataBeli('U');
      SpeedButton1.Click;
    end;
  end;
end;

procedure TFrSubGroup_JnsTambah.SpeedButton1Click(Sender: TObject);
begin
  mValid:=False;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
  ClearPanelDetail;
end;

procedure TFrSubGroup_JnsTambah.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    mValid:=False;
    Close;
  end
  else if key=VK_return then
  begin
    KoreksiBtn.Click;
  end
  else if key=VK_delete then
  begin
    HapusBtn.Click;
  end
  else if key=VK_insert then
  begin
    TambahBtn.Click;
  end;
end;

procedure TFrSubGroup_JnsTambah.PerkPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_Return then
  begin
    if Length(PerkP.Text)=0 then
       TampilIsiData(FrSubGroup_JnsTambah,PerkP ,Label1,1005,'Perkiraan','Keterangan')
    else if DataBersyarat('select * from dbperkiraan where Perkiraan=:0',[PerkP.text],DM.Qucari) then
    begin
      PerkP.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      Label1.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubGroup_JnsTambah,PerkP ,Label1,1005,'Perkiraan','Keterangan');
  end;
end;

procedure TFrSubGroup_JnsTambah.PerkHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_Return then
  begin
    if Length(PerkH.Text)=0 then
       TampilIsiData(FrSubGroup_JnsTambah,PerkH ,Label4,1005,'Perkiraan','Keterangan')
    else if DataBersyarat('select * from dbperkiraan where Perkiraan=:0',[PerkH.text],DM.Qucari) then
    begin
      PerkH.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      Label4.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubGroup_JnsTambah,PerkH ,Label4,1005,'Perkiraan','Keterangan');
  end;
end;

procedure TFrSubGroup_JnsTambah.PerkPPNKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_Return then
  begin
    if Length(PerkPPN.Text)=0 then
       TampilIsiData(FrSubGroup_JnsTambah,PerkPPN ,Label6,1005,'Perkiraan','Keterangan')
    else if DataBersyarat('select * from dbperkiraan where Perkiraan=:0',[PerkPPN.text],DM.Qucari) then
    begin
      PerkPPN.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      Label6.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubGroup_JnsTambah,PerkPPN ,Label6,1005,'Perkiraan','Keterangan');
  end;
end;

procedure TFrSubGroup_JnsTambah.KeteranganEnter(Sender: TObject);
Var x:string;
begin
        mvalid:=true;
end;

procedure TFrSubGroup_JnsTambah.KeteranganExit(Sender: TObject);
begin
  if mValid then
  begin
    if Length(Keterangan.Text)=0 then
       TampilIsiData(FrSubGroup_JnsTambah,Keterangan ,Lnamabag,10021,'kddep','Nmdep')
    else if DataBersyarat('select * from dbdepart where kddep=:0',[Keterangan.text],DM.Qucari) then
    begin
      Keterangan.Text :=DM.QuCari.FieldByname('Kddep').AsString;
      LNamaBag.Caption:='[ '+DM.QuCari.FieldByname('Nmdep').AsString+' ]';
    end
    else
      TampilIsiData(FrSubGroup_JnsTambah,Keterangan ,Lnamabag,10021,'kddep','Nmdep');
  end;

end;

end.
