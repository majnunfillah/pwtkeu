unit FrmSubValas_;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, PBNumEdit, ExtCtrls, Buttons, db,strUtils, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, RXCtrls, ADODB, Mask, ToolEdit, dxDBTLCl, dxGrClms;

type
  TFrSubValas_ = class(TForm)
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    KodeLokasi: TEdit;
    Panel2: TPanel;
    Panel4: TPanel;
    PanelShow1: TPanel;
    HapusBtn: TSpeedButton;
    KoreksiBtn: TSpeedButton;
    TambahBtn: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    Panel1: TPanel;
    QuBeli: TADOQuery;
    DsQuBeli: TDataSource;
    Sp_Beli: TADOStoredProc;
    Image1: TImage;
    LblKode: TLabel;
    LblNama: TLabel;
    Label1: TLabel;
    Tanggal: TDateEdit;
    Kurs: TPBNumEdit;
    Label2: TLabel;
    QuBelikodevls: TStringField;
    QuBeliTanggal: TDateTimeField;
    QuBeliKurs: TBCDField;
    QuBeliNamaVls: TStringField;
    dxDBGrid1kodevls: TdxDBGridMaskColumn;
    dxDBGrid1Tanggal: TdxDBGridDateColumn;
    dxDBGrid1Kurs: TdxDBGridMaskColumn;
    dxDBGrid1NamaVls: TdxDBGridMaskColumn;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TambahBtnClick(Sender: TObject);
    procedure KodeLokasiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KoreksiBtnClick(Sender: TObject);
    procedure HapusBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TanggalChange(Sender: TObject);
  private
    { Private declarations }
    Model: String;
    procedure TampilData;
    procedure TampilTombolDetail(pNilai: Boolean);
    procedure ClearPanelDetail;
    procedure UpdateDataBeli(pChoice: Char);
    //function  CekDataSudahAda: Boolean;
  public
    { Public declarations }
     IsSimpan:Boolean;
     SubGroup_KodeGrp: String;
  end;

var
  FrSubValas_: TFrSubValas_;
  mValid:boolean;


implementation
uses myModul,Myprocedure,MyGlobal, Frmbrows,FrmBarang, FrmValas;
{$R *.DFM}

procedure TFrSubValas_.TampilData;
begin
  QuBeli.Close;
  QuBeli.Prepared;
  QuBeli.Parameters[0].Value := Tanggal.Date;
  QuBeli.Open;
end;

procedure TFrSubValas_.TampilTombolDetail(pNilai: Boolean);
begin
  PanelShow1.Enabled:=not pNilai;
  Panel3.Visible:=pNilai;
  Panel1.Enabled:=not pNilai;
  Panel2.Enabled:=not pNilai;
  Panel3.Enabled:=pNilai;
  TambahBtn.Enabled:=not pNilai;
  KoreksiBtn.Enabled:=not pNilai;
  HapusBtn.Enabled:=not pNilai;
end;

procedure TFrSubValas_.ClearPanelDetail;
begin
  KOdeLokasi.Text:='';
  Kurs.Value := 1;
end;

procedure TFrSubValas_.UpdateDataBeli(pChoice: Char);
begin
   BM:=QuBeli.GetBookmark;
   DM.QuCari.Close;
   DM.QuCari.SQL.Clear;
   if (pChoice='I') or (pChoice='U') then
   begin
     DM.QuCari.SQL.Add('execute Sp_SetKursharian :0, :1, :2');
     DM.QuCari.Prepared;
     DM.QuCari.Parameters[0].Value := KodeLokasi.Text;
     DM.QuCari.Parameters[1].Value := Tanggal.Date;
     DM.QuCari.Parameters[2].Value := Kurs.Value;
   end;

   try
     DM.QuCari.ExecSQL;
     if pChoice='I' then
     begin
       TampilData;
       QuBeli.Locate('KodeVls', KodeLokasi.Text, [LOP,LOC]);
     end
     else if pChoice='U' then
     begin
       TampilData;
       if QuBeli.BookmarkValid(BM) then
       begin
         try
           QuBeli.GotoBookmark(BM);
         finally
           QuBeli.FreeBookmark(BM);
         end
       end else
       begin
         QuBeli.FreeBookmark(BM);
         QuBeli.Last;
       end;
     end
     else if pChoice='D' then
     begin
       TampilData;
     end;
   except
     ShowMessage('Proses Gagal !!!')
   end;
end;

{function TFrSubLokasiPerkiraan_.CekDataSudahAda: Boolean;
begin
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from DbLokasiPerkiraanDet where KodeLokasi='+QuotedStr(kodelokasi.Text)+'');
    Open;
    CekDataSudahAda:=not IsEmpty;
    Close;
  end;
end;  }

procedure TFrSubValas_.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  //else if Key=VK_ESCAPE then Close;
end;

procedure TFrSubValas_.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFrSubValas_.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrSubValas_.FormShow(Sender: TObject);
begin
  Tanggal.Date := Date;
  TampilData;
end;

procedure TFrSubValas_.TambahBtnClick(Sender: TObject);
begin
  Model:='write';
  TampilTombolDetail(True);
  KodeLokasi.Enabled:=false;
  ActiveControl:=Kurs;
  kodelokasi.text:=QuBeli.fieldbyname('kodevls').asstring;
end;

procedure TFrSubValas_.KodeLokasiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    SpeedButton1.Click;
  end;
end;

procedure TFrSubValas_.KoreksiBtnClick(Sender: TObject);
begin
   mValid:=False;
   Model:='koreksi';
   KodeLokasi.Enabled:=False;
   if QuBeli.IsEmpty=False then
   begin
      TampilTombolDetail(True);
      KodeLokasi.Text:=QuBeli.fieldbyname('kodevls').asstring;
      Kurs.Value:=QuBeli.fieldbyname('Kurs').AsFloat;
      ActiveControl:=Kurs;
   end
   else
   begin
      ShowMessage('Tidak ada transaksi yang dikoreksi !');
      ActiveControl:=dxDBGrid1;
   end;
end;

procedure TFrSubValas_.HapusBtnClick(Sender: TObject);
begin
   if QuBeli.IsEmpty=True then
   begin
      Application.MessageBox('Tabel Kosong','Informasi'
      ,MB_OK Or MB_ICONWARNING);
   end
   else
   begin
      StrPCopy(S,Format('Anda yakin Kode %s dan Nama %s dihapus ?',
      [QuBeli.FieldByName('KOdevls').AsString,FormatFloat(',0.00', QuBeli.FieldByname('Kurs').AsFloat)]));
      if (Application.MessageBox(S,'Hapus Data',
              MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
      begin
              UpdateDataBeli('D');
      end;
   end;
end;

procedure TFrSubValas_.BitBtn1Click(Sender: TObject);
var iDptDisimpan: Boolean;
begin
  iDptDisimpan:=Kurs.Value>=1;

  if iDptDisimpan then
  begin
    if Model='write' then
    begin
        UpdateDataBeli('I');
        ClearPanelDetail;
        ActiveControl:=Kurs;
    end
    else if Model='koreksi' then
    begin
      UpdateDataBeli('U');
      SpeedButton1.Click;
    end;
  end;
  // ActiveControl:=Perkiraan;
  kodelokasi.text:=QuBeli.fieldbyname('kodevls').asstring;
end;

procedure TFrSubValas_.SpeedButton1Click(Sender: TObject);
begin
  mValid:=False;
  TampilTombolDetail(False);
  ActiveControl:=dxDBGrid1;
  ClearPanelDetail;
end;

procedure TFrSubValas_.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Escape then
  begin
    mValid:=False;
    Close;
  end
  else if key=VK_return then
  begin
    KoreksiBtn.Click;
  end
  else if key=VK_delete then
  begin
    HapusBtn.Click;
  end
  else if key=VK_insert then
  begin
    TambahBtn.Click;
  end;
end;

procedure TFrSubValas_.TanggalChange(Sender: TObject);
begin
  TampilData;
end;

end.
