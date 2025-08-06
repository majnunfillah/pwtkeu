object FrBarang: TFrBarang
  Left = 595
  Top = 115
  Width = 800
  Height = 480
  Caption = 'Master Barang'
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
    Width = 784
    Height = 394
    Hint = 'Untuk cari data ketik kata yang dicari di grid'
    Bands = <
      item
        Fixed = bfLeft
      end
      item
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'Kodebrg'
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
    FixedBandLineWidth = 1
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
    object dxDBGrid1KodeBrg: TdxDBGridMaskColumn
      Caption = 'Kode Barang'
      Width = 120
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
    object dxDBGrid1Sat1: TdxDBGridMaskColumn
      Caption = 'Sat1'
      Width = 39
      BandIndex = 1
      RowIndex = 0
      FieldName = 'Sat1'
    end
    object dxDBGrid1Isi1: TdxDBGridMaskColumn
      Caption = 'Isi1'
      Visible = False
      Width = 79
      BandIndex = 1
      RowIndex = 0
      FieldName = 'Isi1'
    end
    object dxDBGrid1Sat2: TdxDBGridMaskColumn
      Caption = 'Sat2'
      Width = 39
      BandIndex = 1
      RowIndex = 0
      FieldName = 'Sat2'
    end
    object dxDBGrid1Isi2: TdxDBGridMaskColumn
      Caption = 'Isi2'
      Width = 71
      BandIndex = 1
      RowIndex = 0
      FieldName = 'Isi2'
    end
    object dxDBGrid1Sat3: TdxDBGridMaskColumn
      Caption = 'Sat3'
      Visible = False
      Width = 38
      BandIndex = 1
      RowIndex = 0
      FieldName = 'Sat3'
    end
    object dxDBGrid1Isi3: TdxDBGridMaskColumn
      Caption = 'Isi3'
      Visible = False
      Width = 47
      BandIndex = 1
      RowIndex = 0
      FieldName = 'Isi3'
    end
    object dxDBGrid1KodeGrp: TdxDBGridMaskColumn
      Visible = False
      Width = 138
      BandIndex = 1
      RowIndex = 0
      FieldName = 'KodeGrp'
    end
    object dxDBGrid1NamaGrp: TdxDBGridMaskColumn
      Caption = 'Jenis Barang'
      Width = 200
      BandIndex = 1
      RowIndex = 0
      FieldName = 'NamaGrp'
    end
    object dxDBGrid1MyAktif: TdxDBGridMaskColumn
      Caption = 'Aktif/ Non Aktif'
      Visible = False
      Width = 103
      BandIndex = 1
      RowIndex = 0
      FieldName = 'MyAktif'
    end
    object dxDBGrid1QntMin: TdxDBGridMaskColumn
      Visible = False
      Width = 131
      BandIndex = 1
      RowIndex = 0
      FieldName = 'QntMin'
    end
    object dxDBGrid1QntMax: TdxDBGridMaskColumn
      Visible = False
      Width = 131
      BandIndex = 1
      RowIndex = 0
      FieldName = 'QntMax'
    end
    object dxDBGrid1ISAKTIF: TdxDBGridMaskColumn
      Visible = False
      Width = 71
      BandIndex = 1
      RowIndex = 0
      FieldName = 'ISAKTIF'
    end
    object dxDBGrid1Hrg1_1: TdxDBGridColumn
      Caption = 'Hrg 1'
      Visible = False
      Width = 76
      BandIndex = 1
      RowIndex = 0
      FieldName = 'Hrg1_1'
    end
    object dxDBGrid1Hrg1_2: TdxDBGridColumn
      Visible = False
      Width = 76
      BandIndex = 1
      RowIndex = 0
      FieldName = 'Hrg1_2'
    end
    object dxDBGrid1Hrg1_3: TdxDBGridColumn
      Visible = False
      Width = 76
      BandIndex = 1
      RowIndex = 0
      FieldName = 'Hrg1_3'
    end
    object dxDBGrid1Hrg2_1: TdxDBGridColumn
      Caption = 'Hrg 2'
      Visible = False
      Width = 76
      BandIndex = 1
      RowIndex = 0
      FieldName = 'Hrg1_2'
    end
    object dxDBGrid1Hrg2_2: TdxDBGridColumn
      Visible = False
      Width = 76
      BandIndex = 1
      RowIndex = 0
      FieldName = 'Hrg2_2'
    end
    object dxDBGrid1Hrg2_3: TdxDBGridColumn
      Visible = False
      Width = 76
      BandIndex = 1
      RowIndex = 0
      FieldName = 'Hrg2_3'
    end
    object dxDBGrid1Hrg3_1: TdxDBGridColumn
      Visible = False
      Width = 76
      BandIndex = 1
      RowIndex = 0
      FieldName = 'Hrg3_1'
    end
    object dxDBGrid1Hrg3_2: TdxDBGridColumn
      Visible = False
      Width = 76
      BandIndex = 1
      RowIndex = 0
      FieldName = 'Hrg3_2'
    end
    object dxDBGrid1Hrg3_3: TdxDBGridColumn
      Visible = False
      Width = 76
      BandIndex = 1
      RowIndex = 0
      FieldName = 'Hrg3_3'
    end
    object dxDBGrid1Keterangan: TdxDBGridColumn
      Width = 354
      BandIndex = 1
      RowIndex = 0
      FieldName = 'Keterangan'
    end
    object dxDBGrid1Column25: TdxDBGridColumn
      Caption = 'Nama SubGrp'
      Width = 150
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NamaSubGrp'
    end
    object dxDBGrid1Column26: TdxDBGridColumn
      Caption = 'Kode Bahan'
      Width = 149
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KODEBhn'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 784
      Height = 40
      ButtonHeight = 39
      ButtonWidth = 63
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
        Caption = ' Semua'
        DropdownMenu = PopupMenu2
        ImageIndex = 7
        Style = tbsDropDown
      end
      object ToolButton10: TToolButton
        Left = 338
        Top = 0
        Caption = 'Refresh'
        ImageIndex = 12
        OnClick = ToolButton10Click
      end
      object ToolButton7: TToolButton
        Left = 401
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 0
        Style = tbsSeparator
        Visible = False
      end
      object ToolButton6: TToolButton
        Left = 409
        Top = 0
        Caption = 'Lain - lain'
        DropdownMenu = PopupMenu1
        ImageIndex = 10
        Style = tbsDropDown
      end
      object ToolButton11: TToolButton
        Left = 487
        Top = 0
        Width = 8
        Caption = 'ToolButton11'
        ImageIndex = 9
        Style = tbsSeparator
      end
      object ToolButton9: TToolButton
        Left = 495
        Top = 0
        Caption = 'K&eluar'
        ImageIndex = 8
        OnClick = ToolButton9Click
      end
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
      'Declare @IsAktif tinyint'
      ''
      'Set @IsAktif=2'
      ''
      'Select  0 urut,a.*,'
      '        b.Nama NamaGrp,d.NamaSubGrp,C.namaCustSupp,'
      
        '        case when a.IsAktif=0 then '#39'Non Aktif'#39' else '#39'Aktif'#39' end ' +
        'MyAktif'
      '        ,nmdep'
      'from    dbBarang a'
      'Left Outer join dbGroup b on b.Kodegrp=a.kodegrp'
      
        'Left Outer Join dbSubGroup D On d.Kodegrp=a.Kodegrp and d.KodeSu' +
        'bGrp=a.KodeSubGrp'
      
        'Left Outer join (select KodeCustSupp,NamaCustSupp from dbCustSup' +
        'p a'
      
        'Left Outer Join DBPOSTHUTPIUT b On a.Perkiraan=b.Perkiraan )c On' +
        ' a.KodeSupp=c.KodeCustSupp'
      'Left Outer join dbDepart F on F.KdDep=A.Kodebag'
      
        'where (a.IsAktif=@IsAktif and @IsAktif<>2) or (@IsAktif=2 and a.' +
        'KodeBrg like '#39'%'#39')'
      'and a.IsBarang=1'
      'Order by Urut,a.Kodebrg'
      '')
    Left = 34
    Top = 101
    object QuViewurut: TIntegerField
      FieldName = 'urut'
      ReadOnly = True
    end
    object QuViewKODEBRG: TStringField
      FieldName = 'KODEBRG'
      Size = 25
    end
    object QuViewNAMABRG: TStringField
      FieldName = 'NAMABRG'
      Size = 100
    end
    object QuViewKODESUPP: TStringField
      FieldName = 'KODESUPP'
    end
    object QuViewSAT1: TStringField
      FieldName = 'SAT1'
      Size = 5
    end
    object QuViewISI1: TBCDField
      FieldName = 'ISI1'
      Precision = 18
      Size = 2
    end
    object QuViewSAT2: TStringField
      FieldName = 'SAT2'
      Size = 5
    end
    object QuViewISI2: TBCDField
      FieldName = 'ISI2'
      Precision = 18
      Size = 2
    end
    object QuViewSAT3: TStringField
      FieldName = 'SAT3'
      Size = 5
    end
    object QuViewISI3: TBCDField
      FieldName = 'ISI3'
      Precision = 18
      Size = 2
    end
    object QuViewHrg1_1: TBCDField
      FieldName = 'Hrg1_1'
      Precision = 18
      Size = 2
    end
    object QuViewHrg2_1: TBCDField
      FieldName = 'Hrg2_1'
      Precision = 18
      Size = 2
    end
    object QuViewHrg3_1: TBCDField
      FieldName = 'Hrg3_1'
      Precision = 18
      Size = 2
    end
    object QuViewHrg1_2: TBCDField
      FieldName = 'Hrg1_2'
      Precision = 18
      Size = 2
    end
    object QuViewHrg2_2: TBCDField
      FieldName = 'Hrg2_2'
      Precision = 18
      Size = 2
    end
    object QuViewHrg3_2: TBCDField
      FieldName = 'Hrg3_2'
      Precision = 18
      Size = 2
    end
    object QuViewHrg1_3: TBCDField
      FieldName = 'Hrg1_3'
      Precision = 18
      Size = 2
    end
    object QuViewHrg2_3: TBCDField
      FieldName = 'Hrg2_3'
      Precision = 18
      Size = 2
    end
    object QuViewHrg3_3: TBCDField
      FieldName = 'Hrg3_3'
      Precision = 18
      Size = 2
    end
    object QuViewQntMin: TBCDField
      FieldName = 'QntMin'
      Precision = 18
      Size = 2
    end
    object QuViewQntMax: TBCDField
      FieldName = 'QntMax'
      Precision = 18
      Size = 2
    end
    object QuViewISAKTIF: TWordField
      FieldName = 'ISAKTIF'
    end
    object QuViewKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 50
    end
    object QuViewNamaGrp: TStringField
      FieldName = 'NamaGrp'
      Size = 40
    end
    object QuViewMyAktif: TStringField
      FieldName = 'MyAktif'
      ReadOnly = True
      Size = 9
    end
    object QuViewnamaCustSupp: TStringField
      FieldName = 'namaCustSupp'
      Size = 100
    end
    object QuViewNFix: TBooleanField
      FieldName = 'NFix'
    end
    object QuViewNamaBrg2: TStringField
      FieldName = 'NamaBrg2'
      Size = 100
    end
    object QuViewNamaSubGrp: TStringField
      FieldName = 'NamaSubGrp'
      Size = 50
    end
    object QuViewTolerate: TBCDField
      FieldName = 'Tolerate'
      Precision = 5
      Size = 2
    end
    object QuViewKodeBag: TStringField
      FieldName = 'KodeBag'
      Size = 30
    end
    object QuViewnmdep: TStringField
      FieldName = 'nmdep'
      Size = 40
    end
    object QuViewKODEBhn: TStringField
      FieldName = 'KODEBhn'
      Size = 30
    end
    object QuViewKODEGRP: TStringField
      FieldName = 'KODEGRP'
    end
    object QuViewKODESUBGRP: TStringField
      FieldName = 'KODESUBGRP'
      Size = 10
    end
  end
  object DsView: TDataSource
    DataSet = QuView
    Left = 59
    Top = 101
  end
  object PopupMenu1: TPopupMenu
    Left = 469
    Top = 119
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
        Size = 10
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
      end
      item
        Name = '@tolerate'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 5
        Value = Null
      end
      item
        Name = '@Proses'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IstakeIn'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@IsBarang'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@KodeBag'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@kodebhn'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
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
