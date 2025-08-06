unit FrmSubGroup_;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, PBNumEdit, ExtCtrls, Buttons, db,strUtils, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, RXCtrls, ADODB;

type
  TFrSubGroup_ = class(TForm)
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    BitBtn1: TBitBtn;
    KodeSubGrp: TEdit;
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
    QuBeliKodeGrp: TStringField;
    QuBeliKodeSubGrp: TStringField;
    dxDBGrid1KodeSubGrp: TdxDBGridMaskColumn;
    dxDBGrid1Nama: TdxDBGridMaskColumn;
    Nama: TEdit;
    QuBeliNamaSubGrp: TStringField;
    Label2: TLabel;
    PerkP: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    PerkH: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    PerkPPN: TEdit;
    Label6: TLabel;
    dxDBGrid1Column3: TdxDBGridColumn;
    dxDBGrid1Column4: TdxDBGridColumn;
    dxDBGrid1Column5: TdxDBGridColumn;
    QuBeliPerkPers: TStringField;
    QuBeliPerkH: TStringField;
    QuBeliPerkPPN: TStringField;
    JnsTambahBtn: TSpeedButton;
    Label7: TLabel;
    PerkBiaya: TEdit;
    Label10: TLabel;
    QuBeliPerkBiaya: TStringField;
    dxDBGrid1Column6: TdxDBGridColumn;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TambahBtnClick(Sender: TObject);
    procedure KodeSubGrpKeyDown(Sender: TObject; var Key: Word;
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
    procedure JnsTambahBtnClick(Sender: TObject);
    procedure PerkBiayaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PerkPExit(Sender: TObject);
    procedure PerkHExit(Sender: TObject);
    procedure PerkPPNExit(Sender: TObject);
    procedure PerkBiayaExit(Sender: TObject);
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
     SubGroup_KodeGrp: String;
  end;

var
  FrSubGroup_: TFrSubGroup_;
  mValid:boolean;


implementation
uses myModul,Myprocedure,MyGlobal, Frmbrows,FrmBarang,
  FrmSubGroup_JnsTambah;
{$R *.DFM}

procedure TFrSubGroup_.TampilData;
begin
  QuBeli.Close;
  QuBeli.SQL.Strings[4]:='where KodeGrp='+QuotedStr(SubGroup_KodeGrp);
  QuBeli.Open;
end;

procedure TFrSubGroup_.TampilTombolDetail(pNilai: Boolean);
begin
  PanelShow1.Visible:=not pNilai;
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  Panel3.Enabled:=pNilai;
end;

procedure TFrSubGroup_.ClearPanelDetail;
begin
  KodeSubGrp.Text:='';
  Nama.Text:='';
  PerkP.Text:='';
  PerkH.Text:='';
  PerkPPN.Text:='';
  PerkBiaya.Text:='';
  label1.Caption :='[ . . . ]';
  label4.Caption :='[ . . . ]';
  label6.Caption :='[ . . . ]';
  label10.Caption :='[ . . . ]';


end;

procedure TFrSubGroup_.UpdateDataBeli(pChoice: Char);
begin
   BM:=QuBeli.GetBookmark;
   DM.QuCari.Close;
   DM.QuCari.SQL.Clear;
   if pChoice='I' then
   begin
     DM.QuCari.SQL.Add('insert into dbSubGroup (KodeGrp, KodeSubGrp, NamaSubGrp,PerkPers,PerkH,PerkPPN,PerkBiaya)');
     DM.QuCari.SQL.Add('values('+QuotedStr(SubGroup_KodeGrp)+','+QuotedStr(KodeSubGrp.Text)+','+QuotedStr(Nama.Text)+','+QuotedStr(PerkP.Text)+','+QuotedStr(PerkH.Text)+','+QuotedStr(PerkPPN.Text)+','+QuotedStr(PerkBiaya.Text)+')');
   end else
   if pChoice='U' then
   begin
     DM.QuCari.SQL.Add('update dbSubGroup set NamaSubGrp='+QuotedStr(Nama.Text)+
       ',PerkPers='+QuotedStr(PerkP.Text)+',PerkH='+QuotedStr(PerkH.Text)+',PerkPPN='+QuotedStr(PerkPPN.Text)+',PerkBiaya='+QuotedStr(PerkBiaya.Text));
     DM.QuCari.SQL.Add('where KodeGrp='+QuotedStr(SubGroup_KodeGrp)+' and KodeSubGrp='+QuotedStr(QuBeliKodeSubGrp.AsString));
   end else
   if pChoice='D' then
   begin
     DM.QuCari.SQL.Add('delete dbSubGroup ');
     DM.QuCari.SQL.Add('where KodeGrp='+QuotedStr(SubGroup_KodeGrp)+' and KodeSubGrp='+QuotedStr(QuBeliKodeSubGrp.AsString));
   end;

   try
     DM.QuCari.ExecSQL;
     if pChoice='I' then
     begin
       TampilData;
       QuBeli.Locate('KodeSubGrp', KodeSubGrp.Text, [LOP,LOC]);
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

function TFrSubGroup_.CekDataSudahAda: Boolean;
begin
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from dbSubGroup where KodeGrp='+QuotedStr(SubGroup_KodeGrp)+' and KodeSubGrp='+QuotedStr(KodeSubGrp.Text));
    Open;
    CekDataSudahAda:=not IsEmpty;
    Close;
  end;
end;

procedure TFrSubGroup_.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  //else if Key=VK_ESCAPE then Close;
end;

procedure TFrSubGroup_.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFrSubGroup_.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrSubGroup_.FormShow(Sender: TObject);
begin
  TampilData;
end;

procedure TFrSubGroup_.TambahBtnClick(Sender: TObject);
begin
  Model:='write';
  TampilTombolDetail(True);
  KodeSubGrp.Enabled:=True;
  ActiveControl:=KodeSubGrp;
end;

procedure TFrSubGroup_.KodeSubGrpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    SpeedButton1.Click;
  end;
end;

procedure TFrSubGroup_.KoreksiBtnClick(Sender: TObject);
begin
   mValid:=False;
   Model:='koreksi';
   KodeSubGrp.Enabled:=False;
   if QuBeli.IsEmpty=False then
   begin
      TampilTombolDetail(True);
      KodeSubGrp.Text:=QuBeliKodeSubGrp.AsString;
      Nama.Text:=QuBeliNamaSubGrp.AsString;
      PerkP.Text :=QuBeliPerkPers.AsString;
      PerkH.Text:=QuBeliPerkH.AsString;
      PerkPPN.Text:=QuBeliPerkPPN.AsString;
      PerkBiaya.Text:=QuBeliPerkBiaya.AsString;
      ActiveControl:=Nama;
   end
   else
   begin
      ShowMessage('Tidak ada transaksi yang dikoreksi !');
      ActiveControl:=dxDBGrid1;
   end;
end;

procedure TFrSubGroup_.HapusBtnClick(Sender: TObject);
begin
   if QuBeli.IsEmpty=True then
   begin
      Application.MessageBox('Tabel Kosong','Informasi'
      ,MB_OK Or MB_ICONWARNING);
   end
   else
   begin
      StrPCopy(S,Format('Anda yakin Kode %s dan Nama %s dihapus ?',
      [QuBeli.FieldByName('KodeSubGrp').AsString, QuBeli.FieldByname('NamaSubGrp').AsString]));
      if (Application.MessageBox(S,'Hapus Data',
              MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
      begin
              UpdateDataBeli('D');
      end;
   end;
end;

procedure TFrSubGroup_.BitBtn1Click(Sender: TObject);
var iDptDisimpan: Boolean;
begin
  iDptDisimpan:=True;
  if Length(KodeSubGrp.Text)=0 then
  begin
    iDptDisimpan:=False;
    ShowMessage('Kode tidak boleh kosong');
    ActiveControl:=KodeSubGrp;
  end else
  if (Model='write') and (CekDataSudahAda) then
  begin
    iDptDisimpan:=False;
    ShowMessage('Data sudah ada');
    ActiveControl:=KodeSubGrp;
  end;

  if iDptDisimpan then
  begin
    if Model='write' then
    begin
        UpdateDataBeli('I');
        ClearPanelDetail;
        ActiveControl:=KodeSubGrp;
    end
    else if Model='koreksi' then
    begin
      UpdateDataBeli('U');
      SpeedButton1.Click;
    end;
  end;
end;

procedure TFrSubGroup_.SpeedButton1Click(Sender: TObject);
begin
  mValid:=False;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
  ClearPanelDetail;
end;

procedure TFrSubGroup_.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrSubGroup_.PerkPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{if key=vk_Return then
  begin
    if Length(PerkP.Text)=0 then
       TampilIsiData(FrSubGroup_,PerkP ,Label1,1005,'Perkiraan','Keterangan')
    else if DataBersyarat('select * from dbperkiraan where Perkiraan=:0',[PerkP.text],DM.Qucari) then
    begin
      PerkP.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      Label1.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubGroup_,PerkP ,Label1,1005,'Perkiraan','Keterangan');
  end; }
end;

procedure TFrSubGroup_.PerkHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_Return then
  begin
    if Length(PerkH.Text)=0 then
       TampilIsiData(FrSubGroup_,PerkH ,Label4,1005,'Perkiraan','Keterangan')
    else if DataBersyarat('select * from dbperkiraan where Perkiraan=:0',[PerkH.text],DM.Qucari) then
    begin
      PerkH.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      Label4.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubGroup_,PerkH ,Label4,1005,'Perkiraan','Keterangan');
  end;
end;

procedure TFrSubGroup_.PerkPPNKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_Return then
  begin
    if Length(PerkPPN.Text)=0 then
       TampilIsiData(FrSubGroup_,PerkPPN ,Label6,1005,'Perkiraan','Keterangan')
    else if DataBersyarat('select * from dbperkiraan where Perkiraan=:0',[PerkPPN.text],DM.Qucari) then
    begin
      PerkPPN.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      Label6.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubGroup_,PerkPPN ,Label6,1005,'Perkiraan','Keterangan');
  end;
end;

procedure TFrSubGroup_.JnsTambahBtnClick(Sender: TObject);
begin
  if not QuBeli.IsEmpty then
  begin
    Application.CreateForm(TFrSubGroup_JnsTambah, FrSubGroup_JnsTambah);
    FrSubGroup_JnsTambah.SubGroup_JnsTambah_KodeGrp:=QuBeliKodeGrp.AsString;
    FrSubGroup_JnsTambah.SubGroup_JnsTambah_KodeSubGrp:=QuBeliKodeSubGrp.AsString;
    FrSubGroup_JnsTambah.LblKode.Caption:=QuBeliKodeSubGrp.AsString;
    FrSubGroup_JnsTambah.LblNama.Caption:=QuBeliNamaSubGrp.AsString;
    FrSubGroup_JnsTambah.ShowModal;
  end else
  begin
    MessageDlg('Data kosong !!!', mtError, [mbOK], 0);
    if dxDBGrid1.CanFocus then
       dxDBGrid1.SetFocus;
  end;

end;

procedure TFrSubGroup_.PerkBiayaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_Return then
  begin
    if Perkbiaya.Text<>'-' then
      begin
          if Length(Perkbiaya.Text)=0 then
             TampilIsiData(FrSubGroup_,Perkbiaya ,Label10,1005,'Perkiraan','Keterangan')
          else if DataBersyarat('select * from dbperkiraan where Perkiraan=:0',[Perkbiaya.text],DM.Qucari) then
          begin
            Perkbiaya.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
            Label10.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
          end
          else
            TampilIsiData(FrSubGroup_,Perkbiaya ,Label10,1005,'Perkiraan','Keterangan');
      end;
  end;

end;

procedure TFrSubGroup_.PerkPExit(Sender: TObject);
begin
{if length (perkp.Text)=0  then

MsgDataTidakBolehKosong('Perkiraan'); }
    if Length(PerkP.Text)=0 then
       TampilIsiData(FrSubGroup_,PerkP ,Label1,1005,'Perkiraan','Keterangan')
    else if DataBersyarat('select * from dbperkiraan where Perkiraan=:0',[PerkP.text],DM.Qucari) then
    begin
      PerkP.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      Label1.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubGroup_,PerkP ,Label1,1005,'Perkiraan','Keterangan');
end;

procedure TFrSubGroup_.PerkHExit(Sender: TObject);
begin
    if Length(PerkH.Text)=0 then
       TampilIsiData(FrSubGroup_,PerkH ,Label4,1005,'Perkiraan','Keterangan')
    else if DataBersyarat('select * from dbperkiraan where Perkiraan=:0',[PerkH.text],DM.Qucari) then
    begin
      PerkH.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      Label4.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubGroup_,PerkH ,Label4,1005,'Perkiraan','Keterangan');
end;

procedure TFrSubGroup_.PerkPPNExit(Sender: TObject);
begin
    if Length(PerkPPN.Text)=0 then
       TampilIsiData(FrSubGroup_,PerkPPN ,Label6,1005,'Perkiraan','Keterangan')
    else if DataBersyarat('select * from dbperkiraan where Perkiraan=:0',[PerkPPN.text],DM.Qucari) then
    begin
      PerkPPN.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      Label6.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubGroup_,PerkPPN ,Label6,1005,'Perkiraan','Keterangan');
end;

procedure TFrSubGroup_.PerkBiayaExit(Sender: TObject);
begin
    if Perkbiaya.Text<>'-' then
      begin
          if Length(PerkBiaya.Text)=0 then
             TampilIsiData(FrSubGroup_,PerkBiaya ,Label10,1005,'Perkiraan','Keterangan')
          else if DataBersyarat('select * from dbperkiraan where Perkiraan=:0',[PerkPPN.text],DM.Qucari) then
          begin
            PerkBiaya.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
            Label10.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
          end
          else
            TampilIsiData(FrSubGroup_,PerkBiaya ,Label10,1005,'Perkiraan','Keterangan');
      end;
end;

end.
