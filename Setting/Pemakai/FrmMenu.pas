unit FrmMenu;                                                                                            

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, DB, ADODB, StdCtrls, variants,
  StrUtils;
type
  TFrMenu = class(TForm)
    wwDBGrid1: TwwDBGrid;
    QuMenu: TADOQuery;
    DataSource1: TDataSource;
    Label1: TLabel;
    QuMenuUSERID: TStringField;
    QuMenuL0: TIntegerField;
    QuMenuL1: TStringField;
    QuMenuCAPTION: TStringField;
    QuMenuACCESS: TSmallintField;
    Button1: TButton;
    QuUpdate: TADOQuery;
    StringField1: TStringField;
    BooleanField1: TBooleanField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    StringField2: TStringField;
    IntegerField6: TIntegerField;
    StringField3: TStringField;
    SmallintField1: TSmallintField;
    StringField4: TStringField;
    IntegerField7: TIntegerField;
    QuMenuHASACCESS: TBooleanField;
    QuMenuISTAMBAH: TBooleanField;
    QuMenuISKOREKSI: TBooleanField;
    QuMenuISHAPUS: TBooleanField;
    QuMenuISCETAK: TBooleanField;
    QuMenuISEXPORT: TBooleanField;
    QuMenuTIPE: TStringField;
    QuMenuIsOtorisasi1: TBooleanField;
    QuMenuIsOtorisasi2: TBooleanField;
    QuMenuIsOtorisasi3: TBooleanField;
    QuMenuIsOtorisasi4: TBooleanField;
    QuMenuIsOtorisasi5: TBooleanField;
    QuMenuOL: TWordField;
    QuMenuisbatal: TBooleanField;
    QuMenuPembatalan: TBooleanField;
    procedure FormShow(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure wwDBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure simpanData(kolom:integer);
  private
    { Private declarations }
  public
    { Public declarations }
    L1,kodegdg:String;
  end;
const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrMenu: TFrMenu;
implementation
uses MyProcedure,MyGlobal,MyModul, FrmPemakai;
{$R *.dfm}

procedure TFrMenu.simpanData(kolom: integer);
var
  tuserid, tl1, tfield,xCaption: string;
begin
  tuserid := QuMenu.fieldbyname('userid').AsString;
  tl1 := QuMenu.fieldbyname('l1').AsString;
  tfield := wwDBGrid1.FieldName(kolom);
  xCaption := QuMenu.fieldbyname('Caption').AsString;
  if kolom <> 1 then
  begin
      if QuMenu.FieldByName('Access').Value <> 0 then
      begin
          with QuUpdate do
          begin
            Close;
            SQL.Clear;
            SQL.Add('update dbflmenu set ' + tfield + '=:0');
            SQL.Add('where userid=:1 and l1=:2 ');
            Prepared;
            if (tfield='IsOtorisasi1') or (tfield='IsOtorisasi2') or (tfield='IsOtorisasi3') or (tfield='IsOtorisasi4') or (tfield='IsOtorisasi5') or (tfield='pembatalan')then
            Begin
              if (StrToInt(RightStr(Tfield,1))<=QuMenuOL.Value) then
              begin
                  Parameters[0].Value := not QuMenu.FieldByName(tfield).AsBoolean;
              end
              else
                  Parameters[0].Value := False;
            end
            else
            Parameters[0].Value := not QuMenu.FieldByName(tfield).AsBoolean;
            Parameters[1].Value := tuserid;
            Parameters[2].Value := tl1;
            ExecSQL;
            if (tfield='IsOtorisasi1') then
            Begin
              Close;
              SQL.Clear;
              SQL.Add('update dbflmenu set IsOtorisasi2=0, IsOtorisasi3=0, IsOtorisasi4=0, IsOtorisasi5=0');
              SQL.Add('where userid=:0 and l1=:1 ');
              Prepared;
              Parameters[0].Value := tuserid;
              Parameters[1].Value := tl1;
              ExecSQL;
            end else
            if (tfield='IsOtorisasi2') then
            Begin
              Close;
              SQL.Clear;
              SQL.Add('update dbflmenu set IsOtorisasi1=0, IsOtorisasi3=0, IsOtorisasi4=0, IsOtorisasi5=0');
              SQL.Add('where userid=:0 and l1=:1 ');
              Prepared;
              Parameters[0].Value := tuserid;
              Parameters[1].Value := tl1;
              ExecSQL;
            end else
            if (tfield='IsOtorisasi3') then
            Begin
              Close;
              SQL.Clear;
              SQL.Add('update dbflmenu set IsOtorisasi2=0, IsOtorisasi1=0, IsOtorisasi4=0, IsOtorisasi5=0');
              SQL.Add('where userid=:0 and l1=:1 ');
              Prepared;
              Parameters[0].Value := tuserid;
              Parameters[1].Value := tl1;
              ExecSQL;
            end else
            if (tfield='IsOtorisasi4') then
            Begin
              Close;
              SQL.Clear;
              SQL.Add('update dbflmenu set IsOtorisasi2=0, IsOtorisasi3=0, IsOtorisasi1=0, IsOtorisasi5=0');
              SQL.Add('where userid=:0 and l1=:1 ');
              Prepared;
              Parameters[0].Value := tuserid;
              Parameters[1].Value := tl1;
              ExecSQL;
            end else
            if (tfield='IsOtorisasi5') then
            Begin
              Close;
              SQL.Clear;
              SQL.Add('update dbflmenu set IsOtorisasi2=0, IsOtorisasi3=0, IsOtorisasi4=0, IsOtorisasi1=0');
              SQL.Add('where userid=:0 and l1=:1 ');
              Prepared;
              Parameters[0].Value := tuserid;
              Parameters[1].Value := tl1;
              ExecSQL;
            end;
          end;
          LoggingData(IDUser,'U','Menu','',
                  ' Memberi user '+tuserid+' akses ke menu '+xCaption);
      end else
      begin
         with QuUpdate do
          begin
            Close;
            SQL.Clear;
            SQL.Add('update dbflmenu set ' + tfield + '=:0');
            SQL.Add('where userid=:1 and l1 like :2 ');
            Prepared;
            if (tfield='IsOtorisasi1') or (tfield='IsOtorisasi2') or (tfield='IsOtorisasi3') or (tfield='IsOtorisasi4') or (tfield='IsOtorisasi5') then
            Begin
              if (StrToInt(RightStr(Tfield,1))<=QuMenuOL.Value) then
                  Parameters[0].Value := not QuMenu.FieldByName(tfield).AsBoolean
              else
                  Parameters[0].Value := False;
            end
            else
            Parameters[0].Value := not QuMenu.FieldByName(tfield).AsBoolean;
            Parameters[1].Value := tuserid;
            Parameters[2].Value := tl1 + '%';
            ExecSQL;

            if (tfield='IsOtorisasi1') then
            Begin
              Close;
              SQL.Clear;
              SQL.Add('update dbflmenu set IsOtorisasi2=0, IsOtorisasi3=0, IsOtorisasi4=0, IsOtorisasi5=0');
              SQL.Add('where userid=:0 and l1 like :1 ');
              Prepared;
              Parameters[0].Value := tuserid;
              Parameters[1].Value := tl1 + '%';
              ExecSQL;
            end else
            if (tfield='IsOtorisasi2') then
            Begin
              Close;
              SQL.Clear;
              SQL.Add('update dbflmenu set IsOtorisasi1=0, IsOtorisasi3=0, IsOtorisasi4=0, IsOtorisasi5=0');
              SQL.Add('where userid=:0 and l1 like :1 ');
              Prepared;
              Parameters[0].Value := tuserid;
              Parameters[1].Value := tl1 + '%';
              ExecSQL;
            end else
            if (tfield='IsOtorisasi3') then
            Begin
              Close;
              SQL.Clear;
              SQL.Add('update dbflmenu set IsOtorisasi2=0, IsOtorisasi1=0, IsOtorisasi4=0, IsOtorisasi5=0');
              SQL.Add('where userid=:0 and l1 like :1 ');
              Prepared;
              Parameters[0].Value := tuserid;
              Parameters[1].Value := tl1 + '%';
              ExecSQL;
            end else
            if (tfield='IsOtorisasi4') then
            Begin
              Close;
              SQL.Clear;
              SQL.Add('update dbflmenu set IsOtorisasi2=0, IsOtorisasi3=0, IsOtorisasi1=0, IsOtorisasi5=0');
              SQL.Add('where userid=:0 and l1 like :1 ');
              Prepared;
              Parameters[0].Value := tuserid;
              Parameters[1].Value := tl1 + '%';
              ExecSQL;
            end else
            if (tfield='IsOtorisasi5') then
            Begin
              Close;
              SQL.Clear;
              SQL.Add('update dbflmenu set IsOtorisasi2=0, IsOtorisasi3=0, IsOtorisasi4=0, IsOtorisasi1=0');
              SQL.Add('where userid=:0 and l1 like :1 ');
              Prepared;
              Parameters[0].Value := tuserid;
              Parameters[1].Value := tl1 + '%';
              ExecSQL;
            end;
          end;
          LoggingData(IDUser,'U','Menu','',
                  ' Memberi user '+tuserid+' akses ke semua menu '+xCaption);
      end;
      if (tfield='IsOtorisasi1') or (tfield='IsOtorisasi2') or (tfield='IsOtorisasi3') or (tfield='IsOtorisasi4') or (tfield='IsOtorisasi5') then
      Begin
        if (StrToInt(RightStr(Tfield,1))>QuMenuOL.Value) and (QuMenuOL.Value<>0)  then
            MessageDlg('Otorisasi Maksimum pada level '+IntToStr(QuMenuOL.Value),mtWarning,[mbok],0)
        else
        if (QuMenuOL.Value=0) then
            MessageDlg('Menu '+QuMenuCAPTION.Value+' tidak ada otorisasi ',mtWarning,[mbok],0)
      end;
    QuMenu.Requery;
    QuMenu.Locate('l1',tl1,[LOC, LOP]);
    wwDBGrid1.SetActiveField(tfield);
  end;
end;

procedure TFrMenu.FormShow(Sender: TObject);
begin
   Label1.Caption:=frPemakai.QuView.fieldbyname('userid').AsString;
   with QuMenu do
   begin
      Close;
      //SQL.Add('Select * from dbflmenu where userid=:0 and caption<>''-'' order by l1');
      Prepared;
      Parameters[0].Value:=frPemakai.QuView.fieldbyname('userid').AsString;
      Open;
      {QuMenuIsOtorisasi2.Visible := False;
      QuMenuIsOtorisasi3.Visible := False;
      QuMenuIsOtorisasi4.Visible := False;
      QuMenuIsOtorisasi5.Visible := False;}
   end;
end;

procedure TFrMenu.wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
   if (Field.DataSet.FieldByName('ACCESS').Value=0)
      then
   begin
      ABrush.Color:=$00C0F8F7;
      AFont.Color:= clred;
   end
   else
   begin
      ABrush.Color:=clWindow;
      AFont.Color:=clBlack;
   end;
   if Highlight then
   begin
      if ABrush.Color=$00C0F8F7 then
      begin
         AFont.Color := clLtGray;
         ABrush.Color := $0010968C;
      end else
      begin
         AFont.Color := clWhite;
         ABrush.Color := $006C6C6C;
      end;
   end;

end;

procedure TFrMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=cafree;
end;

procedure TFrMenu.wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
     simpanData(wwDBGrid1.GetActiveCol);
  end else if key=#27 then close;
end;

procedure TFrMenu.Button1Click(Sender: TObject);
begin
  Close;
  
end;

procedure TFrMenu.wwDBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
        simpanData(wwDBGrid1.GetActiveCol);
end;

end.
