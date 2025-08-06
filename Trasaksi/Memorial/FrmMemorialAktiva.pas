unit FrmMemorialAktiva;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, PBNumEdit, ExtCtrls, Buttons, db, RXCtrls, Mask, ToolEdit,Variants;

type
  TfrMemorialAktiva = class(TForm)
    BitBtn1: TBitBtn;
    Bevel1: TBevel;
    Label1: TLabel;
    KodeAktiva: TEdit;
    Label3: TLabel;
    Kuantum: TPBNumEdit;
    Label5: TLabel;
    Susut: TPBNumEdit;
    Label4: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    BiayaSusut2: TEdit;
    BiayaSusut: TEdit;
    AkSusut: TEdit;
    Label16: TLabel;
    Label18: TLabel;
    PersenSusut2: TPBNumEdit;
    PersenSusut1: TPBNumEdit;
    Label23: TLabel;
    Keterangan: TMemo;
    Label29: TLabel;
    Bagian: TEdit;
    Label31: TLabel;
    Devisi: TEdit;
    Label32: TLabel;
    Label6: TLabel;
    Perkiraan: TEdit;
    Label26: TLabel;
    TipeAktiva: TComboBox;
    RxLabel1: TRxLabel;
    Label34: TLabel;
    TglPengakuan: TDateEdit;
    Label30: TLabel;
    LM: TComboBox;
    Label2: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Nourut: TEdit;
    BitBtn2: TBitBtn;
    NoUrut2: TEdit;
    Label11: TLabel;
    isHeader: TComboBox;
    Label12: TLabel;
    BiayaSusut3: TEdit;
    PersenSusut3: TPBNumEdit;
    Label13: TLabel;
    Label15: TLabel;
    XSusut: TPBNumEdit;
    PerlakuanAktiva: TComboBox;
    Label17: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ClearEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure AkSusutEnter(Sender: TObject);
    procedure BagianEnter(Sender: TObject);
    procedure BagianExit(Sender: TObject);
    procedure DevisiEnter(Sender: TObject);
    procedure DevisiExit(Sender: TObject);
    procedure PerkiraanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AkSusutExit(Sender: TObject);
    procedure BiayaSusutEnter(Sender: TObject);
    procedure BiayaSusutExit(Sender: TObject);
    procedure BiayaSusut2Exit(Sender: TObject);
    procedure NourutChange(Sender: TObject);
    procedure NourutEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure isHeaderEnter(Sender: TObject);
    procedure isHeaderExit(Sender: TObject);
    procedure BiayaSusut3Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     IsSimpan:Boolean;
     xTipeAktiva : byte;
     StatusAktiva,StsKasBank : String;
     procedure TampilisiHeader;
  end;

var
  frMemorialAktiva: TfrMemorialAktiva;
  mValid:boolean;


implementation
uses myModul,Myprocedure,MyGlobal, Frmbrows,FrmAktiva, FrmMemorial;
{$R *.DFM}

procedure TfrMemorialAktiva.TampilisiHeader;
begin
  KodeBrows:=100412;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeAktiva.Text;
  FrBrows.NoKira :=Perkiraan.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    with FrBrows.QuBrows do
    begin
      if not IsEmpty then
      begin
        Nourut.Text := FieldByname('NoBelakang').AsString;
        TglPengakuan.Date := FieldByname('Tanggal').AsDateTime;
        TipeAktiva.ItemIndex := FieldByname('TipeAktiva').AsInteger;
        Keterangan.Lines.Text :=  FieldByname('Keterangan').AsString;
        Bagian.Text := FieldByname('KodeBag').AsString;
        Kuantum.Value := FieldByname('Quantity').Value;
        Susut.Value := FieldByname('Persen').Value;
        LM.ItemIndex := LM.Items.IndexOf(FieldByname('Metode').AsString);
        AkSusut.Text := FieldByname('Akumulasi').AsString;
        BiayaSusut.Text := FieldByname('Biaya').AsString;
        BiayaSusut2.Text := FieldByname('Biaya2').AsString;
        PersenSusut1.Value := FieldByname('PersenBiaya1').value;
        PersenSusut2.Value := FieldByname('PersenBiaya2').value;
        NoUrut2.Visible := (isHeader.ItemIndex<>0);
        if NoUrut2.CanFocus then
           ActiveControl := NoUrut2;
      end
      else
         ActiveControl:=isHeader;
    end;
  end
  else
    ActiveControl:=isHeader;
end;

procedure TfrMemorialAktiva.ClearEdit;
var i :integer;
begin
   for i:= 0 to frMemorialAktiva.ControlCount-1 do
   begin
      if (frMemorialAktiva.Controls[i] is TEdit) then
         (frMemorialAktiva.Controls[i] as TEdit).Clear;
      if (frMemorialAktiva.Controls[i] is TPBNumEdit) then
         (frMemorialAktiva.Controls[i] as TPBNumEdit).Value:=0;
   end;
   Label32.Caption:='[ . . . ]';
   Label2.Caption:='[ . . . ]';
   Label30.Caption:='[ . . . ]';
   Label26.Caption:='[ . . . ]';
end;

procedure TfrMemorialAktiva.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
 SendMessage(handle,WM_NEXTDLGCTL,0,0)
else if key=VK_ESCAPE then CLOSE; 
end;

procedure TfrMemorialAktiva.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TfrMemorialAktiva.BitBtn1Click(Sender: TObject);
var pDapatDisimpan: Boolean;
begin

  pDapatDisimpan := not FrMemorial.dxAktiva.Locate('Perkiraan;kodebag;Devisi',
                     VarArrayOf([Kodeaktiva.Text, bagian.Text,Devisi.Text]), []);
  if pDapatDisimpan = True then
  begin
    if IsSimpan then
    begin
       FrMemorial.dxAktiva.Edit;
    end
    else
    begin
       FrMemorial.dxAktiva.Insert;
       KodeAktiva.Text:=Perkiraan.Text;
       if NoUrut.Text<>'' then
         KodeAktiva.Text:=KodeAktiva.Text+'.'+NoUrut.Text;
       if NoUrut2.Text<>'' then
         KodeAktiva.Text:=KodeAktiva.Text+'.'+NoUrut2.Text;
    end;
    FrMemorial.dxAktiva.Fieldbyname('Devisi').Value := Devisi.Text;
    FrMemorial.dxAktiva.Fieldbyname('Perkiraan').Value := KodeAktiva.Text;
    FrMemorial.dxAktiva.Fieldbyname('Keterangan').Value := Trim(Keterangan.Text);
    FrMemorial.dxAktiva.Fieldbyname('Quantity').Value := Kuantum.Value;
    FrMemorial.dxAktiva.Fieldbyname('Persen').Value := Susut.Value;
    FrMemorial.dxAktiva.Fieldbyname('Tanggal').Value := TglPengakuan.Date;
    FrMemorial.dxAktiva.Fieldbyname('Tipe').Value := Copy(LM.Text,2,1);
    FrMemorial.dxAktiva.Fieldbyname('kodebag').Value := Bagian.Text;
    FrMemorial.dxAktiva.Fieldbyname('Akumulasi').Value := AkSusut.Text;
    FrMemorial.dxAktiva.Fieldbyname('NoMuka').Value := Perkiraan.Text;
    FrMemorial.dxAktiva.Fieldbyname('Nobelakang').Value := Nourut.Text;
    FrMemorial.dxAktiva.Fieldbyname('Nobelakang2').Value := NoUrut2.Text;
    FrMemorial.dxAktiva.Fieldbyname('Biaya').Value := BiayaSusut.Text;
    FrMemorial.dxAktiva.Fieldbyname('PersenBiaya1').Value := PersenSusut1.Value;
    FrMemorial.dxAktiva.Fieldbyname('Biaya2').Value := BiayaSusut2.Text;
    FrMemorial.dxAktiva.Fieldbyname('PersenBiaya2').Value := PersenSusut2.Value;
    FrMemorial.dxAktiva.Fieldbyname('Biaya3').Value :=BiayaSusut3.Text;
    FrMemorial.dxAktiva.Fieldbyname('PersenBiaya3').Value :=PersenSusut3.Value;
    FrMemorial.dxAktiva.Fieldbyname('Biaya4').Value := '';
    FrMemorial.dxAktiva.Fieldbyname('PersenBiaya4').Value := 0;
    FrMemorial.dxAktiva.Fieldbyname('TipeAktiva').Value := TipeAktiva.ItemIndex;
    FrMemorial.dxAktiva.Fieldbyname('Status').Value := StatusAktiva;
    if isHeader.ItemIndex>0 then
       frMemorial.dxAktiva.Fieldbyname('NoAKtivaHd').Value := Perkiraan.Text+'.'+NoUrut.Text
    else
       FrMemorial.dxAktiva.Fieldbyname('NoAKtivaHd').Value :='';
    frMemorial.dxAktiva.Fieldbyname('Kelompok').Value := isHeader.ItemIndex;
    FrMemorial.dxAktiva.FieldByName('XSusut').Value:= XSusut.Value;
    FrMemorial.XSusut:=XSusut.AsInteger;
    FrMemorial.dxAktiva.FieldByName('PerlakuanAktiva').Value:=PerlakuanAktiva.ItemIndex;

    FrMemorial.dxAktiva.Post;
  end;
  FrMemorial.XSusut:=XSusut.AsInteger;
  StsKasBank :='';
  ModalResult := mrOk;
end;

procedure TfrMemorialAktiva.AkSusutEnter(Sender: TObject);
begin
  mValid := true;
end;

procedure TfrMemorialAktiva.BagianEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TfrMemorialAktiva.BagianExit(Sender: TObject);
begin
  if mValid then
  begin
    if DataBersyarat('select * from DBDEPART where kodedept=:0',[Bagian.text],DM.Qucari) then
    begin
      Bagian.Text :=DM.QuCari.FieldByname('Kodebag').AsString;
      Label30.Caption:='[ '+DM.QuCari.FieldByname('Namabag').AsString+' ]';
    end
    else
      TampilIsiData(frMemorialAktiva,Bagian ,Label30,1002,'kodebag','Namabag');
  end;
end;

procedure TfrMemorialAktiva.DevisiEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TfrMemorialAktiva.DevisiExit(Sender: TObject);
begin
  if mValid then
  begin
    if DataBersyarat('select * from dbDevisi where Devisi=:0',[Devisi.text],DM.Qucari) then
    begin
      Devisi.Text :=DM.QuCari.FieldByname('Devisi').AsString;
      Label32.Caption:='[ '+DM.QuCari.FieldByname('NamaDevisi').AsString+' ]';
    end
    else
      TampilIsiData(frMemorialAktiva,Devisi ,Label32,1004,'Devisi','NamaDevisi');
    Nourut.Text := UrutAktiva(Perkiraan.Text,Devisi.Text,5);
    KodeAktiva.Text:=Perkiraan.Text+'.'+Nourut.Text;
  end;
end;

procedure TfrMemorialAktiva.PerkiraanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_Return then
  begin
    if DataBersyarat('select a.*,b.Keterangan from dbposthutpiut a,dbperkiraan b where a.perkiraan=b.perkiraan and a.perkiraan=:0 and a.Kode=''AKV''',[Perkiraan.text],DM.Qucari) then
    begin
      perkiraan.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      Label26.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(frMemorialAktiva,Perkiraan ,Label26,100401,'Perkiraan','Keterangan');
   
  end;
end;

procedure TfrMemorialAktiva.AkSusutExit(Sender: TObject);
begin
  SetLength(xValue,2);
  if DataBersyarat('select a.*,b.Keterangan from dbposthutpiut a,dbperkiraan b where a.perkiraan=b.perkiraan and a.perkiraan=:0 and a.Kode=''AKM''',
     [AkSusut.text],DM.Qucari) then
  begin
    AkSusut.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
    Label2.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
  end
  else
    TampilIsiData(frMemorialAktiva,AKSusut ,Label2,100402,'Perkiraan','Keterangan');
end;

procedure TfrMemorialAktiva.BiayaSusutEnter(Sender: TObject);
begin
  mValid := true;
end;

procedure TfrMemorialAktiva.BiayaSusutExit(Sender: TObject);
begin
  SetLength(xValue,2);
  if DataBersyarat('Select * from dbperkiraan a where a.perkiraan=:0 and tipe=1',
     [BiayaSusut.text],DM.Qucari) then
  begin
    BiayaSusut.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
    //Label2.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
  end
  else
    TampilIsiData(frMemorialAktiva,BiayaSusut ,Label8,1005,'Perkiraan','Keterangan');
end;

procedure TfrMemorialAktiva.BiayaSusut2Exit(Sender: TObject);
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
    TampilIsiData(frMemorialAktiva, BiayaSusut2 ,Label8,1005,'Perkiraan','Keterangan');
end;

procedure TfrMemorialAktiva.NourutChange(Sender: TObject);
begin
  if (mValid) and (IsSimpan) then
     KodeAktiva.Text:=Perkiraan.Text+'.'+Nourut.Text;
end;

procedure TfrMemorialAktiva.NourutEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TfrMemorialAktiva.FormShow(Sender: TObject);
var i : integer;
begin
  if StsKasBank='U' then
  begin
    for i := 0 to frMemorialAktiva.ControlCount-1 do
    begin
      if (frMemorialAktiva.Controls[i] is TEdit) then
         (frMemorialAktiva.Controls[i] as TEdit).Enabled := False;
      if (frMemorialAktiva.Controls[i] is TDateEdit) then
         (frMemorialAktiva.Controls[i] as TDateEdit).Enabled := False;
      if (frMemorialAktiva.Controls[i] is TPBNumEdit) then
         (frMemorialAktiva.Controls[i] as TPBNumEdit).Enabled := False;
      if (frMemorialAktiva.Controls[i] is TMemo) then
         (frMemorialAktiva.Controls[i] as TMemo).Enabled := False;
      if (frMemorialAktiva.Controls[i] is TComboBox) then
         (frMemorialAktiva.Controls[i] as TComboBox).Enabled := False;
    end;
    XSusut.Enabled:=true;
  end
  else
  begin
    for i := 0 to frMemorialAktiva.ControlCount-1 do
    begin
      if (frMemorialAktiva.Controls[i] is TEdit) then
         (frMemorialAktiva.Controls[i] as TEdit).Enabled := (xStatusBrows<>Mrok);
      if (frMemorialAktiva.Controls[i] is TPBNumEdit) then
         (frMemorialAktiva.Controls[i] as TPBNumEdit).Enabled := (xStatusBrows<>Mrok);
      if (frMemorialAktiva.Controls[i] is TMemo) then
         (frMemorialAktiva.Controls[i] as TMemo).Enabled := (xStatusBrows<>Mrok);
      if (frMemorialAktiva.Controls[i] is TDateEdit) then
         (frMemorialAktiva.Controls[i] as TDateEdit).Enabled := (xStatusBrows<>Mrok);
      if (frMemorialAktiva.Controls[i] is TComboBox) then
         (frMemorialAktiva.Controls[i] as TComboBox).Enabled := (xStatusBrows<>Mrok);
    end;
    XSusut.Enabled:=true;
  end;
  if not FrMemorial.dxAktiva.Active then
     FrMemorial.TampilDataAktiva(FrMemorial.NoAktivaP,FrMemorial.NoAktivaL,FrMemorial.Perkiraan.Text,FrMemorial.Lawan.text,FrMemorial.Devisi.text,FrMemorial.kodebag.text);
end;

procedure TfrMemorialAktiva.BitBtn2Click(Sender: TObject);
begin
  FrMemorial.QuAktiva.Close;
  FrMemorial.dxAktiva.Close;
  StsKasBank :='';
  close;
end;

procedure TfrMemorialAktiva.isHeaderEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TfrMemorialAktiva.isHeaderExit(Sender: TObject);
begin
  if (mValid)  then
  begin
    Nourut.Text := UrutAktiva(Perkiraan.Text,Devisi.Text,5);
    KodeAktiva.Text:=Perkiraan.Text+'.'+Nourut.Text;
    if isHeader.ItemIndex>0 then
    begin
      TampilisiHeader;
      NoUrut2.Text := UrutAktiva2(Perkiraan.Text+'.'+Nourut.Text,Devisi.Text,5);
      KodeAktiva.Text := Perkiraan.Text+'.'+Nourut.Text+'.'+NoUrut2.Text;
    end;
  end;
end;

procedure TfrMemorialAktiva.BiayaSusut3Exit(Sender: TObject);
begin
   SetLength(xValue,2);
  if (BiayaSusut3.Text='-') or (BiayaSusut3.Text='') then
     PersenSusut3.Value:=0
  else
  if DataBersyarat('Select * from dbperkiraan a where a.perkiraan=:0 and tipe=1',
     [BiayaSusut3.text],DM.Qucari) then
  begin
    BiayaSusut3.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
    //Label2.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
  end
  else
    TampilIsiData(frMemorialAktiva,BiayaSusut3 ,Label8,1005,'Perkiraan','Keterangan');
end;

end.
