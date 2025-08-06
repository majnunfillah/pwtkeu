object FrMainJual: TFrMainJual
  Left = -8
  Top = -8
  Width = 1382
  Height = 744
  Caption = 'Penjualan'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1366
    Height = 44
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 1366
      Height = 39
      ButtonHeight = 39
      ButtonWidth = 78
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
        Left = 78
        Top = 0
        Hint = 'Koreksi Record'
        Caption = '&Koreksi'
        ImageIndex = 1
        OnClick = ToolButton2Click
      end
      object ToolButton3: TToolButton
        Left = 156
        Top = 0
        Hint = 'Hapus Record'
        Caption = '&Hapus'
        ImageIndex = 13
        OnClick = ToolButton3Click
      end
      object ToolButton5: TToolButton
        Left = 234
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object ToolButton10: TToolButton
        Left = 242
        Top = 0
        Caption = 'Refresh'
        ImageIndex = 12
        OnClick = ToolButton10Click
      end
      object ToolButton7: TToolButton
        Left = 320
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 0
        Style = tbsSeparator
      end
      object ToolButton6: TToolButton
        Left = 328
        Top = 0
        Caption = 'Lain - lain'
        DropdownMenu = PopupMenu1
        ImageIndex = 10
        Style = tbsDropDown
      end
      object ToolButton8: TToolButton
        Left = 421
        Top = 0
        Width = 8
        Caption = 'ToolButton8'
        ImageIndex = 9
        Style = tbsSeparator
        Visible = False
      end
      object ToolButton9: TToolButton
        Left = 429
        Top = 0
        Caption = 'K&eluar'
        ImageIndex = 8
        OnClick = ToolButton9Click
      end
      object ToolButton11: TToolButton
        Left = 507
        Top = 0
        Caption = 'Tampil Valid'
        DropdownMenu = PopupMenu2
        ImageIndex = 7
        Style = tbsDropDown
        Visible = False
      end
      object ToolButton4: TToolButton
        Left = 600
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 8
        Style = tbsSeparator
      end
      object ToolButton13: TToolButton
        Left = 608
        Top = 0
        Caption = 'AmbilData'
        ImageIndex = 5
        OnClick = ToolButton13Click
      end
    end
    object LokasiFileTxt: TEdit
      Left = 8
      Top = 48
      Width = 337
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
      Visible = False
    end
    object PBProses: TProgressBar
      Left = 352
      Top = 47
      Width = 1014
      Height = 16
      Min = 0
      Max = 100
      TabOrder = 2
      Visible = False
    end
  end
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 44
    Width = 1366
    Height = 662
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
    TabOrder = 1
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
    object dxDBGrid1NoBukti: TdxDBGridMaskColumn
      Caption = 'No. Bukti'
      Width = 120
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NoBukti'
      SummaryFooterType = cstCount
      SummaryFooterFormat = ',0'
    end
    object dxDBGrid1Left2NoBukti: TdxDBGridMaskColumn
      Caption = 'No. 2'
      Width = 50
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Left2NoBukti'
    end
    object dxDBGrid1Urut: TdxDBGridMaskColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Urut'
    end
    object dxDBGrid1Tanggal: TdxDBGridDateColumn
      Width = 80
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Tanggal'
    end
    object dxDBGrid1JatuhTempo: TdxDBGridDateColumn
      Caption = 'Jatuh Tempo'
      Width = 90
      BandIndex = 0
      RowIndex = 0
      FieldName = 'JatuhTempo'
    end
    object dxDBGrid1PPn: TdxDBGridMaskColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PPn'
    end
    object dxDBGrid1KodeCustSupp: TdxDBGridMaskColumn
      Caption = 'Customer'
      Width = 70
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KodeCustSupp'
    end
    object dxDBGrid1NamaCustSupp: TdxDBGridMaskColumn
      Caption = 'Nama Customer'
      Width = 180
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NamaCustSupp'
    end
    object dxDBGrid1KodeTipe: TdxDBGridMaskColumn
      Caption = 'Tipe'
      Width = 50
      BandIndex = 1
      RowIndex = 0
      FieldName = 'KodeTipe'
    end
    object dxDBGrid1NamaTipe: TdxDBGridMaskColumn
      Caption = 'Nama Tipe'
      Width = 120
      BandIndex = 1
      RowIndex = 0
      FieldName = 'NamaTipe'
    end
    object dxDBGrid1KodeSubTipe: TdxDBGridMaskColumn
      Caption = 'Sub Tipe'
      Width = 70
      BandIndex = 1
      RowIndex = 0
      FieldName = 'KodeSubTipe'
    end
    object dxDBGrid1NamaSubTipe: TdxDBGridMaskColumn
      Caption = 'Nama Sub Tipe'
      Width = 120
      BandIndex = 1
      RowIndex = 0
      FieldName = 'NamaSubTipe'
    end
    object dxDBGrid1Qnt: TdxDBGridMaskColumn
      HeaderAlignment = taRightJustify
      Width = 70
      BandIndex = 1
      RowIndex = 0
      FieldName = 'Qnt'
    end
    object dxDBGrid1Harga: TdxDBGridMaskColumn
      HeaderAlignment = taRightJustify
      Width = 80
      BandIndex = 1
      RowIndex = 0
      FieldName = 'Harga'
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
    object dxDBGrid1NDPP: TdxDBGridMaskColumn
      Caption = 'DPP Rp'
      HeaderAlignment = taRightJustify
      Width = 120
      BandIndex = 1
      RowIndex = 0
      FieldName = 'NDPP'
      SummaryFooterType = cstSum
      SummaryFooterFormat = ',0.00'
    end
    object dxDBGrid1NPPN: TdxDBGridMaskColumn
      Caption = 'PPN Rp'
      HeaderAlignment = taRightJustify
      Width = 120
      BandIndex = 1
      RowIndex = 0
      FieldName = 'NPPN'
      SummaryFooterType = cstSum
      SummaryFooterFormat = ',0.00'
    end
    object dxDBGrid1NNet: TdxDBGridMaskColumn
      Caption = 'Total Rp'
      HeaderAlignment = taRightJustify
      Width = 120
      BandIndex = 1
      RowIndex = 0
      FieldName = 'NNet'
      SummaryFooterType = cstSum
      SummaryFooterFormat = ',0.00'
    end
    object dxDBGrid1NDPPD: TdxDBGridMaskColumn
      Caption = 'DPP $'
      HeaderAlignment = taRightJustify
      Width = 100
      BandIndex = 1
      RowIndex = 0
      FieldName = 'NDPPD'
      SummaryFooterType = cstSum
      SummaryFooterFormat = ',0.00'
    end
    object dxDBGrid1NPPND: TdxDBGridMaskColumn
      Caption = 'PPN $'
      HeaderAlignment = taRightJustify
      Width = 100
      BandIndex = 1
      RowIndex = 0
      FieldName = 'NPPND'
      SummaryFooterType = cstSum
      SummaryFooterFormat = ',0.00'
    end
    object dxDBGrid1NNetD: TdxDBGridMaskColumn
      Caption = 'Total $'
      HeaderAlignment = taRightJustify
      Width = 100
      BandIndex = 1
      RowIndex = 0
      FieldName = 'NNetD'
      SummaryFooterType = cstSum
      SummaryFooterFormat = ',0.00'
    end
    object dxDBGrid1AccPersediaan: TdxDBGridMaskColumn
      Caption = 'Acc Persd.'
      Width = 100
      BandIndex = 1
      RowIndex = 0
      FieldName = 'AccPersediaan'
    end
    object dxDBGrid1AccPPN: TdxDBGridMaskColumn
      Caption = 'Acc PPN'
      Width = 100
      BandIndex = 1
      RowIndex = 0
      FieldName = 'AccPPN'
    end
    object dxDBGrid1AccHutPiut: TdxDBGridMaskColumn
      Caption = 'Acc Piutang'
      Width = 100
      BandIndex = 1
      RowIndex = 0
      FieldName = 'AccHutPiut'
    end
    object dxDBGrid1KeyNoBukti: TdxDBGridMaskColumn
      Visible = False
      BandIndex = 1
      RowIndex = 0
      FieldName = 'KeyNoBukti'
    end
    object dxDBGrid1IsExcel: TdxDBGridCheckColumn
      Visible = False
      Width = 100
      BandIndex = 1
      RowIndex = 0
      FieldName = 'IsExcel'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
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
      Visible = False
    end
    object ShowHeader1: TMenuItem
      Caption = 'Show Header'
      Checked = True
      Visible = False
    end
    object Show1: TMenuItem
      Caption = 'Show Footer'
      Checked = True
      Visible = False
    end
    object N2: TMenuItem
      Caption = '-'
      Visible = False
    end
    object AutoFilter1: TMenuItem
      Caption = 'Auto Filter'
      ImageIndex = 14
      OnClick = AutoFilter1Click
    end
    object MultiSelect1: TMenuItem
      Caption = 'Multi Select'
      Visible = False
    end
  end
  object SaveDialog: TSaveDialog
    FileName = 'ExpGrid'
    Options = [ofOverwritePrompt, ofHideReadOnly]
    Left = 503
    Top = 104
  end
  object PopupMenu2: TPopupMenu
    Left = 459
    Top = 71
    object TampilValid: TMenuItem
      Caption = 'Tampil Valid'
      Checked = True
    end
    object TampilBatal: TMenuItem
      Caption = 'Tampil Batal'
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
      'select @Tahun=2012, @Bulan=1'
      ''
      
        'Select '#9'A.NoBukti+right('#39'00000000'#39'+cast(A.Urut as varchar(8)),8)' +
        ' KeyNoBukti,'
      
        '        A.*, C.NamaCustSupp, T.Nama NamaTipe, ST.Nama NamaSubTip' +
        'e,'
      '        cast(left(A.NoBukti,2) as varchar(50)) Left2NoBukti'
      'From dbPenjualan A'
      'Left Outer Join DBCUSTSUPP C on C.KODECUSTSUPP=A.KodeCustSupp'
      'Left Outer Join DBTIPETRANS T on T.KODETIPE=A.KodeTipe'
      
        'Left Outer Join DBSUBTIPETRANS ST on ST.KODETIPE=A.KodeTipe and ' +
        'ST.KODESUBTIPE=A.KodeSubTipe'
      'where year(A.Tanggal)=@Tahun and month(A.Tanggal)=@Bulan'
      'order by A.NoBukti, A.Urut'
      '')
    Left = 24
    Top = 184
    object QuMasterNoBukti: TStringField
      FieldName = 'NoBukti'
      Size = 50
    end
    object QuMasterUrut: TIntegerField
      FieldName = 'Urut'
    end
    object QuMasterTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuMasterJatuhTempo: TDateTimeField
      FieldName = 'JatuhTempo'
    end
    object QuMasterPPn: TWordField
      FieldName = 'PPn'
    end
    object QuMasterKodeCustSupp: TStringField
      FieldName = 'KodeCustSupp'
      Size = 25
    end
    object QuMasterKodeTipe: TStringField
      FieldName = 'KodeTipe'
      Size = 25
    end
    object QuMasterKodeSubTipe: TStringField
      FieldName = 'KodeSubTipe'
      Size = 25
    end
    object QuMasterQnt: TBCDField
      FieldName = 'Qnt'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuMasterHarga: TBCDField
      FieldName = 'Harga'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuMasterNDPP: TBCDField
      FieldName = 'NDPP'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuMasterNPPN: TBCDField
      FieldName = 'NPPN'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuMasterNNet: TBCDField
      FieldName = 'NNet'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuMasterAccPersediaan: TStringField
      FieldName = 'AccPersediaan'
      Size = 25
    end
    object QuMasterAccPPN: TStringField
      FieldName = 'AccPPN'
      Size = 25
    end
    object QuMasterAccHutPiut: TStringField
      FieldName = 'AccHutPiut'
      Size = 25
    end
    object QuMasterIsExcel: TBooleanField
      FieldName = 'IsExcel'
    end
    object QuMasterNamaCustSupp: TStringField
      FieldName = 'NamaCustSupp'
      Size = 100
    end
    object QuMasterNamaTipe: TStringField
      FieldName = 'NamaTipe'
      Size = 50
    end
    object QuMasterNamaSubTipe: TStringField
      FieldName = 'NamaSubTipe'
      Size = 50
    end
    object QuMasterKeyNoBukti: TStringField
      FieldName = 'KeyNoBukti'
      ReadOnly = True
      Size = 58
    end
    object QuMasterKodeVls: TStringField
      FieldName = 'KodeVls'
    end
    object QuMasterKurs: TBCDField
      FieldName = 'Kurs'
      Precision = 18
      Size = 2
    end
    object QuMasterNDPPD: TBCDField
      FieldName = 'NDPPD'
      Precision = 18
      Size = 2
    end
    object QuMasterNPPND: TBCDField
      FieldName = 'NPPND'
      Precision = 18
      Size = 2
    end
    object QuMasterNNetD: TBCDField
      FieldName = 'NNetD'
      Precision = 18
      Size = 2
    end
    object QuMasterFlagSimbol: TStringField
      FieldName = 'FlagSimbol'
      Size = 2
    end
    object QuMasterLeft2NoBukti: TStringField
      FieldName = 'Left2NoBukti'
      ReadOnly = True
      Size = 50
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.txt'
    Filter = 'Text Document (*.txt)|*.txt'
    InitialDir = 'C:\'
    Left = 448
    Top = 104
  end
  object sp_Pembelian: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'sp_Penjualan;1'
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
        Name = '@NoBukti'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@Urut'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Tanggal'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@JatuhTempo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@KodeCustSupp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@PPn'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@KodeTipe'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@KodeSubTipe'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@Qnt'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Harga'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NDPP'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NPPN'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NNET'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@AccPersediaan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@AccPPN'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@AccHutPiut'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@IsExcel'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@KodeVls'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@kurs'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NDPPD'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NPPND'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NNETD'
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
