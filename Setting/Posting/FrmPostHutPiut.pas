unit FrmPostHutPiut;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Grids,  StdCtrls, Buttons, ExtCtrls,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxEdit, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  PBNumEdit;

type
  TFrPostHutPiut = class(TForm)
    QuSuppos: TADOQuery;
    DsSJ: TDataSource;
    QuUpdate: TADOQuery;
    QuSupposPerkiraan: TStringField;
    QuSupposKode: TStringField;
    QuSupposKeterangan: TStringField;
    Panel2: TPanel;
    Label2: TLabel;
    Perkiraan: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel3: TPanel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    tvMaster: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    tvMasterKeterangan: TcxGridDBColumn;
    tvMasterPerkiraan: TcxGridDBColumn;
    Panel1: TPanel;
    Label1: TLabel;
    QuSupposAkumulasi: TStringField;
    QuSupposBiaya1: TStringField;
    QuSupposBiaya2: TStringField;
    QuSupposPersenBiaya1: TBCDField;
    QuSupposPersenBiaya2: TBCDField;
    tvMasterAkumulasi: TcxGridDBColumn;
    tvMasterBiaya1: TcxGridDBColumn;
    tvMasterBiaya2: TcxGridDBColumn;
    tvMasterPersenBiaya1: TcxGridDBColumn;
    tvMasterPersenBiaya2: TcxGridDBColumn;
    Label4: TLabel;
    AkSusut: TEdit;
    Label3: TLabel;
    PersenSusut1: TPBNumEdit;
    PersenSusut2: TPBNumEdit;
    Label5: TLabel;
    Label6: TLabel;
    BiayaSusut: TEdit;
    BiayaSusut2: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    SpeedButton2: TSpeedButton;
    QuSupposKeterangan_1: TStringField;
    QuSupposUrut: TWordField;
    Label10: TLabel;
    Susut: TPBNumEdit;
    Label11: TLabel;
    LM: TComboBox;
    QuSupposPersen: TBCDField;
    QuSupposTipe: TStringField;
    QuSupposMetode: TStringField;
    tvMasterPersen: TcxGridDBColumn;
    tvMasterMetode: TcxGridDBColumn;
    IsLokalExim: TCheckBox;
    QuSupposIsBeliJual: TBooleanField;
    QuSupposIsLokalorExim: TBooleanField;
    tvMasterIsLokalorExim: TcxGridDBColumn;
    IsBeliJual: TCheckBox;
    tvMasterIsBeliJual: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure PanelDetail(Mode:Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure RefreshDetail;
    procedure Simpan(Mode:char);
    procedure BitBtn1Click(Sender: TObject);
    procedure wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PerkiraanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Tampil;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure AkSusutEnter(Sender: TObject);
    procedure AkSusutExit(Sender: TObject);
    procedure BiayaSusutEnter(Sender: TObject);
    procedure BiayaSusutExit(Sender: TObject);
    procedure BiayaSusut2Enter(Sender: TObject);
    procedure BiayaSusut2Exit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
     mKode:String;
    model:string;
    mUrut : Integer;
    procedure AmbilData;
  end;

var
  FrPostHutPiut: TFrPostHutPiut;

implementation
uses MyProcedure,MyGlobal,MyModul, FrmPosting,Frmbrows;
{$R *.DFM}

procedure TFrPostHutPiut.AmbilData;
begin
  if not QuSuppos.IsEmpty then
  begin
    Perkiraan.Text := QuSupposPerkiraan.AsString;
    Label1.Caption := '[ '+QuSupposKeterangan.AsString+' ]';
    Label3.Caption := '[ '+QuSupposKeterangan_1.AsString+' ]';
    AkSusut.Text := QuSupposAkumulasi.AsString;
    BiayaSusut.Text := QuSupposBiaya1.AsString;
    BiayaSusut2.Text := QuSupposBiaya2.AsString;
    PersenSusut1.Value := QuSupposPersenBiaya1.Value;
    PersenSusut2.Value := QuSupposPersenBiaya2.Value;
    Susut.Value := QuSupposPersen.Value;
    LM.ItemIndex := LM.Items.IndexOf(QuSupposMetode.Text);
    mUrut := QuSupposUrut.AsInteger;
    IsLokalExim.Checked := QuSupposIsLokalorExim.Value;
    IsBeliJual.Checked :=  QuSupposIsBeliJual.Value;
  end;
end;

procedure TFrPostHutPiut.Tampil;
begin
  with QuSupPos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select a.*, b.Keterangan,c.Keterangan,');
    sql.add('Case when A.Tipe=''L'' then ''[L]urus''');
    sql.add('     when A.Tipe=''M'' then ''[M]enurun''');
    sql.add('     when A.Tipe=''P'' then ''[P]ajak''');
    sql.add('     else '''' ');
    sql.add('end Metode');
    SQL.Add('from dbPostHutPiut a left outer join dbPerkiraan b on  a.Perkiraan=b.Perkiraan ');
    sql.add('left outer join dbperkiraan c on c.Perkiraan=a.Akumulasi ');
    SQL.Add('where Kode=:1');
    SQL.Add('Order by a.Kode,a.Perkiraan');
    Parameters[0].Value := mKode;
    Open;
  end;
  if QuSuppos.IsEmpty then
     mUrut := 1;
  if (mKode='RLL') or (mKode='RLI') or (mKode='RLB') or (mKode='HPP') or (mKode='PTS') or
      (mKode='HTS') or (mKode='PPM') or (mKode='PPK') or (mKode='PHM') or (mKode='PHK') or
      (mKode='BYO') or (mKode='BD') or (mKode='BK') or (mKode='PD') or (mKode='WIP') then
      SpeedButton1.Enabled := QuSuppos.IsEmpty;
  tvMasterAkumulasi.Visible := (mKode='AKV');
  tvMasterBiaya1.Visible := (mKode='AKV');
  tvMasterBiaya2.Visible := (mKode='AKV');
  tvMasterPersenBiaya1.Visible := (mKode='AKV');
  tvMasterPersenBiaya2.Visible := (mKode='AKV');
  tvMasterPersen.Visible := (mKode='AKV');
  tvMasterMetode.Visible := (mKode='AKV');
  if (mKode='PT') then
      tvMasterIsLokalorExim.Caption := 'Kas dan Bank ?'
  else if (mKode='HT')  then
      tvMasterIsLokalorExim.Caption := 'Kas dan Bank ?';
  tvMasterIsLokalorExim.Visible := ((mKode='PT') or (mKode='HT'));
 // tvMasterIsBeliJual.Visible := ((mKode='PT') or (mKode='HT'));
  if mkode='AKV' then
     Width :=1078
  else
     Width :=680;
end;

procedure TFrPostHutPiut.Simpan(Mode:char);
begin
 if (Mode='I') then
 begin
   if ((PersenSusut1.Value+PersenSusut2.Value)=100) and (mKode='AKV')then
   begin
     with QuUpdate do
     begin
        Close;
        SQL.Clear;
        SQL.Add('Insert into dbPostHutPiut(Perkiraan, Kode,Akumulasi, Biaya1, biaya2, PersenBiaya1, PersenBiaya2, urut, Persen, Tipe, IsBelijual, IsLokalOrExim)');
        SQL.Add('Values(:0, :1, :2, :3, :4, :5, :6, :7, :8, :9, :10, :11)');
        Prepared;
        Parameters[0].Value := Perkiraan.Text;
        Parameters[1].Value := mKode;
        Parameters[2].Value := AkSusut.Text;
        Parameters[3].Value := BiayaSusut.Text;
        Parameters[4].Value := BiayaSusut2.Text;
        Parameters[5].Value := PersenSusut1.Value;
        Parameters[6].Value := PersenSusut2.Value;
        Parameters[7].Value := mUrut;
        Parameters[8].Value := Susut.Value;
        Parameters[9].Value := Copy(LM.Text,2,1);
        Parameters[10].Value := IsBeliJual.Checked;
        Parameters[11].Value := IsLokalExim.Checked;
        ExecSQL;
     end
   end
   else if (mKode='AKV') then
   begin
     MessageDlg('Persen 1 + Persen 2 = 100 %',mtWarning,[mbok],0);
   end
   else
   begin
     with QuUpdate do
     begin
        Close;
        SQL.Clear;
        SQL.Add('Insert into dbPostHutPiut(Perkiraan, Kode,Akumulasi, Biaya1, biaya2, PersenBiaya1, PersenBiaya2, urut, Persen, Tipe, IsBelijual, IsLokalOrExim)');
        SQL.Add('Values(:0, :1, :2, :3, :4, :5, :6, :7, :8, :9, :10, :11)');
        Prepared;
        Parameters[0].Value := Perkiraan.Text;
        Parameters[1].Value := mKode;
        Parameters[2].Value := AkSusut.Text;
        Parameters[3].Value := BiayaSusut.Text;
        Parameters[4].Value := BiayaSusut2.Text;
        Parameters[5].Value := PersenSusut1.Value;
        Parameters[6].Value := PersenSusut2.Value;
        Parameters[7].Value := mUrut;
        Parameters[8].Value := Susut.Value;
        Parameters[9].Value := Copy(LM.Text,2,1);
        Parameters[10].Value := IsBeliJual.Checked;
        Parameters[11].Value := IsLokalExim.Checked;
        ExecSQL;
     end
   end;
 end
 else if (Mode='U') then
 begin
   if ((PersenSusut1.Value+PersenSusut2.Value)=100) and (mKode='AKV')then
   begin
     with QuUpdate do
     begin
        Close;
        SQL.Clear;
        SQL.Add('update dbPosthutpiut set Perkiraan=:0, Kode=:1, Akumulasi=:2, Biaya1=:3, biaya2=:4, PersenBiaya1=:5, PersenBiaya2=:6, Persen=:7, Tipe=:8');
        SQL.Add('Where kode='+QuotedStr(mKode)+' and urut='+IntToStr(mUrut));
        Prepared;
        Parameters[0].Value := Perkiraan.Text;
        Parameters[1].Value := mKode;
        Parameters[2].Value := AkSusut.Text;
        Parameters[3].Value := BiayaSusut.Text;
        Parameters[4].Value := BiayaSusut2.Text;
        Parameters[5].Value := PersenSusut1.Value;
        Parameters[6].Value := PersenSusut2.Value;
        Parameters[7].Value := Susut.Value;
        Parameters[8].Value := Copy(LM.Text,2,1);
        ExecSQL;
     end
   end
   else if (mKode='AKV') then
   begin
     MessageDlg('Persen 1 + Persen 2 = 100 %',mtWarning,[mbok],0);
   end
   else
   begin
     with QuUpdate do
     begin
        Close;
        SQL.Clear;
        SQL.Add('update dbPosthutpiut set Perkiraan=:0, Kode=:1, Akumulasi=:2, Biaya1=:3, biaya2=:4, PersenBiaya1=:5, PersenBiaya2=:6, Persen=:7, Tipe=:8,');
        SQl.add('IsBeliJual=:9, IsLokalOrExim=:10');
        SQL.Add('Where kode='+QuotedStr(mKode)+' and urut='+IntToStr(mUrut));
        Prepared;
        Parameters[0].Value := Perkiraan.Text;
        Parameters[1].Value := mKode;
        Parameters[2].Value := AkSusut.Text;
        Parameters[3].Value := BiayaSusut.Text;
        Parameters[4].Value := BiayaSusut2.Text;
        Parameters[5].Value := PersenSusut1.Value;
        Parameters[6].Value := PersenSusut2.Value;
        Parameters[7].Value := Susut.Value;
        Parameters[8].Value := Copy(LM.Text,2,1);
        Parameters[9].Value := IsBeliJual.Checked;
        Parameters[10].Value := IsLokalExim.Checked;
        ExecSQL;
     end
   end;
 end
 else
 if Mode='D' then
 begin
   with QuUpdate do
   begin
      close;
      SQL.Clear;
      SQL.Add('Delete dbPostHutpiut');
      SQL.Add('where kode=:0 and urut=:1 ');
      Prepared;
      Parameters[0].Value:=mKode;
      Parameters[1].Value:=QuSupposUrut.AsInteger;
      ExecSQL;
   end;
 end;
end;


procedure TFrPostHutPiut.RefreshDetail;
begin
   Perkiraan.Text:='';
   Label1.Caption :='[ . . . ]';
   AkSusut.Text:='';
   Label3.Caption :='[ . . . ]';
   BiayaSusut.Text := '';
   BiayaSusut2.Text := '';
   PersenSusut1.Value := 0;
   PersenSusut2.Value := 0;
end;

procedure TFrPostHutPiut.PanelDetail(Mode:Boolean);
begin
  RefreshDetail;
  Panel2.Visible := Mode;
  if mKode='AKV' then
  begin
    Label4.Visible := mode;
    AkSusut.Visible := mode;
    Label3.Visible := mode;
    BiayaSusut.Visible := mode;
    BiayaSusut2.Visible := mode;
    PersenSusut1.Visible := mode;
    PersenSusut2.Visible := mode;
    Label7.Visible := mode;
    Label8.Visible := mode;
    Label5.Visible := mode;
    Label6.Visible := mode;
    Label10.Visible := mode;
    Label11.Visible := mode;
    Susut.Visible := Mode;
    LM.Visible := Mode;
    BitBtn1.Top :=140;
    BitBtn2.Top :=140;
    Panel2.Height :=174;
  end
  else
  begin
    if mKode='PT' then
    begin
      IsLokalExim.Caption := 'Kas dan Bank ?';
    end
    else if mKode='HT'  then
    begin
      IsLokalExim.Caption := 'Kas dan Bank  ?';
    end;
    IsLokalExim.Visible :=((mKode='HT') or (mKode='PT'));
    //IsBeliJual.Visible := (mKode='HT');
    if (mKode='HT') or (mKode='PT') then
    begin
      BitBtn1.Top :=76;
      BitBtn2.Top :=76;
      Panel2.Height :=108;
    end
    else
    begin
      BitBtn1.Top :=44;
      BitBtn2.Top :=44;
      Panel2.Height :=80;
    end;
    Label4.Visible := not mode;
    AkSusut.Visible := Not mode;
    Label3.Visible := not mode;
    BiayaSusut.Visible := not mode;
    BiayaSusut2.Visible := not mode;
    PersenSusut1.Visible := not mode;
    PersenSusut2.Visible := not mode;
    Label7.Visible := not mode;
    Label8.Visible := NOT mode;
    Label5.Visible := not mode;
    Label6.Visible := NOT mode;
    Label10.Visible := not mode;
    Label11.Visible := not mode;
    Susut.Visible := not Mode;
    LM.Visible := not Mode;

  end;
  panel3.Enabled := not mode;
  if Mode=True then
  begin
     ActiveControl:=Perkiraan;
  end else
  begin
     activeControl:=cxGrid1;
  end;
end;

procedure TFrPostHutPiut.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=cafree;
end;

procedure TFrPostHutPiut.SpeedButton4Click(Sender: TObject);
begin
Close;
end;

procedure TFrPostHutPiut.SpeedButton1Click(Sender: TObject);
begin
 if FrPosting.IsTambah then
 begin
   PanelDetail(true);
   mUrut := QuSuppos.RecordCount+1;
   Model:='tambah';
 end else
 begin
     ShowMessage('Anda tidak berhak Menambah Data');
 end;

end;

procedure TFrPostHutPiut.BitBtn2Click(Sender: TObject);
begin
PanelDetail(false);
end;

procedure TFrPostHutPiut.BitBtn1Click(Sender: TObject);
begin
  if Model='tambah' then
  begin
     if (Perkiraan.Text<>'') then
     begin
        inc(mUrut);
        Simpan('I');
        //PanelDetail(false);
        RefreshDetail;
        Tampil;
        ActiveControl := Perkiraan;
     end
     else
     begin
      PanelDetail(false);
     end;
  end
  else
  begin                                                                                  
     Simpan('U');
     PanelDetail(false);
     Tampil;
  end;
end;

procedure TFrPostHutPiut.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_ESCAPE then
begin
   Close;
end
else if key=VK_INSERT then
begin
   SpeedButton1.click;
end
else if key=VK_DELETE then
begin
   SpeedButton3.Click;
end;


end;

procedure TFrPostHutPiut.SpeedButton3Click(Sender: TObject);
begin
 if FrPosting.IsHapus then
 begin
   if QuSupPos.IsEmpty=true then
   begin
      Application.MessageBox('Data Kosong','Informasi'
      ,MB_OK Or MB_ICONWARNING);
   end
   else
   begin
      if (Application.MessageBox('Data diHapus ?','Peringatan',
          MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
      begin
         Simpan('D');
         Tampil;
      end;
   end;
 end else
 begin
     ShowMessage('Anda tidak berhak Menghapus Data');
 end;
end;

procedure TFrPostHutPiut.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0);
end;

procedure TFrPostHutPiut.PerkiraanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_ESCAPE then
  begin
     mValid:=false;
     BitBtn2.Click;
  end
  else if key=vk_Return then
  begin
    if Length(Perkiraan.Text)=0 then
       TampilIsiData(FrPostHutPiut,Perkiraan ,Label1,100400,'Perkiraan','Keterangan')
    else if DataBersyarat('select * from dbperkiraan where Perkiraan=:0',[Perkiraan.text],DM.Qucari) then
    begin
      Perkiraan.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      Label1.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrPostHutPiut,Perkiraan ,Label1,100400,'Perkiraan','Keterangan');
  end;
end;

procedure TFrPostHutPiut.FormShow(Sender: TObject);
begin
  Tampil;
end;

procedure TFrPostHutPiut.FormDestroy(Sender: TObject);
begin
  FrPostHutPiut:=nil;
end;

procedure TFrPostHutPiut.AkSusutEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrPostHutPiut.AkSusutExit(Sender: TObject);
begin
  if (AkSusut.Text<>'-') then
  begin
    SetLength(xValue,2);
    if DataBersyarat('select a.*,b.Keterangan from dbposthutpiut a, dbperkiraan b where a.perkiraan=b.perkiraan and a.perkiraan=:0 and a.Kode=''AKM''',
       [AkSusut.text],DM.Qucari) then
    begin
      AkSusut.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      Label3.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrPostHutPiut,AKSusut ,Label3,100402,'Perkiraan','Keterangan');
  end;
end;

procedure TFrPostHutPiut.BiayaSusutEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrPostHutPiut.BiayaSusutExit(Sender: TObject);
begin
  if BiayaSusut.Text<>'-' then
  begin
    SetLength(xValue,2);
    if DataBersyarat('Select * from dbperkiraan a where a.perkiraan=:0 and tipe=1',
       [BiayaSusut.text],DM.Qucari) then
    begin
      BiayaSusut.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      //Label2.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrPostHutPiut,BiayaSusut ,Label9,1005,'Perkiraan','Keterangan');
  end;
end;

procedure TFrPostHutPiut.BiayaSusut2Enter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrPostHutPiut.BiayaSusut2Exit(Sender: TObject);
begin
  if BiayaSusut2.Text<>'-' then
  begin
    SetLength(xValue,2);
    if (BiayaSusut2.Text='-') or (BiayaSusut2.Text='') then
       PersenSusut2.Value:=0
    else
    if DataBersyarat('Select * from dbperkiraan a where a.perkiraan=:0 and tipe=1',
       [BiayaSusut2.text],DM.Qucari) then
    begin
      BiayaSusut2.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      //Label2.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrPostHutPiut,BiayaSusut2 ,Label9,1005,'Perkiraan','Keterangan');
  end;
end;

procedure TFrPostHutPiut.SpeedButton2Click(Sender: TObject);
begin
 if FrPosting.IsKoreksi then
 begin
   PanelDetail(true);
   AmbilData;
   Model:='koreksi';
 end else
 begin
     ShowMessage('Anda tidak berhak Menambah Data');
 end;
end;

end.
