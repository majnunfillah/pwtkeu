unit FrmPostingJurnalOto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, PBNumEdit, Db, ADODB, ComCtrls, ExtCtrls, Gauges,Buttons,
  XiProgressBar, RxGIF, jpeg, Math, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  ShellApi;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrPostingJurnalOto = class(TForm)
    Shape1: TShape;
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    XiProgressBar1: TXiProgressBar;
    BitBtn2: TBitBtn;
    Bevel2: TBevel;
    Label2: TLabel;
    MySP: TADOStoredProc;
    QuTempHPP: TADOQuery;
    QuTempHPPKodeBrg: TStringField;
    QuTempHPPNQnt: TBCDField;
    QuTempHPPNRp: TBCDField;
    QuTempHPPNHrgRata: TBCDField;
    QuTempHPPNamaBrg: TStringField;
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
    Bulan: TPBNumEdit;
    Tahun: TPBNumEdit;
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
       ttgl : tdatetime;
    mJenisTrans,mJenisTransP, mKeteranganTrans: String;
    //MyWip,MyHPP :real;
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure ProsesPosting(xJenisTrans: String);
  public
    { Public declarations }
  end;

var
  FrPostingJurnalOto: TFrPostingJurnalOto;

implementation

uses FrmBrows,MyProcedure,MyGlobal,MyModul;

{$R *.DFM}

procedure TFrPostingJurnalOto.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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

Procedure TFrPostingJurnalOto.ProsesPosting(xJenisTrans: String);
var xNoBuktiTrans: String;
begin
  // Jurnal
  {with DM.QuKOde do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select top 1 JenisTrans, NoBuktiTrans ');
    SQL.Add('from vwPostJurnalOto ');
    SQL.Add('Where month(Tanggal)='+inttostr(bulan.AsInteger)+' and year(Tanggal)='+IntToStr(Tahun.AsInteger));
    SQL.Add('and JenisTrans='+QuotedStr(xJenisTrans));
    SQL.Add('group by JenisTrans, NoBuktiTrans ');
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
        {SQL.Add('select top 1 NoBukti, NoBuktiTrans, Urut, Perkiraan, Lawan from vwPostJurnaloto ');
        SQL.Add('where year(Tanggal)='+inttostr(Tahun.AsInteger)+' and month(Tanggal)='+inttostr(Bulan.AsInteger));
        SQL.Add('and NoBuktiTrans='+QuotedStr(xNoBuktiTrans));
        SQL.Add('Order by Urut');}
        {sql.Add(' select * from dbpenyerahanBhn  ');
        SQL.Add('where isotorisasi1=0 and year(Tanggal)='+inttostr(Tahun.AsInteger)+' and month(' +
          'Tanggal)='+inttostr(Bulan.AsInteger));
        Open;
      end;
      DM.QueryBrow.First;
      while not DM.QueryBrow.Eof do
      begin
        {if mjenistrans='BP' then
          Otorisasi('DbpenyerahanBhn','06001',IDUser,'',dm.QueryBrow.FieldByName('nobukti').AsString);
        Next;}
        {if mJenisTrans='BP' then
        begin
             if (DM.QueryBrow.FieldByName('NoBukti').AsString='') or
              (DM.QueryBrow.FieldByName('Perkiraan').AsString='') or
              (DM.QueryBrow.FieldByName('Lawan').AsString='') or
              (DM.QueryBrow.FieldByName('Perkiraan').AsString=DM.QueryBrow.FieldByName('Lawan').AsString) then
             begin
               BatalOtorisasi('DBBeli','03006',IDUser,'',DM.QueryBrow.FieldByName('NoBukti').AsString);
               Otorisasi('DBBeli','03006',IDUser,'',DM.QueryBrow.FieldByName('NoBukti').AsString);
             End;
        End;  }
        {if (DM.QueryBrow.FieldByName('NoBukti').AsString='') or
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
        DM.QueryBrow.Next;}
        {if DM.QueryBrow.Eof then
        begin
            with DM.QuCari2 do
            begin
              Close;
              SQL.Clear;
              SQL.Add('exec sp_ProsesPostingJurnalOto1 '+QuotedStr(mJenisTrans)+','+IntToStr(Bulan.AsInteger)+','+IntToStr(Tahun.AsInteger)+
                ', '+QuotedStr(xNoBuktiTrans)+
                ', 1,'+QuotedStr(FormatDateTime('MM/dd/yyyy',ttgl)));
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
  end
  else}
  Begin
                      with DM.QuCari2 do
            begin
              Close;
              SQL.Clear;
              SQL.Add('exec sp_ProsesPostingJurnalOto '+QuotedStr(mJenisTrans)+','+IntToStr(Bulan.AsInteger)+','+IntToStr(Tahun.AsInteger)+
                ', '+QuotedStr(xNoBuktiTrans)+
                ', 1,'+QuotedStr(FormatDateTime('MM/dd/yyyy',ttgl))+' , '+iduser);
                //Label2.Caption :=sql.Text ;
              ExecSQL;
            end;
  end;
   Application.ProcessMessages;
  // Hutang Piutang
  {with DM.QuKOde do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select NoFaktur, NoRetur, nobukti ,Perkiraan,NoBuktiTrans ');
    SQL.Add('from vwPostHutPiut ');
    SQL.Add('Where month(Tanggal)='+IntToStr(Bulan.AsInteger)+' and year(Tanggal)='+IntToStr(Tahun.AsInteger));
    SQL.Add('and NoInvoice='+QuotedStr(mJenisTrans));
    SQL.Add('group by NoFaktur, NoRetur, Perkiraan, NoBuktiTrans,nobukti');
    SQL.Add('Order by NoFaktur, NoRetur');
    Open;
  end;
  if not DM.QuKOde.IsEmpty then
  begin
    while not DM.QuKOde.Eof do
    begin
      xNoBuktiTrans:=DM.QuKOde.FieldByName('NoBuktiTrans').AsString;
      if (DM.QuKOde.FieldByName('Perkiraan').AsString='') or
        (DM.QuKOde.FieldByName('Nofaktur').AsString='') or
        (DM.QuKOde.FieldByName('nobukti').AsString='')
      then
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
        SQL.Add('exec sp_ProsesPostingHutPiut '+QuotedStr(mJenisTrans)+','+IntToStr(Bulan.AsInteger)+','+IntToStr(Tahun.AsInteger)+
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
  end;}
end;

procedure TFrPostingJurnalOto.FormShow(Sender: TObject);
begin
  Bulan.Value:=Strtoint(PeriodBln);
  Tahun.Value:=Strtoint(PeriodThn);
end;

procedure TFrPostingJurnalOto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then sendmessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then close;
end;

procedure TFrPostingJurnalOto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrPostingJurnalOto.BitBtn1Click(Sender: TObject);
var iForDo: Integer;


begin
  if IsLockPeriode(Bulan.AsInteger,Tahun.AsInteger) then
  begin
         LoggingData(IDUser,'','','',' Posting Periode '+Bulan.Text+'-'+
           Tahun.Text);
      if bulan.AsInteger <12 then
      ttgl := encodedate(tahun.AsInteger,bulan.AsInteger+1,1)-1
   else
      ttgl := encodedate(tahun.AsInteger,bulan.AsInteger,31);

    //pemberian nomor jurnal
    {with DM.QuCari2 do
    begin
      close;
      sql.Clear;
      sql.Add('Select A.nobukti,A.MaxOL  '+
              ' From DBBELI A  '+
                ' where  Cast(Case when Case when A.IsOtorisasi1=1 then 1 else 0 end+     '+
                '       Case when A.IsOtorisasi2=1 then 1 else 0 end+        '+
                '       Case when A.IsOtorisasi3=1 then 1 else 0 end+        '+
                '       Case when A.IsOtorisasi4=1 then 1 else 0 end+        '+
                '       Case when A.IsOtorisasi5=1 then 1 else 0 end=A.MaxOL then 0    '+
                '  else 1       '+
             ' end As Bit) =0 and NoJurnal='''' and Month(A.tanggal)='+IntToStr(Bulan.AsInteger)+'  and Year(A.tanggal)='+IntToStr(Tahun.AsInteger)+'  ');
      open;
    end;
    while not Dm.QuCari2.Eof do
    begin
       DisableEnableTrigger(False,'Dbbeli');
       GetNomorJurnal('Dbbeli','03006',IDUser,'',Dm.QuCari2.Fieldbyname('NObukti').AsString);
       DisableEnableTrigger(True,'Dbbeli');
       BatalOtorisasi('DBBeli','03006',IDUser,'',Dm.QuCari2.Fieldbyname('NObukti').AsString);
       Otorisasi('DBBeli','03006',IDUser,'',Dm.QuCari2.Fieldbyname('NObukti').AsString);
       Dm.QuCari2.Next
    end;}
    //DisableEnableTrigger(True,'Dbbeli');
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
    QuBeli.SQL.Add('case when JenisTrans=''SPB'' then ''SJ'' when JenisTrans=''INVC'' then ''PNJ'' else JenisTrans end JenisTrans, ');
    QuBeli.SQL.Add('NoBuktiTrans, NoBukti, Perkiraan, Lawan ');
    QuBeli.SQL.Add('from TempJurnalOtoError ');
    QuBeli.SQL.Add('where IDUser='+QuotedStr(IDUser));
    QuBeli.SQL.Add('order by Urut');
    QuBeli.Open;

    iUrutError:=0;
    XiProgressBar1.Position:=0;
    XiProgressBar1.Max:=13;
    for iForDo := 1 to 12 do
    begin
      case iForDo of
        1 : mJenisTrans:='DLL';
        {2 : mJenisTrans:='RBP';
        3 : mJenisTrans:='DN';
        4 : mJenisTrans:='SPB';
        5 : Begin
            mJenisTrans:='INVPL';
            mJenisTransP:='FPJPL'
            end;
        6 : mJenisTrans:='INVRPJ';
        7 : mJenisTrans:='KN';}
        8 : mJenisTrans:='PMK';
        9 : mJenisTrans:='RPK';
        10: mJenisTrans:='PRD';
        {10: mJenisTrans:='KMS';}
        11: mJenisTrans:='HPD';
        12: mJenisTrans:='SPB';
      end;
        Label2.Caption :=mJenisTrans ;

      with DM.QuCari do
      begin
        Close;
        SQL.Clear;
        SQL.Add('delete dbJurnalOto where year(Tanggal)='+IntToStr(Tahun.AsInteger)+' and month(Tanggal)='+IntToStr(Bulan.AsInteger));
        SQL.Add('and Jenis='+QuotedStr(mJenisTrans)+ ' or jenis='+QuotedStr(mJenisTransP) );
        ExecSQL;
        {Close;
        SQL.Clear;
        SQL.Add('delete dbHutPiut where year(Tanggal)='+IntToStr(Tahun.AsInteger)+' and month(Tanggal)='+IntToStr(Bulan.AsInteger));
        SQL.Add('and NoInvoice='+QuotedStr(mJenisTrans));
        ExecSQL;  }
      end;
      ProsesPosting(mJenisTrans);
      XiProgressBar1.Position:=iForDo;
      Application.ProcessMessages;
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
    QuBeli.Close;
    QuBeli.SQL.Clear;
    QuBeli.SQL.Add('select IDUser, Urut, JurnalOrHP, ');
    QuBeli.SQL.Add('case when JenisTrans=''SPB'' then ''SJ'' when JenisTrans=''INVC'' then ''PNJ'' else JenisTrans end JenisTrans, ');
    QuBeli.SQL.Add('NoBuktiTrans, NoBukti, Perkiraan, Lawan ');
    QuBeli.SQL.Add('from TempJurnalOtoError ');
    QuBeli.SQL.Add('where IDUser='+QuotedStr(IDUser));
    QuBeli.SQL.Add('order by Urut');
    QuBeli.Open;

end;

procedure TFrPostingJurnalOto.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrPostingJurnalOto.SpeedButton1Click(Sender: TObject);
begin
  Save('xls', 'Microsoft Excel (*.xls)|*.xls', 'Posting', dxDBGrid1.SaveToXLS);
  ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
end;

end.

