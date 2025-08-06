unit FrmHutPiut;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PBNumEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  SpeedBar, ComCtrls, RXCtrls, ADODB, Db, wwdblook, Wwdbigrd, Wwdbgrid,
  DBCtrls, ppBands, ppCtrls, ppDB, jpeg, ppPrnabl, ppClass, ppCache,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, ImgList, RxNotify,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGridLevel, cxGrid,Variants;

type
  TFrHutPiut = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Shape4: TShape;
    Label10: TLabel;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    NoBukti: TEdit;
    TglBukti: TDateEdit;
    Tgljatuhtempo: TDateEdit;
    Catatan: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Jumlah: TPBNumEdit;
    dxDBhutPiut: TdxDBGrid;
    dxDBhutPiutNoFaktur: TdxDBGridMaskColumn;
    dxDBhutPiutNoRetur: TdxDBGridMaskColumn;
    dxDBhutPiutTipeTrans: TdxDBGridMaskColumn;
    dxDBhutPiutKodeCustSupp: TdxDBGridMaskColumn;
    dxDBhutPiutNoBukti: TdxDBGridMaskColumn;
    dxDBhutPiutNoMsk: TdxDBGridMaskColumn;
    dxDBhutPiutUrut: TdxDBGridMaskColumn;
    dxDBhutPiutTanggal: TdxDBGridDateColumn;
    dxDBhutPiutJatuhTempo: TdxDBGridDateColumn;
    dxDBhutPiutDebet: TdxDBGridMaskColumn;
    dxDBhutPiutKredit: TdxDBGridMaskColumn;
    dxDBhutPiutSaldo: TdxDBGridMaskColumn;
    dxDBhutPiutValas: TdxDBGridMaskColumn;
    dxDBhutPiutKurs: TdxDBGridMaskColumn;
    dxDBhutPiutDebetD: TdxDBGridMaskColumn;
    dxDBhutPiutKreditD: TdxDBGridMaskColumn;
    dxDBhutPiutSaldoD: TdxDBGridMaskColumn;
    dxDBhutPiutKodeSales: TdxDBGridMaskColumn;
    dxDBhutPiutTipe: TdxDBGridMaskColumn;
    dxDBhutPiutPerkiraan: TdxDBGridMaskColumn;
    dxDBhutPiutSaldoRp: TdxDBGridMaskColumn;
    dxDBhutPiutSaldoVls: TdxDBGridMaskColumn;
    dxDBhutPiutCatatan: TdxDBGridMaskColumn;
    dxDBhutPiutMyKey: TdxDBGridMaskColumn;
    Label4: TLabel;
    Valas: TEdit;
    Label5: TLabel;
    Kurs: TPBNumEdit;
    Panel5: TPanel;
    Panel6: TPanel;
    btnTutupGiro: TSpeedButton;
    HapusBtn: TSpeedButton;
    SpeedButton2: TSpeedButton;
    TambahBtn: TSpeedButton;
    Total: TPBNumEdit;
    Label6: TLabel;
    Label13: TLabel;
    Dibayar: TPBNumEdit;
    Sisa: TPBNumEdit;
    Label14: TLabel;
    procedure TambahBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TampilData(KodeCust:String);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ClearDetailPanel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure HapusBtnClick(Sender: TObject);

    procedure SpeedButton2Click(Sender: TObject);
    procedure NoBuktiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);



    procedure NoBuktiEnter(Sender: TObject);
    procedure dxDBhutPiutCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure btnTutupGiroClick(Sender: TObject);
    procedure TotalChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure JumlahKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBhutPiutChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
  private
    { Private declarations }
  public
    { Public declarations }
    mValid,mExit,IsHitung: Boolean;
    mBukti,Sat,SortBy:String;
    mUrut,IsTutup,mNosat,statusDK,mDetail:Integer;
    TipeTrans,PlusPPN,Nomor,Model,mTransaksi:String;
    mBulan,mTahun,mNoBukti,StatusHutPiut,PerkiraanhutPiut,Tipe:string;
    mSaldo, mSaldoD, IsiBrg, potongan, mDibayar, mDibayarD, sisaPiutang, LebihBayar :Real;
    S:array[0..255]of char;
    mTitip : boolean;

    IsGiroCair : Boolean;
    TipeGiro,JenisTransGiro,DK : String;
    KodeTrans,KodeByr,Jenis :string;
    procedure SimpanData(Choice:String);
    Function CekPelunasanMax(Nota:String;JmlPelunasan:Real;Var JmlHut,SisaPiut:Real):Boolean;
    Function JumlahYgDibayar(Nota:String):Real;
    procedure TampilDataHutPiut(xNobukti,xPerkiraan,xkodeCustSupp,DK:String);
    procedure SaldoHutPiut;
  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrHutPiut: TFrHutPiut;


implementation
uses FrmBrows,MyProcedure,MyGlobal,MyModul, FrmKasBank;
{$R *.DFM}

procedure TFrHutPiut.SaldoHutPiut;
var X,Y:Double; NoFaktur:String;
begin
  with FrKasBank.dxHutPiut do
  begin
    FrKasBank.dxHutPiut.DisableControls;
    First;
    X := 0;
    Y := 0;
    FrKasBank.dxHutPiut.First;
    FrKasBank.dxHutPiut.SortedField :='MyKey';
    NoFaktur:=FrKasBank.dxHutPiut.FieldByName('nofaktur').AsString;
    while Not FrKasBank.dxHutPiut.Eof do
    begin
       FrKasBank.dxHutPiut.Edit;
       if NoFaktur=FrKasBank.dxHutPiut.FieldByName('nofaktur').AsString then
       begin
           X:=X+FrKasBank.dxHutPiut.FieldByName('SaldoRp').Value;
           Y:=Y+FrKasBank.dxHutPiut.FieldByName('SaldoVLS').Value;
       end
       else
       begin
         X:=FrKasBank.dxHutPiut.FieldByName('SaldoRp').Value;
         Y:=FrKasBank.dxHutPiut.FieldByName('SaldoVls').Value;
       end;
       FrKasBank.dxHutPiut.FieldByName('SaldoRp').Value:=X;
       FrKasBank.dxHutPiut.FieldByName('SaldoVls').Value:=Y;
       FrKasBank.dxHutPiut.Post;
       NoFaktur:=FrKasBank.dxHutPiut.FieldByName('nofaktur').AsString;
       FrKasBank.dxHutPiut.Next;
    end;
    (FieldByName('Debet') as TNumericField).DisplayFormat :=',0.00';
    (FieldByName('kredit') as TNumericField).DisplayFormat :=',0.00';
    (FieldByName('DebetD') as TNumericField).DisplayFormat :=',0.00';
    (FieldByName('kreditD') as TNumericField).DisplayFormat :=',0.00';
    (FieldByName('saldoRp') as TNumericField).DisplayFormat :=',0.00';
    (FieldByName('saldoVls') as TNumericField).DisplayFormat :=',0.00';
    FrKasBank.dxHutPiut.EnableControls;
  end;
end;

procedure TFrHutPiut.TampilDataHutPiut(xNobukti,xPerkiraan,xkodeCustSupp,DK:String);
var X,Y:Double; NoFaktur:String;
begin
  with FrKasBank.QuHutPiut do
  begin
    close;
    Prepared;
    Parameters[0].Value := xKodeCustSupp;
    Parameters[1].Value := xNobukti;
    Parameters[2].Value := xPerkiraan;
    Open;
  end;

  if not FrKasBank.QuHutPiutP.Active then
  begin
    with FrKasBank.QuHutPiutP do
    begin
      close;
      Prepared;
      Parameters[0].Value := xKodeCustSupp;
      Parameters[1].Value := xNobukti;
      Parameters[2].Value := xPerkiraan;
      Open;
    end;
  end;

  if not FrKasBank.QuHutPiutL.Active then
  begin
    with FrKasBank.QuHutPiutL do
    begin
      close;
      Prepared;
      Parameters[0].Value := xKodeCustSupp;
      Parameters[1].Value := xNobukti;
      Parameters[2].Value := xPerkiraan;
      Open;
    end;
  end;

  with FrKasBank.dxHutPiut do
  begin
    Close;
    if (DK='D') and (not FrKasBank.QuHutPiutP.IsEmpty) and (FrKasBank.isOpenP='P')then
    begin
       CreateFieldsFromDataSet(FrKasBank.QuHutPiutP);
       CreateFieldsFromDataSet(FrKasBank.QuHutPiutP);
       LoadFromDataSet(FrKasBank.QuHutPiutP);
    end
    else if (DK='K') and (not FrKasBank.QuHutPiutL.IsEmpty)  and (FrKasBank.isOpenL='L') then
    begin
       CreateFieldsFromDataSet(FrKasBank.QuHutPiutL);
       CreateFieldsFromDataSet(FrKasBank.QuHutPiutL);
       LoadFromDataSet(FrKasBank.QuHutPiutL);
    end
    else
    begin
       CreateFieldsFromDataSet(FrKasBank.QuHutPiut);
       CreateFieldsFromDataSet(FrKasBank.QuHutPiut);
       LoadFromDataSet(FrKasBank.QuHutPiut);
    end;
    Open;
    FrKasBank.dxHutPiut.DisableControls;
    First;
    X := 0;
    Y := 0;
    NoFaktur:=FrKasBank.dxHutPiut.FieldByName('nofaktur').AsString;
    dxDBhutPiut.KeyField := FrKasBank.dxHutPiut.Fieldbyname('MyKey').FieldName;
    while Not FrKasBank.dxHutPiut.Eof do
    begin
       FrKasBank.dxHutPiut.Edit;
        if (StatusHutPiut='HT-') or (StatusHutPiut='PT+')then
            Dibayar.Value := Dibayar.Value+FrKasBank.dxHutPiut.FieldByName('Debet').Value
        else  if (StatusHutPiut='HT+') or (StatusHutPiut='PT-')then
            Dibayar.Value := Dibayar.Value+FrKasBank.dxHutPiut.FieldByName('Kredit').Value;
       if NoFaktur=FrKasBank.dxHutPiut.FieldByName('nofaktur').AsString then
       begin
          X:=X+FrKasBank.dxHutPiut.FieldByName('SaldoRp').Value;
          Y:=Y+FrKasBank.dxHutPiut.FieldByName('SaldoVLS').Value;
       end
       else
       begin
         X:=FrKasBank.dxHutPiut.FieldByName('SaldoRp').Value;
         Y:=FrKasBank.dxHutPiut.FieldByName('SaldoVls').Value;
       end;
       FrKasBank.dxHutPiut.FieldByName('SaldoRp').Value:=X;
       FrKasBank.dxHutPiut.FieldByName('SaldoVls').Value:=Y;
       FrKasBank.dxHutPiut.Post;
       NoFaktur:=FrKasBank.dxHutPiut.FieldByName('nofaktur').AsString;
       FrKasBank.dxHutPiut.Next;
    end;
    (FieldByName('Debet') as TNumericField).DisplayFormat :=',0.00';
    (FieldByName('kredit') as TNumericField).DisplayFormat :=',0.00';
    (FieldByName('DebetD') as TNumericField).DisplayFormat :=',0.00';
    (FieldByName('kreditD') as TNumericField).DisplayFormat :=',0.00';
    (FieldByName('saldoRp') as TNumericField).DisplayFormat :=',0.00';
    (FieldByName('saldoVls') as TNumericField).DisplayFormat :=',0.00';
    FrKasBank.dxHutPiut.EnableControls;
  end;
end;

procedure TFrHutPiut.SimpanData(Choice:String);
var isSimpan : Boolean;
begin
  isSimpan := False;
  if (Choice='I') and ((mTransaksi='pelunasan') or (mTransaksi='penambahan')) and (Not FrKasBank.dxHutPiut.Locate('NoFaktur;urut',
      varArrayof([NoBukti.text,mUrut]),[LOC,LOP]))then
  begin
    FrKasBank.dxHutPiut.Append;
    Dibayar.Value := Dibayar.Value+Jumlah.Value;
    isSimpan := True;
  end
  else if (Choice='U')  then
  begin
    FrKasBank.dxHutPiut.Edit;
    Dibayar.Value := Dibayar.Value+Jumlah.Value;
  end
  Else
  if (Choice='D') and FrKasBank.dxHutPiut.Locate('NoFaktur;urut',
      varArrayof([FrKasBank.dxHutPiut.FieldByname('NoFaktur').asstring,FrKasBank.dxHutPiut.FieldByname('Urut').asInteger]),[LOC,LOP]) then
  begin
    if (StatusHutPiut='HT-') or (StatusHutPiut='PT+')then
        Dibayar.Value := Dibayar.Value-dxDBhutPiutDebet.Field.AsFloat
    else if (StatusHutPiut='HT+') or (StatusHutPiut='PT-') then
        Dibayar.Value := Dibayar.Value-dxDBhutPiutKredit.Field.AsFloat;
    FrKasBank.dxHutPiut.Delete;
  end;
  if ((Choice='I') or (Choice='U'))  and isSimpan then
  begin
    with FrKasBank.dxHutPiut do
    begin
      FieldByName('NoFaktur').Value:=NoBukti.Text;
      FieldByName('NoRetur').Value:='';
      FieldByName('KodeCustSupp').Value:=Label1.Caption;
      FieldByName('TipeTrans').Value:='L';
      FieldByName('Tanggal').Value:=TglBukti.Date;
      FieldByName('JatuhTempo').Value:=Tgljatuhtempo.Date;
      if ((StatusHutPiut='PT+')) or ((StatusHutPiut='HT-'))then
      begin
         FieldByName('Debet').Value:=Jumlah.Value*Kurs.Value;
         FieldByName('Kredit').Value:=0;
      end
      else if ((StatusHutPiut='PT-'))  or ((StatusHutPiut='HT+'))then
      begin
         FieldByName('Debet').Value:=0;
         FieldByName('Kredit').Value:=Jumlah.Value*Kurs.Value;
      end;

      if Valas.Text='IDR' then
      begin
        FieldByName('DebetD').Value:=0;
        FieldByName('KreditD').Value:=0;
      end
      else
      begin
        if ((StatusHutPiut='PT+')) or ((StatusHutPiut='HT-'))then
        begin
           FieldByName('DebetD').Value:=Jumlah.Value;
           FieldByName('KreditD').Value:=0;
        end
        else if ((StatusHutPiut='PT-'))  or ((StatusHutPiut='HT+'))then
        begin
           FieldByName('DebetD').Value:=0;
           FieldByName('KreditD').Value:=Jumlah.Value;
        end;
      end;
      if (StatusHutPiut='PT+') or (StatusHutPiut='HT-')then
         FieldByName('SaldoRp').Value:=Jumlah.Value*Kurs.Value
      else if (StatusHutPiut='PT-') or (StatusHutPiut='HT+') then
         FieldByName('SaldoRp').Value:=(Jumlah.Value*Kurs.Value)*-1;
      if Valas.Text='IDR' then
         FieldByName('SaldoVls').Value:=0
      else
      begin
        if (StatusHutPiut='PT+') or (StatusHutPiut='HT-')then
           FieldByName('SaldoVls').Value:=Jumlah.Value
        else
        if (StatusHutPiut='PT-') or (StatusHutPiut='HT+') then
           FieldByName('SaldoVls').Value:=(Jumlah.Value)*-1;
      end;

      FieldByName('Valas').Value:=Valas.Text;
      FieldByName('kurs').Value:=Kurs.Value;
      FieldByName('Tipe').Value:=Tipe;
      FieldByName('Nobukti').Value:=FrKasBank.NOBUKTI.Text;
      FieldByName('NoMsk').Value:=FrKasBank.mUrut;
      FieldByName('Perkiraan').Value:=PerkiraanhutPiut;
      FieldByName('Catatan').Value:=Catatan.Text;
      FieldByName('urut').Value:=mUrut;
      FieldByName('KodeSales').Value:='';
      FieldByName('MyKey').Value:=FrKasBank.NOBUKTI.Text+' '+FormatDateTime('DD-MM-YYYY',FrKasBank.TANGGAL.Date)+IntToStr(mUrut);
      mUrut := mUrut + 1;
      FrKasBank.dxHutPiut.Post;
      Jumlah.Value := Sisa.Value;
    end;
  end;
  SaldoHutPiut;
end;

Function TFrHutPiut.JumlahYgDibayar(Nota:String):Real;
begin
   Result :=0;
   with DM.QuCari do
   begin
      Close;
      SQL.Clear;
      SQL.Add('select Sum(Case when Tipe=''HT'' then Kredit-Debet');
      SQL.Add('                when Tipe=''PT'' then Debet-Kredit');
      SQL.Add('           end) Saldo from vwHutPiut where nofaktur=:1 ');
      Parameters[0].Value:=Nota;
      Open;
   end;
   if not DM.QuCari.IsEmpty then
      Result:=DM.QuCari.Fieldbyname('Saldo').Value;
end;

Function TFrHutPiut.CekPelunasanMax(Nota:String;JmlPelunasan:Real;Var JmlHut,SisaPiut:Real):Boolean;
var JmlHutang : Real;
begin
   with DM.QuCari do
   begin
      Close;
      SQL.Clear;
      SQL.Add('select Case when Tipe=''HT'' then Debet');
      Sql.add('            when Tipe=''PT'' then Kredit');
      sql.add('            else 0 end Lunas,');
      Sql.add('       Case when Tipe=''HT'' then kredit');
      Sql.add('            when Tipe=''PT'' then Debet');
      sql.add('            else 0 end HutPiut from vwHutPiut where nofaktur=:0');
      Parameters[0].Value:=Nota;
      Open;
   end;
   JmlHutang:=DM.QuCari.FieldbyName('HutPiut').Value;
   jmlHut:=JmlHutang;
   SisaPiut:=JmlHutang-DM.QuCari.FieldbyName('Lunas').Value;
   Result:=(DM.QuCari.FieldbyName('Lunas').Value+JmlPelunasan)> JmlHutang;
end;

procedure TFrHutPiut.ClearDetailPanel;
var i:integer;
begin
  NoBukti.Text := '';
  TglBukti.Date := FrKasBank.TANGGAL.Date;
  Tgljatuhtempo.Date := FrKasBank.TANGGAL.Date;
  //Jumlah.Value := 0;
  Catatan.Text := ''; 
end;


procedure TFrHutPiut.TambahBtnClick(Sender: TObject);
var xJumlahYgdibayar, xJumlahYgDibayarD : real;
begin
  mTransaksi:='pelunasan';
  mValid:=False;
  if Not FrKasBank.dxHutPiut.IsEmpty then
  begin
    Model:='write';
    mUrut := FrKasBank.dxHutPiut.RecordCount+1;
    Panel3.Visible:=true;
    Panel1.Enabled:=false;
    Panel2.Enabled:=false;
    Panel3.Enabled:=True;
    NoBukti.Text:=FrKasBank.dxHutPiut.fieldbyname('NoFaktur').AsString;
    TglBukti.Date:=FrKasBank.dxHutPiut.fieldbyname('Tanggal').AsDateTime;
    Tgljatuhtempo.Date:=FrKasBank.dxHutPiut.fieldbyname('jatuhTempo').AsDateTime;
    xJumlahYgdibayar:=JumlahYgDibayar(FrKasBank.dxHutPiut.fieldbyname('NoFaktur').AsString);
    mUrut := FrKasBank.dxHutPiut.RecordCount+1;
    if FrKasBank.Valas.Text='IDR' then
    begin
      if (xJumlahYgdibayar < Sisa.Value) then
      begin
          Jumlah.Value:=xJumlahYgdibayar;
      end
      else
      begin
          Jumlah.Value:=Sisa.Value;
      end;
    end
    else
    begin
      if (xJumlahYgDibayarD < Sisa.Value) then
      begin
          Jumlah.Value:=xJumlahYgDibayarD;
      end
      else
      begin
          Jumlah.Value:=Sisa.Value;
      end;
    end;
  end
  else
  begin
    ShowMessage('Tabel Kosong !');
    ActiveControl:=dxDBhutPiut;
  end;
end;

procedure TFrHutPiut.TampilData(KodeCust:String);
begin
  if mDetail=0 then
  begin
     mSaldo:=0;
     mSaldoD:=0;
     mDibayar:=0;
     mDibayarD:=0;
     IsHitung:=true;

  end;
end;


procedure TFrHutPiut.FormShow(Sender: TObject);
begin
  statusDK:=FrKasBank.statusDK;
  TampilDataHutPiut(Label3.Caption,PerkiraanhutPiut,label1.caption,DK);
end;

procedure TFrHutPiut.SpeedButton1Click(Sender: TObject);
begin
  mValid:=false;
  Panel1.Enabled:=true;
  Panel2.Enabled:=true;
  Panel3.Enabled:=false;
  Panel3.Visible:=false;
  NoBukti.Enabled:=false;
  TglBukti.Enabled:=false;
  Tgljatuhtempo.Enabled:=false;
  mTitip:=false;
  Jumlah.Enabled:=true;
  ClearDetailPanel;
  ActiveControl:=dxDBhutPiut;
end;

procedure TFrHutPiut.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0);

end;

procedure TFrHutPiut.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if mExit=true then
     Action:=cafree
  else
     Action:=caNone;
end;

procedure TFrHutPiut.HapusBtnClick(Sender: TObject);
begin
   if (FrKasBank.dxHutPiut.FieldByName('tipetrans').AsString='L') and
      (FrKasBank.dxHutPiut.FieldByName('KodeCustSupp').AsString=Label1.Caption) and
      (FrKasBank.dxHutPiut.FieldByName('NoBukti').AsString=Label3.Caption) and
      (FrKasBank.dxHutPiut.FieldByName('NoMsk').AsInteger = FrKasBank.mUrut)
   then
   begin
        StrPCopy(S,Format('Anda yakin NO %s dan Nama %s dihapus ?',
        [FrKasBank.dxHutPiut.FieldByname('NoFaktur').asstring,
        FrKasBank.dxHutPiut.Fields[2].asstring]));
        if (Application.MessageBox(S,'Hapus Data',
                MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
        begin
          SimpanData('D');
        end;
   end else
   begin
        ShowMessage('Transaksi tidak bisa dihapus !');
        ActiveControl:=dxDBhutPiut;
   end;
end;

procedure TFrHutPiut.SpeedButton2Click(Sender: TObject);
begin
  mTransaksi:='penambahan';
  Model:='write';
  mUrut := FrKasBank.dxHutPiut.RecordCount+1;
  Panel3.Visible:=true;
  Panel1.Enabled:=false;
  Panel2.Enabled:=false;
  Panel3.Enabled:=True;
  NoBukti.Enabled:=true;
  TglBukti.Enabled:=True;
  Tgljatuhtempo.Enabled:=True;
  TglBukti.Date:=FrKasBank.TANGGAL.date;
  Tgljatuhtempo.Date:=FrKasBank.TANGGAL.date;
  Jumlah.Value:=Sisa.Value;
  ActiveControl:=NoBukti;
end;

procedure TFrHutPiut.NoBuktiKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=vk_escape then
   begin
      SpeedButton1.Click;
   end;
end;

procedure TFrHutPiut.NoBuktiEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrHutPiut.dxDBhutPiutCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if ANode.HasChildren then
  Exit;

  if (ANode.Values[dxDBhutPiut.ColumnByFieldName('NoBukti').Index]=FrKasBank.Nobukti.Text) then
   begin
      AColor:=$00C0F8F7;
      AFont.Color:= clred;
   end
   else
   begin
      AColor:=clWindow;
      AFont.Color:=clBlack;
   end;
  if not AFocused then
  begin
    if ANode.Index mod 2 =0 then
     AColor:=clWhite
  else
     AColor:=$00E1FFFF;
  end;
end;

procedure TFrHutPiut.btnTutupGiroClick(Sender: TObject);
begin
  mExit := True;
  if FrkasBank.Jumlah.AsCurrency <> Dibayar.Value then
     FrkasBank.Jumlah.Value := Dibayar.Value;
  if DK='D' then
  begin
    FrKasBank.dxHutPiut.First;
    while not FrKasBank.dxHutPiut.eof do
    begin
      if FrKasBank.QuHutPiutP.Locate('Nobukti;urut',VarArrayOf([FrKasBank.dxHutPiut.FieldByname('Nobukti').AsVariant,FrKasBank.dxHutPiut.FieldByname('urut').AsVariant]),[LOC,LOP]) then
         FrKasBank.QuHutPiutP.Edit
      else
         FrKasBank.QuHutPiutP.Append;
      FrKasBank.QuHutPiutP.FieldByName('NoFaktur').Value := FrKasBank.dxHutPiut.FieldByname('NoFaktur').Value;
      FrKasBank.QuHutPiutP.FieldByName('NoRetur').Value := FrKasBank.dxHutPiut.FieldByname('NoRetur').Value;
      FrKasBank.QuHutPiutP.FieldByName('TipeTrans').Value := FrKasBank.dxHutPiut.FieldByname('TipeTrans').Value;
      FrKasBank.QuHutPiutP.FieldByName('kodeCustSupp').Value := FrKasBank.dxHutPiut.FieldByname('kodeCustSupp').Value;
      FrKasBank.QuHutPiutP.FieldByName('Nobukti').Value := FrKasBank.dxHutPiut.FieldByname('NoBukti').Value;
      FrKasBank.QuHutPiutP.FieldByName('NoMSK').Value := FrKasBank.dxHutPiut.FieldByname('NoMSK').Value;
      FrKasBank.QuHutPiutP.FieldByName('urut').Value := FrKasBank.dxHutPiut.FieldByname('Urut').Value;
      FrKasBank.QuHutPiutP.FieldByName('Tanggal').Value := FrKasBank.dxHutPiut.FieldByname('Tanggal').Value;
      FrKasBank.QuHutPiutP.FieldByName('JatuhTempo').Value := FrKasBank.dxHutPiut.FieldByname('JatuhTempo').Value;
      FrKasBank.QuHutPiutP.FieldByName('Debet').Value := FrKasBank.dxHutPiut.FieldByname('Debet').Value;
      FrKasBank.QuHutPiutP.FieldByName('Kredit').Value := FrKasBank.dxHutPiut.FieldByname('Kredit').Value;
      //FrKasBank.QuHutPiutP.FieldByName('Saldo').Value := 0;
      FrKasBank.QuHutPiutP.FieldByName('Valas').Value := FrKasBank.dxHutPiut.FieldByname('Valas').Value;
      FrKasBank.QuHutPiutP.FieldByName('Kurs').Value := FrKasBank.dxHutPiut.FieldByname('Kurs').Value;
      FrKasBank.QuHutPiutP.FieldByName('DebetD').Value := FrKasBank.dxHutPiut.FieldByname('DebetD').Value;
      FrKasBank.QuHutPiutP.FieldByName('KreditD').Value := FrKasBank.dxHutPiut.FieldByname('KreditD').Value;
      //FrKasBank.QuHutPiutP.FieldByName('SaldoD').Value := 0;
      FrKasBank.QuHutPiutP.FieldByName('KodeSales').Value := FrKasBank.dxHutPiut.FieldByname('kodeSales').Value;
      FrKasBank.QuHutPiutP.FieldByName('Tipe').Value := FrKasBank.dxHutPiut.FieldByname('Tipe').Value;
      FrKasBank.QuHutPiutP.FieldByName('Perkiraan').Value := FrKasBank.dxHutPiut.FieldByname('Perkiraan').Value;
      FrKasBank.QuHutPiutP.FieldByName('Catatan').Value := FrKasBank.dxHutPiut.FieldByname('Catatan').Value;
      FrKasBank.QuHutPiutP.Post;
      FrKasBank.dxHutPiut.Next;
    end;
    FrKasBank.isOpenP:='P';
  end
  else if DK='K' then
  begin
    FrKasBank.dxHutPiut.First;
    while not FrKasBank.dxHutPiut.eof do
    begin
      if FrKasBank.QuHutPiutL.Locate('Nobukti;urut',VarArrayOf([FrKasBank.dxHutPiut.FieldByname('Nobukti').AsVariant,FrKasBank.dxHutPiut.FieldByname('urut').AsVariant]),[LOC,LOP]) then
         FrKasBank.QuHutPiutL.Edit
      else
         FrKasBank.QuHutPiutL.Append;
      FrKasBank.QuHutPiutL.FieldByName('NoFaktur').Value := FrKasBank.dxHutPiut.FieldByname('NoFaktur').Value;
      FrKasBank.QuHutPiutL.FieldByName('NoRetur').Value := FrKasBank.dxHutPiut.FieldByname('NoRetur').Value;
      FrKasBank.QuHutPiutL.FieldByName('TipeTrans').Value := FrKasBank.dxHutPiut.FieldByname('TipeTrans').Value;
      FrKasBank.QuHutPiutL.FieldByName('kodeCustSupp').Value := FrKasBank.dxHutPiut.FieldByname('kodeCustSupp').Value;
      FrKasBank.QuHutPiutL.FieldByName('Nobukti').Value := FrKasBank.dxHutPiut.FieldByname('NoBukti').Value;
      FrKasBank.QuHutPiutL.FieldByName('NoMSK').Value := FrKasBank.dxHutPiut.FieldByname('NoMSK').Value;
      FrKasBank.QuHutPiutL.FieldByName('urut').Value := FrKasBank.dxHutPiut.FieldByname('Urut').Value;
      FrKasBank.QuHutPiutL.FieldByName('Tanggal').Value := FrKasBank.dxHutPiut.FieldByname('Tanggal').Value;
      FrKasBank.QuHutPiutL.FieldByName('JatuhTempo').Value := FrKasBank.dxHutPiut.FieldByname('JatuhTempo').Value;
      FrKasBank.QuHutPiutL.FieldByName('Debet').Value := FrKasBank.dxHutPiut.FieldByname('Debet').Value;
      FrKasBank.QuHutPiutL.FieldByName('Kredit').Value := FrKasBank.dxHutPiut.FieldByname('Kredit').Value;
      //FrKasBank.QuHutPiutL.FieldByName('Saldo').Value := 0;
      FrKasBank.QuHutPiutL.FieldByName('Valas').Value := FrKasBank.dxHutPiut.FieldByname('Valas').Value;
      FrKasBank.QuHutPiutL.FieldByName('Kurs').Value := FrKasBank.dxHutPiut.FieldByname('Kurs').Value;
      FrKasBank.QuHutPiutL.FieldByName('DebetD').Value := FrKasBank.dxHutPiut.FieldByname('DebetD').Value;
      FrKasBank.QuHutPiutL.FieldByName('KreditD').Value := FrKasBank.dxHutPiut.FieldByname('KreditD').Value;
      //FrKasBank.QuHutPiutL.FieldByName('SaldoD').Value := 0;
      FrKasBank.QuHutPiutL.FieldByName('KodeSales').Value := FrKasBank.dxHutPiut.FieldByname('kodeSales').Value;
      FrKasBank.QuHutPiutL.FieldByName('Tipe').Value := FrKasBank.dxHutPiut.FieldByname('Tipe').Value;
      FrKasBank.QuHutPiutL.FieldByName('Perkiraan').Value := FrKasBank.dxHutPiut.FieldByname('Perkiraan').Value;
      FrKasBank.QuHutPiutL.FieldByName('Catatan').Value := FrKasBank.dxHutPiut.FieldByname('Catatan').Value;
      FrKasBank.QuHutPiutL.Post;
      FrKasBank.dxHutPiut.Next;
    end;
    FrKasBank.isOpenL:='L';
  end;
  Close;
end;

procedure TFrHutPiut.TotalChange(Sender: TObject);
begin
  Sisa.Value:=Total.Value-Dibayar.Value;
end;

procedure TFrHutPiut.BitBtn1Click(Sender: TObject);
var JmlHutPiut :Real;
begin
  if mTransaksi='pelunasan' then
  begin
    if Not CekPelunasanMax(FrKasBank.dxHutPiut.FieldByname('Nofaktur').AsString,Jumlah.Value,Jmlhutpiut,sisapiutang) then
    begin
       SimpanData('I');
    end
    else
    begin
      StrPCopy(S,Format('Ada Kelebihan Pelunasan Pada Nota %s , Sisa %s, kelebihan bayar %s ?',
              [frKasBank.dxHutPiut.FieldByName('nofaktur').AsString,
              Formatcurr(',0.00',SisaPiutang),Formatcurr(',0.00',Jumlah.Value-sisaPiutang) ]));
      if (Application.MessageBox(S,'Peringatan ',MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES) then
      begin
        SimpanData('I');
      end;
    end;
  end
  else
  begin
     SimpanData('I');
  end;

  if mTransaksi='pelunasan' then
     SpeedButton1.Click
  else
  begin
    ClearDetailPanel;
    ActiveControl := NoBukti;
  end;
end;

procedure TFrHutPiut.JumlahKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=vk_Escape then
  begin
     SpeedButton1.Click;
  end;
end;

procedure TFrHutPiut.dxDBhutPiutChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
 // Caption := Node.Values[dxDBhutPiut.ColumnByFieldName('MyKey').Index];
end;

end.
