object FrKategori: TFrKategori
  Left = 196
  Top = 125
  Width = 696
  Height = 480
  Caption = 'Ketegori'
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
    Width = 688
    Height = 46
    ButtonHeight = 39
    ButtonWidth = 63
    Color = clBtnFace
    Customizable = True
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
    object ToolButton10: TToolButton
      Left = 260
      Top = 0
      Caption = 'Refresh'
      ImageIndex = 12
      OnClick = ToolButton10Click
    end
    object ToolButton7: TToolButton
      Left = 323
      Top = 0
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object ToolButton6: TToolButton
      Left = 331
      Top = 0
      Caption = 'Lain-lain'
      DropdownMenu = PopupMenu1
      ImageIndex = 10
      Style = tbsDropDown
      Visible = False
    end
    object ToolButton8: TToolButton
      Left = 407
      Top = 0
      Width = 8
      Caption = 'ToolButton8'
      ImageIndex = 9
      Style = tbsSeparator
      Visible = False
    end
    object ToolButton9: TToolButton
      Left = 415
      Top = 0
      Caption = 'K&eluar'
      ImageIndex = 8
      OnClick = ToolButton9Click
    end
  end
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 46
    Width = 688
    Height = 400
    Hint = 'Untuk cari data ketik kata yang dicari di grid'
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'KodeKategori'
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
    TabOrder = 1
    OnMouseUp = dxDBGrid1MouseUp
    AutoExpandOnSearch = False
    BandColor = clBlack
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -13
    BandFont.Name = 'Tahoma'
    BandFont.Style = []
    DataSource = DsView
    Filter.Criteria = {00000000}
    FixedBandLineColor = clBlack
    GridLineColor = clBlack
    GroupPanelColor = 13025469
    GroupPanelFontColor = clBlack
    GroupNodeColor = clMoneyGreen
    GroupNodeTextColor = clBlack
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
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -13
    PreviewFont.Name = 'Tahoma'
    PreviewFont.Style = []
    RowFooterColor = 16763283
    RowFooterTextColor = clWindow
    ShowRowFooter = True
    OnCustomDrawCell = dxDBGrid1CustomDrawCell
    OnCustomDrawFooter = dxDBGrid1CustomDrawFooter
    object dxDBGrid1KodeKategori: TdxDBGridMaskColumn
      Caption = 'Kode Kategori'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KodeKategori'
    end
    object dxDBGrid1Keterangan: TdxDBGridMaskColumn
      Caption = 'Nama Kategori'
      HeaderAlignment = taCenter
      Width = 300
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Keterangan'
    end
    object dxDBGrid1Gudang: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Width = 250
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Gudang'
    end
  end
  object QuView: TADOQuery
    CacheSize = 1000
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'Select a.*, b.Nama NamaGdg,'
      
        '       isnull(B.Nama,'#39#39')+Case when isnull(B.Nama,'#39#39')<>'#39#39' then '#39' ' +
        '('#39'+a.Kodegdg+'#39')'#39' else '#39#39' end Gudang'
      'from dbKategori a'
      '     left outer join dbGudang b on b.kodegdg=a.kodegdg'
      'order by a.KodeKategori')
    Left = 50
    Top = 45
    object QuViewKodeKategori: TStringField
      FieldName = 'KodeKategori'
      Size = 15
    end
    object QuViewKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 100
    end
    object QuViewKodegdg: TStringField
      FieldName = 'Kodegdg'
      Size = 15
    end
    object QuViewNamaGdg: TStringField
      FieldName = 'NamaGdg'
      Size = 40
    end
    object QuViewGudang: TStringField
      FieldName = 'Gudang'
      ReadOnly = True
      Size = 58
    end
  end
  object DsView: TDataSource
    DataSet = QuView
    Left = 75
    Top = 45
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
  object Sp_Merk: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'Sp_Kategori;1'
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
        Name = '@KodeKategori'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
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
        Name = '@KodeGdg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@OldKode'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end>
    Left = 529
    Top = 104
  end
end
