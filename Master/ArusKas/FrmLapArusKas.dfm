object FrLapArusKas: TFrLapArusKas
  Left = 271
  Top = 193
  Width = 823
  Height = 480
  Caption = 'Setting Lap Arus Kas'
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
    Width = 815
    Height = 46
    ButtonHeight = 37
    ButtonWidth = 85
    Color = clBtnFace
    Customizable = True
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
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
      Left = 85
      Top = 0
      Hint = 'Koreksi Record'
      Caption = '&Koreksi'
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 170
      Top = 0
      Hint = 'Hapus Record'
      Caption = '&Hapus'
      ImageIndex = 13
      OnClick = ToolButton3Click
    end
    object ToolButton5: TToolButton
      Left = 255
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object ToolButton4: TToolButton
      Left = 263
      Top = 0
      Caption = '&Cetak'
      ImageIndex = 4
      Visible = False
    end
    object ToolButton10: TToolButton
      Left = 348
      Top = 0
      Caption = 'Refresh'
      ImageIndex = 12
      OnClick = ToolButton10Click
    end
    object ToolButton7: TToolButton
      Left = 433
      Top = 0
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object ToolButton6: TToolButton
      Left = 441
      Top = 0
      Caption = 'Lain-lain'
      DropdownMenu = PopupMenu1
      ImageIndex = 10
      Style = tbsDropDown
      Visible = False
    end
    object ToolButton8: TToolButton
      Left = 539
      Top = 0
      Width = 8
      Caption = 'ToolButton8'
      ImageIndex = 9
      Style = tbsSeparator
      Visible = False
    end
    object ToolButton9: TToolButton
      Left = 547
      Top = 0
      Caption = 'K&eluar'
      ImageIndex = 8
      OnClick = ToolButton9Click
    end
    object ToolButton11: TToolButton
      Left = 632
      Top = 0
      Width = 8
      Caption = 'ToolButton11'
      ImageIndex = 9
      Style = tbsSeparator
      Visible = False
    end
    object ToolButton12: TToolButton
      Left = 640
      Top = 0
      Caption = '&Sub Aktivitas'
      ImageIndex = 9
      Visible = False
      OnClick = ToolButton12Click
    end
  end
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 46
    Width = 815
    Height = 400
    Hint = 'Untuk cari data ketik kata yang dicari di grid'
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'KODEAK'
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
    PopupMenu = PopupMenu2
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
    GroupNodeTextColor = clBlack
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
    OptionsBehavior = [edgoAutoSearch, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
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
    object dxDBGrid1Nomor: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Width = 60
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Nomor'
    end
    object dxDBGrid1Urutan: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Width = 60
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Urutan'
    end
    object dxDBGrid1Keterangan: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Width = 350
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Keterangan'
    end
    object dxDBGrid1NamaAkt: TdxDBGridMaskColumn
      Caption = 'Jenis Arus Kas'
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NamaAkt'
    end
    object dxDBGrid1KodeAK: TdxDBGridMaskColumn
      Caption = 'Aktivitas'
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NamaAK'
    end
    object dxDBGrid1KodeSAK: TdxDBGridMaskColumn
      Caption = 'Sub Aktivitas'
      HeaderAlignment = taCenter
      Width = 150
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NamaSubAK'
    end
  end
  object QuView: TADOQuery
    CacheSize = 2000
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      
        'select a.*, case when a.Tipe=0 then '#39'Aktivitas'#39' else '#39'Sub Aktivi' +
        'tas'#39' end NamaAkt,'
      'b.NamaAK,c.NamaSubAK'
      'from DBArusKasKonfig a'
      'left outer join DBArusKas b on b.KodeAK=a.KodeAK'
      
        'left outer join DBArusKasDet c on c.KodeSubAK=a.KodeSAK and c.Ko' +
        'deAK=a.KodeAK'
      'order by a.nomor')
    Left = 330
    Top = 133
    object QuViewNomor: TStringField
      FieldName = 'Nomor'
      Size = 25
    end
    object QuViewUrutan: TStringField
      FieldName = 'Urutan'
      Size = 25
    end
    object QuViewKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 100
    end
    object QuViewNamaAkt: TStringField
      FieldName = 'NamaAkt'
      Size = 100
    end
    object QuViewTipe: TSmallintField
      FieldName = 'Tipe'
    end
    object QuViewKodeAK: TStringField
      FieldName = 'KodeAK'
      Size = 15
    end
    object QuViewKodeSAK: TStringField
      FieldName = 'KodeSAK'
      Size = 15
    end
    object QuViewNamaAK: TStringField
      FieldName = 'NamaAK'
      Size = 50
    end
    object QuViewNamaSubAK: TStringField
      FieldName = 'NamaSubAK'
      Size = 100
    end
  end
  object DsView: TDataSource
    DataSet = QuView
    Left = 291
    Top = 181
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
  object Sp_Group: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'Sp_Group;1'
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
        Name = '@KodeGrp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@NamaGrp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@Keterangan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Tipe'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@KodeAK'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@KodeSAK'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end>
    Left = 529
    Top = 104
  end
  object PopupMenu2: TPopupMenu
    Left = 392
    Top = 168
    object ViewSubGroup1: TMenuItem
      Caption = 'View Sub Group'
    end
  end
end
