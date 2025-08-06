unit FrmKasBankAktiva;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, PBNumEdit, ExtCtrls, Buttons, db, RXCtrls, Mask, ToolEdit,Variants;

type
  TfrKasBankAktiva = class(TForm)
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
    NoUrut: TEdit;
    BitBtn2: TBitBtn;
    NoUrut2: TEdit;
    Label11: TLabel;
    isHeader: TComboBox;
    Label12: TLabel;
    BiayaSusut3: TEdit;
    PersenSusut3: TPBNumEdit;
    Label13: TLabel;
    XSusut: TPBNumEdit;
    Label15: TLabel;
    PerlakuanAktiva: TComboBox;
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
    procedure NoUrutChange(Sender: TObject);
    procedure NoUrutEnter(Sender: TObject);
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
  frKasBankAktiva: TfrKasBankAktiva;
  mValid:boolean;


implementation
uses myModul,Myprocedure,MyGlobal, Frmbrows,FrmAktiva, FrmKasBank;
{$R *.DFM}

procedure TfrKasBankAktiva.TampilisiHeader;
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

procedure TfrKasBankAktiva.ClearEdit;
var i :integer;
begin
   for i:= 0 to frKasBankAktiva.ControlCount-1 do
   begin
      if (frKasBankAktiva.Controls[i] is TEdit) then
         (frKasBankAktiva.Controls[i] as TEdit).Clear;
      if (frKasBankAktiva.Controls[i] is TPBNumEdit) then
         (frKasBankAktiva.Controls[i] as TPBNumEdit).Value:=0;
   end;
   Label32.Caption:='[ . . . ]';
   Label2.Caption:='[ . . . ]';
   Label30.Caption:='[ . . . ]';
   Label26.Caption:='[ . . . ]';
end;

procedure TfrKasBankAktiva.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
 SendMessage(handle,WM_NEXTDLGCTL,0,0)
else if key=VK_ESCAPE then CLOSE;
end;

procedure TfrKasBankAktiva.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TfrKasBankAktiva.BitBtn1Click(Sender: TObject);
var pDapatDisimpan: Boolean;
begin
  pDapatDisimpan := not FrKasBank.dxAktiva.Locate('Perkiraan;kodebag;Devisi', VarArrayOf([Kodeaktiva.Text, bagian.Text,Devisi.Text]), []);
  if pDapatDisimpan = True then
  begin
    if IsSimpan then
    begin
       FrKasBank.dxAktiva.Edit;
    end
    else
    begin
       FrKasBank.dxAktiva.Insert;
       KodeAktiva.Text:=Perkiraan.Text;
       if NoUrut.Text<>'' then
         KodeAktiva.Text:=KodeAktiva.Text+'.'+NoUrut.Text;
       if NoUrut2.Text<>'' then
         KodeAktiva.Text:=KodeAktiva.Text+'.'+NoUrut2.Text;
    end;
    FrKasBank.dxAktiva.Fieldbyname('Devisi').Value := Devisi.Text;
    FrKasBank.dxAktiva.Fieldbyname('Perkiraan').Value := KodeAktiva.Text;
    FrKasBank.dxAktiva.Fieldbyname('Keterangan').Value := Trim(Keterangan.Text);
    FrKasBank.dxAktiva.Fieldbyname('Quantity').Value := Kuantum.Value;
    FrKasBank.dxAktiva.Fieldbyname('Persen').Value := Susut.Value;
    FrKasBank.dxAktiva.Fieldbyname('Tanggal').Value := TglPengakuan.Date;
    FrKasBank.dxAktiva.Fieldbyname('Tipe').Value := Copy(LM.Text,2,1);
    FrKasBank.dxAktiva.Fieldbyname('kodebag').Value := Bagian.Text;
    FrKasBank.dxAktiva.Fieldbyname('Akumulasi').Value := AkSusut.Text;
    FrKasBank.dxAktiva.Fieldbyname('NoMuka').Value := Perkiraan.Text;
    FrKasBank.dxAktiva.Fieldbyname('Nobelakang').Value := Nourut.Text;
    FrKasBank.dxAktiva.Fieldbyname('Nobelakang2').Value := NoUrut2.Text;
    FrKasBank.dxAktiva.Fieldbyname('Biaya').Value := BiayaSusut.Text;
    FrKasBank.dxAktiva.Fieldbyname('PersenBiaya1').Value := PersenSusut1.Value;
    FrKasBank.dxAktiva.Fieldbyname('Biaya2').Value := BiayaSusut2.Text;
    FrKasBank.dxAktiva.Fieldbyname('PersenBiaya2').Value := PersenSusut2.Value;
    FrKasBank.dxAktiva.Fieldbyname('Biaya3').Value :=BiayaSusut3.Text;
    FrKasBank.dxAktiva.Fieldbyname('PersenBiaya3').Value :=PersenSusut3.Value;
    FrKasBank.dxAktiva.Fieldbyname('Biaya4').Value := '';
    FrKasBank.dxAktiva.Fieldbyname('PersenBiaya4').Value := 0;
    FrKasBank.dxAktiva.Fieldbyname('TipeAktiva').Value := TipeAktiva.ItemIndex;
    FrKasBank.dxAktiva.Fieldbyname('Status').Value := StatusAktiva;
    if isHeader.ItemIndex>0 then
       FrKasBank.dxAktiva.Fieldbyname('NoAKtivaHd').Value := Perkiraan.Text+'.'+NoUrut.Text
    else
       FrKasBank.dxAktiva.Fieldbyname('NoAKtivaHd').Value :='';
    FrKasBank.dxAktiva.Fieldbyname('Kelompok').Value := isHeader.ItemIndex;
    FrKasBank.dxAktiva.FieldByName('XSusut').Value:= XSusut.Value;
    FrKasBank.XSusut:=XSusut.AsInteger;
    FrKasBank.dxAktiva.FieldByName('PerlakuanAktiva').Value:=PerlakuanAktiva.ItemIndex;
    FrKasBank.dxAktiva.Post;
  end;
  StsKasBank :='';
  FrKasBank.XSusut:=XSusut.AsInteger;
  ModalResult := mrOk;
end;

procedure TfrKasBankAktiva.AkSusutEnter(Sender: TObject);
begin
  mValid := true;
end;

procedure TfrKasBankAktiva.BagianEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TfrKasBankAktiva.BagianExit(Sender: TObject);
begin
  if mValid then
  begin
    if DataBersyarat('select * from dbbagian where kodebag=:0',[Bagian.text],DM.Qucari) then
    begin
      Bagian.Text :=DM.QuCari.FieldByname('Kodebag').AsString;
      Label30.Caption:='[ '+DM.QuCari.FieldByname('Namabag').AsString+' ]';
    end
    else
      TampilIsiData(frKasBankAktiva,Bagian ,Label30,1002,'kodebag','Namabag');
  end;
end;

procedure TfrKasBankAktiva.DevisiEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TfrKasBankAktiva.DevisiExit(Sender: TObject);
begin
  if mValid then
  begin
    if DataBersyarat('select * from dbDevisi where Devisi=:0',[Devisi.text],DM.Qucari) then
    begin
      Devisi.Text :=DM.QuCari.FieldByname('Devisi').AsString;
      Label32.Caption:='[ '+DM.QuCari.FieldByname('NamaDevisi').AsString+' ]';
    end
    else
      TampilIsiData(frKasBankAktiva,Devisi ,Label32,1004,'Devisi','NamaDevisi');
    //Nourut.Text := UrutAktiva(Perkiraan.Text,Devisi.Text,5);
    //KodeAktiva.Text:=Perkiraan.Text+'.'+Nourut.Text;
  end;
end;

procedure TfrKasBankAktiva.PerkiraanKeyDown(Sender: TObject; var Key: Word;
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
      TampilIsiData(frKasBankAktiva,Perkiraan ,Label26,100401,'Perkiraan','Keterangan');   
  end;
end;

procedure TfrKasBankAktiva.AkSusutExit(Sender: TObject);
begin
  SetLength(xValue,2);
  if DataBersyarat('select a.*,b.Keterangan from dbposthutpiut a,dbperkiraan b where a.perkiraan=b.perkiraan and a.perkiraan=:0 and a.Kode=''AKM''',
     [AkSusut.text],DM.Qucari) then
  begin
    AkSusut.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
    Label2.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
  end
  else
    TampilIsiData(frKasBankAktiva,AKSusut ,Label2,100402,'Perkiraan','Keterangan');
end;

procedure TfrKasBankAktiva.BiayaSusutEnter(Sender: TObject);
begin
  mValid := true;
end;

procedure TfrKasBankAktiva.BiayaSusutExit(Sender: TObject);
begin
  SetLength(xValue,2);
  if DataBersyarat('Select * from dbperkiraan a where a.perkiraan=:0 and tipe=1',
     [BiayaSusut.text],DM.Qucari) then
  begin
    BiayaSusut.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
    //Label2.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
  end
  else
    TampilIsiData(frKasBankAktiva,BiayaSusut ,Label8,1005,'Perkiraan','Keterangan');
end;

procedure TfrKasBankAktiva.BiayaSusut2Exit(Sender: TObject);
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
    TampilIsiData(frKasBankAktiva, BiayaSusut2 ,Label8,1005,'Perkiraan','Keterangan');
end;

procedure TfrKasBankAktiva.NoUrutChange(Sender: TObject);
begin
  if (mValid) and (IsSimpan) then
  begin
    if Length(NoUrut.Text)=5 then
    begin
      if NoUrut2.Text='' then
         KodeAktiva.Text:=Perkiraan.Text+'.'+Nourut.Text
      else
         KodeAktiva.Text:=Perkiraan.Text+'.'+Nourut.Text+'.'+NoUrut2.Text;
    end
    else
      ActiveControl:=NoUrut;
  end;
end;

procedure TfrKasBankAktiva.NoUrutEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TfrKasBankAktiva.FormShow(Sender: TObject);
var i : integer;
begin
  if StsKasBank='U' then
  begin
    for i := 0 to frKasBankAktiva.ControlCount-1 do
    begin
      if (frKasBankAktiva.Controls[i] is TEdit) then
         (frKasBankAktiva.Controls[i] as TEdit).Enabled := False;
      if (frKasBankAktiva.Controls[i] is TDateEdit) then
         (frKasBankAktiva.Controls[i] as TDateEdit).Enabled := False;
      if (frKasBankAktiva.Controls[i] is TPBNumEdit) then
         (frKasBankAktiva.Controls[i] as TPBNumEdit).Enabled := False;
      if (frKasBankAktiva.Controls[i] is TMemo) then
         (frKasBankAktiva.Controls[i] as TMemo).Enabled := False;
      if (frKasBankAktiva.Controls[i] is TComboBox) then
         (frKasBankAktiva.Controls[i] as TComboBox).Enabled := False;
    end;
    XSusut.Enabled:=true;
  end
  else
  begin
    for i := 0 to frKasBankAktiva.ControlCount-1 do
    begin
      if (frKasBankAktiva.Controls[i] is TEdit) then
         (frKasBankAktiva.Controls[i] as TEdit).Enabled := (xStatusBrows<>Mrok);
      if (frKasBankAktiva.Controls[i] is TPBNumEdit) then
         (frKasBankAktiva.Controls[i] as TPBNumEdit).Enabled := (xStatusBrows<>Mrok);
      if (frKasBankAktiva.Controls[i] is TMemo) then
         (frKasBankAktiva.Controls[i] as TMemo).Enabled := (xStatusBrows<>Mrok);
      if (frKasBankAktiva.Controls[i] is TDateEdit) then
         (frKasBankAktiva.Controls[i] as TDateEdit).Enabled := (xStatusBrows<>Mrok);
      if (frKasBankAktiva.Controls[i] is TComboBox) then
         (frKasBankAktiva.Controls[i] as TComboBox).Enabled := (xStatusBrows<>Mrok);
    end;
    XSusut.Enabled:=true;
  end;
  if not FrKasBank.dxAktiva.Active then
     FrKasBank.TampilDataAktiva(FrKasBank.NoAktivaP,FrKasBank.NoAktivaL,FrKasBank.Perkiraan.Text,FrKasBank.Lawan.text,FrKasBank.Devisi.text,FrKasBank.kodebag.text);
end;

procedure TfrKasBankAktiva.BitBtn2Click(Sender: TObject);
begin
  FrKasBank.QuAktiva.Close;
  FrKasBank.dxAktiva.Close;
  StsKasBank :='';
  close;
end;

procedure TfrKasBankAktiva.isHeaderEnter(Sender: TObject);
begin
  mValid :=True;
end;

procedure TfrKasBankAktiva.isHeaderExit(Sender: TObject);
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

procedure TfrKasBankAktiva.BiayaSusut3Exit(Sender: TObject);
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
    TampilIsiData(frKasBankAktiva,BiayaSusut3 ,Label8,1005,'Perkiraan','Keterangan');
end;

end.
