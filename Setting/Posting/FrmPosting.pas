unit FrmPosting;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, PBNumEdit, ExtCtrls, Buttons, Db, ADODB, ExtDlgs,strutils;

type
  TFrPosting = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Bevel2: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label18: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label17: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    Label7: TLabel;
    Label30: TLabel;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    Label5: TLabel;
    BitBtn17: TBitBtn;
    Label8: TLabel;
    BitBtn18: TBitBtn;
    Label10: TLabel;
    BitBtn19: TBitBtn;
    Label12: TLabel;
    BitBtn20: TBitBtn;
    Label13: TLabel;
    BitBtn21: TBitBtn;
    Label14: TLabel;
    BitBtn22: TBitBtn;
    Label15: TLabel;
    BitBtn23: TBitBtn;
    Label16: TLabel;
    BitBtn24: TBitBtn;
    Label19: TLabel;
    BitBtn25: TBitBtn;
    Label20: TLabel;
    BitBtn26: TBitBtn;
    Label21: TLabel;
    BitBtn27: TBitBtn;
    Label22: TLabel;
    BitBtn28: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure SelisihEnter(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure BitBtn26Click(Sender: TObject);
    procedure BitBtn27Click(Sender: TObject);
    procedure BitBtn28Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    kdDevisi:String;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel : Boolean;
  end;

var
  FrPosting: TFrPosting;
  mValid : Boolean;
  NoPost : String;
  S:Array [0..255] of char;
implementation
uses  MyGlobal, MyModul, Myprocedure, FrmPostHutPiut;
{$R *.DFM}

procedure ClearKomponen;

begin

end;

procedure TFrPosting.FormClose(Sender: TObject;
var Action: TCloseAction);
begin
  if (Application.MessageBox('Anda yakin keluar Modul ?','Keluar Modul',
      MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
      Action:=cafree else
      Action:=caNone;
end;

procedure TFrPosting.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrPosting.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
     SendMessage(handle,WM_NEXTDLGCTL,0,0) else
  if key=27 then
     close;
end;

procedure TFrPosting.BitBtn4Click(Sender: TObject);
begin
  Application.CreateForm(TFrPostHutPiut, FrPostHutPiut);
  FrPostHutPiut.Caption := 'Piutang';
  FrPostHutPiut.mKode:='PT';
  FrPostHutPiut.ShowModal;
end;

procedure TFrPosting.BitBtn5Click(Sender: TObject);
begin
  Application.CreateForm(TFrPostHutPiut, FrPostHutPiut);
  FrPostHutPiut.Caption := 'Hutang';
  FrPostHutPiut.mKode:='HT';
  FrPostHutPiut.ShowModal;
end;

procedure TFrPosting.FormDestroy(Sender: TObject);
begin
 FrPosting:=nil;
end;

procedure TFrPosting.BitBtn6Click(Sender: TObject);
begin
  Application.CreateForm(TFrPostHutPiut, FrPostHutPiut);
  FrPostHutPiut.Caption := 'Kelompok Kas';
  FrPostHutPiut.mKode:='KAS';
  FrPostHutPiut.ShowModal;
end;

procedure TFrPosting.BitBtn7Click(Sender: TObject);
begin
  Application.CreateForm(TFrPostHutPiut, FrPostHutPiut);
  FrPostHutPiut.Caption := 'Kelompok Bank';
  FrPostHutPiut.mKode:='BANK';
  FrPostHutPiut.ShowModal;
end;

procedure TFrPosting.BitBtn8Click(Sender: TObject);
begin
  Application.CreateForm(TFrPostHutPiut, FrPostHutPiut);
  FrPostHutPiut.Caption := 'Kelompok Aktiva';
  FrPostHutPiut.mKode:='AKV';
  FrPostHutPiut.ShowModal;
end;

procedure TFrPosting.BitBtn9Click(Sender: TObject);
begin
  Application.CreateForm(TFrPostHutPiut, FrPostHutPiut);
  FrPostHutPiut.Caption := 'Kelompok Akumulasi Penyusutan';
  FrPostHutPiut.mKode:='AKM';
  FrPostHutPiut.ShowModal;
end;

procedure TFrPosting.SelisihEnter(Sender: TObject);
begin
 mValid:=true;
end;

procedure TFrPosting.BitBtn10Click(Sender: TObject);
begin
  Application.CreateForm(TFrPostHutPiut, FrPostHutPiut);
  FrPostHutPiut.Caption := 'Kelompok Biaya Debet Note';
  FrPostHutPiut.mKode:='BD';
  FrPostHutPiut.ShowModal;
end;

procedure TFrPosting.BitBtn11Click(Sender: TObject);
begin
  Application.CreateForm(TFrPostHutPiut, FrPostHutPiut);
  FrPostHutPiut.Caption := 'Pendapatan Lain-lain';
  FrPostHutPiut.mKode:='PD';
  FrPostHutPiut.ShowModal;
end;

procedure TFrPosting.BitBtn12Click(Sender: TObject);
begin
  Application.CreateForm(TFrPostHutPiut, FrPostHutPiut);
  FrPostHutPiut.Caption := 'RL Tahun Lalu';
  FrPostHutPiut.mKode:='RLL';
  FrPostHutPiut.ShowModal;
end;

procedure TFrPosting.BitBtn13Click(Sender: TObject);
begin
  Application.CreateForm(TFrPostHutPiut, FrPostHutPiut);
  FrPostHutPiut.Caption := 'RL Tahun Berjalan';
  FrPostHutPiut.mKode:='RLI';
  FrPostHutPiut.ShowModal;
end;

procedure TFrPosting.BitBtn14Click(Sender: TObject);
begin
  Application.CreateForm(TFrPostHutPiut, FrPostHutPiut);
  FrPostHutPiut.Caption := 'RL Bulan Berjalan';
  FrPostHutPiut.mKode:='RLB';
  FrPostHutPiut.ShowModal;
end;

procedure TFrPosting.BitBtn15Click(Sender: TObject);
begin
  Application.CreateForm(TFrPostHutPiut, FrPostHutPiut);
  FrPostHutPiut.Caption := 'Pajak';
  FrPostHutPiut.mKode:='PJK';
  FrPostHutPiut.ShowModal;
end;

procedure TFrPosting.BitBtn16Click(Sender: TObject);
begin
  Application.CreateForm(TFrPostHutPiut, FrPostHutPiut);
  FrPostHutPiut.Caption := 'Selisih';
  FrPostHutPiut.mKode:='SLS';
  FrPostHutPiut.ShowModal;
end;

procedure TFrPosting.BitBtn3Click(Sender: TObject);
begin
  Application.CreateForm(TFrPostHutPiut, FrPostHutPiut);
  FrPostHutPiut.Caption := 'Harga Pokok';
  FrPostHutPiut.mKode:='HPP';
  FrPostHutPiut.ShowModal;
end;

procedure TFrPosting.BitBtn17Click(Sender: TObject);
begin
  Application.CreateForm(TFrPostHutPiut, FrPostHutPiut);
  FrPostHutPiut.Caption := 'Deposito';
  FrPostHutPiut.mKode:='DP';
  FrPostHutPiut.ShowModal;
end;

procedure TFrPosting.BitBtn18Click(Sender: TObject);
begin
  Application.CreateForm(TFrPostHutPiut, FrPostHutPiut);
  FrPostHutPiut.Caption := 'Uang Muka Piutang';
  FrPostHutPiut.mKode:='UPT';
  FrPostHutPiut.ShowModal;
end;

procedure TFrPosting.BitBtn19Click(Sender: TObject);
begin
  Application.CreateForm(TFrPostHutPiut, FrPostHutPiut);
  FrPostHutPiut.Caption := 'Uang Muka Hutang';
  FrPostHutPiut.mKode:='UHT';
  FrPostHutPiut.ShowModal;
end;

procedure TFrPosting.BitBtn21Click(Sender: TObject);
begin
  Application.CreateForm(TFrPostHutPiut, FrPostHutPiut);
  FrPostHutPiut.Caption := 'Hutang Sementara';
  FrPostHutPiut.mKode:='HTS';
  FrPostHutPiut.ShowModal;

end;

procedure TFrPosting.BitBtn20Click(Sender: TObject);
begin
  Application.CreateForm(TFrPostHutPiut, FrPostHutPiut);
  FrPostHutPiut.Caption := 'Piutang Sementara';
  FrPostHutPiut.mKode:='PTS';
  FrPostHutPiut.ShowModal;
end;

procedure TFrPosting.BitBtn22Click(Sender: TObject);
begin
  Application.CreateForm(TFrPostHutPiut, FrPostHutPiut);
  FrPostHutPiut.Caption := 'PPN Masukan';
  FrPostHutPiut.mKode:='PPM';
  FrPostHutPiut.ShowModal;
end;

procedure TFrPosting.BitBtn23Click(Sender: TObject);
begin
  Application.CreateForm(TFrPostHutPiut, FrPostHutPiut);
  FrPostHutPiut.Caption := 'PPN Keluaran';
  FrPostHutPiut.mKode:='PPK';
  FrPostHutPiut.ShowModal;
end;

procedure TFrPosting.BitBtn24Click(Sender: TObject);
begin
  Application.CreateForm(TFrPostHutPiut, FrPostHutPiut);
  FrPostHutPiut.Caption := 'PPh Masukan';
  FrPostHutPiut.mKode:='PHM';
  FrPostHutPiut.ShowModal;
end;

procedure TFrPosting.BitBtn25Click(Sender: TObject);
begin
  Application.CreateForm(TFrPostHutPiut, FrPostHutPiut);
  FrPostHutPiut.Caption := 'PPh Keluaran';
  FrPostHutPiut.mKode:='PHK';
  FrPostHutPiut.ShowModal;
end;

procedure TFrPosting.BitBtn26Click(Sender: TObject);
begin
  Application.CreateForm(TFrPostHutPiut, FrPostHutPiut);
  FrPostHutPiut.Caption := 'Biaya Opname';
  FrPostHutPiut.mKode:='BYO';
  FrPostHutPiut.ShowModal;
end;

procedure TFrPosting.BitBtn27Click(Sender: TObject);
begin
  Application.CreateForm(TFrPostHutPiut, FrPostHutPiut);
  FrPostHutPiut.Caption := 'W I P';
  FrPostHutPiut.mKode:='WIP';
  FrPostHutPiut.ShowModal;
end;

procedure TFrPosting.BitBtn28Click(Sender: TObject);
begin
  Application.CreateForm(TFrPostHutPiut, FrPostHutPiut);
  FrPostHutPiut.Caption := 'Kelompok Biaya Kredit Note';
  FrPostHutPiut.mKode:='BK';
  FrPostHutPiut.ShowModal;
end;

end.
