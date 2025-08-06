unit FrmAjcTransfer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ADODB, Menus, DB, StdCtrls, Buttons, dxDBTLCl,
  dxGrClms, dxDBCtrl, dxDBGrid, dxTL, dxCntner, ExtCtrls, StrUtils,
  XiProgressBar;

type
  TFrAjcTransfer = class(TForm)
    QuSource: TADOQuery;
    DsSource: TDataSource;
    PopupMenu1: TPopupMenu;
    QuAjcTransfer: TADOQuery;
    DsBackup: TDataSource;
    Panel2: TPanel;
    dxDBGrid1: TdxDBGrid;
    PanelShow1: TPanel;
    HapusBtn: TSpeedButton;
    KoreksiBtn: TSpeedButton;
    TambahBtn: TSpeedButton;
    Panel1: TPanel;
    Panel3: TPanel;
    BtnAmbilData: TBitBtn;
    Memo1: TMemo;
    PeriodeTransfer: TDateTimePicker;
    Label3: TLabel;
    XiProgressBar1: TXiProgressBar;
    LblKeterangan: TLabel;
    dxDBGrid1KeyUrut: TdxDBGridMaskColumn;
    dxDBGrid1NamaTabel: TdxDBGridMaskColumn;
    dxDBGrid1KeyTabel: TdxDBGridMaskColumn;
    gbTujuanTransfer: TGroupBox;
    Label2: TLabel;
    sbTujuan: TSpeedButton;
    QuAjcTransferKeyUrut: TAutoIncField;
    QuAjcTransferNamaTabel: TStringField;
    QuAjcTransferKeyField: TStringField;
    dxDBGrid1Column4: TdxDBGridColumn;
    QuAjcTransferSelectTabel: TStringField;
    QuTrans: TADOQuery;
    QuKolom: TADOQuery;
    QuKolomNamaField: TWideStringField;
    AdD: TADODataSet;
    dxDBGrid1Column5: TdxDBGridCheckColumn;
    QuAjcTransferIsTransfer: TWordField;
    QuAjcTransferIsTr: TWordField;
    QuDel: TADOQuery;
    QuAjcTransferPrimaryKey: TStringField;
    dxDBGrid1Column6: TdxDBGridColumn;
    Label1: TLabel;
    DsTujuanTransfer: TDataSource;
    QuTujuanTransfer: TADOQuery;
    QuTujuanTransferIDTUJUAN: TIntegerField;
    QuTujuanTransferNAMATUJUAN: TStringField;
    QuTujuanTransferCONNSTR: TStringField;
    QuTujuanTransferSIMBOLTUJUAN: TStringField;
    cmbTujuanTransfer: TComboBox;
    BtnConnect: TBitBtn;
    procedure BtnAmbilDataClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TambahBtnClick(Sender: TObject);
    procedure KoreksiBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure HapusBtnClick(Sender: TObject);
    procedure sbTujuanClick(Sender: TObject);
    procedure QuAjcTransferAfterPost(DataSet: TDataSet);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure BtnConnectClick(Sender: TObject);
  private
    { Private declarations }
    mKey1, mKey2, mKey3: String;
    mTujuanTransferData: String;
    XKey: array [1..10] of String;
    XKey1: array [1..10] of String;
    DxKey,i,j:integer;
    DxKey1,i1,j1:integer;
    Filter,Filter1:string;
    XBulan,XTahun:string;
    mFlagSimbol: String;
    mIsTabelMaster: Boolean;
    procedure TampilIsiTujuanTransferData;
    procedure BukaSourceTabel;
    procedure AmbilData;
    procedure GetKeyField;
    Procedure GetPrimaryKey;
  public
    { Public declarations }
    procedure TampilData;
  end;

var
  FrAjcTransfer: TFrAjcTransfer;

implementation

uses MyModul, MyGlobal, FrmSubAjcTransfer;

{$R *.dfm}

procedure TFrAjcTransfer.TampilIsiTujuanTransferData;
var xPosServer, xPosDBase: Integer;
begin
  QuTujuanTransfer.Close;
  QuTujuanTransfer.Open;
  QuTujuanTransfer.First;
  cmbTujuanTransfer.Clear;
  while not QuTujuanTransfer.Eof do
  begin
    cmbTujuanTransfer.Items.Add(QuTujuanTransferNAMATUJUAN.AsString);
    QuTujuanTransfer.Next;
  end;
end;

procedure TFrAjcTransfer.BukaSourceTabel;
begin
  Memo1.Text:=QuAjcTransferSelectTabel.AsString;
  Memo1.Text:=AnsiReplaceStr(Memo1.Lines.Text,':0',FormatDateTime('M',PeriodeTransfer.Date));
  Memo1.Text:=AnsiReplaceStr(Memo1.Lines.Text,':1',FormatDateTime('yyyy',PeriodeTransfer.Date));
  XBulan:=FormatDateTime('M',PeriodeTransfer.Date);
  XTahun:=FormatDateTime('YYYY',PeriodeTransfer.Date);
    with QuSource do
    begin
      Close;
      SQL.Text:=Memo1.Text;
      Open;
    end;

    with QuKolom do
    begin
      Close;
      SQL.Clear;
      SQL.Add('declare @id int');
      SQL.Add('select @id=[id] from sysobjects where [name]='+QuotedStr(QuAjcTransferNamaTabel.AsString));
      SQL.Add('select [name] NamaField from syscolumns where [id]=@id and colstat=0 ');
      SQL.Add('order by colid ');
      Open;
    end;
end;
Procedure TFrAjcTransfer.GetKeyField;
var x:Integer;
Begin
   mKey1:=QuAjcTransferKeyField.AsString;
   i:=1;
   j:=0;
   while Pos(';', mKey1) > 0 do
   Begin
    j:=j+1;
    DxKey:= Pos(';', mKey1);
    mKey1[Pos(';',mKey1)]:=' ';
    if i=1 Then
    Begin
     XKey[j]:=Copy(mKey1,1,DxKey-1)
    end
    else
    Begin
     XKey[j]:=Copy(mKey1,i+1,(DxKey-1)-i)
    end;
     i:=DxKey;
   end;
 if J<>0 Then Begin
 filter:='';

 for x:=1 to J do
  Begin
     if  x=1 Then
     Begin
     filter:=' where '+filter+ XKey[x]+' =:'+IntTostr(x-1);

     end
     else
      Begin
       filter:=filter+ ' and '+ XKey[x]+' =:'+IntTostr(x-1) ;
      end;
  end;
 end;
end;

Procedure TFrAjcTransfer.GetPrimaryKey;
var x:Integer;
Begin
   mKey2:=QuAjcTransferPrimaryKey.AsString;
   i1:=1;
   j1:=0;
   while Pos(';', mKey2) > 0 do
   Begin
    j1:=j1+1;
    DxKey1:= Pos(';', mKey2);
    mKey2[Pos(';',mKey2)]:=' ';
    if i1=1 Then
    Begin
     XKey1[j1]:=Copy(mKey2,1,DxKey1-1)
    end
    else
    Begin
     XKey1[j1]:=Copy(mKey2,i1+1,(DxKey1-1)-i1)
    end;
     i1:=DxKey1;
   end;
 filter1:='';
 if J1<>0 Then Begin
 filter1:='';

 for x:=1 to J1 do
  Begin
     if  x=1 Then
     Begin
     filter1:=' where '+filter1+ XKey1[x]+' =:'+IntTostr(x-1);

     end
     else
      Begin
       filter1:=filter1+ ' and '+ XKey1[x]+' =:'+IntTostr(x-1) ;
      end;
  end;
 end;
end;

procedure TFrAjcTransfer.AmbilData;
var xFieldKe: integer;
    xNamaField: String;
    XBintang:Boolean;
begin
  if mIsTabelMaster=False then
  begin
    LblKeterangan.Caption:='Proses Transfer Data '+QuAjcTransferNamaTabel.AsString;
    Application.ProcessMessages;
    BukaSourceTabel;
    XiProgressBar1.Position:=0;
    try
      if QuSource.IsEmpty then XiProgressBar1.Max:=1
      else XiProgressBar1.Max:=QuSource.RecordCount;
    except
      XiProgressBar1.Max:=1;
    end;
    GetKeyField;
    GetPrimaryKey;
    QuDel.Close;
    QuDel.SQL.Clear;
    if UpperCase(QuAjcTransferNamaTabel.AsString)='DBGIRO' then
      QuDel.SQL.Add('delete '+QuAjcTransferNamaTabel.AsString+ ' where FlagSimbol='+QuotedStr(mFlagSimbol)+' and month(TglGiro)='+XBulan+' and year(TglGiro)='+XTahun)
    else
      QuDel.SQL.Add('delete '+QuAjcTransferNamaTabel.AsString+ ' where FlagSimbol='+QuotedStr(mFlagSimbol)+' and Month(Tanggal)='+XBulan+' and Year(Tanggal)='+XTahun);
    QuDel.ExecSQL;
  
    QuSource.First;
    if Trim(Filter1)='' Then Filter1:=' where' else Filter1:=Filter1+' and';
    while not QuSource.Eof do
    begin
      AdD.Close;
      AdD.CommandText:='select * from '+QuAjcTransferNamaTabel.AsString+' where 1=2';
      AdD.Open;
      AdD.Append;
      QuKolom.First;
      while not QuKolom.Eof do
      begin
        xNamaField:=QuKolomNamaField.AsString;
        if UpperCase(xNamaField)='MYID' then
        begin
        end else
        begin
          if UpperCase(xNamaField)='FLAGSIMBOL' then
            AdD.FieldByName(xNamaField).Value:=mFlagSimbol
          else if (UpperCase(QuAjcTransferNamaTabel.AsString)='DBGIRO')and (UpperCase(xNamaField)='BUKTIBUKA')Then
            AdD.FieldByName(xNamaField).Value:=mFlagSimbol+QuSource.FieldByName(xNamaField).Value
          else if (UpperCase(QuAjcTransferNamaTabel.AsString)='DBHUTPIUT')and (UpperCase(xNamaField)='NOBUKTI')and (QuSource.FieldByName(xNamaField).AsString<>'AWL')Then
           begin
             AdD.FieldByName(xNamaField).Value:=mFlagSimbol+QuSource.FieldByName(xNamaField).Value
           end
          else if (UpperCase(xNamaField)='NOBUKTI')
            and ((UpperCase(QuAjcTransferNamaTabel.AsString)='DBTRANS') or (UpperCase(QuAjcTransferNamaTabel.AsString)='DBTRANSAKSI')) then
          begin
            AdD.FieldByName(xNamaField).Value:=mFlagSimbol+QuSource.FieldByName(xNamaField).Value;
          end
          else
            AdD.FieldByName(xNamaField).Value:=QuSource.FieldByName(xNamaField).Value;
        end;
        QuKolom.Next;
      end;
      try
        AdD.Post;
      except
      end;
      XiProgressBar1.Position:=XiProgressBar1.Position+1;
      Application.ProcessMessages;
      QuSource.Next;
    end;
  end else
  begin
    LblKeterangan.Caption:='Proses Transfer Data '+QuAjcTransferNamaTabel.AsString;
    Application.ProcessMessages;
    BukaSourceTabel;
    XiProgressBar1.Position:=0;
    try
      if QuSource.IsEmpty then XiProgressBar1.Max:=1
      else XiProgressBar1.Max:=QuSource.RecordCount;
    except
      XiProgressBar1.Max:=1;
    end;

    QuSource.First;

    while not QuSource.Eof do
    begin
      AdD.Close;
      AdD.CommandText:='select * from '+QuAjcTransferNamaTabel.AsString+' where '+QuAjcTransferPrimaryKey.AsString+'=:0';
      if QuAjcTransferNamaTabel.AsString='DBSUBTIPETRANS' then
        AdD.CommandText:=AdD.CommandText+' and KODESUBTIPE=:1 ';
      if QuAjcTransferNamaTabel.AsString='DBPERKCUSTSUPP' then
        AdD.CommandText:=AdD.CommandText+' and URUT=:1 ';
      AdD.Prepared;
      AdD.Parameters[0].Value:=QuSource.FieldByName(QuAjcTransferPrimaryKey.AsString).Value;
      if QuAjcTransferNamaTabel.AsString='DBSUBTIPETRANS' then
        AdD.Parameters[1].Value:=QuSource.FieldByName('KODESUBTIPE').Value;
      if QuAjcTransferNamaTabel.AsString='DBPERKCUSTSUPP' then
        AdD.Parameters[1].Value:=QuSource.FieldByName('URUT').Value;
      AdD.Open;

      if AdD.IsEmpty then AdD.Append
        else AdD.Edit;
      QuKolom.First;
      while not QuKolom.Eof do
      begin
        xNamaField:=QuKolomNamaField.AsString;
        if UpperCase(xNamaField)='MYID' then
        begin
        end else
        begin
          AdD.FieldByName(xNamaField).Value:=QuSource.FieldByName(xNamaField).Value;
        end;
        QuKolom.Next;
      end;
      AdD.Post;
      
      XiProgressBar1.Position:=XiProgressBar1.Position+1;
      Application.ProcessMessages;
      QuSource.Next;
    end;
  end;
end;

procedure TFrAjcTransfer.TampilData;
begin
  QuAjcTransfer.Close;
  QuAjcTransfer.Open;
  if QuAjcTransfer.IsEmpty=false then
  begin
    dxDBGrid1.OptionsDB:=[edgoCanNavigation,edgoLoadAllRecords,edgoUseBookmarks]
  end
  else
  begin
    dxDBGrid1.OptionsDB:=[edgoCanNavigation,edgoUseBookmarks];
  end;
end;

procedure TFrAjcTransfer.BtnAmbilDataClick(Sender: TObject);
var xDBAsal, xDBTujuan, xNamaTabelTransfer: String;
    xBolehAmbilData: Boolean;
begin
  xDBAsal:=UpperCase(DM.MyStock.DefaultDatabase);
  xDBTujuan:=UpperCase(DM.DBTransfer.DefaultDatabase);
  QuAjcTransfer.First;
  while not QuAjcTransfer.Eof do
  begin
    xBolehAmbilData:=False;
    xNamaTabelTransfer:=UpperCase(QuAjcTransferNamaTabel.AsString);
    if ((xDBAsal='DBANDOGPL') and (xDBTujuan='DBANDO')) then
    begin
      xBolehAmbilData:=(xNamaTabelTransfer='DBTRANS')
        or (xNamaTabelTransfer='DBTRANSAKSI')
        or (xNamaTabelTransfer='DBHUTPIUT')
        or (xNamaTabelTransfer='DBGIRO')
        or (xNamaTabelTransfer='DBCUSTSUPP');
      mIsTabelMaster:=False;
    end;
    if ((xDBAsal='DBANDO') and (xDBTujuan='DBANDOGPL')) then
    begin
      xBolehAmbilData:=(xNamaTabelTransfer='DBHUTPIUT')
        or (xNamaTabelTransfer='DBPEMBELIAN')
        or (xNamaTabelTransfer='DBRPEMBELIAN')
        or (xNamaTabelTransfer='DBPENJUALAN')
        or (xNamaTabelTransfer='DBRPENJUALAN')
        or (xNamaTabelTransfer='DBCUSTSUPP')
        or (xNamaTabelTransfer='DBPERKCUSTSUPP')
        or (xNamaTabelTransfer='DBTIPETRANS')
        or (xNamaTabelTransfer='DBSUBTIPETRANS');
      mIsTabelMaster:=(xNamaTabelTransfer='DBCUSTSUPP')
        or (xNamaTabelTransfer='DBPERKCUSTSUPP')
        or (xNamaTabelTransfer='DBTIPETRANS')
        or (xNamaTabelTransfer='DBSUBTIPETRANS');
    end;
    if xBolehAmbilData and (QuAjcTransferIsTransfer.AsInteger=1) then
      AmbilData;
    QuAjcTransfer.Next;
  end;
  QuAjcTransfer.Close;
  XiProgressBar1.Position:=0;
  LblKeterangan.Caption:='Proses Transfer Data Selesai !';
end;

procedure TFrAjcTransfer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrAjcTransfer.TambahBtnClick(Sender: TObject);
begin
  Application.CreateForm(TFrSubAjcTransfer, FrSubAjcTransfer);
  FrSubAjcTransfer.IsSimpan:=True;
  FrSubAjcTransfer.ShowModal;
end;

procedure TFrAjcTransfer.KoreksiBtnClick(Sender: TObject);
begin
  Application.CreateForm(TFrSubAjcTransfer, FrSubAjcTransfer);
  FrSubAjcTransfer.IsSimpan:=False;

  FrSubAjcTransfer.NamaTabel.Text:=QuAjcTransferNamaTabel.AsString;
  FrSubAjcTransfer.KeyField.Text:=QuAjcTransferKeyField.AsString;
  FrSubAjcTransfer.SelectTabel.Text:=QuAjcTransferSelectTabel.AsString;
  FrSubAjcTransfer.CheckBox1.Checked:=QuAjcTransferIsTr.AsInteger=1;
  FrSubAjcTransfer.PK.Text:=QuAjcTransferPrimaryKey.AsString;
  FrSubAjcTransfer.ShowModal;
end;

procedure TFrAjcTransfer.FormShow(Sender: TObject);
begin
  TampilIsiTujuanTransferData;
  PeriodeTransfer.Date:=EncodeDate(StrToInt(PeriodThn),StrToInt(PeriodBln),1);
  with dm.QuCari do
  begin
    close;
    sql.Clear;
    sql.Add('update TransferData set istransfer=1 ');
    ExecSQL;
  end;
  //PanelShow1.Enabled:=LevelUserAccess=2;
  //TambahBtn.Enabled:=PanelShow1.Enabled;
  //KoreksiBtn.Enabled:=PanelShow1.Enabled;
  //HapusBtn.Enabled:=PanelShow1.Enabled;
  //TampilData;
  //sbTujuan.Click;
end;

procedure TFrAjcTransfer.HapusBtnClick(Sender: TObject);
begin
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('delete TransferData where KeyUrut='+IntToStr(QuAjcTransferKeyUrut.AsInteger));
    ExecSQL;
  end;
  QuAjcTransfer.Close;
  QuAjcTransfer.Open;
end;

procedure TFrAjcTransfer.sbTujuanClick(Sender: TObject);
begin
{DM.DBTransfer.Connected:=False;
DM.DBTransfer.ConnectionString:=Koneksi[1];
Try
DM.DBTransfer.Connected:=True;
except
  on E: Exception do
    begin
     MessageDlg('Koneksi tujuan transfer data tidak bisa !',mtError,[mbOK],0);
     Abort;
    end;
end;
}
end;

procedure TFrAjcTransfer.QuAjcTransferAfterPost(DataSet: TDataSet);
begin
  //TampilData;
end;

procedure TFrAjcTransfer.dxDBGrid1DblClick(Sender: TObject);
begin
KoreksiBtn.Click;
end;

procedure TFrAjcTransfer.BtnConnectClick(Sender: TObject);
begin
  with DM.QuCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from dbTujuanTransfer where NamaTujuan='+QuotedStr(cmbTujuanTransfer.Text));
    Open;
    mFlagSimbol:=FieldByName('SimbolTujuan').AsString;
    DM.DBTransfer.Connected:=False;
    DM.DBTransfer.ConnectionString:=FieldByName('CONNSTR').AsString;
    try
      //DM.DBTransfer.Connected:=False;
      //DM.DBTransfer.ConnectionString:=FieldByName('CONNSTR').AsString;
      DM.DBTransfer.Connected:=True;
      if (UpperCase(DM.MyStock.DefaultDatabase)=UpperCase(DM.DBTransfer.DefaultDatabase)) then
      begin
        MessageDlg('Tujuan transfer tidak diperbolehkan',mtInformation,[mbOK],0);
        ActiveControl:=cmbTujuanTransfer;
      end else
        TampilData;
    except
      on E: Exception do
      begin
        MessageDlg('Koneksi tujuan transfer data tidak bisa !',mtError,[mbOK],0);
      end;
    end;
  end;
end;

end.
