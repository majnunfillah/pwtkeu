object FrAktivitasUser: TFrAktivitasUser
  Left = 341
  Top = 72
  Width = 800
  Height = 480
  Caption = 'Aktivitas Pemakai'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 113
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 280
      Top = 84
      Width = 44
      Height = 14
      Caption = 'Pemakai'
    end
    object Label3: TLabel
      Left = 8
      Top = 84
      Width = 49
      Height = 14
      Caption = 'Transaksi'
    end
    object Label4: TLabel
      Left = 472
      Top = 29
      Width = 45
      Height = 14
      Caption = 'Aktivitas'
    end
    object BtnShow: TBitBtn
      Left = 472
      Top = 61
      Width = 97
      Height = 41
      Caption = 'Lihat Aktivitas'
      TabOrder = 3
      OnClick = BtnShowClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
        BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
        BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
        BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
        BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
        EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
        EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
        EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
        EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object GroupTanggal: TGroupBox
      Left = 8
      Top = 0
      Width = 257
      Height = 73
      Caption = '[ Tanggal ]'
      TabOrder = 0
      object Label1: TLabel
        Left = 128
        Top = 44
        Width = 17
        Height = 14
        Caption = 's/d'
      end
      object SemuaTgl: TRadioButton
        Left = 8
        Top = 16
        Width = 57
        Height = 17
        Caption = 'Semua'
        TabOrder = 0
      end
      object SebagianTgl: TRadioButton
        Left = 8
        Top = 43
        Width = 17
        Height = 17
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object Tgl1: TDateEdit
        Left = 26
        Top = 40
        Width = 100
        Height = 22
        CheckOnExit = True
        Color = clWhite
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        NumGlyphs = 2
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object Tgl2: TDateEdit
        Left = 149
        Top = 40
        Width = 100
        Height = 22
        CheckOnExit = True
        Color = clWhite
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        NumGlyphs = 2
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
    end
    object GroupPeriode: TGroupBox
      Left = 280
      Top = 0
      Width = 177
      Height = 73
      Caption = '[ Periode Transaksi ]'
      TabOrder = 1
      object SemuaPeriode: TRadioButton
        Left = 8
        Top = 16
        Width = 57
        Height = 17
        Caption = 'Semua'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object SebagianPeriode: TRadioButton
        Left = 8
        Top = 43
        Width = 17
        Height = 17
        TabOrder = 1
      end
      object Periode: TDateTimePicker
        Left = 26
        Top = 40
        Width = 143
        Height = 22
        BevelEdges = []
        BevelInner = bvNone
        BevelOuter = bvNone
        BevelKind = bkFlat
        CalAlignment = dtaLeft
        Date = 40270.5480588079
        Format = 'MMMM yyyy'
        Time = 40270.5480588079
        DateFormat = dfShort
        DateMode = dmUpDown
        Kind = dtkDate
        ParseInput = False
        TabOrder = 2
      end
    end
    object cmbPemakai: TComboBox
      Left = 336
      Top = 80
      Width = 121
      Height = 22
      Style = csDropDownList
      ItemHeight = 14
      TabOrder = 5
    end
    object cmbSumber: TComboBox
      Left = 72
      Top = 80
      Width = 193
      Height = 22
      Style = csDropDownList
      ItemHeight = 14
      TabOrder = 4
    end
    object cmbAktivitas: TComboBox
      Left = 528
      Top = 25
      Width = 121
      Height = 22
      Style = csDropDownList
      ItemHeight = 14
      ItemIndex = 0
      TabOrder = 2
      Text = 'Semua'
      Items.Strings = (
        'Semua'
        'I - Tambah'
        'U - Koreksi'
        'D - Hapus'
        'C - Cetak'
        'L - Lain')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 113
    Width = 792
    Height = 333
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object dxDBGrid1: TdxDBGrid
      Left = 0
      Top = 0
      Width = 792
      Height = 333
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'Tanggal'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      Color = 14811135
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Tahoma'
      BandFont.Style = []
      DataSource = DsAktivitas
      Filter.Criteria = {00000000}
      GridLineColor = 11202790
      GroupPanelColor = 13025469
      GroupPanelFontColor = clBlack
      GroupNodeColor = 10223615
      GroupNodeTextColor = 1912356
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
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
      PreviewFieldName = 'Keterangan'
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Tahoma'
      PreviewFont.Style = []
      PreviewMaxLength = 2
      RowFooterColor = 11202790
      ShowPreviewGrid = False
      object dxDBGrid1Tahun: TdxDBGridMaskColumn
        Visible = False
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Tahun'
      end
      object dxDBGrid1Bulan: TdxDBGridMaskColumn
        Visible = False
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Bulan'
      end
      object dxDBGrid1Tanggal: TdxDBGridDateColumn
        Width = 130
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Tanggal'
      end
      object dxDBGrid1Pemakai: TdxDBGridMaskColumn
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Pemakai'
      end
      object dxDBGrid1Aktivitas: TdxDBGridMaskColumn
        Visible = False
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Aktivitas'
      end
      object dxDBGrid1Sumber: TdxDBGridMaskColumn
        Caption = 'Transaksi'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Sumber'
      end
      object dxDBGrid1NoBukti: TdxDBGridMaskColumn
        Caption = 'No. Bukti'
        Width = 130
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoBukti'
      end
      object dxDBGrid1NamaAktivitas: TdxDBGridMaskColumn
        Caption = 'Aktivitas'
        Visible = False
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NamaAktivitas'
      end
      object dxDBGrid1Keterangan: TdxDBGridMemoColumn
        Width = 560
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Keterangan'
        SelectionBar = True
      end
    end
  end
  object QuAktivitas: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 120
    Parameters = <>
    SQL.Strings = (
      'select  *'
      'from    vwAktivitasUser'
      '')
    Left = 160
    Top = 56
    object QuAktivitasTahun: TIntegerField
      FieldName = 'Tahun'
    end
    object QuAktivitasBulan: TIntegerField
      FieldName = 'Bulan'
    end
    object QuAktivitasTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuAktivitasPemakai: TStringField
      FieldName = 'Pemakai'
    end
    object QuAktivitasAktivitas: TStringField
      FieldName = 'Aktivitas'
      Size = 200
    end
    object QuAktivitasNamaAktivitas: TStringField
      FieldName = 'NamaAktivitas'
      ReadOnly = True
      Size = 50
    end
    object QuAktivitasSumber: TStringField
      FieldName = 'Sumber'
      ReadOnly = True
      Size = 13
    end
    object QuAktivitasNoBukti: TStringField
      FieldName = 'NoBukti'
      Size = 30
    end
    object QuAktivitasKeterangan: TMemoField
      FieldName = 'Keterangan'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object DsAktivitas: TDataSource
    DataSet = QuAktivitas
    Left = 208
    Top = 56
  end
end
