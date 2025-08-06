object FrCustomer: TFrCustomer
  Left = 121
  Top = 177
  Width = 1043
  Height = 480
  Caption = 'Master Customer'
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
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 72
    Width = 1027
    Height = 370
    Hint = 'Untuk cari data ketik kata yang dicari di grid'
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'KODECUSTSUPP'
    ShowSummaryFooter = True
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    Color = 14540253
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnMouseUp = dxDBGrid1MouseUp
    ArrowsColor = clNone
    AutoExpandOnSearch = False
    BandColor = clNone
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clNone
    BandFont.Height = -13
    BandFont.Name = 'Tahoma'
    BandFont.Style = []
    DataSource = DsView
    Filter.Criteria = {00000000}
    FixedBandLineColor = clNone
    GridLineColor = clBlack
    GroupPanelColor = 13025469
    GroupPanelFontColor = clBlack
    GroupNodeColor = clMoneyGreen
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clBlack
    HeaderFont.Height = -13
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    HideSelectionColor = clMoneyGreen
    HideSelectionTextColor = clBlack
    HighlightColor = 9629163
    HighlightTextColor = clBlack
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'Tahoma'
    PreviewFont.Style = []
    RowFooterColor = clMenuText
    RowFooterTextColor = clWindow
    ShowRowFooter = True
    OnCustomDrawCell = dxDBGrid1CustomDrawCell
    OnCustomDrawFooter = dxDBGrid1CustomDrawFooter
    object dxDBGrid1KODECUST: TdxDBGridMaskColumn
      Caption = 'Kode Pelanggan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KODECUSTSUPP'
    end
    object dxDBGrid1Nama: TdxDBGridMaskColumn
      Caption = 'Nama Pelanggan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HeaderAlignment = taCenter
      Width = 200
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Nama'
    end
    object dxDBGrid1ALAMAT: TdxDBGridMemoColumn
      Caption = 'Alamat'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HeaderAlignment = taCenter
      Width = 250
      BandIndex = 0
      RowIndex = 0
      HeaderMaxLineCount = 1
      FieldName = 'ALAMAT'
    end
    object dxDBGrid1KOTA: TdxDBGridMaskColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KOTA'
    end
    object dxDBGrid1TELPON: TdxDBGridMaskColumn
      Caption = 'Telpon'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TELPON'
    end
    object dxDBGrid1FAX: TdxDBGridMaskColumn
      Caption = 'Fax'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FAX'
    end
    object dxDBGrid1EMAIL: TdxDBGridMaskColumn
      Caption = 'E-mail'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HeaderAlignment = taCenter
      Visible = False
      Width = 250
      BandIndex = 0
      RowIndex = 0
      FieldName = 'EMAIL'
    end
    object dxDBGrid1NEGARA: TdxDBGridMaskColumn
      Caption = 'Negara'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NEGARA'
    end
    object dxDBGrid1NPWP: TdxDBGridMaskColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HeaderAlignment = taCenter
      Visible = False
      Width = 200
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NPWP'
    end
    object dxDBGrid1PLAFON: TdxDBGridMaskColumn
      Caption = 'Plafon'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PLAFON'
    end
    object dxDBGrid1HARI: TdxDBGridMaskColumn
      Caption = 'Hari'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HeaderAlignment = taCenter
      Width = 50
      BandIndex = 0
      RowIndex = 0
      FieldName = 'HARI'
    end
    object dxDBGrid1NamaJenis: TdxDBGridMaskColumn
      Caption = 'Kelompok'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HeaderAlignment = taCenter
      Width = 70
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NamaJenis'
    end
    object dxDBGrid1Column13: TdxDBGridColumn
      Caption = 'Hari Piutang'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'HARIHUTPIUT'
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 72
    Width = 1027
    Height = 370
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    LookAndFeel.Kind = lfFlat
    object tvMaster: TcxGridDBBandedTableView
      DataController.DataSource = dsMaster
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OnFocusedRecordChanged = tvMasterFocusedRecordChanged
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.StyleSheet = DM.cxGridBandStyleHd
      Styles.Header = DM.cxStyle8
      Styles.BandHeader = DM.cxStyle8
      Bands = <
        item
        end>
      object tvMasterKODECUSTSUPP: TcxGridDBBandedColumn
        Caption = 'Kode Pelanggan'
        DataBinding.FieldName = 'KODECUSTSUPP'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 87
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMasterUSAHA: TcxGridDBBandedColumn
        Caption = 'Usaha'
        DataBinding.FieldName = 'USAHA'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 51
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMasterNama: TcxGridDBBandedColumn
        Caption = 'Nama Pelanggan'
        DataBinding.FieldName = 'Nama'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 147
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tvMasterALAMAT: TcxGridDBBandedColumn
        Caption = 'Alamat'
        DataBinding.FieldName = 'ALAMAT'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 187
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tvMasterKota: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Kota'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 109
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tvMasterTELPON: TcxGridDBBandedColumn
        Caption = 'Telpon'
        DataBinding.FieldName = 'TELPON'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 99
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object tvMasterFAX: TcxGridDBBandedColumn
        Caption = 'Fax'
        DataBinding.FieldName = 'FAX'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 98
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object tvMasterEMAIL: TcxGridDBBandedColumn
        Caption = 'Email'
        DataBinding.FieldName = 'EMAIL'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 131
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object tvMasterNEGARA: TcxGridDBBandedColumn
        Caption = 'Negara'
        DataBinding.FieldName = 'NEGARA'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 137
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object tvMasterNPWP: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NPWP'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 139
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object tvMasterPLAFON: TcxGridDBBandedColumn
        Caption = 'Plafon'
        DataBinding.FieldName = 'PLAFON'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 88
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object tvMasterHARI: TcxGridDBBandedColumn
        Caption = 'Hari'
        DataBinding.FieldName = 'HARI'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object tvMasterNamaJenis: TcxGridDBBandedColumn
        Caption = 'Kelompok'
        DataBinding.FieldName = 'NamaJenis'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 83
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object tvMasterKetHarga: TcxGridDBBandedColumn
        Caption = 'Ket Harga'
        DataBinding.FieldName = 'KetHarga'
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
    end
    object tvDetail: TcxGridDBBandedTableView
      DataController.DataSource = dsDetail
      DataController.DetailKeyFieldNames = 'KODECUSTSUPP'
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.MasterKeyFieldNames = 'KODECUSTSUPP'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.StyleSheet = DM.cxGridBandStyleHd
      Styles.Header = DM.cxStyle8
      Styles.BandHeader = DM.cxStyle8
      Bands = <
        item
        end>
      object tvDetailNama: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Nama'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 240
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvDetailAlamat: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Alamat'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvDetailJobTitle: TcxGridDBBandedColumn
        Caption = 'Jabatan'
        DataBinding.FieldName = 'JobTitle'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tvDetailPhone1: TcxGridDBBandedColumn
        Caption = 'Telpon'
        DataBinding.FieldName = 'Phone1'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tvDetailPhone2: TcxGridDBBandedColumn
        Caption = 'Fax'
        DataBinding.FieldName = 'Phone2'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tvDetailPhone3: TcxGridDBBandedColumn
        Caption = 'Mobile Phone'
        DataBinding.FieldName = 'Phone3'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object tvDetailEmail: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Email'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object tvDetailKodeCustSupp: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KodeCustSupp'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tvMaster
      Options.DetailTabsPosition = dtpTop
      object cxGrid1Level2: TcxGridLevel
        Caption = 'Daftar Kontak'
        GridView = tvDetail
        Options.DetailTabsPosition = dtpTop
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1027
    Height = 46
    ButtonHeight = 39
    ButtonWidth = 84
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
      Left = 84
      Top = 0
      Hint = 'Koreksi Record'
      Caption = '&Koreksi'
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 168
      Top = 0
      Hint = 'Hapus Record'
      Caption = '&Hapus'
      ImageIndex = 13
      OnClick = ToolButton3Click
    end
    object ToolButton5: TToolButton
      Left = 252
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object ToolButton4: TToolButton
      Left = 260
      Top = 0
      Caption = '&Cetak'
      ImageIndex = 4
      Visible = False
    end
    object ToolButton10: TToolButton
      Left = 344
      Top = 0
      Caption = 'Refresh'
      ImageIndex = 12
      OnClick = ToolButton10Click
    end
    object ToolButton6: TToolButton
      Left = 428
      Top = 0
      Caption = 'Lain - lain'
      DropdownMenu = PopupMenu1
      ImageIndex = 10
      Style = tbsDropDown
    end
    object ToolButton7: TToolButton
      Left = 527
      Top = 0
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 8
      Style = tbsSeparator
    end
    object ToolButton9: TToolButton
      Left = 535
      Top = 0
      Caption = 'K&eluar'
      ImageIndex = 8
      OnClick = ToolButton9Click
    end
    object ToolButton11: TToolButton
      Left = 619
      Top = 0
      Width = 8
      Caption = 'ToolButton11'
      ImageIndex = 9
      Style = tbsSeparator
    end
    object ToolButton13: TToolButton
      Left = 627
      Top = 0
      Caption = '&Semua'
      DropdownMenu = PopupMenu2
      ImageIndex = 7
      Style = tbsDropDown
    end
    object ToolButton8: TToolButton
      Left = 726
      Top = 0
      Caption = 'Alamat Kirim'
      ImageIndex = 15
      OnClick = ToolButton8Click
    end
    object ToolButton12: TToolButton
      Left = 810
      Top = 0
      Caption = 'Daftar Kontak'
      ImageIndex = 5
      OnClick = ToolButton12Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 46
    Width = 1027
    Height = 26
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label1: TLabel
      Left = 7
      Top = 4
      Width = 118
      Height = 16
      Caption = 'Kelompok  Customer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Perkiraan: TComboBox
      Left = 129
      Top = 0
      Width = 276
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
      OnDropDown = PerkiraanDropDown
      Items.Strings = (
        '')
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
        Size = 1
        Value = '0'
      end
      item
        Name = '1'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      'Declare @Isaktif tinyint,@Perkiraan varchar(100)'
      'Set @isaktif=:0'
      'Set @Perkiraan=:1'
      'select  a.*,'
      
        '        a.ALAMAT1+case when ltrim(a.Alamat2)='#39#39' then '#39#39' else CHA' +
        'R(13)+a.ALAMAT2 end ALAMAT,'
      '        a.NamacustSupp Nama,'
      '        case when a.kind=0 then '#39'Supplier'#39
      '             when a.kind=1 then '#39'Customer'#39
      #9'     else '#39#39
      '        end NamaJenis,'
      '        B.IsBeliJual'
      'from dbCustSupp  a'
      '     left outer join dbPosthutPiut b on b.Perkiraan=a.Perkiraan'
      '     left Outer Join dbPerkiraan c on c.Perkiraan=b.Perkiraan'
      'where (a.IsAktif  Like (Case when @isAktif=0 then 0'
      '                            when @isAktif=1 then 1'
      '                       end) or'
      '     (Case when @isAktif=0 then 0'
      '           when @isAktif=1 then 1'
      '           else 2'
      
        '      end)=2) and (b.kode='#39'PT'#39' or B.IsBeliJual=1)and c.Keteranga' +
        'n+'#39' ('#39'+c.Perkiraan+'#39')'#39'=@Perkiraan'
      'Order by a.KodeCustSupp')
    Left = 106
    Top = 173
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
      Size = 40
    end
    object QuViewKODEPOS: TStringField
      FieldName = 'KODEPOS'
      Size = 7
    end
    object QuViewNEGARA: TStringField
      FieldName = 'NEGARA'
      Size = 30
    end
    object QuViewNPWP: TStringField
      FieldName = 'NPWP'
      Size = 30
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
      Size = 800
    end
    object QuViewSyaratPembayaran: TStringField
      FieldName = 'SyaratPembayaran'
      Size = 800
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
    object QuViewALAMAT: TStringField
      FieldName = 'ALAMAT'
      ReadOnly = True
      Size = 201
    end
    object QuViewNama: TStringField
      FieldName = 'Nama'
      ReadOnly = True
      Size = 62
    end
    object QuViewNamaJenis: TStringField
      FieldName = 'NamaJenis'
      ReadOnly = True
      Size = 8
    end
    object QuViewIsBeliJual: TBooleanField
      FieldName = 'IsBeliJual'
    end
    object QuViewHargaKe: TWordField
      FieldName = 'HargaKe'
    end
  end
  object DsView: TDataSource
    DataSet = QuView
    Left = 139
    Top = 173
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
    Options = [ofOverwritePrompt, ofHideReadOnly]
    Left = 495
    Top = 144
  end
  object Sp_customer: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'SP_CUSTSUPP;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Mode'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@KodeCustSupp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@NamaCustSupp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Usaha'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = '@Alamat1'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Alamat2'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@KodeKota'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@KodePos'
        Attributes = [paNullable]
        DataType = ftString
        Size = 7
        Value = Null
      end
      item
        Name = '@Negara'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@Telpon'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@Fax'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@Email'
        Attributes = [paNullable]
        DataType = ftString
        Size = 40
        Value = Null
      end
      item
        Name = '@NPWP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@Tanggal'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Plafon'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Hari'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Berikat'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OldKode'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@Jenis'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@NamaPKP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 40
        Value = Null
      end
      item
        Name = '@AlamatPkp1'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@AlamatPkp2'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@KotaPKP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@Sales'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@KodeVls'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@Perkiraan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@KodeTipe'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@IsPpn'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Kind'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@HariHutPiut'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IsAktif'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@HargaKe'
        DataType = ftInteger
        Value = Null
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
  object QuMaster: TADOQuery
    CacheSize = 2000
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <
      item
        Name = '0'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = '1'
        DataType = ftString
        Size = 4
        Value = '1131'
      end>
    SQL.Strings = (
      'Declare @Isaktif tinyint,@Perkiraan varchar(100)'
      'Set @isaktif=:0'
      'Set @Perkiraan=:1'
      'select  a.*,'
      
        '        a.ALAMAT1+case when ltrim(a.Alamat2)='#39#39' then '#39#39' else CHA' +
        'R(13)+a.ALAMAT2 end ALAMAT,'
      '        a.NamacustSupp Nama,'
      '        case when a.kind=0 then '#39'Supplier'#39
      '             when a.kind=1 then '#39'Customer'#39
      #9'     else '#39#39
      '        end NamaJenis,'
      '        B.IsBeliJual, '
      
        '        Case when a.HargaKe=0 then '#39'Pilihan Harga Belum Di Setti' +
        'ng '#39
      '                 when a.HargaKe=1 then '#39'Harga Jual 1'#39
      '                 when a.HargaKe=2 then '#39'Harga Jual 2'#39
      '                 when a.HargaKe=3 then '#39'Harga Jual 3'#39
      '                 else '#39#39
      '        End KetHarga'
      'from dbCustSupp  a'
      '     left outer join dbPosthutPiut b on b.Perkiraan=a.Perkiraan'
      '     left Outer Join dbPerkiraan c on c.Perkiraan=b.Perkiraan'
      'where (a.IsAktif  Like (Case when @isAktif=0 then 0'
      '                            when @isAktif=1 then 1'
      '                       end) or'
      '     (Case when @isAktif=0 then 0'
      '           when @isAktif=1 then 1'
      '           else 2'
      
        '      end)=2) and (b.kode='#39'PT'#39' or B.IsBeliJual=1)and c.Keteranga' +
        'n+'#39' ('#39'+c.Perkiraan+'#39')'#39'=@Perkiraan'
      'Order by a.KodeCustSupp')
    Left = 178
    Top = 141
    object QuMasterKODECUSTSUPP: TStringField
      FieldName = 'KODECUSTSUPP'
      Size = 15
    end
    object QuMasterNAMACUSTSUPP: TStringField
      FieldName = 'NAMACUSTSUPP'
      Size = 100
    end
    object QuMasterALAMAT1: TStringField
      FieldName = 'ALAMAT1'
      Size = 100
    end
    object QuMasterALAMAT2: TStringField
      FieldName = 'ALAMAT2'
      Size = 100
    end
    object QuMasterKota: TStringField
      FieldName = 'Kota'
      Size = 100
    end
    object QuMasterTELPON: TStringField
      FieldName = 'TELPON'
      Size = 100
    end
    object QuMasterFAX: TStringField
      FieldName = 'FAX'
      Size = 100
    end
    object QuMasterEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object QuMasterKODEPOS: TStringField
      FieldName = 'KODEPOS'
      Size = 30
    end
    object QuMasterNEGARA: TStringField
      FieldName = 'NEGARA'
      Size = 30
    end
    object QuMasterNPWP: TStringField
      FieldName = 'NPWP'
      Size = 100
    end
    object QuMasterTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuMasterPLAFON: TBCDField
      FieldName = 'PLAFON'
      Precision = 18
      Size = 2
    end
    object QuMasterHARI: TIntegerField
      FieldName = 'HARI'
    end
    object QuMasterHARIHUTPIUT: TIntegerField
      FieldName = 'HARIHUTPIUT'
    end
    object QuMasterBERIKAT: TBooleanField
      FieldName = 'BERIKAT'
    end
    object QuMasterUSAHA: TStringField
      FieldName = 'USAHA'
    end
    object QuMasterPERKIRAAN: TStringField
      FieldName = 'PERKIRAAN'
      Size = 25
    end
    object QuMasterJENIS: TIntegerField
      FieldName = 'JENIS'
    end
    object QuMasterNAMAPKP: TStringField
      FieldName = 'NAMAPKP'
      Size = 40
    end
    object QuMasterALAMATPKP1: TStringField
      FieldName = 'ALAMATPKP1'
      Size = 100
    end
    object QuMasterALAMATPKP2: TStringField
      FieldName = 'ALAMATPKP2'
      Size = 100
    end
    object QuMasterKOTAPKP: TStringField
      FieldName = 'KOTAPKP'
      Size = 30
    end
    object QuMasterSales: TStringField
      FieldName = 'Sales'
    end
    object QuMasterKodeVls: TStringField
      FieldName = 'KodeVls'
      Size = 15
    end
    object QuMasterKodeExp: TStringField
      FieldName = 'KodeExp'
    end
    object QuMasterKodeTipe: TStringField
      FieldName = 'KodeTipe'
    end
    object QuMasterIsPpn: TBooleanField
      FieldName = 'IsPpn'
    end
    object QuMasterIsAktif: TWordField
      FieldName = 'IsAktif'
    end
    object QuMasterKind: TWordField
      FieldName = 'Kind'
    end
    object QuMasterContactP: TStringField
      FieldName = 'ContactP'
      Size = 100
    end
    object QuMasterAlamat1ContP: TStringField
      FieldName = 'Alamat1ContP'
      Size = 100
    end
    object QuMasterAlamat2ContP: TStringField
      FieldName = 'Alamat2ContP'
      Size = 100
    end
    object QuMasterKotaContP: TStringField
      FieldName = 'KotaContP'
      Size = 100
    end
    object QuMasterNegaraContP: TStringField
      FieldName = 'NegaraContP'
      Size = 30
    end
    object QuMasterTelpContP: TStringField
      FieldName = 'TelpContP'
      Size = 100
    end
    object QuMasterFaxContP: TStringField
      FieldName = 'FaxContP'
      Size = 100
    end
    object QuMasterEmailContP: TStringField
      FieldName = 'EmailContP'
      Size = 100
    end
    object QuMasterKODEPOSContP: TStringField
      FieldName = 'KODEPOSContP'
      Size = 7
    end
    object QuMasterHPContP: TStringField
      FieldName = 'HPContP'
      Size = 100
    end
    object QuMasterSyaratPenerimaan: TStringField
      FieldName = 'SyaratPenerimaan'
      Size = 8000
    end
    object QuMasterSyaratPembayaran: TStringField
      FieldName = 'SyaratPembayaran'
      Size = 8000
    end
    object QuMasterAgent: TStringField
      FieldName = 'Agent'
      Size = 40
    end
    object QuMasterAlamat1A: TStringField
      FieldName = 'Alamat1A'
      Size = 100
    end
    object QuMasterAlamat2A: TStringField
      FieldName = 'Alamat2A'
      Size = 100
    end
    object QuMasterKotaA: TStringField
      FieldName = 'KotaA'
      Size = 100
    end
    object QuMasterNegaraA: TStringField
      FieldName = 'NegaraA'
      Size = 30
    end
    object QuMasterContactA: TStringField
      FieldName = 'ContactA'
      Size = 100
    end
    object QuMasterTelpA: TStringField
      FieldName = 'TelpA'
      Size = 100
    end
    object QuMasterFaxA: TStringField
      FieldName = 'FaxA'
      Size = 100
    end
    object QuMasterEmailA: TStringField
      FieldName = 'EmailA'
      Size = 100
    end
    object QuMasterKODEPOSA: TStringField
      FieldName = 'KODEPOSA'
      Size = 7
    end
    object QuMasterHPA: TStringField
      FieldName = 'HPA'
      Size = 100
    end
    object QuMasterEmailContA: TStringField
      FieldName = 'EmailContA'
      Size = 100
    end
    object QuMasterMyID: TBytesField
      FieldName = 'MyID'
      ReadOnly = True
      Size = 8
    end
    object QuMasterPortOfLoading: TStringField
      FieldName = 'PortOfLoading'
      Size = 4000
    end
    object QuMasterCountryOfOrigin: TStringField
      FieldName = 'CountryOfOrigin'
      Size = 4000
    end
    object QuMasterALAMAT: TStringField
      FieldName = 'ALAMAT'
      ReadOnly = True
      Size = 201
    end
    object QuMasterNama: TStringField
      FieldName = 'Nama'
      ReadOnly = True
      Size = 122
    end
    object QuMasterNamaJenis: TStringField
      FieldName = 'NamaJenis'
      ReadOnly = True
      Size = 8
    end
    object QuMasterIsBeliJual: TBooleanField
      FieldName = 'IsBeliJual'
    end
    object QuMasterHargaKe: TWordField
      FieldName = 'HargaKe'
    end
    object QuMasterKetHarga: TStringField
      FieldName = 'KetHarga'
      ReadOnly = True
      Size = 31
    end
  end
  object dsMaster: TDataSource
    DataSet = QuMaster
    Left = 211
    Top = 141
  end
  object QuDetail: TADOQuery
    CacheSize = 2000
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 0
    DataSource = dsMaster
    Parameters = <
      item
        Name = 'KodeCustSupp'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = 'n'
      end>
    SQL.Strings = (
      
        'Select ContactId,Title,FirstName,MiddleName,LastName,JobTitle,Ph' +
        'one1,Phone2,'
      
        '                          Phone3,Email,Alamat,Photo,KodeCustSupp' +
        ','
      '       Title+'#39' '#39'+FirstName+'#39' '#39'+MiddleName+'#39' '#39'+LastName Nama'
      'From dbContact'
      'Where KodecustSupp=:kodecustSupp'
      'Order by ContactId'
      ''
      '')
    Left = 186
    Top = 173
    object QuDetailContactId: TIntegerField
      FieldName = 'ContactId'
    end
    object QuDetailTitle: TStringField
      FieldName = 'Title'
      Size = 15
    end
    object QuDetailFirstName: TStringField
      FieldName = 'FirstName'
    end
    object QuDetailMiddleName: TStringField
      FieldName = 'MiddleName'
    end
    object QuDetailLastName: TStringField
      FieldName = 'LastName'
    end
    object QuDetailJobTitle: TStringField
      FieldName = 'JobTitle'
      Size = 40
    end
    object QuDetailPhone1: TStringField
      FieldName = 'Phone1'
      Size = 40
    end
    object QuDetailPhone2: TStringField
      FieldName = 'Phone2'
      Size = 40
    end
    object QuDetailPhone3: TStringField
      FieldName = 'Phone3'
      Size = 40
    end
    object QuDetailEmail: TStringField
      FieldName = 'Email'
      Size = 40
    end
    object QuDetailAlamat: TMemoField
      FieldName = 'Alamat'
      BlobType = ftMemo
    end
    object QuDetailPhoto: TBlobField
      FieldName = 'Photo'
    end
    object QuDetailKodeCustSupp: TStringField
      FieldName = 'KodeCustSupp'
      Size = 15
    end
    object QuDetailNama: TStringField
      FieldName = 'Nama'
      ReadOnly = True
      Size = 78
    end
  end
  object dsDetail: TDataSource
    DataSet = QuDetail
    Left = 219
    Top = 173
  end
end
