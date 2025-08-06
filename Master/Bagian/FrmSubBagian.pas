unit FrmSubBagian;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons;

type
  TFrSubBagian = class(TForm)
    KodeBrd: TEdit;
    NamaBrd: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    Label30: TLabel;
    Label31: TLabel;
    Bevel2: TBevel;
    Label3: TLabel;
    Perkiraan: TEdit;
    LNamaPerk: TLabel;
    Label4: TLabel;
    BiayaPersediaan: TEdit;
    LnamaPersediaan: TLabel;
    Label5: TLabel;
    BiayaJasaKom: TEdit;
    lNamaBiayaJasaKom: TLabel;
    lNamaBiayaJasaAlat: TLabel;
    BiayaJasaAlat: TEdit;
    Label8: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeBrdEnter(Sender: TObject);
    procedure KodeBrdExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PerkiraanEnter(Sender: TObject);
    procedure PerkiraanExit(Sender: TObject);
    procedure BiayaPersediaanExit(Sender: TObject);
    procedure BiayaJasaKomEnter(Sender: TObject);
    procedure BiayaJasaKomExit(Sender: TObject);
    procedure BiayaJasaAlatEnter(Sender: TObject);
    procedure BiayaJasaAlatExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IsSimpan : boolean;
  end;

var
  FrSubBagian: TFrSubBagian;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, FrmBagian, MyModul;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubBagian.ControlCount-1 do
   begin
      if (FrSubBagian.Controls[i] is TEdit) then
         (FrSubBagian.Controls[i] as TEdit).Clear;
   end;
   FrSubBagian.LNamaPerk.Caption :='[ . . . ]';
   FrSubBagian.lNamaBiayaJasaKom.Caption :='[ . . . ]';
   FrSubBagian.lNamaBiayaJasaAlat.Caption :='[ . . . ]';
   FrSubBagian.LnamaPersediaan.Caption :='[ . . . ]';
end;

procedure TFrSubBagian.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubBagian.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrSubBagian.BitBtn1Click(Sender: TObject);
begin
  if KodeBrd.Text<>'' then
  begin
    if (Perkiraan.Text<>'') and (BiayaPersediaan.Text<>'') then
    begin
       if IsSimpan=true then
       begin
          with FrBagian do
          begin
             SimpanData('I');
             ClearKomponen;
          end;
          ActiveControl:=KodeBrd;
       end
       else
       begin
          with FrBagian do
          begin
             Simpandata('U');
          end;
          ModalResult:=mrOk;
       end;
    end
    else
    begin
      MsgDataTidakBolehKosong('Biaya Kom dan Biaya Peralatan');
      ActiveControl := Perkiraan;
    end;
  end
end;

procedure TFrSubBagian.BitBtn2Click(Sender: TObject);
begin
   Close;
end;


procedure TFrSubBagian.KodeBrdEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubBagian.KodeBrdExit(Sender: TObject);
begin
  if (IsSimpan) then
  begin
    if mValid then
    begin
      if length(KodeBrd.Text)<>0 then
      begin
        if MyFindField('dbBagian','Kodebag',KodeBrd.Text)=true then
        begin
           ShowMessage('Data Sudah Ada !');
           ActiveControl:=KodeBrd;
        end;
      end
      else
      begin
        ShowMessage('Data Tidak Boleh Kosong !');
        ActiveControl:=KodeBrd;
      end;
    end;
  end;
end;

procedure TFrSubBagian.FormShow(Sender: TObject);
begin
  KodeBrd.Enabled:=IsSimpan;
end;

procedure TFrSubBagian.PerkiraanEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrSubBagian.PerkiraanExit(Sender: TObject);
begin
  if mValid then
  begin
     if DataBersyarat('select * from dbPerkiraan where Perkiraan=:0',[Perkiraan.text],DM.Qucari) then
    begin
      Perkiraan.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      LNamaPerk.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubBagian,Perkiraan ,LNamaPerk,1005,'Perkiraan','Keterangan');
  end;
end;

procedure TFrSubBagian.BiayaPersediaanExit(Sender: TObject);
begin
  if mValid then
  begin
    if DataBersyarat('select * from dbPerkiraan where Perkiraan=:0',[BiayaPersediaan.text],DM.Qucari) then
    begin
      BiayaPersediaan.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      LnamaPersediaan.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubBagian,BiayaPersediaan ,LNamaPersediaan,1005,'Perkiraan','Keterangan');
  end;
end;

procedure TFrSubBagian.BiayaJasaKomEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrSubBagian.BiayaJasaKomExit(Sender: TObject);
begin
  if mValid then
  begin
    if DataBersyarat('select * from dbPerkiraan where Perkiraan=:0',[BiayaJasaKom.text],DM.Qucari) then
    begin
      BiayaJasaKom.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      lNamaBiayaJasaKom.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubBagian,BiayaJasaKom ,LNamaBiayaJasaKom,1005,'Perkiraan','Keterangan');
  end;
end;

procedure TFrSubBagian.BiayaJasaAlatEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrSubBagian.BiayaJasaAlatExit(Sender: TObject);
begin
  if mValid then
  begin
    if DataBersyarat('select * from dbPerkiraan where Perkiraan=:0',[BiayaJasaAlat.text],DM.Qucari) then
    begin
      BiayaJasaAlat.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
      lNamaBiayaJasaAlat.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
    end
    else
      TampilIsiData(FrSubBagian,BiayaJasaAlat ,LNamaBiayaJasaAlat,1005,'Perkiraan','Keterangan');
  end;
end;

end.
