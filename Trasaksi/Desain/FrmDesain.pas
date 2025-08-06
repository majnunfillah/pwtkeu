unit FrmDesain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  ImgList, StdCtrls, ExtCtrls, Menus, ppBands, ppVar, ppCtrls, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,ppviewr,
  dxGridMenus, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  frxDesgn, frxClass, frxDBSet;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrDesain = class(TForm)
    QuView: TADOQuery;
    DsView: TDataSource;
    PopupMenu1: TPopupMenu;
    ExportExcel1: TMenuItem;
    N1: TMenuItem;
    ShowGrid1: TMenuItem;
    ShowHeader1: TMenuItem;
    Show1: TMenuItem;
    N2: TMenuItem;
    AutoFilter1: TMenuItem;
    MultiSelect1: TMenuItem;
    ImageList2: TImageList;
    SaveDialog: TSaveDialog;
    ppDBPipeline1: TppDBPipeline;
    Sp_Merk: TADOStoredProc;
    ppReport1: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppDetailBand1: TppDetailBand;
    ppShape2: TppShape;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine2: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine3: TppLine;
    ppLabel5: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton10: TToolButton;
    ToolButton6: TToolButton;
    ToolButton9: TToolButton;
    Panel3: TPanel;
    Edit1: TEdit;
    QuViewNoBukti: TStringField;
    QuViewNoUrut: TStringField;
    QuViewTanggal: TDateTimeField;
    QuViewKodeCustSupp: TStringField;
    QuViewUsulan: TStringField;
    QuViewTglMulai: TDateTimeField;
    QuViewTglSelesai: TDateTimeField;
    QuViewLogo: TBooleanField;
    QuViewModalKerja: TBooleanField;
    QuViewKonsepDesain: TBooleanField;
    QuViewSoftCopy: TBooleanField;
    QuViewLainnya: TBooleanField;
    QuViewKetLainnya: TStringField;
    QuViewKeterangan: TStringField;
    QuViewKetMeeting: TWordField;
    QuViewQntSample: TWordField;
    QuViewPacking: TStringField;
    QuViewCatatan: TStringField;
    QuViewIsCetak: TBooleanField;
    QuViewIDUser: TStringField;
    QuViewIsClose: TBooleanField;
    QuViewIsFlag: TBooleanField;
    QuViewMyID: TBytesField;
    QuViewIsOtorisasi1: TBooleanField;
    QuViewOtoUser1: TStringField;
    QuViewTglOto1: TDateTimeField;
    QuViewIsOtorisasi2: TBooleanField;
    QuViewOtoUser2: TStringField;
    QuViewTglOto2: TDateTimeField;
    QuViewIsOtorisasi3: TBooleanField;
    QuViewOtoUser3: TStringField;
    QuViewTglOto3: TDateTimeField;
    QuViewIsOtorisasi4: TBooleanField;
    QuViewOtoUser4: TStringField;
    QuViewTglOto4: TDateTimeField;
    QuViewIsOtorisasi5: TBooleanField;
    QuViewOtoUser5: TStringField;
    QuViewTglOto5: TDateTimeField;
    QuViewNoJurnal: TStringField;
    QuViewNoUrutJurnal: TStringField;
    QuViewTglJurnal: TDateTimeField;
    QuViewMaxOL: TIntegerField;
    QuViewNoAlamatKirim: TIntegerField;
    QuViewisCetakKitir: TBooleanField;
    QuViewcetakke: TSmallintField;
    QuViewIsBatal: TBooleanField;
    QuViewUserBatal: TStringField;
    QuViewTglBatal: TDateTimeField;
    QuViewFlagTipe: TWordField;
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    tvMasterNoBukti: TcxGridDBColumn;
    tvMasterTanggal: TcxGridDBColumn;
    tvMasterKodeCustSupp: TcxGridDBColumn;
    tvMasterUsulan: TcxGridDBColumn;
    tvMasterTglMulai: TcxGridDBColumn;
    tvMasterTglSelesai: TcxGridDBColumn;
    tvMasterLogo: TcxGridDBColumn;
    tvMasterModalKerja: TcxGridDBColumn;
    tvMasterKonsepDesain: TcxGridDBColumn;
    tvMasterSoftCopy: TcxGridDBColumn;
    tvMasterLainnya: TcxGridDBColumn;
    tvMasterKetLainnya: TcxGridDBColumn;
    tvMasterKeterangan: TcxGridDBColumn;
    tvMasterKetMeeting: TcxGridDBColumn;
    tvMasterQntSample: TcxGridDBColumn;
    tvMasterPacking: TcxGridDBColumn;
    tvMasterCatatan: TcxGridDBColumn;
    tvMasterIsCetak: TcxGridDBColumn;
    tvMasterIDUser: TcxGridDBColumn;
    tvMasterIsClose: TcxGridDBColumn;
    tvMasterIsFlag: TcxGridDBColumn;
    tvMasterMyID: TcxGridDBColumn;
    tvMasterIsOtorisasi1: TcxGridDBColumn;
    tvMasterOtoUser1: TcxGridDBColumn;
    tvMasterTglOto1: TcxGridDBColumn;
    tvMasterIsOtorisasi2: TcxGridDBColumn;
    tvMasterOtoUser2: TcxGridDBColumn;
    tvMasterTglOto2: TcxGridDBColumn;
    tvMasterIsOtorisasi3: TcxGridDBColumn;
    tvMasterOtoUser3: TcxGridDBColumn;
    tvMasterTglOto3: TcxGridDBColumn;
    tvMasterIsOtorisasi4: TcxGridDBColumn;
    tvMasterOtoUser4: TcxGridDBColumn;
    tvMasterTglOto4: TcxGridDBColumn;
    tvMasterIsOtorisasi5: TcxGridDBColumn;
    tvMasterOtoUser5: TcxGridDBColumn;
    tvMasterTglOto5: TcxGridDBColumn;
    tvMasterNoJurnal: TcxGridDBColumn;
    tvMasterNoUrutJurnal: TcxGridDBColumn;
    tvMasterTglJurnal: TcxGridDBColumn;
    tvMasterMaxOL: TcxGridDBColumn;
    tvMasterNoAlamatKirim: TcxGridDBColumn;
    tvMasterisCetakKitir: TcxGridDBColumn;
    tvMastercetakke: TcxGridDBColumn;
    tvMasterIsBatal: TcxGridDBColumn;
    tvMasterUserBatal: TcxGridDBColumn;
    tvMasterTglBatal: TcxGridDBColumn;
    tvMasterFlagTipe: TcxGridDBColumn;
    QuViewKodeBrg: TStringField;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    QuReport: TADOQuery;
    DsReport: TDataSource;
    ToolButton5: TToolButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ExportExcel1Click(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure ToolButton1Click(Sender: TObject);
    procedure SimpanData(Mode:Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton2Click(Sender: TObject);
    procedure AmbilData;
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
      procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    mPosisi : string;
    IsTambah,IsKoreksi,IsHapus, IsCetak, IsExcel : Boolean;
  end;

const
     LoC = LoCaseInsensitive;
     LoP = LoPartialKey;

var
  FrDesain: TFrDesain;
  S: array[0..255] of char;
  YY,MM,DD : Word;
  BM: TBookmark;

implementation
uses myModul,Myprocedure,MyGlobal, FrmSubPemakai,FrmMenu,FrmSubDesain,
  FrmSetForm ;
{$R *.dfm}

procedure TFrDesain.AmbilData;
begin
   with FrSubDesain do
   begin
     { KodeKota.Text:=QuView.fieldbyname('KodeKota').AsString;
      NamaKota.Text:=QuView.fieldbyname('NamaKota').AsString;
      kodearea.Text:=QuViewKodeArea.AsString;
      NmArea.Caption:=QuViewNamaArea.AsString; }
   end;
end;

procedure TFrDesain.SimpanData(Mode:Char);
begin
  With Sp_Merk do
  begin
    BM:=QuView.GetBookmark;
    Prepared;
    Parameters[1].Value := Mode;
    if Mode='D' then
       Parameters[2].Value := QuViewNoBukti.asstring
    else
    begin
      Parameters[2].Value := FrSubDesain.KodeKota.Text;
      Parameters[3].Value := FrSubDesain.NoUrut.Text;
      Parameters[4].Value := FrSubDesain.Tanggal.Date;
      Parameters[5].Value := FrSubDesain.NamaKota.Text;
      Parameters[6].Value := FrSubDesain.Usulan.Text;
      Parameters[7].Value := FrSubDesain.TglMulai.Date;
      Parameters[8].Value := FrSubDesain.TglSelesai.Date;
      Parameters[9].Value := FrSubDesain.Logo.Checked;
      Parameters[10].Value := FrSubDesain.ModalKerja.Checked;
      Parameters[11].Value := FrSubDesain.Konsep.Checked;
      Parameters[12].Value := FrSubDesain.Softcopy.Checked;
      Parameters[13].Value := FrSubDesain.Lainnya.Checked;
      Parameters[14].Value := FrSubDesain.KetLainnya.Text;
      Parameters[15].Value := FrSubDesain.Keterangan.Text;
      Parameters[16].Value := FrSubDesain.KetMeeting.ItemIndex;
      Parameters[17].Value := FrSubDesain.QntSample.Value;
      Parameters[18].Value := iduser;
      Parameters[19].Value := FrSubDesain.KodeArea.Text;
       Parameters[20].Value := FrSubDesain.CatMeeting.Text;


    end;

    try
      execproc;
      if Mode='I' then
      begin
        QuView.Requery;
       // QuView.Locate('KodeKota',FrSubDesain.KodeKota.Text,[LOP,LOC]);
       // LoggingData(IDUser,Mode,'KOT','','Kode Kota = '+FrSubDesain.KodeKota.Text+
       //             ' , Nama Kota = '+FrSubDesain.NamaKota.Text);
      end else if Mode='U' then
      begin
        QuView.Requery;
        {if QuView.BookmarkValid(BM) then
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
        end; }
        //LoggingData(IDUser,Mode,'KOT','','Kode Kota = '+FrSubDesain.KodeKota.Text+
        //            ' , Nama Kota = '+FrSubDesain.NamaKota.Text);
      end
      Else if Mode='D' then
      begin
        //LoggingData(IDUser,Mode,'KOT','','Kode Kota = '+QuViewKodeKota.AsString+
        //            ' , Nama Kota = '+QuViewNamaKota.AsString);
        QuView.Requery;
      end;
    except
      on E: Exception do
       begin
           Application.MessageBox(StrPCopy(S,E.Message),'Peringatan',MB_OK or MB_ICONSTOP);
       end;
    end;
  end;
end;

procedure TFrDesain.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrDesain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
       MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
  begin
    Action:=caFree;
  end
  else
    Action:=caNone;
end;

procedure TFrDesain.FormDestroy(Sender: TObject);
begin
  FrDesain:=nil;
end;

procedure TFrDesain.FormShow(Sender: TObject);
begin
   with QuView do
   begin
      close;
      SQL.Strings[2]:='select @Tahun='+PeriodThn+', @Bulan='+PeriodBln;
      Open;

   end;

end;

procedure TFrDesain.ToolButton10Click(Sender: TObject);
begin
   with QuView do
   begin
      close;
      //Sql.Strings[3]:='where Namakota like '+QuotedStr('%'+edit1.Text+'%');
      Open;
   end;
end;

procedure TFrDesain.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrDesain.ExportExcel1Click(Sender: TObject);
begin
 if (IsExcel) then
  begin
//      Save('xls', 'Microsoft Excel (*.xls)|*.xls', FrKota.Caption, dxDBGrid1.SaveToXLS);
  end else
  begin
      ShowMessage('Anda tidak berhak Mengeksport Excel');
  end;
end;

procedure TFrDesain.ToolButton1Click(Sender: TObject);
begin
  if IsTambah then
  begin
    Application.CreateForm(TFrSubDesain, FrSubDesain);
    FrSubDesain.IsSimpan:=True;
    FrSubDesain.ShowModal;
  end else
  begin
      ShowMessage('Anda tidak berhak Menambah Data');
  end;
 
end;

procedure TFrDesain.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrDesain.ToolButton2Click(Sender: TObject);
begin
  if IsKoreksi then
  begin
    Application.CreateForm(TFrSubDesain, FrSubDesain);
    FrSubDesain.IsSimpan:=false;
    FrSubDesain.xModalKoreksi:=true;
    AmbilData;
    FrSubDesain.ShowModal;
    if FrSubDesain.ModalResult=mrOK then
    begin
    end;
    //ActiveControl:=dxDBGrid1;
  end else
  begin
     ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
  end;

end;

procedure TFrDesain.ToolButton3Click(Sender: TObject);
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

procedure TFrDesain.ToolButton4Click(Sender: TObject);
begin
  if (IsCetak) then
  begin
      //frxDBDataset1.DataSet.Close;
      //frxDBDataset1.DataSet := QuReport;
      QuReport.Close;
      QuReport.SQL.Clear;
      QuReport.SQL.Add('exec sp_CetakInputanDesain '+QuotedStr(QuViewNoBukti.AsString));
      QuReport.Open;
      frxReport1.LoadFromFile(currDir+'Nota\NotaInputanDesain.fr3');
      frxReport1.ShowReport;
  end else
  begin
      ShowMessage('Anda tidak berhak Mencetak Data');
  end;

end;

procedure TFrDesain.FormCreate(Sender: TObject);
begin
  //Panel1.Color:=FrSetForm.PanelMain.Color;
  //ToolBar1.Color:=FrSetForm.ToolBarMain.Color;
end;

procedure TFrDesain.Edit1Change(Sender: TObject);
begin
 with QuView do
   begin
      close;
      //Sql.Strings[3]:='where Namakota like '+QuotedStr('%'+edit1.Text+'%');
      Open;
   end;
end;

procedure TFrDesain.ToolButton5Click(Sender: TObject);
begin
  frxReport1.LoadFromFile(currDir+'Nota\NotaInputanDesain.fr3');
  frxReport1.DesignReport;
end;

end.
