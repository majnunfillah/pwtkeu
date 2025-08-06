object FrBon: TFrBon
  Left = 116
  Top = 98
  Width = 888
  Height = 543
  Caption = 'Bon Sementara'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
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
    Width = 880
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 880
      Height = 40
      ButtonHeight = 39
      ButtonWidth = 72
      Caption = 'ToolBar1'
      EdgeBorders = []
      Flat = True
      Images = DM.ImageList2
      ParentShowHint = False
      ShowCaptions = True
      ShowHint = True
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Hint = 'Tambah Record'
        Caption = '&Debet'
        ImageIndex = 0
        OnClick = ToolButton1Click
      end
      object ToolButton11: TToolButton
        Left = 72
        Top = 0
        Caption = 'Kredit'
        ImageIndex = 5
        OnClick = ToolButton11Click
      end
      object ToolButton2: TToolButton
        Left = 144
        Top = 0
        Hint = 'Koreksi Record'
        Caption = '&Koreksi'
        ImageIndex = 1
        OnClick = ToolButton2Click
      end
      object ToolButton3: TToolButton
        Left = 216
        Top = 0
        Hint = 'Hapus Record'
        Caption = '&Hapus'
        ImageIndex = 13
        OnClick = ToolButton3Click
      end
      object ToolButton5: TToolButton
        Left = 288
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object ToolButton4: TToolButton
        Left = 296
        Top = 0
        Caption = '&Cetak'
        ImageIndex = 4
        Visible = False
      end
      object ToolButton10: TToolButton
        Left = 368
        Top = 0
        Caption = 'Refresh'
        ImageIndex = 12
        OnClick = ToolButton10Click
      end
      object ToolButton7: TToolButton
        Left = 440
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 0
        Style = tbsSeparator
        Visible = False
      end
      object ToolButton6: TToolButton
        Left = 448
        Top = 0
        Caption = '&Lain - lain'
        ImageIndex = 10
        Style = tbsDropDown
        Visible = False
      end
      object ToolButton8: TToolButton
        Left = 533
        Top = 0
        Width = 8
        Caption = 'ToolButton8'
        ImageIndex = 9
        Style = tbsSeparator
      end
      object ToolButton9: TToolButton
        Left = 541
        Top = 0
        Caption = 'K&eluar'
        ImageIndex = 8
        OnClick = ToolButton9Click
      end
    end
  end
  object dxPageControl1: TdxPageControl
    Left = 0
    Top = 81
    Width = 880
    Height = 435
    ActivePage = dxTabSheet2
    Align = alClient
    HideButtons = False
    HotTrack = False
    MultiLine = False
    OwnerDraw = False
    RaggedRight = False
    ScrollOpposite = False
    Style = dxtsButtons
    TabHeight = 0
    TabOrder = 2
    TabPosition = dxtpTop
    TabWidth = 0
    OnChange = dxPageControl1Change
    object dxTabSheet1: TdxTabSheet
      Caption = 'Bon Sementara'
      object dxDBGrid1: TdxDBGrid
        Left = 0
        Top = 0
        Width = 880
        Height = 407
        Hint = 'Untuk cari data ketik kata yang dicari di grid'
        Bands = <
          item
            Fixed = bfLeft
          end
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'KeyNoBukti'
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
        TabOrder = 0
        AutoExpandOnSearch = False
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -13
        BandFont.Name = 'Tahoma'
        BandFont.Style = []
        DataSource = DsMaster
        Filter.Criteria = {00000000}
        FixedBandLineWidth = 1
        GridLineColor = clBlack
        GroupPanelColor = 13025469
        GroupPanelFontColor = clBlack
        GroupNodeColor = clMoneyGreen
        GroupNodeTextColor = clBlack
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = -1
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
        ShowRowFooter = True
        OnCustomDrawCell = dxDBGrid1CustomDrawCell
        object dxDBGrid1KeyNoBukti: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KeyNoBukti'
        end
        object dxDBGrid1Devisi: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Devisi'
        end
        object dxDBGrid1Perkiraan: TdxDBGridMaskColumn
          Visible = False
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Perkiraan'
        end
        object dxDBGrid1NoBukti: TdxDBGridMaskColumn
          Caption = 'No. Bon'
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NoBukti'
          SummaryFooterType = cstCount
          SummaryFooterFormat = ',0'
        end
        object dxDBGrid1NOURUT: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOURUT'
        end
        object dxDBGrid1Tanggal: TdxDBGridDateColumn
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Tanggal'
        end
        object dxDBGrid1Penerima: TdxDBGridMaskColumn
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Penerima'
        end
        object dxDBGrid1Keterangan: TdxDBGridMaskColumn
          Width = 200
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Keterangan'
        end
        object dxDBGrid1KodeVls: TdxDBGridMaskColumn
          Caption = 'Valas'
          Width = 50
          BandIndex = 1
          RowIndex = 0
          FieldName = 'KodeVls'
        end
        object dxDBGrid1Kurs: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 70
          BandIndex = 1
          RowIndex = 0
          FieldName = 'Kurs'
        end
        object dxDBGrid1DebetD: TdxDBGridMaskColumn
          Caption = 'Debet $'
          HeaderAlignment = taRightJustify
          Width = 80
          BandIndex = 1
          RowIndex = 0
          FieldName = 'DebetD'
          SummaryFooterType = cstSum
          SummaryFooterFormat = ',0.00'
        end
        object dxDBGrid1KreditD: TdxDBGridMaskColumn
          Caption = 'Kredit $'
          HeaderAlignment = taRightJustify
          Width = 80
          BandIndex = 1
          RowIndex = 0
          FieldName = 'KreditD'
          SummaryFooterType = cstSum
          SummaryFooterFormat = ',0.00'
        end
        object dxDBGrid1SaldoD: TdxDBGridMaskColumn
          Caption = 'Saldo $'
          HeaderAlignment = taRightJustify
          Width = 80
          BandIndex = 1
          RowIndex = 0
          FieldName = 'SaldoD'
          SummaryFooterType = cstSum
          SummaryFooterFormat = ',0.00'
        end
        object dxDBGrid1Debet: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 110
          BandIndex = 1
          RowIndex = 0
          FieldName = 'Debet'
          SummaryFooterType = cstSum
          SummaryFooterFormat = ',0.00'
        end
        object dxDBGrid1Kredit: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 110
          BandIndex = 1
          RowIndex = 0
          FieldName = 'Kredit'
          SummaryFooterType = cstSum
          SummaryFooterFormat = ',0.00'
        end
        object dxDBGrid1TglInput: TdxDBGridDateColumn
          Visible = False
          BandIndex = 1
          RowIndex = 0
          FieldName = 'TglInput'
        end
        object dxDBGrid1UserID: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 1
          RowIndex = 0
          FieldName = 'UserID'
        end
        object dxDBGrid1Urut: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 1
          RowIndex = 0
          FieldName = 'Urut'
        end
        object dxDBGrid1BuktiKas: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 1
          RowIndex = 0
          FieldName = 'BuktiKas'
        end
        object dxDBGrid1UrutKas: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 1
          RowIndex = 0
          FieldName = 'UrutKas'
        end
        object dxDBGrid1Saldo: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 110
          BandIndex = 1
          RowIndex = 0
          FieldName = 'Saldo'
          SummaryFooterType = cstSum
          SummaryFooterFormat = ',0.00'
        end
      end
    end
    object dxTabSheet2: TdxTabSheet
      Caption = 'Bon Sementara Belum Lunas'
      object dxDBGrid2: TdxDBGrid
        Left = 0
        Top = 0
        Width = 880
        Height = 407
        Hint = 'Untuk cari data ketik kata yang dicari di grid'
        Bands = <
          item
            Fixed = bfLeft
          end
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'KeyNoBukti'
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
        TabOrder = 0
        AutoExpandOnSearch = False
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -13
        BandFont.Name = 'Tahoma'
        BandFont.Style = []
        DataSource = DsMasterOut
        Filter.Criteria = {00000000}
        FixedBandLineWidth = 1
        GridLineColor = clBlack
        GroupPanelColor = 13025469
        GroupPanelFontColor = clBlack
        GroupNodeColor = clMoneyGreen
        GroupNodeTextColor = clBlack
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = -1
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
        ShowRowFooter = True
        OnCustomDrawCell = dxDBGrid2CustomDrawCell
        object dxDBGrid2KeyNoBukti: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KeyNoBukti'
        end
        object dxDBGrid2Devisi: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Devisi'
        end
        object dxDBGrid2Perkiraan: TdxDBGridMaskColumn
          Visible = False
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Perkiraan'
        end
        object dxDBGrid2NoBukti: TdxDBGridMaskColumn
          Caption = 'No. Bon'
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NoBukti'
          SummaryFooterType = cstCount
          SummaryFooterFormat = ',0'
        end
        object dxDBGrid2NOURUT: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOURUT'
        end
        object dxDBGrid2Tanggal: TdxDBGridDateColumn
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Tanggal'
        end
        object dxDBGrid2Penerima: TdxDBGridMaskColumn
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Penerima'
        end
        object dxDBGrid2Keterangan: TdxDBGridMaskColumn
          Width = 200
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Keterangan'
        end
        object dxDBGrid2KodeVls: TdxDBGridMaskColumn
          Caption = 'Valas'
          Width = 50
          BandIndex = 1
          RowIndex = 0
          FieldName = 'KodeVls'
        end
        object dxDBGrid2Kurs: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 70
          BandIndex = 1
          RowIndex = 0
          FieldName = 'Kurs'
        end
        object dxDBGrid2DebetD: TdxDBGridMaskColumn
          Caption = 'Debet $'
          HeaderAlignment = taRightJustify
          Width = 80
          BandIndex = 1
          RowIndex = 0
          FieldName = 'DebetD'
          SummaryFooterType = cstSum
          SummaryFooterFormat = ',0.00'
        end
        object dxDBGrid2KreditD: TdxDBGridMaskColumn
          Caption = 'Kredit $'
          HeaderAlignment = taRightJustify
          Width = 80
          BandIndex = 1
          RowIndex = 0
          FieldName = 'KreditD'
          SummaryFooterType = cstSum
          SummaryFooterFormat = ',0.00'
        end
        object dxDBGrid2SaldoD: TdxDBGridMaskColumn
          Caption = 'Saldo $'
          HeaderAlignment = taRightJustify
          Width = 80
          BandIndex = 1
          RowIndex = 0
          FieldName = 'SaldoD'
          SummaryFooterType = cstSum
          SummaryFooterFormat = ',0.00'
        end
        object dxDBGrid2Debet: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 110
          BandIndex = 1
          RowIndex = 0
          FieldName = 'Debet'
          SummaryFooterType = cstSum
          SummaryFooterFormat = ',0.00'
        end
        object dxDBGrid2Kredit: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 110
          BandIndex = 1
          RowIndex = 0
          FieldName = 'Kredit'
          SummaryFooterType = cstSum
          SummaryFooterFormat = ',0.00'
        end
        object dxDBGrid2TglInput: TdxDBGridDateColumn
          Visible = False
          BandIndex = 1
          RowIndex = 0
          FieldName = 'TglInput'
        end
        object dxDBGrid2UserID: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 1
          RowIndex = 0
          FieldName = 'UserID'
        end
        object dxDBGrid2Urut: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 1
          RowIndex = 0
          FieldName = 'Urut'
        end
        object dxDBGrid2BuktiKas: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 1
          RowIndex = 0
          FieldName = 'BuktiKas'
        end
        object dxDBGrid2UrutKas: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 1
          RowIndex = 0
          FieldName = 'UrutKas'
        end
        object dxDBGrid2Saldo: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 110
          BandIndex = 1
          RowIndex = 0
          FieldName = 'Saldo'
          SummaryFooterType = cstSum
          SummaryFooterFormat = ',0.00'
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 48
    Width = 880
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 62
      Height = 16
      Caption = 'Perkiraan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Perkiraan: TComboBox
      Left = 80
      Top = 4
      Width = 289
      Height = 24
      BevelKind = bkSoft
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnClick = PerkiraanClick
      OnDropDown = PerkiraanDropDown
      Items.Strings = (
        '')
    end
  end
  object sp_bon: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'sp_Bon;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@choice'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@Devisi'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@NoBukti'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@Tanggal'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Penerima'
        Attributes = [paNullable]
        DataType = ftString
        Size = 40
        Value = Null
      end
      item
        Name = '@Keterangan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 40
        Value = Null
      end
      item
        Name = '@Debet'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Kredit'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
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
        Name = '@TglInput'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@UserID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@Urut'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@KodeVls'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@Kurs'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 4
        Precision = 18
        Value = Null
      end
      item
        Name = '@DebetD'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@KreditD'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end>
    Left = 386
    Top = 143
  end
  object QuBon: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *,0.00 Saldo from dbbon'
      '')
    Left = 109
    Top = 135
    object QuBonNoBukti: TStringField
      DisplayWidth = 12
      FieldName = 'NoBukti'
    end
    object QuBonTanggal: TDateTimeField
      DisplayWidth = 15
      FieldName = 'Tanggal'
    end
    object QuBonPenerima: TStringField
      DisplayWidth = 22
      FieldName = 'Penerima'
      Size = 40
    end
    object QuBonKeterangan: TStringField
      DisplayWidth = 40
      FieldName = 'Keterangan'
      Size = 40
    end
    object QuBonDebet: TBCDField
      DisplayWidth = 16
      FieldName = 'Debet'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 0
    end
    object QuBonKredit: TBCDField
      DisplayWidth = 16
      FieldName = 'Kredit'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 0
    end
    object QuBonDevisi: TStringField
      DisplayWidth = 10
      FieldName = 'Devisi'
      Size = 10
    end
    object QuBonUrut: TWordField
      DisplayWidth = 10
      FieldName = 'Urut'
    end
    object QuBonNOURUT: TStringField
      FieldName = 'NOURUT'
      Size = 5
    end
    object QuBonPerkiraan: TStringField
      FieldName = 'Perkiraan'
      Size = 30
    end
    object QuBonTglInput: TDateTimeField
      FieldName = 'TglInput'
    end
    object QuBonUserID: TStringField
      FieldName = 'UserID'
    end
    object QuBonBuktiKas: TStringField
      FieldName = 'BuktiKas'
    end
    object QuBonUrutKas: TIntegerField
      FieldName = 'UrutKas'
    end
    object QuBonMyID: TBytesField
      FieldName = 'MyID'
      ReadOnly = True
      Size = 8
    end
    object QuBonSaldo: TBCDField
      FieldName = 'Saldo'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 2
      Size = 2
    end
  end
  object DSBon: TDataSource
    DataSet = QuBon
    Left = 66
    Top = 112
  end
  object QuCek: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select a.no_bukti, a.tanggal,a.penerima,a.keterangan,a.debet,a.k' +
        'redit '
      'from bon a'
      'where (Select sum(b.debet-b.kredit) from bon b '
      '            where a.no_bukti=b.no_bukti group by b.no_bukti) > 0')
    Left = 270
    Top = 144
  end
  object DataSource3: TDataSource
    DataSet = QuCek
    Left = 344
    Top = 143
  end
  object dxBon: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 152
    Top = 144
  end
  object dxBonBelumLunas: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 184
    Top = 144
  end
  object dxBonTelahLunas: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 224
    Top = 144
  end
  object frxReport1: TfrxReport
    Version = '4.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40504.5649314583
    ReportOptions.LastChange = 40504.6682070949
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var xFilename : String;'
      'procedure Memo1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <frxDBDataset1."TipeTrans">='#39'KM'#39' then'
      '  Begin'
      '    memo1.Text := '#39'BUKTI KAS MASUK'#39';'
      
        '    memo7.text := '#39' Terima dari'#39';                               ' +
        '                                  '
      '  end'
      '  else if <frxDBDataset1."TipeTrans">='#39'KK'#39' then'
      '  Begin'
      '    memo1.Text := '#39'BUKTI KAS KELUAR'#39';'
      
        '    memo7.text := '#39' Kepada'#39';                                    ' +
        '                             '
      '  end'
      '  else if <frxDBDataset1."TipeTrans">='#39'BM'#39' then'
      '  Begin'
      '    memo1.Text := '#39'BUKTI BANK MASUK'#39';'
      
        '    memo7.text := '#39' Terima dari'#39';                               ' +
        '                                  '
      '  end'
      '  else if <frxDBDataset1."TipeTrans">='#39'BK'#39' then'
      '  Begin'
      '    memo1.Text := '#39'BUKTI BANK KELUAR'#39';'
      
        '    memo7.text := '#39' Kepada'#39';                                    ' +
        '                             '
      '  end      '
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                        '
      ''
      
        '  if <xFilename><>'#39#39'   then                                     ' +
        '                          '
      '     Picture1.Picture.LoadFromFile(<xFilename>);        '
      'end;'
      '  '
      'begin'
      '   '
      'end.')
    Left = 464
    Top = 120
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      PaperWidth = 216
      PaperHeight = 139.5
      PaperSize = 256
      LeftMargin = 10
      RightMargin = 10
      TopMargin = 10
      BottomMargin = 10
      LargeDesignHeight = True
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        Height = 18.89765
        Top = 173.85838
        Width = 740.78788
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object frxDBDataset1Lawan: TfrxMemoView
          Width = 79.37013
          Height = 18.89765
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            ' [frxDBDataset1."Lawan"]')
          ParentFont = False
        end
        object frxDBDataset1Keterangan: TfrxMemoView
          Left = 79.37013
          Width = 298.58287
          Height = 18.89765
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            ' [frxDBDataset1."Keterangan"]')
          ParentFont = False
        end
        object frxDBDataset1JumlahRp: TfrxMemoView
          Left = 377.953
          Width = 139.84261
          Height = 18.89765
          StretchMode = smMaxHeight
          DataField = 'JumlahRp'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."JumlahRp"]')
          ParentFont = False
        end
        object frxDBDataset1myGiro: TfrxMemoView
          Left = 517.79561
          Width = 222.99227
          Height = 18.89765
          StretchMode = smMaxHeight
          DataField = 'myGiro'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."myGiro"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 94.48825
        Top = 18.89765
        Width = 740.78788
        object frxDBDataset1NoBukti: TfrxMemoView
          Left = 597.16574
          Width = 143.62214
          Height = 22.67718
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            ' [frxDBDataset1."NoBukti"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1Tanggal: TfrxMemoView
          Left = 597.16574
          Top = 22.67718
          Width = 143.62214
          Height = 22.67718
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            ' [frxDBDataset1."Tanggal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Width = 517.79561
          Height = 45.35436
          OnBeforePrint = 'Memo1OnBeforePrint'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'BUKTI KAS MASUK')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 517.79561
          Width = 79.37013
          Height = 22.67718
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            ' No. Bukti')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 517.79561
          Top = 22.67718
          Width = 79.37013
          Height = 22.67718
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            ' Tanggal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 597.16574
          Top = 45.35436
          Width = 143.62214
          Height = 22.67718
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            ' [frxDBDataset1."Lampiran"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 517.79561
          Top = 45.35436
          Width = 79.37013
          Height = 22.67718
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            ' Lampiran')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 79.37013
          Top = 45.35436
          Width = 438.42548
          Height = 22.67718
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            ' [frxDBDataset1."Note"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Top = 45.35436
          Width = 79.37013
          Height = 22.67718
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            ' Terima dari')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Top = 68.03154
          Width = 79.37013
          Height = 26.45671
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Perkiraan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 79.37013
          Top = 68.03154
          Width = 298.58287
          Height = 26.45671
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Keterangan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 377.953
          Top = 68.03154
          Width = 139.84261
          Height = 26.45671
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 517.79561
          Top = 68.03154
          Width = 222.99227
          Height = 26.45671
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CH/BG')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Top = 26.45671
          Width = 517.79561
          Height = 18.89765
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[<frxDBDataset1."namaPerkiraan">] ([frxDBDataset1."Perkiraan"])')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Left = 79.37013
          Top = 68.03154
          Height = 202.204724409449
          Frame.Typ = [ftLeft]
        end
        object Line3: TfrxLineView
          Top = 68.03154
          Height = 202.204724409449
          Frame.Typ = [ftLeft]
        end
        object Line4: TfrxLineView
          Left = 377.953
          Top = 68.03154
          Height = 202.204724409449
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          Left = 517.79561
          Top = 68.03154
          Height = 202.204724409449
          Frame.Typ = [ftLeft]
        end
        object Line6: TfrxLineView
          Left = 740.78788
          Top = 68.03154
          Height = 202.204724409449
          Frame.Typ = [ftLeft]
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 181.41744
        Top = 253.22851
        Width = 740.78788
        object Memo13: TfrxMemoView
          Top = 22.67718
          Width = 740.78788
          Height = 30.23624
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[Terbilang]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Width = 742.677165354331
          Frame.Typ = [ftTop]
        end
        object Memo14: TfrxMemoView
          Left = 377.953
          Width = 139.84261
          Height = 18.89765
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBDataset1."JumlahRp">,Masterdata1,2)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Top = 52.91342
          Width = 147.4015748
          Height = 18.89765
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Pembukuan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 147.40167
          Top = 52.91342
          Width = 147.4015748
          Height = 18.89765
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Mengetahui')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 294.80334
          Top = 52.91342
          Width = 147.4015748
          Height = 18.89765
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Menyetujui')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 589.60668
          Top = 52.91342
          Width = 151.18110236
          Height = 18.89765
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Penerima')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 442.20501
          Top = 52.91342
          Width = 147.4015748
          Height = 18.89765
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kasir')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Top = 71.81107
          Width = 147.4015748
          Height = 83.14966
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 147.40167
          Top = 71.81107
          Width = 147.4015748
          Height = 83.14966
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 294.80334
          Top = 71.81107
          Width = 147.4015748
          Height = 83.14966
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 589.60668
          Top = 71.81107
          Width = 151.18110236
          Height = 83.14966
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 442.20501
          Top = 71.81107
          Width = 147.4015748
          Height = 83.14966
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Top = 71.81107
          Width = 147.40167
          Height = 83.14966
          Center = True
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          KeepAspectRatio = False
          Stretched = False
          HightQuality = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = QuCetak
    Left = 464
    Top = 152
  end
  object QuCetak: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    Left = 432
    Top = 120
  end
  object QuMaster: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @Tahun int, @Bulan int, @Perkiraan varchar(20)'
      ''
      'select @Tahun=2009, @Bulan=9, @Perkiraan='#39#39
      ''
      
        'Select '#9'A.NoBukti+right('#39'0000000000'#39'+A.Perkiraan,10)+right('#39'0000' +
        '0'#39'+cast(A.Urut as varchar(5)),5) KeyNoBukti,'
      
        '        A.Devisi, A.NoBukti, A.NOURUT, A.Tanggal, A.Penerima, A.' +
        'Keterangan,'
      
        #9'A.Debet, A.Kredit, A.Perkiraan, isnull(A.KodeVls,'#39'IDR'#39') KodeVls' +
        ', isnull(A.Kurs,1) Kurs, isnull(A.DebetD,0) DebetD, isnull(A.Kre' +
        'ditD,0) KreditD,'
      #9'A.TglInput, A.UserID, A.Urut, A.BuktiKas, A.UrutKas,'
      
        '        A.Debet-A.Kredit Saldo, isnull(A.DebetD,0)-isnull(A.Kred' +
        'itD,0) SaldoD'
      'From dbBon A'
      
        'where A.Perkiraan=@Perkiraan and year(A.Tanggal)=@Tahun and mont' +
        'h(A.Tanggal)=@Bulan'
      'Order by A.NoBukti')
    Left = 24
    Top = 152
    object QuMasterKeyNoBukti: TStringField
      FieldName = 'KeyNoBukti'
      ReadOnly = True
      Size = 35
    end
    object QuMasterDevisi: TStringField
      FieldName = 'Devisi'
      Size = 15
    end
    object QuMasterNoBukti: TStringField
      FieldName = 'NoBukti'
    end
    object QuMasterNOURUT: TStringField
      FieldName = 'NOURUT'
      Size = 5
    end
    object QuMasterTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuMasterPenerima: TStringField
      FieldName = 'Penerima'
      Size = 100
    end
    object QuMasterKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 100
    end
    object QuMasterDebet: TBCDField
      FieldName = 'Debet'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuMasterKredit: TBCDField
      FieldName = 'Kredit'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuMasterPerkiraan: TStringField
      FieldName = 'Perkiraan'
      Size = 25
    end
    object QuMasterTglInput: TDateTimeField
      FieldName = 'TglInput'
    end
    object QuMasterUserID: TStringField
      FieldName = 'UserID'
    end
    object QuMasterUrut: TWordField
      FieldName = 'Urut'
    end
    object QuMasterBuktiKas: TStringField
      FieldName = 'BuktiKas'
      Size = 30
    end
    object QuMasterUrutKas: TIntegerField
      FieldName = 'UrutKas'
    end
    object QuMasterSaldo: TBCDField
      FieldName = 'Saldo'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 19
      Size = 2
    end
    object QuMasterKodeVls: TStringField
      FieldName = 'KodeVls'
      Size = 10
    end
    object QuMasterKurs: TBCDField
      FieldName = 'Kurs'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QuMasterDebetD: TBCDField
      FieldName = 'DebetD'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuMasterKreditD: TBCDField
      FieldName = 'KreditD'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuMasterSaldoD: TBCDField
      FieldName = 'SaldoD'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 19
      Size = 2
    end
  end
  object QuMasterOut: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @Tahun int, @Bulan int, @Perkiraan varchar(20)'
      ''
      'select @Tahun=2009, @Bulan=9, @Perkiraan='#39#39
      ''
      
        'Select '#9'A.NoBukti+right('#39'0000000000'#39'+A.Perkiraan,10)+right('#39'0000' +
        '0'#39'+cast(A.Urut as varchar(5)),5) KeyNoBukti,'
      
        '        A.Devisi, A.NoBukti, A.NOURUT, A.Tanggal, A.Penerima, A.' +
        'Keterangan,'
      
        #9'A.Debet, SUM(isnull(B.Kredit,0)) Kredit, A.Perkiraan, isnull(A.' +
        'KodeVls,'#39'IDR'#39') KodeVls, isnull(A.Kurs,1) Kurs,'
      
        '        isnull(A.DebetD,0) DebetD, SUM(isnull(B.KreditD,0)) Kred' +
        'itD,'
      #9'A.TglInput, A.UserID, A.Urut, A.BuktiKas, A.UrutKas,'
      '        A.Debet-SUM(isnull(B.Kredit,0)) Saldo,'
      '        isnull(A.DebetD,0)-SUM(isnull(B.KreditD,0)) SaldoD'
      'From    dbBon A'
      
        'Left Outer Join dbBon B on B.NoBukti=A.NoBukti and B.Perkiraan=A' +
        '.Perkiraan and B.Kredit<>0'
      'where   A.Perkiraan=@Perkiraan'
      '        and A.Debet<>0'
      
        'Group By A.Devisi, A.NoBukti, A.NOURUT, A.Tanggal, A.Penerima, A' +
        '.Keterangan,'
      #9'A.Debet, A.Perkiraan, A.KodeVls, A.Kurs, A.DebetD, '
      #9'A.TglInput, A.UserID, A.Urut, A.BuktiKas, A.UrutKas'
      'Having  SUM(isnull(B.Kredit,0))<A.Debet'
      'Order by A.Tanggal, A.NoBukti'
      '')
    Left = 24
    Top = 192
    object QuMasterOutKeyNoBukti: TStringField
      FieldName = 'KeyNoBukti'
      ReadOnly = True
      Size = 35
    end
    object QuMasterOutDevisi: TStringField
      FieldName = 'Devisi'
      Size = 15
    end
    object QuMasterOutNoBukti: TStringField
      FieldName = 'NoBukti'
    end
    object QuMasterOutNOURUT: TStringField
      FieldName = 'NOURUT'
      Size = 5
    end
    object QuMasterOutTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuMasterOutPenerima: TStringField
      FieldName = 'Penerima'
      Size = 100
    end
    object QuMasterOutKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 100
    end
    object QuMasterOutDebet: TBCDField
      FieldName = 'Debet'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuMasterOutKredit: TBCDField
      FieldName = 'Kredit'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuMasterOutPerkiraan: TStringField
      FieldName = 'Perkiraan'
      Size = 25
    end
    object QuMasterOutTglInput: TDateTimeField
      FieldName = 'TglInput'
    end
    object QuMasterOutUserID: TStringField
      FieldName = 'UserID'
    end
    object QuMasterOutUrut: TWordField
      FieldName = 'Urut'
    end
    object QuMasterOutBuktiKas: TStringField
      FieldName = 'BuktiKas'
      Size = 30
    end
    object QuMasterOutUrutKas: TIntegerField
      FieldName = 'UrutKas'
    end
    object QuMasterOutSaldo: TBCDField
      FieldName = 'Saldo'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuMasterOutKodeVls: TStringField
      FieldName = 'KodeVls'
      Size = 10
    end
    object QuMasterOutKurs: TBCDField
      FieldName = 'Kurs'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QuMasterOutDebetD: TBCDField
      FieldName = 'DebetD'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuMasterOutKreditD: TBCDField
      FieldName = 'KreditD'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuMasterOutSaldoD: TBCDField
      FieldName = 'SaldoD'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
  end
  object DsMaster: TDataSource
    DataSet = QuMaster
    Left = 56
    Top = 152
  end
  object DsMasterOut: TDataSource
    DataSet = QuMasterOut
    Left = 56
    Top = 192
  end
end
