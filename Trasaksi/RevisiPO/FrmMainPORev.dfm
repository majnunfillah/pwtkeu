object FrMainPORev: TFrMainPORev
  Left = 383
  Top = 147
  Width = 925
  Height = 476
  Caption = 'Purchase Order (PO) Revisi'
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
    Top = 48
    Width = 917
    Height = 394
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
    OnDblClick = ToolButton2Click
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
    Width = 917
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 917
      Height = 39
      ButtonHeight = 39
      ButtonWidth = 89
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
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Hint = 'Tambah Record'
        Caption = '&Revisi'
        ImageIndex = 0
        OnClick = ToolButton1Click
      end
      object ToolButton2: TToolButton
        Left = 89
        Top = 0
        Hint = 'Koreksi Record'
        Caption = '&Koreksi'
        ImageIndex = 1
        Visible = False
        OnClick = ToolButton2Click
      end
      object ToolButton3: TToolButton
        Left = 178
        Top = 0
        Hint = 'Hapus Record'
        Caption = '&Batal'
        ImageIndex = 13
        Visible = False
      end
      object ToolButton5: TToolButton
        Left = 267
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object ToolButton10: TToolButton
        Left = 275
        Top = 0
        Caption = 'Refresh'
        ImageIndex = 12
        OnClick = ToolButton10Click
      end
      object ToolButton7: TToolButton
        Left = 364
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 0
        Style = tbsSeparator
        Visible = False
      end
      object ToolButton6: TToolButton
        Left = 372
        Top = 0
        Caption = '  Lain - lain  '
        DropdownMenu = PopupMenu1
        ImageIndex = 10
        Style = tbsDropDown
        Visible = False
      end
      object ToolButton8: TToolButton
        Left = 474
        Top = 0
        Width = 8
        Caption = 'ToolButton8'
        ImageIndex = 9
        Style = tbsSeparator
      end
      object ToolButton9: TToolButton
        Left = 482
        Top = 0
        Caption = 'K&eluar'
        ImageIndex = 8
        OnClick = ToolButton9Click
      end
      object ToolButton11: TToolButton
        Left = 571
        Top = 0
        Caption = 'Tampil Valid'
        DropdownMenu = PopupMenu2
        ImageIndex = 7
        Style = tbsDropDown
        Visible = False
      end
      object ToolButton4: TToolButton
        Left = 673
        Top = 0
        Caption = 'Otorisasi'
        ImageIndex = 15
        OnClick = ToolButton4Click
      end
      object ToolButton12: TToolButton
        Left = 762
        Top = 0
        Caption = 'Batal Otorisasi'
        ImageIndex = 16
        OnClick = ToolButton12Click
      end
    end
  end
  object dxPageControl1: TdxPageControl
    Left = 0
    Top = 48
    Width = 917
    Height = 394
    ActivePage = dxTabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    HideButtons = False
    HotTrack = False
    MultiLine = False
    OwnerDraw = False
    ParentFont = False
    RaggedRight = False
    ScrollOpposite = False
    TabHeight = 0
    TabOrder = 2
    TabPosition = dxtpTop
    TabWidth = 0
    object dxTabSheet2: TdxTabSheet
      Caption = 'OS PO U/ Revisi'
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 917
        Height = 368
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        object cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsQUOS
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
          OnFocusedRecordChanged = cxGridDBTableView1FocusedRecordChanged
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.StyleSheet = FrSetForm.cxGridStyleHd
          object cxGridDBTableView1NoBukti: TcxGridDBColumn
            DataBinding.FieldName = 'NoBukti'
          end
          object cxGridDBTableView1Tanggal: TcxGridDBColumn
            DataBinding.FieldName = 'Tanggal'
          end
          object cxGridDBTableView1KodeSupp: TcxGridDBColumn
            DataBinding.FieldName = 'KodeSupp'
          end
          object cxGridDBTableView1NamaCustSupp: TcxGridDBColumn
            DataBinding.FieldName = 'NamaCustSupp'
          end
        end
        object cxGridDBTableView2: TcxGridDBTableView
          DataController.DataSource = dsQuOSDetail
          DataController.DetailKeyFieldNames = 'NoBukti'
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.KeyFieldNames = 'Urut'
          DataController.MasterKeyFieldNames = 'NoBukti'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0.00'
              Kind = skSum
              FieldName = 'TotalIDR'
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
          object cxGridDBTableView2KodeBrg: TcxGridDBColumn
            Caption = 'Kode Brg.'
            DataBinding.FieldName = 'KodeBrg'
          end
          object cxGridDBTableView2NamaBrg: TcxGridDBColumn
            Caption = 'Nama Brg.'
            DataBinding.FieldName = 'NamaBrg'
          end
          object cxGridDBTableView2Qnt: TcxGridDBColumn
            DataBinding.FieldName = 'Qnt'
          end
          object cxGridDBTableView2NoSat: TcxGridDBColumn
            DataBinding.FieldName = 'NoSat'
            Visible = False
          end
          object cxGridDBTableView2Isi: TcxGridDBColumn
            DataBinding.FieldName = 'Isi'
            Visible = False
          end
          object cxGridDBTableView2Satuan: TcxGridDBColumn
            DataBinding.FieldName = 'Satuan'
          end
          object cxGridDBTableView2Qnt2: TcxGridDBColumn
            Caption = 'Qnt Sat 2'
            DataBinding.FieldName = 'Qnt2'
          end
          object cxGridDBTableView2SatuanRoll: TcxGridDBColumn
            DataBinding.FieldName = 'SatuanRoll'
            Visible = False
          end
          object cxGridDBTableView2Harga: TcxGridDBColumn
            DataBinding.FieldName = 'Harga'
          end
          object cxGridDBTableView2DiscP1: TcxGridDBColumn
            Caption = 'Disc '
            DataBinding.FieldName = 'DiscP1'
          end
          object cxGridDBTableView2DiscRp1: TcxGridDBColumn
            Caption = 'Disc Rp'
            DataBinding.FieldName = 'DiscRp1'
          end
          object cxGridDBTableView2DiscTot: TcxGridDBColumn
            DataBinding.FieldName = 'DiscTot'
          end
          object cxGridDBTableView2TotalUSD: TcxGridDBColumn
            Caption = 'Total USD'
            DataBinding.FieldName = 'TotalUSD'
          end
          object cxGridDBTableView2TotalIDR: TcxGridDBColumn
            Caption = 'Total IDR'
            DataBinding.FieldName = 'TotalIDR'
          end
          object cxGridDBTableView2NDPP: TcxGridDBColumn
            Caption = 'DPP'
            DataBinding.FieldName = 'NDPP'
          end
          object cxGridDBTableView2NPPN: TcxGridDBColumn
            Caption = 'PPN'
            DataBinding.FieldName = 'NPPN'
          end
          object cxGridDBTableView2Beban: TcxGridDBColumn
            DataBinding.FieldName = 'Beban'
            Visible = False
          end
          object cxGridDBTableView2Total: TcxGridDBColumn
            DataBinding.FieldName = 'Total'
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
      end
    end
    object dxTabSheet1: TdxTabSheet
      Caption = 'Po Revisi'
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 917
        Height = 368
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
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
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.StyleSheet = FrSetForm.cxGridStyleHd
          object tvMasterNoBukti: TcxGridDBColumn
            Caption = 'No. Bukti'
            DataBinding.FieldName = 'NoBukti'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 150
          end
          object tvMasterTanggal: TcxGridDBColumn
            DataBinding.FieldName = 'Tanggal'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
          end
          object tvMasterNamaSupp: TcxGridDBColumn
            Caption = 'Supplier'
            DataBinding.FieldName = 'NamaCustSupp'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 280
          end
          object tvMasterDBColumn1: TcxGridDBColumn
            Caption = 'Authorisasi'
            DataBinding.FieldName = 'isAut'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DisplayUnchecked = 'False'
            Properties.ImmediatePost = True
            Properties.NullStyle = nssInactive
            Visible = False
            Width = 45
          end
          object tvMasterTotDPPRp: TcxGridDBColumn
            Caption = 'DPP Rp'
            DataBinding.FieldName = 'TotDPPRp'
            Visible = False
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 110
          end
          object tvMasterTotSubTotalRp: TcxGridDBColumn
            Caption = 'Sub Total Rp'
            DataBinding.FieldName = 'TotSubTotalRp'
            Visible = False
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 110
          end
          object tvMasterTotPPNRp: TcxGridDBColumn
            Caption = 'PPN Rp'
            DataBinding.FieldName = 'TotPPNRp'
            Visible = False
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 110
          end
          object tvMasterTotNetRp: TcxGridDBColumn
            Caption = 'Grand Total Rp'
            DataBinding.FieldName = 'TotNetRp'
            Visible = False
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 110
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
              FieldName = 'TotalIDR'
              Column = tvDetailTotalIDR
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
          object tvDetailDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'NoBukti'
          end
          object tvDetailDBColumn2: TcxGridDBColumn
            Caption = 'Tanggal Revisi'
            DataBinding.FieldName = 'TanggalRev'
          end
          object tvDetailDBColumn3: TcxGridDBColumn
            Caption = 'Revisi Ke '
            DataBinding.FieldName = 'RevisiKe'
          end
          object tvDetailKodeBrg: TcxGridDBColumn
            Caption = 'Kode Barang'
            DataBinding.FieldName = 'KodeBrg'
            HeaderAlignmentHorz = taCenter
            Width = 120
          end
          object tvDetailNamaBrg: TcxGridDBColumn
            Caption = 'Nama Barang'
            DataBinding.FieldName = 'NamaBrg'
            HeaderAlignmentHorz = taCenter
            Width = 250
          end
          object tvDetailSatuan: TcxGridDBColumn
            Caption = 'Sat'
            DataBinding.FieldName = 'Satuan'
            HeaderAlignmentHorz = taCenter
            Width = 40
          end
          object tvDetailQnt: TcxGridDBColumn
            DataBinding.FieldName = 'Qnt'
            HeaderAlignmentHorz = taCenter
            Width = 70
          end
          object tvDetailHarga: TcxGridDBColumn
            DataBinding.FieldName = 'Harga'
            HeaderAlignmentHorz = taCenter
            Width = 90
          end
          object tvDetailDiscTot: TcxGridDBColumn
            Caption = 'Diskon'
            DataBinding.FieldName = 'DiscTot'
            HeaderAlignmentHorz = taCenter
            Width = 90
          end
          object tvDetailTotalIDR: TcxGridDBColumn
            Caption = 'Sub Total Rp'
            DataBinding.FieldName = 'TotalIDR'
            HeaderAlignmentHorz = taCenter
            Width = 90
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = tvMaster
          object cxGrid1Level2: TcxGridLevel
            GridView = tvDetail
          end
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 475
    Top = 105
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
  object SaveDialog: TSaveDialog
    FileName = 'ExpGrid'
    Options = [ofOverwritePrompt, ofHideReadOnly]
    Left = 503
    Top = 104
  end
  object QuNavigator: TADOQuery
    CacheSize = 1000
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      
        'select NoBukti from dbBeli where month(tanggal)=1 and year(tangg' +
        'al)=1 and isbatal=0'
      'order by nobukti')
    Left = 186
    Top = 179
    object QuNavigatorNoBukti: TStringField
      FieldName = 'NoBukti'
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 443
    Top = 103
    object TampilValid: TMenuItem
      Caption = 'Tampil Valid'
      Checked = True
      OnClick = TampilValidClick
    end
    object TampilBatal: TMenuItem
      Caption = 'Tampil Batal'
      OnClick = TampilBatalClick
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
    Parameters = <>
    SQL.Strings = (
      'declare @Tahun int, @Bulan int'
      ''
      'select @Tahun=2009, @Bulan=9'
      ''
      
        'Select  a.NoBukti, Max(a.Tanggal)Tanggal,a.KodeSupp, b.NamaCustS' +
        'upp ,A.IsOtorisasi1, A.OtoUser1, A.TglOto1 '
      'From dbPORev a '
      'Left Outer Join dbCustSupp b On a.KodeSupp=b.KodeCustSupp'
      'where year(a.TanggalRev)=@Tahun and month(a.TanggalRev)=@Bulan '
      
        'Group By a.NoBukti,a.KodeSupp,b.NamaCustSupp ,A.IsOtorisasi1, A.' +
        'OtoUser1, A.TglOto1 '
      ''
      'order by NoBukti'
      ''
      ''
      ''
      '')
    Left = 24
    Top = 184
    object QuMasterNoBukti: TStringField
      FieldName = 'NoBukti'
    end
    object QuMasterTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuMasterKodeSupp: TStringField
      FieldName = 'KodeSupp'
      Size = 15
    end
    object QuMasterNamaCustSupp: TStringField
      FieldName = 'NamaCustSupp'
      Size = 100
    end
    object QuMasterIsOtorisasi1: TBooleanField
      FieldName = 'IsOtorisasi1'
    end
    object QuMasterOtoUser1: TStringField
      FieldName = 'OtoUser1'
      Size = 15
    end
    object QuMasterTglOto1: TDateTimeField
      FieldName = 'TglOto1'
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
        Size = 20
        Value = ''
      end>
    SQL.Strings = (
      'Select '#9'A.TanggalRev,A.RevisiKe, A.NoBukti, '#39#39' NoSPP, 0 UrutSPP,'
      #9'B.Urut, B.KodeBrg, H.NamaBrg, B.Qnt, B.NoSat, B.Isi, B.Satuan,'
      '        0.00 Qnt2, '#39#39' SatuanRoll, B.Harga,'
      '        B.DiscP DiscP1, B.DiscTot DiscRp1, B.DiscTot,'
      '        B.SubTotal TotalUSD, B.SubTotal TotalIDR, B.NDPP NDPP,'
      
        '        B.NPPN NPPN, B.BYAngkut Beban, B.SubTotal + B.BYAngkut T' +
        'otal'
      'From  dbPORev A '
      
        'Left Outer Join dbPORevDet B on A.NoBukti+Convert(Varchar(10),A.' +
        'RevisiKe)=B.NoBukti+Convert(Varchar(10),B.RevisiKe)'
      'Left Outer Join dbBarang H on H.KodeBrg=B.KodeBrg'
      'where A.NoBukti=:NoBukti'
      'order by A.NoBukti, RevisiKe'
      '')
    Left = 96
    Top = 184
    object QuDetail1NoBukti: TStringField
      FieldName = 'NoBukti'
    end
    object QuDetail1NoSPP: TStringField
      FieldName = 'NoSPP'
    end
    object QuDetail1UrutSPP: TIntegerField
      FieldName = 'UrutSPP'
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
    object QuDetail1Qnt2: TBCDField
      FieldName = 'Qnt2'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetail1SatuanRoll: TStringField
      FieldName = 'SatuanRoll'
      Size = 4
    end
    object QuDetail1Harga: TBCDField
      FieldName = 'Harga'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QuDetail1DiscP1: TBCDField
      FieldName = 'DiscP1'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetail1DiscRp1: TBCDField
      FieldName = 'DiscRp1'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QuDetail1DiscTot: TBCDField
      FieldName = 'DiscTot'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QuDetail1TotalUSD: TBCDField
      FieldName = 'TotalUSD'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuDetail1TotalIDR: TBCDField
      FieldName = 'TotalIDR'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuDetail1NDPP: TFloatField
      FieldName = 'NDPP'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object QuDetail1NPPN: TFloatField
      FieldName = 'NPPN'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object QuDetail1Beban: TBCDField
      FieldName = 'Beban'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetail1Total: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuDetail1TanggalRev: TDateTimeField
      FieldName = 'TanggalRev'
    end
    object QuDetail1RevisiKe: TIntegerField
      FieldName = 'RevisiKe'
    end
  end
  object DsDetail1: TDataSource
    DataSet = QuDetail1
    Left = 128
    Top = 184
  end
  object QuOS: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @Tahun int, @Bulan int'
      ''
      'select @Tahun=2009, @Bulan=9'
      ''
      
        'Select  a.NoBukti, Max(a.Tanggal)Tanggal,a.KodeSupp, b.NamaCustS' +
        'upp  '
      'From dbPO a '
      'Left Outer Join dbCustSupp b On a.KodeSupp=b.KodeCustSupp'
      
        'where NoBukti Not in(select NOPO from dbBeliDet) and Isotorisasi' +
        '1=1'
      'Group By a.NoBukti,a.KodeSupp,b.NamaCustSupp '
      ''
      'order by NoBukti'
      ''
      ''
      ''
      '')
    Left = 24
    Top = 224
    object QuOSNoBukti: TStringField
      FieldName = 'NoBukti'
    end
    object QuOSTanggal: TDateTimeField
      FieldName = 'Tanggal'
      ReadOnly = True
    end
    object QuOSKodeSupp: TStringField
      FieldName = 'KodeSupp'
      Size = 15
    end
    object QuOSNamaCustSupp: TStringField
      FieldName = 'NamaCustSupp'
      Size = 100
    end
  end
  object dsQUOS: TDataSource
    DataSet = QuOS
    Left = 56
    Top = 224
  end
  object QuOSDetail: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    DataSource = dsQUOS
    Parameters = <
      item
        Name = 'NoBukti'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = 'n'
      end>
    SQL.Strings = (
      'Select '#9'A.Tanggal, B.NoBukti, '#39#39' NoSPP, 0 UrutSPP,'
      #9'B.Urut, B.KodeBrg, H.NamaBrg, B.Qnt, B.NoSat, B.Isi, B.Satuan,'
      '        0.00 Qnt2, '#39#39' SatuanRoll, B.Harga,'
      '        B.DiscP DiscP1, B.DiscTot DiscRp1, B.DiscTot,'
      '        B.SubTotal TotalUSD, B.SubTotal TotalIDR, B.NDPP NDPP,'
      
        '        B.NPPN NPPN, B.BYAngkut Beban, B.SubTotal + B.BYAngkut T' +
        'otal'
      'From  dbPODet B '
      'Left Outer Join dbPO A on A.NoBukti=B.NoBukti'
      'Left Outer Join dbBarang H on H.KodeBrg=B.KodeBrg'
      'where B.NoBukti=:NoBukti'
      'order by B.NoBukti'
      '')
    Left = 96
    Top = 224
    object StringField5: TStringField
      FieldName = 'NoBukti'
    end
    object StringField6: TStringField
      FieldName = 'NoSPP'
    end
    object IntegerField1: TIntegerField
      FieldName = 'UrutSPP'
    end
    object IntegerField2: TIntegerField
      FieldName = 'Urut'
    end
    object StringField7: TStringField
      FieldName = 'KodeBrg'
      Size = 25
    end
    object StringField8: TStringField
      FieldName = 'NamaBrg'
      Size = 100
    end
    object BCDField1: TBCDField
      FieldName = 'Qnt'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object WordField1: TWordField
      FieldName = 'NoSat'
    end
    object BCDField2: TBCDField
      FieldName = 'Isi'
      Precision = 18
      Size = 2
    end
    object StringField9: TStringField
      FieldName = 'Satuan'
      Size = 5
    end
    object BCDField3: TBCDField
      FieldName = 'Qnt2'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object StringField10: TStringField
      FieldName = 'SatuanRoll'
      Size = 4
    end
    object BCDField4: TBCDField
      FieldName = 'Harga'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object BCDField5: TBCDField
      FieldName = 'DiscP1'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object BCDField6: TBCDField
      FieldName = 'DiscRp1'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object BCDField7: TBCDField
      FieldName = 'DiscTot'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object BCDField8: TBCDField
      FieldName = 'TotalUSD'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object BCDField9: TBCDField
      FieldName = 'TotalIDR'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object FloatField1: TFloatField
      FieldName = 'NDPP'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object FloatField2: TFloatField
      FieldName = 'NPPN'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object BCDField10: TBCDField
      FieldName = 'Beban'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object BCDField11: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuOSDetailTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
  end
  object dsQuOSDetail: TDataSource
    DataSet = QuOSDetail
    Left = 128
    Top = 224
  end
end
