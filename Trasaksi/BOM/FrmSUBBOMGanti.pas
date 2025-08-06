unit FrmSubBOMGanti;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, db,StrUtils,Buttons, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxEdit, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, PBNumEdit, RXCtrls, ADODB;

type
  TFrSubBOMGanti = class(TForm)
    Bevel2: TBevel;
    Label12: TLabel;
    Image1: TImage;
    Label11: TLabel;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBTableView;
    tvMasterDBColumn1: TcxGridDBColumn;
    tvMasterDBColumn2: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    KodeBrg: TEdit;
    PanelShow1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DsView: TDataSource;
    QuView: TADOQuery;
    LnamaBrg: TLabel;
    QuViewKodeBrgJd: TStringField;
    QuViewKodeBrgBhn: TStringField;
    QuViewKodeBrgBhnGanti: TStringField;
    QuViewNamaBrg: TStringField;
    QuViewSat1: TStringField;
    QuViewQnt: TBCDField;
    tvMasterSat1: TcxGridDBColumn;
    tvMasterQnt: TcxGridDBColumn;
    Label2: TLabel;
    Qnt1: TPBNumEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KodeGdgEnter(Sender: TObject);
    procedure refresh(XBrgjadi,XbrgBhn:String);
    procedure Button1Click(Sender: TObject);
    procedure KodeBrgExit(Sender: TObject);
    procedure KodeBrgEnter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SimpanData(Mode:Char);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    procedure ClearKomponen;
  public
    { Public declarations }
    IsSimpan : boolean;
    xsimpan: String;
  end;

var
  FrSubBOMGanti: TFrSubBOMGanti;

  mValid:Boolean;
implementation
uses  FrmGudang,MyGlobal,Myprocedure, MyModul, FrmBrows, FrmBOM,
  FrmBOMGanti;
{$R *.DFM}

procedure TFrSubBOMGanti.ClearKomponen;
var i:integer;
begin
   for i:= 0 to Panel1.ControlCount-1 do
   begin
      if (Panel1.Controls[i] is TEdit) then
         (Panel1.Controls[i] as TEdit).Text:='';
   end;
   LnamaBrg.Caption:='[ . . .]';
end;

procedure TFrSubBOMGanti.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frBOMGanti.refresh(QuViewKodeBrgJd.AsString);
  action:=cafree;
end;

procedure TFrSubBOMGanti.BitBtn2Click(Sender: TObject);
begin
  mValid:=False;
  PanelShow1.Enabled:=True;
  Panel2.Enabled:=True;
  ActiveControl:=cxGrid1;
  ClearKomponen;
  panel1.Visible:=False;
end;

procedure TFrSubBOMGanti.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then SendMessage(handle,WM_NEXTDLGCTL,0,0)
  else if key=27 then close;
end;

procedure TFrSubBOMGanti.KodeGdgEnter(Sender: TObject);
begin
  mValid:=true;
end;

procedure TFrSubBOMGanti.refresh(XBrgjadi,XbrgBhn:String);
begin
 Quview.Close;
 Quview.SQL.Strings[2]:='Select @KodebrgJd='+QuotedStr(XBrgjadi)+',@KOdeBrgBhn='+QuotedStr(XbrgBhn)+'';
 Quview.Open;
End;

procedure TFrSubBOMGanti.Button1Click(Sender: TObject);
begin
  ClearKomponen;
  kodebrg.Enabled:=True;
  panel1.Visible:=true;
  ActiveControl:=KodeBrg;
  xsimpan:='I';
  PanelShow1.Enabled:=False;
  Panel2.Enabled:=False;

end;

procedure TFrSubBOMGanti.KodeBrgExit(Sender: TObject);
begin
if mValid then
  begin
    if Length(KodeBrg.Text)=0 then
       TampilIsiData(FrSubBOMGanti,KodeBrg,LnamaBrg,1571,'KodeBrg','NamaBrg')
    else if DataBersyarat('select * from Dbbarang where kodegrp not in (:0,:1) and isaktif=1',['BJ','BU'],DM.Qucari) then
    begin
      KodeBrg.Text :=DM.QuCari.FieldByname('KodeBrg').AsString;
      LNamaBrg.Caption:='[ '+DM.QuCari.FieldByname('NamaBrg').AsString+' ]';
    end
    else
      TampilIsiData(FrSubBOMGanti,KodeBrg ,LnamaBRG,1571,'KodeBrg','NamaBrg');
  end;
end;

procedure TFrSubBOMGanti.KodeBrgEnter(Sender: TObject);
begin
mValid  :=True;
end;

procedure TFrSubBOMGanti.BitBtn1Click(Sender: TObject);
begin
{if KodeBrg.Text<>'' then
 begin

    if xsimpan ='I' then
       begin
        if DataBersyarat('Select * from dbbomganti where KOdebrgjd=:0 and Kodebrgbhn=:1 and KodebrgBhnGanti=:2',[FrBom.QuViewKODEBRG.asstring,FrBomGanti.QuViewKodeBrgBhn.asstring,KodeBrg.text],DM.Qucari)=true then
           begin
           ShowMessage('Bahan Pengganti:'+KodeBrg.Text+' Untuk bahan :'+FrBomGanti.QuViewKodeBrgBhn.asstring+' Dari Barang Jadi :'+FrBom.QuViewKODEBRG.asstring+' Sudah Terdaftar') ;
           Exit;
           End
        else
        begin
           SimpanData('I');
           ClearKomponen;
           ActiveControl:=KodeBrg;
        End;
       end
    else if xsimpan='U'  then
       begin
       SimpanData('U');
       ClearKomponen;
       Panel1.Visible:=False;
       Panel2.Enabled:=True;
       PanelShow1.Enabled:=True;
       ActiveControl:=cxGrid1;
       end

 end
 else
 begin
 ShowMessage('Kode Customer harus Diisi');
 ActiveControl:=KodeBrg;
 end;
 refresh(FrBOM.QuViewKODEBRG.AsString,FrBOMGanti.QuViewKodebrgBhn.AsString);
 PanelShow1.Enabled:=True;}
end;


procedure TFrSubBOMGanti.SimpanData(Mode:Char);
begin
{   if Mode='I' then
      begin
        with Dm.Qucari2 do
        begin
          close;
          Sql.Clear;
          Sql.add('Insert Into DBBOMGANTI (KOdebrgJD,KodeBrgBhn,KodeBrgBHNGanti, Qnt)');
          sql.add('Values(:0,:1,:2, :3)');
          Parameters[0].Value:=FrBOm.QuViewKODEBRG.AsString;
          Parameters[1].Value:=FrBomGanti.QuViewKodebrgBhn.asstring;
          Parameters[2].Value:=Kodebrg.Text;
          Parameters[3].Value:=Qnt1.Value;
          try
          ExecSQL;
          except
          ShowMessage('Proses Input gagal');
          end;
        end;
      end
   else if Mode='U' then
     Begin
      with Dm.Qucari2 do
        begin
          close;
          Sql.Clear;
          Sql.add('Update DBBOMGanti set KodeBrgBHNGanti=:0');
          sql.add('where KOdeBRgJD=:1 and KodeBRGBHN=:2 and KodebrgBhnGanti=:3, Qnt=:4');
          Parameters[0].Value:=Kodebrg.Text;
          Parameters[1].Value:=FrBom.QuViewKODEBRG.asstring;
          Parameters[2].Value:=FrBOMGanti.QuViewKodebrgBhn.asstring;
          Parameters[3].Value:=KOdebrg.Text;
          Parameters[4].Value:=Qnt1.Value;
          ExecSQL;
        end;
     End
   else if Mode='D' then
     begin
      with Dm.Qucari2 do
        begin
          close;
          Sql.Clear;
          Sql.add('Delete DBBOMGanti ');
          sql.add('where KOdeBRgJD=:0 and KodeBRGBHN=:1 and KodebrgBhnganti=:2');
          Parameters[0].Value:=FrBOm.QuViewKODEBRG.AsString;
          Parameters[1].Value:=FrSubBOMGanti.QuViewKodeBrgBhn.asstring;
          Parameters[2].Value:=FrSubBOMGanti.QuViewKodeBrgBhnGanti.asstring;
          ExecSQL;
        end;
     end;
 refresh(FrBOM.QuViewKODEBRG.AsString,FrBOMGanti.QuViewKodebrgBhn.AsString); }
end;

procedure TFrSubBOMGanti.Button2Click(Sender: TObject);
begin
   if Quview.IsEmpty then begin ShowMessage('Data Kosong'); ActiveControl:=cxgrid1;End
   else
   begin
      xsimpan:='U';
      Panel1.Visible:=True;
      KOdebrg.Text:=QuViewKodeBrgBhnGanti.AsString;
      LnamaBrg.Caption:=QuViewNamaBrg.AsString;
      PanelShow1.Enabled:=False;
      Panel2.Enabled:=False;
      kodebrg.Enabled:=False;
   End;
end;

procedure TFrSubBOMGanti.Button3Click(Sender: TObject);
begin
  if Quview.IsEmpty then begin ShowMessage('Data Kosong'); ActiveControl:=cxgrid1;End
   else
     begin
       StrPCopy(S,Format('Anda yakin Kode %s dan Nama %s dihapus ?',
           [QuView.Fields[0].asstring,
            QuView.Fields[1].asstring]));
      if (Application.MessageBox(S,'Peringatan',
          MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
      begin
         with dm.QuCari do
         begin
          SimpanData('D');
         end;
      end;
     end;
end;

end.
