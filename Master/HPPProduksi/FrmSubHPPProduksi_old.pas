unit FrmSubHPPProduksi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons, PBNumEdit, ADODB;

type
  TFrSubHPPProduksi = class(TForm)
    KodeBrg: TEdit;
    Label1: TLabel;
    LNamaBrg: TLabel;
    Bevel1: TBevel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Image1: TImage;
    Label11: TLabel;
    Label12: TLabel;
    Bevel2: TBevel;
    Label4: TLabel;
    HPPBrg: TPBNumEdit;
    BitBtn3: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeBrgEnter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure KodeBrgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    mValid: Boolean;
    procedure ClearKomponen;
    procedure TampilIsiBarang;
  public
    { Public declarations }
    IsSimpan : Boolean;
  end;

var
  FrSubHPPProduksi: TFrSubHPPProduksi;

implementation

uses  FrmHPPProduksi, MyGlobal, Myprocedure, MyModul, FrmBrows;

{$R *.DFM}

procedure TFrSubHPPProduksi.ClearKomponen;
begin
   KodeBrg.Text:='';
   LNamaBrg.Caption:='[ . . . ]';
   HPPBrg.Value:=0;
end;

procedure TFrSubHPPProduksi.TampilIsiBarang;
begin
  KodeBrows:=2420312;
  Application.CreateForm(TFrBrows, FrBrows);
  FrBrows.IsiData:=KodeBrg.Text;
  FrBrows.ShowModal;
  if FrBrows.ModalResult=mrOk then
  begin
    KodeBrg.Text:=FrBrows.QuBrows.FieldByName('KodeBrg').AsString;
    LNamaBrg.Caption:='[ '+FrBrows.QuBrows.FieldByName('NamaBrg').AsString+' ]';
  end
  else ActiveControl:=KodeBrg;
end;

procedure TFrSubHPPProduksi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubHPPProduksi.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

procedure TFrSubHPPProduksi.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then close;
end;

procedure TFrSubHPPProduksi.KodeBrgEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubHPPProduksi.BitBtn1Click(Sender: TObject);
begin
  if KodeBrg.Text='' then
  begin
    KodeBrg.SetFocus;
    MessageDlg('Kode Barang tidak boleh kosong', mtError, [mbOK],0);
  end else
  begin
       if IsSimpan=true then
       begin
         if DataBersyarat('Select KodeBrg from dbHPPProduksi where KodeBrg=:0 and Tahun=:1 and Bulan=:2 ',
           [KodeBrg.Text, StrToInt(PeriodThn),StrToInt(PeriodBln)],dm.QuCari)=True then
         begin
           KodeBrg.SetFocus;
           MessageDlg('HPP Barang sudah ada ', mtError, [mbOK],0);
         end else
         begin
           FrHPPProduksi.SimpanData('I');
           ClearKomponen;
           ActiveControl:=KodeBrg;
         end;
       end
       else
       begin
         FrHPPProduksi.SimpanData('U');
         BitBtn2.Click;
       end;
  end
end;

procedure TFrSubHPPProduksi.FormShow(Sender: TObject);
begin
  KodeBrg.Enabled:=IsSimpan=True;
end;

procedure TFrSubHPPProduksi.BitBtn3Click(Sender: TObject);
begin
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from dbHPPProduksi where ');
    if StrToInt(PeriodBln)=12 then
    begin
      SQL.Add('Tahun='+IntToStr(StrToInt(PeriodThn)-1)+' and Bulan=1');
    end else
    begin
      SQL.Add('Bulan='+IntToStr(StrToInt(PeriodBln)-1)+' and Tahun='+PeriodThn);
    end;
    SQL.Add('and KodeBrg not in (select KodeBrg from dbHPPProduksi where ');
    SQL.Add('Tahun='+PeriodThn+' and Bulan='+IntToStr(StrToInt(PeriodBln))+')');
    Open;
  end;

  while not DM.QuCari.Eof do
  begin
      With FrHPPProduksi.Sp_Gudang do
      begin
        Prepared;
        Parameters[1].Value :='I';
        Parameters[2].Value := StrToInt(PeriodThn);
        Parameters[3].Value := StrToInt(PeriodBln);
        Parameters[4].Value := DM.QuCari.FieldByName('KodeBrg').AsString;
        Parameters[5].Value := DM.QuCari.FieldByName('HPPBrg').AsFloat;
        try
          ExecProc;
        except
          showmessage('Proses Gagal !');
          DM.QuCari.Last;
        end;
      end;
      DM.QuCari.Next;
  end;
  FrHPPProduksi.QuView.Close;
  FrHPPProduksi.QuView.Open;
  Close;
end;

procedure TFrSubHPPProduksi.KodeBrgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return Then
  begin
     if length(KodeBrg.Text)=0 then TampilIsiBarang else
     begin
        if DataBersyarat('Select a.KodeBrg, a.NamaBrg, a.Sat1, a.Sat2, a.Isi1, a.Isi2, c.Nama NamaGrp, d.NamaBrd '+
          ' from dbBarang a '+
          ' left outer join dbGroup c on c.KodeGrp=a.KodeGrp '+
          ' left outer join dbBrand d on d.KodeBrd=a.KodeBrd '+
          ' where a.Jenis in (3,4) and a.KodeBrg=:0 '+
          ' order by a.KodeBrg',
          [KodeBrg.Text],DM.QuCari)=True then
        begin
          with DM.QuCari do
          begin
             KodeBrg.Text:=fieldbyname('KodeBrg').AsString;
             LNamaBrg.Caption:='[ '+fieldbyname('NamaBrg').AsString+' ]';
          end;
        end
        else TampilIsiBarang;
     end;
  end;
end;

end.
