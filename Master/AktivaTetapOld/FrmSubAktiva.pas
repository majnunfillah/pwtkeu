unit FrmSubAktiva;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, PBNumEdit, ExtCtrls, Buttons, db, RXCtrls, Mask, ToolEdit;

type
  TfrSubAktiva = class(TForm)
    BitBtn3: TBitBtn;
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
    NoUrut2: TEdit;
    isHeader: TComboBox;
    Label11: TLabel;
    Label12: TLabel;
    BiayaSusut3: TEdit;
    PersenSusut3: TPBNumEdit;
    Label13: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ClearEdit;
    procedure BitBtn3Click(Sender: TObject);
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
    procedure NourutExit(Sender: TObject);
    procedure NoUrut2Exit(Sender: TObject);
    procedure isHeaderEnter(Sender: TObject);
    procedure isHeaderExit(Sender: TObject);
    procedure BiayaSusut3Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     IsSimpan:Boolean;
     xTipeAktiva : byte;
     xTipe,xAkumulasi,xBiaya1,xBiaya2 : String;
     xPersen,xPbiaya1,xPBiaya2 : Real;
     procedure TampilisiHeader;
  end;

var
  frSubAktiva: TfrSubAktiva;
  mValid:boolean;


implementation
uses myModul,Myprocedure,MyGlobal, Frmbrows,FrmAktiva;
{$R *.DFM}
procedure TfrSubAktiva.TampilisiHeader;
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


procedure TfrSubAktiva.ClearEdit;
var i :integer;
begin
   mValid := False;
   for i:= 0 to frSubAktiva.ControlCount-1 do
   begin
      if (frSubAktiva.Controls[i] is TEdit) then
         (frSubAktiva.Controls[i] as TEdit).Clear;
      if (frSubAktiva.Controls[i] is TPBNumEdit) then
         (frSubAktiva.Controls[i] as TPBNumEdit).Value:=0;
   end;
   Label32.Caption:='[ . . . ]';
   Label2.Caption:='[ . . . ]';
   Label30.Caption:='[ . . . ]';
   Label26.Caption:='[ . . . ]';
   isHeader.ItemIndex :=0;
   Keterangan.Lines.Text :='';
   TglPengakuan.Text :='  /  /    '
end;

procedure TfrSubAktiva.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
 SendMessage(handle,WM_NEXTDLGCTL,0,0)
else if key=VK_ESCAPE then CLOSE; 
end;

procedure TfrSubAktiva.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TfrSubAktiva.BitBtn3Click(Sender: TObject);
var s :string;
    x : byte;
begin
   x:=0;
  if (PersenSusut1.Value+PersenSusut2.Value+PersenSusut3.Value)=100 then
  begin
    if IsSimpan=true then
    begin
      with FrAktiva do
      begin

           UpdateDataAktivaTetap('I');
        ClearEdit;
        frSubAktiva.ActiveControl := frSubAktiva.Perkiraan;
      end;
    end
    else
    begin
     if TglPengakuan.Text<>'  /  /    ' then
     begin
       if Susut.AsFloat=0 then
       begin
          x := 1;
          s := 'Persentase Susut tidak boleh Kosong ';
       end
       else if LM.Text='' then
       begin
          x := 2;
          S := 'Tipe Penyusutan tidak boleh Kosong '
       end
       else if AkSusut.Text='' then
       begin
          x := 3;
          s := 'Perkiraan Akumulasi tidak boleh kosong'
       end
       else if BiayaSusut.Text='' then
       begin
          x := 4;
          s := 'Perkiraan Biaya Susut tidak boleh kosong'
       end
       else if PersenSusut1.AsFloat=0 then
       begin
          x := 5;
          s := 'Persentasi Biaya Susut tidak boleh kosong';
       end;
       if x<>0 then
          MessageDlg(S,mtWarning,[MbOk],0);
       case x of
         1 : ActiveControl := Susut;
         2 : ActiveControl := LM;
         3 : ActiveControl := AkSusut;
         4 : ActiveControl := BiayaSusut;
         5 : ActiveControl := PersenSusut1;
         else begin
                with FrAktiva do
                begin
                  UpdateDataAktivaTetap('U');
                end;
                ModalResult := mrOk;
              end;
       end;
     end;
    end;
  end else
  begin
    MessageDlg('Persen 1 + Persen 2 = 100 %',mtWarning,[mbok],0);
  end;
end;

procedure TfrSubAktiva.AkSusutEnter(Sender: TObject);
begin
  mValid := true;
end;

procedure TfrSubAktiva.BagianEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TfrSubAktiva.BagianExit(Sender: TObject);
begin
  if mValid then
  begin
    if DataBersyarat('select * from dbbagian where kodebag=:0',[Bagian.text],DM.Qucari) then
    begin
      Bagian.Text :=DM.QuCari.FieldByname('Kodebag').AsString;
      Label30.Caption:='[ '+DM.QuCari.FieldByname('Namabag').AsString+' ]';
    end
    else
      TampilIsiData(frSubAktiva,Bagian ,Label30,1002,'kodebag','Namabag');
  end;
end;

procedure TfrSubAktiva.DevisiEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TfrSubAktiva.DevisiExit(Sender: TObject);
begin
  if mValid then
  begin
    if DataBersyarat('select * from dbDevisi where Devisi=:0',[Devisi.text],DM.Qucari) then
    begin
      Devisi.Text :=DM.QuCari.FieldByname('Devisi').AsString;
      Label32.Caption:='[ '+DM.QuCari.FieldByname('NamaDevisi').AsString+' ]';
    end
    else
      TampilIsiData(frSubAktiva,Devisi ,Label32,1004,'Devisi','NamaDevisi');
  end;
end;

procedure TfrSubAktiva.PerkiraanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_Return then
  begin
    setlength(xValue,2);
    if DataBersyarat('select a.*,b.Keterangan from dbposthutpiut a,dbperkiraan b where a.perkiraan=b.perkiraan and a.perkiraan=:0 and a.Kode=''AKV''',[Perkiraan.text],DM.Qucari) then
    begin
      perkiraan.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      Label26.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(frSubAktiva,Perkiraan ,Label26,100401,'Perkiraan','Keterangan');
    IsiDataAktiva(Perkiraan.Text,xTipe,xAkumulasi,xBiaya1,xBiaya2,xPersen,xPbiaya1,xPBiaya2);
    LM.ItemIndex := LM.Items.IndexOf(xTipe);
    AkSusut.Text := xAkumulasi;
    BiayaSusut.Text := xBiaya1;
    BiayaSusut2.Text := xBiaya2;
    PersenSusut1.Value := xPbiaya1;
    PersenSusut2.Value := xPBiaya2;
    Susut.Value := xPersen;
  end;

end;

procedure TfrSubAktiva.AkSusutExit(Sender: TObject);
begin
  SetLength(xValue,2);
  if DataBersyarat('select a.*,b.Keterangan from dbposthutpiut a,dbperkiraan b where a.perkiraan=b.perkiraan and a.perkiraan=:0 and a.Kode=''AKM''',
     [AkSusut.text],DM.Qucari) then
  begin
    AkSusut.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
    Label2.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
  end
  else
    TampilIsiData(frSubAktiva,AKSusut ,Label2,100402,'Perkiraan','Keterangan');
end;

procedure TfrSubAktiva.BiayaSusutEnter(Sender: TObject);
begin
  mValid := true;
end;

procedure TfrSubAktiva.BiayaSusutExit(Sender: TObject);
begin
  SetLength(xValue,2);
  if DataBersyarat('Select * from dbperkiraan a where a.perkiraan=:0 and tipe=1',
     [BiayaSusut.text],DM.Qucari) then
  begin
    BiayaSusut.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
    //Label2.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
  end
  else
    TampilIsiData(frSubAktiva,BiayaSusut ,Label8,1005,'Perkiraan','Keterangan');
end;

procedure TfrSubAktiva.BiayaSusut2Exit(Sender: TObject);
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
    TampilIsiData(frSubAktiva,BiayaSusut2 ,Label8,1005,'Perkiraan','Keterangan');
end;

procedure TfrSubAktiva.NourutChange(Sender: TObject);
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

procedure TfrSubAktiva.NourutEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TfrSubAktiva.FormShow(Sender: TObject);
begin
  if IsSimpan=true then
     TglPengakuan.Date := date;
  Perkiraan.Enabled := IsSimpan;
  Nourut.Enabled := IsSimpan;
  NoUrut2.Enabled:=IsSimpan;
  Devisi.Enabled := IsSimpan;
end;

procedure TfrSubAktiva.NourutExit(Sender: TObject);
begin
  If (mValid) and (Length(NoUrut.Text)<5) then
  begin
    MessageDlg('Nomor urut kurang '+InttoStr(5-Length(NoUrut.Text))+' digit.',mtWarning,[MbOk],0);
    ActiveControl := NoUrut;
  end
end;

procedure TfrSubAktiva.NoUrut2Exit(Sender: TObject);
begin
  If (mValid) and (Length(NoUrut2.Text)<5) then
  begin
    MessageDlg('Nomor urut kurang '+InttoStr(5-Length(NoUrut2.Text))+' digit.',mtWarning,[MbOk],0);
    ActiveControl := NoUrut2;
  end;
end;

procedure TfrSubAktiva.isHeaderEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TfrSubAktiva.isHeaderExit(Sender: TObject);
begin
  if (mValid) and (IsSimpan) then
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

procedure TfrSubAktiva.BiayaSusut3Exit(Sender: TObject);
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
    TampilIsiData(frSubAktiva,BiayaSusut3 ,Label8,1005,'Perkiraan','Keterangan');
end;

end.
