object FrBOM: TFrBOM
  Left = 106
  Top = 109
  Width = 921
  Height = 460
  Caption = 'BOM'
  Color = 16773589
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 905
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 905
      Height = 40
      ButtonHeight = 39
      ButtonWidth = 71
      Caption = 'ToolBar1'
      Color = clBtnFace
      EdgeBorders = []
      Flat = True
      Images = DM.ImageList2
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
        OnClick = ToolButton1Click
      end
      object ToolButton2: TToolButton
        Left = 71
        Top = 0
        Hint = 'Koreksi Record'
        Caption = '&Koreksi'
        ImageIndex = 1
        OnClick = ToolButton2Click
      end
      object ToolButton3: TToolButton
        Left = 142
        Top = 0
        Hint = 'Hapus Record'
        Caption = '&Hapus'
        ImageIndex = 13
        Visible = False
      end
      object ToolButton5: TToolButton
        Left = 213
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object ToolButton4: TToolButton
        Left = 221
        Top = 0
        Caption = '&Cetak'
        ImageIndex = 4
        Visible = False
      end
      object ToolButton10: TToolButton
        Left = 292
        Top = 0
        Caption = 'Refresh'
        ImageIndex = 12
        OnClick = ToolButton10Click
      end
      object ToolButton7: TToolButton
        Left = 363
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 0
        Style = tbsSeparator
        Visible = False
      end
      object ToolButton6: TToolButton
        Left = 371
        Top = 0
        Caption = ' Lain - lain '
        DropdownMenu = PopupMenu1
        ImageIndex = 10
        Style = tbsDropDown
        Visible = False
      end
      object ToolButton11: TToolButton
        Left = 457
        Top = 0
        Width = 8
        Caption = 'ToolButton11'
        ImageIndex = 9
        Style = tbsSeparator
      end
      object ToolButton9: TToolButton
        Left = 465
        Top = 0
        Caption = 'K&eluar'
        ImageIndex = 8
        OnClick = ToolButton9Click
      end
    end
  end
  object PanelBJ: TPanel
    Left = 0
    Top = 48
    Width = 385
    Height = 374
    Align = alLeft
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 1
    object dxDBGrid1: TdxDBGrid
      Left = 4
      Top = 28
      Width = 377
      Height = 342
      Hint = 'Untuk cari data ketik kata yang dicari di grid'
      Bands = <
        item
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'KodeBrg'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      Color = 14540253
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      AutoExpandOnSearch = False
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -13
      BandFont.Name = 'Tahoma'
      BandFont.Style = [fsBold]
      DataSource = DsQuBJ
      Filter.Criteria = {00000000}
      FixedBandLineWidth = 1
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
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Tahoma'
      PreviewFont.Style = []
      RowFooterColor = 16763283
      ShowRowFooter = True
      object dxDBGrid1KodeBrg: TdxDBGridMaskColumn
        Caption = 'Kode Barang'
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KodeBrg'
        SummaryFooterType = cstCount
        SummaryFooterField = 'kodebrg'
        SummaryFooterFormat = ',0'
      end
      object dxDBGrid1NamaBrg: TdxDBGridMaskColumn
        Caption = 'Nama Barang'
        Width = 250
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NamaBrg'
      end
    end
    object PanelJudulBJ: TPanel
      Left = 4
      Top = 4
      Width = 377
      Height = 24
      Align = alTop
      Alignment = taLeftJustify
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Caption = '   Daftar Barang Jadi dan WIP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object PanelBOM: TPanel
    Left = 385
    Top = 48
    Width = 520
    Height = 374
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object PanelBOM_Hd: TPanel
      Left = 0
      Top = 0
      Width = 520
      Height = 168
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 4
      TabOrder = 0
      object dxDBGrid2: TdxDBGrid
        Left = 4
        Top = 28
        Width = 512
        Height = 136
        Hint = 'Untuk cari data ketik kata yang dicari di grid'
        Bands = <
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'KodeBOM'
        ShowSummaryFooter = True
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        Color = 14540253
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        AutoExpandOnSearch = False
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -13
        BandFont.Name = 'Tahoma'
        BandFont.Style = [fsBold]
        DataSource = DsQuHdBOM
        Filter.Criteria = {00000000}
        FixedBandLineWidth = 1
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
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'Tahoma'
        PreviewFont.Style = []
        RowFooterColor = 16763283
        ShowRowFooter = True
        object dxDBGrid2KodeBOM: TdxDBGridMaskColumn
          Caption = 'Kode BOM'
          Width = 120
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KodeBOM'
        end
        object dxDBGrid2KodeBrg: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KodeBrg'
        end
        object dxDBGrid2NoUrut: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NoUrut'
        end
        object dxDBGrid2IsDefault: TdxDBGridCheckColumn
          Caption = 'Default'
          HeaderAlignment = taCenter
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'IsDefault'
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object dxDBGrid2TglAwal: TdxDBGridDateColumn
          Caption = 'Tgl Awal'
          Visible = False
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TglAwal'
        end
        object dxDBGrid2TglAkhir: TdxDBGridDateColumn
          Caption = 'Tgl Akhir'
          Visible = False
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TglAkhir'
        end
      end
      object PanelJudulHdBOM: TPanel
        Left = 4
        Top = 4
        Width = 512
        Height = 24
        Align = alTop
        Alignment = taLeftJustify
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Caption = '   Daftar Barang Jadi dan WIP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
    object PanelBOM_Dt: TPanel
      Left = 0
      Top = 168
      Width = 520
      Height = 206
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 4
      TabOrder = 1
      object dxDBGrid3: TdxDBGrid
        Left = 4
        Top = 28
        Width = 512
        Height = 174
        Hint = 'Untuk cari data ketik kata yang dicari di grid'
        Bands = <
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'Urut'
        ShowSummaryFooter = True
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        Color = 14540253
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        AutoExpandOnSearch = False
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -13
        BandFont.Name = 'Tahoma'
        BandFont.Style = [fsBold]
        DataSource = DsQuDtBOM
        Filter.Criteria = {00000000}
        FixedBandLineWidth = 1
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
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'Tahoma'
        PreviewFont.Style = []
        RowFooterColor = 16763283
        ShowRowFooter = True
        object dxDBGrid3KodeBOM: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KodeBOM'
        end
        object dxDBGrid3Urut: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Urut'
        end
        object dxDBGrid3KodeBrg: TdxDBGridMaskColumn
          Caption = 'Kode Barang'
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KodeBrg'
        end
        object dxDBGrid3NAMABRG: TdxDBGridMaskColumn
          Caption = 'Nama Barang'
          Width = 220
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NAMABRG'
        end
        object dxDBGrid3SAT1: TdxDBGridMaskColumn
          Caption = 'Sat'
          Width = 40
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SAT1'
        end
        object dxDBGrid3Qnt: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Visible = False
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qnt'
        end
        object dxDBGrid3Numerator: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Numerator'
        end
        object dxDBGrid3Denominator: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Denominator'
        end
        object dxDBGrid3LossRatio: TdxDBGridMaskColumn
          Caption = 'Loss Ratio'
          HeaderAlignment = taRightJustify
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LossRatio'
        end
        object dxDBGrid3PlaceCD: TdxDBGridMaskColumn
          Visible = False
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PlaceCD'
        end
      end
      object PanelJudulDtBOM: TPanel
        Left = 4
        Top = 4
        Width = 512
        Height = 24
        Align = alTop
        Alignment = taLeftJustify
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Caption = '   Daftar Barang Jadi dan WIP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object QuBJ: TADOQuery
    AutoCalcFields = False
    CacheSize = 2000
    Connection = DM.MyStock
    CursorType = ctStatic
    AfterScroll = QuBJAfterScroll
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'Select  A.KodeBrg, A.NamaBrg, A.Sat1'
      'from    vwBarang A'
      'where (A.IsBarang=2 or A.IsBarang=3)'
      'Order by A.KodeBrg'
      '')
    Left = 34
    Top = 101
    object QuBJKodeBrg: TStringField
      FieldName = 'KodeBrg'
      Size = 25
    end
    object QuBJNamaBrg: TStringField
      FieldName = 'NamaBrg'
      Size = 100
    end
    object QuBJSat1: TStringField
      FieldName = 'Sat1'
      Size = 5
    end
  end
  object DsQuBJ: TDataSource
    DataSet = QuBJ
    Left = 59
    Top = 101
  end
  object PopupMenu1: TPopupMenu
    Left = 469
    Top = 119
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
    Left = 499
    Top = 135
  end
  object sp_barang: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'Sp_Barang;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Choice'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@KodeBrg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@Namabrg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@KodeGrp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@KodeSubGrp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 3
        Value = Null
      end
      item
        Name = '@KodeSupp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@Sat1'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = '@Isi1'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Sat2'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = '@Isi2'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Sat3'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = '@Isi3'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Hrg1_1'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Hrg2_1'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Hrg3_1'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Hrg1_2'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Hrg2_2'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Hrg3_2'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Hrg1_3'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Hrg2_3'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Hrg3_3'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@QntMin'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@QntMax'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Keterangan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
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
        Name = '@NFix'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@NamaBrg2'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end>
    Left = 528
    Top = 135
  end
  object PopupMenu2: TPopupMenu
    Left = 466
    Top = 166
    object Semua: TMenuItem
      Caption = 'Semua '
      Checked = True
    end
    object Aktif: TMenuItem
      Caption = 'Aktif'
    end
    object TidakAktif: TMenuItem
      Caption = 'Non Aktif'
    end
  end
  object DsQuHdBOM: TDataSource
    DataSet = QuHdBOM
    Left = 59
    Top = 149
  end
  object QuHdBOM: TADOQuery
    AutoCalcFields = False
    CacheSize = 2000
    Connection = DM.MyStock
    CursorType = ctStatic
    AfterScroll = QuHdBOMAfterScroll
    CommandTimeout = 0
    DataSource = DsQuBJ
    Parameters = <
      item
        Name = 'KodeBrg'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 25
        Value = Null
      end>
    SQL.Strings = (
      'select A.* '
      'from DBBOM A'
      'where A.KodeBrg=:KodeBrg'
      'order by A.KodeBOM')
    Left = 34
    Top = 149
    object QuHdBOMKodeBOM: TStringField
      FieldName = 'KodeBOM'
      Size = 25
    end
    object QuHdBOMKodeBrg: TStringField
      FieldName = 'KodeBrg'
      Size = 25
    end
    object QuHdBOMIsDefault: TBooleanField
      FieldName = 'IsDefault'
    end
    object QuHdBOMTglAwal: TDateTimeField
      FieldName = 'TglAwal'
    end
    object QuHdBOMTglAkhir: TDateTimeField
      FieldName = 'TglAkhir'
    end
    object QuHdBOMNoUrut: TStringField
      FieldName = 'NoUrut'
      Size = 10
    end
  end
  object QuDtBOM: TADOQuery
    AutoCalcFields = False
    CacheSize = 2000
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 0
    DataSource = DsQuHdBOM
    Parameters = <
      item
        Name = 'KodeBOM'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 25
        Value = Null
      end>
    SQL.Strings = (
      'select A.*, B.NAMABRG, B.SAT1 '
      'from DBBOMDET A'
      'left outer join DBBARANG B on B.KODEBRG=A.KodeBrg'
      'where A.KodeBOM=:KodeBOM'
      'order by A.Urut')
    Left = 34
    Top = 197
    object QuDtBOMKodeBOM: TStringField
      FieldName = 'KodeBOM'
      Size = 25
    end
    object QuDtBOMUrut: TIntegerField
      FieldName = 'Urut'
    end
    object QuDtBOMKodeBrg: TStringField
      FieldName = 'KodeBrg'
      Size = 25
    end
    object QuDtBOMQnt: TFloatField
      FieldName = 'Qnt'
      DisplayFormat = ',0.000000'
    end
    object QuDtBOMNAMABRG: TStringField
      FieldName = 'NAMABRG'
      Size = 100
    end
    object QuDtBOMSAT1: TStringField
      FieldName = 'SAT1'
      Size = 5
    end
    object QuDtBOMNumerator: TBCDField
      FieldName = 'Numerator'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuDtBOMDenominator: TBCDField
      FieldName = 'Denominator'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuDtBOMLossRatio: TBCDField
      FieldName = 'LossRatio'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuDtBOMPlaceCD: TStringField
      FieldName = 'PlaceCD'
    end
  end
  object DsQuDtBOM: TDataSource
    DataSet = QuDtBOM
    Left = 59
    Top = 197
  end
end
