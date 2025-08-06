object FrMainJadwalProduksi: TFrMainJadwalProduksi
  Left = 205
  Top = 153
  Width = 1032
  Height = 479
  Caption = 'Jadwal Produksi'
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
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 41
    Width = 1024
    Height = 404
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'nobukti'
    ShowSummaryFooter = True
    SummaryGroups = <
      item
        DefaultGroup = True
        SummaryItems = <
          item
            SummaryField = 'satuan'
            SummaryFormat = 'SubTotal'
          end
          item
            SummaryField = 'qnt'
            SummaryFormat = ',0.00'
            SummaryType = cstSum
          end
          item
            SummaryField = 'harga'
            SummaryFormat = ',0.00'
            SummaryType = cstSum
          end
          item
            SummaryField = 'discrptot'
            SummaryFormat = ',0.00'
            SummaryType = cstSum
          end
          item
            SummaryField = 'Hrgnett'
            SummaryFormat = ',0.00'
            SummaryType = cstSum
          end
          item
            SummaryField = 'Total'
            SummaryFormat = ',0.00'
            SummaryType = cstSum
          end>
        Name = 'dxDBGrid1SummaryGroup1'
      end>
    SummarySeparator = ', '
    Align = alClient
    Color = 14540253
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnMouseUp = dxDBGrid1MouseUp
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'Tahoma'
    BandFont.Style = []
    Filter.Criteria = {00000000}
    FixedBandLineColor = clBlack
    GridLineColor = clBlack
    GroupPanelColor = clMoneyGreen
    GroupPanelFontColor = clBlack
    GroupNodeColor = clMoneyGreen
    GroupNodeTextColor = clBlack
    HeaderColor = 11441504
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clBlack
    HeaderFont.Height = -12
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    HideSelectionColor = 14216171
    HideSelectionTextColor = clBlack
    HighlightColor = 9629163
    HighlightTextColor = clBlack
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCollapsedReload, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'Tahoma'
    PreviewFont.Style = []
    RowFooterColor = 10865880
    ShowRowFooter = True
    object dxDBGrid1GroupNoBukti: TdxDBGridMaskColumn
      Caption = 'Group No Bukti'
      HeaderAlignment = taCenter
      Sorted = csUp
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'GroupNoBukti'
      GroupIndex = 0
    end
    object dxDBGrid1Kodebrg: TdxDBGridMaskColumn
      Caption = 'KODE'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Kodebrg'
    end
    object dxDBGrid1Namabrg: TdxDBGridMaskColumn
      Caption = 'DESKRIPSI'
      HeaderAlignment = taCenter
      Sorted = csUp
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Namabrg'
    end
    object dxDBGrid1Satuan: TdxDBGridMaskColumn
      Caption = 'SATUAN'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Satuan'
    end
    object dxDBGrid1Harga: TdxDBGridMaskColumn
      Caption = 'HARGA'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Harga'
    end
    object dxDBGrid1DiscP1: TdxDBGridMaskColumn
      Caption = 'DISC 1'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DiscP1'
    end
    object dxDBGrid1DiscP2: TdxDBGridMaskColumn
      Caption = 'DISC 2'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DiscP2'
    end
    object dxDBGrid1discP3: TdxDBGridMaskColumn
      Caption = 'DISC 3'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'discP3'
    end
    object dxDBGrid1DiscP4: TdxDBGridMaskColumn
      Caption = 'DISC 4'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DiscP4'
    end
    object dxDBGrid1Qnt: TdxDBGridMaskColumn
      Caption = 'QTY'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Qnt'
    end
    object dxDBGrid1Ndpp: TdxDBGridMaskColumn
      Caption = 'DPP'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Ndpp'
    end
    object dxDBGrid1NPpn: TdxDBGridMaskColumn
      Caption = 'PPN'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NPpn'
    end
    object dxDBGrid1NNet: TdxDBGridMaskColumn
      Caption = 'TOTAL'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NNet'
    end
    object dxDBGrid1NamaGdg: TdxDBGridMaskColumn
      Caption = 'GUDANG'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'kodegdg'
    end
    object dxDBGrid1Kodelokasi: TdxDBGridMaskColumn
      Caption = 'LOKASI'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Kodelokasi'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object ToolBar1: TToolBar
      Left = 949
      Top = 0
      Width = 75
      Height = 41
      Align = alClient
      ButtonHeight = 39
      ButtonWidth = 52
      Color = clBtnFace
      Customizable = True
      EdgeBorders = []
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Images = DM.ImageList2
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowCaptions = True
      ShowHint = True
      TabOrder = 0
      object ToolButton9: TToolButton
        Left = 0
        Top = 0
        Caption = 'K&eluar'
        ImageIndex = 8
        OnClick = ToolButton9Click
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 949
      Height = 41
      Align = alLeft
      TabOrder = 1
      object Label42: TLabel
        Left = 14
        Top = 12
        Width = 46
        Height = 16
        Caption = 'Tanggal'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 214
        Top = 12
        Width = 21
        Height = 16
        Caption = '  -  '
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 605
        Top = 12
        Width = 33
        Height = 16
        Caption = 'Mesin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 445
        Top = 12
        Width = 38
        Height = 16
        Caption = 'Proses'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object TglAwal: TDateEdit
        Left = 68
        Top = 9
        Width = 141
        Height = 22
        CheckOnExit = True
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NumGlyphs = 2
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object TglAkhir: TDateEdit
        Left = 238
        Top = 9
        Width = 141
        Height = 22
        CheckOnExit = True
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NumGlyphs = 2
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object kodeMSn: TEdit
        Left = 651
        Top = 9
        Width = 78
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clWhite
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 100
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        OnKeyDown = kodeMSnKeyDown
      end
      object KodePRS: TEdit
        Left = 491
        Top = 9
        Width = 78
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clWhite
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 100
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        OnEnter = KodePRSEnter
        OnExit = KodePRSExit
      end
      object BitBtn2: TBitBtn
        Left = 812
        Top = 8
        Width = 75
        Height = 26
        Caption = '&Tampil'
        TabOrder = 4
        OnClick = BitBtn2Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          555555555555555555555555555555555555555555FF55555555555559055555
          55555555577FF5555555555599905555555555557777F5555555555599905555
          555555557777FF5555555559999905555555555777777F555555559999990555
          5555557777777FF5555557990599905555555777757777F55555790555599055
          55557775555777FF5555555555599905555555555557777F5555555555559905
          555555555555777FF5555555555559905555555555555777FF55555555555579
          05555555555555777FF5555555555557905555555555555777FF555555555555
          5990555555555555577755555555555555555555555555555555}
        NumGlyphs = 2
      end
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 1024
    Height = 404
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    LookAndFeel.Kind = lfFlat
    RootLevelOptions.DetailTabsPosition = dtpTop
    OnActiveTabChanged = cxGrid1ActiveTabChanged
    object tvMaster: TcxGridDBTableView
      DataController.DataSource = DsMaster
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0'
          Kind = skCount
          FieldName = 'NoBukti'
        end
        item
          Format = ',0.00'
          Kind = skSum
          FieldName = 'RpJumlah'
        end
        item
          Format = ',0.00'
          Kind = skSum
          FieldName = 'RpDiskon'
        end
        item
          Format = ',0.00'
          Kind = skSum
          FieldName = 'RpDPP'
        end
        item
          Format = ',0.00'
          FieldName = 'RpPPN'
        end
        item
          Format = ',0.00'
          Kind = skSum
          FieldName = 'RpNet'
        end>
      DataController.Summary.SummaryGroups = <>
      OnFocusedRecordChanged = tvMasterFocusedRecordChanged
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.Indicator = True
      Styles.StyleSheet = FrSetForm.cxGridStyleHd
      object tvMasterTANGGAL: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'TANGGAL'
        HeaderAlignmentHorz = taCenter
        Width = 75
      end
      object tvMasterJAMAWAL: TcxGridDBColumn
        Caption = 'Jam Awal'
        DataBinding.FieldName = 'JAMAWAL'
        HeaderAlignmentHorz = taCenter
        Width = 75
      end
      object tvMasterJAMAKHIR: TcxGridDBColumn
        Caption = 'Jam Akhir'
        DataBinding.FieldName = 'JAMAKHIR'
        HeaderAlignmentHorz = taCenter
        Width = 75
      end
      object tvMasterKodePrs: TcxGridDBColumn
        Caption = 'Kode Proses'
        DataBinding.FieldName = 'KodePrs'
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object tvMasterKetProses: TcxGridDBColumn
        Caption = 'Proses'
        DataBinding.FieldName = 'KetProses'
        HeaderAlignmentHorz = taCenter
        Width = 200
      end
      object tvMasterKODEMSN: TcxGridDBColumn
        Caption = 'Kode Mesin'
        DataBinding.FieldName = 'KODEMSN'
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object tvMasterKetMesin: TcxGridDBColumn
        Caption = 'Mesin'
        DataBinding.FieldName = 'KetMesin'
        HeaderAlignmentHorz = taCenter
        Width = 200
      end
      object tvMasterNOSPK: TcxGridDBColumn
        Caption = 'No. SPK'
        DataBinding.FieldName = 'NOSPK'
        HeaderAlignmentHorz = taCenter
        Width = 125
      end
    end
    object tvDetail: TcxGridDBTableView
      DataController.DataSource = DsDetail1
      DataController.DetailKeyFieldNames = 'NoBukti'
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.KeyFieldNames = 'Urut'
      DataController.MasterKeyFieldNames = 'NoBukti'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0.00'
          Kind = skSum
          FieldName = 'Total'
        end
        item
          Format = ',0.00'
          Kind = skSum
          FieldName = 'QNT'
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.StyleSheet = FrSetForm.cxGridStyleDt
      object tvDetailNoBukti: TcxGridDBColumn
        DataBinding.FieldName = 'NoBukti'
        Visible = False
      end
      object tvDetailUrut: TcxGridDBColumn
        DataBinding.FieldName = 'Urut'
        Visible = False
      end
      object tvDetailKodeBrg: TcxGridDBColumn
        Caption = 'Kode Barang'
        DataBinding.FieldName = 'KodeBrg'
        Width = 120
      end
      object tvDetailNamaBrg: TcxGridDBColumn
        Caption = 'Nama Barang'
        DataBinding.FieldName = 'NamaBrg'
        Width = 300
      end
      object tvDetailSatuan: TcxGridDBColumn
        Caption = 'Sat'
        DataBinding.FieldName = 'Satuan'
        Width = 40
      end
      object tvDetailQnt: TcxGridDBColumn
        DataBinding.FieldName = 'Qnt'
        Width = 100
      end
      object tvDetailNoSat: TcxGridDBColumn
        DataBinding.FieldName = 'NoSat'
        Visible = False
      end
      object tvDetailIsi: TcxGridDBColumn
        DataBinding.FieldName = 'Isi'
        Visible = False
      end
    end
    object tvMaster2: TcxGridDBTableView
      DataController.DataSource = DsMaster2
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.Indicator = True
      Styles.Header = FrSetForm.cxStyle1
      object tvMaster2TANGGAL: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'TANGGAL'
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object tvMaster2KodePrs: TcxGridDBColumn
        DataBinding.FieldName = 'KodePrs'
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object tvMaster2KODEMSN: TcxGridDBColumn
        DataBinding.FieldName = 'KODEMSN'
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object tvMaster2NOSPK: TcxGridDBColumn
        Caption = 'No. SPK'
        DataBinding.FieldName = 'NOSPK'
        HeaderAlignmentHorz = taCenter
      end
      object tvMaster2KetProses: TcxGridDBColumn
        DataBinding.FieldName = 'KetProses'
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object tvMaster2KetMesin: TcxGridDBColumn
        DataBinding.FieldName = 'KetMesin'
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object tvMaster2Jam0: TcxGridDBColumn
        Caption = '0'
        DataBinding.FieldName = 'Jam0'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object tvMaster2Jam1: TcxGridDBColumn
        Caption = '1'
        DataBinding.FieldName = 'Jam1'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object tvMaster2Jam2: TcxGridDBColumn
        Caption = '2'
        DataBinding.FieldName = 'Jam2'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object tvMaster2Jam3: TcxGridDBColumn
        Caption = '3'
        DataBinding.FieldName = 'Jam3'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object tvMaster2Jam4: TcxGridDBColumn
        Caption = '4'
        DataBinding.FieldName = 'Jam4'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object tvMaster2Jam5: TcxGridDBColumn
        Caption = '5'
        DataBinding.FieldName = 'Jam5'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object tvMaster2Jam6: TcxGridDBColumn
        Caption = '6'
        DataBinding.FieldName = 'Jam6'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object tvMaster2Jam7: TcxGridDBColumn
        Caption = '7'
        DataBinding.FieldName = 'Jam7'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object tvMaster2Jam8: TcxGridDBColumn
        Caption = '8'
        DataBinding.FieldName = 'Jam8'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object tvMaster2Jam9: TcxGridDBColumn
        Caption = '9'
        DataBinding.FieldName = 'Jam9'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object tvMaster2Jam10: TcxGridDBColumn
        Caption = '10'
        DataBinding.FieldName = 'Jam10'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object tvMaster2Jam11: TcxGridDBColumn
        Caption = '11'
        DataBinding.FieldName = 'Jam11'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object tvMaster2Jam12: TcxGridDBColumn
        Caption = '12'
        DataBinding.FieldName = 'Jam12'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object tvMaster2Jam13: TcxGridDBColumn
        Caption = '13'
        DataBinding.FieldName = 'Jam13'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object tvMaster2Jam14: TcxGridDBColumn
        Caption = '14'
        DataBinding.FieldName = 'Jam14'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object tvMaster2Jam15: TcxGridDBColumn
        Caption = '15'
        DataBinding.FieldName = 'Jam15'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object tvMaster2Jam16: TcxGridDBColumn
        Caption = '16'
        DataBinding.FieldName = 'Jam16'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object tvMaster2Jam17: TcxGridDBColumn
        Caption = '17'
        DataBinding.FieldName = 'Jam17'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object tvMaster2Jam18: TcxGridDBColumn
        Caption = '18'
        DataBinding.FieldName = 'Jam18'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object tvMaster2Jam19: TcxGridDBColumn
        Caption = '19'
        DataBinding.FieldName = 'Jam19'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object tvMaster2Jam20: TcxGridDBColumn
        Caption = '20'
        DataBinding.FieldName = 'Jam20'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object tvMaster2Jam21: TcxGridDBColumn
        Caption = '21'
        DataBinding.FieldName = 'Jam21'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object tvMaster2Jam22: TcxGridDBColumn
        Caption = '22'
        DataBinding.FieldName = 'Jam22'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object tvMaster2Jam23: TcxGridDBColumn
        Caption = '23'
        DataBinding.FieldName = 'Jam23'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
    end
    object tvMaster3: TcxGridDBBandedTableView
      DataController.DataSource = DsMaster2
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsView.GroupByBox = False
      Bands = <
        item
        end
        item
          Caption = '0'
        end
        item
          Caption = '1'
        end
        item
          Caption = '2'
        end
        item
          Caption = '3'
        end
        item
          Caption = '4'
        end
        item
          Caption = '5'
        end
        item
          Caption = '6'
        end
        item
          Caption = '7'
        end
        item
          Caption = '8'
        end
        item
          Caption = '9'
        end
        item
          Caption = '10'
        end
        item
          Caption = '11'
        end
        item
          Caption = '12'
        end
        item
          Caption = '13'
        end
        item
          Caption = '14'
        end
        item
          Caption = '15'
        end
        item
          Caption = '16'
        end
        item
          Caption = '17'
        end
        item
          Caption = '18'
        end
        item
          Caption = '19'
        end
        item
          Caption = '20'
        end
        item
          Caption = '21'
        end
        item
          Caption = '22'
        end
        item
          Caption = '23'
        end>
      object tvMaster3TANGGAL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TANGGAL'
        Visible = False
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvMaster3KodePrs: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KodePrs'
        Visible = False
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvMaster3KODEMSN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODEMSN'
        Visible = False
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvMaster3NOSPK: TcxGridDBBandedColumn
        Caption = 'No. SPK'
        DataBinding.FieldName = 'NOSPK'
        Width = 125
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster3KetProses: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KetProses'
        Visible = False
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvMaster3KetMesin: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KetMesin'
        Visible = False
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvMaster3Jam0A: TcxGridDBBandedColumn
        Caption = '0'
        DataBinding.FieldName = 'Jam0A'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster3Jam0B: TcxGridDBBandedColumn
        Caption = '30'
        DataBinding.FieldName = 'Jam0B'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMaster3Jam1A: TcxGridDBBandedColumn
        Caption = '0'
        DataBinding.FieldName = 'Jam1A'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster3Jam1B: TcxGridDBBandedColumn
        Caption = '30'
        DataBinding.FieldName = 'Jam1B'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMaster3Jam2A: TcxGridDBBandedColumn
        Caption = '0'
        DataBinding.FieldName = 'Jam2A'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster3Jam2B: TcxGridDBBandedColumn
        Caption = '30'
        DataBinding.FieldName = 'Jam2B'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMaster3Jam3A: TcxGridDBBandedColumn
        Caption = '0'
        DataBinding.FieldName = 'Jam3A'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster3Jam3B: TcxGridDBBandedColumn
        Caption = '30'
        DataBinding.FieldName = 'Jam3B'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMaster3Jam4A: TcxGridDBBandedColumn
        Caption = '0'
        DataBinding.FieldName = 'Jam4A'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster3Jam4B: TcxGridDBBandedColumn
        Caption = '30'
        DataBinding.FieldName = 'Jam4B'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 5
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMaster3Jam5A: TcxGridDBBandedColumn
        Caption = '0'
        DataBinding.FieldName = 'Jam5A'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster3Jam5B: TcxGridDBBandedColumn
        Caption = '30'
        DataBinding.FieldName = 'Jam5B'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 6
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMaster3Jam6A: TcxGridDBBandedColumn
        Caption = '0'
        DataBinding.FieldName = 'Jam6A'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 7
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster3Jam6B: TcxGridDBBandedColumn
        Caption = '30'
        DataBinding.FieldName = 'Jam6B'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 7
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMaster3Jam7A: TcxGridDBBandedColumn
        Caption = '0'
        DataBinding.FieldName = 'Jam7A'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 8
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster3Jam7B: TcxGridDBBandedColumn
        Caption = '30'
        DataBinding.FieldName = 'Jam7B'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 8
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMaster3Jam8A: TcxGridDBBandedColumn
        Caption = '0'
        DataBinding.FieldName = 'Jam8A'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 9
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster3Jam8B: TcxGridDBBandedColumn
        Caption = '30'
        DataBinding.FieldName = 'Jam8B'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 9
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMaster3Jam9A: TcxGridDBBandedColumn
        Caption = '0'
        DataBinding.FieldName = 'Jam9A'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 10
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster3Jam9B: TcxGridDBBandedColumn
        Caption = '30'
        DataBinding.FieldName = 'Jam9B'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 10
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMaster3Jam10A: TcxGridDBBandedColumn
        Caption = '0'
        DataBinding.FieldName = 'Jam10A'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 11
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster3Jam10B: TcxGridDBBandedColumn
        Caption = '30'
        DataBinding.FieldName = 'Jam10B'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 11
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMaster3Jam11A: TcxGridDBBandedColumn
        Caption = '0'
        DataBinding.FieldName = 'Jam11A'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 12
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster3Jam11B: TcxGridDBBandedColumn
        Caption = '30'
        DataBinding.FieldName = 'Jam11B'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 12
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMaster3Jam12A: TcxGridDBBandedColumn
        Caption = '0'
        DataBinding.FieldName = 'Jam12A'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 13
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster3Jam12B: TcxGridDBBandedColumn
        Caption = '30'
        DataBinding.FieldName = 'Jam12B'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 13
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMaster3Jam13A: TcxGridDBBandedColumn
        Caption = '0'
        DataBinding.FieldName = 'Jam13A'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 14
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster3Jam13B: TcxGridDBBandedColumn
        Caption = '30'
        DataBinding.FieldName = 'Jam13B'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 14
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMaster3Jam14A: TcxGridDBBandedColumn
        Caption = '0'
        DataBinding.FieldName = 'Jam14A'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 15
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster3Jam14B: TcxGridDBBandedColumn
        Caption = '30'
        DataBinding.FieldName = 'Jam14B'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 15
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMaster3Jam15A: TcxGridDBBandedColumn
        Caption = '0'
        DataBinding.FieldName = 'Jam15A'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 16
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster3Jam15B: TcxGridDBBandedColumn
        Caption = '30'
        DataBinding.FieldName = 'Jam15B'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 16
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMaster3Jam16A: TcxGridDBBandedColumn
        Caption = '0'
        DataBinding.FieldName = 'Jam16A'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 17
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster3Jam16B: TcxGridDBBandedColumn
        Caption = '30'
        DataBinding.FieldName = 'Jam16B'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 17
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMaster3Jam17A: TcxGridDBBandedColumn
        Caption = '0'
        DataBinding.FieldName = 'Jam17A'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 18
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster3Jam17B: TcxGridDBBandedColumn
        Caption = '30'
        DataBinding.FieldName = 'Jam17B'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 18
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMaster3Jam18A: TcxGridDBBandedColumn
        Caption = '0'
        DataBinding.FieldName = 'Jam18A'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 19
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster3Jam18B: TcxGridDBBandedColumn
        Caption = '30'
        DataBinding.FieldName = 'Jam18B'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 19
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMaster3Jam19A: TcxGridDBBandedColumn
        Caption = '0'
        DataBinding.FieldName = 'Jam19A'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 20
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster3Jam19B: TcxGridDBBandedColumn
        Caption = '30'
        DataBinding.FieldName = 'Jam19B'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 20
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMaster3Jam20A: TcxGridDBBandedColumn
        Caption = '0'
        DataBinding.FieldName = 'Jam20A'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 21
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster3Jam20B: TcxGridDBBandedColumn
        Caption = '30'
        DataBinding.FieldName = 'Jam20B'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 21
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMaster3Jam21A: TcxGridDBBandedColumn
        Caption = '0'
        DataBinding.FieldName = 'Jam21A'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 22
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster3Jam21B: TcxGridDBBandedColumn
        Caption = '30'
        DataBinding.FieldName = 'Jam21B'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 22
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMaster3Jam22A: TcxGridDBBandedColumn
        Caption = '0'
        DataBinding.FieldName = 'Jam22A'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 23
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster3Jam22B: TcxGridDBBandedColumn
        Caption = '30'
        DataBinding.FieldName = 'Jam22B'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 23
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMaster3Jam23A: TcxGridDBBandedColumn
        Caption = '0'
        DataBinding.FieldName = 'Jam23A'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 24
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster3Jam23B: TcxGridDBBandedColumn
        Caption = '30'
        DataBinding.FieldName = 'Jam23B'
        OnCustomDrawCell = tvMaster2Jam0CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 24
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      Caption = 'Jadwal Mesin'
      GridView = tvMaster
    end
    object cxGrid1Level2: TcxGridLevel
      Caption = 'Jadwal Harian'
      GridView = tvMaster3
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 475
    Top = 145
    object ExportExcel1: TMenuItem
      Caption = 'Export Excel'
      ImageIndex = 5
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ShowGrid1: TMenuItem
      Caption = 'Show Grid'
      Checked = True
    end
    object ShowHeader1: TMenuItem
      Caption = 'Show Header'
      Checked = True
    end
    object Show1: TMenuItem
      Caption = 'Show Footer'
      Checked = True
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object AutoFilter1: TMenuItem
      Caption = 'Auto Filter'
      ImageIndex = 14
    end
    object MultiSelect1: TMenuItem
      Caption = 'Multi Select'
    end
  end
  object SaveDialog: TSaveDialog
    FileName = 'ExpGrid'
    Options = [ofOverwritePrompt, ofHideReadOnly]
    Left = 503
    Top = 128
  end
  object Sp_Batal: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'sp_BatalBlr;1'
    Parameters = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@mode'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@kodet'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = '@nobukti'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@idUser'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@tgl'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 529
    Top = 128
  end
  object PopupMenu2: TPopupMenu
    Left = 459
    Top = 111
    object TampilValid: TMenuItem
      Caption = 'Tampil Valid'
      Checked = True
    end
    object TampilBatal: TMenuItem
      Caption = 'Tampil Batal'
    end
  end
  object DsMaster: TDataSource
    DataSet = QuMaster
    Left = 56
    Top = 184
  end
  object QuMaster: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <
      item
        Name = '0'
        Size = -1
        Value = Null
      end
      item
        Name = '1'
        Size = -1
        Value = Null
      end
      item
        Name = '2'
        Size = -1
        Value = Null
      end
      item
        Name = '3'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'declare @TglAwal datetime = :0, @TglAkhir datetime = :1, @KodePr' +
        's varchar(20) = :2, @KodeMsn varchar(20) = :3'
      
        'select A.TANGGAL, A.JAMAWAL, A.JAMAKHIR, A.KodePrs, A.KODEMSN, A' +
        '.NOSPK  '
      #9#9', B.Keterangan KetProses, C.Ket KetMesin'
      'from DBJADWALPRD A'
      'left outer join DBPRoses B on B.KodePrs = A.KodePrs'
      
        'left outer join DBMesin C on C.KodeMsn = A.KODEMSN and C.KodePrs' +
        ' = A.KodePrs'
      'where A.TANGGAL between @TglAwal and @TglAkhir'
      #9#9'and A.KodePrs like '#39'%'#39' + @KodePrs + '#39'%'#39
      #9#9'and A.KODEMSN like '#39'%'#39' +  @KodeMsn + '#39'%'#39
      ''
      'order by A.KodePrs, A.KodeMsn, A.Tanggal, A.JamAwal')
    Left = 24
    Top = 184
    object QuMasterTANGGAL: TDateTimeField
      FieldName = 'TANGGAL'
    end
    object QuMasterJAMAWAL: TDateTimeField
      FieldName = 'JAMAWAL'
      DisplayFormat = 'hh:mm'
    end
    object QuMasterJAMAKHIR: TDateTimeField
      FieldName = 'JAMAKHIR'
      DisplayFormat = 'hh:mm'
    end
    object QuMasterKodePrs: TStringField
      FieldName = 'KodePrs'
    end
    object QuMasterKODEMSN: TStringField
      FieldName = 'KODEMSN'
      Size = 15
    end
    object QuMasterNOSPK: TStringField
      FieldName = 'NOSPK'
    end
    object QuMasterKetProses: TStringField
      FieldName = 'KetProses'
      Size = 50
    end
    object QuMasterKetMesin: TStringField
      FieldName = 'KetMesin'
      Size = 50
    end
  end
  object QuDetail1: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    DataSource = DsMaster
    Parameters = <
      item
        Name = 'NoBukti'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = 'n'
      end>
    SQL.Strings = (
      'Select '#9'B.NoBukti, '
      
        #9'B.Urut, B.KodeBrg, H.NamaBrg, B.Qnt, B.NoSat, B.Isi Isi, B.Satu' +
        'an Satuan'
      'From dbSPKDet B '
      'Left Outer join dbBarang H on H.KodeBrg=b.KodeBrg'
      'where B.NoBukti=:NoBukti'
      '   '
      'order by B.NoBukti, B.Urut'
      ''
      '')
    Left = 96
    Top = 184
    object QuDetail1NoBukti: TStringField
      FieldName = 'NoBukti'
      Size = 30
    end
    object QuDetail1Urut: TIntegerField
      FieldName = 'Urut'
    end
    object QuDetail1KodeBrg: TStringField
      FieldName = 'KodeBrg'
      Size = 25
    end
    object QuDetail1NamaBrg: TStringField
      FieldName = 'NamaBrg'
      Size = 100
    end
    object QuDetail1Qnt: TBCDField
      FieldName = 'Qnt'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetail1NoSat: TWordField
      FieldName = 'NoSat'
    end
    object QuDetail1Isi: TBCDField
      FieldName = 'Isi'
      Precision = 18
      Size = 2
    end
    object QuDetail1Satuan: TStringField
      FieldName = 'Satuan'
      Size = 5
    end
  end
  object DsDetail1: TDataSource
    DataSet = QuDetail1
    Left = 128
    Top = 184
  end
  object frxReport1: TfrxReport
    Version = '4.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39461.6751602199
    ReportOptions.LastChange = 39463.4044384722
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Memo12OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  If <frxDBCetakPO."TipeBayar"> = 0 then'
      '     Memo12.Text := '#39'Tunai'#39
      '  else'
      
        '     Memo12.Text := '#39'Kredit '#39'+Inttostr(<frxDBCetakPO."Hari">)+ '#39 +
        ' Hari / '#39'+FormatDatetime('#39'DD MMM YYY'#39',<frxDBCetakPO."TglJatuhTem' +
        'po">);'
      'end;'
      ''
      'procedure Memo49OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <LINE#> Mod 2 =0 then'
      '     Memo49.color:=clInfoBk'
      '  else'
      '     Memo49.color:=clWhite;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    Left = 250
    Top = 330
    Datasets = <>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      PaperWidth = 215.9
      PaperHeight = 139.7
      PaperSize = 256
      LeftMargin = 5
      RightMargin = 5
      TopMargin = 5
      BottomMargin = 5
      object PageHeader1: TfrxPageHeader
        Height = 166.29932
        Top = 18.89765
        Width = 778.205227
        object Picture1: TfrxPictureView
          Width = 64.25201
          Height = 68.03154
          ShowHint = False
          DataField = 'LOGO'
          DataSet = FrMainKoreksiDK.frxDataPerusahaan
          DataSetName = 'frxDataPerusahaan'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          KeepAspectRatio = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Left = 68.03154
          Width = 321.26005
          Height = 18.89765
          ShowHint = False
          DataField = 'NAMA'
          DataSet = FrMainKoreksiDK.frxDataPerusahaan
          DataSetName = 'frxDataPerusahaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8 = (
            '[frxDataPerusahaan."NAMA"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 68.03154
          Top = 18.89765
          Width = 321.26005
          Height = 56.69295
          ShowHint = False
          DataSet = FrMainKoreksiDK.frxDataPerusahaan
          DataSetName = 'frxDataPerusahaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataPerusahaan."ALAMAT"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 83.14966
          Top = 117.16543
          Width = 139.84261
          Height = 18.89765
          ShowHint = False
          DataSet = FrMainKoreksiDK.frxDataPerusahaan
          DataSetName = 'frxDataPerusahaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetakPO."NoPO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 3.77953
          Top = 117.16543
          Width = 71.81107
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'NO. PO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 75.5906
          Top = 117.16543
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 257.00804
          Top = 117.16543
          Width = 79.37013
          Height = 18.89765
          OnBeforePrint = 'Memo12OnBeforePrint'
          ShowHint = False
          AutoWidth = True
          DataSet = FrMainKoreksiDK.frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetakPO."TipeBayar"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 491.3389
          Width = 71.81107
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nomor ')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 563.14997
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 491.3389
          Top = 18.89765
          Width = 71.81107
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Tanggal')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 563.14997
          Top = 18.89765
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 570.70903
          Width = 158.74026
          Height = 18.89765
          ShowHint = False
          AutoWidth = True
          DataField = 'nobukti'
          DataSet = FrMainKoreksiDK.frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetakPO."nobukti"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          Left = 570.70903
          Top = 18.89765
          Width = 143.62214
          Height = 18.89765
          ShowHint = False
          DataField = 'Tanggal'
          DataSet = FrMainKoreksiDK.frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetakPO."Tanggal"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 423.30736
          Top = 56.69295
          Width = 68.03154
          Height = 18.89765
          ShowHint = False
          Memo.UTF8 = (
            'Pemasok : ')
        end
        object Memo18: TfrxMemoView
          Left = 491.3389
          Top = 56.69295
          Width = 287.24428
          Height = 18.89765
          ShowHint = False
          AutoWidth = True
          DataSet = FrMainKoreksiDK.frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBCetakPO."NamaSupp"],  ([frxDBCetakPO."KodeSupp"])')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          Left = 491.3389
          Top = 75.5906
          Width = 287.24428
          Height = 56.69295
          ShowHint = False
          DataField = 'Alamat'
          DataSet = FrMainKoreksiDK.frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetakPO."Alamat"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 222.99227
          Top = 79.37013
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DataSet = FrMainKoreksiDK.frxDataPerusahaan
          DataSetName = 'frxDataPerusahaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'NOTA PEMBELIAN')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Top = 139.84261
          Width = 778.58318
          Height = 26.45671
          ShowHint = False
          Color = 9955024
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 30.23624
          Top = 143.62214
          Width = 124.72449
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'KODE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 3.77953
          Top = 143.62214
          Width = 26.45671
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'NO .')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 154.96073
          Top = 143.62214
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DESKRIPSI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 340.1577
          Top = 143.62214
          Width = 52.91342
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'SATUAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 393.07112
          Top = 143.62214
          Width = 71.81107
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'HARGA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 468.66172
          Top = 143.62214
          Width = 45.35436
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DISC 1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 514.01608
          Top = 143.62214
          Width = 41.57483
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DISC 2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 555.59091
          Top = 143.62214
          Width = 45.35436
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DISC 3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 600.94527
          Top = 143.62214
          Width = 37.7953
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DISC 4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 676.53587
          Top = 143.62214
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'SUB TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 638.74057
          Top = 143.62214
          Width = 37.7953
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'QTY')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 124.72449
        Top = 325.03958
        Width = 778.205227
        object Memo44: TfrxMemoView
          Width = 778.58318
          Height = 26.45671
          ShowHint = False
          Color = 9955024
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 566.9295
          Top = 3.77953000000002
          Width = 79.37013
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 638.74057
          Top = 3.77953000000002
          Width = 37.7953
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBCetakPO."Qnt">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 676.53587
          Top = 3.77953000000002
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          DataSet = FrMainKoreksiDK.frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBCetakPO."nDPP">,MasterData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 566.9295
          Top = 30.23624
          Width = 188.9765
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            'PPN 10%')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 676.53587
          Top = 30.23624
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          DataSet = FrMainKoreksiDK.frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBCetakPO."nPPN">,MasterData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 566.9295
          Top = 60.47248
          Width = 188.9765
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            'Total')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 676.53587
          Top = 60.47248
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          DataSet = FrMainKoreksiDK.frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBCetakPO."nNet">,MasterData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 79.37013
          Top = 3.77953000000002
          Width = 328.81911
          Height = 37.7953
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          LineSpacing = 6
          Memo.UTF8 = (
            '[Terbilang]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 117.16543
          Top = 45.35436
          Width = 113.3859
          Height = 18.89765
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            'APK')
        end
        object Memo56: TfrxMemoView
          Left = 117.16543
          Top = 94.48825
          Width = 113.3859
          Height = 18.89765
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            '(..........................)')
        end
        object Memo57: TfrxMemoView
          Left = 7.55906
          Top = 3.77953000000002
          Width = 68.03154
          Height = 18.89765
          ShowHint = False
          Memo.UTF8 = (
            'Terbilang')
        end
        object Memo58: TfrxMemoView
          Left = 3.77953
          Top = 45.35436
          Width = 109.60637
          Height = 18.89765
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            'ADM. Hutang')
        end
        object Memo59: TfrxMemoView
          Left = 3.77953
          Top = 94.48825
          Width = 109.60637
          Height = 18.89765
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            '(..........................)')
        end
        object Memo60: TfrxMemoView
          Left = 347.71676
          Top = 45.35436
          Width = 113.3859
          Height = 18.89765
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            'Gudang')
        end
        object Memo61: TfrxMemoView
          Left = 347.71676
          Top = 94.48825
          Width = 113.3859
          Height = 18.89765
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            '(..........................)')
        end
        object Memo62: TfrxMemoView
          Left = 234.33086
          Top = 45.35436
          Width = 109.60637
          Height = 18.89765
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            'Pembelian')
        end
        object Memo63: TfrxMemoView
          Left = 234.33086
          Top = 94.48825
          Width = 109.60637
          Height = 18.89765
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            '(..........................)')
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.89765
        ParentFont = False
        Top = 245.66945
        Width = 778.205227
        DataSet = FrMainKoreksiDK.frxDBDataset1
        DataSetName = 'frxDBCetakPO'
        RowCount = 0
        object Memo49: TfrxMemoView
          Width = 778.58318
          Height = 18.89765
          OnBeforePrint = 'Memo49OnBeforePrint'
          ShowHint = False
          Color = clInfoBk
          WordWrap = False
        end
        object Memo33: TfrxMemoView
          Left = 3.77953
          Width = 22.67718
          Height = 15.11812
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[LINE#].')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 30.23624
          Width = 124.72449
          Height = 15.11812
          ShowHint = False
          DataField = 'Kodebrg'
          DataSet = FrMainKoreksiDK.frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          Memo.UTF8 = (
            '[frxDBCetakPO."Kodebrg"]')
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 154.96073
          Width = 185.19697
          Height = 15.11812
          ShowHint = False
          DataField = 'Namabrg'
          DataSet = FrMainKoreksiDK.frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          Memo.UTF8 = (
            '[frxDBCetakPO."Namabrg"]')
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 340.1577
          Width = 52.91342
          Height = 15.11812
          ShowHint = False
          DataField = 'Satuan'
          DataSet = FrMainKoreksiDK.frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBCetakPO."Satuan"]')
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 393.07112
          Width = 71.81107
          Height = 15.11812
          ShowHint = False
          DataField = 'Harga'
          DataSet = FrMainKoreksiDK.frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakPO."Harga"]')
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 468.66172
          Width = 45.35436
          Height = 15.11812
          ShowHint = False
          DataField = 'DiscP1'
          DataSet = FrMainKoreksiDK.frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakPO."DiscP1"]')
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 514.01608
          Width = 41.57483
          Height = 15.11812
          ShowHint = False
          DataField = 'DiscP2'
          DataSet = FrMainKoreksiDK.frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakPO."DiscP2"]')
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 555.59091
          Width = 45.35436
          Height = 15.11812
          ShowHint = False
          DataField = 'discP3'
          DataSet = FrMainKoreksiDK.frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakPO."discP3"]')
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 600.94527
          Width = 37.7953
          Height = 15.11812
          ShowHint = False
          DataField = 'DiscP4'
          DataSet = FrMainKoreksiDK.frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakPO."DiscP4"]')
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 676.53587
          Width = 102.04731
          Height = 15.11812
          ShowHint = False
          DataField = 'Ndpp'
          DataSet = FrMainKoreksiDK.frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakPO."Ndpp"]')
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 638.74057
          Width = 37.7953
          Height = 15.11812
          ShowHint = False
          DataField = 'Qnt'
          DataSet = FrMainKoreksiDK.frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakPO."Qnt"]')
          WordWrap = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    FileName = 'C:\DOCUME~1\admin\LOCALS~1\Temp\fr48.tmp'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 304
    Top = 326
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBCetakPO'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 220
    Top = 330
  end
  object frxDataPerusahaan: TfrxDBDataset
    UserName = 'frxDataPerusahaan'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 224
    Top = 360
  end
  object QuBppB: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Declare @Bulan int, @Tahun int,@periode varchar(6)'
      ''
      'Select @Bulan=4, @Tahun=2013'
      
        'Set @Periode=Cast(@tahun as varchar(4))+Case when @bulan<10 then' +
        ' '#39'0'#39' else '#39#39' end+Cast(@bulan as varchar(2))'
      ''
      
        'Select A.KODEBRG, A.NAMABRG, a.SAT1, Isnull(B.SaldoQnt,0) StockR' +
        ', isnull(QntPO,0) OutPO, isnull(D.QntSisa,0) OutSPK,'
      
        '       (Isnull(B.SaldoQnt,0)-isnull(QntPO,0))+isnull(D.QntSisa,0' +
        ') StockAV,'
      
        '       ROW_NUMBER() Over (Partition by Case when @bulan<10 then ' +
        #39'0'#39' else '#39#39' end+Cast(@bulan as varchar(2))+Cast(@Tahun as varcha' +
        'r(4)) Order by A.Kodebrg) RowNum'
      'From DBBARANG A'
      '     left Outer join (Select KODEBRG, SUM(SALDOQNT) SaldoQnt'
      '                      from DBSTOCKBRG B'
      '                      where BULAN=@Bulan and TAHUN=@Tahun'
      
        '                      Group by KODEBRG) B on B.KODEBRG=A.KODEBRG' +
        ' '
      
        '     Left Outer Join (Select y.KODEBRG, Sum(y.Qnt-ISNULL(z.QntBe' +
        'li,0)) QntPO'
      '                      from DBSO x'
      
        '                           left outer join (Select x.NOBUKTI, x.' +
        'URUT, x.KODEBRG, '
      
        '                                                   Sum(Case when' +
        ' x.NOSAT=1 then x.QNT '
      
        '                                                            --wh' +
        'en x.NOSAT=2 then x.QNT*x.ISI'
      
        '                                                            when' +
        ' x.NOSAT=2 then x.QNT'
      
        '                                                            else' +
        ' 0'
      '                                                       end) Qnt'
      '                                            From DBSODET x'
      
        '                                            Group by x.NOBUKTI, ' +
        'x.URUT, x.KODEBRG) y on y.Nobukti=x.Nobukti'
      
        '                           Left Outer join (Select y.kodebrg,x.N' +
        'oSO,x.UrutSO,'
      
        '                                                   Sum(Case when' +
        ' y.NOSAT=1 then y.QNT '
      
        '                                                            when' +
        ' y.NOSAT=2 then y.QNT2 '
      
        '                                                            else' +
        ' 0'
      
        '                                                       end) QntB' +
        'eli'
      '                                            from dbSPPDet x'
      
        '                                                  left Outer joi' +
        'n dbSPBDet y on y.NoSPP=x.NoBukti and y.UrutSPP=x.Urut'
      
        '                                            where y.KodeBrg is n' +
        'ot null'
      
        '                                            Group by y.kodebrg,x' +
        '.NoSO,x.UrutSO) z on z.NoSO=y.NOBUKTI and z.UrutSO=y.URUT'
      
        '                      where cast(year(x.Tanggal) as varchar(4))+' +
        'Case when month(x.tanggal)<10 then '#39'0'#39' else '#39#39' end+Cast(month(x.' +
        'Tanggal) as varchar(2))<=@Periode'
      '                      Group by y.KODEBRG/*,ISNULL(z.QntBeli,0)'
      '                      Having Sum(Case when y.NOSAT=1 then y.QNT '
      
        '                                                 when y.NOSAT=2 ' +
        'then y.QNT*y.ISI '
      '                                                 else 0'
      
        '                                            end)-ISNULL(z.QntBel' +
        'i,0)>0*/) C on C.KODEBRG=A.KODEBRG'
      
        '     left Outer join (Select x.KODEBRGJ,  SUM(isnull(x.SisaSPK,0' +
        ')) QntSisa'
      '                      From vwOutSPK_HasilP x'
      
        '                      where cast(year(x.Tanggal) as varchar(4))+' +
        'Case when month(x.tanggal)<10 then '#39'0'#39' else '#39#39' end+Cast(month(x.' +
        'Tanggal) as varchar(2))<=@Periode'
      '                      Group by x.KODEBRGJ'
      
        '                      Having SUM(x.SisaSPK)>0) D on D.KODEBRGJ=A' +
        '.KODEBRG'
      'Where A.KODEGRP In ('#39'BJ'#39')'
      'Order by RowNum')
    Left = 760
    Top = 240
    object QuBppBKODEBRG: TStringField
      FieldName = 'KODEBRG'
      Size = 25
    end
    object QuBppBNAMABRG: TStringField
      FieldName = 'NAMABRG'
      Size = 100
    end
    object QuBppBSAT1: TStringField
      FieldName = 'SAT1'
      Size = 5
    end
    object QuBppBStockR: TBCDField
      FieldName = 'StockR'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuBppBOutPO: TBCDField
      FieldName = 'OutPO'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
    end
    object QuBppBOutSPK: TBCDField
      FieldName = 'OutSPK'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuBppBStockAV: TBCDField
      FieldName = 'StockAV'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuBppBRowNum: TLargeintField
      FieldName = 'RowNum'
      ReadOnly = True
    end
  end
  object dsBppB: TDataSource
    DataSet = QuBppB
    Left = 792
    Top = 240
  end
  object QuMaster2: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <
      item
        Name = '0'
        Size = -1
        Value = Null
      end
      item
        Name = '1'
        Size = -1
        Value = Null
      end
      item
        Name = '2'
        Size = -1
        Value = Null
      end
      item
        Name = '3'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'declare @TglAwal datetime = :0, @TglAkhir datetime = :1, @KodePr' +
        's varchar(20) = :2, @KodeMsn varchar(20) = :3'
      'select A.TANGGAL, A.KodePrs, A.KODEMSN, A.NOSPK'
      #9#9', B.Keterangan KetProses, C.Ket KetMesin'
      
        #9#9', case when 0 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPART' +
        '(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DAT' +
        'EPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam0A'
      
        #9#9', case when 1 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPART' +
        '(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DAT' +
        'EPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam0B'
      
        #9#9', case when 2 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPART' +
        '(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DAT' +
        'EPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam1A'
      
        #9#9', case when 3 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPART' +
        '(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DAT' +
        'EPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam1B'
      
        #9#9', case when 4 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPART' +
        '(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DAT' +
        'EPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam2A'
      
        #9#9', case when 5 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPART' +
        '(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DAT' +
        'EPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam2B'
      
        #9#9', case when 6 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPART' +
        '(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DAT' +
        'EPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam3A'
      
        #9#9', case when 7 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPART' +
        '(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DAT' +
        'EPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam3B'
      
        #9#9', case when 8 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPART' +
        '(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DAT' +
        'EPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam4A'
      
        #9#9', case when 9 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPART' +
        '(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DAT' +
        'EPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam4B'
      
        #9#9', case when 10 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam5A'
      
        #9#9', case when 11 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam5B'
      
        #9#9', case when 12 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam6A'
      
        #9#9', case when 13 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam6B'
      
        #9#9', case when 14 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam7A'
      
        #9#9', case when 15 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam7B'
      
        #9#9', case when 16 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam8A'
      
        #9#9', case when 17 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam8B'
      
        #9#9', case when 18 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam9A'
      
        #9#9', case when 19 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam9B'
      
        #9#9', case when 20 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam10A'
      
        #9#9', case when 21 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam10B'
      
        #9#9', case when 22 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam11A'
      
        #9#9', case when 23 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam11B'
      
        #9#9', case when 24 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam12A'
      
        #9#9', case when 25 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam12B'
      
        #9#9', case when 26 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam13A'
      
        #9#9', case when 27 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam13B'
      
        #9#9', case when 28 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam14A'
      
        #9#9', case when 29 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam14B'
      
        #9#9', case when 30 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam15A'
      
        #9#9', case when 31 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam15B'
      
        #9#9', case when 32 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam16A'
      
        #9#9', case when 33 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam16B'
      
        #9#9', case when 34 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam17A'
      
        #9#9', case when 35 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam17B'
      
        #9#9', case when 36 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam18A'
      
        #9#9', case when 37 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam18B'
      
        #9#9', case when 38 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam19A'
      
        #9#9', case when 39 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam19B'
      
        #9#9', case when 40 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam20A'
      
        #9#9', case when 41 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam20B'
      
        #9#9', case when 42 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam21A'
      
        #9#9', case when 43 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam21B'
      
        #9#9', case when 44 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam22A'
      
        #9#9', case when 45 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam22B'
      
        #9#9', case when 46 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam23A'
      
        #9#9', case when 47 between ((DATEPART(hour, A.JAMAWAL)*60)+DATEPAR' +
        'T(MINUTE, A.JAMAWAL))/30 and ((DATEPART(hour, A.JAMAKHIR)*60)+DA' +
        'TEPART(MINUTE, A.JAMAKHIR))/30-1  then 1 else 0 end Jam23B'
      ''
      'from DBJADWALPRD A'
      'left outer join DBPRoses B on B.KodePrs = A.KodePrs'
      
        'left outer join DBMesin C on C.KodeMsn = A.KODEMSN and C.KodePrs' +
        ' = A.KodePrs'
      'where A.TANGGAL = @TglAwal'
      #9#9'and A.KodePrs like '#39'%'#39' + @KodePrs + '#39'%'#39
      #9#9'and A.KODEMSN like '#39'%'#39' +  @KodeMsn + '#39'%'#39
      'order by A.KodePrs, A.KodeMsn'
      ''
      ''
      '')
    Left = 24
    Top = 224
    object QuMaster2TANGGAL: TDateTimeField
      FieldName = 'TANGGAL'
    end
    object QuMaster2KodePrs: TStringField
      FieldName = 'KodePrs'
    end
    object QuMaster2KODEMSN: TStringField
      FieldName = 'KODEMSN'
      Size = 15
    end
    object QuMaster2NOSPK: TStringField
      FieldName = 'NOSPK'
    end
    object QuMaster2KetProses: TStringField
      FieldName = 'KetProses'
      Size = 50
    end
    object QuMaster2KetMesin: TStringField
      FieldName = 'KetMesin'
      Size = 50
    end
    object QuMaster2Jam0A: TIntegerField
      FieldName = 'Jam0A'
      ReadOnly = True
    end
    object QuMaster2Jam0B: TIntegerField
      FieldName = 'Jam0B'
      ReadOnly = True
    end
    object QuMaster2Jam1A: TIntegerField
      FieldName = 'Jam1A'
      ReadOnly = True
    end
    object QuMaster2Jam1B: TIntegerField
      FieldName = 'Jam1B'
      ReadOnly = True
    end
    object QuMaster2Jam2A: TIntegerField
      FieldName = 'Jam2A'
      ReadOnly = True
    end
    object QuMaster2Jam2B: TIntegerField
      FieldName = 'Jam2B'
      ReadOnly = True
    end
    object QuMaster2Jam3A: TIntegerField
      FieldName = 'Jam3A'
      ReadOnly = True
    end
    object QuMaster2Jam3B: TIntegerField
      FieldName = 'Jam3B'
      ReadOnly = True
    end
    object QuMaster2Jam4A: TIntegerField
      FieldName = 'Jam4A'
      ReadOnly = True
    end
    object QuMaster2Jam4B: TIntegerField
      FieldName = 'Jam4B'
      ReadOnly = True
    end
    object QuMaster2Jam5A: TIntegerField
      FieldName = 'Jam5A'
      ReadOnly = True
    end
    object QuMaster2Jam5B: TIntegerField
      FieldName = 'Jam5B'
      ReadOnly = True
    end
    object QuMaster2Jam6A: TIntegerField
      FieldName = 'Jam6A'
      ReadOnly = True
    end
    object QuMaster2Jam6B: TIntegerField
      FieldName = 'Jam6B'
      ReadOnly = True
    end
    object QuMaster2Jam7A: TIntegerField
      FieldName = 'Jam7A'
      ReadOnly = True
    end
    object QuMaster2Jam7B: TIntegerField
      FieldName = 'Jam7B'
      ReadOnly = True
    end
    object QuMaster2Jam8A: TIntegerField
      FieldName = 'Jam8A'
      ReadOnly = True
    end
    object QuMaster2Jam8B: TIntegerField
      FieldName = 'Jam8B'
      ReadOnly = True
    end
    object QuMaster2Jam9A: TIntegerField
      FieldName = 'Jam9A'
      ReadOnly = True
    end
    object QuMaster2Jam9B: TIntegerField
      FieldName = 'Jam9B'
      ReadOnly = True
    end
    object QuMaster2Jam10A: TIntegerField
      FieldName = 'Jam10A'
      ReadOnly = True
    end
    object QuMaster2Jam10B: TIntegerField
      FieldName = 'Jam10B'
      ReadOnly = True
    end
    object QuMaster2Jam11A: TIntegerField
      FieldName = 'Jam11A'
      ReadOnly = True
    end
    object QuMaster2Jam11B: TIntegerField
      FieldName = 'Jam11B'
      ReadOnly = True
    end
    object QuMaster2Jam12A: TIntegerField
      FieldName = 'Jam12A'
      ReadOnly = True
    end
    object QuMaster2Jam12B: TIntegerField
      FieldName = 'Jam12B'
      ReadOnly = True
    end
    object QuMaster2Jam13A: TIntegerField
      FieldName = 'Jam13A'
      ReadOnly = True
    end
    object QuMaster2Jam13B: TIntegerField
      FieldName = 'Jam13B'
      ReadOnly = True
    end
    object QuMaster2Jam14A: TIntegerField
      FieldName = 'Jam14A'
      ReadOnly = True
    end
    object QuMaster2Jam14B: TIntegerField
      FieldName = 'Jam14B'
      ReadOnly = True
    end
    object QuMaster2Jam15A: TIntegerField
      FieldName = 'Jam15A'
      ReadOnly = True
    end
    object QuMaster2Jam15B: TIntegerField
      FieldName = 'Jam15B'
      ReadOnly = True
    end
    object QuMaster2Jam16A: TIntegerField
      FieldName = 'Jam16A'
      ReadOnly = True
    end
    object QuMaster2Jam16B: TIntegerField
      FieldName = 'Jam16B'
      ReadOnly = True
    end
    object QuMaster2Jam17A: TIntegerField
      FieldName = 'Jam17A'
      ReadOnly = True
    end
    object QuMaster2Jam17B: TIntegerField
      FieldName = 'Jam17B'
      ReadOnly = True
    end
    object QuMaster2Jam18A: TIntegerField
      FieldName = 'Jam18A'
      ReadOnly = True
    end
    object QuMaster2Jam18B: TIntegerField
      FieldName = 'Jam18B'
      ReadOnly = True
    end
    object QuMaster2Jam19A: TIntegerField
      FieldName = 'Jam19A'
      ReadOnly = True
    end
    object QuMaster2Jam19B: TIntegerField
      FieldName = 'Jam19B'
      ReadOnly = True
    end
    object QuMaster2Jam20A: TIntegerField
      FieldName = 'Jam20A'
      ReadOnly = True
    end
    object QuMaster2Jam20B: TIntegerField
      FieldName = 'Jam20B'
      ReadOnly = True
    end
    object QuMaster2Jam21A: TIntegerField
      FieldName = 'Jam21A'
      ReadOnly = True
    end
    object QuMaster2Jam21B: TIntegerField
      FieldName = 'Jam21B'
      ReadOnly = True
    end
    object QuMaster2Jam22A: TIntegerField
      FieldName = 'Jam22A'
      ReadOnly = True
    end
    object QuMaster2Jam22B: TIntegerField
      FieldName = 'Jam22B'
      ReadOnly = True
    end
    object QuMaster2Jam23A: TIntegerField
      FieldName = 'Jam23A'
      ReadOnly = True
    end
    object QuMaster2Jam23B: TIntegerField
      FieldName = 'Jam23B'
      ReadOnly = True
    end
  end
  object DsMaster2: TDataSource
    DataSet = QuMaster2
    Left = 56
    Top = 224
  end
end
