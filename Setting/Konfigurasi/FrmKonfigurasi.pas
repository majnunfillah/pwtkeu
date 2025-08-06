unit FrmKonfigurasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, dxPageControl, StdCtrls, DB, ADODB, Buttons,
  AxCtrls, OleCtrls, DBOleCtl, DBCtrls, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ExtDlgs, dxEditor,
  dxExEdtr, dxEdLib;

type
  TFrKonfigurasi = class(TForm)
    Konfigurasi: TdxPageControl;
    Panel1: TPanel;
    Perusahaan: TdxTabSheet;
    Image1: TImage;
    Panel2: TPanel;
    SetNomor: TdxTabSheet;
    Group1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    BBM: TEdit;
    BBK: TEdit;
    BPB: TEdit;
    PPL: TEdit;
    BPO: TEdit;
    BPL: TEdit;
    ALIAS: TEdit;
    Group2: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Pemisah: TComboBox;
    Format1: TComboBox;
    Format2: TComboBox;
    Format3: TComboBox;
    Format4: TComboBox;
    Contoh: TEdit;
    OkBtn: TBitBtn;
    CancelBtn: TBitBtn;
    QuSimpan: TADOQuery;
    Reset: TComboBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Nama: TEdit;
    Alamat1: TEdit;
    Alamat2: TEdit;
    Kota: TEdit;
    DataSource1: TDataSource;
    Panel3: TPanel;
    Logo: TImage;
    BtnCari: TBitBtn;
    CariGambar: TOpenPictureDialog;
    Label22: TLabel;
    Telpon: TEdit;
    Label23: TLabel;
    Fax: TEdit;
    BitBtn1: TBitBtn;
    Label26: TLabel;
    NOSERI: TEdit;
    Label27: TLabel;
    Label28: TLabel;
    Jabatan: TEdit;
    Direksi: TEdit;
    Label1: TLabel;
    IniCab: TEdit;
    Label2: TLabel;
    PO: TEdit;
    Label6: TLabel;
    BP: TEdit;
    Label7: TLabel;
    RPB: TEdit;
    Label21: TLabel;
    BKM: TEdit;
    Label24: TLabel;
    BKK: TEdit;
    Label25: TLabel;
    BMM: TEdit;
    Label31: TLabel;
    BJK: TEdit;
    Label32: TLabel;
    BPPB: TEdit;
    Label29: TLabel;
    INS: TEdit;
    Label36: TLabel;
    PanelTTD: TPanel;
    LblTTD: TLabel;
    BtnTTD: TBitBtn;
    AdGambar: TADODataSet;
    TTD: TDBImage;
    AdGambarTTD: TBlobField;
    DsGambar: TDataSource;
    Label30: TLabel;
    SPRK: TEdit;
    Label33: TLabel;
    SPG: TEdit;
    Label34: TLabel;
    Label35: TLabel;
    PBL: TEdit;
    PJL: TEdit;
    Label37: TLabel;
    BBP: TEdit;
    Label38: TLabel;
    RBPB: TEdit;
    Label39: TLabel;
    ENQ: TEdit;
    Label40: TLabel;
    CR: TEdit;
    Label41: TLabel;
    SO: TEdit;
    Label42: TLabel;
    RKL: TEdit;
    NoBKM: TEdit;
    NoBBM: TEdit;
    NoBMM: TEdit;
    NoBJK: TEdit;
    NoBPPB: TEdit;
    NoBPB: TEdit;
    NoRBPB: TEdit;
    NoPPL: TEdit;
    NoSPRK: TEdit;
    NoSPG: TEdit;
    NoPO: TEdit;
    NoINS: TEdit;
    NoBP: TEdit;
    NoENQ: TEdit;
    NOSO: TEdit;
    NoBKK: TEdit;
    NoBBK: TEdit;
    NoPBL: TEdit;
    NoPJL: TEdit;
    NoBBP: TEdit;
    NoBPL: TEdit;
    NoBPO: TEdit;
    NoRPB: TEdit;
    NoCR: TEdit;
    NoRKL: TEdit;
    Label43: TLabel;
    SC: TEdit;
    NOSC: TEdit;
    Label44: TLabel;
    SPP: TEdit;
    NOSPP: TEdit;
    Label45: TLabel;
    SPB: TEdit;
    NOSPB: TEdit;
    Label46: TLabel;
    INVJual: TEdit;
    NOINVJual: TEdit;
    Label47: TLabel;
    SHIP: TEdit;
    NOSHIP: TEdit;
    Label48: TLabel;
    KNS: TEdit;
    NOKNS: TEdit;
    Label49: TLabel;
    BPSPRK: TEdit;
    NOBPSPRK: TEdit;
    x: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    dxTabSheet2: TdxTabSheet;
    Label50: TLabel;
    NamaPKP: TEdit;
    Label51: TLabel;
    AlamatPKP1: TEdit;
    AlamatPKP2: TEdit;
    Label52: TLabel;
    KotaPKP: TEdit;
    Label19: TLabel;
    NPWP: TEdit;
    Label20: TLabel;
    TglPengukuhan: TdxDateEdit;
    Label55: TLabel;
    NamaPKP2: TEdit;
    Label56: TLabel;
    AlamatPKP21: TEdit;
    AlamatPKP22: TEdit;
    KotaPKP2: TEdit;
    Label57: TLabel;
    Label53: TLabel;
    NPWP2: TEdit;
    Label54: TLabel;
    TglPengukuhan2: TdxDateEdit;
    Label58: TLabel;
    email: TEdit;
    Label59: TLabel;
    RPNJ: TEdit;
    NORPNJ: TEdit;
    Label60: TLabel;
    BHN: TEdit;
    NOBHN: TEdit;
    Label61: TLabel;
    RSPB: TEdit;
    NORSPB: TEdit;
    procedure KonfigurasiChange(Sender: TObject);
    procedure OkBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PemisahChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnCariClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtnTTDClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Nomor;
    Procedure PerusahaanData;
    Procedure Rubah;
    Procedure SimpanNomor;
    Procedure SimpanPerusahaan;
  end;

var
  FrKonfigurasi: TFrKonfigurasi;

implementation
uses MyModul,MyGlobal;
{$R *.dfm}

Procedure TFrKonfigurasi.SimpanPerusahaan;
begin
  with Qusimpan do
  begin
    close;
    sql.Clear;
    SQl.Add('Declare @Tgl Datetime,@Tgl2 Datetime Select @tgl=:0, @Tgl2=:1');
    sql.Add('if not exists(Select Nama from dbPerusahaan)');
    sql.Add('begin');
    Sql.Add('  Insert into dbPerusahaan (KODEUSAHA, NAMA, ALAMAT1, ALAMAT2, KOTA, Telpon, Fax, ');
    SQl.add('                            NAMAPKP, ALAMATPKP1, ALAMATPKP2, KOTAPKP, NPWP, TGLPENGUKUHAN, ');
    SQl.add('                            NAMAPKP1, ALAMATPKP21, ALAMATPKP22, KOTAPKP1, NPWP1, TGLPENGUKUHAN1, Direksi, Jabatan,email, LOGO)');
    Sql.Add('  Values(''0'','+QuotedStr(Nama.Text)+','+
               QuotedStr(Alamat1.Text)+','+
               QuotedStr(Alamat2.Text)+','+
               QuotedStr(Kota.Text)+','+
               QuotedStr(Telpon.Text)+','+
               QuotedStr(Fax.Text)+','+
               QuotedStr(NamaPKP.Text)+','+
               QuotedStr(AlamatPKP1.Text)+','+
               QuotedStr(AlamatPKP2.Text)+','+
               QuotedStr(KotaPKP.Text)+','+
               QuotedStr(NPWP.Text)+',@Tgl,'+
               QuotedStr(NamaPKP2.Text)+','+
               QuotedStr(AlamatPKP21.Text)+','+
               QuotedStr(AlamatPKP22.Text)+','+
               QuotedStr(KotaPKP2.Text)+','+
               QuotedStr(NPWP2.Text)+',@Tgl2,'+
               QuotedStr(Direksi.Text)+','+
               QuotedStr(email.Text)+','+
               QuotedStr(Jabatan.Text)+',:2)');

    sql.Add('end');
    sql.Add('Else');
    sql.Add('begin');
    SQl.Add('Update DbPerusahaan Set KodeUsaha=''0'',Nama='+QuotedStr(Nama.Text)+
            ',ALamat1='+QuotedStr(Alamat1.Text)+',ALamat2='+QuotedStr(Alamat2.Text)+
            ',Telpon='+QuotedStr(Telpon.Text)+',FAX='+QuotedStr(Fax.Text)+
            ',Kota='+QuotedStr(Kota.Text)+
            ',NamaPKP='+QuotedStr(NamaPKP.Text)+
            ',ALamatPKP1='+QuotedStr(AlamatPKP1.Text)+
            ',ALamatPKP2='+QuotedStr(AlamatPKP2.Text)+
            ',KotaPKP='+QuotedStr(KotaPKP.Text)+
            ',NPWP='+QuotedStr(NPWP.Text)+
            ',TglPengukuhan=@TGl'+
            ',NamaPKP1='+QuotedStr(NamaPKP2.Text)+
            ',ALamatPKP21='+QuotedStr(AlamatPKP21.Text)+
            ',ALamatPKP22='+QuotedStr(AlamatPKP22.Text)+
            ',KotaPKP1='+QuotedStr(KotaPKP2.Text)+
            ',NPWP1='+QuotedStr(NPWP2.Text)+
            ',TglPengukuhan1=@TGl2'+
            ',Direksi='+QuotedStr(Direksi.Text)+',Jabatan='+QuotedStr(Jabatan.Text)+
            ',LOGO=:3,Email='+QuotedStr(email.Text)+'');
    sql.Add('end');
    Prepared;
    Parameters[0].Value := TglPengukuhan.Date;
    Parameters[1].Value := TglPengukuhan2.Date;
    Parameters[2].Assign(Logo.Picture.Bitmap);
    Parameters[3].Assign(Logo.Picture.Bitmap);
    ExecSQL;
  end;
end;

Procedure TFrKonfigurasi.SimpanNomor;
begin
  with Qusimpan do
  begin
    Close;
    SQL.Clear;
    SQl.Add('Update DbNomor Set BKM='+QuotedStr(BKM.Text)+', NoBKM='+QuotedStr(NoBKM.Text )+
     ', BKK='+QuotedStr(BKK.Text)+ ', NoBKK='+QuotedStr(NoBKK.Text )+
     ', BBM='+QuotedStr(BBM.Text)+', NoBBM='+QuotedStr(NoBBM.Text)+
     ', BBK='+QuotedStr(BBK.Text)+', NoBBK='+QuotedStr(NoBBK.Text )+
     ', BMM='+QuotedStr(BMM.Text)+', NoBMM='+QuotedStr(NoBMM.Text )+
     ', BJK='+QuotedStr(BJK.Text)+', NoBJK='+QuotedStr(NoBJK.Text)+
     ', PJL='+QuotedStr(PJL.Text)+', NOPJL='+QuotedStr(NoPJL.Text )+
     ', PBL='+QuotedStr(PBL.Text)+', NoPBL='+QuotedStr(NoPBL.Text)+
     ', BPPB='+QuotedStr(BPPB.Text)+',NoBPPB='+QuotedStr(NoBPPB.Text)+
     ', BPB='+QuotedStr(BPB.Text)+', NoBPB='+QuotedStr(NoBPB.Text)+
     ', BBP='+QuotedStr(BBP.Text)+', NoBBP='+QuotedStr(NoBBP.Text )+
     ', RBPB='+QuotedStr(RBPB.Text)+', NoRBPB='+QuotedStr(NoRBPB.Text )+
     ', PPL='+QuotedStr(PPL.Text)+',NoPPL='+QuotedStr(NoPPL.Text ) +
     ', BPL='+QuotedStr(BPL.Text)+', NoBPL='+QuotedStr(NoBPL.Text)+
     ', PO='+QuotedStr(PO.Text)+', NoPO='+QuotedStr(NoPPL.Text )+
     ', BPO='+QuotedStr(BPO.Text)+', NoBPO='+QuotedStr(NoBPO.Text )+
     ', BP='+QuotedStr(BP.Text)+', NoBP='+QuotedStr(NOBP.Text)+
     ', BPSPRK='+QuotedStr(BPSPRK.Text)+', NoBPSPRK='+QuotedStr(NOBPSPRK.Text)+
     ', INS='+QuotedStr(INS.Text)+', NoINS='+QuotedStr(NoINS.Text )+
     ', RPB='+QuotedStr(RPB.Text)+', NoRPB='+QuotedStr(NoRPB.text)+
     ', SPRK='+QuotedStr(SPRK.Text)+', NoSPRK='+QuotedStr(NoSPRK.Text )+
     ', SPG='+QuotedStr(SPG.Text)+', NoSPG='+QuotedStr(NoSPG.Text )+
     ', ENQ='+QuotedStr(ENQ.Text)+', NoENQ='+QuotedStr(NoENQ.Text)+
     ', CR='+QuotedStr(CR.Text)+', NoCR='+QuotedStr(noCr.Text )+
     ', SO='+QuotedStr(SO.Text)+', NoSO='+QuotedStr(noSO.Text )+
     ', RKL='+QuotedStr(RKL.Text)+', NoRKL='+QuotedStr(norkl.Text )+
     ', SC='+QuotedStr(SC.Text)+', NoSC='+QuotedStr(NoSC.Text )+
     ', SPP='+QuotedStr(SPP.Text)+', NoSPP='+QuotedStr(NoSPP.Text )+
     ', SPB='+QuotedStr(SPB.Text)+', NoSPB='+QuotedStr(NoSPB.Text )+
     ', RSPB='+QuotedStr(RSPB.Text)+', NoRSPB='+QuotedStr(NoRSPB.Text )+
     ', INVC='+QuotedStr(INVJual.Text)+', NoINVC='+QuotedStr(NoINVJual.Text )+
     ', SHIP='+QuotedStr(SHIP.Text)+', NoSHIP='+QuotedStr(NoSHIP.Text )+
     ', RPJ='+QuotedStr(RPNJ.Text)+', NORPJ='+QuotedStr(NoRPNJ.Text )+
     ', BHN='+QuotedStr(BHN.Text)+', NOBHN='+QuotedStr(NoBHN.Text )+
     ', ALIAS='+QuotedStr(ALIAS.Text)+
     ', INICAB='+QuotedStr(IniCab.Text)+
     ', PEMISAH='+IntToStr(Pemisah.itemIndex)+
     ', Format1='+IntToStr(Format1.itemIndex)+
     ', Format2='+IntToStr(Format2.itemIndex)+
     ', Format3='+IntToStr(Format3.itemIndex)+
     ', Format4='+IntToStr(Format4.itemIndex)+
     ', CONTOH='+QuotedStr(Contoh.Text)+
     ', Reset='+IntToStr(Reset.ItemIndex)+',NOSERI='+QuotedStr(NOSERI.Text));
    ExecSQL;
  end;
  DM.TaNomor.Close;
  DM.TaNomor.Open;
end;

Procedure TFrKonfigurasi.Rubah;
var xxNomor: String;
begin
  Separator := Pemisah.Items.Strings[Pemisah.ItemIndex];
  case Format1.ItemIndex of
    0 : F1 := ALIAS.Text;
    1 : F1 := PBL.Text;
    2 : F1 := FormatDateTime('MMYY',Date);
    3 : F1 := FormatDateTime('MMYYYY',Date);
    4 : F1 := DM.TaNomor.FieldByName('DigitNomor').AsString;
    5 : F1 := FormatDateTime('YYMM',Date);
    6 : F1 := FormatDateTime('YYYYMM',Date);
  end;
  case Format2.ItemIndex of
    0 : F2 := ALIAS.Text;
    1 : F2 := PBL.Text;
    2 : F2 := FormatDateTime('MMYY',Date);
    3 : F2 := FormatDateTime('MMYYYY',Date);
    4 : F2 := DM.TaNomor.FieldByName('DigitNomor').AsString;
    5 : F2 := FormatDateTime('YYMM',Date);
    6 : F2 := FormatDateTime('YYYYMM',Date);
  end;
  case Format3.ItemIndex of
    0 : F3 := ALIAS.Text;
    1 : F3 := PBL.Text;
    2 : F3 := FormatDateTime('MMYY',Date);
    3 : F3 := FormatDateTime('MMYYYY',Date);
    4 : F3 := DM.TaNomor.FieldByName('DigitNomor').AsString;
    5 : F3 := FormatDateTime('YYMM',Date);
    6 : F3 := FormatDateTime('YYYYMM',Date);
  end;
  case Format4.ItemIndex of
    0 : F4 := ALIAS.Text;
    1 : F4 := PBL.Text;
    2 : F4 := FormatDateTime('MMYY',Date);
    3 : F4 := FormatDateTime('MMYYYY',Date);
    4 : F4 := DM.TaNomor.FieldByName('DigitNomor').AsString;
    5 : F4 := FormatDateTime('YYMM',Date);
    6 : F4 := FormatDateTime('YYYYMM',Date);
  end;
  xxNomor:='';
  if Trim(F1)<>'' then
    xxNomor:=xxNomor+Trim(F1)+Separator;
  if Trim(F2)<>'' then
    xxNomor:=xxNomor+Trim(F2)+Separator;
  if Trim(F3)<>'' then
  begin
    if Trim(F4)<>'' then
      xxNomor:=xxNomor+Trim(F3)+Separator+Trim(F4)
    else xxNomor:=xxNomor+Trim(F3);
  end;
  Contoh.Text:=xxNomor;
  //Contoh.Text:=F1+Separator+F2+Separator+F3+Separator+F4;
end;

Procedure TFrKonfigurasi.PerusahaanData;
begin
  with QuSimpan do
  begin
    Close;
    sql.Clear;
    sql.Add('Select KODEUSAHA,NAMA,ALAMAT1,ALAMAT2,KOTA,Telpon,Fax,NAMAPKP,ALAMATPKP1,ALAMATPKP2,KOTAPKP, NPWP,TGLPENGUKUHAN,');
    Sql.add('NAMAPKP1,ALAMATPKP21,ALAMATPKP22,KOTAPKP1, NPWP1,TGLPENGUKUHAN1,Direksi,Jabatan,LOGO,email');
    Sql.Add('From dbPerusahaan ');
    Open;
    Nama.Text    := FieldByname('Nama').AsString;
    Alamat1.Text := FieldByname('ALamat1').AsString;
    Alamat2.Text := FieldByname('Alamat2').AsString;
    Kota.Text    := FieldByname('Kota').AsString;
    Telpon.Text  := FieldByname('Telpon').AsString;
    Fax.Text  := FieldByname('Fax').AsString;
    NamaPKP.Text    := FieldByname('NamaPKP').AsString;
    AlamatPKP1.Text := FieldByname('ALamatPKP1').AsString;
    AlamatPKP2.Text := FieldByname('AlamatPKP2').AsString;
    KotaPKP.Text    := FieldByname('KotaPKP').AsString;
    NPWP.Text    := FieldByname('NPWP').AsString;
    TglPengukuhan.Date := FieldByname('TGLPENGUKUHAN').AsDateTime;

    NamaPKP2.Text    := FieldByname('NamaPKP1').AsString;
    AlamatPKP21.Text := FieldByname('ALamatPKP21').AsString;
    AlamatPKP22.Text := FieldByname('AlamatPKP22').AsString;
    KotaPKP2.Text    := FieldByname('KotaPKP1').AsString;
    NPWP2.Text    := FieldByname('NPWP1').AsString;
    TglPengukuhan2.Date := FieldByname('TGLPENGUKUHAN1').AsDateTime;
    Direksi.Text :=FieldByname('Direksi').AsString;
    Jabatan.Text :=FieldByname('Jabatan').AsString; 
    Logo.Picture.Assign(FieldByName('LOGO'));
    email.Text :=FieldByname('email').AsString;
  end;
  AdGambar.Close;
  AdGambar.Open;
  LblTTD.Visible:=not AdGambar.IsEmpty;
  PanelTTD.Visible:=LblTTD.Visible;
  BtnTTD.Visible:=LblTTD.Visible;
end;

Procedure TFrKonfigurasi.Nomor;
begin
  with DM.TaNomor do
  begin
    BKM.Text := FieldByname('BKM').AsString;
    NOBKM.Text := FieldByname('NoBKM').AsString;
    BKK.Text := FieldByname('BKK').AsString;
    NoBKK.Text := FieldByname('NOBKK').AsString;
    BBM.Text := FieldByname('BBM').AsString;
    NoBBM.Text := FieldByname('NoBBM').AsString;
    BBK.Text := FieldByname('BBK').AsString;
    NOBBK.Text := FieldByname('NOBBK').AsString;
    BMM.Text := FieldByname('BMM').AsString;
    NoBMM.Text := FieldByname('NOBMM').AsString;
    BJK.Text := FieldByname('BJK').AsString;
    NOBJK.Text := FieldByname('NOBJK').AsString;
    PBL.Text := FieldByname('PBL').AsString;
    NoPBL.Text := FieldByname('NOPBL').AsString;
    PJL.Text := FieldByname('PJL').AsString;
    NoPJL.Text := FieldByname('NOPJL').AsString;
    BPPB.Text := FieldByname('BPPB').AsString;
    NOBPPB.Text := FieldByname('NoBPPB').AsString;
    BBP.Text := FieldByname('BBP').AsString;
    NoBBP.Text := FieldByname('NoBBP').AsString;
    RBPB.Text := FieldByname('RBPB').AsString;
    NoRBPB.Text := FieldByname('NoRBPB').AsString;
    BPB.Text := FieldByname('BPB').AsString;
    NoBPB.Text := FieldByname('NoBPB').AsString;
    PPL.Text := FieldByname('PPL').AsString;
    NoPPL.Text := FieldByname('NoPPL').AsString;
    BPL.Text := FieldByname('BPL').AsString;
    NoBPL.Text := FieldByname('NOBPL').AsString;
    SPRK.Text := FieldByname('SPRK').AsString;
    NoSPRK.Text := FieldByname('NoSPRK').AsString;
    SPG.Text := FieldByname('SPG').AsString;
    NoSPG.Text := FieldByname('NoSPG').AsString;
    PO.Text := FieldByname('PO').AsString;
    NoPO.Text := FieldByname('NoPO').AsString;
    BPO.Text := FieldByname('BPO').AsString;
    NOBPO.Text := FieldByname('NoBPO').AsString;
    INS.Text := FieldByname('INS').AsString;
    NoINS.Text := FieldByname('NOINS').AsString;
    KNS.Text := FieldByname('INS').AsString;
    NoKNS.Text := FieldByname('NOINS').AsString;
    BP.Text := FieldByname('BP').AsString;
    NoBP.Text := FieldByname('NOBP').AsString;
    BPSPRK.Text := FieldByname('BPSPRK').AsString;
    NoBPSPRK.Text := FieldByname('NOBPSPRK').AsString;
    RPB.Text := FieldByname('RPB').AsString;
    NoRPB.Text := FieldByname('NORPB').AsString;
    ENQ.Text := FieldByname('ENQ').AsString;
    NOENQ.Text := FieldByname('NOENQ').AsString;
    CR.Text := FieldByname('CR').AsString;
    NoCR.Text := FieldByname('NOCR').AsString;
    SO.Text := FieldByname('SO').AsString;
    NoSO.Text := FieldByname('NOSO').AsString;
    RKL.Text := FieldByname('RKL').AsString;
    NoRKL.Text := FieldByname('NoRKL').AsString;
    SC.Text := FieldByname('SC').AsString;
    NoSC.Text := FieldByname('NoSC').AsString;
    SPP.Text := FieldByname('SPP').AsString;
    NOSPP.Text := FieldByname('NoSPP').AsString;
    SPB.Text := FieldByname('SPB').AsString;
    NOSPB.Text := FieldByname('NoSPB').AsString;
    RSPB.Text := FieldByname('RSPB').AsString;
    NORSPB.Text := FieldByname('NoRSPB').AsString;
    INVjual.Text := FieldByname('INVC').AsString;
    NOINVjual.Text := FieldByname('NoINVC').AsString;
    SHIP.Text := FieldByname('SHIP').AsString;
    NOSHIP.Text := FieldByname('NoSHIP').AsString;
    RPNJ.Text := FieldByname('RPJ').AsString;
    NORPNJ.Text := FieldByname('NORPJ').AsString;
    BHN.Text := FieldByname('BHN').AsString;
    NOBHN.Text := FieldByname('NOBHN').AsString;
    Alias.Text        := FieldByname('Alias').AsString;
    INICAB.Text        := FieldByname('INICAB').AsString;
    Pemisah.ItemIndex := FieldByname('PEMISAH').AsInteger;
    Format1.ItemIndex := FieldByname('FORMAT1').AsInteger;
    Format2.ItemIndex := FieldByname('FORMAT2').AsInteger;
    Format3.ItemIndex := FieldByname('FORMAT3').AsInteger;
    Format4.ItemIndex := FieldByname('FORMAT4').AsInteger;
    Contoh.Text       := FieldByname('CONTOH').AsString;
    Reset.ItemIndex   := FieldByname('Reset').AsInteger;
    NOSERI.Text := FieldByname('NOSERI').AsString;
  end;
end;

procedure TFrKonfigurasi.KonfigurasiChange(Sender: TObject);
begin
{  if Konfigurasi.ActivePageIndex=1 then
  begin
    Nomor;
  end
  else
  PerusahaanData;
}
end;

procedure TFrKonfigurasi.OkBtnClick(Sender: TObject);
begin
  if Konfigurasi.ActivePageIndex = 1 then
     SimpanNomor
  else
     SimpanPerusahaan;
  Close;
end;

procedure TFrKonfigurasi.FormShow(Sender: TObject);
begin
  Konfigurasi.ActivePageIndex:=0;
  SetNomor.Enabled:=LevelUserAccess=2;
  Nomor;
  PerusahaanData;
end;

procedure TFrKonfigurasi.PemisahChange(Sender: TObject);
begin
  Rubah;
end;

procedure TFrKonfigurasi.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_escape then
  begin
    key:=0;
    ModalResult:=Mrok;
  end
  else if (Key=Vk_Return) or (Key=VK_Down) then
  begin
    Key:=0;
    SelectNext(ActiveControl as TWinControl,True,True);
  end
  else if (Key=VK_Up) then
  begin
    key:=0;
    SelectNext(ActiveControl as TWinControl,False,True)
  end;
end;

procedure TFrKonfigurasi.BtnCariClick(Sender: TObject);
begin
  if CariGambar.Execute then
  begin
    logo.Picture.LoadFromFile(CariGambar.FileName);
  end;
end;

procedure TFrKonfigurasi.CancelBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFrKonfigurasi.BitBtn1Click(Sender: TObject);
begin
  Logo.Picture.Bitmap.FreeImage;
end;

procedure TFrKonfigurasi.BtnTTDClick(Sender: TObject);
begin
  if CariGambar.Execute then
  begin
    AdGambar.Edit;
    TTD.Picture.LoadFromFile(CariGambar.FileName);
    TTD.CutToClipboard;
    TTD.PasteFromClipboard;
    AdGambar.Post;
  end;
end;

end.
