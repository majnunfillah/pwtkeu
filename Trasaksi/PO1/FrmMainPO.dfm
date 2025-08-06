object FrMainPO: TFrMainPO
  Left = 151
  Top = 74
  Width = 815
  Height = 479
  Caption = 'Purchase Order (PO)'
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
    Width = 807
    Height = 397
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
    Width = 807
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 807
      Height = 39
      ButtonHeight = 39
      ButtonWidth = 79
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
        Caption = '&Tambah'
        ImageIndex = 0
        OnClick = ToolButton1Click
      end
      object ToolButton2: TToolButton
        Left = 79
        Top = 0
        Hint = 'Koreksi Record'
        Caption = '&Koreksi'
        ImageIndex = 1
        OnClick = ToolButton2Click
      end
      object ToolButton3: TToolButton
        Left = 158
        Top = 0
        Hint = 'Hapus Record'
        Caption = '&Batal'
        ImageIndex = 13
        Visible = False
      end
      object ToolButton5: TToolButton
        Left = 237
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object ToolButton10: TToolButton
        Left = 245
        Top = 0
        Caption = 'Refresh'
        ImageIndex = 12
        OnClick = ToolButton10Click
      end
      object ToolButton7: TToolButton
        Left = 324
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 0
        Style = tbsSeparator
        Visible = False
      end
      object ToolButton6: TToolButton
        Left = 332
        Top = 0
        Caption = '  Lain - lain  '
        DropdownMenu = PopupMenu1
        ImageIndex = 10
        Style = tbsDropDown
        Visible = False
      end
      object ToolButton8: TToolButton
        Left = 424
        Top = 0
        Width = 8
        Caption = 'ToolButton8'
        ImageIndex = 9
        Style = tbsSeparator
      end
      object ToolButton9: TToolButton
        Left = 432
        Top = 0
        Caption = 'K&eluar'
        ImageIndex = 8
        OnClick = ToolButton9Click
      end
      object ToolButton11: TToolButton
        Left = 511
        Top = 0
        Caption = 'Tampil Valid'
        DropdownMenu = PopupMenu2
        ImageIndex = 7
        Style = tbsDropDown
        Visible = False
      end
    end
  end
  object dxPageControl1: TdxPageControl
    Left = 0
    Top = 48
    Width = 807
    Height = 397
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
    OnChange = dxPageControl1Change
    object dxTabSheet1: TdxTabSheet
      Caption = 'OutStanding PR'
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 807
        Height = 371
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        object tvMasterOut: TcxGridDBTableView
          DataController.DataSource = dsPPL
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.KeyFieldNames = 'KeyUrut'
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
              FieldName = 'TotSubTotalRp'
            end
            item
              Format = ',0.00'
              Kind = skSum
              FieldName = 'TotDPPRp'
            end
            item
              Format = ',0.00'
              Kind = skSum
              FieldName = 'TotPPNRp'
            end
            item
              Format = ',0.00'
              Kind = skSum
              FieldName = 'TotNetRp'
            end
            item
              Format = ',0.00'
              Kind = skSum
              FieldName = 'TotDiskonRp'
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.StyleSheet = FrSetForm.cxGridStyleHd
          object tvMasterOutKeyUrut: TcxGridDBColumn
            DataBinding.FieldName = 'KeyUrut'
            Visible = False
          end
          object tvMasterOutNobukti: TcxGridDBColumn
            Caption = 'No. Bukti'
            DataBinding.FieldName = 'Nobukti'
            Width = 140
          end
          object tvMasterOutNoUrut: TcxGridDBColumn
            DataBinding.FieldName = 'NoUrut'
            Visible = False
          end
          object tvMasterOutTanggal: TcxGridDBColumn
            DataBinding.FieldName = 'Tanggal'
            Width = 90
          end
          object tvMasterOuturut: TcxGridDBColumn
            DataBinding.FieldName = 'urut'
            Visible = False
          end
          object tvMasterOutkodebrg: TcxGridDBColumn
            Caption = 'Kode Barang'
            DataBinding.FieldName = 'kodebrg'
            Width = 120
          end
          object tvMasterOutNamaBrg: TcxGridDBColumn
            Caption = 'Nama Barang'
            DataBinding.FieldName = 'NamaBrg'
            Width = 250
          end
          object tvMasterOutSat: TcxGridDBColumn
            DataBinding.FieldName = 'Sat'
            Width = 50
          end
          object tvMasterOutNosat: TcxGridDBColumn
            DataBinding.FieldName = 'Nosat'
            Visible = False
          end
          object tvMasterOutIsi: TcxGridDBColumn
            DataBinding.FieldName = 'Isi'
            Visible = False
          end
          object tvMasterOutQnt: TcxGridDBColumn
            DataBinding.FieldName = 'Qnt'
            HeaderAlignmentHorz = taRightJustify
            Width = 90
          end
          object tvMasterOutQntPO: TcxGridDBColumn
            DataBinding.FieldName = 'QntPO'
            HeaderAlignmentHorz = taRightJustify
            Width = 90
          end
          object tvMasterOutSisaPPL: TcxGridDBColumn
            Caption = 'Sisa PR'
            DataBinding.FieldName = 'SisaPPL'
            HeaderAlignmentHorz = taRightJustify
            Width = 90
          end
          object tvMasterOutKeterangan: TcxGridDBColumn
            DataBinding.FieldName = 'Keterangan'
            Width = 300
          end
          object tvMasterOutIsClose: TcxGridDBColumn
            DataBinding.FieldName = 'IsClose'
            Visible = False
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = tvMasterOut
        end
      end
    end
    object dxTabSheet2: TdxTabSheet
      Caption = 'Purchase Order (PO)'
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 807
        Height = 371
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
            Width = 45
          end
          object tvMasterTotDPPRp: TcxGridDBColumn
            Caption = 'DPP Rp'
            DataBinding.FieldName = 'TotDPPRp'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 110
          end
          object tvMasterTotSubTotalRp: TcxGridDBColumn
            Caption = 'Sub Total Rp'
            DataBinding.FieldName = 'TotSubTotalRp'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 110
          end
          object tvMasterTotPPNRp: TcxGridDBColumn
            Caption = 'PPN Rp'
            DataBinding.FieldName = 'TotPPNRp'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 110
          end
          object tvMasterTotNetRp: TcxGridDBColumn
            Caption = 'Grand Total Rp'
            DataBinding.FieldName = 'TotNetRp'
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
      
        'Select  a.isAut,a.NoBukti, a.Tanggal,a.KodeSupp, b.NamaCustSupp,' +
        ' b.Handling, b.FakturSupp,'
      
        '        b.TotSubTotal, b.TotDiskon, b.TotTotal, TotDPP, b.TotPPN' +
        ', TotNet,'
      
        '        TotSubTotalRp, TotDiskonRp, TotTotalRp, TotDPPRp, TotPPN' +
        'Rp, TotNetRp '
      'From dbPO a Left Outer Join vwMasterPO b on a.NoBukti=b.NoBukti'
      'where year(a.Tanggal)=@Tahun and month(a.Tanggal)=@Bulan'
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
    object QuMasterHandling: TBCDField
      FieldName = 'Handling'
      Precision = 18
      Size = 2
    end
    object QuMasterFakturSupp: TStringField
      FieldName = 'FakturSupp'
      Size = 50
    end
    object QuMasterTotSubTotal: TBCDField
      FieldName = 'TotSubTotal'
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuMasterTotDiskon: TFloatField
      FieldName = 'TotDiskon'
      DisplayFormat = ',0.00'
    end
    object QuMasterTotTotal: TFloatField
      FieldName = 'TotTotal'
      DisplayFormat = ',0.00'
    end
    object QuMasterTotDPP: TFloatField
      FieldName = 'TotDPP'
      DisplayFormat = ',0.00'
    end
    object QuMasterTotPPN: TFloatField
      FieldName = 'TotPPN'
      DisplayFormat = ',0.00'
    end
    object QuMasterTotNet: TFloatField
      FieldName = 'TotNet'
      DisplayFormat = ',0.00'
    end
    object QuMasterTotSubTotalRp: TBCDField
      FieldName = 'TotSubTotalRp'
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuMasterTotDiskonRp: TFloatField
      FieldName = 'TotDiskonRp'
      DisplayFormat = ',0.00'
    end
    object QuMasterTotTotalRp: TFloatField
      FieldName = 'TotTotalRp'
      DisplayFormat = ',0.00'
    end
    object QuMasterTotDPPRp: TFloatField
      FieldName = 'TotDPPRp'
      DisplayFormat = ',0.00'
    end
    object QuMasterTotPPNRp: TFloatField
      FieldName = 'TotPPNRp'
      DisplayFormat = ',0.00'
    end
    object QuMasterTotNetRp: TFloatField
      FieldName = 'TotNetRp'
      DisplayFormat = ',0.00'
    end
    object QuMasterKodeSupp: TStringField
      FieldName = 'KodeSupp'
      Size = 15
    end
    object QuMasterNamaCustSupp: TStringField
      FieldName = 'NamaCustSupp'
      Size = 100
    end
    object QuMasterisAut: TBooleanField
      FieldName = 'isAut'
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
        Value = 'n'
      end>
    SQL.Strings = (
      'Select '#9'B.NoBukti, '#39#39' NoSPP, 0 UrutSPP,'
      #9'B.Urut, B.KodeBrg, H.NamaBrg, B.Qnt, B.NoSat, B.Isi, B.Satuan,'
      '        0.00 Qnt2, '#39#39' SatuanRoll, B.Harga,'
      '        B.DiscP DiscP1, B.DiscTot DiscRp1, B.DiscTot,'
      '        B.SubTotal TotalUSD, B.SubTotal TotalIDR, B.NDPP NDPP,'
      
        '        B.NPPN NPPN, B.BYAngkut Beban, B.SubTotal + B.BYAngkut T' +
        'otal'
      'From  dbPODet B '
      'Left Outer Join dbBarang H on H.KodeBrg=B.KodeBrg'
      'where NoBukti=:NoBukti'
      'order by B.NoBukti, B.Urut'
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
  end
  object DsDetail1: TDataSource
    DataSet = QuDetail1
    Left = 128
    Top = 184
  end
  object QuPPL: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @Tahun int, @Bulan int'
      ''
      'select @Tahun=2012, @Bulan=7'
      ''
      
        'select  A.NoBukti+'#39' '#39'+right('#39'00000000'#39'+cast(A.urut as varchar(8)' +
        '),8) KeyUrut,'
      'A.*, B.NamaBrg'
      'from vwOutPPL A'
      'left outer join dbBarang B on B.KodeBrg=A.KodeBrg'
      'where A.SisaPPL>0'
      'order by A.Tanggal, A.NoBukti, A.Urut'
      '')
    Left = 24
    Top = 231
    object QuPPLKeyUrut: TStringField
      FieldName = 'KeyUrut'
      ReadOnly = True
      Size = 59
    end
    object QuPPLNobukti: TStringField
      FieldName = 'Nobukti'
      Size = 50
    end
    object QuPPLNoUrut: TStringField
      FieldName = 'NoUrut'
      Size = 5
    end
    object QuPPLTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuPPLurut: TIntegerField
      FieldName = 'urut'
    end
    object QuPPLkodebrg: TStringField
      FieldName = 'kodebrg'
      Size = 25
    end
    object QuPPLSat: TStringField
      FieldName = 'Sat'
      Size = 5
    end
    object QuPPLNosat: TWordField
      FieldName = 'Nosat'
    end
    object QuPPLIsi: TBCDField
      FieldName = 'Isi'
      Precision = 18
      Size = 2
    end
    object QuPPLQnt: TBCDField
      FieldName = 'Qnt'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuPPLQntPO: TBCDField
      FieldName = 'QntPO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuPPLKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 500
    end
    object QuPPLSisaPPL: TBCDField
      FieldName = 'SisaPPL'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 19
      Size = 2
    end
    object QuPPLIsClose: TBooleanField
      FieldName = 'IsClose'
    end
    object QuPPLNamaBrg: TStringField
      FieldName = 'NamaBrg'
      Size = 100
    end
  end
  object dsPPL: TDataSource
    DataSet = QuPPL
    Left = 56
    Top = 231
  end
end
