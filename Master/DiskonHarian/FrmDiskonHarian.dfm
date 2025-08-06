object FrDiskonHarian: TFrDiskonHarian
  Left = 280
  Top = 149
  Width = 800
  Height = 480
  Caption = 'Master Diskon Harian'
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
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 784
    Height = 46
    ButtonHeight = 36
    ButtonWidth = 52
    Caption = 'ToolBar1'
    Color = clBtnFace
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
      Visible = False
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 52
      Top = 0
      Hint = 'Koreksi Record'
      Caption = '&Koreksi'
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 104
      Top = 0
      Hint = 'Hapus Record'
      Caption = '&Hapus'
      ImageIndex = 13
      Visible = False
      OnClick = ToolButton3Click
    end
    object ToolButton5: TToolButton
      Left = 156
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object ToolButton10: TToolButton
      Left = 164
      Top = 0
      Caption = 'Refresh'
      ImageIndex = 12
      OnClick = ToolButton10Click
    end
    object ToolButton7: TToolButton
      Left = 216
      Top = 0
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object ToolButton6: TToolButton
      Left = 224
      Top = 0
      Caption = 'Lain - lain'
      DropdownMenu = PopupMenu1
      ImageIndex = 10
      Style = tbsDropDown
    end
    object ToolButton11: TToolButton
      Left = 291
      Top = 0
      Width = 8
      Caption = 'ToolButton11'
      ImageIndex = 9
      Style = tbsSeparator
    end
    object ToolButton9: TToolButton
      Left = 299
      Top = 0
      Caption = 'K&eluar'
      ImageIndex = 8
      OnClick = ToolButton9Click
    end
    object ToolButton8: TToolButton
      Left = 351
      Top = 0
      Width = 8
      Caption = 'ToolButton8'
      ImageIndex = 8
      Style = tbsSeparator
    end
  end
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 46
    Width = 784
    Height = 396
    Hint = 'Untuk cari data ketik kata yang dicari di grid'
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'Hari'
    ShowGroupPanel = True
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
    OnDblClick = ToolButton2Click
    OnMouseUp = dxDBGrid1MouseUp
    AutoExpandOnSearch = False
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'Tahoma'
    BandFont.Style = []
    DataSource = DsView
    Filter.Criteria = {00000000}
    GridLineColor = clBlack
    GroupPanelColor = 13025469
    GroupPanelFontColor = clBlack
    GroupNodeColor = clMoneyGreen
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clBlack
    HeaderFont.Height = -12
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
    OnCustomDrawCell = dxDBGrid1CustomDrawCell
    OnCustomDrawFooter = dxDBGrid1CustomDrawFooter
    object dxDBGrid1NamaHari: TdxDBGridMaskColumn
      Caption = 'Hari'
      HeaderAlignment = taCenter
      Width = 60
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NamaHari'
    end
    object dxDBGrid1Diskon: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Width = 60
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Diskon'
    end
    object dxDBGrid1Aktif: TdxDBGridCheckColumn
      HeaderAlignment = taCenter
      Width = 50
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Aktif'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object QuView: TADOQuery
    AutoCalcFields = False
    CacheSize = 2000
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'select Hari,Diskon,Aktif,'
      'case when Hari=0 then '#39'Minggu'#39
      '     when Hari=1 then '#39'Senin'#39
      '     when Hari=2 then '#39'Selasa'#39
      '     when Hari=3 then '#39'Rabu'#39
      '     when Hari=4 then '#39'Kamis'#39
      '     when Hari=5 then '#39'Jumat'#39
      '     when Hari=6 then '#39'Sabtu'#39
      'end NamaHari'
      'from dbDiskonHarian'
      'order by Hari')
    Left = 34
    Top = 189
    object QuViewHari: TIntegerField
      FieldName = 'Hari'
    end
    object QuViewDiskon: TBCDField
      FieldName = 'Diskon'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuViewAktif: TBooleanField
      FieldName = 'Aktif'
    end
    object QuViewNamaHari: TStringField
      FieldName = 'NamaHari'
      ReadOnly = True
      Size = 6
    end
  end
  object DsView: TDataSource
    DataSet = QuView
    Left = 59
    Top = 189
  end
  object PopupMenu1: TPopupMenu
    Left = 469
    Top = 135
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
    Left = 499
    Top = 135
  end
  object sp_cekStockAwal: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'sp_cekstockawal;1'
    Parameters = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@kodebrg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = 'a'
      end
      item
        Name = '@bulan'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@tahun'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 558
    Top = 135
  end
  object sp_barang: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'Sp_DiskonHarian;1'
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
        Name = '@Hari'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Diskon'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Aktif'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OldKode'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
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
end
