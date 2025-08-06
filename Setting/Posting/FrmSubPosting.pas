unit FrmSubPosting;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, XPMenu, ExtCtrls, db,Buttons, ADODB, Grids, Wwdbigrd, Wwdbgrid;

type
  TFrSubPosting = class(TForm)
    XPMenu1: TXPMenu;
    Perkiraan: TEdit;
    Kode: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Bevel2: TBevel;
    Simpan: TBitBtn;
    QuSimpan: TADOQuery;
    QuSupPos: TADOQuery;
    DsQuSupPos: TDataSource;
    Label3: TLabel;
    Hapus: TBitBtn;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    QuSupPosDevisi: TStringField;
    QuSupPosPerkiraan: TStringField;
    QuSupPosKode: TStringField;
    QuSupPosKeterangan: TStringField;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    procedure Tampil;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure KodeEnter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SimpanClick(Sender: TObject);
    procedure HapusClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PerkiraanEnter(Sender: TObject);
    procedure PerkiraanExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrSubPosting: TFrSubPosting;
  mValid: Boolean;
  S:Array [0..255] of char;
implementation
uses  FrmDevisi,MyModul,MyGlobal,Myprocedure,Frmbrows,FrmPosting;
{$R *.DFM}

procedure ClearKomponen;
var i:integer;
begin
  for i:= 0 to FrSubPosting.ControlCount-1 do
  begin
    if (FrSubPosting.Controls[i] is TEdit) then
       (FrSubPosting.Controls[i] as TEdit).Clear;
  end;
end;

procedure TFrSubPosting.Tampil;
begin
  with QuSupPos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select a.*, b.Keterangan');
    SQL.Add('from dbPostHutPiut a, dbPerkiraan b');
    SQL.Add('where a.Perkiraan=b.Perkiraan and Devisi=:0 and Kode=:1');
    SQL.Add('Order by a.Kode,a.Devisi,a.Perkiraan');
    Parameters[0].Value := FrPosting.kdDevisi;
    Open;
  end;  
    {if BrwOK = 100 then
    begin
      Parameters[1].Value := 'PT';
      Kode.Text := 'PT';
    end else
    if BrwOK = 200 then
    begin
      Parameters[1].Value := 'HT';
      Kode.Text := 'HT';
    end;
    open;
  end;
  if QuSupPos.RecordCount > 0 then
     Hapus.Enabled := true;}
end;

procedure TFrSubPosting.FormClose(Sender: TObject;
var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrSubPosting.FormShow(Sender: TObject);
begin
  {ClearKomponen;
  Perkiraan.SetFocus;
  Tampil;}
end;

procedure TFrSubPosting.KodeEnter(Sender: TObject);
begin
  mValid := true;
end;

procedure TFrSubPosting.SpeedButton1Click(Sender: TObject);
begin
  QuSupPos.Next;
end;

procedure TFrSubPosting.SpeedButton2Click(Sender: TObject);
begin
  QuSupPos.Prior;
end;

procedure TFrSubPosting.SimpanClick(Sender: TObject);
begin
    with QuSimpan do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Insert into dbPostHutPiut(Devisi, Perkiraan, Kode)');
      SQL.Add('Values(:0,:1,:2)');
      Prepared;
      Parameters[0].Value := FrPosting.kdDevisi;
      Parameters[1].Value := Perkiraan.Text;
      Parameters[2].Value := Kode.Text;
      ExecSQL;
    end;
    //FormShow(Sender);
end;

procedure TFrSubPosting.HapusClick(Sender: TObject);
begin
  if QuSupPos.IsEmpty=true then
  begin
    Application.MessageBox('Tabel Kosong','Informasi'
    ,MB_OK Or MB_ICONWARNING);
  end else
  begin
    NoPost:=QuSupPos.Fields[0].asstring;
    StrPCopy(S,Format('Anda yakin Data Posting Divisi %s dan Perkiraan %s dihapus ?',
    [QuSupPos.Fields[0].asstring, QuSupPos.Fields[1].asstring]));
    if (Application.MessageBox(S,'Peringatan',
        MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
    begin
      with QuSimpan do
      begin
        Close;
        SQL.Clear;
        SQL.Add('Delete dbPostHutPiut');
        SQL.Add('Where Devisi=:0 and Perkiraan=:1 and Kode=:2');
        Prepared;
        Parameters[0].Value := FrPosting.kdDevisi;
        Parameters[1].Value := QuSupPos.fieldbyname('Perkiraan').AsString;
        Parameters[2].Value := QuSupPos.fieldbyname('Kode').AsString;
        ExecSQL;
      end;
    end;
  end;
  FormShow(Sender);
end;

procedure TFrSubPosting.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
     SendMessage(handle,WM_NEXTDLGCTL,0,0)else
  if key=27 then
     close;
end;

procedure TFrSubPosting.PerkiraanEnter(Sender: TObject);
begin
//mValid:=true;
end;

procedure TFrSubPosting.PerkiraanExit(Sender: TObject);
begin
{if mValid then
begin
    if length(Perkiraan.Text)=0 then
    begin
      KodeBrows:=24;
      Application.CreateForm(Tfrbrows, frbrows);
      FrBrows.IsiData:=Perkiraan.Text;
      frbrows.Showmodal;
      if FrBrows.ModalResult=mrOk then
      begin
        Perkiraan.Text := FrBrows.QuBrows.fieldbyname('Perkiraan').AsString;
        Label3.Caption := '[ '+FrBrows.QuBrows.fieldbyname('Keterangan').AsString+' ]';
        ActiveControl:=Simpan;
      end else
        ActiveControl:=Perkiraan;
    end else
    begin
      if MyFindField('dbPerkiraan','Perkiraan',Perkiraan.Text)=true then
      begin
        Perkiraan.Text:=DM.QuCari.fieldbyname('Perkiraan').AsString;
        Label3.Caption := '[ '+DM.QuCari.fieldbyname('Keterangan').AsString+' ]';
        ActiveControl:=Simpan;
      end else
      begin
        KodeBrows:=24;
        Application.CreateForm(Tfrbrows, frbrows);
        FrBrows.IsiData:=Perkiraan.Text;
        frbrows.Showmodal;
        if FrBrows.ModalResult=mrOk then
        begin
          Perkiraan.Text:=FrBrows.QuBrows.fieldbyname('Perkiraan').AsString;
          Label3.Caption := '[ '+FrBrows.QuBrows.fieldbyname('Keterangan').AsString+' ]';
          ActiveControl:=Simpan;

        end else
           ActiveControl:=Perkiraan;
      end;
    end;
end;}
end;

end.
