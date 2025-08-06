unit FrmTransAktiva;


interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,  ExtCtrls, Buttons, PBNumEdit,db, Mask, ToolEdit, ADODB;

type
  TFrtransAktiva = class(TForm)
    Keterangan: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    Label3: TLabel;
    Quantity: TPBNumEdit;
    Image1: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Bevel2: TBevel;
    Perkiraan: TEdit;
    Persen: TPBNumEdit;
    Tanggal: TDateEdit;
    Tipe: TEdit;
    Akumulasi: TEdit;
    Biaya: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    mKode: TEdit;
    Sp_aktivatetap: TADOStoredProc;
    Label13: TLabel;
    BiayaSusut2: TEdit;
    Label15: TLabel;
    PersenSusut2: TPBNumEdit;
    PersenSusut1: TPBNumEdit;
    Label14: TLabel;
    BiayaSusut3: TEdit;
    PersenSusut3: TPBNumEdit;
    BiayaSusut4: TEdit;
    PersenSusut4: TPBNumEdit;
    Label12: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    xMode: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TipeKeyPress(Sender: TObject; var Key: Char);
    procedure PerkiraanEnter(Sender: TObject);
    procedure PerkiraanExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure AkumulasiExit(Sender: TObject);
    procedure AkumulasiEnter(Sender: TObject);
    procedure BiayaExit(Sender: TObject);
    Procedure UpdateDataAktivaTetap(Choice:Char);
    procedure BiayaSusut2Exit(Sender: TObject);
    procedure BiayaSusut2Enter(Sender: TObject);
    procedure BiayaEnter(Sender: TObject);
    procedure BiayaSusut3Exit(Sender: TObject);
    procedure BiayaSusut3Enter(Sender: TObject);
    procedure BiayaSusut4Enter(Sender: TObject);
    procedure BiayaSusut4Exit(Sender: TObject);
    procedure TipeExit(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FrtransAktiva: TFrtransAktiva;
  mValid:Boolean;
implementation
uses MyGlobal,Myprocedure, MyModul, FrmKasBank,FrmBrows;
{$R *.DFM}


Procedure TFrtransAktiva.UpdateDataAktivaTetap(Choice:Char);
begin
  With Sp_AktivaTetap do
  begin
    //  Prepared;
    if Choice='I' then
    begin
      Parameters[1].Value := Choice;
      Parameters[2].Value  := mDevisi;
      Parameters[3].Value  := FrtransAktiva.mKode.Text+FrtransAktiva.Perkiraan.Text;
      Parameters[4].Value  := FrtransAktiva.Keterangan.Text;
      Parameters[5].Value  := FrtransAktiva.Quantity.AsFloat;
      Parameters[6].Value  := FrtransAktiva.Persen.AsFloat;
      Parameters[7].Value  := FrtransAktiva.Tanggal.Date;
      Parameters[8].Value  := FrtransAktiva.Tipe.text;
      Parameters[9].Value  := FrtransAktiva.Akumulasi.text;
      Parameters[10].Value := FrtransAktiva.Biaya.text;
      Parameters[11].Value  := FrtransAktiva.mKode.text;
      Parameters[12].Value  := FrtransAktiva.Perkiraan.Text;
      Parameters[13].Value  := FrtransAktiva.BiayaSusut2.text;
      Parameters[14].Value  := FrtransAktiva.PersenSusut1.Value;
      Parameters[15].Value := FrtransAktiva.PersenSusut2.Value;
      Parameters[16].Value := FrtransAktiva.BiayaSusut3.text;
      Parameters[17].Value := FrtransAktiva.PersenSusut3.Value;
      Parameters[18].Value := FrtransAktiva.BiayaSusut4.text;
      Parameters[19].Value := FrtransAktiva.PersenSusut4.Value;

    end else if Choice='U' then
    begin
      Parameters[1].Value := Choice;
      Parameters[2].Value  := mDevisi;
      Parameters[3].Value  := FrtransAktiva.Perkiraan.Text;
      Parameters[4].Value  := FrtransAktiva.Keterangan.Text;
      Parameters[5].Value  := FrtransAktiva.Quantity.AsFloat;
      Parameters[6].Value  := FrtransAktiva.Persen.AsFloat;
      Parameters[7].Value  := FrtransAktiva.Tanggal.Date;
      Parameters[8].Value  := FrtransAktiva.Tipe.text;
      Parameters[9].Value  := FrtransAktiva.Akumulasi.text;
      Parameters[10].Value := FrtransAktiva.Biaya.text;
      Parameters[11].Value  := FrtransAktiva.mKode.text;
      Parameters[12].Value  := FrtransAktiva.Perkiraan.Text;
      Parameters[13].Value  := FrtransAktiva.BiayaSusut2.text;
      Parameters[14].Value  := FrtransAktiva.PersenSusut1.Value;
      Parameters[15].Value := FrtransAktiva.PersenSusut2.Value;
      Parameters[16].Value := FrtransAktiva.BiayaSusut3.text;
      Parameters[17].Value := FrtransAktiva.PersenSusut3.Value;
      Parameters[18].Value := FrtransAktiva.BiayaSusut4.text;
      Parameters[19].Value := FrtransAktiva.PersenSusut4.Value;

    end;
    try
      execproc;
    except
      showmessage('Proses Gagal !');
    end;
  end;
end;

procedure TFrtransAktiva.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFrtransAktiva.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

procedure TFrtransAktiva.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0)
else if key=27 then close;
end;

procedure TFrtransAktiva.TipeKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['L','l','M','m','P','p',chr(vk_delete),chr(vk_return),chr(vk_back)] ) then
  begin
    //Mode.KeyDown(Key, Shift);
    Key :=chr(0);
  end;
end;

procedure TFrtransAktiva.PerkiraanEnter(Sender: TObject);
begin
mValid:=true;
end;

procedure TFrtransAktiva.PerkiraanExit(Sender: TObject);
var S :string;
begin
if mValid then
begin
   S:=mkode.Text+perKiraan.Text;
   if DataBersyarat('Select * from dbaktiva where devisi=:0 and perkiraan=:1',[mDevisi,S],dm.qucari)=true then
   begin
      ShowMessage('Data Sudah Ada !');
      ActiveControl:=Perkiraan;
   end
end;
end;

procedure TFrtransAktiva.BitBtn1Click(Sender: TObject);
begin
if (PersenSusut1.Value+PersenSusut2.Value+PersenSusut3.Value+PersenSusut4.Value)=100 then
begin
   if mKode.Visible=false then
   begin
      frKasBank.NoAktivaP:=Perkiraan.Text;
      if frKasBank.StatusAktivaP='+' then
      begin
         UpdateDataAktivaTetap('U');
      end;
      ModalResult:=MrOk;
   end else
   begin
      if xmode.Text='I' then
      begin
         frKasBank.NoAktivaP:=mkode.Text+Perkiraan.Text;
         UpdateDataAktivaTetap('I');
         ModalResult:=MrOk;
         //FrBrows.Close;
      end else if xmode.Text='U' then
      begin
         frKasBank.NoAktivaP:=mkode.Text+Perkiraan.Text;
         UpdateDataAktivaTetap('U');
         ModalResult:=MrOk;
         //FrBrows.Close;
      end;

   end;
end else
begin
   ShowMessage('Persen 1 + Persen 2 + Persen 3 + Persen 4 = 100 %')
end;
end;

procedure TFrtransAktiva.AkumulasiExit(Sender: TObject);
begin
  if mValid then
  begin
    if length(Akumulasi.Text)=0 then
    begin
      KodeBrows:=243;
      Application.CreateForm(Tfrbrows, frbrows);
      FrBrows.IsiData:=Akumulasi.Text;
      frbrows.Showmodal;
      if FrBrows.ModalResult=mrOk then
         Akumulasi.Text:=FrBrows.QuBrows.fieldbyname('Perkiraan').AsString
      else
         ActiveControl:=Akumulasi;
    end else
    begin
      if MyFindField('dbPerkiraan','Perkiraan',Akumulasi.Text)=true then
         Akumulasi.Text:=DM.QuCari.fieldbyname('Perkiraan').AsString else
      begin
        KodeBrows:=243;
        Application.CreateForm(Tfrbrows, frbrows);
        FrBrows.IsiData:=Akumulasi.Text;
        frbrows.Showmodal;
        if FrBrows.ModalResult=mrOk then
           Akumulasi.Text:=FrBrows.QuBrows.fieldbyname('Perkiraan').AsString else
           ActiveControl:=Akumulasi;
      end;
    end;
  end;
end;

procedure TFrtransAktiva.AkumulasiEnter(Sender: TObject);
begin
mValid:=true;
end;

procedure TFrtransAktiva.BiayaExit(Sender: TObject);
begin
  if mValid then
  begin
    if Biaya.Text='-' then
    else
    if length(Biaya.Text)=0 then
    begin
      KodeBrows:=244;
      Application.CreateForm(Tfrbrows, frbrows);
      FrBrows.IsiData:=Biaya.Text;
      frbrows.Showmodal;
      if FrBrows.ModalResult=mrOk then
         Biaya.Text:=FrBrows.QuBrows.fieldbyname('Perkiraan').AsString
      else
         ActiveControl:=Biaya;
    end else
    begin
      if MyFindField('dbPerkiraan','Perkiraan',Biaya.Text)=true then
         Biaya.Text:=DM.QuCari.fieldbyname('Perkiraan').AsString else
      begin
        KodeBrows:=244;
        Application.CreateForm(Tfrbrows, frbrows);
        FrBrows.IsiData:=Biaya.Text;
        frbrows.Showmodal;
        if FrBrows.ModalResult=mrOk then
           Biaya.Text:=FrBrows.QuBrows.fieldbyname('Perkiraan').AsString else
           ActiveControl:=Biaya;
      end;
    end;
  end;
end;

procedure TFrtransAktiva.BiayaSusut2Exit(Sender: TObject);
begin
  if mValid then
  begin
    if BiayaSusut2.Text='-' then
    else
    if length(BiayaSusut2.Text)=0 then
    begin
      KodeBrows:=244;
      Application.CreateForm(Tfrbrows, frbrows);
      FrBrows.IsiData:=BiayaSusut2.Text;
      frbrows.Showmodal;
      if FrBrows.ModalResult=mrOk then
         BiayaSusut2.Text:=FrBrows.QuBrows.fieldbyname('Perkiraan').AsString
      else
         ActiveControl:=BiayaSusut2;
    end else
    begin
      if MyFindField('dbPerkiraan','Perkiraan',BiayaSusut2.Text)=true then
         BiayaSusut2.Text:=DM.QuCari.fieldbyname('Perkiraan').AsString else
      begin
        KodeBrows:=244;
        Application.CreateForm(Tfrbrows, frbrows);
        FrBrows.IsiData:=BiayaSusut2.Text;
        frbrows.Showmodal;
        if FrBrows.ModalResult=mrOk then
           BiayaSusut2.Text:=FrBrows.QuBrows.fieldbyname('Perkiraan').AsString else
           ActiveControl:=BiayaSusut2;
      end;
    end;
  end;
end;

procedure TFrtransAktiva.BiayaSusut2Enter(Sender: TObject);
begin
mValid:=true;
end;

procedure TFrtransAktiva.BiayaEnter(Sender: TObject);
begin
mValid:=true;
end;

procedure TFrtransAktiva.BiayaSusut3Exit(Sender: TObject);
begin
  if mValid then
  begin
    if BiayaSusut3.Text='-' then
    else
    if length(BiayaSusut3.Text)=0 then
    begin
      KodeBrows:=2;
      Application.CreateForm(Tfrbrows, frbrows);
      FrBrows.IsiData:=BiayaSusut3.Text;
      frbrows.Showmodal;
      if FrBrows.ModalResult=mrOk then
         BiayaSusut3.Text:=FrBrows.QuBrows.fieldbyname('Perkiraan').AsString
      else
         ActiveControl:=BiayaSusut2;
    end else
    begin
      if MyFindField('dbPerkiraan','Perkiraan',BiayaSusut3.Text)=true then
         BiayaSusut3.Text:=DM.QuCari.fieldbyname('Perkiraan').AsString else
      begin
        KodeBrows:=2;
        Application.CreateForm(Tfrbrows, frbrows);
        FrBrows.IsiData:=BiayaSusut3.Text;
        frbrows.Showmodal;
        if FrBrows.ModalResult=mrOk then
           BiayaSusut3.Text:=FrBrows.QuBrows.fieldbyname('Perkiraan').AsString else
           ActiveControl:=BiayaSusut3;
      end;
    end;
  end;

end;

procedure TFrtransAktiva.BiayaSusut3Enter(Sender: TObject);
begin
mValid:=true;
end;

procedure TFrtransAktiva.BiayaSusut4Enter(Sender: TObject);
begin
mValid:=true;
end;

procedure TFrtransAktiva.BiayaSusut4Exit(Sender: TObject);
begin
  if mValid then
  begin
    if BiayaSusut4.Text='-' then
    else
    if length(BiayaSusut4.Text)=0 then
    begin
      KodeBrows:=2;
      Application.CreateForm(Tfrbrows, frbrows);
      FrBrows.IsiData:=BiayaSusut4.Text;
      frbrows.Showmodal;
      if FrBrows.ModalResult=mrOk then
         BiayaSusut4.Text:=FrBrows.QuBrows.fieldbyname('Perkiraan').AsString
      else
         ActiveControl:=BiayaSusut4;
    end else
    begin
      if MyFindField('dbPerkiraan','Perkiraan',BiayaSusut4.Text)=true then
         BiayaSusut4.Text:=DM.QuCari.fieldbyname('Perkiraan').AsString else
      begin
        KodeBrows:=2;
        Application.CreateForm(Tfrbrows, frbrows);
        FrBrows.IsiData:=BiayaSusut4.Text;
        frbrows.Showmodal;
        if FrBrows.ModalResult=mrOk then
           BiayaSusut2.Text:=FrBrows.QuBrows.fieldbyname('Perkiraan').AsString else
           ActiveControl:=BiayaSusut4;
      end;
    end;
  end;

end;

procedure TFrtransAktiva.TipeExit(Sender: TObject);
begin
  if Length(Tipe.Text)=0 then
  begin
    MessageDlg('Tipe Tidak Boleh Kosong',mtWarning,[MbOk],0);
    ActiveControl := Tipe;
  end;

end;

end.
