unit FrmBarangDanKomisi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  ImgList, StdCtrls, ExtCtrls, Menus, ppBands, ppVar, ppCtrls, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,ppviewr,
  dxGridMenus, dxPageControl;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrbarangdanKomisi = class(TForm)
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
    ToolButton5: TToolButton;
    ToolButton4: TToolButton;
    ToolButton10: TToolButton;
    ToolButton7: TToolButton;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton11: TToolButton;
    dxDBGrid1: TdxDBGrid;
    QuViewKODECUSTSUPP: TStringField;
    QuViewNAMACUSTSUPP: TStringField;
    QuViewALAMAT1: TStringField;
    QuViewALAMAT2: TStringField;
    QuViewKota: TStringField;
    QuViewTELPON: TStringField;
    QuViewFAX: TStringField;
    QuViewEMAIL: TStringField;
    QuViewKODEPOS: TStringField;
    QuViewNEGARA: TStringField;
    QuViewNPWP: TStringField;
    QuViewTanggal: TDateTimeField;
    QuViewPLAFON: TBCDField;
    QuViewHARI: TIntegerField;
    QuViewHARIHUTPIUT: TIntegerField;
    QuViewBERIKAT: TBooleanField;
    QuViewUSAHA: TStringField;
    QuViewPERKIRAAN: TStringField;
    QuViewJENIS: TIntegerField;
    QuViewNAMAPKP: TStringField;
    QuViewALAMATPKP1: TStringField;
    QuViewALAMATPKP2: TStringField;
    QuViewKOTAPKP: TStringField;
    QuViewSales: TStringField;
    QuViewKodeVls: TStringField;
    QuViewKodeExp: TStringField;
    QuViewKodeTipe: TStringField;
    QuViewIsPpn: TBooleanField;
    QuViewIsAktif: TWordField;
    QuViewKind: TWordField;
    QuViewContactP: TStringField;
    QuViewAlamat1ContP: TStringField;
    QuViewAlamat2ContP: TStringField;
    QuViewKotaContP: TStringField;
    QuViewNegaraContP: TStringField;
    QuViewTelpContP: TStringField;
    QuViewFaxContP: TStringField;
    QuViewEmailContP: TStringField;
    QuViewKODEPOSContP: TStringField;
    QuViewHPContP: TStringField;
    QuViewSyaratPenerimaan: TStringField;
    QuViewSyaratPembayaran: TStringField;
    QuViewAgent: TStringField;
    QuViewAlamat1A: TStringField;
    QuViewAlamat2A: TStringField;
    QuViewKotaA: TStringField;
    QuViewNegaraA: TStringField;
    QuViewContactA: TStringField;
    QuViewTelpA: TStringField;
    QuViewFaxA: TStringField;
    QuViewEmailA: TStringField;
    QuViewKODEPOSA: TStringField;
    QuViewHPA: TStringField;
    QuViewEmailContA: TStringField;
    QuViewMyID: TBytesField;
    QuViewPortOfLoading: TStringField;
    QuViewCountryOfOrigin: TStringField;
    QuViewTglInput: TDateTimeField;
    QuViewiskontrak: TBooleanField;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridColumn;
    dxDBGrid1Column3: TdxDBGridColumn;
    dxDBGrid1Column4: TdxDBGridColumn;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    QuViewNamakota: TStringField;
    QuViewNamaArea: TStringField;
    dxDBGrid1Column5: TdxDBGridColumn;
    QuKomisi: TADOQuery;
    QuKomisiKodeCustSupp: TStringField;
    QuKomisiurut: TIntegerField;
    QuKomisiNama: TStringField;
    QuKomisiKurir: TBCDField;
    QuKomisiislunas: TWordField;
    QuKomisinamaCustSupp: TStringField;
    DsKomisi: TDataSource;
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
    procedure SimpanDataKomisi(Mode:Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton2Click(Sender: TObject);
    procedure AmbilData;
    procedure AmbilDatakomisi;
    procedure ToolButton3Click(Sender: TObject);
    procedure MultiSelect1Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
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
    procedure FormCreate(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);

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
  FrbarangdanKomisi: TFrbarangdanKomisi;
  S: array[0..255] of char;
  BM: TBookmark;

implementation
uses myModul,Myprocedure,MyGlobal, FrmSubPemakai,FrmMenu,
  FrmSetForm, FrmBarangCustomer, FrmKomisicustomer ;
{$R *.dfm}

procedure TFrbarangdanKomisi.AmbilData;
begin
  { with FrbarangCustomer1 do
   begin
      KodecustSupp.Text:=QuBeliKodeCustSupp.AsString;
      Kodebrg.Text:=QuBelikodebrg.AsString;
      harga.value:=Qubeliharga.asfloat;
      LnamaCustsupp.Caption:=QuBeliNamaCustSupp.AsString;
      Lnamabrg.Caption:=QuBeliNamaBrg.AsString;
   end; }
end;

procedure TFrbarangdanKomisi.AmbilDatakomisi;
begin
  { with FrKomisiCustomer do
   begin
      KodecustSupp.Text:=QuKomisiKodeCustSupp.AsString;
      Nama.Text:=QuKomisiNama.AsString;
      jumlahKomisi.value:=qukomisiKurir.asfloat;
      LnamaCustsupp.Caption:=QuKomisinamaCustSupp.AsString;

   end; }
end;

procedure TFrbarangdanKomisi.SimpanData(Mode:Char);
var
  mNomor:integer;
begin
   BM:=FrBarangCustomer.QuBeli.GetBookmark;
   DM.QuCari.Close;
   DM.QuCari.SQL.Clear;

   if Mode='I' then
   begin
     DM.QuCari.SQL.Add('insert into DbbarangCustomer (KodeCustSupp, kodebrg, Sat_1,Harga_1, Sat_2, Harga_2,Komisi)');
     DM.QuCari.SQL.Add('values(:0,:1,:2,:3,:4,:5,:6)');
     DM.qucari.Prepared;
     DM.QuCari.Parameters[0].Value:=QuViewKODECUSTSUPP.Text;
     DM.QuCari.Parameters[1].Value:=Frbarangcustomer.kodeBrg.Text;
     DM.QuCari.Parameters[2].Value:=Frbarangcustomer.Sat1.Text;
     DM.QuCari.Parameters[3].Value:=Frbarangcustomer.Hrg1_1.Value;
     DM.QuCari.Parameters[4].Value:=Frbarangcustomer.Sat2.Text;
     DM.QuCari.Parameters[5].Value:=Frbarangcustomer.Hrg1_2.Value;
     DM.QuCari.Parameters[6].Value:=0;//Frbarangcustomer.Komisi.Value;
   end else
   if Mode='U' then
   begin
     DM.QuCari.SQL.Add('update DbbarangCustomer set Sat_1=:0,harga_1=:1, Sat_2=:2, Harga_2=:3, komisi=:4');
     DM.QuCari.SQL.Add('where Kodebrg=:5 and KodeCustSupp=:6');
     DM.QuCari.Prepared;
     DM.QuCari.Parameters[0].Value:=Frbarangcustomer.Sat1.Text;
     DM.QuCari.Parameters[1].Value:=Frbarangcustomer.Hrg1_1.Value;
     DM.QuCari.Parameters[2].Value:=Frbarangcustomer.Sat2.Text;
     DM.QuCari.Parameters[3].Value:=Frbarangcustomer.Hrg1_2.Value;
     DM.QuCari.Parameters[4].Value:=0;//Frbarangcustomer.Komisi.Value;
     DM.QuCari.Parameters[5].Value:=Frbarangcustomer.kodeBrg.text;
     DM.Qucari.Parameters[6].Value:=QuViewKODECUSTSUPP.AsString;
   end else
   if Mode='D' then
   begin
     DM.QuCari.SQL.Add('delete DbbarangCustomer ');
     DM.QuCari.SQL.Add('where KodeCustsupp=:0 and kodebrg =:1');
     DM.Qucari.Parameters[0].Value:=QuViewKODECUSTSUPP.Text;
     DM.Qucari.Parameters[1].Value:=Frbarangcustomer.QubeliKodeBrg.Asstring;
     DM.QuCari.Prepared;
   end;

   try
     DM.QuCari.ExecSQL;
     {if Mode='I' then
     begin
       TampilData;
       QuBeli.Locate('Kodebrg', mNomor, [LOP,LOC]);
     end
     else if pChoice='U' then
     begin
       TampilData;
       if QuBeli.BookmarkValid(BM) then
       begin
         try
           QuBeli.GotoBookmark(BM);
         finally
           QuBeli.FreeBookmark(BM);
         end
       end else
       begin
         QuBeli.FreeBookmark(BM);
         QuBeli.Last;
       end;
     end
     else if pChoice='D' then
     begin
       TampilData;
     end;   }
   except
     ShowMessage('Proses Gagal !!!')
   end;
   //ToolButton10.Click;
end;

procedure TFrbarangdanKomisi.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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


procedure TFrbarangdanKomisi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Anda yakin keluar modul ?','Keluar - Modul',
       MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
  begin
    Action:=caFree;
  end
  else
    Action:=caNone;
end;

procedure TFrbarangdanKomisi.FormDestroy(Sender: TObject);
begin
  FrbarangDankomisi:=nil;
end;

procedure TFrbarangdanKomisi.FormShow(Sender: TObject);
begin
   {with Qubeli do
   begin
      close;
       Open;
   end;
    with Qukomisi do
   begin
      close;
       Open;
   end;     }
   with Quview do
   begin
      close;
       Open;
   end;
end;

procedure TFrbarangdanKomisi.ToolButton10Click(Sender: TObject);
begin
  { with QuBeli do
   begin
      close;
      //Sql.Strings[3]:='where Namakota like '+QuotedStr('%'+edit1.Text+'%');
      Open;
   end;
   with Qukomisi do
   begin
      close;
       Open;
   end;}
   with QuView do
   begin
      close;
       Open;
   end;
end;

procedure TFrbarangdanKomisi.ToolButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFrbarangdanKomisi.ExportExcel1Click(Sender: TObject);
begin
 if (IsExcel) then
  begin
      Save('xls', 'Microsoft Excel (*.xls)|*.xls', FrbarangDankomisi.Caption, dxDBGrid1.SaveToXLS);
  end else
  begin
      ShowMessage('Anda tidak berhak Mengeksport Excel');
  end;
end;

procedure TFrbarangdanKomisi.AutoFilter1Click(Sender: TObject);
begin
    if dxDBGrid1.Filter.Active=false then
    dxDBGrid1.Filter.Active:=true
    else
    dxDBGrid1.Filter.Active:=false;

end;

procedure TFrbarangdanKomisi.ShowGrid1Click(Sender: TObject);
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

procedure TFrbarangdanKomisi.ShowHeader1Click(Sender: TObject);
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

procedure TFrbarangdanKomisi.Show1Click(Sender: TObject);
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

procedure TFrbarangdanKomisi.ToolButton1Click(Sender: TObject);
begin

 { if dxPageControl1.ActivePageIndex=0 then
     begin
        if IsTambah then
        begin
          Application.CreateForm(TFrbarangCustomer, FrbarangCustomer);
          FrbarangCustomer.IsSimpan:=True;
          FrbarangCustomer.ShowModal;
        end else
        begin
            ShowMessage('Anda tidak berhak Menambah Data');
        end;
     end
  else
    begin
       if IsTambah then
        begin
          Application.CreateForm(TFrKomisiCustomer, FrkomisiCustomer);
          FrkomisiCustomer.IsSimpan:=True;
          FrkomisiCustomer.ShowModal;
        end else
        begin
            ShowMessage('Anda tidak berhak Menambah Data');
        end;
    end;  }
 
end;

procedure TFrbarangdanKomisi.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrbarangdanKomisi.ToolButton2Click(Sender: TObject);
begin
 { if IsKoreksi then
  begin
    if dxPageControl1.ActivePageIndex=0 then
       begin
          Application.CreateForm(TFrbarangCustomer, FrbarangCustomer);
          FrbarangCustomer.IsSimpan:=false;
          AmbilData;
          FrbarangCustomer.ShowModal;
       end
    else
       begin
       Application.CreateForm(TFrkomisiCustomer, FrkomisiCustomer);
        FrkomisiCustomer.IsSimpan:=false;
        AmbilDatakomisi;
        FrkomisiCustomer.ShowModal;
       end;

  end else
  begin
     ShowMessage('Anda Tidak Berhak Mengkoreksi Data');
  end;
        }
end;

procedure TFrbarangdanKomisi.ToolButton3Click(Sender: TObject);
begin
  {if IsHapus then
  begin
    if dxPageControl1.ActivePageIndex=0 then
      begin
       if QuBeli.IsEmpty=true then
       begin
          Application.MessageBox('Tabel Kosong','Informasi'
          ,MB_OK Or MB_ICONWARNING);
       end
       else
       begin
          StrPCopy(S,Format('Anda yakin Kode %s dan Nama %s dihapus ?',
               [QuBeli.Fields[0].asstring,
                QuBeli.Fields[1].asstring]));
          if (Application.MessageBox(S,'Peringatan',
              MB_YESNO or MB_ICONSTOP + MB_DEFBUTTON2)=IDYES)then
          begin
              SimpanData('D');
          end;
       end;
      end
    else
      begin
      end;
  end else
  begin
     ShowMessage('Anda Tidak Berhak Menghapus Data');
  end;
        }
end;

procedure TFrbarangdanKomisi.MultiSelect1Click(Sender: TObject);
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

procedure TFrbarangdanKomisi.ToolButton4Click(Sender: TObject);
begin
  if (IsCetak) then
  begin
    ppLabel3.Caption:=koneksi[1];
    ppReport1.PrintReport;
  end else
  begin
      ShowMessage('Anda tidak berhak Mencetak Data');
  end;
   
end;

procedure TFrbarangdanKomisi.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;

procedure TFrbarangdanKomisi.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TFrbarangdanKomisi.dxDBGrid1CustomDrawFooter(Sender: TObject;
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

procedure TFrbarangdanKomisi.FormCreate(Sender: TObject);
begin
  //Panel1.Color:=FrSetForm.PanelMain.Color;
  //ToolBar1.Color:=FrSetForm.ToolBarMain.Color;
end;

procedure TfrbarangDanKomisi.SimpanDataKomisi(Mode: Char);
var
  mNomor:integer;
begin
   BM:=FrKomisiCustomer.QuBeli.GetBookmark;
   DM.QuCari.Close;
   DM.QuCari.SQL.Clear;
   if Mode='I' then
   begin
     with DM.QuCari2 do
     begin
       Close;
       SQL.Clear;
       SQL.Add('select max(Urut)Urut from DbkomisiCustomer where KodeCustSupp='+QuotedStr(FrKomisiCustomer.mKodeCustSupp)+
               ' and Kodebrg='+QuotedStr(FrKomisiCustomer.mkodebrg));
       Open;
     end;
     mNomor:=DM.QuCari2.FieldByName('Urut').AsInteger+1;
     DM.QuCari.SQL.Add('insert into DbKomisiCustomer (KodeCustSupp,Urut, Nama, Kurir, kodebrg, isLunas, Kurir_2)');
     DM.QuCari.SQL.Add('values(:0,:1,:2,:3,:4,:5,:6)');
     DM.qucari.Prepared;
     DM.QuCari.Parameters[0].Value:=FrKomisiCustomer.mKodeCustSupp;
     DM.QuCari.Parameters[1].Value:=mNomor;
     DM.QuCari.Parameters[2].Value:=FrKomisiCustomer.Nama.Text;
     DM.QuCari.Parameters[3].Value:=FrKomisiCustomer.JumlahKomisi.Value;
     DM.QuCari.Parameters[4].Value:=FrKomisiCustomer.mkodebrg;
     DM.QuCari.Parameters[5].Value:=FrKomisiCustomer.CheckBox1.Checked;
     DM.QuCari.Parameters[6].Value:=FrKomisiCustomer.JumlahKomisi2.Value;
   end else
   if Mode='U' then
   begin
     DM.QuCari.SQL.Add('update DbKomisiCustomer set Nama=:0, Kurir=:1, isLunas=:2, Kurir_2=:3');
     DM.QuCari.SQL.Add('where KodeCustSupp=:4 and Urut=:5 and kodebrg=:6');
     DM.QuCari.Prepared;
     DM.QuCari.Parameters[0].Value:=FrKomisiCustomer.Nama.text;
     DM.QuCari.Parameters[1].Value:=FrKomisiCustomer.JumlahKomisi.Value;
     DM.QuCari.Parameters[2].Value:=FrKomisiCustomer.CheckBox1.Checked;
     DM.QuCari.Parameters[3].Value:=FrKomisiCustomer.JumlahKomisi2.Value;
     DM.QuCari.Parameters[4].Value:=FrKomisiCustomer.QuBeliKodeCustSupp.AsString;
     DM.QuCari.Parameters[5].Value:=FrKomisiCustomer.QuBeliurut.AsInteger;
     DM.QuCari.Parameters[6].Value:=FrKomisiCustomer.QuBelikodebrg.AsString;
   end else
   if Mode='D' then
   begin
     DM.QuCari.SQL.Add('delete DbKomisiCustomer ');
     DM.QuCari.SQL.Add('where KodeCustsupp=:0 and Urut=:1 and Kodebrg=:2');
     DM.QuCari.Parameters[0].Value:=FrKomisiCustomer.QuBeliKodeCustSupp.AsString;
     DM.QuCari.Parameters[1].Value:=FrKomisiCustomer.QuBeliurut.AsInteger;
     DM.QuCari.Parameters[2].Value:=FrKomisiCustomer.QuBelikodebrg.AsString;
     DM.QuCari.Prepared;
   end;

   try
     DM.QuCari.ExecSQL;
    { if Mode='I' then
     begin
       TampilDataKomisi;
       QuKomisi.Locate('Urut', mNomor, [LOP,LOC]);
     end
     else if Mode='U' then
     begin
       TampilDataKomisi;
       if QuBeli.BookmarkValid(BM) then
       begin
         try
           QuKomisi.GotoBookmark(BM);
         finally
           QuKomisi.FreeBookmark(BM);
         end
       end else
       begin
         QuKomisi.FreeBookmark(BM);
         QuKomisi.Last;
       end;
     end
     else if Mode='D' then
     begin
       TampilDataKomisi;
     end;   }
   except
     ShowMessage('Proses Gagal !!!')
   end;
end;

procedure TFrbarangdanKomisi.ToolButton12Click(Sender: TObject);
begin
if IsTambah then
begin
  Application.CreateForm(TFrbarangCustomer, FrbarangCustomer);
  FrbarangCustomer.IsSimpan:=True;
  FrbarangCustomer.ShowModal;
end else
begin
    ShowMessage('Anda tidak berhak Menambah Data');
end;
end;

procedure TFrbarangdanKomisi.ToolButton13Click(Sender: TObject);
begin
if IsTambah then
  begin
    Application.CreateForm(TFrKomisiCustomer, FrkomisiCustomer);
    FrkomisiCustomer.IsSimpan:=True;
    FrkomisiCustomer.ShowModal;
  end else
  begin
      ShowMessage('Anda tidak berhak Menambah Data');
  end;
end;

end.
