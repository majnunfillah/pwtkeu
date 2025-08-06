unit FrmContact;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  ImgList, StdCtrls, ExtCtrls, Menus, 
  dxGridMenus, dxDBTLCl, dxGrClms,dxDBEdtr,Shellapi;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrContact = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    QuView: TADOQuery;
    DsView: TDataSource;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    PopupMenu1: TPopupMenu;
    ExportExcel1: TMenuItem;
    N1: TMenuItem;
    ShowGrid1: TMenuItem;
    ShowHeader1: TMenuItem;
    Show1: TMenuItem;
    N2: TMenuItem;
    AutoFilter1: TMenuItem;
    ToolButton4: TToolButton;
    ToolButton7: TToolButton;
    ToolButton9: TToolButton;
    ImageList2: TImageList;
    ToolButton10: TToolButton;
    SaveDialog: TSaveDialog;
    dxDBGrid1: TdxDBGrid;
    MultiSelect1: TMenuItem;
    Sp_supp: TADOStoredProc;
    ToolButton8: TToolButton;
    dxDBGrid1JobTitle: TdxDBGridMaskColumn;
    dxDBGrid1Phone1: TdxDBGridMaskColumn;
    dxDBGrid1Phone2: TdxDBGridMaskColumn;
    dxDBGrid1Phone3: TdxDBGridMaskColumn;
    dxDBGrid1Email: TdxDBGridMaskColumn;
    dxDBGrid1Alamat: TdxDBGridMemoColumn;
    dxDBGrid1Nama: TdxDBGridMaskColumn;
    dxDBGrid1Photo: TdxDBGridGraphicColumn;
    QuViewContactId: TIntegerField;
    QuViewTitle: TStringField;
    QuViewFirstName: TStringField;
    QuViewMiddleName: TStringField;
    QuViewLastName: TStringField;
    QuViewJobTitle: TStringField;
    QuViewPhone1: TStringField;
    QuViewPhone2: TStringField;
    QuViewPhone3: TStringField;
    QuViewEmail: TStringField;
    QuViewAlamat: TMemoField;
    QuViewPhoto: TBlobField;
    QuViewKodeCustSupp: TStringField;
    QuViewNama: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ExportExcel1Click(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure AutoFilter1Click(Sender: TObject);
    procedure ShowGrid1Click(Sender: TObject);
    procedure ShowHeader1Click(Sender: TObject);
    procedure Show1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure SimpanData(Mode:Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton2Click(Sender: TObject);
    procedure AmbilData;
    procedure ToolButton3Click(Sender: TObject);
    procedure MultiSelect1Click(Sender: TObject);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBGrid1CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
    mPosisi,KodeCustSupp : string;
    KodeForm : byte;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel : Boolean;
    Procedure Tampildata(xForm:Byte;xKode:String);
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrContact: TFrContact;
  S: array[0..255] of char;
  BM: TBookmark;
  MyPhoto : TPicture;
implementation
uses myModul,Myprocedure,MyGlobal,
  FrmSubContact, FrmCustomer;
{$R *.dfm}


Procedure TFrContact.Tampildata(xForm:Byte;xKode:String);
begin
  with QuView do
  begin
     close;
     Prepared;
     Parameters[0].Value := xForm;
     Parameters[1].Value := xKode;
     Open;
  end;
end;


procedure TFrContact.AmbilData;
begin

   with FrSubContact do
   begin
     Gelar.ItemIndex := Gelar.Items.IndexOf(QuView.fieldByname('Title').AsString);
     FirstName.Text  := QuView.fieldByname('FirstName').AsString;
     MiddleName.Text := QuView.fieldByname('MiddleName').AsString;
     LastName.Text   := QuView.fieldByname('LastName').AsString;
     JobTitle.Text   := QuView.fieldByname('jobTitle').AsString;
     Phone.Text      := QuView.fieldByname('Phone1').AsString;
     FaxNumber.Text  := QuView.fieldByname('Phone2').AsString;
     Mobile.Text     := QuView.fieldByname('Phone3').AsString;
     EmailContact.Text := QuView.fieldByname('Email').AsString;
     AlamatContact.Lines.Clear;
     AlamatContact.Lines.Text := QuView.fieldByname('Alamat').AsString;
     Photo.Picture.Assign(QuView.fieldByname('Photo'));
     KodeCustSupp := QuView.fieldByname('KodecustSupp').AsString;
   end;
end;

procedure TFrContact.SimpanData(Mode:Char);
begin
  With Sp_Supp do
  begin
    BM:=QuView.GetBookmark;
    Prepared;
    Parameters[1].Value := Mode;
    if Mode='D' then
    begin
       Parameters[12].Value :=KodeCustSupp;
       Parameters[13].Value :=QuView.FieldbyName('ContactId').AsInteger;
    end
    else
    begin
      Parameters[2].Value  :=FrSubContact.Gelar.Items.Strings[FrSubContact.Gelar.ItemIndex];
      Parameters[3].Value  :=FrSubContact.FirstName.Text;
      Parameters[4].Value  :=FrSubContact.MiddleName.Text;
      Parameters[5].Value  :=FrSubContact.LastName.Text;
      Parameters[6].Value  :=FrSubContact.JobTitle.Text;
      Parameters[7].Value  :=FrSubContact.Phone.Text;
      Parameters[8].Value  :=FrSubContact.FaxNumber.Text;
      Parameters[9].Value  :=FrSubContact.Mobile.Text;
      Parameters[10].Value :=FrSubContact.EmailContact.Text;
      Parameters[11].Value :=FrSubContact.AlamatContact.Lines.Text;
      //Parameters[12].Assign(FrSubContact.Photo.Picture);
      Parameters[12].Value :=KodeCustSupp;
      Parameters[13].Value :=QuView.FieldbyName('ContactId').AsInteger;
    end;
      try
      execproc;
      if Mode='I' then
      begin
        QuView.Requery;
        QuView.Locate('Nama',FrSubContact.Gelar.Items.Strings[FrSubContact.Gelar.ItemIndex]+' '+
                             FrSubContact.FirstName.Text+FrSubContact.MiddleName.Text+
                             FrSubContact.LastName.Text,[LOP,LOC]);
        //LoggingData(Caption,
        //            'User '+IDUser+' Input Contact : '+
        //                     FrSubContact.Gelar.Items.Strings[FrSubContact.Gelar.ItemIndex]+' '+
        //                     FrSubContact.FirstName.Text+FrSubContact.MiddleName.Text+
        //                     FrSubContact.LastName.Text//+#13+
        //            'Alamat : '+FrSubContact.AlamatContact.Lines.Text,Dm.Qucari
        //            );

      end else if Mode='U' then
      begin
        QuView.Requery;
        if QuView.BookmarkValid(BM) then
        begin
          try
             QuView.GotoBookmark(BM);
          finally
             QuView.FreeBookmark(BM);
          end
        end else
        begin
          QuView.FreeBookmark(BM);
          QuView.Last;
        end;
        {LoggingData(Caption,
                    'User '+IDUser+' Koreksi Contact : '+
                             FrSubContact.Gelar.Items.Strings[FrSubContact.Gelar.ItemIndex]+' '+
                             FrSubContact.FirstName.Text+FrSubContact.MiddleName.Text+
                             FrSubContact.LastName.Text+#13+
                    'Alamat : '+FrSubContact.AlamatContact.Lines.Text,Dm.Qucari);
         }
      end
      Else if Mode='D' then
      begin
        {LoggingData(Caption,
                    'User '+IDUser+' Hapus Contact : '+QuView.FieldbyName('Nama').asstring+#13+
                    'Alamat : '+QuView.FieldbyName('Alamat').asstring,Dm.Qucari);
        }
        QuView.Requery;
      end;
    except
      If (Mode='I') Or (Mode='U') then
         showmessage('Proses Gagal !, Data Sudah Ada')
      else If (Mode='D') then
         showmessage('Proses Gagal !, Contact berkaitan dengan transaksi');
    end;
  end;
end;

procedure TFrContact.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrContact.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
             MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
    begin
      Action:=caFree;
    end
    else
        Action:=caNone;
end;

procedure TFrContact.FormDestroy(Sender: TObject);
begin
  FrContact:=nil;
end;

procedure TFrContact.FormShow(Sender: TObject);
begin

  
  Tampildata(KodeForm,KodeCustSupp);
end;

procedure TFrContact.ToolButton10Click(Sender: TObject);
begin
  Tampildata(KodeForm,KodeCustSupp);
end;

procedure TFrContact.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrContact.ExportExcel1Click(Sender: TObject);
begin
  if (IsExcel) then
  begin
      Save('xls', 'Microsoft Excel (*.xls)|*.xls', FrContact.Caption, dxDBGrid1.SaveToXLS);
      ShellExecute(Handle, 'Open', PChar(SaveDialog.FileName), nil, nil, sw_shownormal);
      //LoggingData(Caption,'User '+IdUser+' Export Data '+ SaveDialog.FileName,dm.qucari);
  end else
  begin
      ShowMessage('Anda tidak berhak Mengeksport Excel');
  end;

end;

procedure TFrContact.AutoFilter1Click(Sender: TObject);
begin
    if dxDBGrid1.Filter.Active=false then
    dxDBGrid1.Filter.Active:=true
    else
    dxDBGrid1.Filter.Active:=false;

end;

procedure TFrContact.ShowGrid1Click(Sender: TObject);
begin
   if ShowGrid1.Checked then
   begin
      dxDBGrid1.ShowGrid:=false;
      ShowGrid1.Checked:=false;
   end else
   begin
      dxDBGrid1.ShowGrid:=true;
      ShowGrid1.Checked:=true;
   end;
end;

procedure TFrContact.ShowHeader1Click(Sender: TObject);
begin
   if ShowHeader1.Checked then
   begin
      dxDBGrid1.ShowHeader:=false;
      ShowHeader1.Checked:=false;
   end else
   begin
      dxDBGrid1.ShowHeader:=true;
      ShowHeader1.Checked:=true;
   end;

end;

procedure TFrContact.Show1Click(Sender: TObject);
begin
   if Show1.Checked then
   begin
      dxDBGrid1.ShowSummaryFooter := false;
      Show1.Checked:=false;
   end else
   begin
      dxDBGrid1.ShowSummaryFooter := true;
      Show1.Checked:=true;
   end;

end;

procedure TFrContact.ToolButton1Click(Sender: TObject);
begin
  if IsTambah then
  begin
    Application.CreateForm(TFrSubContact, FrSubContact);
    FrSubContact.IsSimpan:=True;
    FrSubContact.ShowModal;
  end
  else
  begin
      ShowMessage('Anda tidak berhak Menambah Data');
  end;
end;

procedure TFrContact.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_ESCAPE then
   begin
      Close;
   end else
   if Key=VK_RETURN then
   begin
       ToolButton2.Click;
   end
   else if key=VK_INSERT then
   begin
       ToolButton1.Click;
   end
   else if key=VK_Delete then
   begin
        ToolButton3.Click;
   end;
end;

procedure TFrContact.ToolButton2Click(Sender: TObject);
begin
  if IsKoreksi then
  begin
     Application.CreateForm(TFrSubContact, FrSubContact);
     FrSubContact.IsSimpan:=false;
     AmbilData;
     FrSubContact.ShowModal;
     if FrSubContact.ModalResult=mrOK then
     begin
     end;
     ActiveControl:=dxDBGrid1;
  end else
  begin
     ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
  end;

end;

procedure TFrContact.ToolButton3Click(Sender: TObject);
begin
  if IsHapus then
  begin

   if Quview.IsEmpty=true then
   begin
      Application.MessageBox('Tabel Kosong','Informasi'
      ,MB_OK Or MB_ICONWARNING);
   end
   else
   begin
      StrPCopy(S,Format('Anda yakin Kode %s dan Nama %s dihapus ?',
           [QuView.Fields[0].asstring,
            QuView.Fields[1].asstring]));
      if (Application.MessageBox(S,'Peringatan',
          MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
      begin
        SimpanData('D');
      end;
   end;
  end else
  begin
     ShowMessage('Anda Tidak Berhak Menghapus Data');
  end;

end;

procedure TFrContact.MultiSelect1Click(Sender: TObject);
begin
   if MultiSelect1.Checked then
   begin
      dxDBGrid1.OptionsBehavior:=[edgoAutoSearch,edgoAutoSort,edgoDragScroll,edgoEnterShowEditor,edgoTabThrough,edgoVertThrough];
      MultiSelect1.Checked:=false;
   end else
   begin
      dxDBGrid1.OptionsBehavior:=[edgoAutoSearch,edgoAutoSort,edgoDragScroll,edgoEnterShowEditor,edgoMultiSelect,edgoTabThrough,edgoVertThrough];
      MultiSelect1.Checked:=true;
   end;

end;

procedure TFrContact.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);

end;

procedure TFrContact.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
    if ANode.HasChildren then
    Exit;

    if not AFocused then
    begin
      if ANode.Index mod 2 =0 then
         AColor:=$00ffefe1
      else
         AColor:=$00efd7c9;

    end;

end;

procedure TFrContact.dxDBGrid1CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
  if AColumn = dxDBGrid1.Columns[0] then
  begin
    AColor := $00ffefe1;
    AFont.Color:=clblack;
    AFont.Style := AFont.Style + [fsBold];
  end;
end;

end.
