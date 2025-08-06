object FrEkspedisi: TFrEkspedisi
  Left = 200
  Top = 162
  Width = 696
  Height = 480
  Caption = 'Ekspedisi'
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
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 48
    Width = 688
    Height = 398
    Hint = 'Untuk cari data ketik kata yang dicari di grid'
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'KODEEXP'
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
    OnCustomDrawCell = dxDBGrid1CustomDrawCell
    OnCustomDrawFooter = dxDBGrid1CustomDrawFooter
    object dxDBGrid1KODEEXP: TdxDBGridMaskColumn
      Caption = 'Kode Eks'
      Width = 70
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KODEEXP'
    end
    object dxDBGrid1NAMAEXP: TdxDBGridMaskColumn
      Caption = 'Nama Ekspedisi'
      Width = 200
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NAMAEXP'
    end
    object dxDBGrid1ALAMAT1: TdxDBGridMaskColumn
      Caption = 'Alamat'
      Width = 250
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ALAMAT1'
    end
    object dxDBGrid1KOTA: TdxDBGridMaskColumn
      Caption = 'Kota'
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KOTA'
    end
    object dxDBGrid1KODEPOS: TdxDBGridMaskColumn
      Caption = 'Kode Pos'
      Visible = False
      Width = 60
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KODEPOS'
    end
    object dxDBGrid1TELPON: TdxDBGridMaskColumn
      Caption = 'Telepon'
      Width = 120
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TELPON'
    end
    object dxDBGrid1HP: TdxDBGridMaskColumn
      Visible = False
      Width = 150
      BandIndex = 0
      RowIndex = 0
      FieldName = 'HP'
    end
    object dxDBGrid1FAX: TdxDBGridMaskColumn
      Caption = 'Fax'
      Visible = False
      Width = 150
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FAX'
    end
    object dxDBGrid1Contact: TdxDBGridMaskColumn
      Visible = False
      Width = 228
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Contact'
    end
    object dxDBGrid1Aktif: TdxDBGridMaskColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Aktif'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 688
      Height = 40
      ButtonHeight = 39
      ButtonWidth = 63
      Color = clBtnFace
      Customizable = True
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
        Left = 63
        Top = 0
        Hint = 'Koreksi Record'
        Caption = '&Koreksi'
        ImageIndex = 1
        OnClick = ToolButton2Click
      end
      object ToolButton3: TToolButton
        Left = 126
        Top = 0
        Hint = 'Hapus Record'
        Caption = '&Hapus'
        ImageIndex = 13
        OnClick = ToolButton3Click
      end
      object ToolButton5: TToolButton
        Left = 189
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object ToolButton4: TToolButton
        Left = 197
        Top = 0
        Caption = '&Cetak'
        ImageIndex = 4
        Visible = False
      end
      object ToolButton12: TToolButton
        Left = 260
        Top = 0
        Caption = 'Semua'
        DropdownMenu = PopupMenu2
        ImageIndex = 7
        Style = tbsDropDown
        Visible = False
      end
      object ToolButton10: TToolButton
        Left = 336
        Top = 0
        Caption = 'Refresh'
        ImageIndex = 12
        OnClick = ToolButton10Click
      end
      object ToolButton7: TToolButton
        Left = 399
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 0
        Style = tbsSeparator
        Visible = False
      end
      object ToolButton6: TToolButton
        Left = 407
        Top = 0
        Caption = 'Lain - lain'
        DropdownMenu = PopupMenu1
        ImageIndex = 10
        Style = tbsDropDown
      end
      object ToolButton8: TToolButton
        Left = 483
        Top = 0
        Width = 8
        Caption = 'ToolButton8'
        ImageIndex = 9
        Style = tbsSeparator
      end
      object ToolButton9: TToolButton
        Left = 491
        Top = 0
        Caption = 'K&eluar'
        ImageIndex = 8
        OnClick = ToolButton9Click
      end
    end
  end
  object QuView: TADOQuery
    CacheSize = 2000
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'from   dbExpedisi'
      ''
      'order by KodeExp')
    Left = 50
    Top = 93
    object QuViewKODEEXP: TStringField
      FieldName = 'KODEEXP'
    end
    object QuViewNAMAEXP: TStringField
      FieldName = 'NAMAEXP'
      Size = 40
    end
    object QuViewALAMAT1: TStringField
      FieldName = 'ALAMAT1'
      Size = 100
    end
    object QuViewALAMAT2: TStringField
      FieldName = 'ALAMAT2'
      Size = 100
    end
    object QuViewKOTA: TStringField
      FieldName = 'KOTA'
      Size = 30
    end
    object QuViewKODEPOS: TStringField
      FieldName = 'KODEPOS'
      Size = 7
    end
    object QuViewTELPON: TStringField
      FieldName = 'TELPON'
      Size = 30
    end
    object QuViewHP: TStringField
      FieldName = 'HP'
      Size = 30
    end
    object QuViewFAX: TStringField
      FieldName = 'FAX'
      Size = 30
    end
    object QuViewEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object QuViewContact: TStringField
      FieldName = 'Contact'
      Size = 50
    end
    object QuViewPerkiraan: TStringField
      FieldName = 'Perkiraan'
      Size = 15
    end
    object QuViewAktif: TIntegerField
      FieldName = 'Aktif'
    end
  end
  object DsView: TDataSource
    DataSet = QuView
    Left = 75
    Top = 93
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
      Visible = False
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
      Visible = False
      OnClick = MultiSelect1Click
    end
  end
  object SaveDialog: TSaveDialog
    FileName = 'ExpGrid'
    Options = [ofOverwritePrompt, ofHideReadOnly]
    Left = 503
    Top = 104
  end
  object Sp_Ekspedisi: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'Sp_Expedisi;1'
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
        Name = '@KodeExp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@NamaExp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 40
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
        Name = '@Kota'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
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
        Name = '@Telpon'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@Hp'
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
        Size = 100
        Value = Null
      end
      item
        Name = '@Contact'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
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
        Name = '@Aktif'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 529
    Top = 104
  end
  object PopupMenu2: TPopupMenu
    Left = 480
    Top = 164
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
end
