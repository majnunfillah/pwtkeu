unit FrmSubBarangProses;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, PBNumEdit, ExtCtrls, Buttons, db,strUtils, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, RXCtrls, ADODB;

type
  TFrSubBarangProses = class(TForm)
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
    KodeBrg: TEdit;
    Label2: TLabel;
    PerkP: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    PerkH: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    PerkPPN: TEdit;
    Label6: TLabel;
    QuBeliUrut: TIntegerField;
    QuBeliKODEBRG: TStringField;
    QuBeliNAMABRG: TStringField;
    dxDBGrid1Urut: TdxDBGridMaskColumn;
    dxDBGrid1KODEBRG: TdxDBGridMaskColumn;
    dxDBGrid1NAMABRG: TdxDBGridMaskColumn;
    NamaBrg: TLabel;
    QuBeliKodeBrgOlah: TStringField;
    dxDBGrid1KodeBrgOlah: TdxDBGridMaskColumn;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TambahBtnClick(Sender: TObject);
    procedure KodeOlahKeyDown(Sender: TObject; var Key: Word;
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
    procedure KodeBrgExit(Sender: TObject);
    procedure KodeBrgEnter(Sender: TObject);
  private
    { Private declarations }
    Model: String;
    procedure TampilData;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure ClearPanelDetail;
    procedure UpdateDataBeli(pChoice: Char);
    function  CekDataSudahAda: Boolean;
    procedure TampilIsiBahan;
  public
    { Public declarations }
     IsSimpan:Boolean;
     SubBrgProses_KodeBrg: String;
  end;

var
  FrSubBarangProses: TFrSubBarangProses;
  mValid:boolean;


implementation
uses myModul,Myprocedure,MyGlobal, Frmbrows, FrmBarang;
{$R *.DFM}

procedure TFrSubBarangProses.TampilIsiBahan;
begin
     KodeBrows:=110016;
     Application.CreateForm(TFrBrows, FrBrows);
     FrBrows.ShowModal;
     if FrBrows.ModalResult=mrOk then
     begin
         KodeBrg.Text:=FrBrows.QuBrows.FieldByName('KodeBrg').AsString;
         NamaBrg.Caption:='[ '+FrBrows.QuBrows.FieldByName('NamaBrg').AsString+' ]';
     end
     else
        ActiveControl:=KodeBrg;
end;


procedure TFrSubBarangProses.TampilData;
begin
  QuBeli.Close;
  QuBeli.SQL.Strings[4]:='where KodeBrgOlah='+QuotedStr(SubBrgProses_KodeBrg);
  QuBeli.Open;
end;

procedure TFrSubBarangProses.TampilTombolDetail(pNilai: Boolean);
begin
  PanelShow1.Visible:=not pNilai;
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  Panel3.Enabled:=pNilai;
end;

procedure TFrSubBarangProses.ClearPanelDetail;
begin
//  KodeOlah.Text := '';
  KodeBrg.Text:='';
  NamaBrg.Caption:='[ . . . ]';
end;

procedure TFrSubBarangProses.UpdateDataBeli(pChoice: Char);
begin
   BM:=QuBeli.GetBookmark;
   DM.QuCari.Close;
   DM.QuCari.SQL.Clear;
   if pChoice='I' then
   begin
     DM.QuCari.SQL.Add('declare @Urut int = 0');
     DM.QuCari.SQL.Add('select @Urut=isnull(max(urut),0)+1 from DBBarangOlah Where KodeBrgOlah='+QuotedStr(SubBrgProses_KodeBrg));
     DM.QuCari.SQL.Add('insert into DBBarangOlah (KodeBrgOlah, Urut, KodeBrg)');
     DM.QuCari.SQL.Add('values('+QuotedStr(SubBrgProses_KodeBrg)+', @Urut, '+QuotedStr(KodeBrg.Text)+')');
   end else
   if pChoice='U' then
   begin
     DM.QuCari.SQL.Add('update DBBarangOlah set KodeBrg='+QuotedStr(KodeBrg.Text));
     DM.QuCari.SQL.Add('where KodeBrgOlah='+QuotedStr(SubBrgProses_KodeBrg)+' and Urut='+ QuBeliUrut.AsString);
   end else
   if pChoice='D' then
   begin
     DM.QuCari.SQL.Add('delete DBBarangOlah ');
     DM.QuCari.SQL.Add('where KodeBrgOlah='+QuotedStr(SubBrgProses_KodeBrg)+' and Urut='+ QuBeliUrut.AsString);
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

function TFrSubBarangProses.CekDataSudahAda: Boolean;
begin
{
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from DBJnsTambahan where KodeJnsTambahan='+QuotedStr(SubJenisTambahan_KodeJnsTambahan)+' and KodeSubJnsTambahan='+QuotedStr(KodeSubJnsTambahan.Text));
    Open;
    CekDataSudahAda:=not IsEmpty;
    Close;
  end;
}
end;

procedure TFrSubBarangProses.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  //else if Key=VK_ESCAPE then Close;
end;

procedure TFrSubBarangProses.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFrSubBarangProses.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrSubBarangProses.FormShow(Sender: TObject);
begin
  TampilData;
end;

procedure TFrSubBarangProses.TambahBtnClick(Sender: TObject);
begin
  Model:='write';
  TampilTombolDetail(True);
//  KodeOlah.Enabled:=True;
  ActiveControl:=KodeBrg;
end;

procedure TFrSubBarangProses.KodeOlahKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    SpeedButton1.Click;
  end;
end;

procedure TFrSubBarangProses.KoreksiBtnClick(Sender: TObject);
begin
   mValid:=False;
   Model:='koreksi';
//   KodeOlah.Enabled:=False;
   if QuBeli.IsEmpty=False then
   begin
      TampilTombolDetail(True);
//      KodeOlah.Text:=QuBeliKodeOlah.AsString;
      KodeBrg.Text:=QuBeliKODEBRG.AsString;
      NamaBrg.Caption:=QuBeliNAMABRG.AsString;
      ActiveControl:=KodeBrg;
   end
   else
   begin
      ShowMessage('Tidak ada transaksi yang dikoreksi !');
      ActiveControl:=dxDBGrid1;
   end;
end;

procedure TFrSubBarangProses.HapusBtnClick(Sender: TObject);
begin
   if QuBeli.IsEmpty=True then
   begin
      Application.MessageBox('Tabel Kosong','Informasi'
      ,MB_OK Or MB_ICONWARNING);
   end
   else
   begin
      StrPCopy(S,Format('Anda yakin Kode %s dan Nama %s dihapus ?',
      [QuBeli.FieldByName('KodeBrg').AsString, QuBeli.FieldByname('NamaBrg').AsString]));
      if (Application.MessageBox(S,'Hapus Data',
              MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
      begin
              UpdateDataBeli('D');
      end;
   end;
end;

procedure TFrSubBarangProses.BitBtn1Click(Sender: TObject);
var iDptDisimpan: Boolean;
begin
  iDptDisimpan:=True;
  if Length(KodeBrg.Text)=0 then
  begin
    iDptDisimpan:=False;
    ShowMessage('Kode tidak boleh kosong');
    ActiveControl:=KodeBrg;
  end;
{
  else if (Model='write') and (CekDataSudahAda) then
  begin
    iDptDisimpan:=False;
    ShowMessage('Data sudah ada');
    ActiveControl:=KodeOlah;
  end;
}
  if iDptDisimpan then
  begin
    if Model='write' then
    begin
        UpdateDataBeli('I');
        ClearPanelDetail;
        ActiveControl:=KodeBrg;
    end
    else if Model='koreksi' then
    begin
      UpdateDataBeli('U');
      SpeedButton1.Click;
    end;
  end;
end;

procedure TFrSubBarangProses.SpeedButton1Click(Sender: TObject);
begin
  mValid:=False;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
  ClearPanelDetail;
end;

procedure TFrSubBarangProses.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrSubBarangProses.PerkPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_Return then
  begin
    if Length(PerkP.Text)=0 then
       TampilIsiData(FrSubBarangProses,PerkP ,Label1,1005,'Perkiraan','Keterangan')
    else if DataBersyarat('select * from dbperkiraan where Perkiraan=:0',[PerkP.text],DM.Qucari) then
    begin
      PerkP.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      Label1.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubBarangProses,PerkP ,Label1,1005,'Perkiraan','Keterangan');
  end;
end;

procedure TFrSubBarangProses.PerkHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_Return then
  begin
    if Length(PerkH.Text)=0 then
       TampilIsiData(FrSubBarangProses,PerkH ,Label4,1005,'Perkiraan','Keterangan')
    else if DataBersyarat('select * from dbperkiraan where Perkiraan=:0',[PerkH.text],DM.Qucari) then
    begin
      PerkH.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      Label4.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubBarangProses,PerkH ,Label4,1005,'Perkiraan','Keterangan');
  end;
end;

procedure TFrSubBarangProses.PerkPPNKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_Return then
  begin
    if Length(PerkPPN.Text)=0 then
       TampilIsiData(FrSubBarangProses,PerkPPN ,Label6,1005,'Perkiraan','Keterangan')
    else if DataBersyarat('select * from dbperkiraan where Perkiraan=:0',[PerkPPN.text],DM.Qucari) then
    begin
      PerkPPN.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      Label6.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubBarangProses,PerkPPN ,Label6,1005,'Perkiraan','Keterangan');
  end;
end;

procedure TFrSubBarangProses.KodeBrgExit(Sender: TObject);
begin
 if mValid then
 begin
   if length(KodeBrg.Text)=0 then TampilIsiBahan;
{
   else
   begin
     if MyFindField('DBJNSTambahan','KodeJnsTambahan',KodeJnsTambahan.Text)=true then
     begin
         KodeJnsTambahan.Text:=DM.QuCari.fieldbyname('KodeJnsTambahan').AsString;
         NamaJnsTambahan.Caption:='[ '+DM.QuCari.fieldbyname('Nama').AsString+' ]';
     end
     else TampilIsiJnsTambahan;
   end;
}
 end;

end;

procedure TFrSubBarangProses.KodeBrgEnter(Sender: TObject);
begin
  mValid := True;
end;

end.
