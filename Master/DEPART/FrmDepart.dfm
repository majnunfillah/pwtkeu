object FrDepart: TFrDepart
  Left = 136
  Top = 201
  Width = 696
  Height = 480
  Caption = 'Departemen'
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
    KeyField = 'KDDEP'
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
    OptionsBehavior = [edgoAutoSearch, edgoDragScroll, edgoEnterShowEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
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
    object dxDBGrid1KODEGRP: TdxDBGridMaskColumn
      Caption = 'Kode Departemen'
      Width = 155
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KDDEP'
    end
    object dxDBGrid1NAMAGRP: TdxDBGridMaskColumn
      Caption = 'Nama Departemen'
      Width = 297
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NMDEP'
    end
    object dxDBGrid1Column3: TdxDBGridColumn
      Caption = 'Perk.Biaya'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PerkBiaya'
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
        Visible = False
      end
      object ToolButton6: TToolButton
        Left = 331
        Top = 0
        Caption = 'Lain-lain'
        DropdownMenu = PopupMenu1
        ImageIndex = 10
        Style = tbsDropDown
      end
      object ToolButton8: TToolButton
        Left = 407
        Top = 0
        Width = 8
        Caption = 'ToolButton8'
        ImageIndex = 9
        Style = tbsSeparator
      end
      object ToolButton9: TToolButton
        Left = 415
        Top = 0
        Caption = 'K&eluar'
        ImageIndex = 8
        OnClick = ToolButton9Click
      end
      object ToolButton11: TToolButton
        Left = 478
        Top = 0
        Width = 8
        Caption = 'ToolButton11'
        ImageIndex = 9
        Style = tbsSeparator
        Visible = False
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
      'Select a.*,b.Keterangan from dbDepart a'
      'left Outer Join dbPerkiraan b On b.Perkiraan=a.PerkBiaya'
      'order by kdDep')
    Left = 50
    Top = 45
    object QuViewKDDEP: TStringField
      FieldName = 'KDDEP'
    end
    object QuViewNMDEP: TStringField
      FieldName = 'NMDEP'
      Size = 40
    end
    object QuViewPerkBiaya: TStringField
      FieldName = 'PerkBiaya'
      Size = 25
    end
    object QuViewKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 8000
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
  object Sp_Departemen: TADOStoredProc
    AutoCalcFields = False
    Connection = DM.MyStock
    ProcedureName = 'Sp_DEPART;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@Choice'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
      end
      item
        Name = '@KDDEP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
      end
      item
        Name = '@NMDEP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 40
      end
      item
        Name = '@OldKode'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
      end
      item
        Name = '@PerkBiaya'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
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
