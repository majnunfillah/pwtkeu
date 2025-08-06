unit FrmSubLR;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, XPMenu, ExtCtrls, Buttons,db;

type
  TFrSubLR = class(TForm)
    Nomor: TEdit;
    Perkiraan: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Keterangan: TEdit;
    Persentasi: TEdit;
    Label9: TLabel;
    Bevel2: TBevel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label18: TLabel;
    Label4: TLabel;
    Group: TEdit;
    Tipe: TComboBox;
    Tanda: TComboBox;
    Tampil: TComboBox;
    Jumlah: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NomorExit(Sender: TObject);
    procedure NomorEnter(Sender: TObject);
    procedure PerkiraanEnter(Sender: TObject);
    procedure TandaEnter(Sender: TObject);
    procedure TandaExit(Sender: TObject);
    procedure PersentasiEnter(Sender: TObject);
    procedure PersentasiExit(Sender: TObject);
    procedure PerkiraanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TampilIsiPerkiraan(xkodebrows:Integer;xPerkiraan:String;Var xEdit : TEdit; Var xLabel:TLabel);
  end;

var
  FrSubLR: TFrSubLR;
   mValid:Boolean;
implementation
uses FrmLR,MyGlobal,Myprocedure,MyModul,FrmBrows;
{$R *.DFM}

procedure TFrSubLR.TampilIsiPerkiraan(xkodebrows:Integer;xPerkiraan:String;Var xEdit : TEdit; Var xLabel:TLabel);
begin
  KodeBrows:=xkodebrows;
  Application.CreateForm(TFrBrows, FrBrows);
//  FrBrows.IsiData:=xedit.Text;
  //FrBrows.NoKira :=xPerkiraan;
  //strtoint(PeriodBln),strtoint(PeriodThn)
  FrBrows.IsiData:=(PeriodBln);
  FrBrows.NoKira :=(PeriodThn);
  frbrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    if not FrBrows.QuBrows.IsEmpty then
    begin
      xedit.Text:=FrBrows.QuBrows.fieldbyname('Perkiraan').AsString;
      xLabel.Caption:='[ '+FrBrows.QuBrows.fieldbyname('Keterangan').AsString+' ]';
    end
    else
      FrSubLR.ActiveControl := xedit;
  end
  else
    FrSubLR.ActiveControl := xedit;
end;

procedure ClearKomponen;
var i:integer;
begin
  for i:= 0 to FrSubLR.ControlCount-1 do
  begin
    if (FrSubLR.Controls[i] is TEdit) then
       (FrSubLR.Controls[i] as TEdit).Clear;
  end;
  FrSubLR.Label18.Caption:='[]';
end;

procedure TFrSubLR.FormClose(Sender: TObject;
var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubLR.BitBtn1Click(Sender: TObject);
begin
  if (jumlah.text<>'') and (tanda.text='') then
     tanda.setfocus
  else
  if FrLR.IsSimpan=true then
  begin
    with FrLR do
    begin
      UpdateDataLR('I');
      With QuLR do
      begin
        Locate('Nomor',Nomor.Text,[LoCaseInsensitive,LoPartialKey]);
      end;
      ClearKomponen;
    end;
    ActiveControl:=Nomor;
  end else
  begin
    with FrLR do
    begin
      UpdateDataLR('U');
    end;
    FrLR.mPosisi:=Nomor.Text;
    ModalResult:=mrOK;
  end;
end;

procedure TFrSubLR.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrSubLR.FormKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  if key=13 then
     SendMessage(handle,WM_NEXTDLGCTL,0,0)else
  if key=27 then
     close;
end;

procedure TFrSubLR.NomorExit(Sender: TObject);
begin
  if mValid then
  begin
    if Length(Nomor.Text)>0 then
    begin
      if DataBersyarat('Select a.*,b.Keterangan NamaPerkiraan '+
                       'from dbLRHPP a '+
                       '     left outer join dbPerkiraan b on b.Perkiraan=a.perkiraan '+
                       '     left outer join dbdevisi c on c.devisi=a.devisi '+
                       'where A.Nomor=:0 and b.Tipe=1 and a.Devisi+'' - ''+c.NamaDevisi=:1 and a.IsLRHpp=:2 and '+
                       '      Bulan=:3 and Tahun=:4 '+
                       'order by a.Nomor, a.Perkiraan',[Nomor.Text,frLR.Devisi.text,islrHpp,strtoint(PeriodBln),strtoint(PeriodThn)],dm.qucari)=true then
      begin
        ShowMessage('Data Sudah Ada !');
        ActiveControl:=Nomor;
      end;
    end else
    begin
      ShowMessage('Data Tidak Boleh Kosong !');
      ActiveControl:=Nomor;
    end;
  end;
end;

procedure TFrSubLR.NomorEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubLR.PerkiraanEnter(Sender: TObject);
begin
  mValid:=True;
end;

procedure TFrSubLR.TandaEnter(Sender: TObject);
begin
  mValid := True;
end;

procedure TFrSubLR.TandaExit(Sender: TObject);
begin
 if mValid then
 begin
  if (Tanda.Text='+')or(Tanda.Text='-') then
  begin
   mValid := true;
  end else
  begin
   ShowMessage('Tanda harus diisi dengan [ + / - ] !');
   Tanda.Text    := '';
   ActiveControl := Tanda;
  end;
 end;
end;

procedure TFrSubLR.PersentasiEnter(Sender: TObject);
begin
  mValid := true;
end;

procedure TFrSubLR.PersentasiExit(Sender: TObject);
begin
  if mValid then
  begin
    if (Persentasi.Text='A')or(Length(Persentasi.Text)=0) then
    begin
      mValid := true;
    end else
    begin
      ShowMessage('Persentasi dapat diisi dengan [ A ] !');
      Persentasi.Text := '';
      ActiveControl   := Persentasi;
    end;
  end;
end;

procedure TFrSubLR.PerkiraanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=vk_Return) or (key=Vk_Tab) then
  begin
    if mValid then
    begin
     if length(Perkiraan.Text)=0 then TampilIsiPerkiraan(100529,'',Perkiraan,Label18)else
     begin
       if DataBersyarat('select Perkiraan,Keterangan from dbPerkiraan where  Kelompok >1 and    '+     #13+
                        '        Perkiraan not in (      '+           #13+
                        '        select Perkiraan from DBLRHPP   '+    #13+
                        '        union all       '+                     #13+
                        '        select Perkiraan from DBPERKIRAAN where    '+  #13+
                        '        left(Perkiraan,2)in (select distinct(LEFT(A.Perkiraan,2))    '+   #13+
                        '                                        from DBLRHPP A     '+       #13+
                        '                                   Left Outer Join DBPERKIRAAN B on A.Perkiraan = B.Perkiraan    '+     #13+
                        '                                   Where B.Tipe=0   '+   #13+
                        '        and B.Tipe=1 and Kelompok>1 )          '+     #13+
                        '        Union All            '+          #13+
                        '        select A.Perkiraan    '+         #13+
                        '        from DBPERKIRAAN A    '+         #13+
                        '        Left Outer join DBLRHPP B on A.Perkiraan=B.Perkiraan    '+   #13+
                        '        where A.Perkiraan like ''%.%''  '+      #13+
                        '        and left(A.Perkiraan,3) =B.Perkiraan   '+  #13+
			'	) and Perkiraan =:0',[Perkiraan.text],DM.Qucari) then
      begin
        Perkiraan.Text :=DM.QuCari.FieldByname('Perkiraan').AsString;
        Label18.Caption:='[ '+DM.QuCari.FieldByname('Keterangan').AsString+' ]';
        Keterangan.text := DM.QuCari.FieldByname('Keterangan').AsString;
      end
      else
      begin
        TampilIsiPerkiraan(100529,'',Perkiraan,Label18);
        Keterangan.text:=FrBrows.QuBrows.Fieldbyname('Keterangan').AsString;
      end;
     end;
    End;
  end;
end;

procedure TFrSubLR.FormShow(Sender: TObject);
begin
  if IsLRHPP then
     Label9.Caption := 'Master Laba Rugi'
  else
     Label9.Caption := 'Master Laba Rugi';
end;

end.
