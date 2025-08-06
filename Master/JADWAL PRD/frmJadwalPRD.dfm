object FrJadwalPRD: TFrJadwalPRD
  Left = 200
  Top = 183
  Width = 1024
  Height = 480
  Caption = 'Jadwal Produksi'
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
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1016
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
    Width = 1016
    Height = 400
    Hint = 'Untuk cari data ketik kata yang dicari di grid'
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'KodeMsn'
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
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
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
    object dxDBGrid1KodeMesin: TdxDBGridMaskColumn
      Caption = 'Kode Mesin'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KodeMsn'
    end
    object dxDBGrid1NamaMesin: TdxDBGridMaskColumn
      Caption = 'Nama Mesin'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HeaderAlignment = taCenter
      Width = 400
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NmMesin'
    end
    object dxDBGrid1IsProduksi: TdxDBGridCheckColumn
      Caption = 'Produksi Y/T'
      HeaderAlignment = taCenter
      Visible = False
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ISPRODUKSI'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object dxDBGrid1Tanggal: TdxDBGridColumn
      Caption = 'Tanggal'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TANGGAL'
    end
    object dxDBGrid1Jamawal: TdxDBGridColumn
      Caption = 'Jam Awal'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'JAMAWAL'
    end
    object dxDBGrid1JamAkhir: TdxDBGridColumn
      Caption = 'Jam Akhir'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'JAMAKHIR'
    end
    object dxDBGridNospk: TdxDBGridColumn
      Caption = 'No SPK'
      HeaderAlignment = taCenter
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NOSPK'
    end
    object dxDBGridKeterangan: TdxDBGridColumn
      Caption = 'Keterangan'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KETERANGAN'
    end
    object dxDBGridQNTSPK: TdxDBGridColumn
      Caption = 'Qnt SPK'
      HeaderAlignment = taCenter
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'QNTSPK'
    end
    object dxDBGridQNTKerja: TdxDBGridColumn
      Caption = 'Qnt Kerja'
      HeaderAlignment = taCenter
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'QNTKERJA'
    end
  end
  object QuView: TADOQuery
    CacheSize = 1000
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      
        'select A.Nojadwal,A.KODEMSN,A.TANGGAL,A.JAMAWAL,A.JAMAKHIR,A.ISP' +
        'RODUKSI,A.NOSPK,A.KETERANGAN,A.QNTSPK,A.QNTKERJA,'
      'B.Ket NmMesin,A.Nojadwal '
      'from DBJADWALPRD A'
      'left outer join DBMesin B on A.KODEMSN=B.KodeMsn')
    Left = 106
    Top = 101
    object QuViewNojadwal: TAutoIncField
      FieldName = 'Nojadwal'
      ReadOnly = True
    end
    object QuViewKODEMSN: TStringField
      FieldName = 'KODEMSN'
      Size = 15
    end
    object QuViewTANGGAL: TDateTimeField
      FieldName = 'TANGGAL'
    end
    object QuViewJAMAWAL: TDateTimeField
      FieldName = 'JAMAWAL'
      DisplayFormat = 'hh:mm'
    end
    object QuViewJAMAKHIR: TDateTimeField
      FieldName = 'JAMAKHIR'
      DisplayFormat = 'hh:mm'
    end
    object QuViewISPRODUKSI: TBooleanField
      FieldName = 'ISPRODUKSI'
    end
    object QuViewNOSPK: TStringField
      FieldName = 'NOSPK'
    end
    object QuViewKETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 50
    end
    object QuViewQNTSPK: TBCDField
      FieldName = 'QNTSPK'
      Precision = 18
      Size = 2
    end
    object QuViewQNTKERJA: TBCDField
      FieldName = 'QNTKERJA'
      Precision = 18
      Size = 2
    end
    object QuViewNmMesin: TStringField
      FieldName = 'NmMesin'
      Size = 50
    end
  end
  object DsView: TDataSource
    DataSet = QuView
    Left = 139
    Top = 101
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
    ProcedureName = 'Sp_JadwalPRD;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Choice'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@Nojadwal'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@KodeMsn'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@Tanggal'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Jamawal'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@JamAkhir'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@IsProduksi'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Nospk'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
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
        Name = '@QntSPK'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@QntKerja'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end>
    Left = 529
    Top = 104
  end
end
