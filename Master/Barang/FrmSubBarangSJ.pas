unit FrmSubBarangSJ;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, PBNumEdit, ExtCtrls, Buttons, db,strUtils, ADODB;

type
  TfrSubBarangSJ = class(TForm)
    KodeBrg: TEdit;
    NamaBrg: TEdit;
    KodeGrp: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn3: TBitBtn;
    Bevel1: TBevel;
    KodeBrd: TEdit;
    Label30: TLabel;
    Aktif: TComboBox;
    NamaGroup: TLabel;
    NamaBrd: TLabel;
    BitBtn2: TBitBtn;
    Image1: TImage;
    Label11: TLabel;
    Label12: TLabel;
    Bevel2: TBevel;
    KodeTipe: TEdit;
    Label7: TLabel;
    NamaTipe: TLabel;
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
    KodeSupp: TEdit;
    Label4: TLabel;
    NamaSupp: TLabel;
    Label5: TLabel;
    Keterangan: TEdit;
    PartNumber: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    VolumeBrg1: TPBNumEdit;
    VolumeBrg2: TPBNumEdit;
    VolumeBrg3: TPBNumEdit;
    Label10: TLabel;
    KdKategori: TEdit;
    Label13: TLabel;
    Label20: TLabel;
    PBrg: TEdit;
    NPrd: TLabel;
    Label22: TLabel;
    ABrg: TEdit;
    NAsl: TLabel;
    Label24: TLabel;
    MeBrg: TEdit;
    NMsn: TLabel;
    Label26: TLabel;
    MBrg: TEdit;
    NMtf: TLabel;
    procedure KodeBrgEnter(Sender: TObject);
    procedure KodeBrgExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ClearEdit;
    procedure KodeGrpEnter(Sender: TObject);
    procedure Kodegrpxit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure KodeBrdExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure KodeTipeEnter(Sender: TObject);
    procedure KodeTipeExit(Sender: TObject);
    procedure KodeSuppEnter(Sender: TObject);
    procedure KodeSuppExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure KodeSuppKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KdKategoriExit(Sender: TObject);
    procedure PBrgExit(Sender: TObject);
    procedure ABrgExit(Sender: TObject);
    procedure MeBrgExit(Sender: TObject);
    procedure MBrgExit(Sender: TObject);
    procedure Isi2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    xKodeBrg, xNamaBrg: String;
    FTrue:Boolean;
    procedure TampilIsiGroup;
    procedure TampilIsiTipe;
    procedure TampilIsiKategori;
    procedure TampilIsiMerk;
    procedure TampilIsiSupplier;
    procedure TampilIsiProduksi;
    procedure TampilIsiAsal;
    procedure TampilIsiMesin;
    procedure TampilIsiMotif;
  public
    { Public declarations }
     IsSimpan:Boolean;
  end;

var
  frSubBarangSJ: TfrSubBarangSJ;
  mValid:boolean;


implementation
uses myModul,Myprocedure,MyGlobal, Frmbrows,FrmBarangSJ;
{$R *.DFM}

procedure TfrSubBarangSJ.TampilIsiGroup;
begin
     KodeBrows:=1220;
     Application.CreateForm(TFrBrows, FrBrows);
     FrBrows.IsiData:=KodeGrp.Text;
     FrBrows.ShowModal;
     if FrBrows.ModalResult=mrOk then
     begin
         KodeGrp.Text:=FrBrows.QuBrows.FieldByName('KodeGrp').AsString;
         NamaGroup.Caption:='[ '+FrBrows.QuBrows.FieldByName('NamaGrp').AsString+' ]';
     end
     else
        ActiveControl:=KodeGrp;
end;

procedure TfrSubBarangSJ.TampilIsiProduksi;
begin
     KodeBrows:=1221;
     Application.CreateForm(TFrBrows, FrBrows);
     FrBrows.IsiData:=PBrg.Text;
     FrBrows.ShowModal;
     if FrBrows.ModalResult=mrOk then
     begin
         PBrg.Text:=FrBrows.QuBrows.FieldByName('KodePrd').AsString;
         NPRD.Caption:='[ '+FrBrows.QuBrows.FieldByName('NamaPrd').AsString+' ]';
         xNamaBrg:=FrBrows.QuBrows.FieldByName('NamaPrd').AsString;
     end
     else
        ActiveControl:=PBrg;
end;

procedure TfrSubBarangSJ.TampilIsiAsal;
begin
     KodeBrows:=1222;
     Application.CreateForm(TFrBrows, FrBrows);
     FrBrows.IsiData:=ABrg.Text;
     FrBrows.ShowModal;
     if FrBrows.ModalResult=mrOk then
     begin
         ABrg.Text:=FrBrows.QuBrows.FieldByName('KodeAsal').AsString;
         NAsl.Caption:='[ '+FrBrows.QuBrows.FieldByName('NamaAsal').AsString+' ]';
         xNamaBrg:=FrBrows.QuBrows.FieldByName('NamaAsal').AsString;
     end
     else
        ActiveControl:=ABrg;
end;

procedure TfrSubBarangSJ.TampilIsiMesin;
begin
     KodeBrows:=1223;
     Application.CreateForm(TFrBrows, FrBrows);
     FrBrows.IsiData:=MeBrg.Text;
     FrBrows.ShowModal;
     if FrBrows.ModalResult=mrOk then
     begin
         MeBrg.Text:=FrBrows.QuBrows.FieldByName('KodeMesin').AsString;
         NMsn.Caption:='[ '+FrBrows.QuBrows.FieldByName('Namamesin').AsString+' ]';
         xNamaBrg:=FrBrows.QuBrows.FieldByName('Namamesin').AsString;
     end
     else
        ActiveControl:=MeBrg;
end;

procedure TfrSubBarangSJ.TampilIsiMotif;
begin
     KodeBrows:=1224;
     Application.CreateForm(TFrBrows, FrBrows);
     FrBrows.IsiData:=MBrg.Text;
     FrBrows.ShowModal;
     if FrBrows.ModalResult=mrOk then
     begin
         MBrg.Text:=FrBrows.QuBrows.FieldByName('KodeMotif').AsString;
         NMtf.Caption:='[ '+FrBrows.QuBrows.FieldByName('Namamotif').AsString+' ]';
         xNamaBrg:=FrBrows.QuBrows.FieldByName('Namamotif').AsString;
     end
     else
        ActiveControl:=MBrg;
end;


procedure TfrSubBarangSJ.TampilIsiTipe;
begin
     KodeBrows:=1225;
     Application.CreateForm(TFrBrows, FrBrows);
     FrBrows.IsiData:=KodeTipe.Text;
     FrBrows.ShowModal;
     if FrBrows.ModalResult=mrOk then
     begin
         KodeTipe.Text:=FrBrows.QuBrows.FieldByName('KodeTipe').AsString;
         NamaTipe.Caption:='[ '+FrBrows.QuBrows.FieldByName('NamaTipe').AsString+' ]';
         xNamaBrg:=FrBrows.QuBrows.FieldByName('NamaTipe').AsString;
     end
     else
        ActiveControl:=KodeTipe;
end;

procedure TfrSubBarangSJ.TampilIsiKategori;
begin
     KodeBrows:=12253;
     Application.CreateForm(TFrBrows, FrBrows);
     FrBrows.IsiData:=KdKategori.Text;
     FrBrows.ShowModal;
     if FrBrows.ModalResult=mrOk then
     begin
         KdKategori.Text:=FrBrows.QuBrows.FieldByName('KdKategori').AsString;
         Label13.Caption:='[ '+FrBrows.QuBrows.FieldByName('NmKategori').AsString+' ]';
         xNamaBrg:=FrBrows.QuBrows.FieldByName('NmKategori').AsString;
     end
     else
        ActiveControl:=KdKategori;
end;

procedure TfrSubBarangSJ.TampilIsiMerk;
begin
     KodeBrows:=1230;
     Application.CreateForm(TFrBrows, FrBrows);
     FrBrows.IsiData:=KodeBrd.Text;
     frbrows.ShowModal;
     if FrBrows.ModalResult=mrOk then
     begin
         KodeBrd.Text:=FrBrows.QuBrows.fieldbyname('KodeBrd').AsString;
         NamaBrd.Caption:='[ '+FrBrows.QuBrows.fieldbyname('NamaBrd').AsString+' ]';
         xNamaBrg:=FrBrows.QuBrows.fieldbyname('NamaBrd').AsString;
     end
     else
        ActiveControl:=KodeBrd;
end;

procedure TfrSubBarangSJ.TampilIsiSupplier;
begin
     KodeBrows:=1255;
     Application.CreateForm(TFrBrows, FrBrows);
     FrBrows.IsiData:=KodeSupp.Text;
     FrBrows.ShowModal;
     if FrBrows.ModalResult=mrOk then
     begin
         KodeSupp.Text:=FrBrows.QuBrows.FieldByName('KodeSupp').AsString;
         NamaSupp.Caption:='[ '+FrBrows.QuBrows.FieldByName('NamaSupp').AsString+' ]';
     end
     else
        ActiveControl:=KodeSupp;
end;

procedure TfrSubBarangSJ.ClearEdit;
begin
  KodeBrg.Text:='';
  NamaBrg.Text:='';
  //KodeGrp.Text:='';
  PBrg.Text:='';
  ABrg.Text:='';
  MeBrg.Text:='';
  MBrg.Text:='';
  KdKategori.Text:='';
  //NamaGroup.Caption:='[ . . . ]';
  KodeTipe.Text:='';
  NamaTipe.Caption:='[ . . . ]';
  KodeBrd.Text:='';
  NamaBrd.Caption:='[ . . . ]';
  KodeSupp.Text:='';
  NamaSupp.Caption:='[ . . . ]';
  Sat1.Text:='';
  Sat2.Text:='';
  Sat3.Text:='';
  Isi1.Value:=1;
  Isi2.Value:=1;
  Isi3.Value:=1;
  Hrg1_1.Value:=0; Hrg2_1.Value:=0; Hrg3_1.Value:=0;
  Hrg1_2.Value:=0; Hrg2_2.Value:=0; Hrg3_2.Value:=0;
  Hrg1_3.Value:=0; Hrg2_3.Value:=0; Hrg3_3.Value:=0;
  QntMin.Value:=0;
  QntMax.Value:=0;
  Aktif.ItemIndex:=1;
end;

procedure TfrSubBarangSJ.KodeBrgEnter(Sender: TObject);

begin
  mValid:=True;
  if Sender=KodeBrg then
  begin
    xKodeBrg:='';
    xNamaBrg:='';
    if KodeBrg.Text='' then
    begin
      if KodeGrp.Text<>'-' then
      begin
        xKodeBrg:=xKodeBrg+KodeGrp.Text+'.';
        xNamaBrg:=xNamaBrg+' '+copy(NamaGroup.Caption,3,length(NamaGroup.Caption)-4);
      end;
         if KdKategori.Text<>'-' then
      begin
        xKodeBrg:=xKodeBrg+KdKategori.Text+'.';
        xNamaBrg:=xNamaBrg+' '+copy(Label13.Caption,3,length(Label13.Caption)-4);
      end;
      if KodeBrd.Text<>'-' then
      begin
        xKodeBrg:=xKodeBrg+KodeBrd.Text+'.';
        xNamaBrg:=xNamaBrg+' '+copy(NamaBrd.Caption,3,length(NamaBrd.Caption)-4);
      end;

      if KodeTipe.Text<>'-' then
      begin
        xKodeBrg:=xKodeBrg+KodeTipe.Text+'.';
        xNamaBrg:=xNamaBrg+' '+copy(NamaTipe.Caption,3,length(NamaTipe.Caption)-4);
      end;
      if KodeSupp.Text<>'-' then
      begin
        xKodeBrg:=xKodeBrg+KodeSupp.Text;
      end;
      KodeBrg.Text:=xKodeBrg;
      NamaBrg.Text:=Trim(xNamaBrg);
    end;
  end;
end;

procedure TfrSubBarangSJ.KodeBrgExit(Sender: TObject);
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
          Activecontrol:=kodebrg;
        end;
      end;
    end;
  end;
 
end;

procedure TfrSubBarangSJ.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=VK_ESCAPE then CLOSE;
end;

procedure TfrSubBarangSJ.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfrSubBarangSJ.KodeGrpEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TfrSubBarangSJ.Kodegrpxit(Sender: TObject);
begin
 if mValid then
 begin
   if length(KodeGrp.Text)=0 then TampilIsiGroup else
   begin
     if MyFindField('dbgroup','kodegrp',kodegrp.Text)=true then
     begin
         Kodegrp.Text:=DM.QuCari.fieldbyname('KOdeGrp').AsString;
         NamaGroup.Caption:='[ '+DM.QuCari.fieldbyname('NamaGrp').AsString+' ]';
     end
     else TampilIsiGroup;
   end;
   if  KodeGrp.Text ='BJ' then
     Label4.Caption:='Customer'
   else  Label4.Caption:='Supplier';
 end;
end;

procedure TfrSubBarangSJ.BitBtn3Click(Sender: TObject);
var i:Integer;
begin
   if IsSimpan=true then
   begin
       FrBarangSJ.SimpanData('I');
       ClearEdit;
     //ActiveControl:=KodeBrg;
     ActiveControl:=PBrg;
   end
   else
   begin
        FrBarangSJ.SimpanData('U');
      ModalResult:=mrOk;
   end;
end;

procedure TfrSubBarangSJ.KodeBrdExit(Sender: TObject);
begin
  if mValid then
  begin
    if length(KodeBrd.Text)=0 then TampilIsiMerk else
    begin
      if MyFindField('dbBrand','KodeBrd',KodeBrd.Text)=true then
      begin
        KodeBrd.Text:=DM.QuCari.fieldbyname('KodeBrd').AsString;
        NamaBrd.Caption:='[ '+DM.QuCari.fieldbyname('NamaBrd').AsString+' ]';
        xNamaBrg:= DM.QuCari.fieldbyname('NamaBrd').AsString
      end
      else
        TampilIsiMerk;
    end;
  if Copy(KodeBrg.Text,17,1)='' then
   Begin
    KodeBrg.Text:=KodeBrg.Text+'.'+ Copy(KodeBrd.Text,1,4);
    NamaBrg.Text:=NamaBrg.Text+' '+ xNamaBrg;
   end
   else
    KodeBrg.Text:=Copy(KodeBrg.Text,1,17)+Copy(KodeBrd.Text,1,4);
  end;
end;

procedure TfrSubBarangSJ.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrSubBarangSJ.KodeTipeEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TfrSubBarangSJ.KodeTipeExit(Sender: TObject);
begin
  if mValid then
  begin
    if length(KodeTipe.Text)=0 then TampilIsiTipe else
    begin
      if DataBersyarat('select * from dbTipe where KodeTipe=:0',
      [KodeTipe.Text], DM.QuCari)=True then
      begin
        KodeTipe.Text:=DM.QuCari.fieldbyname('kodeTipe').AsString;
        NamaTipe.Caption:='[ '+DM.QuCari.fieldbyname('namatipe').AsString+' ]';
        xNamaBrg:= DM.QuCari.fieldbyname('namatipe').AsString;
      end
      else
        TampilIsiTipe;
    end;
   if Copy(KodeBrg.Text,12,1)='' then
    Begin
     KodeBrg.Text:=KodeBrg.Text+'.'+ Copy(KodeTipe.Text,1,4);
     NamaBrg.Text:=NamaBrg.Text+' '+xNamaBrg;
    end
   else
    KodeBrg.Text:=Copy(KodeBrg.Text,1,12)+Copy(KodeTipe.Text,1,4)+Copy(KodeBrg.Text,17,Length(
   KodeBrg.Text));
  end;
end;

procedure TfrSubBarangSJ.KodeSuppEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TfrSubBarangSJ.KodeSuppExit(Sender: TObject);
begin
  if mValid then
  begin
    if length(KodeSupp.Text)=0 then TampilIsiSupplier else
    begin
      if DataBersyarat('select * from dbSupplier where KodeSupp=:0',
      [KodeSupp.Text], DM.QuCari)=True then
      begin
        KodeSupp.Text:=DM.QuCari.fieldbyname('KodeSupp').AsString;
        NamaSupp.Caption:='[ '+DM.QuCari.fieldbyname('NamaSupp').AsString+' ]';
      end
      else
        TampilIsiSupplier;
    end;
  end;
end;

procedure TfrSubBarangSJ.FormShow(Sender: TObject);
begin
  KodeBrg.Enabled:=IsSimpan;
  NamaGroup.Caption:='Barang 1/2 Jadi';
end;

procedure TfrSubBarangSJ.KodeSuppKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var x:string;
begin
  if Key=VK_Return then
  begin
   if KodeGrp.Text='BJ' then
    Begin
     if DataBersyarat('select * from dbCustomer where KodeCust=:0',[KodeSupp.Text], DM.QuCari)=True then
      begin
       KodeSupp.Text:=DM.QuCari.fieldbyname('KodeCust').AsString;
       NamaSupp.Caption:='[ '+DM.QuCari.fieldbyname('NamaCust').AsString+' ]';
      end
     else
      begin
        KodeBrows:=1280;
        Application.CreateForm(TFrBrows, FrBrows);
        FrBrows.IsiData:=KodeSupp.Text;
        FrBrows.ShowModal;
        if FrBrows.ModalResult=MrOk then
         begin
          KodeSupp.Text:=FrBrows.QuBrows.fieldbyname('KodeCust').AsString;
          NamaSupp.Caption:='[ '+FrBrows.QuBrows.fieldbyname('NamaCust').AsString+' ]';
          X:= FrBrows.QuBrows.fieldbyname('NamaCust').AsString;
         end
       else
        ActiveControl:=KodeSupp;
      end;
    end
   else
    Begin
    if DataBersyarat('select * from dbSupplier where KodeSupp=:0',[KodeSupp.Text], DM.QuCari)=True then
    begin
      KodeSupp.Text:=DM.QuCari.fieldbyname('KodeSupp').AsString;
      NamaSupp.Caption:='[ '+DM.QuCari.fieldbyname('NamaSupp').AsString+' ]';
      x:= DM.QuCari.fieldbyname('NamaSupp').AsString
    end
    else
    begin
      KodeBrows:=1255;
      Application.CreateForm(TFrBrows, FrBrows);
      FrBrows.IsiData:=KodeSupp.Text;
      FrBrows.ShowModal;
      if FrBrows.ModalResult=MrOk then
      begin
        KodeSupp.Text:=FrBrows.QuBrows.fieldbyname('KodeSupp').AsString;
        NamaSupp.Caption:='[ '+FrBrows.QuBrows.fieldbyname('NamaSupp').AsString+' ]';
        x:=FrBrows.QuBrows.fieldbyname('NamaSupp').AsString;
      end
      else
        ActiveControl:=KodeSupp;
    end;
   end;
    if KodeSupp.Text<>'-' then
      begin
        xKodeBrg:=xKodeBrg+KodeSupp.Text;
        xNamaBrg:=xNamaBrg+' '+x;
      end;
      KodeBrg.Text:=xKodeBrg;
      NamaBrg.Text:=Trim(xNamaBrg);
  end;
end;

procedure TfrSubBarangSJ.KdKategoriExit(Sender: TObject);
begin
  if mValid then
  begin
    if length(kdKategori.Text)=0 then TampilIsiKategori else
    begin
      if DataBersyarat('select * from dbKategori where KdKategori=:0',
      [kdKategori.Text], DM.QuCari)=True then
      begin
        KdKategori.Text:=DM.QuCari.fieldbyname('kdkategori').AsString;
        Label13.Caption:='[ '+DM.QuCari.fieldbyname('nmKategori').AsString+' ]';
        xNamaBrg:=DM.QuCari.fieldbyname('nmKategori').AsString;
      end
      else
        TampilIsiKategori;
    end;
   if Copy(KodeBrg.Text,9,1)='' then
    Begin
      KodeBrg.Text:=KodeBrg.Text+'.'+ Copy(kdKategori.Text,1,2);
      NamaBrg.Text:=NamaBrg.Text+' '+ xNamaBrg;
    end
   else
    KodeBrg.Text:=Copy(KodeBrg.Text,1,9)+Copy(kdKategori.Text,1,2)+Copy(KodeBrg.Text,12,Length(
   KodeBrg.Text));
  end;
end;

procedure TfrSubBarangSJ.PBrgExit(Sender: TObject);
begin
 if mValid then
  begin
    if length(PBrg.Text)=0 then TampilIsiProduksi else
    begin
      if MyFindField('dbProduk','KodePrd',PBrg.Text)=true then
      begin
        PBrg.Text:=DM.QuCari.fieldbyname('KodePrd').AsString;
        NPrd.Caption:='[ '+DM.QuCari.fieldbyname('NamaPrd').AsString+' ]';
        xNamaBrg:=DM.QuCari.fieldbyname('NamaPrd').AsString;
      end
      else
        TampilIsiProduksi;
    end;
   if Copy(KodeBrg.Text,1,1)='' then
    Begin
     KodeBrg.Text:=KodeBrg.Text+Copy(PBrg.Text,1,1);
     NamaBrg.Text:=xNamaBrg;
    end
   else
    KodeBrg.Text:=Copy(PBrg.Text,1,1)+'.'+Copy(KodeBrg.Text,3,Length(KodeBrg.Text)) ;
  end;
end;

procedure TfrSubBarangSJ.ABrgExit(Sender: TObject);
begin
if mValid then
  begin
    if length(ABrg.Text)=0 then TampilIsiAsal else
    begin
      if MyFindField('dbAsal','KodeAsal',ABrg.Text)=true then
      begin
        ABrg.Text:=DM.QuCari.fieldbyname('KodeAsal').AsString;
        NAsl.Caption:='[ '+DM.QuCari.fieldbyname('NamaAsal').AsString+' ]';
        xNamaBrg:=DM.QuCari.fieldbyname('NamaAsal').AsString;
      end
      else
        TampilIsiAsal;
    end;
   if Copy(KodeBrg.Text,3,1)='' then
    begin
     KodeBrg.Text:=KodeBrg.Text+'.'+ Copy(ABrg.Text,1,1);
     NamaBrg.Text:=NamaBrg.Text+' '+ xNamaBrg;
    end
   else
     KodeBrg.Text:=Copy(KodeBrg.Text,1,2)+Copy(ABrg.Text,1,1)+Copy(KodeBrg.Text,4,Length(
   KodeBrg.Text));
  end;
end;

procedure TfrSubBarangSJ.MeBrgExit(Sender: TObject);
begin
 if mValid then
  begin
    if length(MeBrg.Text)=0 then TampilIsiMesin else
    begin
      if MyFindField('dbMesin','KodeMesin',MeBrg.Text)=true then
      begin
        MeBrg.Text:=DM.QuCari.fieldbyname('KodeMesin').AsString;
        NMsn.Caption:='[ '+DM.QuCari.fieldbyname('NamaMesin').AsString+' ]';
        xNamaBrg:=DM.QuCari.fieldbyname('NamaMesin').AsString;
      end
      else
        TampilIsiMesin;
    end;
    if Copy(KodeBrg.Text,2,1)='' then
     Begin
      KodeBrg.Text:=KodeBrg.Text+'.'+ Copy(MeBrg.Text,1,1);
      NamaBrg.Text:=NamaBrg.Text+' '+xNamaBrg;
     end
    else
     KodeBrg.Text:=Copy(KodeBrg.Text,1,2)+Copy(MeBrg.Text,1,1)+Copy(KodeBrg.Text,4,Length(
   KodeBrg.Text));
  end;
end;

procedure TfrSubBarangSJ.MBrgExit(Sender: TObject);
begin
 if mValid then
  begin
    if length(MBrg.Text)=0 then TampilIsiMotif else
    begin
      if MyFindField('dbMotif','KodeMotif',MBrg.Text)=true then
      begin
        MBrg.Text:=DM.QuCari.fieldbyname('KodeMotif').AsString;
        NMtf.Caption:='[ '+DM.QuCari.fieldbyname('NamaMotif').AsString+' ]';
        xNamaBrg:= DM.QuCari.fieldbyname('NamaMotif').AsString;
      end
      else
        TampilIsiMotif;
    end;
    if Copy(KodeBrg.Text,4,1)='' then
     Begin
      KodeBrg.Text:=KodeBrg.Text+'.'+ Copy(MBrg.Text,1,4);
      NamaBrg.Text:=NamaBrg.Text+' '+xNamaBrg;
     end
    else
      KodeBrg.Text:=Copy(KodeBrg.Text,1,4)+Copy(MBrg.Text,1,4)+Copy(KodeBrg.Text,9,Length(
      KodeBrg.Text));
  end;
end;

procedure TfrSubBarangSJ.Isi2Change(Sender: TObject);
begin

if Not FTrue then FTrue:=True
else
 begin
 if Isi2.AsFloat=0 then
 else
  Begin
   Hrg1_2.AsFloat:=Hrg1_1.AsFloat*Isi2.AsFloat;
   Hrg2_2.AsFloat:=Hrg2_1.AsFloat*Isi2.AsFloat;
   Hrg3_2.AsFloat:=Hrg3_1.AsFloat*isi2.AsFloat;
  end;
 end;
end;

procedure TfrSubBarangSJ.FormCreate(Sender: TObject);
begin
FTrue:=False;
end;

end.
