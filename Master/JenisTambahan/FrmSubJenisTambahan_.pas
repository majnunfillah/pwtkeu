unit FrmSubJenisTambahan_;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, PBNumEdit, ExtCtrls, Buttons, db,strUtils, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, RXCtrls, ADODB;

type
  TFrSubJenisTambahan_ = class(TForm)
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    BitBtn1: TBitBtn;
    KodeSubJnsTambahan: TEdit;
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
    Nama: TEdit;
    Label2: TLabel;
    PerkP: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    PerkH: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    PerkPPN: TEdit;
    Label6: TLabel;
    QuBeliKodeJnsTambahan: TStringField;
    QuBeliKodeSubJnsTambahan: TStringField;
    QuBeliNamaSubJnsTambahan: TStringField;
    dxDBGrid1KodeJnsTambahan: TdxDBGridMaskColumn;
    dxDBGrid1KodeSubJnsTambahan: TdxDBGridMaskColumn;
    dxDBGrid1NamaSubJnsTambahan: TdxDBGridMaskColumn;
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
     SubJenisTambahan_KodeJnsTambahan: String;
  end;

var
  FrSubJenisTambahan_: TFrSubJenisTambahan_;
  mValid:boolean;


implementation
uses myModul,Myprocedure,MyGlobal, Frmbrows,FrmBarang;
{$R *.DFM}

procedure TFrSubJenisTambahan_.TampilData;
begin
  QuBeli.Close;
  QuBeli.SQL.Strings[4]:='where KodeJnsTambahan='+QuotedStr(SubJenisTambahan_KodeJnsTambahan);
  QuBeli.Open;
end;

procedure TFrSubJenisTambahan_.TampilTombolDetail(pNilai: Boolean);
begin
  PanelShow1.Visible:=not pNilai;
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  Panel3.Enabled:=pNilai;
end;

procedure TFrSubJenisTambahan_.ClearPanelDetail;
begin
  KodeSubJnsTambahan.Text:='';
  Nama.Text:='';
end;

procedure TFrSubJenisTambahan_.UpdateDataBeli(pChoice: Char);
begin
   BM:=QuBeli.GetBookmark;
   DM.QuCari.Close;
   DM.QuCari.SQL.Clear;
   if pChoice='I' then
   begin
     DM.QuCari.SQL.Add('insert into DBJnsTambahanDet (KodeJnsTambahan, KodeSubJnsTambahan, NamaSubJnsTambahan)');
     DM.QuCari.SQL.Add('values('+QuotedStr(SubJenisTambahan_KodeJnsTambahan)+','+QuotedStr(KodeSubJnsTambahan.Text)+','+QuotedStr(Nama.Text)+')');
   end else
   if pChoice='U' then
   begin
     DM.QuCari.SQL.Add('update DBJnsTambahanDet set NamaSubJnsTambahan='+QuotedStr(Nama.Text));
     DM.QuCari.SQL.Add('where KodeJnsTambahan='+QuotedStr(SubJenisTambahan_KodeJnsTambahan)+' and KodeSubJnsTambahan='+QuotedStr(QuBeliKodeSubJnsTambahan.AsString));
   end else
   if pChoice='D' then
   begin
     DM.QuCari.SQL.Add('delete DBJnsTambahanDet ');
     DM.QuCari.SQL.Add('where KodeJnsTambahan='+QuotedStr(SubJenisTambahan_KodeJnsTambahan)+' and KodeSubJnsTambahan='+QuotedStr(QuBeliKodeSubJnsTambahan.AsString));
   end;

   try
     DM.QuCari.ExecSQL;
     if pChoice='I' then
     begin
       TampilData;
       QuBeli.Locate('KodeSubJnsTambahan', KodeSubJnsTambahan.Text, [LOP,LOC]);
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

function TFrSubJenisTambahan_.CekDataSudahAda: Boolean;
begin
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from DBJnsTambahanDet where KodeJnsTambahan='+QuotedStr(SubJenisTambahan_KodeJnsTambahan)+' and KodeSubJnsTambahan='+QuotedStr(KodeSubJnsTambahan.Text));
    Open;
    CekDataSudahAda:=not IsEmpty;
    Close;
  end;
end;

procedure TFrSubJenisTambahan_.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  //else if Key=VK_ESCAPE then Close;
end;

procedure TFrSubJenisTambahan_.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFrSubJenisTambahan_.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrSubJenisTambahan_.FormShow(Sender: TObject);
begin
  TampilData;
end;

procedure TFrSubJenisTambahan_.TambahBtnClick(Sender: TObject);
begin
  Model:='write';
  TampilTombolDetail(True);
  KodeSubJnsTambahan.Enabled:=True;
  ActiveControl:=KodeSubJnsTambahan;
end;

procedure TFrSubJenisTambahan_.KodeSubJnsTambahanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    SpeedButton1.Click;
  end;
end;

procedure TFrSubJenisTambahan_.KoreksiBtnClick(Sender: TObject);
begin
   mValid:=False;
   Model:='koreksi';
   KodeSubJnsTambahan.Enabled:=False;
   if QuBeli.IsEmpty=False then
   begin
      TampilTombolDetail(True);
      KodeSubJnsTambahan.Text:=QuBeliKodeSubJnsTambahan.AsString;
      Nama.Text:=QuBeliNamaSubJnsTambahan.AsString;
      ActiveControl:=Nama;
   end
   else
   begin
      ShowMessage('Tidak ada transaksi yang dikoreksi !');
      ActiveControl:=dxDBGrid1;
   end;
end;

procedure TFrSubJenisTambahan_.HapusBtnClick(Sender: TObject);
begin
   if QuBeli.IsEmpty=True then
   begin
      Application.MessageBox('Tabel Kosong','Informasi'
      ,MB_OK Or MB_ICONWARNING);
   end
   else
   begin
      StrPCopy(S,Format('Anda yakin Kode %s dan Nama %s dihapus ?',
      [QuBeli.FieldByName('KodeSubJnsTambahan').AsString, QuBeli.FieldByname('NamaSubJnsTambahan').AsString]));
      if (Application.MessageBox(S,'Hapus Data',
              MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
      begin
              UpdateDataBeli('D');
      end;
   end;
end;

procedure TFrSubJenisTambahan_.BitBtn1Click(Sender: TObject);
var iDptDisimpan: Boolean;
begin
  iDptDisimpan:=True;
  if Length(KodeSubJnsTambahan.Text)=0 then
  begin
    iDptDisimpan:=False;
    ShowMessage('Kode tidak boleh kosong');
    ActiveControl:=KodeSubJnsTambahan;
  end else
  if (Model='write') and (CekDataSudahAda) then
  begin
    iDptDisimpan:=False;
    ShowMessage('Data sudah ada');
    ActiveControl:=KodeSubJnsTambahan;
  end;

  if iDptDisimpan then
  begin
    if Model='write' then
    begin
        UpdateDataBeli('I');
        ClearPanelDetail;
        ActiveControl:=KodeSubJnsTambahan;
    end
    else if Model='koreksi' then
    begin
      UpdateDataBeli('U');
      SpeedButton1.Click;
    end;
  end;
end;

procedure TFrSubJenisTambahan_.SpeedButton1Click(Sender: TObject);
begin
  mValid:=False;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
  ClearPanelDetail;
end;

procedure TFrSubJenisTambahan_.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrSubJenisTambahan_.PerkPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_Return then
  begin
    if Length(PerkP.Text)=0 then
       TampilIsiData(FrSubJenisTambahan_,PerkP ,Label1,1005,'Perkiraan','Keterangan')
    else if DataBersyarat('select * from dbperkiraan where Perkiraan=:0',[PerkP.text],DM.Qucari) then
    begin
      PerkP.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      Label1.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubJenisTambahan_,PerkP ,Label1,1005,'Perkiraan','Keterangan');
  end;
end;

procedure TFrSubJenisTambahan_.PerkHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_Return then
  begin
    if Length(PerkH.Text)=0 then
       TampilIsiData(FrSubJenisTambahan_,PerkH ,Label4,1005,'Perkiraan','Keterangan')
    else if DataBersyarat('select * from dbperkiraan where Perkiraan=:0',[PerkH.text],DM.Qucari) then
    begin
      PerkH.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      Label4.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubJenisTambahan_,PerkH ,Label4,1005,'Perkiraan','Keterangan');
  end;
end;

procedure TFrSubJenisTambahan_.PerkPPNKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_Return then
  begin
    if Length(PerkPPN.Text)=0 then
       TampilIsiData(FrSubJenisTambahan_,PerkPPN ,Label6,1005,'Perkiraan','Keterangan')
    else if DataBersyarat('select * from dbperkiraan where Perkiraan=:0',[PerkPPN.text],DM.Qucari) then
    begin
      PerkPPN.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      Label6.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubJenisTambahan_,PerkPPN ,Label6,1005,'Perkiraan','Keterangan');
  end;
end;

end.
