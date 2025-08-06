unit FrmSubBarangJ;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, PBNumEdit, ExtCtrls, Buttons, db,strUtils, ADODB;

type
  TfrSubBarangJ = class(TForm)
    KodeBrg: TEdit;
    NamaBrg: TEdit;
    KodeGrp: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn3: TBitBtn;
    Bevel1: TBevel;
    Aktif: TComboBox;
    NamaGroup: TLabel;
    BitBtn2: TBitBtn;
    Image1: TImage;
    Label11: TLabel;
    Label12: TLabel;
    Bevel2: TBevel;
    Label17: TLabel;
    Label14: TLabel;
    Hrg1_1: TPBNumEdit;
    Label15: TLabel;
    Hrg2_1: TPBNumEdit;
    Label16: TLabel;
    Hrg3_1: TPBNumEdit;
    QntMin: TPBNumEdit;
    QntMax: TPBNumEdit;
    Label18: TLabel;
    Label19: TLabel;
    Label35: TLabel;
    Label6: TLabel;
    Sat1: TEdit;
    Sat2: TEdit;
    Isi2: TPBNumEdit;
    Sat3: TEdit;
    Isi3: TPBNumEdit;
    Isi1: TPBNumEdit;
    Hrg1_2: TPBNumEdit;
    Hrg2_2: TPBNumEdit;
    Hrg3_2: TPBNumEdit;
    Hrg1_3: TPBNumEdit;
    Hrg2_3: TPBNumEdit;
    Hrg3_3: TPBNumEdit;
    Label5: TLabel;
    Keterangan: TEdit;
    Label9: TLabel;
    VolumeBrg1: TPBNumEdit;
    VolumeBrg2: TPBNumEdit;
    VolumeBrg3: TPBNumEdit;
    Grp: TEdit;
    Label4: TLabel;
    NmGrp: TLabel;
    Label7: TLabel;
    Nmbrg2: TEdit;
    CB: TCheckBox;
    Label10: TLabel;
    Toleransi: TPBNumEdit;
    Label8: TLabel;
    KodeJnsTambahan: TEdit;
    NamaJnsTambahan: TLabel;
    Proses: TComboBox;
    Label13: TLabel;
    DaftarBhn: TBitBtn;
    IsTakeIn: TCheckBox;
    KodeBag: TEdit;
    LNamaBag: TLabel;
    Cust: TEdit;
    Label21: TLabel;
    Label20: TLabel;
    procedure KodeBrgEnter(Sender: TObject);
    procedure KodeBrgExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ClearEdit;
    procedure KodeGrpEnter(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure KodeTipeEnter(Sender: TObject);
    procedure KodeSuppEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GrpExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure KodeGrpExit(Sender: TObject);
    procedure KodeJnsTambahanExit(Sender: TObject);
    procedure DaftarBhnClick(Sender: TObject);
    procedure ProsesClick(Sender: TObject);
    procedure ProsesChange(Sender: TObject);
    procedure KodeBagExit(Sender: TObject);
    procedure KodeBagEnter(Sender: TObject);
    procedure CustExit(Sender: TObject);
    procedure CustEnter(Sender: TObject);
  private
    { Private declarations }
    xKodeBrg, xNamaBrg: String;
    procedure TampilIsiGroup;
    procedure TampilIsiGroup1;
    procedure TampilIsiTipe;
    procedure TampilIsiKategori;
    procedure TampilIsiMerk;
    procedure TampilIsiSupplier;
    procedure TampilIsiJnsTambahan;
    procedure CekBahanOlah;
    //JValid:Boolean;
  public
    { Public declarations }
     IsSimpan:Boolean;
  end;

var
  frSubBarangJ: TfrSubBarangJ;
  mValid:boolean;


implementation
uses myModul,Myprocedure,MyGlobal, Frmbrows,FrmBarangJ, FrmSubBarangProses;
{$R *.DFM}

procedure TfrSubBarangJ.CekBahanOlah;
begin
  with DM.QuCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add('if not exists (select KodeBrg from DBBarang where KodeBrg = :0)');
      SQL.Add('begin');
      SQL.Add('delete DBBarangOlah where KodeBrgOlah = :1');
      SQL.Add('end');
      Parameters[0].Value := KodeBrg.Text;
      Parameters[1].Value := KodeBrg.Text;
      Open;
    end;
end;

procedure TfrSubBarangJ.TampilIsiJnsTambahan;
begin
     KodeBrows:=110015;
     Application.CreateForm(TFrBrows, FrBrows);
     FrBrows.ShowModal;
     if FrBrows.ModalResult=mrOk then
     begin
         KodeJnsTambahan.Text:=FrBrows.QuBrows.FieldByName('KodeJnsTambahan').AsString;
         NamaJnsTambahan.Caption:='[ '+FrBrows.QuBrows.FieldByName('Nama').AsString+' ]';
     end
     else
        ActiveControl:=KodeJnsTambahan;
end;

procedure TfrSubBarangJ.TampilIsiGroup;
begin
     KodeBrows:=110014;
     Application.CreateForm(TFrBrows, FrBrows);
     FrBrows.IsiData:=KodeGrp.Text;
     FrBrows.IsiData1:=Grp.Text;
     FrBrows.ShowModal;
     if FrBrows.ModalResult=mrOk then
     begin
         KodeGrp.Text :=trim(' '+FrBrows.QuBrows.FieldByName('KodeSubGrp').AsString+' ');//inttostr(FrBrows.QuBrows.FieldByName('KodeSubGrp').AsVariant);
         NamaGroup.Caption:='[ '+FrBrows.QuBrows.FieldByName('NamaSubGrp').AsString+' ]';
     end
     else
        ActiveControl:=KodeGrp;
end;

procedure TfrSubBarangJ.TampilIsiGroup1;
begin
     KodeBrows:=110013;
     Application.CreateForm(TFrBrows, FrBrows);
     FrBrows.IsiData:='BJ';
     FrBrows.ShowModal;
     if FrBrows.ModalResult=mrOk then
     begin
         Grp.Text:=FrBrows.QuBrows.FieldByName('KodeGrp').AsString;
         NmGrp.Caption:='[ '+FrBrows.QuBrows.FieldByName('Nama').AsString+' ]';
     end
     else
        ActiveControl:=Grp;
end;

procedure TfrSubBarangJ.TampilIsiTipe;
begin

end;

procedure TfrSubBarangJ.TampilIsiKategori;
begin

end;

procedure TfrSubBarangJ.TampilIsiMerk;
begin

end;

procedure TfrSubBarangJ.TampilIsiSupplier;
begin

end;

procedure TfrSubBarangJ.ClearEdit;
begin
  KodeBrg.Text:='';
  NamaBrg.Text:='';
  KodeGrp.Text:='';
  NamaGroup.Caption:='[ . . . ]';

  KodeJnsTambahan.Text := '';
  NamaJnsTambahan.Caption:='[ . . . ]';
  Proses.ItemIndex := 0;
  //Proses.Text := 'Stock';
  DaftarBhn.Visible := False;

  Sat1.Text:='';
  Sat2.Text:='';
  //Sat3.Text:='';
  Isi1.Value:=1;
  Isi2.Value:=1;
  //Isi3.Value:=1;
  Hrg1_1.Value:=0; Hrg2_1.Value:=0; Hrg3_1.Value:=0;
  Hrg1_2.Value:=0; Hrg2_2.Value:=0; Hrg3_2.Value:=0;
  //Hrg1_3.Value:=0; Hrg2_3.Value:=0; Hrg3_3.Value:=0;
  QntMin.Value:=0;
  QntMax.Value:=0;
  Aktif.ItemIndex:=1;

  IsTakeIn.Checked:= False;
end;

procedure TfrSubBarangJ.KodeBrgEnter(Sender: TObject);
begin
  mValid:=True;
  if Sender=KodeBrg then
  begin
    if KodeBrg.Text='' then
    begin
      if IsSimpan=True then
       Begin
        xKodeBrg:=xKodeBrg;
        xNamaBrg:=xNamaBrg;
       end;
      KodeBrg.Text:=xKodeBrg;
      NamaBrg.Text:=(xNamaBrg);
    end;
  end;
  if JenisBJ='BJP' then
  begin
    KodeBrg.Enabled :=false;
    ActiveControl:=NamaBrg;
  end
  else
  KodeBrg.Enabled :=true;
  KodeGrp.Enabled :=false;
end;

procedure TfrSubBarangJ.KodeBrgExit(Sender: TObject);
begin
  If (IsSimpan) then
  begin
    if mValid then
    begin
      if length(KodeBrg.Text)=0 then
      begin
        MsgDataTidakBolehKosong(Label1.Caption);
        Activecontrol:=Kodebrg;
      end
      else
      begin
        if MyFindField('dbbarang','KodeBrg',KodeBrg.Text)=true then
        begin
          ShowMessage('Kode Barang sudah ada !');
          //Activecontrol:=kodebrg;
        end;
      end;
    end;
  end;

end;

procedure TfrSubBarangJ.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=VK_ESCAPE then CLOSE;
end;

procedure TfrSubBarangJ.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  action:=cafree;
end;

procedure TfrSubBarangJ.KodeGrpEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TfrSubBarangJ.BitBtn3Click(Sender: TObject);
var i:Integer;
begin
   if IsSimpan=true then
   begin
       FrBarangJ.SimpanData('I');
       ClearEdit;
       ActiveControl:=KodeGrp;
    end
   else
   begin
        FrBarangJ.SimpanData('U');
      ModalResult:=mrOk;
   end;
end;

procedure TfrSubBarangJ.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrSubBarangJ.KodeTipeEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TfrSubBarangJ.KodeSuppEnter(Sender: TObject);
begin
  mValid:=True;                                           
end;

procedure TfrSubBarangJ.FormShow(Sender: TObject);
begin
  KodeGrp.Enabled:=IsSimpan;
  KodeBrg.Enabled:=IsSimpan;
end;

procedure TfrSubBarangJ.GrpExit(Sender: TObject);
begin
 if mValid then
 begin
   if length(KodeGrp.Text)=0 then TampilIsiGroup1 else
   begin
     if MyFindField('dbgroup','kodegrp',Grp.Text)=true then
     begin
         Grp.Text:=DM.QuCari.fieldbyname('KOdeGrp').AsString;
         NmGrp.Caption:='[ '+DM.QuCari.fieldbyname('Nama').AsString+' ]';
     end
     else TampilIsiGroup1;
   end;
  end;

end;

procedure TfrSubBarangJ.FormCreate(Sender: TObject);
begin
 //Grp.Text:='BJ';
 //NmGrp.Caption:='[ Barang Jadi ]';
 Grp.Text:=JenisBJ;
 NmGrp.Caption:=NamaBJ;
end;

procedure TfrSubBarangJ.KodeGrpExit(Sender: TObject);
var AwBJ : string;
begin
 if mValid then
 begin
   if length(KodeGrp.Text)=0
   then TampilIsiGroup else
   begin
     if MyFindField('dbSubgroup','kodeSubgrp',kodegrp.Text)=true then
     begin
         Kodegrp.Text:=DM.QuCari.fieldbyname('KOdeSubGrp').AsString;
         NamaGroup.Caption:='[ '+DM.QuCari.fieldbyname('NamaSubGrp').AsString+' ]';
         Grp.Text:=DM.QuCari.fieldbyname('KOdeGrp').AsString;
     end
     else TampilIsiGroup;
   end;
   if JenisBJ='BJP' then
     begin
         With DM.QuCari do
         Begin
          Close;
          SQL.Clear;
          SQL.Add('Select Isnull(Max(Convert(Int,Right(KODESUBGRP,3))),0)Angka from dbBarang where KodeGrp='+QuotedStr(Grp.Text)+' and KodeSubGrp='+QuotedStr(KodeGrp.Text)+' Group By KodeBrg');
          Open;
          xKodeBrg:='';
          xNamaBrg:='';
          //AwBJ:=JenisBJ;
          if JenisBJ='BJP' then
               AwBJ:='PBJ'
          else AwBJ :=Grp.Text;

          if (RecordCount=0) and (JenisBJ<>'BJP') Then
           xKodeBrg:=Grp.Text+'.'+Kodegrp.Text+'.'+'001'
           //xKodeBrg:=AwBJ+'.'+RightStr(Cust.text,6)+'.'+Kodegrp.Text
          else if (RecordCount=0) and (JenisBJ='BJP') then
               xKodeBrg:=AwBJ+'.'+RightStr(Cust.text,6)+'.'+Kodegrp.Text
          else if FieldByName('Angka').AsInteger+1<10
          Then xKodeBrg:=Grp.Text+'.'+Kodegrp.Text+'.'+'00'+IntToStr(FieldByName('Angka').AsInteger+1)
          else if (FieldByName('Angka').AsInteger+1<100)   and   (cust.Text <>'PD.PROFF')
          Then //xKodeBrg:=Grp.Text+'.'+Kodegrp.Text+'.'+'0'+IntToStr(FieldByName('Angka').AsInteger+1)
                xKodeBrg:=AwBJ+'.'+RightStr(Cust.text,6)+'.'+Kodegrp.Text
          else if (FieldByName('Angka').AsInteger+1>100)   and   (cust.Text <>'PD.PROFF')
          Then  xKodeBrg:=AwBJ+'.'+RightStr(Cust.text,6)+'.'+Kodegrp.Text

          else if (FieldByName('Angka').AsInteger+1<100)   and   (cust.Text ='PD.PROFF') then
               xKodeBrg:=AwBJ+'.'+RightStr(Cust.text,5)+'.'+Kodegrp.Text
          else if (FieldByName('Angka').AsInteger+1>=100)   and   (cust.Text ='PD.PROFF') then
               xKodeBrg:=AwBJ+'.'+RightStr(Cust.text,5)+'.'+Kodegrp.Text

          else xKodeBrg:=Grp.Text+'.'+Kodegrp.Text+'.'+IntToStr(FieldByName('Angka').AsInteger+1);
      //    KodeBrg.Enabled :=false
         end;
     end
     else
     begin
         kodebrg.SetFocus;
     end;
 end;
//KodeBrg.Enabled :=false;
//KodeBrgExit(KodeBrg);
end;

procedure TfrSubBarangJ.KodeJnsTambahanExit(Sender: TObject);
var AwBJ : string;
begin
 if mValid then
 begin
   if length(KodeJnsTambahan.Text)=0 then TampilIsiJnsTambahan else
   begin
     if MyFindField('DBJNSTambahan','KodeJnsTambahan',KodeJnsTambahan.Text)=true then
     begin
         KodeJnsTambahan.Text:=DM.QuCari.fieldbyname('KodeJnsTambahan').AsString;
         NamaJnsTambahan.Caption:='[ '+DM.QuCari.fieldbyname('Nama').AsString+' ]';
     end
     else TampilIsiJnsTambahan;
   end;
   With DM.QuCari do
   Begin
    Close;
    SQL.Clear;
    SQL.Add('Select Isnull(Max(Convert(Int,Right(KodeBrg,3))),0)Angka from dbBarang where KodeGrp='+QuotedStr(Grp.Text)+' and KodeSubGrp='+QuotedStr(KodeGrp.Text)+' Group By KodeBrg');
    Open;
    xKodeBrg:='';
    xNamaBrg:='';
    if RecordCount=0 Then
     xKodeBrg:=Grp.Text+'.'+KodeJnsTambahan.Text+'.'+'001'
    else if FieldByName('Angka').AsInteger+1<10
    Then xKodeBrg:=Grp.Text+'.'+KodeJnsTambahan.Text+'.'+'00'+IntToStr(FieldByName('Angka').AsInteger+1)
    else
    if FieldByName('Angka').AsInteger+1<100
    Then
    xKodeBrg:=Grp.Text+'.'+KodeJnsTambahan.Text+'.'+'0'+IntToStr(FieldByName('Angka').AsInteger+1)
    else
    xKodeBrg:=Grp.Text+'.'+KodeJnsTambahan.Text+'.'+IntToStr(FieldByName('Angka').AsInteger+1);

   end;
 end;

end;

procedure TfrSubBarangJ.DaftarBhnClick(Sender: TObject);
begin
      Application.CreateForm(TFrSubBarangProses, FrSubBarangProses);
      FrSubBarangProses.LblKode.Caption:=KodeBrg.Text;
      FrSubBarangProses.LblNama.Caption:=NamaBrg.Text;
      FrSubBarangProses.SubBrgProses_KodeBrg:=KodeBrg.Text;
      FrSubBarangProses.ShowModal;
end;

procedure TfrSubBarangJ.ProsesClick(Sender: TObject);
begin
  {if Proses.ItemIndex = 1 then
    begin
      DaftarBhn.Visible := True
    end
  else
    DaftarBhn.Visible := False; }
end;

procedure TfrSubBarangJ.ProsesChange(Sender: TObject);
begin
  {if Proses.ItemIndex = 1 then
    begin
      DaftarBhn.Visible := True
    end
  else
    DaftarBhn.Visible := False;}
end;

procedure TfrSubBarangJ.KodeBagExit(Sender: TObject);
begin
  if mValid then
  begin
    if Length(KodeBag.Text)=0 then
       TampilIsiData(FrsubbarangJ,Kodebag ,Lnamabag,10021,'kddep','Nmdep')
    else if DataBersyarat('select * from dbdepart where kddep=:0',[kodebag.text],DM.Qucari) then
    begin
      KodeBag.Text :=DM.QuCari.FieldByname('Kddep').AsString;
      LNamaBag.Caption:='[ '+DM.QuCari.FieldByname('Nmdep').AsString+' ]';
    end
    else
      TampilIsiData(FrsubbarangJ,Kodebag ,Lnamabag,10021,'kddep','Nmdep');
  end;
end;

procedure TfrSubBarangJ.KodeBagEnter(Sender: TObject);
begin
        mValid:=true;
end;

procedure TfrSubBarangJ.CustExit(Sender: TObject);
begin
  if mValid then
  begin
    if Length(Cust.Text)=0 then
       TampilIsiData(FrsubbarangJ,Cust ,Label21,10142,'KodeCustsupp','NamaCust')
    else
    if DataBersyarat('select * from dbcustsupp where Kodecustsupp=:0',[Cust.text],DM.Qucari) then
    begin
      Cust.Text :=DM.QuCari.FieldByname('KodeCustsupp').AsString;
      Label21.Caption:='[ '+DM.QuCari.FieldByname('NamaCustSUpp').AsString+' ]';
    end
    else
      TampilIsiData(FrsubbarangJ,Cust ,Label21,10142,'KodeCustsupp','NamaCust');
  end;


end;

procedure TfrSubBarangJ.CustEnter(Sender: TObject);
begin
   mvalid:=true;
end;

end.




