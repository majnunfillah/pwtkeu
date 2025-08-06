object FrSetForm: TFrSetForm
  Left = 200
  Top = 157
  Width = 696
  Height = 480
  Caption = 'FrSetForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelMain: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    Color = clOlive
    TabOrder = 0
    object ToolBarMain: TToolBar
      Left = 0
      Top = 0
      Width = 688
      Height = 38
      ButtonHeight = 21
      ButtonWidth = 64
      Color = clMoneyGreen
      Customizable = True
      EdgeBorders = [ebTop, ebBottom]
      Flat = True
      ParentColor = False
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
      end
      object ToolButton2: TToolButton
        Left = 64
        Top = 0
        Hint = 'Koreksi Record'
        Caption = '&Koreksi'
        ImageIndex = 1
      end
      object ToolButton3: TToolButton
        Left = 128
        Top = 0
        Hint = 'Hapus Record'
        Caption = '&Batal'
        ImageIndex = 13
        Visible = False
      end
      object ToolButton5: TToolButton
        Left = 192
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object ToolButton10: TToolButton
        Left = 200
        Top = 0
        Caption = 'Refresh'
        ImageIndex = 12
      end
      object ToolButton7: TToolButton
        Left = 264
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 0
        Style = tbsSeparator
      end
      object ToolButton6: TToolButton
        Left = 272
        Top = 0
        Caption = '  Lain - lain  '
        ImageIndex = 10
        Style = tbsDropDown
      end
      object ToolButton8: TToolButton
        Left = 349
        Top = 0
        Width = 8
        Caption = 'ToolButton8'
        ImageIndex = 9
        Style = tbsSeparator
      end
      object ToolButton9: TToolButton
        Left = 357
        Top = 0
        Caption = 'K&eluar'
        ImageIndex = 8
      end
      object ToolButton4: TToolButton
        Left = 421
        Top = 0
        Caption = '&Cetak'
        ImageIndex = 4
        Visible = False
      end
      object ToolButton11: TToolButton
        Left = 485
        Top = 0
        Caption = 'Tampil Valid'
        ImageIndex = 7
        Style = tbsDropDown
        Visible = False
      end
    end
  end
  object PanelTransaksi: TPanel
    Left = 264
    Top = 80
    Width = 409
    Height = 201
    TabOrder = 1
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 407
      Height = 41
      Align = alTop
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 1
      Top = 42
      Width = 407
      Height = 87
      TabOrder = 1
    end
    object Panel3: TPanel
      Left = 1
      Top = 159
      Width = 407
      Height = 41
      Align = alBottom
      TabOrder = 2
    end
  end
  object dxDBGrid1: TdxDBGrid
    Left = 64
    Top = 272
    Width = 321
    Height = 149
    Hint = 'Untuk cari data ketik kata yang dicari di grid'
    Bands = <
      item
        Fixed = bfLeft
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'Kodebrg'
    SummaryGroups = <>
    SummarySeparator = ', '
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    AutoExpandOnSearch = False
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'Tahoma'
    BandFont.Style = []
    Filter.Criteria = {00000000}
    FixedBandLineWidth = 1
    GridLineColor = clBlack
    GroupPanelColor = 13025469
    GroupPanelFontColor = clBlack
    GroupNodeColor = clMoneyGreen
    HeaderColor = clWhite
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clBlack
    HeaderFont.Height = -13
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    HideSelectionColor = clMoneyGreen
    HideSelectionTextColor = clBlack
    HighlightColor = 9629163
    HighlightTextColor = clBlack
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'Tahoma'
    PreviewFont.Style = []
    RowFooterColor = 16763283
    ShowRowFooter = True
    object dxDBGrid1Column1: TdxDBGridColumn
      BandIndex = 0
      RowIndex = 0
    end
    object dxDBGrid1Column2: TdxDBGridColumn
      BandIndex = 0
      RowIndex = 0
    end
    object dxDBGrid1Column3: TdxDBGridColumn
      BandIndex = 0
      RowIndex = 0
    end
    object dxDBGrid1Column4: TdxDBGridColumn
      BandIndex = 0
      RowIndex = 0
    end
    object dxDBGrid1Column5: TdxDBGridColumn
      BandIndex = 0
      RowIndex = 0
    end
    object dxDBGrid1Column6: TdxDBGridColumn
      BandIndex = 0
      RowIndex = 0
    end
    object dxDBGrid1Column7: TdxDBGridColumn
      BandIndex = 0
      RowIndex = 0
    end
    object dxDBGrid1Column8: TdxDBGridColumn
      BandIndex = 0
      RowIndex = 0
    end
    object dxDBGrid1Column9: TdxDBGridColumn
      BandIndex = 0
      RowIndex = 0
    end
    object dxDBGrid1Column10: TdxDBGridColumn
      BandIndex = 0
      RowIndex = 0
    end
    object dxDBGrid1Column11: TdxDBGridColumn
      BandIndex = 0
      RowIndex = 0
    end
    object dxDBGrid1Column12: TdxDBGridColumn
      BandIndex = 0
      RowIndex = 0
    end
    object dxDBGrid1Column13: TdxDBGridColumn
      BandIndex = 0
      RowIndex = 0
    end
    object dxDBGrid1Column14: TdxDBGridColumn
      BandIndex = 0
      RowIndex = 0
    end
    object dxDBGrid1Column15: TdxDBGridColumn
      BandIndex = 0
      RowIndex = 0
    end
    object dxDBGrid1Column16: TdxDBGridColumn
      BandIndex = 0
      RowIndex = 0
    end
    object dxDBGrid1Column17: TdxDBGridColumn
      BandIndex = 0
      RowIndex = 0
    end
    object dxDBGrid1Column18: TdxDBGridColumn
      BandIndex = 0
      RowIndex = 0
    end
    object dxDBGrid1Column19: TdxDBGridColumn
      BandIndex = 0
      RowIndex = 0
    end
    object dxDBGrid1Column20: TdxDBGridColumn
      BandIndex = 0
      RowIndex = 0
    end
  end
  object cxGrid1: TcxGrid
    Left = 32
    Top = 96
    Width = 201
    Height = 137
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    LookAndFeel.Kind = lfFlat
    object tvMaster: TcxGridDBBandedTableView
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0'
          Kind = skCount
          FieldName = 'Nobukti'
          Column = tvMasterNobukti
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.StyleSheet = cxGridBandStyleHd
      Bands = <
        item
          Hidden = True
        end>
      object tvMasterNobukti: TcxGridDBBandedColumn
        Caption = 'No. Bukti'
        DataBinding.FieldName = 'Nobukti'
        SortOrder = soDescending
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMasterNourut: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Nourut'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMasterTanggal: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Tanggal'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tvMasterNoPPL: TcxGridDBBandedColumn
        Caption = 'No. SO'
        DataBinding.FieldName = 'NoPPL'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tvMasterTglPPL: TcxGridDBBandedColumn
        Caption = 'Tanggal SO'
        DataBinding.FieldName = 'TglPPL'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tvMasterKodeCustSupp: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KodeCustSupp'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object tvMasterNamaCustSupp: TcxGridDBBandedColumn
        Caption = 'Customer'
        DataBinding.FieldName = 'NamaCustSupp'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object tvMasterIsCetak: TcxGridDBBandedColumn
        Caption = 'Lock'
        DataBinding.FieldName = 'IsCetak'
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object tvMasterNilaiCetak: TcxGridDBBandedColumn
        Caption = 'Cetak Ke'
        DataBinding.FieldName = 'NilaiCetak'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
    end
    object tvDetail: TcxGridDBBandedTableView
      DataController.DetailKeyFieldNames = 'Nobukti'
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.KeyFieldNames = 'urut'
      DataController.MasterKeyFieldNames = 'NoBukti'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.StyleSheet = cxGridBandStyleDt
      Bands = <
        item
        end
        item
          Caption = 'Qnt Satuan 2'
          Visible = False
        end
        item
          Caption = 'Qnt Satuan 1'
          Visible = False
        end>
      object tvDetailNoBukti: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NoBukti'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvDetailUrut: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Urut'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvDetailUrutPO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UrutPO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tvDetailKodeBrg: TcxGridDBBandedColumn
        Caption = 'Kode Barang'
        DataBinding.FieldName = 'KodeBrg'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tvDetailNamaBrg: TcxGridDBBandedColumn
        Caption = 'Nama Barang'
        DataBinding.FieldName = 'NamaBrg'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tvDetailQnt: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Qnt'
        HeaderAlignmentHorz = taRightJustify
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object tvDetailSatuan: TcxGridDBBandedColumn
        Caption = 'Sat'
        DataBinding.FieldName = 'Satuan'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object tvDetailNosat: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Nosat'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object tvDetailIsi: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Isi'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object tvDetailKetDetail: TcxGridDBBandedColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'KetDetail'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object tvDetailQntPO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QntPO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object tvDetailSatuanPO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SatuanPO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tvMaster
      object cxGrid1Level2: TcxGridLevel
        GridView = tvDetail
      end
    end
  end
  object FormMain: TPanel
    Left = 0
    Top = 57
    Width = 688
    Height = 24
    Align = alTop
    Caption = 'FormMain'
    TabOrder = 4
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 144
    Top = 136
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clMoneyGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object cxStyle8: TcxStyle
    end
    object cxGridStyleHd: TcxGridTableViewStyleSheet
      Styles.Background = cxStyle2
      Styles.Content = cxStyle3
      Styles.ContentEven = cxStyle4
      Styles.ContentOdd = cxStyle5
      Styles.Inactive = cxStyle7
      Styles.Selection = cxStyle8
      Styles.Footer = cxStyle6
      Styles.Header = cxStyle1
      Styles.Indicator = cxStyle6
    end
    object cxGridStyleDt: TcxGridTableViewStyleSheet
    end
    object cxGridBandStyleHd: TcxGridBandedTableViewStyleSheet
      Styles.Background = cxStyle2
      Styles.Content = cxStyle3
      Styles.ContentEven = cxStyle4
      Styles.ContentOdd = cxStyle5
      Styles.Inactive = cxStyle7
      Styles.Selection = cxStyle8
      Styles.Footer = cxStyle6
      Styles.Header = cxStyle1
      Styles.Indicator = cxStyle6
      Styles.BandBackground = cxStyle2
      Styles.BandHeader = cxStyle1
    end
    object cxGridBandStyleDt: TcxGridBandedTableViewStyleSheet
    end
    object cxGridStyle: TcxGridTableViewStyleSheet
    end
    object cxGridBandStyle: TcxGridBandedTableViewStyleSheet
    end
  end
  object SaveDialog: TSaveDialog
    FileName = 'ExpGrid'
    Options = [ofOverwritePrompt, ofHideReadOnly]
    Left = 499
    Top = 135
  end
end
