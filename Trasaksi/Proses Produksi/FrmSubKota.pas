unit FrmSubKota;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons, Mask, ToolEdit;

type
  TFrSubProsesProduksi = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Label30: TLabel;
    Label31: TLabel;
    Bevel2: TBevel;
    KodeKota: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ComboBox1: TComboBox;
    Tanggal: TDateEdit;
    TglJT: TDateEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeKotaEnter(Sender: TObject);
    procedure KodeKotaExit(Sender: TObject);
    procedure NamaKotaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure KodeAreaEnter(Sender: TObject);
    procedure KodeAreaExit(Sender: TObject);
    procedure TampilisiArea;
  private
    { Private declarations }
    function CariKode: String;
  public
    { Public declarations }
    IsSimpan : boolean;
  end;

var
  FrSubProsesProduksi: TFrSubProsesProduksi;
  mValid:Boolean;
implementation
uses  MyGlobal,Myprocedure, Frmprosesproduksi, MyModul,Frmbrows;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
   for i:= 0 to FrSubprosesproduksi.ControlCount-1 do
   begin
      if (FrSubprosesproduksi.Controls[i] is TEdit) then
         (FrSubprosesproduksi.Controls[i] as TEdit).Clear;
   end;
end;

function TFrSubProsesProduksi.CariKode: String;
var xNomor: String;
begin
   with DM.QuCari do
   begin
      Close;
      SQL.Clear;
      SQL.Add('select max(cast(substring(KodeKota,2,4) as int)) from dbKota ');
      SQL.Add('where substring(KodeKota,1,1)='+QuotedStr(LeftStr(NamaKota.Text,1)));
      SQL.Add('and isnumeric(substring(KodeKota,2,4))=1');
      Open;
      if IsEmpty then
        xNomor:='0001'
      else xNomor:=FormatFloat('0000',Fields[0].AsInteger+1);
   end;
   Result:=LeftStr(NamaKota.Text,1)+xNomor;
end;

procedure TFrSubProsesProduksi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubProsesProduksi.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then
    close;
end;

procedure TFrSubProsesProduksi.BitBtn1Click(Sender: TObject);
begin
  if KodeKota.Text<>'' then
  begin
     if IsSimpan=true then
     begin
        with Frprosesproduksi do
        begin
          Frprosesproduksi.mPosisi:=KodeKota.Text;
          SimpanData('I');
           ClearKomponen;
           NmArea.caption:='[...]';
        end;
        ActiveControl:=Kodeprosesproduksi;
        //ActiveControl:=NamaKota;
     end
     else
     begin
        with Frprosesproduksi do
        begin
          Simpandata('U');
        end;
        ModalResult:=mrOk;
     end;
  end
end;

procedure TFrSubProsesProduksi.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

procedure TFrSubProsesProduksi.KodeKotaEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubProsesProduksi.KodeKotaExit(Sender: TObject);
begin
  If (IsSimpan) then
  begin
    if mValid then
    begin
      if length(KodeKota.Text)<>0 then
      begin
        if MyFindField('dbKota','KodeKota',KodeKota.Text)=true then
        begin
          ShowMessage('Data Sudah Ada !');
          ActiveControl:=KodeKota;
        end;
      end
      else
      begin
        ShowMessage('Data Tidak Boleh Kosong !');
         ActiveControl:=KodeKota;
      end;
    end;
  end;
end;

procedure TFrSubProsesProduksi.NamaKotaExit(Sender: TObject);
begin
  if Trim(NamaKota.Text)<>'' then
  begin
    if (IsSimpan=True)  then
    begin
      //KodeKota.Text:=CariKode;
    end;
  end
  else
  begin
    MsgDataTidakBolehKosong('Nama Kota');
    ActiveControl:=NamaKota;
  end;
{  if trim(NamaKota.Text)<>'' then
  begin
    if (Issimpan=true)  then
    begin
      TempCode :='JN'+GenerateCode('dbKota','KodeKota',uppercase(LeftStr(NamaKota.text,1)));
      KodeKota.Text:=tempCode;
    end;
  end
  else
  begin
   Showmessage('Must Fill The Data');
   activeControl:=NamaKota;
 end;}
end;

procedure TFrSubProsesProduksi.FormShow(Sender: TObject);
begin
  //KodeKota.Enabled:=IsSimpan;
  //KodeKota.Enabled:=False;
  if IsSimpan then
     ActiveControl:=Kodekota
  else
     begin
     ActiveControl:=namakota;
     kodekota.enabled:=False;
     end;
end;

procedure TFrSubProsesProduksi.KodeAreaEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubProsesProduksi.KodeAreaExit(Sender: TObject);
begin
if mValid then
 begin
   if length(Kodearea.Text)=0 then TampilisiArea else
   begin
     if DataBersyarat('Select * from Dbarea where Kodearea like :0',['%'+kodearea.text+'%'],DM.QuCari)=true then
     begin
         NmArea.Caption:='[ '+DM.QuCari.fieldbyname('Namaarea').AsString+' ]';
         Kodearea.Text:=DM.QuCari.fieldbyname('KodeArea').AsString;
     end
     else TampilisiArea;
   end;
 end;
end;

procedure TFrSubProsesProduksi.TampilIsiArea;
begin
     KodeBrows:=9111;
     Application.CreateForm(TFrBrows, FrBrows);
     FrBrows.ShowModal;
     if FrBrows.ModalResult=mrOk then
     begin
         KOdearea.Text:=FrBrows.QuBrows.FieldByName('KodeArea').AsString;
         NmArea.Caption:='[ '+FrBrows.QuBrows.FieldByName('NamaArea').AsString+' ]';
     end
     else
        ActiveControl:=kodearea;
end;

end.
