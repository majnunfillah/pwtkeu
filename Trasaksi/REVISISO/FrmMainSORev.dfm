object FrMainSORev: TFrMainSORev
  Left = 40
  Top = 216
  Width = 925
  Height = 476
  Caption = 'Sales Order (SO) Revisi'
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
    Height = 401
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
        Left = 0
        Top = 0
        Width = 8
        Caption = 'ToolButton8'
        ImageIndex = 9
        Wrap = True
        Style = tbsSeparator
      end
      object ToolButton9: TToolButton
        Left = 0
        Top = 47
        Caption = 'K&eluar'
        ImageIndex = 8
        OnClick = ToolButton9Click
      end
      object ToolButton11: TToolButton
        Left = 89
        Top = 47
        Caption = 'Tampil Valid'
        DropdownMenu = PopupMenu2
        ImageIndex = 7
        Style = tbsDropDown
        Visible = False
      end
      object ToolButton4: TToolButton
        Left = 191
        Top = 47
        Caption = 'Otorisasi'
        ImageIndex = 15
        OnClick = ToolButton4Click
      end
      object ToolButton12: TToolButton
        Left = 280
        Top = 47
        Caption = 'Batal Otorisasi'
        ImageIndex = 16
        OnClick = ToolButton12Click
      end
      object ToolButton13: TToolButton
        Left = 369
        Top = 47
        Caption = 'Cetak Revisi'
        ImageIndex = 17
        OnClick = ToolButton13Click
      end
    end
  end
  object dxPageControl1: TdxPageControl
    Left = 0
    Top = 48
    Width = 917
    Height = 401
    ActivePage = dxTabSheet1
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
      Caption = 'OS SO U/ Revisi'
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 917
        Height = 375
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
            DataBinding.FieldName = 'KodeCust'
            Width = 99
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
      Caption = 'SO Revisi'
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 917
        Height = 375
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
      
        'Select  a.NoBukti, Max(a.Tanggal)Tanggal,a.KodeCust, b.NamaCustS' +
        'upp ,A.IsOtorisasi1, A.OtoUser1, A.TglOto1 '
      'From dbSORevisi a '
      'Left Outer Join dbCustSupp b On a.KodeCust=b.KodeCustSupp'
      'where year(a.TglRevisi)=@Tahun and month(a.TglRevisi)=@Bulan '
      
        'Group By a.NoBukti,a.KodeCust,b.NamaCustSupp ,A.IsOtorisasi1, A.' +
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
      Size = 30
    end
    object QuMasterTanggal: TDateTimeField
      FieldName = 'Tanggal'
      ReadOnly = True
    end
    object QuMasterKodeCust: TStringField
      FieldName = 'KodeCust'
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
        Size = 30
        Value = ''
      end>
    SQL.Strings = (
      
        'Select '#9'A.TglRevisi TanggalRev,A.RevisiKe, A.NoBukti, '#39#39' NoSPP, ' +
        '0 UrutSPP,'
      #9'B.Urut, B.KodeBrg, H.NamaBrg, B.Qnt, B.NoSat, B.Isi, B.Satuan,'
      '        0.00 Qnt2, '#39#39' SatuanRoll, B.Harga,'
      '        B.DiscTot DiscRp1, B.DiscTot,'
      '        B.SubTotal TotalUSD, B.SubTotal TotalIDR, B.NDPP NDPP,'
      
        '        B.NPPN NPPN, B.BYAngkut Beban, B.SubTotal + B.BYAngkut T' +
        'otal'
      'From  dbSORevisi A '
      
        'Left Outer Join dbSORevisiDet B on A.NoBukti+Convert(Varchar(10)' +
        ',A.RevisiKe)=B.NoBukti+Convert(Varchar(10),B.RevisiKe)'
      'Left Outer Join dbBarang H on H.KodeBrg=B.KodeBrg'
      'where A.NoBukti=:NoBukti'
      'order by A.NoBukti, RevisiKe'
      '')
    Left = 96
    Top = 184
    object QuDetail1TanggalRev: TDateTimeField
      FieldName = 'TanggalRev'
    end
    object QuDetail1RevisiKe: TIntegerField
      FieldName = 'RevisiKe'
    end
    object QuDetail1NoBukti: TStringField
      FieldName = 'NoBukti'
      Size = 30
    end
    object QuDetail1NoSPP: TStringField
      FieldName = 'NoSPP'
      ReadOnly = True
      Size = 1
    end
    object QuDetail1UrutSPP: TIntegerField
      FieldName = 'UrutSPP'
      ReadOnly = True
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
      DisplayFormat = ',0.0000'
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
      ReadOnly = True
      DisplayFormat = ',0.0000'
      Precision = 2
      Size = 2
    end
    object QuDetail1SatuanRoll: TStringField
      FieldName = 'SatuanRoll'
      ReadOnly = True
      Size = 1
    end
    object QuDetail1Harga: TBCDField
      FieldName = 'Harga'
      DisplayFormat = ',0.0000'
      Precision = 18
    end
    object QuDetail1DiscRp1: TBCDField
      FieldName = 'DiscRp1'
      DisplayFormat = ',0.0000'
      Precision = 18
      Size = 2
    end
    object QuDetail1DiscTot: TBCDField
      FieldName = 'DiscTot'
      DisplayFormat = ',0.0000'
      Precision = 18
      Size = 2
    end
    object QuDetail1TotalUSD: TBCDField
      FieldName = 'TotalUSD'
      ReadOnly = True
      DisplayFormat = ',0.0000'
      Precision = 32
      Size = 6
    end
    object QuDetail1TotalIDR: TBCDField
      FieldName = 'TotalIDR'
      ReadOnly = True
      DisplayFormat = ',0.0000'
      Precision = 32
      Size = 6
    end
    object QuDetail1NDPP: TFloatField
      FieldName = 'NDPP'
      ReadOnly = True
      DisplayFormat = ',0.0000'
    end
    object QuDetail1NPPN: TFloatField
      FieldName = 'NPPN'
      ReadOnly = True
      DisplayFormat = ',0.0000'
    end
    object QuDetail1Beban: TBCDField
      FieldName = 'Beban'
      DisplayFormat = ',0.0000'
      Precision = 18
      Size = 2
    end
    object QuDetail1Total: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = ',0.0000'
      Precision = 32
      Size = 6
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
      
        'Select  a.NoBukti, Max(a.Tanggal)Tanggal,a.KodeCust, b.NamaCustS' +
        'upp  '
      'From dbSO a '
      'Left Outer Join dbCustSupp b On a.KodeCust=b.KodeCustSupp'
      
        'where NoBukti Not in(select NOSO from dbSPPDet) and Isotorisasi1' +
        '=1'
      'Group By a.NoBukti,a.KodeCust,b.NamaCustSupp '
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
      Size = 30
    end
    object QuOSTanggal: TDateTimeField
      FieldName = 'Tanggal'
      ReadOnly = True
    end
    object QuOSKodeCust: TStringField
      FieldName = 'KodeCust'
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
        Size = 30
        Value = 'n'
      end>
    SQL.Strings = (
      'Select '#9'A.Tanggal, B.NoBukti, '#39#39' NoSPP, 0 UrutSPP,'
      #9'B.Urut, B.KodeBrg, H.NamaBrg, B.Qnt, B.NoSat, B.Isi, B.Satuan,'
      '        0.00 Qnt2, '#39#39' SatuanRoll, B.Harga,'
      '         B.DiscTot DiscRp1, B.DiscTot,'
      '        B.SubTotal TotalUSD, B.SubTotal TotalIDR, B.NDPP NDPP,'
      
        '        B.NPPN NPPN, B.BYAngkut Beban, B.SubTotal + B.BYAngkut T' +
        'otal'
      'From  dbSODet B '
      'Left Outer Join dbSO A on A.NoBukti=B.NoBukti'
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
  object frxReport1: TfrxReport
    Version = '4.5'
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39461.6751602199
    ReportOptions.LastChange = 40156.6107137847
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 274
    Top = 274
    Datasets = <>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      PaperWidth = 215.9
      PaperHeight = 279.4
      PaperSize = 1
      LeftMargin = 10
      RightMargin = 10
      TopMargin = 10
      BottomMargin = 10
      object PageHeader1: TfrxPageHeader
        Height = 260.96058818
        Top = 64.629963
        Width = 740.409927
        Stretched = True
        object Memo35: TfrxMemoView
          Left = 37.79527559
          Top = 94.48818898
          Width = 340.15748031
          Height = 83.1496063
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 483.77952756
          Top = 94.48818898
          Width = 253.22834646
          Height = 83.1496063
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 483.77952756
          Width = 253.22834646
          Height = 83.1496063
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 491.33858268
          Top = 3.77952756000001
          Width = 94.48825
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'P.O. Number')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 491.33858268
          Top = 22.67716535
          Width = 94.48825
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'P.O. Date')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 491.33858268
          Top = 41.57480315
          Width = 94.48825
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Phone')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 491.33858268
          Top = 60.47244094
          Width = 94.48825
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Contact')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 491.33858268
          Top = 98.26771654
          Width = 245.66929134
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBCetak."NAMAPERSH"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 491.33858268
          Top = 117.16535433
          Width = 245.66929134
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."ALM1PERSH"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 491.33858268
          Top = 136.06299213
          Width = 245.66929134
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[<frxDBCetak."ALM2PERSH">+'#39', '#39'+<frxDBCetak."KOTAPERSH">]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 585.826771653543
          Top = 3.77952756000001
          Width = 151.181102362205
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBCetak."NoBukti"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 585.826771653543
          Top = 22.67716535
          Width = 151.181102362205
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Tanggal"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 585.826771653543
          Top = 41.57480315
          Width = 151.181102362205
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."TELPONSUPP"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 585.826771653543
          Top = 60.47244094
          Width = 151.181102362205
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."CONTACTSUPP"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 491.33858268
          Top = 154.96062992
          Width = 245.66929134
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NEGPERSH"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 45.35433071
          Top = 98.26771654
          Width = 328.81889764
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBCetak."NAMASUPP"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 45.35433071
          Top = 117.16535433
          Width = 328.81889764
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."ALM1SUPP"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 45.35433071
          Top = 136.06299213
          Width = 328.81889764
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."ALM2SUPP"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 45.35433071
          Top = 154.96062992
          Width = 328.81889764
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NEGSUPP"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 18.8976378
          Top = 22.677165355
          Width = 247.48825
          Height = 37.79527559
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'PURCHASE ORDER')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 408.18897638
          Top = 98.26771654
          Width = 75.59055118
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'SHIP TO :')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Top = 98.26771654
          Width = 37.79527559
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TO :')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Top = 185.370037
          Width = 94.48825
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[<frxDBCetak."TipeImpor">+'#39' : '#39']')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 37.79527559
          Top = 185.370037
          Width = 340.48825
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBCetak."KetTipeImpor"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 524.77952756
          Top = 185.370037
          Width = 212.48825
          Height = 1889.76377953
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[<frxDBCetak."TERM1KET">+IIF(<frxDBCetak."TERM2KET">='#39#39','#39#39',Chr(1' +
              '3)+<frxDBCetak."TERM2KET">)+IIF(<frxDBCetak."TERM3KET">='#39#39','#39#39',Ch' +
              'r(13)+<frxDBCetak."TERM3KET">)+IIF(<frxDBCetak."TERM4KET">='#39#39','#39#39 +
              ',Chr(13)+<frxDBCetak."TERM4KET">)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo46: TfrxMemoView
          Left = 408.18897638
          Top = 185.370037
          Width = 75.59055118
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TERMS :')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 487
          Top = 185.370037
          Width = 50.48825
          Height = 1889.76377953
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[FormatFloat('#39',0'#39',<frxDBCetak."TERM1P">)+'#39'%'#39'+IIF(<frxDBCetak."TE' +
              'RM2P">=0,'#39#39',chr(13)+FormatFloat('#39',0'#39',<frxDBCetak."TERM2P">)+'#39'%'#39')' +
              '+IIF(<frxDBCetak."TERM3P">=0,'#39#39',chr(13)+FormatFloat('#39',0'#39',<frxDBC' +
              'etak."TERM3P">)+'#39'%'#39')+IIF(<frxDBCetak."TERM4P">=0,'#39#39',chr(13)+Form' +
              'atFloat('#39',0'#39',<frxDBCetak."TERM4P">)+'#39'%'#39')]')
          ParentFont = False
          WordWrap = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.8976377952756
        Top = 428.220749
        Width = 740.409927
        DataSetName = 'frxDBCetak'
        RowCount = 0
        object Memo17: TfrxMemoView
          Width = 94.48825
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBCetak."KODEBRG"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 94.48818898
          Width = 170.07874016
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBCetak."NAMABRG"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 264.56692913
          Width = 94.48818898
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetak."QNT"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 359.05511811
          Width = 132.28346457
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetak."HRGNETTO"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 491.33858268
          Width = 113.38582677
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetak."SUBTOTAL"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 604.72440945
          Width = 132.28346457
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBCetak."KETERANGANDET"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 18.8976378
        Top = 386.267966
        Width = 740.409927
        object Memo23: TfrxMemoView
          Width = 94.48825
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'CODE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 94.48818898
          Width = 170.07874016
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'DESCRIPTION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 491.33858268
          Width = 113.38582677
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'PRICE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 604.72440945
          Width = 132.28346457
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 359.05511811
          Width = 132.28346457
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '['#39'UNIT PRICE ('#39'+<frxDBCetak."NAMAVLS">+'#39')'#39']')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 264.56692913
          Width = 94.48818898
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'QUANTITY')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 132.28346457
        Top = 470.173532
        Width = 740.409927
        object Memo29: TfrxMemoView
          Top = 75.5905511811025
          Width = 453.54330709
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'P.O. ACKNOWLEDGED BY :')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Top = 94.488188976378
          Width = 453.54330709
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '['#39'NAME : '#39'+<frxDBCetak."NAMASUPP">]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 472.44094488189
          Top = 94.488188976378
          Width = 264.566929133858
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '['#39'BUYER : '#39'+<frxDBCetak."BUYER">]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 264.56692913
          Width = 94.48818898
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBCetak."QNT">,MasterData1)]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 491.33858268
          Width = 113.38582677
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBCetak."SUBTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 359.05511811
          Width = 132.28346457
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 604.72440945
          Width = 132.28346457
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Width = 264.56692913
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 22.67718
        Top = 18.89765
        Visible = False
        Width = 740.409927
      end
      object ReportSummary1: TfrxReportSummary
        Height = 22.67718
        Top = 663.307515
        Width = 740.409927
      end
    end
  end
  object Qudetail: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    Left = 296
    Top = 304
  end
  object frxDBCetak: TfrxDBDataset
    UserName = 'frxDBCetak'
    CloseDataSource = False
    DataSet = Qudetail
    Left = 244
    Top = 274
  end
end
