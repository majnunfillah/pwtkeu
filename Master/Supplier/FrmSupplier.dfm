object FrSupplier: TFrSupplier
  Left = -4
  Top = -4
  Width = 1928
  Height = 903
  Caption = 'Master Supplier dan Customer'
  Color = 16773589
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1920
    Height = 46
    ButtonHeight = 39
    ButtonWidth = 113
    Caption = 'ToolBar1'
    Color = clBtnFace
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Images = ImageList2
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Hint = 'Tambah Record'
      Caption = '&Tambah'
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 113
      Top = 0
      Hint = 'Koreksi Record'
      Caption = '&Koreksi'
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 226
      Top = 0
      Hint = 'Hapus Record'
      Caption = '&Hapus'
      ImageIndex = 13
      OnClick = ToolButton3Click
    end
    object ToolButton5: TToolButton
      Left = 339
      Top = 0
      Width = 3
      Caption = 'ToolButton5'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object ToolButton4: TToolButton
      Left = 342
      Top = 0
      Caption = 'Sub Customer'
      ImageIndex = 4
      OnClick = ToolButton4Click
    end
    object ToolButton10: TToolButton
      Left = 455
      Top = 0
      Caption = 'Refresh'
      ImageIndex = 12
      OnClick = ToolButton10Click
    end
    object ToolButton6: TToolButton
      Left = 568
      Top = 0
      Caption = 'Lain - lain'
      DropdownMenu = PopupMenu1
      ImageIndex = 10
      Style = tbsDropDown
    end
    object ToolButton7: TToolButton
      Left = 694
      Top = 0
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 8
      Style = tbsSeparator
    end
    object ToolButton9: TToolButton
      Left = 702
      Top = 0
      Caption = 'K&eluar'
      ImageIndex = 8
      OnClick = ToolButton9Click
    end
    object ToolButton11: TToolButton
      Left = 815
      Top = 0
      Width = 8
      Caption = 'ToolButton11'
      ImageIndex = 9
      Style = tbsSeparator
    end
    object ToolButton13: TToolButton
      Left = 823
      Top = 0
      Caption = '&Semua'
      DropdownMenu = PopupMenu2
      ImageIndex = 7
      Style = tbsDropDown
    end
    object ToolButton8: TToolButton
      Left = 949
      Top = 0
      Width = 8
      Caption = 'ToolButton8'
      ImageIndex = 8
      Style = tbsSeparator
    end
    object ToolButton12: TToolButton
      Left = 957
      Top = 0
      Caption = 'Detail Akun'
      ImageIndex = 5
      OnClick = ToolButton12Click
    end
    object ToolButton14: TToolButton
      Left = 1070
      Top = 0
      Caption = 'Alamat'
      ImageIndex = 6
      OnClick = ToolButton14Click
    end
    object ToolButton15: TToolButton
      Left = 1183
      Top = 0
      Caption = 'Barang dan Komisi'
      ImageIndex = 7
      Visible = False
      OnClick = ToolButton15Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 46
    Width = 1920
    Height = 26
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 7
      Top = 3
      Width = 87
      Height = 16
      Caption = 'Kelompok Akun'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 440
      Top = 6
      Width = 24
      Height = 13
      Caption = 'Filter'
    end
    object Perkiraan: TComboBox
      Left = 133
      Top = 0
      Width = 298
      Height = 24
      BevelKind = bkFlat
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      OnChange = PerkiraanChange
      Items.Strings = (
        '')
    end
    object Edit1: TEdit
      Left = 480
      Top = 3
      Width = 121
      Height = 21
      TabOrder = 1
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 72
    Width = 1920
    Height = 797
    Align = alClient
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    LookAndFeel.Kind = lfFlat
    object tvSupplier: TcxGridDBTableView
      DataController.DataSource = DsView
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OnFocusedRecordChanged = tvSupplierFocusedRecordChanged
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.Indicator = True
      Styles.StyleSheet = DM.cxGridStyleHd
      Styles.Header = DM.cxStyle8
      object tvSupplierKODECUSTSUPP: TcxGridDBColumn
        Caption = 'Kode '
        DataBinding.FieldName = 'KODECUSTSUPP'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object tvSupplierDetailAkun: TcxGridDBColumn
        Caption = 'Detail Akun'
        DataBinding.FieldName = 'DetailAkun'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 150
      end
      object tvSupplierUSAHA: TcxGridDBColumn
        Caption = 'Bentuk Usaha'
        DataBinding.FieldName = 'USAHA'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 62
      end
      object tvSupplierNAMACUSTSUPP: TcxGridDBColumn
        Caption = 'Nama '
        DataBinding.FieldName = 'NAMACUSTSUPP'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 250
      end
      object tvSupplierALAMAT: TcxGridDBColumn
        Caption = 'Alamat'
        DataBinding.FieldName = 'ALAMAT'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        SortOrder = soAscending
        Width = 300
      end
      object tvSupplierKota: TcxGridDBColumn
        DataBinding.FieldName = 'Kota'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 122
      end
      object tvSupplierKODEPOS: TcxGridDBColumn
        Caption = 'kode Pos'
        DataBinding.FieldName = 'KODEPOS'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 70
      end
      object tvSupplierNEGARA: TcxGridDBColumn
        Caption = 'Negara'
        DataBinding.FieldName = 'NEGARA'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 160
      end
      object tvSupplierTELPON: TcxGridDBColumn
        Caption = 'Telpon'
        DataBinding.FieldName = 'TELPON'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 151
      end
      object tvSupplierFAX: TcxGridDBColumn
        Caption = 'Fax'
        DataBinding.FieldName = 'FAX'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 134
      end
      object tvSupplierEMAIL: TcxGridDBColumn
        Caption = 'Email'
        DataBinding.FieldName = 'EMAIL'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 171
      end
      object tvSupplierTanggal: TcxGridDBColumn
        DataBinding.FieldName = 'Tanggal'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object tvSupplierHARI: TcxGridDBColumn
        Caption = 'Hari'
        DataBinding.FieldName = 'HARI'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object tvSupplierSyaratPenerimaan: TcxGridDBColumn
        Caption = 'Syarat Penerimaan'
        DataBinding.FieldName = 'SyaratPenerimaan'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 250
      end
      object tvSupplierSyaratPembayaran: TcxGridDBColumn
        Caption = 'Syarat Pembayaran'
        DataBinding.FieldName = 'SyaratPembayaran'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 300
      end
      object tvSupplierDBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'xkontrak'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.DisplayUnchecked = 'False'
      end
      object tvSupplierIsMember: TcxGridDBColumn
        Caption = 'Is Member'
        DataBinding.FieldName = 'IsMember'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
      object tvSupplierTanggalValid: TcxGridDBColumn
        Caption = 'Tanggal Valid'
        DataBinding.FieldName = 'TanggalValid'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object tvSupplierDiscMember: TcxGridDBColumn
        Caption = 'Disc Member'
        DataBinding.FieldName = 'DiscMember'
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
    end
    object tvContact: TcxGridDBTableView
      DataController.DataSource = dsContact
      DataController.DetailKeyFieldNames = 'kodecustsupp'
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.MasterKeyFieldNames = 'KODECUSTSUPP'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      Styles.StyleSheet = DM.cxGridStyleHd
      Styles.Header = DM.cxStyle8
      object tvContactkodecustsupp: TcxGridDBColumn
        DataBinding.FieldName = 'kodecustsupp'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object tvContactPerkiraan: TcxGridDBColumn
        DataBinding.FieldName = 'Perkiraan'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object tvContactNamaPerkiraan: TcxGridDBColumn
        Caption = 'Perkiraan'
        DataBinding.FieldName = 'NamaPerkiraan'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 250
      end
      object tvContactKeterangan: TcxGridDBColumn
        DataBinding.FieldName = 'Keterangan'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
    end
    object cxGridSupplier: TcxGridLevel
      GridView = tvSupplier
      object cxGridContact: TcxGridLevel
        GridView = tvContact
      end
    end
  end
  object QuView: TADOQuery
    CacheSize = 2000
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <
      item
        Name = '0'
        DataType = ftString
        Size = 2
        Value = '0'
      end
      item
        Name = '1'
        DataType = ftString
        Size = 2
        Value = '0'
      end
      item
        Name = '2'
        DataType = ftString
        Size = 1
        Value = '1'
      end>
    SQL.Strings = (
      'Declare @Isaktif tinyint,@Perkiraan varchar(100), @Flagmenu int'
      'set @isaktif=:0'
      'Select @Perkiraan=:1,@Flagmenu=:2'
      'select  distinct a.*,'
      
        '        a.ALAMAT1+case when ltrim(a.Alamat2)='#39#39' then '#39#39' else CHA' +
        'R(13)+a.ALAMAT2 end ALAMAT,'
      
        '        a.Usaha+Case when isnull(a.Usaha,'#39#39')='#39#39' then '#39#39' else '#39'. ' +
        #39' end+a.NamacustSupp Nama,'
      
        '        case when A.iskontrak is null then 0 when A.iskontrak=0 ' +
        'then 0 when iskontrak=1 then 1 end xkontrak,'
      
        '        D.namaKota,D.KodeArea,E.namaArea,[dbo].[DataPostHutPiut]' +
        '(A.KodecustSupp,Case when @Flagmenu=0 then '#39'HT'#39' else '#39'PT'#39' end) D' +
        'etailAkun,'
      '        NamaJenis '
      'from dbCustSupp  a'
      
        '     left Outer join dbperkcustsupp b on b.kodecustsupp=a.kodecu' +
        'stsupp'
      
        '     left Outer join dbPerkiraan c on c.perkiraan=b.perkiraan an' +
        'd c.tipe=1'
      '     Left Outer join dbkota D on a.kota=D.KodeKota'
      '     Left outer join dbarea E on D.KodeArea=E.KodeArea'
      
        '     Left Outer Join DbJenisCustSupp F on A.JenisCustSupp=F.Kode' +
        'Jenis'
      'where (a.IsAktif  Like (Case when @isAktif=0 then 0'
      '                             when @isAktif=1 then 1'
      '                        end) or'
      '     (Case when @isAktif=0 then 0'
      '           when @isAktif=1 then 1'
      '           else 2'
      
        '      end)=2) and isnull(c.Keterangan,'#39#39')+'#39' ('#39'+isnull(b.Perkiraa' +
        'n,'#39#39')+'#39')'#39' like Case when @Perkiraan='#39'Semua'#39' then '#39'%'#39' else @Perki' +
        'raan end'
      ''
      ''
      ''
      '      '
      '      Order by a.KodeCustSupp'
      ''
      ''
      ''
      '')
    Left = 98
    Top = 133
    object QuViewKODECUSTSUPP: TStringField
      FieldName = 'KODECUSTSUPP'
      Size = 15
    end
    object QuViewNAMACUSTSUPP: TStringField
      FieldName = 'NAMACUSTSUPP'
      Size = 100
    end
    object QuViewALAMAT1: TStringField
      FieldName = 'ALAMAT1'
      Size = 100
    end
    object QuViewALAMAT2: TStringField
      FieldName = 'ALAMAT2'
      Size = 100
    end
    object QuViewKota: TStringField
      FieldName = 'Kota'
      Size = 100
    end
    object QuViewTELPON: TStringField
      FieldName = 'TELPON'
      Size = 100
    end
    object QuViewFAX: TStringField
      FieldName = 'FAX'
      Size = 100
    end
    object QuViewEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object QuViewKODEPOS: TStringField
      FieldName = 'KODEPOS'
      Size = 30
    end
    object QuViewNEGARA: TStringField
      FieldName = 'NEGARA'
      Size = 30
    end
    object QuViewNPWP: TStringField
      FieldName = 'NPWP'
      Size = 100
    end
    object QuViewTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuViewPLAFON: TBCDField
      FieldName = 'PLAFON'
      Precision = 18
      Size = 2
    end
    object QuViewHARI: TIntegerField
      FieldName = 'HARI'
    end
    object QuViewHARIHUTPIUT: TIntegerField
      FieldName = 'HARIHUTPIUT'
    end
    object QuViewBERIKAT: TBooleanField
      FieldName = 'BERIKAT'
    end
    object QuViewUSAHA: TStringField
      FieldName = 'USAHA'
    end
    object QuViewPERKIRAAN: TStringField
      FieldName = 'PERKIRAAN'
      Size = 25
    end
    object QuViewJENIS: TIntegerField
      FieldName = 'JENIS'
    end
    object QuViewNAMAPKP: TStringField
      FieldName = 'NAMAPKP'
      Size = 40
    end
    object QuViewALAMATPKP1: TStringField
      FieldName = 'ALAMATPKP1'
      Size = 100
    end
    object QuViewALAMATPKP2: TStringField
      FieldName = 'ALAMATPKP2'
      Size = 100
    end
    object QuViewKOTAPKP: TStringField
      FieldName = 'KOTAPKP'
      Size = 30
    end
    object QuViewSales: TStringField
      FieldName = 'Sales'
    end
    object QuViewKodeVls: TStringField
      FieldName = 'KodeVls'
      Size = 15
    end
    object QuViewKodeExp: TStringField
      FieldName = 'KodeExp'
    end
    object QuViewKodeTipe: TStringField
      FieldName = 'KodeTipe'
    end
    object QuViewIsPpn: TBooleanField
      FieldName = 'IsPpn'
    end
    object QuViewIsAktif: TWordField
      FieldName = 'IsAktif'
    end
    object QuViewKind: TWordField
      FieldName = 'Kind'
    end
    object QuViewContactP: TStringField
      FieldName = 'ContactP'
      Size = 100
    end
    object QuViewAlamat1ContP: TStringField
      FieldName = 'Alamat1ContP'
      Size = 100
    end
    object QuViewAlamat2ContP: TStringField
      FieldName = 'Alamat2ContP'
      Size = 100
    end
    object QuViewKotaContP: TStringField
      FieldName = 'KotaContP'
      Size = 100
    end
    object QuViewNegaraContP: TStringField
      FieldName = 'NegaraContP'
      Size = 30
    end
    object QuViewTelpContP: TStringField
      FieldName = 'TelpContP'
      Size = 100
    end
    object QuViewFaxContP: TStringField
      FieldName = 'FaxContP'
      Size = 100
    end
    object QuViewEmailContP: TStringField
      FieldName = 'EmailContP'
      Size = 100
    end
    object QuViewKODEPOSContP: TStringField
      FieldName = 'KODEPOSContP'
      Size = 7
    end
    object QuViewHPContP: TStringField
      FieldName = 'HPContP'
      Size = 100
    end
    object QuViewSyaratPenerimaan: TStringField
      FieldName = 'SyaratPenerimaan'
      Size = 8000
    end
    object QuViewSyaratPembayaran: TStringField
      FieldName = 'SyaratPembayaran'
      Size = 8000
    end
    object QuViewAgent: TStringField
      FieldName = 'Agent'
      Size = 40
    end
    object QuViewAlamat1A: TStringField
      FieldName = 'Alamat1A'
      Size = 100
    end
    object QuViewAlamat2A: TStringField
      FieldName = 'Alamat2A'
      Size = 100
    end
    object QuViewKotaA: TStringField
      FieldName = 'KotaA'
      Size = 100
    end
    object QuViewNegaraA: TStringField
      FieldName = 'NegaraA'
      Size = 30
    end
    object QuViewContactA: TStringField
      FieldName = 'ContactA'
      Size = 100
    end
    object QuViewTelpA: TStringField
      FieldName = 'TelpA'
      Size = 100
    end
    object QuViewFaxA: TStringField
      FieldName = 'FaxA'
      Size = 100
    end
    object QuViewEmailA: TStringField
      FieldName = 'EmailA'
      Size = 100
    end
    object QuViewKODEPOSA: TStringField
      FieldName = 'KODEPOSA'
      Size = 7
    end
    object QuViewHPA: TStringField
      FieldName = 'HPA'
      Size = 100
    end
    object QuViewEmailContA: TStringField
      FieldName = 'EmailContA'
      Size = 100
    end
    object QuViewMyID: TBytesField
      FieldName = 'MyID'
      ReadOnly = True
      Size = 8
    end
    object QuViewPortOfLoading: TStringField
      FieldName = 'PortOfLoading'
      Size = 4000
    end
    object QuViewCountryOfOrigin: TStringField
      FieldName = 'CountryOfOrigin'
      Size = 4000
    end
    object QuViewTglInput: TDateTimeField
      FieldName = 'TglInput'
    end
    object QuViewiskontrak: TBooleanField
      FieldName = 'iskontrak'
    end
    object QuViewALAMAT: TStringField
      FieldName = 'ALAMAT'
      ReadOnly = True
      Size = 201
    end
    object QuViewNama: TStringField
      FieldName = 'Nama'
      ReadOnly = True
      Size = 122
    end
    object QuViewxkontrak: TIntegerField
      FieldName = 'xkontrak'
      ReadOnly = True
    end
    object QuViewnamaKota: TStringField
      FieldName = 'namaKota'
      Size = 30
    end
    object QuViewKodeArea: TStringField
      FieldName = 'KodeArea'
      Size = 30
    end
    object QuViewnamaArea: TStringField
      FieldName = 'namaArea'
      Size = 50
    end
    object QuViewPPN: TWordField
      FieldName = 'PPN'
    end
    object QuViewDetailAkun: TStringField
      FieldName = 'DetailAkun'
      ReadOnly = True
      Size = 8000
    end
    object QuViewAtt: TStringField
      FieldName = 'Att'
      Size = 50
    end
    object QuViewHargaKe: TIntegerField
      FieldName = 'HargaKe'
    end
    object QuViewbank: TStringField
      FieldName = 'bank'
      Size = 100
    end
    object QuViewNoAcc: TStringField
      FieldName = 'NoAcc'
      Size = 1000
    end
    object QuViewIsMember: TBooleanField
      FieldName = 'IsMember'
    end
    object QuViewTanggalValid: TDateTimeField
      FieldName = 'TanggalValid'
    end
    object QuViewDiscMember: TBCDField
      FieldName = 'DiscMember'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuViewAttPhone: TStringField
      FieldName = 'AttPhone'
      Size = 100
    end
    object QuViewJenisCustSupp: TStringField
      FieldName = 'JenisCustSupp'
      Size = 15
    end
    object QuViewNamaJenis: TStringField
      FieldName = 'NamaJenis'
      Size = 30
    end
    object QuViewTahun: TIntegerField
      FieldName = 'Tahun'
    end
  end
  object DsView: TDataSource
    DataSet = QuView
    Left = 131
    Top = 133
  end
  object PopupMenu1: TPopupMenu
    Images = ImageList2
    Left = 467
    Top = 145
    object ExportExcel1: TMenuItem
      Caption = 'Export Excel'
      ImageIndex = 5
      OnClick = ExportExcel1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ShowGrid1: TMenuItem
      Caption = 'Show Grid'
      Checked = True
      OnClick = ShowGrid1Click
    end
    object ShowHeader1: TMenuItem
      Caption = 'Show Header'
      Checked = True
      OnClick = ShowHeader1Click
    end
    object Show1: TMenuItem
      Caption = 'Show Footer'
      Checked = True
      OnClick = Show1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object AutoFilter1: TMenuItem
      Caption = 'Auto Filter'
      ImageIndex = 14
      OnClick = AutoFilter1Click
    end
    object MultiSelect1: TMenuItem
      Caption = 'Multi Select'
      OnClick = MultiSelect1Click
    end
  end
  object ImageList2: TImageList
    Left = 437
    Top = 145
    Bitmap = {
      494C010110001300040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001002000000000000050
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000008400000084000000
      8400000084000000840000008400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000840000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000BDBDBD0000000000BDBDBD00000000007B7B7B007B7B
      7B00000000000000000000000000000000000000000000008400000084000000
      0000000000000000000000008400000000000000000000000000000000008484
      8400000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000BDBDBD00BDBDBD000000840000FFFF0000008400BDBDBD00BDBDBD008400
      000084000000840000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000BDBDBD00000000007B7B7B00000000007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000084000000
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000BDBDBD00BDBDBD00BDBDBD0000008400FFFFFF00FFFFFF007B7B7B000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF007B7B7B007B7B7B00BDBDBD0000000000BDBDBD007B7B7B00000000007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      8400000084000000000000000000000000000000000000000000848484000000
      00000000000000000000848484000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007B7B7B007B7B7B007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000BDBDBD00BDBDBD00BDBDBD0000FFFF00FFFFFF007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0000000000BDBDBD00BDBDBD00000000007B7B7B00BDBDBD00000000007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000084000000840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000BDBDBD00BDBDBD0000008400FFFFFF007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0000000000BDBDBD00BDBDBD0000000000BDBDBD007B7B7B00000000007B7B
      7B007B7B7B000000000000000000000000000000000000008400000000000000
      0000000000000000840000008400000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000BDBDBD0000FFFF007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF007B7B7B007B7B7B00BDBDBD00000000007B7B7B00BDBDBD00000000007B7B
      7B007B7B7B000000000000000000000000000000000000008400000084000000
      8400000084000000840000008400000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000BDBDBD0000000000BDBDBD00000000007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF007B7B7B007BFF
      7B007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF00FF00000000FF0000000000000000000000000000000000000000
      0000000000000000000000008400FFFFFF000000840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000BDBDBD00000000007B7B7B00000000007B7B7B007B7B
      7B00000000000000000000000000000000000000000084000000840000008400
      0000000000008400000084000000840000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF0000FF00000000FF00000000000000000000000000000000000000
      0000000000000000840000FFFF0000008400FFFFFF0000008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400840000000000
      0000000000000000000084000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD00BDBDBD000000840000FFFF00FFFFFF0000FFFF007B7B7B000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00BDBDBD00BDBDBD00BDBDBD007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD00BDBDBD00BDBDBD00BDBDBD0000008400FFFFFF007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008400
      0000000000008400000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD008400
      0000840000008400000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B7B7B007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400840000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      FF00000084000000FF00000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000000000000000000000FFFF0000FF
      FF00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF000000000000000000000000007B7B7B00000000000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      FF00000084000000FF000000000000848400000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      84000000840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000000000000000000000FFFF0000FF
      FF000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000FFFF0000FFFF0000000000000000007B7B7B0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      FF00000084000000FF000084840000848400000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD000000FF000000FF000000FF00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      8400000084000000840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      00000000000000FFFF00000000000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      FF00000084000000FF000084840000848400000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF00000000000000000000FFFF0000FFFF00000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      FF00000084000000FF000084840000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF000000000000FFFF00000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF000000000000000000000000007B7B7B00000000000000
      000000000000FFFFFF00000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF0000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00000000000000000000000000000000007B7B7B000000
      0000FFFFFF00000000007B7B7B00000000000000000000000000000084000000
      840000008400000084000000840000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000848400008484000084
      840000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000FFFF0000FFFF
      000000000000FFFF0000BDBDBD0000000000000000000000000000000000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084840000848400008484000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF000000000000BDBDBD000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000008484000084840000848400000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      8400000084000000840000FFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000848400008484000084840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000000000000084840000848400008484000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000FFFF000000000000FFFF000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000848400000000000000000000000000000000007B7B
      7B00000000007B7B7B000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      8400FFFF0000000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00000000007B7B7B000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      8400FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000008484000000
      00000000000000000000000000007B7B7B000000000000000000000000007B7B
      7B00000000007B7B7B000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF00000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
      00007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF00000000000000000000000000000000000000FF000000FF000000
      FF00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B0000000000FFFFFF000000000000000000FFFFFF00BDBDBD00FFFF
      FF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFF
      FF00BDBDBD00FFFFFF00BDBDBD000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000000000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF000000000000000000BDBDBD00FFFFFF00BDBD
      BD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBD
      BD00FFFFFF000000FF00FFFFFF000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000FFFFFF000000
      00000000000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF000000000000000000FFFFFF00BDBDBD00FFFF
      FF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFF
      FF00BDBDBD00FFFFFF00BDBDBD000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00000000000000
      0000FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000FFFFFF000000
      00000000000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000
      FF000000000000000000000000000000000000000000FFFFFF007B7B7B007BFF
      7B00FFFFFF007B7B7B007B7B7B00FFFFFF007B7B7B00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000FFFFFF000000
      00000000000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF007B7B7B007B7B
      7B00FFFFFF007B7B7B007B7B7B007B7B7B00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF0000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD00FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000BDBDBD00BDBDBD000000000000000000FFFFFF0000000000BDBD
      BD00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BDBDBD00FFFFFF0000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      00007B7B7B00000000007B7B7B00000000007B7B7B00000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00000000007B7B7B000000
      00007B7B7B00000000007B7B7B00000000007B7B7B00000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000007B7B7B007B7B7B007BFF
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000007B7B7B0000000000000000000000
      FF000000FF000000FF00000000007B7B7B000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000848400000000000000000000000000FFFF0000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000084840000000000000000000000000000000000FF000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF00000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000FFFF0000000000000000000000
      000000000000000000000000000000000000FF00000000000000FF000000FF00
      000000000000000000000000000000000000000000007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000FFFF0000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF000000000000FFFF00FFFFFF000000
      0000FFFFFF00000000000000000000000000FF00000000000000000000000000
      0000FF0000000000000000000000000000007B7B7B007B7B7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF000000000000FFFF00FFFFFF000000
      0000FFFFFF00000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFF
      FF0000FFFF00000000000000000000000000FF000000FF000000000000000000
      0000000000000000000000000000FFFFFF007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFF
      FF0000FFFF00000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FF
      FF000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FF
      FF0000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000008484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      000000FFFF0000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00000000000000000000FFFF0000000000FFFFFF00FFFF
      FF000000000000000000FFFFFF0000000000000000000000000000000000FFFF
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      000000848400000000000000000000000000000000000000000000000000FF00
      000000000000FF000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF0000000000FFFFFF0000000000000000000000000000000000FFFF
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF0000FFFF
      0000FFFF00000000000000FFFF00FFFFFF0000FFFF000000000000FFFF000000
      0000008484000000000000000000000000000000000000000000FF0000000000
      000000000000FF000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF0000FFFF
      0000FFFF00000000000000FFFF00FFFFFF0000FFFF000000000000FFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      0000FFFF0000FFFF00000000000000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000008484000000000000000000000000000000000000000000FF0000000000
      000000000000FF000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      0000FFFF0000FFFF00000000000000FFFF00FFFFFF0000FFFF00FFFFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      0000008484000000000000000000000000000000000000000000FF0000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFF0000000000000000000000000000000000000000000000FF
      FF0000FFFF00000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000FFFF000000000000000000000000000000000000000000000000
      0000BDBDBD000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFE00FFFFFFFFF8003E00F81F7FFFF
      8003C0079DE300008003C007CFE30000E00F8003E7C10000E00F8002F3C10000
      F01F0001B9F70000F83F800381F70000FC7FC007FFF70000F83FC00788F70000
      F01FC0079CF70000E00FC007C1F7FFFFE00FC007C9F7FFFF8003F83FE3F7FFFF
      8003F83FE3F7FFFF8003FFFFF7F7FFFFC007C003F862C007C007C00380E0C007
      C007C00301E0C007C007C00301E0C007C007C00331E1C007C007C00331C1C007
      C007C003C181C007C007C003C307C007C007C003FE17C007C007C003CC37C007
      C007C003A877C007C007C00340F7C007C007C00301E3C007C007C003C1E3C007
      C007C003C0E3C007C007C003C83FC0078001FFFFFFDFFFE300000000FFCFFC41
      00000000FFC78800000000000003000000000000000100000000000000000000
      00000000000100000000000000030000E007000000070000E0070000000F0000
      E0070000001F0000E0070000007F0000E00F000000FF0001E01F000001FF0001
      E03FFFFF03FF000DE07FFFFFFFFFD553FC00FFFFFFFFFFFFFC008017FFE70162
      2000FFF7FFC7FFE30000FE638F8FFE630000FC030700FC030000F8033200F803
      0000F0030000F0030000F0038000F0030000E003F900E0030000C003E100C003
      E0008003C9008003F8000003C9000003F0000003C3000003E00101E3E30001E3
      C40383E3FF0183F7EC07C7E3FF03C7F700000000000000000000000000000000
      000000000000}
  end
  object SaveDialog: TSaveDialog
    FileName = 'ExpGrid'
    Filter = 'Excel 97 - 2003|*.xls'
    Options = [ofOverwritePrompt, ofHideReadOnly]
    Left = 495
    Top = 144
  end
  object Sp_customer: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'SP_Supplier;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@Mode'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
      end
      item
        Name = '@KodeCustSupp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
      end
      item
        Name = '@NamaCustSupp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
      end
      item
        Name = '@Usaha'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
      end
      item
        Name = '@Alamat1'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
      end
      item
        Name = '@Alamat2'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
      end
      item
        Name = '@KodeKota'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
      end
      item
        Name = '@KodePos'
        Attributes = [paNullable]
        DataType = ftString
        Size = 7
      end
      item
        Name = '@Negara'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
      end
      item
        Name = '@Telpon'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
      end
      item
        Name = '@Fax'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
      end
      item
        Name = '@Email'
        Attributes = [paNullable]
        DataType = ftString
        Size = 40
      end
      item
        Name = '@NPWP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
      end
      item
        Name = '@Tanggal'
        Attributes = [paNullable]
        DataType = ftDateTime
      end
      item
        Name = '@Plafon'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@Hari'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@Berikat'
        Attributes = [paNullable]
        DataType = ftBoolean
      end
      item
        Name = '@OldKode'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
      end
      item
        Name = '@Jenis'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
      end
      item
        Name = '@NamaPKP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 40
      end
      item
        Name = '@AlamatPkp1'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
      end
      item
        Name = '@AlamatPkp2'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
      end
      item
        Name = '@KotaPKP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
      end
      item
        Name = '@Sales'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
      end
      item
        Name = '@KodeVls'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
      end
      item
        Name = '@Perkiraan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
      end
      item
        Name = '@KodeTipe'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
      end
      item
        Name = '@IsPpn'
        Attributes = [paNullable]
        DataType = ftBoolean
      end
      item
        Name = '@Kind'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@HariHutPiut'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@ContactP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
      end
      item
        Name = '@Alamat1ContP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
      end
      item
        Name = '@Alamat2ContP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
      end
      item
        Name = '@KotaContP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
      end
      item
        Name = '@NegaraContP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
      end
      item
        Name = '@TelpContP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
      end
      item
        Name = '@FaxContP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
      end
      item
        Name = '@EmailContP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
      end
      item
        Name = '@KODEPOSContP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 7
      end
      item
        Name = '@HPContP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
      end
      item
        Name = '@SyaratPenerimaan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 800
      end
      item
        Name = '@SyaratPembayaran'
        Attributes = [paNullable]
        DataType = ftString
        Size = 800
      end
      item
        Name = '@Agent'
        Attributes = [paNullable]
        DataType = ftString
        Size = 40
      end
      item
        Name = '@Alamat1A'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
      end
      item
        Name = '@Alamat2A'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
      end
      item
        Name = '@KotaA'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
      end
      item
        Name = '@NegaraA'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
      end
      item
        Name = '@ContactA'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
      end
      item
        Name = '@TelpA'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
      end
      item
        Name = '@FaxA'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
      end
      item
        Name = '@EmailA'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
      end
      item
        Name = '@KODEPOSA'
        Attributes = [paNullable]
        DataType = ftString
        Size = 7
      end
      item
        Name = '@HPA'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
      end
      item
        Name = '@EmailContA'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
      end
      item
        Name = '@IsAktif'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
      end
      item
        Name = '@PortOfLoading'
        Attributes = [paNullable]
        DataType = ftString
        Size = 800
      end
      item
        Name = '@CountryOfOrigin'
        Attributes = [paNullable]
        DataType = ftString
        Size = 800
      end
      item
        Name = '@IsKontrak'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
      end
      item
        Name = '@PPN'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
      end
      item
        Name = '@HargaKe'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
      end
      item
        Name = '@Att'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
      end
      item
        Name = '@Bank'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
      end
      item
        Name = '@NoACC'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1000
      end
      item
        Name = '@IsMember'
        Attributes = [paNullable]
        DataType = ftBoolean
      end
      item
        Name = '@TanggalValid'
        Attributes = [paNullable]
        DataType = ftDateTime
      end
      item
        Name = '@DiscMember'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@AttPhone'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
      end
      item
        Name = '@JenisCustSupp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
      end
      item
        Name = '@Tahun'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end>
    Left = 521
    Top = 144
  end
  object PopupMenu2: TPopupMenu
    Images = ImageList2
    Left = 475
    Top = 114
    object Semua: TMenuItem
      Caption = 'Semua'
      Checked = True
      OnClick = SemuaClick
    end
    object Aktif: TMenuItem
      Caption = 'Aktif'
      OnClick = AktifClick
    end
    object TidakAktif: TMenuItem
      Caption = 'Non Aktif'
      OnClick = TidakAktifClick
    end
  end
  object QuContact: TADOQuery
    CacheSize = 2000
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 0
    DataSource = DsView
    Parameters = <
      item
        Name = 'KodeCustSupp'
        DataType = ftString
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      
        'select a.kodecustsupp,a.Perkiraan,c.Keterangan+'#39' ('#39'+c.Perkiraan+' +
        #39')'#39' NamaPerkiraan, c.Keterangan'
      'from dbPerkCustSupp  a'
      '     left outer join dbPosthutPiut b on b.Perkiraan=a.Perkiraan'
      '     left Outer Join dbPerkiraan c on c.Perkiraan=b.Perkiraan'
      'where a.KodeCustsupp=:KodeCustSupp'
      'Order by a.KodeCustSupp')
    Left = 114
    Top = 181
    object QuContactkodecustsupp: TStringField
      FieldName = 'kodecustsupp'
      Size = 15
    end
    object QuContactPerkiraan: TStringField
      FieldName = 'Perkiraan'
      Size = 25
    end
    object QuContactNamaPerkiraan: TStringField
      FieldName = 'NamaPerkiraan'
      ReadOnly = True
      Size = 8000
    end
    object QuContactKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 8000
    end
  end
  object dsContact: TDataSource
    DataSet = QuContact
    Left = 147
    Top = 181
  end
end
