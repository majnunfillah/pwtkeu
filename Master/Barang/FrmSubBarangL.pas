unit FrmSubBarangL;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, PBNumEdit, ExtCtrls, Buttons, db,strUtils, ADODB, RxLookup;

type
  TFrSubBarangL = class(TForm)
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
    Label4: TLabel;
    KodeCustSupp: TEdit;
    NamaSupp: TLabel;
    Grp: TEdit;
    Label7: TLabel;
    NmGrp: TLabel;
    CB: TCheckBox;
    Label8: TLabel;
    NamaBrg2: TEdit;
    Label10: TLabel;
    Toleransi: TPBNumEdit;
    Label20: TLabel;
    Label21: TLabel;
    KodeAcc: TEdit;
    KodeSubAcc: TEdit;
    NamaAcc: TLabel;
    NamaSubAcc: TLabel;
    procedure KodeBrgEnter(Sender: TObject);
    procedure KodeBrgExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ClearEdit;
    procedure KodeGrpEnter(Sender: TObject);
    procedure Kodegrpxit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure KodeTipeEnter(Sender: TObject);
    procedure KodeSuppEnter(Sender: TObject);
    procedure KodeCustSuppExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GrpExit(Sender: TObject);
    procedure KodeAccEnter(Sender: TObject);
  private
    { Private declarations }
    xKodeBrg, xNamaBrg: String;
    procedure TampilIsiGroup;
    procedure TampilIsiSubGroup;
    procedure TampilIsiGrp;
    procedure TampilIsiTipe;
    procedure TampilIsiKategori;
    procedure TampilIsiMerk;
    procedure TampilIsiSupplier;
  public
    { Public declarations }
     IsSimpan:Boolean;
  end;

var
  FrSubBarangL: TFrSubBarangL;
  mValid:boolean;


implementation

uses myModul, Myprocedure, MyGlobal, Frmbrows, FrmBarangL;

{$R *.DFM}

procedure TFrSubBarangL.TampilIsiGroup;
begin
     KodeBrows:=110011;
     Application.CreateForm(TFrBrows, FrBrows);
     FrBrows.IsiData:=KodeGrp.Text;
     FrBrows.ShowModal;
     if FrBrows.ModalResult=mrOk then
     begin
         KodeGrp.Text:=FrBrows.QuBrows.FieldByName('KodeSubGrp').AsString;
         NamaGroup.Caption:='[ '+FrBrows.QuBrows.FieldByName('NamaSubGrp').AsString+' ]';
     end
     else
        ActiveControl:=KodeGrp;
end;

procedure TFrSubBarangL.TampilIsiSubGroup;
begin
     KodeBrows:=110014;
     Application.CreateForm(TFrBrows, FrBrows);
     FrBrows.IsiData:=KodeGrp.Text;
     FrBrows.IsiData1:=Grp.Text;
     FrBrows.ShowModal;
     if FrBrows.ModalResult=mrOk then
     begin
         KodeGrp.Text:=FrBrows.QuBrows.FieldByName('KodeSubGrp').AsString;
         NamaGroup.Caption:='[ '+FrBrows.QuBrows.FieldByName('NamaSubGrp').AsString+' ]';
     end
     else
        ActiveControl:=KodeGrp;
end;

procedure TFrSubBarangL.TampilIsiGrp;
begin
     KodeBrows:=110013;
     Application.CreateForm(TFrBrows, FrBrows);
     FrBrows.IsiData:=QuotedStr('BJ');
     FrBrows.ShowModal;
     if FrBrows.ModalResult=mrOk then
     begin
         Grp.Text:=FrBrows.QuBrows.FieldByName('KodeGrp').AsString;
         NmGrp.Caption:='[ '+FrBrows.QuBrows.FieldByName('Nama').AsString+' ]';
     end
     else
        ActiveControl:=Grp;
end;

procedure TFrSubBarangL.TampilIsiTipe;
begin

end;

procedure TFrSubBarangL.TampilIsiKategori;
begin

end;

procedure TFrSubBarangL.TampilIsiMerk;
begin

end;

procedure TFrSubBarangL.TampilIsiSupplier;
begin
     KodeBrows:=1255;
     Application.CreateForm(TFrBrows, FrBrows);
     FrBrows.IsiData:=KodeCustSupp.Text;
     FrBrows.ShowModal;
     if FrBrows.ModalResult=mrOk then
     begin
         KodeCustSupp.Text:=FrBrows.QuBrows.FieldByName('KodeCustSupp').AsString;
         NamaSupp.Caption:='[ '+FrBrows.QuBrows.FieldByName('NamaCustSupp').AsString+' ]';
     end
     else
        ActiveControl:=KodeCustSupp;
end;

procedure TFrSubBarangL.ClearEdit;
begin
  KodeBrg.Text:='';
  NamaBrg.Text:='';
  NamaBrg2.Text:='';
  Grp.Text:='BJ';
  NmGrp.Caption:='[ . . . ]';
  KodeGrp.Text:='';
  NamaGroup.Caption:='[ . . . ]';
  KodeCustSupp.Text:='';
  NamaSupp.Caption:='[ . . . ]';

  Sat1.Text:='';
  Sat2.Text:='';
  //Sat3.Text:='';
  Isi1.Value:=1;
  Isi2.Value:=1;
  //Isi3.Value:=1;
  CB.Checked:=False;
  Hrg1_1.Value:=0; Hrg2_1.Value:=0; Hrg3_1.Value:=0;
  Hrg1_2.Value:=0; Hrg2_2.Value:=0; Hrg3_2.Value:=0;
  //Hrg1_3.Value:=0; Hrg2_3.Value:=0; Hrg3_3.Value:=0;
  QntMin.Value:=0;
  QntMax.Value:=0;
  Aktif.ItemIndex:=1;
end;

procedure TFrSubBarangL.KodeBrgEnter(Sender: TObject);
begin
  mValid:=True;
{  if Sender=KodeBrg then
  begin
    if KodeBrg.Text='' then
    begin
     if KodeCustSupp.Text<>'-' then
      begin
       if IsSimpan=True then
       Begin
        xKodeBrg:=xKodeBrg+'.'+Copy(KodeCustSupp.Text,1,1)+Copy(KodeCustSupp.Text,Length(KodeCustSupp.Text)-3,Length(KodeCustSupp.Text));
        xNamaBrg:=xNamaBrg+' '+ Copy(NamaSupp.Caption,3,Length(
          NamaSupp.Caption)-3);
       end;
      end;
      KodeBrg.Text:=xKodeBrg;
      NamaBrg.Text:=(xNamaBrg);
    end;
  end;}
end;

procedure TFrSubBarangL.KodeBrgExit(Sender: TObject);
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

procedure TFrSubBarangL.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=VK_ESCAPE then CLOSE;
end;

procedure TFrSubBarangL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrSubBarangL.KodeGrpEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubBarangL.Kodegrpxit(Sender: TObject);
begin
  if mValid then
  begin
    if length(KodeGrp.Text)=0 then TampilIsiSubGroup else
    begin
      if DataBersyarat('Select * from dbSubgroup where KodeGrp=:0 and KodeSubGrp=:1',[Grp.Text,KodeGrp.Text],DM.Qucari)=True then
      begin
         Kodegrp.Text:=DM.QuCari.fieldbyname('KOdeSubGrp').AsString;
         NamaGroup.Caption:='[ '+DM.QuCari.fieldbyname('NamaSubGrp').AsString+' ]';
      end
      else TampilIsiSubGroup;
    end;
  end;
end;

procedure TFrSubBarangL.BitBtn3Click(Sender: TObject);
var i:Integer;
begin
  if IsSimpan=true then
  begin
    FrBarangL.SimpanData('I');
    ClearEdit;
    ActiveControl:=KodeBrg;
  end
  else
  begin
    FrBarangL.SimpanData('U');
    ModalResult:=mrOk;
  end;
end;

procedure TFrSubBarangL.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrSubBarangL.KodeTipeEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubBarangL.KodeSuppEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrSubBarangL.KodeCustSuppExit(Sender: TObject);
Var x:string;
begin
  if mValid Then
  begin
      if (length(KodeCustSupp.Text)<>0) and
         (DataBersyarat(' select X.KodeCustSupp, Y.NamaCustSupp, '+
                        ' rtrim(ltrim(isnull(Y.Alamat1,'''')+case when isnull(Y.Alamat2,'''')='''' then '''' else '' ''+Y.Alamat2 end)) Alamat, '+
                        ' Y.Kota '+
                        ' from '+
                        '  (select A.KodeCustSupp from DBPERKCUSTSUPP A, DBPOSTHUTPIUT B '+
                        '   where B.Perkiraan=A.Perkiraan and B.Kode='+QuotedStr('HT')+
                        '   group by A.KodeCustSupp '+
                        '  ) X, DBCUSTSUPP Y '+
                        ' where X.KodeCustSupp=Y.KodeCustSupp and X.KodeCustSupp=:0 '+
                        ' order by X.KodeCustSupp',
         [KodeCustSupp.Text],DM.QuCari)=True) then
      begin
        KodeCustSupp.Text:=DM.QuCari.FieldByName('KodeCustSupp').AsString;
        NamaSupp.Caption:='[ '+DM.QuCari.FieldByName('NamaCustSupp').AsString+' ]';
      end else
      begin
        KodeBrows:=110701;
        Application.CreateForm(TFrBrows, FrBrows);
        FrBrows.IsiData:=KodeCustSupp.Text;
        FrBrows.NoKira:='HT';
        FrBrows.ShowModal;
        if FrBrows.ModalResult=mrOk then
        begin
          with FrBrows.QuBrows do
          begin
            KodeCustSupp.Text:=FieldByName('KodeCustSupp').AsString;
            NamaSupp.Caption:='[ '+FieldByName('NamaCustSupp').AsString+' ]';
          end;
        end else
          ActiveControl:=KodeCustSupp;
      end;
  end;
end;

procedure TFrSubBarangL.FormShow(Sender: TObject);
begin
  KodeBrg.Enabled:=IsSimpan;
  if IsSimpan then
    ClearEdit;
end;

procedure TFrSubBarangL.GrpExit(Sender: TObject);
begin
  if mValid then
  begin
    if length(Grp.Text)=0 then TampilIsiGrp else
    begin
      if DataBersyarat('Select * from dbGroup where KodeGrp=:0',['%'+Grp.Text+'%'],DM.QuCari)=true then
      begin
         NmGrp.Caption:='[ '+DM.QuCari.fieldbyname('Nama').AsString+' ]';
         Grp.Text:=DM.QuCari.fieldbyname('KOdeGrp').AsString;
      end
      else TampilIsiGrp;
    end;
  end;
end;

procedure TFrSubBarangL.KodeAccEnter(Sender: TObject);
begin
  mValid:=True;
end;

end.
