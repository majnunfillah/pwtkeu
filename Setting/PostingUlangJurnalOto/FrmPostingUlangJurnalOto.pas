unit FrmPostingUlangJurnalOto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, PBNumEdit, Db, ADODB, ComCtrls, ExtCtrls, Gauges,Buttons,
  XiProgressBar, RxGIF, jpeg, Math, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  ShellApi;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrPostingUlangJurnalOto = class(TForm)
    Bulan: TPBNumEdit;
    Tahun: TPBNumEdit;
    Shape1: TShape;
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    XiProgressBar1: TXiProgressBar;
    BitBtn2: TBitBtn;
    Bevel2: TBevel;
    Label2: TLabel;
    MySP: TADOStoredProc;
    QuBeli: TADOQuery;
    DsQuBeli: TDataSource;
    dxDBGrid1: TdxDBGrid;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    SaveDialog: TSaveDialog;
    QuBeliIDUser: TStringField;
    QuBeliUrut: TIntegerField;
    QuBeliJenisTrans: TStringField;
    QuBeliNoBuktiTrans: TStringField;
    QuBeliPerkiraan: TStringField;
    QuBeliLawan: TStringField;
    Label1: TLabel;
    QuBeliJurnalOrHP: TStringField;
    QuBeliNoBukti: TStringField;
    dxDBGrid1IDUser: TdxDBGridMaskColumn;
    dxDBGrid1Urut: TdxDBGridMaskColumn;
    dxDBGrid1JurnalOrHP: TdxDBGridMaskColumn;
    dxDBGrid1JenisTrans: TdxDBGridMaskColumn;
    dxDBGrid1NoBuktiTrans: TdxDBGridMaskColumn;
    dxDBGrid1NoBukti: TdxDBGridMaskColumn;
    dxDBGrid1Perkiraan: TdxDBGridMaskColumn;
    dxDBGrid1Lawan: TdxDBGridMaskColumn;
    Image2: TImage;
    QuTrans: TADOQuery;
    JenisTrans: TComboBox;
    Label3: TLabel;
    Label5: TLabel;
    QuTransMyUrut: TStringField;
    QuTransJenisTrans: TStringField;
    QuTransNamaTrans: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    //strBulan, strTahun: String;
    //xHarga: Real;
    iUrutError, mBulanDepan, mTahunDepan: Integer;
    MyHarga : Real;
    mJenisTrans, mKeteranganTrans: String;
    //MyWip,MyHPP :real;
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure ProsesPosting(xJenisTrans: String);
  public
    { Public declarations }
  end;

var
  FrPostingUlangJurnalOto: TFrPostingUlangJurnalOto;

implementation

uses FrmBrows,MyProcedure,MyGlobal,MyModul;

{$R *.DFM}

procedure TFrPostingUlangJurnalOto.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do
  begin
    DefaultExt := ADefaultExt;
    Filter := AFilter;
    FileName := AFileName;
    if Execute then
      AMethod(FileName, true);
  end;
end;

Procedure TFrPostingUlangJurnalOto.ProsesPosting(xJenisTrans: String);
var xNoBuktiTrans: String;
begin
  // Jurnal
  with DM.QuKOde do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Jenis, NoBuktiTrans ');
    SQL.Add('from vwPostJurnalOto ');
    SQL.Add('Where month(Tanggal)='+IntToStr(Bulan.AsInteger)+' and year(Tanggal)='+IntToStr(Tahun.AsInteger));
    SQL.Add('and Jenis='+QuotedStr(xJenisTrans));
    SQL.Add('group by Jenis, NoBuktiTrans ');
    SQL.Add('Order by NoBuktiTrans');
    Open;
  end;
  if not DM.QuKOde.IsEmpty then
  begin
    while not DM.QuKOde.Eof do
    begin
      xNoBuktiTrans:=DM.QuKOde.FieldByName('NoBuktiTrans').AsString;
      with DM.QueryBrow do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select NoBukti, NoBuktiTrans, Urut, Perkiraan, Lawan from vwPostJurnaloto ');
        SQL.Add('where year(Tanggal)='+IntToStr(Tahun.AsInteger)+' and month(Tanggal)='+IntToStr(Bulan.AsInteger));
        SQL.Add('and NoBuktiTrans='+QuotedStr(xNoBuktiTrans));
        SQL.Add('Order by Urut');
        Open;
      end;
      while not DM.QueryBrow.Eof do
      begin
        if (DM.QueryBrow.FieldByName('NoBukti').AsString='') or
          (DM.QueryBrow.FieldByName('Perkiraan').AsString='') or
          (DM.QueryBrow.FieldByName('Lawan').AsString='') or
          (DM.QueryBrow.FieldByName('Perkiraan').AsString=DM.QueryBrow.FieldByName('Lawan').AsString) then
        begin
            iUrutError:=iUrutError+1;
            with DM.QuCari2 do
            begin
              Close;
              SQL.Clear;
              SQL.Add('insert into TempJurnalOtoError (IDUser, Urut, JurnalOrHP, JenisTrans, NoBuktiTrans, NoBukti, Perkiraan, Lawan) ');
              SQL.Add('values ('+QuotedStr(IDUser)+','+IntToStr(iUrutError)+','+QuotedStr('Jurnal')+','+QuotedStr(mJenisTrans)+','+
                QuotedStr(xNoBuktiTrans)+','+
                QuotedStr(DM.QueryBrow.FieldByName('NoBukti').AsString)+','+
                QuotedStr(DM.QueryBrow.FieldByName('Perkiraan').AsString)+','+
                QuotedStr(DM.QueryBrow.FieldByName('Lawan').AsString)+')');
              ExecSQL;
            end;
            QuBeli.Close;
            QuBeli.Open;
            QuBeli.Locate('Urut',iUrutError,[]);
        end;
        DM.QueryBrow.Next;
        if DM.QueryBrow.Eof then
        begin
            with DM.QuCari2 do
            begin
              Close;
              SQL.Clear;
              SQL.Add('exec sp_ProsesPostingUlangJurnalOto '+QuotedStr(mJenisTrans)+','''', '+IntToStr(Bulan.AsInteger)+','+IntToStr(Tahun.AsInteger)+
                ', '+QuotedStr(xNoBuktiTrans)+
                ', 1');
              ExecSQL;
            end;
        end;
      end;
      Label2.Caption:='Posting Jurnal '+#13+
        'Transaksi : '+mKeteranganTrans+#13+
        'No. Bukti : '+xNoBuktiTrans;
      Application.ProcessMessages;
      DM.QuKOde.Next;
    end;
  end;
  // Hutang Piutang
  with DM.QuKOde do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select NoFaktur, NoRetur, Perkiraan ');             //, NoPajak NoBuktiTrans
    SQL.Add('from vwPostHutPiut ');
    SQL.Add('Where month(Tanggal)='+IntToStr(Bulan.AsInteger)+' and year(Tanggal)='+IntToStr(Tahun.AsInteger));
    SQL.Add('and NoInvoice='+QuotedStr(mJenisTrans));
    SQL.Add('group by NoFaktur, NoRetur, Perkiraan');        //, NoPajak
    SQL.Add('Order by NoFaktur, NoRetur');
    Open;
  end;
  if not DM.QuKOde.IsEmpty then
  begin
    while not DM.QuKOde.Eof do
    begin
      //xNoBuktiTrans:=DM.QuKOde.FieldByName('NoBuktiTrans').AsString;
      if (DM.QuKOde.FieldByName('Perkiraan').AsString='') then
      begin
          iUrutError:=iUrutError+1;
          with DM.QuCari2 do
          begin
            Close;
            SQL.Clear;
            SQL.Add('insert into TempJurnalOtoError (IDUser, Urut, JurnalOrHP, JenisTrans, NoBuktiTrans, NoBukti, Perkiraan, Lawan) ');
            SQL.Add('values ('+QuotedStr(IDUser)+','+IntToStr(iUrutError)+','+QuotedStr('H/P')+','+QuotedStr(mJenisTrans)+','+
              QuotedStr(xNoBuktiTrans)+','+QuotedStr('')+','+QuotedStr(DM.QuKOde.FieldByName('Perkiraan').AsString)+','+
              QuotedStr('')+')');
            ExecSQL;
          end;
          QuBeli.Close;
          QuBeli.Open;
          QuBeli.Locate('Urut',iUrutError,[]);
      end;
      with DM.QuCari2 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('exec sp_ProsesPostingHutPiut '+QuotedStr(mJenisTrans)+','''', '+IntToStr(Bulan.AsInteger)+','+IntToStr(Tahun.AsInteger)+
          ', '+QuotedStr(xNoBuktiTrans)+
          ', 1');
        ExecSQL;
      end;
      Label2.Caption:='Posting Hutang Piutang '+#13+
        'Transaksi : '+mKeteranganTrans+#13+
        'No. Bukti : '+xNoBuktiTrans;
      Application.ProcessMessages;
      DM.QuKOde.Next;
    end;
  end;
end;

procedure TFrPostingUlangJurnalOto.FormShow(Sender: TObject);
begin
  Bulan.Value:=Strtoint(PeriodBln);
  Tahun.Value:=Strtoint(PeriodThn);
  DataBuka('select * from vwSumberJurnal order by MyUrut',DM.QuCari);
  JenisTrans.Items.Clear;
  JenisTrans.Items.Add('-');
  while not DM.QuCari.Eof do
  begin
    JenisTrans.Items.Add(DM.QuCari.FieldByName('NamaTrans').AsString);
    DM.QuCari.Next;
  end;
  JenisTrans.ItemIndex:=0;
end;

procedure TFrPostingUlangJurnalOto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then sendmessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then close;
end;

procedure TFrPostingUlangJurnalOto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrPostingUlangJurnalOto.BitBtn1Click(Sender: TObject);
var iForDo: Integer;
begin
  if IsLockPeriode(Bulan.AsInteger,Tahun.AsInteger) then
  begin
    with DM.QuCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add('delete TempJurnalOtoError where IDUser='+QuotedStr(IDUser));
      ExecSQL;
    end;
    QuBeli.Close;
    QuBeli.SQL.Clear;
    QuBeli.SQL.Add('select IDUser, Urut, JurnalOrHP, ');
    QuBeli.SQL.Add('JenisTrans, ');
    //QuBeli.SQL.Add('case when JenisTrans=''SPB'' then ''SJ'' when JenisTrans=''INVC'' then ''PNJ'' else JenisTrans end JenisTrans, ');
    QuBeli.SQL.Add('NoBuktiTrans, NoBukti, Perkiraan, Lawan ');
    QuBeli.SQL.Add('from TempJurnalOtoError ');
    QuBeli.SQL.Add('where IDUser='+QuotedStr(IDUser));
    QuBeli.SQL.Add('order by Urut');
    QuBeli.Open;

    iUrutError:=0;
    QuTrans.Close;
    QuTrans.SQL.Clear;
    QuTrans.SQL.Add('select * from vwSumberJurnal ');
    if JenisTrans.Text<>'-' then
      QuTrans.SQL.Add('where NamaTrans='+QuotedStr(JenisTrans.Text));
    QuTrans.Open;
    XiProgressBar1.Position:=0;
    if not QuTrans.IsEmpty then
    begin
      try
        XiProgressBar1.Max:=QuTrans.RecordCount;
      except
        XiProgressBar1.Max:=1;
      end;
      QuTrans.First;
      while not QuTrans.Eof do
      begin
        mJenisTrans:=QuTransJenisTrans.AsString;
        mKeteranganTrans:=QuTransNamaTrans.AsString;
        with DM.QuCari do
        begin
          Close;
          SQL.Clear;
          SQL.Add('delete dbJurnalOto where year(Tanggal)='+IntToStr(Tahun.AsInteger)+' and month(Tanggal)='+IntToStr(Bulan.AsInteger));
          SQL.Add('and Jenis='+QuotedStr(mJenisTrans));
          ExecSQL;
          Close;
          SQL.Clear;
          SQL.Add('delete dbHutPiut where year(Tanggal)='+IntToStr(Tahun.AsInteger)+' and month(Tanggal)='+IntToStr(Bulan.AsInteger));
          SQL.Add('and NoInvoice='+QuotedStr(mJenisTrans));
          ExecSQL;
        end;
        ProsesPosting(mJenisTrans);
        XiProgressBar1.Position:=QuTrans.RecNo;
        QuTrans.Next;
        Application.ProcessMessages;
      end;
    end;
    Delay(3);
    Label2.Caption:='Proses posting selesai';
    XiProgressBar1.Position := 0;
  end
  else
  begin
    MsgPeriodeSudahDikunci;
    ActiveControl:=Bulan;
  end;
end;

procedure TFrPostingUlangJurnalOto.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrPostingUlangJurnalOto.SpeedButton1Click(Sender: TObject);
begin
  Save('xls', 'Microsoft Excel (*.xls)|*.xls', 'Posting', dxDBGrid1.SaveToXLS);
  ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
end;

end.

