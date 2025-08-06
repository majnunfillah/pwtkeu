object FrTransfer: TFrTransfer
  Left = 225
  Top = 124
  Width = 1030
  Height = 582
  Caption = 'Transaksi Transfer Barang'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  Icon.Data = {
    0000010002002020100000000000E80200002600000010101000000000002801
    00000E0300002800000020000000400000000100040000000000800200000000
    0000000000000000000000000000000000000000800000800000008080008000
    0000800080008080000080808000C0C0C0000000FF0000FF000000FFFF00FF00
    0000FF00FF00FFFF0000FFFFFF00000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000F0F0000000000000000077
    777700088800088800077777700000700000888800F080088880000070000070
    88888000F8F0FF80008888807000007080000FF8FFF08FFFFF00008070000070
    80FFF8FFF8F0FF8FFFFFF0807000007080F8FFF8F7F0F7FFFFFFF08070000070
    90FFFF7FF8F0FF8F7FFFF090800000708097FFF8FFF08FFFFFF7F08080000070
    80FFF8FF77F0F77FFFFFF0808000007080F8F777FFF08FF777FFF0F080000070
    80F778FFF8F0FFFFFF77F0F08000007080F8FFF877F0877FFFFFF0F080000070
    80FFF777F8F0FFF777FFF0F080000070F0F77FF8FFF08FFFFF77F0F080000070
    F0FFF8FF77F0F77FFFFFF0F080000070F0F8F777FFF08FF777FFF0F080000070
    F0F778FFF8000FFFFF77F0F080000000F0F8FFF80000000FFFFFF0F000000000
    00FFF0000000000000FFF0000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFF83FFF8000000380000003800000038000000380000003800000038000
    0003800000038000000380000003800000038000000380000003800000038000
    000380000003800000038000000380038003E00FE00FF87FFC3FFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFF280000001000000020000000010004000000
    0000C00000000000000000000000000000000000000000000000000080000080
    00000080800080000000800080008080000080808000C0C0C0000000FF0000FF
    000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000000000000000
    000000000000000000F0F00000000008880008880000088800F0F00888000800
    FFF0FFF00800080FF7F0F7FF080008097FF0FF7F0800080FF7F0F7FF0800080F
    77F0F77F0800080F7FF0FF7F0800080FFFF0FFFF0800000FF00000FF00000000
    00000000000000000000000000000000000000000000FFFF0000FC7F0000E00F
    0000000100000001000000010000000100000001000000010000000100000001
    00000001000001010000C7C70000FFFF0000FFFF0000}
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
  object Label10: TLabel
    Left = 289
    Top = 56
    Width = 79
    Height = 15
    Caption = 'Kode Supplier'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label16: TLabel
    Left = 395
    Top = 128
    Width = 43
    Height = 16
    Caption = 'NO POL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1014
    Height = 106
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Shape4: TShape
      Left = 16
      Top = 36
      Width = 770
      Height = 2
      Brush.Color = clBlack
    end
    object Label5: TLabel
      Left = 16
      Top = 14
      Width = 66
      Height = 16
      Caption = 'Nomor Urut'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 167
      Top = 14
      Width = 69
      Height = 16
      Caption = 'Nomor Bukti'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 584
      Top = 13
      Width = 46
      Height = 16
      Caption = 'Tanggal'
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 16
      Top = 47
      Width = 65
      Height = 16
      Caption = 'Keterangan'
    end
    object Label1: TLabel
      Left = 404
      Top = 47
      Width = 90
      Height = 16
      Caption = 'No. Penyerahan'
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object NoUrut: TEdit
      Left = 101
      Top = 10
      Width = 55
      Height = 24
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 5
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnChange = NoUrutChange
      OnEnter = NoUrutEnter
      OnExit = NoUrutExit
      OnKeyDown = NoUrutKeyDown
    end
    object NoBukti: TEdit
      Left = 248
      Top = 10
      Width = 179
      Height = 24
      BevelKind = bkSoft
      BorderStyle = bsNone
      Ctl3D = True
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      OnKeyDown = NoUrutKeyDown
    end
    object Tanggal: TDateEdit
      Left = 646
      Top = 10
      Width = 141
      Height = 22
      CheckOnExit = True
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnChange = TanggalChange
      OnEnter = NoUrutEnter
      OnExit = TanggalExit
      OnKeyDown = TanggalKeyDown
    end
    object Catatan: TMemo
      Left = 101
      Top = 44
      Width = 300
      Height = 61
      BevelKind = bkSoft
      BorderStyle = bsNone
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 3
      OnKeyDown = TanggalKeyDown
    end
    object NoPenyerahan: TEdit
      Left = 501
      Top = 44
      Width = 172
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      Visible = False
      OnChange = TanggalChange
      OnKeyDown = TanggalKeyDown
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 411
    Width = 1014
    Height = 133
    Align = alBottom
    BevelOuter = bvNone
    BorderWidth = 1
    TabOrder = 1
    Visible = False
    object LNamaBrg: TRxLabel
      Left = 236
      Top = 5
      Width = 40
      Height = 16
      Caption = '[ . . . ]'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlack
      ShadowSize = 0
      ShadowPos = spRightBottom
      Transparent = True
    end
    object LKodeBrg: TLabel
      Left = 16
      Top = 5
      Width = 72
      Height = 16
      Caption = 'Kode Barang'
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object SpeedButton1: TSpeedButton
      Left = 194
      Top = 101
      Width = 75
      Height = 25
      Caption = '&Tutup'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      Transparent = False
      OnClick = SpeedButton1Click
    end
    object Label19: TLabel
      Left = 16
      Top = 78
      Width = 47
      Height = 16
      Caption = 'Quantity'
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object LSatuan: TLabel
      Left = 901
      Top = 6
      Width = 38
      Height = 16
      Caption = '[ . . . ]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object LSatuan2: TLabel
      Left = 365
      Top = 78
      Width = 38
      Height = 16
      Caption = '[ . . . ]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object LSatuan1: TLabel
      Left = 221
      Top = 78
      Width = 38
      Height = 16
      Caption = '[ . . . ]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 30
      Width = 71
      Height = 16
      Caption = 'Gudang Asal'
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 16
      Top = 54
      Width = 87
      Height = 16
      Caption = 'Gudang Tujuan'
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object KodeBrg: TEdit
      Left = 116
      Top = 2
      Width = 117
      Height = 24
      BevelKind = bkSoft
      BorderStyle = bsNone
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 25
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnEnter = KodeBrgEnter
      OnExit = KodeBrgExit
      OnKeyDown = KodeBrgKeyDown
    end
    object BitBtn1: TBitBtn
      Left = 116
      Top = 101
      Width = 75
      Height = 25
      Caption = '&Simpan'
      TabOrder = 7
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
    object Qnt: TPBNumEdit
      Left = 796
      Top = 34
      Width = 93
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      NumberFormat = Thousands
      OnEnter = KodeBrgEnter
      OnKeyDown = KodeBrgKeyDown
      ParentCtl3D = False
      TabOrder = 5
      Value = 1
      Visible = False
    end
    object Qnt2: TPBNumEdit
      Left = 268
      Top = 74
      Width = 93
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      NumberFormat = Thousands
      OnChange = Qnt2Change
      OnEnter = KodeBrgEnter
      OnKeyDown = KodeBrgKeyDown
      ParentCtl3D = False
      TabOrder = 4
      Value = 1
      Visible = False
    end
    object Nosat: TComboBox
      Left = 794
      Top = 2
      Width = 103
      Height = 24
      BevelKind = bkFlat
      ItemHeight = 16
      TabOrder = 6
      Text = 'Pilih Satuan'
      Visible = False
      OnChange = NosatChange
      OnEnter = NosatEnter
      OnExit = NosatChange
    end
    object Qnt1: TPBNumEdit
      Left = 116
      Top = 74
      Width = 93
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      NumberFormat = Thousands
      OnEnter = KodeBrgEnter
      OnKeyDown = KodeBrgKeyDown
      ParentCtl3D = False
      TabOrder = 3
      Value = 1
    end
    object GdgAsal: TEdit
      Left = 116
      Top = 27
      Width = 67
      Height = 22
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 15
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnChange = TanggalChange
      OnEnter = GdgAsalEnter
      OnExit = GdgAsalExit
      OnKeyDown = TanggalKeyDown
    end
    object GdgTujuan: TEdit
      Left = 116
      Top = 51
      Width = 67
      Height = 22
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 15
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnChange = TanggalChange
      OnEnter = GdgTujuanEnter
      OnExit = GdgTujuanExit
      OnKeyDown = TanggalKeyDown
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 106
    Width = 1014
    Height = 305
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 2
    object dxDBGrid1: TdxDBGrid
      Left = 5
      Top = 5
      Width = 1004
      Height = 263
      Bands = <
        item
          Caption = 'Deskripsi Barang'
          Fixed = bfLeft
        end
        item
          Caption = 'Satuan 2'
          Visible = False
        end
        item
          Caption = 'Satuan 1'
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'Urut'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      Color = 14811135
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnEnter = wwDBGrid1Enter
      OnExit = wwDBGrid1Exit
      OnKeyDown = wwDBGrid1KeyDown
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -13
      BandFont.Name = 'Tahoma'
      BandFont.Style = []
      DataSource = DsQuBeli
      Filter.Criteria = {00000000}
      FixedBandLineWidth = 1
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
      OptionsBehavior = [edgoAutoSearch, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Tahoma'
      PreviewFont.Style = []
      RowFooterColor = 11202790
      ShowBands = True
      OnCustomDrawCell = dxDBGrid1CustomDrawCell
      object dxDBGrid1URUT: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'URUT'
      end
      object dxDBGrid1KODEBRG: TdxDBGridMaskColumn
        Caption = 'Kode Barang'
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KODEBRG'
      end
      object dxDBGrid1NamaBrg: TdxDBGridMaskColumn
        Caption = 'Nama Barang'
        HeaderAlignment = taCenter
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NamaBrg'
      end
      object dxDBGrid1Jns_Kertas: TdxDBGridMaskColumn
        Caption = 'Jenis Kertas'
        HeaderAlignment = taCenter
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Jns_Kertas'
      end
      object dxDBGrid1Ukr_Kertas: TdxDBGridMaskColumn
        Caption = 'Ukuran Kertas'
        HeaderAlignment = taCenter
        Visible = False
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Ukr_Kertas'
      end
      object dxDBGrid1NamaGgdAsal: TdxDBGridMaskColumn
        Caption = 'Gudang Asal'
        HeaderAlignment = taCenter
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NamaGgdAsal'
      end
      object dxDBGrid1NamaGgdTujuan: TdxDBGridMaskColumn
        Caption = 'Gudang Tujuan'
        HeaderAlignment = taCenter
        Width = 103
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NamaGgdTujuan'
      end
      object dxDBGrid1QNT2: TdxDBGridMaskColumn
        Caption = 'Qnt'
        HeaderAlignment = taCenter
        Visible = False
        Width = 70
        BandIndex = 1
        RowIndex = 0
        FieldName = 'QNT2'
      end
      object dxDBGrid1SAT_2: TdxDBGridMaskColumn
        Caption = 'Sat'
        HeaderAlignment = taCenter
        Visible = False
        Width = 50
        BandIndex = 1
        RowIndex = 0
        FieldName = 'SAT_2'
      end
      object dxDBGrid1ISI: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 1
        RowIndex = 0
        FieldName = 'ISI'
      end
      object dxDBGrid1QNT: TdxDBGridMaskColumn
        Caption = 'Qnt'
        HeaderAlignment = taCenter
        Width = 70
        BandIndex = 2
        RowIndex = 0
        FieldName = 'QNT'
      end
      object dxDBGrid1SAT_1: TdxDBGridMaskColumn
        Caption = 'Sat'
        HeaderAlignment = taCenter
        Width = 50
        BandIndex = 2
        RowIndex = 0
        FieldName = 'SAT_1'
      end
      object dxDBGrid1GSM: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GSM'
      end
    end
    object PanelShow1: TPanel
      Left = 5
      Top = 268
      Width = 1004
      Height = 32
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 1
      object Cetak: TSpeedButton
        Left = 229
        Top = 2
        Width = 75
        Height = 28
        Caption = '&Cetak'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000C5C5C5C5C5C5
          C5C5C5CACACADBDBDBA0A09F9C9C9CD0D0D0CACACADBDBDB9C9C9CA0A0A0D0D0
          D0C5C5C5C5C5C5C5C5C5C5C5C5CACACADBDBDBA5A5A4120F0E000000161515A7
          A7A7A9A9A90707071A191A000000A8A8A8D0D0D0C5C5C5C5C5C5D5D5D5A5A5A4
          120F0E00000086919396A594A1AAA1161416000000B4B3B3FFFFFF848C840000
          00A8A8A8D0D0D0C5C5C55F5F5E0000008691939EAD9B2B2E29919092B5B8BA98
          A2983D322E5E62636668684B494A959D95000000A0A0A0CACACAA2A2A2232820
          3F433D89888AFFFFFFFFFFFFFFFFFFBBC0C2909D927D746FE6E6E77E817E4040
          40575957595959D0D0D0DBDBDB000000D8DDDDFFFFFFF9FFFFF8FFFFFAFFFFFF
          FFFFB0B3B5180809E1E2E28A898A5B665B000000656565D0D0D0C5C5C5ECECEC
          000000D1D7D7FFFFFFFFFFFFEEF2F2A6A7A8726B665E4E43D7D9DB7E7E7F656C
          65222722626262D0D0D0C5C5C5DBDBDB000000525050C1C8C9ABACAD6A635E55
          463A97918CE3EAECFDF9F6E1D9D68887892C2F2C616161D0D0D0C5C5C5DBDBDB
          000000ACB4B0160000695A51928E8AF7F2F1FFFBF9E9E1DEC1C2C2DADEDED8DB
          DB3938395F5F5FD0D0D0C5C5C5DBDBDB000000E9E9EA9CA3A2F3EEEEFFFFFFE5
          E0DDC2C4C4C6C7C7CACACAD0D0D0FAFCFC1118115C5C5CD0D0D0C5C5C5DBDBDB
          000000FFFDFBFFFFFDE5E0DDC1C3C4C6C7C7CACACAD3D4D4E1E1E16A6A693E48
          4E090008B4B5B4CACACAC5C5C5D5D5D5020406CCB5B0CCCFD0C6C7C7CACACAD3
          D4D4E1E2E36B615C2C322FAFABAFE7E7E6FFFBFF000000DBDBDBC5C5C5C5C5C5
          E6E6E6000000A7A7A7DBDBDBEAEBEB736A651F190FADB2B0E7E6E7F0F0F05F5F
          5F000000686868D0D0D0C5C5C5C5C5C5C5C5C5E6E6E600000071717100000074
          7876EEEFF0F0F0F05F5F5F0000005B5B5BE6E6E6D0D0D0C5C5C5C5C5C5C5C5C5
          C5C5C5C5C5C5E1E1E1434343F7F7F70000007171710000005B5B5BE6E6E6D0D0
          D0C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5D0D0D0C5C5C5E1
          E1E14F4F4FE6E6E6D0D0D0C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5}
        ParentFont = False
        Transparent = False
        OnClick = CetakClick
      end
      object HapusBtn: TSpeedButton
        Left = 154
        Top = 2
        Width = 75
        Height = 28
        Caption = '&Hapus'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000C5C5C5C5C5C5
          C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5
          C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5D1D2D1CBCCCBC5C5C5C5
          C5C5C5C5C5C5C5C5CBCCCBD1D2D1C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5
          C6C7C6CECFCE3E333E908590D2D4D2C5C5C5C5C5C5D2D4D29186913D323DCECF
          CEC6C7C6C5C5C5C5C5C5C5C5C5C5C5C5D2CCD2000000625E64000603938693CD
          CFCDCBCCCB9C8F9C0000006A6D6B000000D2CCD2C5C5C5C5C5C5C5C5C5C5C6C5
          CFC3CF000000FFF6F8FFFBF8242725BBB5BBE2E3E2000000FFFFFFFFF4F80000
          00CFC4CFC5C6C5C5C5C5C5C5C5C5C5C5CED0CE7D7E7D0000005A565C000000C5
          C5C5A9AAAB000000555258000000777277C8C4C8C5C5C5C5C5C5C5C5C5C5C5C5
          C5C5C5D3D3D3A4A5A4202220D0D0D00E1111342725393A3A8B8C8BB4B5B4CBC5
          CBC5C6C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C9C9C9F9F9F900000091
          8B92D0C5C2000000F2F2F2C7C7C7C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5
          C5C5C5C5C5C5E6E6E6000000B4B4B4ECEEEE6E6F6FBDBDBD000000E6E6E6C5C5
          C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5E6E6E6000000B4B4B4AFAFAF00
          00000C0C0CAFAFAFB4B4B4000000E6E6E6C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5
          E1E1E1000000A8A8A8B0B0B0000000E6E6E6E6E6E6000000AFAFAFB4B4B40000
          00E1E1E1C5C5C5C5C5C5C5C5C5D0D0D05150515D635DB7B6B7000000E6E6E6C5
          C5C5C5C5C5E6E6E6000000B5B5B57272724F4F4FD0D0D0C5C5C5C5C5C5D0D0D0
          5B5B5B272727000000E6E6E6C5C5C5C5C5C5C5C5C5C5C5C5E6E6E60000002323
          235C5C5CD0D0D0C5C5C5C5C5C5CACACA9797974F4F4FE1E1E1C5C5C5C5C5C5C5
          C5C5C5C5C5C5C5C5C5C5C5E1E1E1505050979797CACACAC5C5C5C5C5C5C5C5C5
          CACACAD0D0D0C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5D0D0
          D0CACACAC5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5
          C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5}
        ParentFont = False
        Transparent = False
        OnClick = HapusBtnClick
      end
      object KoreksiBtn: TSpeedButton
        Left = 79
        Top = 2
        Width = 75
        Height = 28
        Caption = '&Koreksi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000C5C5C5C5C5C5
          C5C5C5C5C5C5D0D0D08F9090D6D7D7D0D0D0C5C5C5C5C5C5C5C5C5CECECE7A7A
          6A42421F393923CDCDCDC5C5C5C5C5C5C5C5C5D0D0D0939595786D6D4A3D3D4C
          4E4EDCDDDDD0D0D0C5C5C5DBDBCC0000720000FF0000B9393924C5C5C5C5C5C5
          D0D0D0939595796E6E423D3D262929B0A5A5473A3A4C4E4EDCDDDDE6E6D70000
          780000FF0000B4494933C5C5C5D0D0D0939595796E6E3C38386B6868AFA5A552
          4747242828B0A5A5473A3A64605E00292A00717200345F49423BD0D0D0939595
          796E6E3C38386F6C6C7C72794E444B242828B5AAAA524747242828B9A29F005C
          7E00E1FF0070EE4C3F319B9C9C796E6E3C38386F6C6C766B7A858232727625A6
          9DAA4B3F47242828B5AAAA59423C00608900D6FF006DE52314036B6B6B3E3939
          6F6C6C766B7A7D7A22CCC7D4C5BBC88D8333707524A69DAA4B3F47372E29005F
          7E00D6FF006DE52A1C0D1C1D1D716E6E766B7A7D7A22CAC5D3CFD0D0969797BA
          BCC3C7BCC98D8333707524B09AA200598300D6FF0071E8000000ACADAD716574
          7D7A22CAC5D3CFD0D0979797A1A1A19E9E9E9B9C9CB5B7BEC3B7C59983270056
          7D00D6FF006DE52A1C0D59596B7E7B22CAC5D3CFD0D0979797A1A1A1A1A1A1A1
          A1A1979797CBCBCBC5C6C6E1D6D9004F7000D6FF006DE523140D858609CEC8E0
          CFD0D69595959E9E9EA1A1A1A1A1A1979797CDCDCDC5C5C5C5C5C5DBD0CC0052
          7400DDFF0069EE4C3F00D0D0E1939345919142B6B6C4B6B6BD9C9C9C979797CF
          CFCFC8C8C8C5C5C5C5C5C5D3D3D035223EB596C58C78B32A2B2CC5C5C5C8C8D0
          CDCDDB959547939345B4B4C1D2D2D8AEAEAE929292CFCFCFCDCDCDCACACA9E9F
          9A51468735304AC9CAC7C5C5C5C5C5C5C5C5C5C8C8D0CDCDDB949446929244CA
          CAD8B9B9C1808080606060D4D4DBC2C29D030402686865D1D1D1C5C5C5C5C5C5
          C5C5C5C5C5C5C5C5C5C8C8D0CDCDDB929244969648BEBECBA1A1AC979774B0B0
          8DD7D7DBCECECEC5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C8
          C8D0CDCDDB9999529E9E5AB5B599C8C8D0C5C5C5C5C5C5C5C5C5}
        ParentFont = False
        Transparent = False
        OnClick = KoreksiBtnClick
      end
      object TambahBtn: TSpeedButton
        Left = 4
        Top = 2
        Width = 75
        Height = 28
        Caption = '&Tambah'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000C5C5C5C5C5C5
          C5C5C5C5C5C5C3C2C18D8E8D9394946B6B6B4A4A4A2222224D4D4D4A4A4A4A4A
          4A4A4A4A444444868686C5C5C5C5C5C5C5C5C5D0CECD5566722E292C6C5F5B6E
          70714C4C4C0000004A4D4E353838373939373939454646444444C5C5C5C5C5C5
          C5C5C5D0CECD5867729B92972F37406F6565545758525556FFF2EBE6D7DAE9D8
          DBF4E1DC6D6361454646C5C5C5C5C5C5C5C5C5D0CECD5867728D8589747A86E7
          CDA1826D70404748FFF0F0B1984EB69C51D0C9CF766B69444545C5C5C5C5C5C5
          C5C5C5D1D0CF5F6F7A8F8689627380484B33F3DAB3393E43F5E5E8B69E5ABCA1
          5DBDC1C85F6060464646C5C5C5C5C5C5C7C7C7D0CECD000311968D9164748154
          553BEAD2AD393E43F7E6E9B69E5ABCA15DBFC2C9616161464646C5C5C5C7C7C7
          D0D0D038373683878D958B8F647481545335E8CFA73B3F43FFF2F4C1A358C6A7
          5BC8CAD0626160393939C7C7C7D4D4D40000001E1E1E08151B243646707D865C
          6E7CFFFBF71227393D535F576A7D647687606F7B5C6469B8B7B6D1D1D1000000
          0F1111A29A98FFF4ECFFFFFF1F2630424B574E6370FFFFFBFFFBF099908D0706
          046563622F2F2ED6D6D63A39388E8E8ED4D4D4D5D6D68689898F9394ACAAA81B
          2A361D2B368F9191C8CCCDD1D2D2919191080808686868D1D1D152636FE1DFDD
          CACACA8686869D9D9D4B4B4BA2A1A0A8AEB25C6B77989796878787CACACAD3D3
          D38E8D8C747372BABABADBD8D5374A57DBD8D5D0D0D0878787D1D0D04B545B98
          9796949392BCBCBCB6B6B6CBCBCAD5D3D299A0A43D4F5BD2D1D0C5C5C5DBD8D5
          374A57DBD8D5D0D0D0878787949493BCBCBCB6B6B6CDCDCCD6D4D391979C4454
          6091979CD5D4D2C5C5C5C5C5C5C5C5C5DBD8D5374A57DBD8D5CBCBCBB5B5B5CD
          CDCCD6D4D391979C44546091979CD5D3D2CAC9C8C5C5C5C5C5C5C5C5C5C5C5C5
          C5C5C5DBD8D5374A57DBD8D5D6D4D391979C44546091979CD5D3D2CAC9C8C5C5
          C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5DBD8D5505F6A56646E97
          9DA1D5D3D2CAC9C8C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5}
        ParentFont = False
        Transparent = False
        OnClick = TambahBtnClick
      end
      object SpeedButton8: TSpeedButton
        Left = 303
        Top = 2
        Width = 23
        Height = 28
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
          1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
          1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
          193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
          11155557F755F777777555000755033305555577755F75F77F55555555503335
          0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
          05555757F75F75557F5505000333555505557F777FF755557F55000000355557
          07557777777F55557F5555000005555707555577777FF5557F55553000075557
          0755557F7777FFF5755555335000005555555577577777555555}
        NumGlyphs = 2
        OnClick = SpeedButton8Click
      end
    end
  end
  object QuBeli: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 60
    Parameters = <>
    SQL.Strings = (
      'declare @NoBukti varchar(30)'
      ''
      'select '#9'@NoBukti='#39'VSM/092009/00001/PNJ'#39
      ''
      'select A.NOBUKTI, A.NOURUT, A.TANGGAL, A.note Keterangan,'
      
        '        B.URUT, B.KODEBRG, C.NamaBrg, '#39#39' Jns_Kertas, '#39#39' Ukr_Kert' +
        'as,'
      '        B.QNT, B.QNT2, B.SAT_1, B.SAT_2, B.NoSat, B.ISI, '
      
        '        B.gdgAsal, D.NAMA+'#39' ('#39'+B.gdgAsal+'#39')'#39' NamaGgdAsal, 0.00 G' +
        'SM,'
      '        B.gdgTujuan, E.NAMA+'#39' ('#39'+B.gdgTujuan+'#39')'#39' NamaGgdTujuan,'
      '        A.NoPenyerahan'
      'From DBTransfer A'
      'Left Outer Join DBTransferDET B on B.NoBukti=A.NoBukti'
      'Left Outer Join dbBarang C On C.KodeBrg=B.KodeBrg'
      'left Outer join DBGUDANG D on D.KODEGDG=B.GdgAsal'
      'left Outer join DBGUDANG E on E.KODEGDG=B.GdgTujuan'
      'where a.NoBukti=@NoBukti'
      'order By B.Urut'
      '')
    Left = 139
    Top = 298
    object QuBeliNOBUKTI: TStringField
      FieldName = 'NOBUKTI'
      Size = 30
    end
    object QuBeliNOURUT: TStringField
      FieldName = 'NOURUT'
      Size = 5
    end
    object QuBeliTANGGAL: TDateTimeField
      FieldName = 'TANGGAL'
    end
    object QuBeliKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 500
    end
    object QuBeliURUT: TIntegerField
      FieldName = 'URUT'
    end
    object QuBeliKODEBRG: TStringField
      FieldName = 'KODEBRG'
      Size = 25
    end
    object QuBeliNamaBrg: TStringField
      FieldName = 'NamaBrg'
      Size = 200
    end
    object QuBeliJns_Kertas: TStringField
      FieldName = 'Jns_Kertas'
      Size = 50
    end
    object QuBeliUkr_Kertas: TStringField
      FieldName = 'Ukr_Kertas'
      Size = 50
    end
    object QuBeliQNT: TBCDField
      FieldName = 'QNT'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuBeliQNT2: TBCDField
      FieldName = 'QNT2'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuBeliSAT_1: TStringField
      FieldName = 'SAT_1'
      Size = 5
    end
    object QuBeliSAT_2: TStringField
      FieldName = 'SAT_2'
      Size = 5
    end
    object QuBeliNoSat: TWordField
      FieldName = 'NoSat'
    end
    object QuBeliISI: TBCDField
      FieldName = 'ISI'
      Precision = 18
      Size = 2
    end
    object QuBeliGSM: TBCDField
      FieldName = 'GSM'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuBeligdgAsal: TStringField
      FieldName = 'gdgAsal'
      Size = 15
    end
    object QuBeliNamaGgdAsal: TStringField
      FieldName = 'NamaGgdAsal'
      ReadOnly = True
      Size = 58
    end
    object QuBeligdgTujuan: TStringField
      FieldName = 'gdgTujuan'
      Size = 15
    end
    object QuBeliNamaGgdTujuan: TStringField
      FieldName = 'NamaGgdTujuan'
      ReadOnly = True
      Size = 58
    end
    object QuBeliNoPenyerahan: TStringField
      FieldName = 'NoPenyerahan'
      Size = 100
    end
  end
  object Sp_Beli: TADOStoredProc
    Connection = DM.MyStock
    CommandTimeout = 60
    ProcedureName = 'SP_TRANSFER;1'
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
        Name = '@Nobukti'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@NoUrut'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@Tanggal'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Note'
        Attributes = [paNullable]
        DataType = ftString
        Size = 200
        Value = Null
      end
      item
        Name = '@urut'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Kodebrg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@GdgAsal'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@GdgTujuan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@Sat_1'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = '@Sat_2'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
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
        Name = '@QNt2'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NoSat'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@Isi'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@IDUSER'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@NoPenyerahan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end>
    Left = 237
    Top = 297
  end
  object DsQuBeli: TDataSource
    DataSet = QuBeli
    Left = 106
    Top = 296
  end
  object QuUpdatedbbeli: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 60
    Parameters = <>
    SQL.Strings = (
      'Select * From vwPerusahaan')
    Left = 185
    Top = 297
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NoBukti=NoBukti'
      'Urut=Urut'
      'Keterangan=Keterangan'
      'KodeVls=KodeVls'
      'Kurs=Kurs'
      'Harga=Harga'
      'NNet=NNet')
    BCDToCurrency = False
    Left = 888
    Top = 72
  end
  object frxDBCetak: TfrxDBDataset
    UserName = 'frxDBCetak'
    CloseDataSource = False
    DataSet = QuUpdatedbbeli
    BCDToCurrency = False
    Left = 888
    Top = 40
  end
  object frxReport1: TfrxReport
    Version = '4.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40905.8888162384
    ReportOptions.LastChange = 41031.6701578819
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Footer2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Footer2.Visible := (<frxDBDataset2."Keterangan"><>'#39#39');        ' +
        '                             '
      'end;'
      ''
      'procedure MasterData2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  MasterData2.Visible := (<frxDBDataset2."Keterangan"><>'#39#39');  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 856
    Top = 40
    Datasets = <
      item
        DataSet = frxDBCetak
        DataSetName = 'frxDBCetak'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = DM.frxDBPerusahaan
        DataSetName = 'frxDBPerusahaan'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.9
      PaperHeight = 330.2
      PaperSize = 14
      LeftMargin = 6
      RightMargin = 6
      TopMargin = 45
      BottomMargin = 6
      LargeDesignHeight = True
      object ReportTitle1: TfrxReportTitle
        Height = 366.61441
        Top = 18.89765
        Width = 770.646167
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 209.5749385
          Width = 351.49629
          Height = 26.45671
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'COMMERCIAL INVOICE')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 389.29159
          Top = 49.13389
          Width = 151.1812
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Invoice No. ')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 389.29159
          Top = 68.03154
          Width = 151.1812
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Date ')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 559.37044
          Top = 49.13389
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoBukti"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 559.37044
          Top = 68.03154
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Bulan"] [<frxDBCetak."Tanggal"> #dDD, YYYY]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 389.29159
          Top = 86.92919
          Width = 151.1812
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Our Ref No.')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 559.37044
          Top = 86.92919
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."ContractNo"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 389.29159
          Top = 105.82684
          Width = 151.1812
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Your Ref No.')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 559.37044
          Top = 105.82684
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PONo"]')
          ParentFont = False
        end
        object Rich1: TfrxRichView
          ShiftMode = smWhenOverlapped
          Left = 7.55906
          Top = 49.13389
          Width = 332.59864
          Height = 204.09462
          ShowHint = False
          StretchMode = smMaxHeight
          GapX = 2
          GapY = 1
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033337B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C204E6172726F773B7D7B5C66315C666E696C5C6663
            6861727365743020417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220
            4D7366746564697420352E34312E32312E323531303B7D5C766965776B696E64
            345C7563315C706172645C66305C667331382042757965725C7061720D0A5C70
            6172645C716A5C62205B6672784442436574616B2E224E616D61437573745375
            7070225D5C62305C7061720D0A5B6672784442436574616B2E22416C616D6174
            225D5C7061720D0A5C706172645C66692D3230305C6C693230305C716A205B66
            72784442436574616B2E224B6F7461225D5C7061720D0A5C706172645C716A5C
            62205B6672784442436574616B2E224E4547415241225D5C7061720D0A5C6230
            2054656C203A205B6672784442436574616B2E2254454C504F4E225D20466178
            203A205B6672784442436574616B2E22464158225D5C7061720D0A5C70617264
            5C7061720D0A5C706172645C716A20436F6E7369676E65655C7061720D0A5B66
            72784442436574616B2E22436F6E7369676E656553686970225D5C7061720D0A
            5C7061720D0A4E6F74696679205061727479205C7061720D0A5B667278444243
            6574616B2E224E6F746966795F506172747953686970225D5C66315C66733230
            5C7061720D0A7D0D0A00}
        end
        object Memo2: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 139.84261
          Width = 151.1812
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Payment Term ')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 158.74026
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Documentary Credit No.')
          ParentFont = False
        end
        object Memo232: TfrxMemoView
          Left = 559.37044
          Top = 139.84261
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PaymentTerm"]')
          ParentFont = False
        end
        object Memo233: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 559.37044
          Top = 158.74026
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoLC"]')
          ParentFont = False
        end
        object Memo234: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 215.43321
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Port of Loading')
          ParentFont = False
        end
        object Memo237: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 559.37044
          Top = 215.43321
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoL"]')
          ParentFont = False
        end
        object Memo238: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 238.11039
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Port of Discharge')
          ParentFont = False
        end
        object Memo239: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 559.37044
          Top = 238.11039
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoD"]')
          ParentFont = False
        end
        object Memo240: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 264.5671
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Name Of Vessel')
          ParentFont = False
        end
        object Memo241: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 283.46475
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Ship on Board Date')
          ParentFont = False
        end
        object Memo242: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 559.37044
          Top = 264.5671
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NameOfVessel"]')
          ParentFont = False
        end
        object Memo243: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 559.37044
          Top = 283.46475
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxDBCetak."Bulan"] [<frxDBCetak."ShipOnBoardDate">  #d dd, yyy' +
              'y]')
          ParentFont = False
        end
        object Memo244: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 302.3624
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Packing')
          ParentFont = False
        end
        object Memo245: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 559.37044
          Top = 302.3624
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBCetak."Packing"]')
          ParentFont = False
        end
        object Memo247: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 177.63791
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Issuing Bank of L/C')
          ParentFont = False
        end
        object Memo248: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 559.37044
          Top = 177.63791
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."IssuingBank"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.89765
        Top = 517.79561
        Width = 770.646167
        DataSet = frxDBCetak
        DataSetName = 'frxDBCetak'
        RowCount = 0
        Stretched = True
        object frxDBDCetakNamaBrgkom: TfrxMemoView
          Left = 7.55906
          Width = 257.00804
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NamaBrgkom'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."NamaBrgkom"]')
          ParentFont = False
        end
        object frxDBCetakQty: TfrxMemoView
          Left = 264.5671
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetak."Qty"]')
          ParentFont = False
        end
        object frxDBCetakSatuan: TfrxMemoView
          Left = 362.83488
          Width = 79.37013
          Height = 18.89765
          ShowHint = False
          DataField = 'Satuan'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."Satuan"]')
          ParentFont = False
        end
        object frxDBCetakHarga: TfrxMemoView
          Left = 442.20501
          Width = 128.50402
          Height = 18.89765
          ShowHint = False
          DataField = 'Harga'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetak."Harga"]')
          ParentFont = False
        end
        object frxDBCetakNNET: TfrxMemoView
          Left = 570.70903
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetak."NNET"]')
          ParentFont = False
        end
        object frxDBCetakValas: TfrxMemoView
          Left = 442.20501
          Width = 41.57483
          Height = 18.89765
          ShowHint = False
          DataField = 'Valas'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Valas"]')
          ParentFont = False
        end
        object Memo235: TfrxMemoView
          Left = 570.70903
          Width = 37.7953
          Height = 18.89765
          ShowHint = False
          DataField = 'Valas'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Valas"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 37.7953
        Top = 559.37044
        Width = 770.646167
        AllowSplit = True
        Stretched = True
        object Memo22: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 7.55906
          Top = 18.89765
          Width = 748.34694
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8 = (
            'Say :[Terbilang]')
          ParentFont = False
          WordBreak = True
        end
        object Memo164: TfrxMemoView
          Left = 608.50433
          Width = 147.40167
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."NNET">, Masterdata1,2)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo165: TfrxMemoView
          Left = 7.55906
          Width = 661.41775
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haRight
          ParentFont = False
        end
        object Memo236: TfrxMemoView
          Left = 570.70903
          Width = 37.7953
          Height = 18.89765
          ShowHint = False
          DataField = 'Valas'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Valas"]')
          ParentFont = False
        end
        object Memo246: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 7.55906
          Width = 551.81138
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoD"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 49.13389
        Top = 445.98454
        Width = 770.646167
        AllowSplit = True
        object Memo12: TfrxMemoView
          Left = 7.55906
          Top = 11.33859
          Width = 257.00804
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Description of Goods')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 264.5671
          Top = 11.33859
          Width = 98.26778
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Quantity')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 362.83488
          Top = 11.33859
          Width = 79.37013
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Unit')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 442.20501
          Top = 11.33859
          Width = 128.50402
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Unit Price')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 570.70903
          Top = 11.33859
          Width = 185.19697
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Total Price')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer2: TfrxFooter
        Height = 18.89765
        Top = 661.41775
        Width = 770.646167
        AllowSplit = True
        object Memo25: TfrxMemoView
          Left = 570.70903
          Width = 185.19697
          Height = 18.89765
          Visible = False
          ShowHint = False
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBDataset2."NNet">, MasterData2,0)]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 7.55906
          Width = 563.14997
          Height = 18.89765
          Visible = False
          ShowHint = False
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8 = (
            'Total Value')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 570.70903
          Width = 37.7953
          Height = 18.89765
          Visible = False
          ShowHint = False
          DataField = 'Valas'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Valas"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 18.89765
        Top = 619.84292
        Width = 770.646167
        OnBeforePrint = 'MasterData2OnBeforePrint'
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        Stretched = True
        object Memo23: TfrxMemoView
          Left = 7.55906
          Width = 563.14997
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Keterangan'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[frxDBDataset2."Keterangan"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 570.70903
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NNet'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset2."NNet"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 570.70903
          Width = 37.7953
          Height = 18.89765
          ShowHint = False
          DataField = 'Valas'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Valas"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 291.02381
        Top = 740.78788
        Width = 770.646167
        object Memo230: TfrxMemoView
          Left = 7.55906
          Width = 328.81911
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Footnote"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 434.64595
          Width = 98.26778
          Height = 22.67718
          ShowHint = False
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."NetW">, MasterData1,2)  #n%2.2n] Kgs')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 434.64595
          Top = 22.67718
          Width = 98.26778
          Height = 22.67718
          ShowHint = False
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."GrossW">, MasterData1,2) #n%2.2n] Kgs')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 336.37817
          Width = 86.92919
          Height = 22.67718
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Net Weight')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 336.37817
          Top = 22.67718
          Width = 86.92919
          Height = 22.67718
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Gross Weight')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 423.30736
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 423.30736
          Top = 22.67718
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 7.55906
          Top = 90.70872
          Width = 593.38621
          Height = 18.89765
          Visible = False
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'WE, CERTIFY THAT MERCHANDISE ARE OF INDONESIA ORIGIN')
          ParentFont = False
        end
        object frxDBPerusahaanNAMA: TfrxMemoView
          Left = 7.55906
          Top = 128.50402
          Width = 321.26005
          Height = 158.74026
          ShowHint = False
          DataSet = DM.frxDBPerusahaan
          DataSetName = 'frxDBPerusahaan'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBPerusahaan."NAMA"]'
            'Kediri - Indonesia'
            ''
            ''
            ''
            ''
            ''
            ''
            '[Uppercase(<frxDBPerusahaan."Direksi">)]')
          ParentFont = False
        end
        object Subreport2: TfrxSubreport
          Left = 434.64595
          Top = 45.35436
          Width = 374.17347
          Height = 18.89765
          ShowHint = False
          Page = frxReport1.Page3
        end
        object Memo249: TfrxMemoView
          Left = 336.37817
          Top = 45.35436
          Width = 86.92919
          Height = 22.67718
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Shipping Mark')
          ParentFont = False
        end
        object Memo250: TfrxMemoView
          Left = 423.30736
          Top = 45.35436
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 215.9
      PaperHeight = 330.2
      PaperSize = 14
      LeftMargin = 6
      RightMargin = 6
      TopMargin = 45
      BottomMargin = 6
      LargeDesignHeight = True
      object ReportTitle2: TfrxReportTitle
        Height = 355.27582
        Top = 18.89765
        Width = 770.646167
        Stretched = True
        object Memo36: TfrxMemoView
          Left = 209.5749385
          Width = 351.49629
          Height = 26.45671
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'PACKING LIST')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 389.29159
          Top = 49.13389
          Width = 136.06308
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Packing List No.')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 389.29159
          Top = 68.03154
          Width = 52.91342
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Date')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 555.59091
          Top = 49.13389
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoBukti"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 555.59091
          Top = 68.03154
          Width = 173.85838
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Bulan"] [<frxDBCetak."Tanggal"> #dDD, YYYY]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 389.29159
          Top = 94.48825
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Our Ref No.')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 555.59091
          Top = 94.48825
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."ContractNo"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 389.29159
          Top = 117.16543
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Your Ref No.')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 555.59091
          Top = 117.16543
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PONo"]')
          ParentFont = False
        end
        object Rich2: TfrxRichView
          ShiftMode = smWhenOverlapped
          Left = 7.55906
          Top = 52.91342
          Width = 332.59864
          Height = 204.09462
          ShowHint = False
          StretchMode = smMaxHeight
          GapX = 2
          GapY = 1
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033337B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C204E6172726F773B7D7B5C66315C666E696C5C6663
            6861727365743020417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220
            4D7366746564697420352E34312E32312E323531303B7D5C766965776B696E64
            345C7563315C706172645C66305C667331382042757965725C7061720D0A5C70
            6172645C716A5C62205B6672784442436574616B2E224E616D61437573745375
            7070225D5C62305C7061720D0A5B6672784442436574616B2E22416C616D6174
            225D5C7061720D0A5C706172645C66692D3230305C6C693230305C716A205B66
            72784442436574616B2E224B6F7461225D5C7061720D0A5C706172645C716A5C
            62205B6672784442436574616B2E224E4547415241225D5C7061720D0A5C6230
            2054656C203A205B6672784442436574616B2E2254454C504F4E225D20466178
            203A205B6672784442436574616B2E22464158225D5C7061720D0A5C70617264
            5C7061720D0A5C706172645C716A20436F6E7369676E65655C7061720D0A5B66
            72784442436574616B2E22436F6E7369676E656553686970225D5C7061720D0A
            5C7061720D0A4E6F74696679205061727479205C7061720D0A5B667278444243
            6574616B2E224E6F746966795F506172747953686970225D5C66315C66733230
            5C7061720D0A7D0D0A00}
        end
        object Memo37: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 143.62214
          Width = 151.1812
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Payment Term ')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 162.51979
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Documentary Credit No.')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 559.37044
          Top = 143.62214
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PaymentTerm"]')
          ParentFont = False
        end
        object Memo251: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 559.37044
          Top = 162.51979
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoLC"]')
          ParentFont = False
        end
        object Memo252: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 207.87415
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Port of Loading')
          ParentFont = False
        end
        object Memo253: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 559.37044
          Top = 207.87415
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoL"]')
          ParentFont = False
        end
        object Memo254: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 230.55133
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Port of Discharge')
          ParentFont = False
        end
        object Memo255: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 559.37044
          Top = 230.55133
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoD"]')
          ParentFont = False
        end
        object Memo256: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 257.00804
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Name Of Vessel')
          ParentFont = False
        end
        object Memo257: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 275.90569
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Ship on Board Date')
          ParentFont = False
        end
        object Memo258: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 559.37044
          Top = 257.00804
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NameOfVessel"]')
          ParentFont = False
        end
        object Memo259: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 559.37044
          Top = 275.90569
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxDBCetak."Bulan"] [<frxDBCetak."ShipOnBoardDate">  #d dd, yyy' +
              'y]')
          ParentFont = False
        end
        object Memo260: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 294.80334
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Packing')
          ParentFont = False
        end
        object Memo261: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 559.37044
          Top = 294.80334
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBCetak."Packing"]')
          ParentFont = False
        end
        object Memo262: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 181.41744
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Issuing Bank of L/C')
          ParentFont = False
        end
        object Memo263: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 559.37044
          Top = 181.41744
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."IssuingBank"]')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        Height = 22.67718
        Top = 506.45702
        Width = 770.646167
        DataSet = frxDBCetak
        DataSetName = 'frxDBCetak'
        RowCount = 0
        Stretched = True
        object Memo48: TfrxMemoView
          Left = 7.55906
          Width = 241.88992
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NamaBrgkom'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."NamaBrgkom"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 249.44898
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetak."Qty"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 347.71676
          Width = 75.5906
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Satuan'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."Satuan"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 423.30736
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NetW'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetak."NetW"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 521.57514
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'GrossW'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetak."GrossW"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 619.84292
          Width = 132.28355
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'KetDetail'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."KetDetail"]')
          ParentFont = False
          SuppressRepeated = True
        end
      end
      object Header2: TfrxHeader
        Height = 49.13389
        Top = 434.64595
        Width = 770.646167
        AllowSplit = True
        object Memo53: TfrxMemoView
          Left = 7.55906
          Top = 11.33859
          Width = 241.88992
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Description of Goods')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 249.44898
          Top = 11.33859
          Width = 98.26778
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Quantity')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 347.71676
          Top = 11.33859
          Width = 75.5906
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Unit')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 423.30736
          Top = 11.33859
          Width = 98.26778
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Net Weight'
            '(Kgs)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 521.57514
          Top = 11.33859
          Width = 98.26778
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Gross Weight'
            '(Kgs)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 619.84292
          Top = 11.33859
          Width = 132.28355
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Notes')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary2: TfrxReportSummary
        Height = 291.02381
        Top = 589.60668
        Width = 770.646167
        object Memo60: TfrxMemoView
          Left = 362.83488
          Top = 45.35436
          Width = 83.14966
          Height = 18.89765
          ShowHint = False
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."Meas">, MasterData3,2)  #n%2,2n] M'#194#179)
          ParentFont = False
          WordWrap = False
        end
        object Memo62: TfrxMemoView
          Left = 241.88992
          Top = 45.35436
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Mesurement ')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 347.71676
          Top = 45.35436
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 7.55906
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Miscellaneous')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 109.60637
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Subreport1: TfrxSubreport
          Left = 362.83488
          Top = 71.81107
          Width = 374.17347
          Height = 18.89765
          ShowHint = False
          Page = frxReport1.Page3
        end
        object Memo61: TfrxMemoView
          Left = 241.88992
          Top = 71.81107
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Shipping Mark')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 347.71676
          Top = 71.81107
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 7.55906
          Width = 744.56741
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo231: TfrxMemoView
          Left = 117.16543
          Width = 638.74057
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Footnote"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 7.55906
          Top = 124.72449
          Width = 321.26005
          Height = 158.74026
          ShowHint = False
          DataSet = DM.frxDBPerusahaan
          DataSetName = 'frxDBPerusahaan'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBPerusahaan."NAMA"]'
            'Kediri - Indonesia'
            ''
            ''
            ''
            ''
            ''
            ''
            '[Uppercase(<frxDBPerusahaan."Direksi">)]')
          ParentFont = False
        end
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 215.9
      PaperHeight = 279.4
      PaperSize = 1
      LeftMargin = 10
      RightMargin = 10
      TopMargin = 10
      BottomMargin = 10
      object MasterData4: TfrxMasterData
        Height = 22.67718
        Top = 18.89765
        Width = 740.409927
        DataSet = frxDBCetak
        DataSetName = 'frxDBCetak'
        RowCount = 0
        Stretched = True
        object frxDBDCetakShippingMark: TfrxMemoView
          Width = 668.97681
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'ShippingMark'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."ShippingMark"]')
          ParentFont = False
          SuppressRepeated = True
        end
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 215.9
      PaperHeight = 330.2
      PaperSize = 14
      LeftMargin = 6
      RightMargin = 6
      TopMargin = 45
      BottomMargin = 6
      object ReportTitle3: TfrxReportTitle
        Height = 374.17347
        Top = 18.89765
        Width = 770.646167
        Stretched = True
        object Memo65: TfrxMemoView
          Left = 209.5749385
          Width = 351.49629
          Height = 26.45671
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'BENEFICIARY CERTIFICATE')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 389.29159
          Top = 68.03154
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Invoice No.')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 389.29159
          Top = 49.13389
          Width = 52.91342
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Date')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 555.59091
          Top = 68.03154
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoBukti"]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 555.59091
          Top = 49.13389
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Bulan"] [<frxDBCetak."Tanggal"> #dDD, YYYY]')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 389.29159
          Top = 117.16543
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Our Ref No.')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 555.59091
          Top = 117.16543
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."ContractNo"]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 389.29159
          Top = 136.06308
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Your Ref No.')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 555.59091
          Top = 136.06308
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PONo"]')
          ParentFont = False
        end
        object Memo162: TfrxMemoView
          ShiftMode = smDontShift
          Left = 555.59091
          Top = 86.92919
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Valas"] [<InvoiceValue>  #n%2,2n]')
          ParentFont = False
          WordWrap = False
        end
        object Memo163: TfrxMemoView
          Left = 389.29159
          Top = 86.92919
          Width = 117.16543
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Invoice Value')
          ParentFont = False
        end
        object Rich3: TfrxRichView
          ShiftMode = smWhenOverlapped
          Left = 7.55906
          Top = 49.13389
          Width = 332.59864
          Height = 204.09462
          ShowHint = False
          StretchMode = smMaxHeight
          GapX = 2
          GapY = 1
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033337B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C204E6172726F773B7D7B5C66315C666E696C5C6663
            6861727365743020417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220
            4D7366746564697420352E34312E32312E323531303B7D5C766965776B696E64
            345C7563315C706172645C66305C6673313820546F5C7061720D0A5C70617264
            5C716A5C62205B6672784442436574616B2E224E616D61437573745375707022
            5D5C62305C7061720D0A5B6672784442436574616B2E22416C616D6174225D5C
            7061720D0A5C706172645C66692D3230305C6C693230305C716A205B66727844
            42436574616B2E224B6F7461225D5C7061720D0A5C706172645C716A5C62205B
            6672784442436574616B2E224E4547415241225D5C7061720D0A5C6230205465
            6C203A205B6672784442436574616B2E2254454C504F4E225D20466178203A20
            5B6672784442436574616B2E22464158225D5C7061720D0A5C66315C66733230
            5C7061720D0A7D0D0A00}
        end
        object Memo68: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 162.51979
          Width = 151.1812
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Payment Term ')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 181.41744
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Documentary Credit No.')
          ParentFont = False
        end
        object Memo264: TfrxMemoView
          Left = 555.59091
          Top = 162.51979
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PaymentTerm"]')
          ParentFont = False
        end
        object Memo265: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 181.41744
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoLC"]')
          ParentFont = False
        end
        object Memo266: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 230.55133
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Port of Loading')
          ParentFont = False
        end
        object Memo267: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 230.55133
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoL"]')
          ParentFont = False
        end
        object Memo268: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 253.22851
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Port of Discharge')
          ParentFont = False
        end
        object Memo269: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 253.22851
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoD"]')
          ParentFont = False
        end
        object Memo270: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 279.68522
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Name Of Vessel')
          ParentFont = False
        end
        object Memo271: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 317.48052
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Ship on Board Date')
          ParentFont = False
        end
        object Memo272: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 279.68522
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NameOfVessel"]')
          ParentFont = False
        end
        object Memo273: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 317.48052
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxDBCetak."Bulan"] [<frxDBCetak."ShipOnBoardDate">  #d dd, yyy' +
              'y]')
          ParentFont = False
        end
        object Memo274: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 355.27582
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Packing')
          ParentFont = False
        end
        object Memo275: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 355.27582
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBCetak."Packing"]')
          ParentFont = False
        end
        object Memo276: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 200.31509
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Issuing Bank of L/C')
          ParentFont = False
        end
        object Memo277: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 200.31509
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."IssuingBank"]')
          ParentFont = False
        end
        object Memo278: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 298.58287
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'B/L No. ')
          ParentFont = False
        end
        object Memo279: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 298.58287
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoBL"]')
          ParentFont = False
        end
        object Memo280: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 336.37817
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'ETA Destination               ')
          ParentFont = False
        end
        object Memo281: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 336.37817
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxDBCetak."Bulan"] [<frxDBCetak."ETADestination">  #d dd, yyyy' +
              ']')
          ParentFont = False
        end
      end
      object Header3: TfrxHeader
        Height = 49.13389
        Top = 453.5436
        Width = 770.646167
        AllowSplit = True
        object Memo80: TfrxMemoView
          Left = 7.55906
          Top = 11.33859
          Width = 294.80334
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Description of Goods')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 302.3624
          Top = 11.33859
          Width = 196.53556
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Quantity')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 498.89796
          Top = 11.33859
          Width = 253.22851
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Shipping Mark')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary3: TfrxReportSummary
        Height = 291.02381
        Top = 604.7248
        Width = 770.646167
        Stretched = True
        object Memo89: TfrxMemoView
          Left = 7.55906
          Top = 71.81107
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Miscellaneous')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 151.1812
          Top = 71.81107
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 7.55906
          Top = 128.50402
          Width = 377.953
          Height = 158.74026
          ShowHint = False
          DataSet = DM.frxDBPerusahaan
          DataSetName = 'frxDBPerusahaan'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBPerusahaan."NAMA"]'
            'Kediri - Indonesia'
            ''
            ''
            ''
            ''
            ''
            '[frxDBPerusahaan."Direksi"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 7.55906
          Width = 744.56741
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo86: TfrxMemoView
          Left = 166.29932
          Top = 3.77953
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."NetW">, MasterData5,2) #n%2,2n] Kgs')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Left = 166.29932
          Top = 26.45671
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."GrossW">, MasterData5,2)  #n%2,2n] Kgs')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 7.55906
          Top = 3.77953
          Width = 132.28355
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Total Net Weight')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 7.55906
          Top = 26.45671
          Width = 132.28355
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Total Gross Weight')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 151.1812
          Top = 3.77953
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 151.1812
          Top = 26.45671
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          Left = 166.29932
          Top = 49.13389
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."Meas">, MasterData5,2)  #n%2,2n] M'#194#179)
          ParentFont = False
          WordWrap = False
        end
        object Memo102: TfrxMemoView
          Left = 7.55906
          Top = 49.13389
          Width = 136.06308
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Mesurement ')
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          Left = 151.1812
          Top = 49.13389
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object frxDBDCetakNoteBeneficiary1: TfrxMemoView
          Left = 170.07885
          Top = 71.81107
          Width = 582.04762
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoteBeneficiary1"]')
          ParentFont = False
        end
      end
      object MasterData5: TfrxMasterData
        Height = 18.89765
        Top = 525.35467
        Width = 770.646167
        DataSet = frxDBCetak
        DataSetName = 'frxDBCetak'
        RowCount = 0
        Stretched = True
        object Memo94: TfrxMemoView
          Left = 7.55906
          Width = 294.80334
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NamaBrgkom'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."NamaBrgkom"]')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 302.3624
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxDBCetak."Qty">  #n%2,2n] [frxDBCetak."Satuan"]')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Left = 502.67749
          Width = 249.44898
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."ShippingMark"]')
          ParentFont = False
          SuppressRepeated = True
        end
      end
    end
    object Page5: TfrxReportPage
      PaperWidth = 215.9
      PaperHeight = 330.2
      PaperSize = 256
      LeftMargin = 6
      RightMargin = 6
      TopMargin = 45
      BottomMargin = 6
      object ReportTitle4: TfrxReportTitle
        Height = 374.17347
        Top = 18.89765
        Width = 770.646167
        Stretched = True
        object Memo82: TfrxMemoView
          Left = 209.5749385
          Width = 351.49629
          Height = 26.45671
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'SHIPMENT ADVICE')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 389.29159
          Top = 68.03154
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Invoice No.')
          ParentFont = False
        end
        object Memo282: TfrxMemoView
          Left = 555.59091
          Top = 68.03154
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoBukti"]')
          ParentFont = False
        end
        object Memo283: TfrxMemoView
          Left = 389.29159
          Top = 117.16543
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Our Ref No.')
          ParentFont = False
        end
        object Memo284: TfrxMemoView
          Left = 555.59091
          Top = 117.16543
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."ContractNo"]')
          ParentFont = False
        end
        object Memo285: TfrxMemoView
          Left = 389.29159
          Top = 136.06308
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Your Ref No.')
          ParentFont = False
        end
        object Memo286: TfrxMemoView
          Left = 555.59091
          Top = 136.06308
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PONo"]')
          ParentFont = False
        end
        object Memo287: TfrxMemoView
          ShiftMode = smDontShift
          Left = 555.59091
          Top = 86.92919
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Valas"] [<InvoiceValue>  #n%2,2n]')
          ParentFont = False
          WordWrap = False
        end
        object Memo288: TfrxMemoView
          Left = 389.29159
          Top = 86.92919
          Width = 117.16543
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Invoice Value')
          ParentFont = False
        end
        object Rich4: TfrxRichView
          ShiftMode = smWhenOverlapped
          Left = 3.77953
          Top = 49.13389
          Width = 347.71676
          Height = 204.09462
          ShowHint = False
          StretchMode = smMaxHeight
          GapX = 2
          GapY = 1
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033337B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C204E6172726F773B7D7B5C66315C666E696C5C6663
            6861727365743020417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220
            4D7366746564697420352E34312E32312E323531303B7D5C766965776B696E64
            345C7563315C706172645C66305C6673313820546F5C7061720D0A5C70617264
            5C716A5C62205B6672784442436574616B2E224E616D61437573745375707022
            5D5C62305C7061720D0A5B6672784442436574616B2E22416C616D6174225D5C
            7061720D0A5C706172645C66692D3230305C6C693230305C716A205B66727844
            42436574616B2E224B6F7461225D5C7061720D0A5C706172645C716A5C62205B
            6672784442436574616B2E224E4547415241225D5C7061720D0A5C6230205465
            6C203A205B6672784442436574616B2E2254454C504F4E225D20466178203A20
            5B6672784442436574616B2E22464158225D5C7061720D0A5C66315C66733230
            5C7061720D0A7D0D0A00}
        end
        object Memo289: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 162.51979
          Width = 151.1812
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Payment Term ')
          ParentFont = False
        end
        object Memo290: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 181.41744
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Documentary Credit No.')
          ParentFont = False
        end
        object Memo291: TfrxMemoView
          Left = 555.59091
          Top = 162.51979
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PaymentTerm"]')
          ParentFont = False
        end
        object Memo292: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 181.41744
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoLC"]')
          ParentFont = False
        end
        object Memo293: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 230.55133
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Port of Loading')
          ParentFont = False
        end
        object Memo294: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 230.55133
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoL"]')
          ParentFont = False
        end
        object Memo295: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 253.22851
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Port of Discharge')
          ParentFont = False
        end
        object Memo296: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 253.22851
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoD"]')
          ParentFont = False
        end
        object Memo297: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 279.68522
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Name Of Vessel')
          ParentFont = False
        end
        object Memo298: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 317.48052
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Ship on Board Date')
          ParentFont = False
        end
        object Memo299: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 279.68522
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NameOfVessel"]')
          ParentFont = False
        end
        object Memo300: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 317.48052
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxDBCetak."Bulan"] [<frxDBCetak."ShipOnBoardDate">  #d dd, yyy' +
              'y]')
          ParentFont = False
        end
        object Memo301: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 355.27582
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Packing')
          ParentFont = False
        end
        object Memo302: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 355.27582
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBCetak."Packing"]')
          ParentFont = False
        end
        object Memo303: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 200.31509
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Issuing Bank of L/C')
          ParentFont = False
        end
        object Memo304: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 200.31509
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."IssuingBank"]')
          ParentFont = False
        end
        object Memo305: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 298.58287
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'B/L No. ')
          ParentFont = False
        end
        object Memo306: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 298.58287
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoBL"]')
          ParentFont = False
        end
        object Memo307: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 336.37817
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'ETA Destination               ')
          ParentFont = False
        end
        object Memo308: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 336.37817
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxDBCetak."Bulan"] [<frxDBCetak."ETADestination">  #d dd, yyyy' +
              ']')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 389.29159
          Top = 49.13389
          Width = 52.91342
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Date')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 555.59091
          Top = 49.13389
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Bulan"] [<frxDBCetak."Tanggal"> #dDD, YYYY]')
          ParentFont = False
        end
      end
      object Header4: TfrxHeader
        Height = 49.13389
        Top = 453.5436
        Width = 770.646167
        AllowSplit = True
        object Memo110: TfrxMemoView
          Left = 7.55906
          Top = 11.33859
          Width = 294.80334
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Description of Goods')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          Left = 302.3624
          Top = 11.33859
          Width = 196.53556
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Quantity')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          Left = 498.89796
          Top = 11.33859
          Width = 253.22851
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Shipping Mark')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary4: TfrxReportSummary
        Height = 291.02381
        Top = 608.50433
        Width = 770.646167
        Stretched = True
        object Memo113: TfrxMemoView
          Left = 7.55906
          Top = 71.81107
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Miscellaneous')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Left = 151.1812
          Top = 71.81107
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 7.55906
          Top = 128.50402
          Width = 377.953
          Height = 158.74026
          ShowHint = False
          DataSet = DM.frxDBPerusahaan
          DataSetName = 'frxDBPerusahaan'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBPerusahaan."NAMA"]'
            'Kediri - Indonesia'
            ''
            ''
            ''
            ''
            ''
            '[frxDBPerusahaan."Direksi"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 7.55906
          Width = 744.56741
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo116: TfrxMemoView
          Left = 166.29932
          Top = 3.77953
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."NetW">, MasterData6,2) #n%2,2n] Kgs')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          Left = 166.29932
          Top = 26.45671
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."GrossW">, MasterData6,2)  #n%2,2n] Kgs')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          Left = 7.55906
          Top = 3.77953
          Width = 132.28355
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Total Net Weight')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          Left = 7.55906
          Top = 26.45671
          Width = 132.28355
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Total Gross Weight')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          Left = 151.1812
          Top = 3.77953
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo121: TfrxMemoView
          Left = 151.1812
          Top = 26.45671
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          Left = 170.07885
          Top = 49.13389
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."Meas">, MasterData6,2) #n%2,2n] M'#194#179)
          ParentFont = False
          WordWrap = False
        end
        object Memo123: TfrxMemoView
          Left = 7.55906
          Top = 49.13389
          Width = 136.06308
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Mesurement ')
          ParentFont = False
        end
        object Memo124: TfrxMemoView
          Left = 151.1812
          Top = 49.13389
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo125: TfrxMemoView
          Left = 170.07885
          Top = 71.81107
          Width = 582.04762
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."ShipmentAdvice1"]')
          ParentFont = False
        end
      end
      object MasterData6: TfrxMasterData
        Height = 22.67718
        Top = 525.35467
        Width = 770.646167
        DataSet = frxDBCetak
        DataSetName = 'frxDBCetak'
        RowCount = 0
        Stretched = True
        object Memo126: TfrxMemoView
          Left = 7.55906
          Width = 294.80334
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NamaBrgkom'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."NamaBrgkom"]')
          ParentFont = False
        end
        object Memo127: TfrxMemoView
          Left = 302.3624
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxDBCetak."Qty"> #n%2,2n] [frxDBCetak."Satuan"]')
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          Left = 502.67749
          Width = 249.44898
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'ShippingMark'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."ShippingMark"]')
          ParentFont = False
          SuppressRepeated = True
        end
      end
    end
    object Page6: TfrxReportPage
      PaperWidth = 215.9
      PaperHeight = 330.2
      PaperSize = 14
      LeftMargin = 6
      RightMargin = 6
      TopMargin = 45
      BottomMargin = 6
      object ReportTitle5: TfrxReportTitle
        Height = 374.17347
        Top = 18.89765
        Width = 770.646167
        Stretched = True
        object Memo129: TfrxMemoView
          Left = 209.5749385
          Width = 351.49629
          Height = 26.45671
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'SHIPMENT ADVICE')
          ParentFont = False
        end
        object Memo160: TfrxMemoView
          Left = 7.55906
          Top = 49.13389
          Width = 52.91342
          Height = 18.55405636
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'To')
          ParentFont = False
        end
        object Memo161: TfrxMemoView
          Left = 7.55906
          Top = 71.39875764
          Width = 370.39394
          Height = 41.98714236
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."ToShipmentAdvice2"]')
          ParentFont = False
        end
        object Rich5: TfrxRichView
          ShiftMode = smWhenOverlapped
          Left = 7.55906
          Top = 113.3859
          Width = 370.39394
          Height = 204.09462
          ShowHint = False
          StretchMode = smMaxHeight
          GapX = 2
          GapY = 1
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033337B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C204E6172726F773B7D7B5C66315C666E696C5C6663
            6861727365743020417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220
            4D7366746564697420352E34312E32312E323531303B7D5C766965776B696E64
            345C7563315C706172645C66305C667331382042757965725C7061720D0A5C70
            6172645C716A5C62205B6672784442436574616B2E224E616D61437573745375
            7070225D5C62305C7061720D0A5B6672784442436574616B2E22416C616D6174
            225D5C7061720D0A5C706172645C66692D3230305C6C693230305C716A205B66
            72784442436574616B2E224B6F7461225D5C7061720D0A5C706172645C716A5C
            62205B6672784442436574616B2E224E4547415241225D5C7061720D0A5C6230
            2054656C203A205B6672784442436574616B2E2254454C504F4E225D20466178
            203A205B6672784442436574616B2E22464158225D5C7061720D0A5C66315C66
            7332305C7061720D0A7D0D0A00}
        end
        object Memo96: TfrxMemoView
          Left = 389.29159
          Top = 68.03154
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Invoice No.')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 555.59091
          Top = 68.03154
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoBukti"]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 389.29159
          Top = 117.16543
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Our Ref No.')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          Left = 555.59091
          Top = 117.16543
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."ContractNo"]')
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          Left = 389.29159
          Top = 136.06308
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Your Ref No.')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          Left = 555.59091
          Top = 136.06308
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PONo"]')
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          ShiftMode = smDontShift
          Left = 555.59091
          Top = 86.92919
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Valas"] [<InvoiceValue>  #n%2,2n]')
          ParentFont = False
          WordWrap = False
        end
        object Memo108: TfrxMemoView
          Left = 389.29159
          Top = 86.92919
          Width = 117.16543
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Invoice Value')
          ParentFont = False
        end
        object Memo109: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 162.51979
          Width = 151.1812
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Payment Term ')
          ParentFont = False
        end
        object Memo131: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 181.41744
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Documentary Credit No.')
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          Left = 555.59091
          Top = 162.51979
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PaymentTerm"]')
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 181.41744
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoLC"]')
          ParentFont = False
        end
        object Memo134: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 230.55133
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Port of Loading')
          ParentFont = False
        end
        object Memo135: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 230.55133
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoL"]')
          ParentFont = False
        end
        object Memo136: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 253.22851
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Port of Discharge')
          ParentFont = False
        end
        object Memo137: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 253.22851
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoD"]')
          ParentFont = False
        end
        object Memo138: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 279.68522
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Name Of Vessel')
          ParentFont = False
        end
        object Memo139: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 317.48052
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Ship on Board Date')
          ParentFont = False
        end
        object Memo140: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 279.68522
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NameOfVessel"]')
          ParentFont = False
        end
        object Memo166: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 317.48052
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxDBCetak."Bulan"] [<frxDBCetak."ShipOnBoardDate">  #d dd, yyy' +
              'y]')
          ParentFont = False
        end
        object Memo167: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 355.27582
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Packing')
          ParentFont = False
        end
        object Memo168: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 355.27582
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBCetak."Packing"]')
          ParentFont = False
        end
        object Memo169: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 200.31509
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Issuing Bank of L/C')
          ParentFont = False
        end
        object Memo309: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 200.31509
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."IssuingBank"]')
          ParentFont = False
        end
        object Memo310: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 298.58287
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'B/L No. ')
          ParentFont = False
        end
        object Memo311: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 298.58287
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoBL"]')
          ParentFont = False
        end
        object Memo312: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 336.37817
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'ETA Destination               ')
          ParentFont = False
        end
        object Memo313: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 336.37817
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxDBCetak."Bulan"] [<frxDBCetak."ETADestination">  #d dd, yyyy' +
              ']')
          ParentFont = False
        end
        object Memo314: TfrxMemoView
          Left = 389.29159
          Top = 49.13389
          Width = 52.91342
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Date')
          ParentFont = False
        end
        object Memo315: TfrxMemoView
          Left = 555.59091
          Top = 49.13389
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Bulan"] [<frxDBCetak."Tanggal"> #dDD, YYYY]')
          ParentFont = False
        end
      end
      object Header5: TfrxHeader
        Height = 49.13389
        Top = 453.5436
        Width = 770.646167
        AllowSplit = True
        object Memo141: TfrxMemoView
          Left = 7.55906
          Top = 11.33859
          Width = 294.80334
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Description of Goods')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo142: TfrxMemoView
          Left = 302.3624
          Top = 11.33859
          Width = 196.53556
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Quantity')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo143: TfrxMemoView
          Left = 498.89796
          Top = 11.33859
          Width = 253.22851
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Shipping Mark')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary5: TfrxReportSummary
        Height = 291.02381
        Top = 604.7248
        Width = 770.646167
        Stretched = True
        object Memo144: TfrxMemoView
          Left = 7.55906
          Top = 60.47248
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Miscellaneous')
          ParentFont = False
        end
        object Memo145: TfrxMemoView
          Left = 113.3859
          Top = 60.47248
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo146: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 7.55906
          Top = 113.3859
          Width = 377.953
          Height = 158.74026
          ShowHint = False
          DataSet = DM.frxDBPerusahaan
          DataSetName = 'frxDBPerusahaan'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBPerusahaan."NAMA"]'
            'Kediri - Indonesia'
            ''
            ''
            ''
            ''
            ''
            '[frxDBPerusahaan."Direksi"]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 7.55906
          Width = 744.56741
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo147: TfrxMemoView
          Left = 128.50402
          Top = 3.77953
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."NetW">, MasterData7,2) #n%2,2n] Kgs')
          ParentFont = False
        end
        object Memo148: TfrxMemoView
          Left = 128.50402
          Top = 22.67718
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."GrossW">, MasterData7,2) #n%2,2n] Kgs')
          ParentFont = False
        end
        object Memo149: TfrxMemoView
          Left = 7.55906
          Top = 3.77953
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Total Net Weight')
          ParentFont = False
        end
        object Memo150: TfrxMemoView
          Left = 7.55906
          Top = 22.67718
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Total Gross Weight')
          ParentFont = False
        end
        object Memo151: TfrxMemoView
          Left = 113.3859
          Top = 3.77953
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo152: TfrxMemoView
          Left = 113.3859
          Top = 22.67718
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo153: TfrxMemoView
          Left = 132.28355
          Top = 41.57483
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."Meas">, MasterData7,2) #n%2,2n] M'#194#179)
          ParentFont = False
          WordWrap = False
        end
        object Memo154: TfrxMemoView
          Left = 7.55906
          Top = 41.57483
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Mesurement ')
          ParentFont = False
        end
        object Memo155: TfrxMemoView
          Left = 113.3859
          Top = 41.57483
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo156: TfrxMemoView
          Left = 132.28355
          Top = 60.47248
          Width = 582.04762
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."ShipmentAdvice2"]')
          ParentFont = False
        end
      end
      object MasterData7: TfrxMasterData
        Height = 18.89765
        Top = 525.35467
        Width = 770.646167
        DataSet = frxDBCetak
        DataSetName = 'frxDBCetak'
        RowCount = 0
        Stretched = True
        object Memo157: TfrxMemoView
          Left = 7.55906
          Width = 294.80334
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NamaBrgkom'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."NamaBrgkom"]')
          ParentFont = False
        end
        object Memo158: TfrxMemoView
          Left = 302.3624
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxDBCetak."Qty">  #n%2,2n] [frxDBCetak."Satuan"]')
          ParentFont = False
        end
        object Memo159: TfrxMemoView
          Left = 502.67749
          Width = 249.44898
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."ShippingMark"]')
          ParentFont = False
          SuppressRepeated = True
        end
      end
    end
    object Page7: TfrxReportPage
      PaperWidth = 215.9
      PaperHeight = 330.2
      PaperSize = 14
      LeftMargin = 6
      RightMargin = 6
      TopMargin = 45
      BottomMargin = 6
      object ReportTitle6: TfrxReportTitle
        Height = 374.17347
        Top = 18.89765
        Width = 770.646167
        Stretched = True
        object Memo130: TfrxMemoView
          Left = 209.5749385
          Width = 351.49629
          Height = 26.45671
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'BENEFICIARY CERTIFICATE')
          ParentFont = False
        end
        object Memo172: TfrxMemoView
          Left = 389.29159
          Top = 68.03154
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Invoice No.')
          ParentFont = False
        end
        object Memo173: TfrxMemoView
          Left = 555.59091
          Top = 68.03154
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoBukti"]')
          ParentFont = False
        end
        object Memo174: TfrxMemoView
          Left = 389.29159
          Top = 117.16543
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Our Ref No.')
          ParentFont = False
        end
        object Memo175: TfrxMemoView
          Left = 555.59091
          Top = 117.16543
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."ContractNo"]')
          ParentFont = False
        end
        object Memo176: TfrxMemoView
          Left = 389.29159
          Top = 136.06308
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Your Ref No.')
          ParentFont = False
        end
        object Memo177: TfrxMemoView
          Left = 555.59091
          Top = 136.06308
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PONo"]')
          ParentFont = False
        end
        object Memo178: TfrxMemoView
          ShiftMode = smDontShift
          Left = 555.59091
          Top = 86.92919
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Valas"] [<InvoiceValue>  #n%2,2n]')
          ParentFont = False
          WordWrap = False
        end
        object Memo179: TfrxMemoView
          Left = 389.29159
          Top = 86.92919
          Width = 117.16543
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Invoice Value')
          ParentFont = False
        end
        object Memo180: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 162.51979
          Width = 151.1812
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Payment Term ')
          ParentFont = False
        end
        object Memo181: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 181.41744
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Documentary Credit No.')
          ParentFont = False
        end
        object Memo182: TfrxMemoView
          Left = 555.59091
          Top = 162.51979
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PaymentTerm"]')
          ParentFont = False
        end
        object Memo316: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 181.41744
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoLC"]')
          ParentFont = False
        end
        object Memo317: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 230.55133
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Port of Loading')
          ParentFont = False
        end
        object Memo318: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 230.55133
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoL"]')
          ParentFont = False
        end
        object Memo319: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 253.22851
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Port of Discharge')
          ParentFont = False
        end
        object Memo320: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 253.22851
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoD"]')
          ParentFont = False
        end
        object Memo321: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 279.68522
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Name Of Vessel')
          ParentFont = False
        end
        object Memo322: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 317.48052
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Ship on Board Date')
          ParentFont = False
        end
        object Memo323: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 279.68522
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NameOfVessel"]')
          ParentFont = False
        end
        object Memo324: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 317.48052
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxDBCetak."Bulan"] [<frxDBCetak."ShipOnBoardDate">  #d dd, yyy' +
              'y]')
          ParentFont = False
        end
        object Memo325: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 355.27582
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Packing')
          ParentFont = False
        end
        object Memo326: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 355.27582
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBCetak."Packing"]')
          ParentFont = False
        end
        object Memo327: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 200.31509
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Issuing Bank of L/C')
          ParentFont = False
        end
        object Memo328: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 200.31509
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."IssuingBank"]')
          ParentFont = False
        end
        object Memo329: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 298.58287
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'B/L No. ')
          ParentFont = False
        end
        object Memo330: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 298.58287
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoBL"]')
          ParentFont = False
        end
        object Memo331: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 336.37817
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'ETA Destination               ')
          ParentFont = False
        end
        object Memo332: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 336.37817
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxDBCetak."Bulan"] [<frxDBCetak."ETADestination">  #d dd, yyyy' +
              ']')
          ParentFont = False
        end
        object Memo333: TfrxMemoView
          Left = 389.29159
          Top = 49.13389
          Width = 52.91342
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Date')
          ParentFont = False
        end
        object Memo334: TfrxMemoView
          Left = 555.59091
          Top = 49.13389
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Bulan"] [<frxDBCetak."Tanggal"> #dDD, YYYY]')
          ParentFont = False
        end
        object Rich6: TfrxRichView
          ShiftMode = smWhenOverlapped
          Left = 7.55906
          Top = 49.13389
          Width = 347.71676
          Height = 204.09462
          ShowHint = False
          StretchMode = smMaxHeight
          GapX = 2
          GapY = 1
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033337B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C204E6172726F773B7D7B5C66315C666E696C5C6663
            6861727365743020417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220
            4D7366746564697420352E34312E32312E323531303B7D5C766965776B696E64
            345C7563315C706172645C66305C6673313820546F5C7061720D0A5C70617264
            5C716A5C62205B6672784442436574616B2E224E616D61437573745375707022
            5D5C62305C7061720D0A5B6672784442436574616B2E22416C616D6174225D5C
            7061720D0A5C706172645C66692D3230305C6C693230305C716A205B66727844
            42436574616B2E224B6F7461225D5C7061720D0A5C706172645C716A5C62205B
            6672784442436574616B2E224E4547415241225D5C7061720D0A5C6230205465
            6C203A205B6672784442436574616B2E2254454C504F4E225D20466178203A20
            5B6672784442436574616B2E22464158225D5C7061720D0A5C66315C66733230
            5C7061720D0A7D0D0A00}
        end
      end
      object Header6: TfrxHeader
        Height = 49.13389
        Top = 453.5436
        Width = 770.646167
        AllowSplit = True
        object Memo183: TfrxMemoView
          Left = 7.55906
          Top = 11.33859
          Width = 294.80334
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Description of Goods')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo184: TfrxMemoView
          Left = 302.3624
          Top = 11.33859
          Width = 196.53556
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Quantity')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo185: TfrxMemoView
          Left = 498.89796
          Top = 11.33859
          Width = 253.22851
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Shipping Mark')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary6: TfrxReportSummary
        Height = 268.34663
        Top = 608.50433
        Width = 770.646167
        Stretched = True
        object Memo186: TfrxMemoView
          Left = 7.55906
          Top = 60.47248
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Miscellaneous')
          ParentFont = False
        end
        object Memo187: TfrxMemoView
          Left = 151.1812
          Top = 60.47248
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo188: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 7.55906
          Top = 109.60637
          Width = 377.953
          Height = 158.74026
          ShowHint = False
          DataSet = DM.frxDBPerusahaan
          DataSetName = 'frxDBPerusahaan'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBPerusahaan."NAMA"]'
            'Kediri - Indonesia'
            ''
            ''
            ''
            ''
            ''
            '[frxDBPerusahaan."Direksi"]')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 7.55906
          Width = 744.56741
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo189: TfrxMemoView
          Left = 166.29932
          Top = 3.77953
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."NetW">, MasterData8,2)  #n%2,2n] Kgs')
          ParentFont = False
        end
        object Memo190: TfrxMemoView
          Left = 166.29932
          Top = 22.67718
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."GrossW">, MasterData8,2) #n%2,2n] Kgs')
          ParentFont = False
        end
        object Memo191: TfrxMemoView
          Left = 7.55906
          Top = 3.77953
          Width = 132.28355
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Total Net Weight')
          ParentFont = False
        end
        object Memo192: TfrxMemoView
          Left = 7.55906
          Top = 22.67718
          Width = 132.28355
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Total Gross Weight')
          ParentFont = False
        end
        object Memo193: TfrxMemoView
          Left = 151.1812
          Top = 3.77953
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo194: TfrxMemoView
          Left = 151.1812
          Top = 22.67718
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo195: TfrxMemoView
          Left = 170.07885
          Top = 41.57483
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."Meas">, MasterData8,2)  #n%2,2n] M'#194#179)
          ParentFont = False
          WordWrap = False
        end
        object Memo196: TfrxMemoView
          Left = 7.55906
          Top = 41.57483
          Width = 136.06308
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Mesurement ')
          ParentFont = False
        end
        object Memo197: TfrxMemoView
          Left = 151.1812
          Top = 41.57483
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo198: TfrxMemoView
          Left = 170.07885
          Top = 60.47248
          Width = 582.04762
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoteBeneficiary2"]')
          ParentFont = False
        end
      end
      object MasterData8: TfrxMasterData
        Height = 22.67718
        Top = 525.35467
        Width = 770.646167
        DataSet = frxDBCetak
        DataSetName = 'frxDBCetak'
        RowCount = 0
        Stretched = True
        object Memo199: TfrxMemoView
          Left = 7.55906
          Width = 294.80334
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NamaBrgkom'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."NamaBrgkom"]')
          ParentFont = False
        end
        object Memo200: TfrxMemoView
          Left = 302.3624
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxDBCetak."Qty">  #n%2,2n] [frxDBCetak."Satuan"]')
          ParentFont = False
        end
        object Memo201: TfrxMemoView
          Left = 502.67749
          Width = 249.44898
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."ShippingMark"]')
          ParentFont = False
          SuppressRepeated = True
        end
      end
    end
    object Page8: TfrxReportPage
      PaperWidth = 215.9
      PaperHeight = 330.2
      PaperSize = 14
      LeftMargin = 6
      RightMargin = 6
      TopMargin = 45
      BottomMargin = 6
      object ReportTitle7: TfrxReportTitle
        Height = 374.17347
        Top = 18.89765
        Width = 770.646167
        Stretched = True
        object Memo17: TfrxMemoView
          Left = 209.5749385
          Width = 351.49629
          Height = 26.45671
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'BENEFICIARY CERTIFICATE')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 389.29159
          Top = 68.03154
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Invoice No.')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 555.59091
          Top = 68.03154
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoBukti"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 389.29159
          Top = 117.16543
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Our Ref No.')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 555.59091
          Top = 117.16543
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."ContractNo"]')
          ParentFont = False
        end
        object Memo170: TfrxMemoView
          Left = 389.29159
          Top = 136.06308
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Your Ref No.')
          ParentFont = False
        end
        object Memo171: TfrxMemoView
          Left = 555.59091
          Top = 136.06308
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PONo"]')
          ParentFont = False
        end
        object Memo202: TfrxMemoView
          ShiftMode = smDontShift
          Left = 555.59091
          Top = 86.92919
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Valas"] [<InvoiceValue>  #n%2,2n]')
          ParentFont = False
          WordWrap = False
        end
        object Memo203: TfrxMemoView
          Left = 389.29159
          Top = 86.92919
          Width = 117.16543
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Invoice Value')
          ParentFont = False
        end
        object Memo204: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 162.51979
          Width = 151.1812
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Payment Term ')
          ParentFont = False
        end
        object Memo205: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 181.41744
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Documentary Credit No.')
          ParentFont = False
        end
        object Memo206: TfrxMemoView
          Left = 555.59091
          Top = 162.51979
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PaymentTerm"]')
          ParentFont = False
        end
        object Memo207: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 181.41744
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoLC"]')
          ParentFont = False
        end
        object Memo208: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 230.55133
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Port of Loading')
          ParentFont = False
        end
        object Memo209: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 230.55133
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoL"]')
          ParentFont = False
        end
        object Memo210: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 253.22851
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Port of Discharge')
          ParentFont = False
        end
        object Memo335: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 253.22851
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoD"]')
          ParentFont = False
        end
        object Memo336: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 279.68522
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Name Of Vessel')
          ParentFont = False
        end
        object Memo337: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 317.48052
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Ship on Board Date')
          ParentFont = False
        end
        object Memo338: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 279.68522
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NameOfVessel"]')
          ParentFont = False
        end
        object Memo339: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 317.48052
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxDBCetak."Bulan"] [<frxDBCetak."ShipOnBoardDate">  #d dd, yyy' +
              'y]')
          ParentFont = False
        end
        object Memo340: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 355.27582
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Packing')
          ParentFont = False
        end
        object Memo341: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 355.27582
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBCetak."Packing"]')
          ParentFont = False
        end
        object Memo342: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 200.31509
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Issuing Bank of L/C')
          ParentFont = False
        end
        object Memo343: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 200.31509
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."IssuingBank"]')
          ParentFont = False
        end
        object Memo344: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 298.58287
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'B/L No. ')
          ParentFont = False
        end
        object Memo345: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 298.58287
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoBL"]')
          ParentFont = False
        end
        object Memo346: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 336.37817
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'ETA Destination               ')
          ParentFont = False
        end
        object Memo347: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 336.37817
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxDBCetak."Bulan"] [<frxDBCetak."ETADestination">  #d dd, yyyy' +
              ']')
          ParentFont = False
        end
        object Memo348: TfrxMemoView
          Left = 389.29159
          Top = 49.13389
          Width = 52.91342
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Date')
          ParentFont = False
        end
        object Memo349: TfrxMemoView
          Left = 555.59091
          Top = 49.13389
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Bulan"] [<frxDBCetak."Tanggal"> #dDD, YYYY]')
          ParentFont = False
        end
        object Rich7: TfrxRichView
          ShiftMode = smWhenOverlapped
          Left = 7.55906
          Top = 49.13389
          Width = 347.71676
          Height = 204.09462
          ShowHint = False
          StretchMode = smMaxHeight
          GapX = 2
          GapY = 1
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033337B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C204E6172726F773B7D7B5C66315C666E696C5C6663
            6861727365743020417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220
            4D7366746564697420352E34312E32312E323531303B7D5C766965776B696E64
            345C7563315C706172645C66305C6673313820546F5C7061720D0A5C70617264
            5C716A5C62205B6672784442436574616B2E224E616D61437573745375707022
            5D5C62305C7061720D0A5B6672784442436574616B2E22416C616D6174225D5C
            7061720D0A5C706172645C66692D3230305C6C693230305C716A205B66727844
            42436574616B2E224B6F7461225D5C7061720D0A5C706172645C716A5C62205B
            6672784442436574616B2E224E4547415241225D5C7061720D0A5C6230205465
            6C203A205B6672784442436574616B2E2254454C504F4E225D20466178203A20
            5B6672784442436574616B2E22464158225D5C7061720D0A5C66315C66733230
            5C7061720D0A7D0D0A00}
        end
      end
      object Header7: TfrxHeader
        Height = 49.13389
        Top = 453.5436
        Width = 770.646167
        AllowSplit = True
        object Memo211: TfrxMemoView
          Left = 7.55906
          Top = 11.33859
          Width = 294.80334
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Description of Goods')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo212: TfrxMemoView
          Left = 302.3624
          Top = 11.33859
          Width = 196.53556
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Quantity')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo213: TfrxMemoView
          Left = 498.89796
          Top = 11.33859
          Width = 253.22851
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Shipping Mark')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary7: TfrxReportSummary
        Height = 291.02381
        Top = 608.50433
        Width = 770.646167
        Stretched = True
        object Memo214: TfrxMemoView
          Left = 7.55906
          Top = 60.47248
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Miscellaneous')
          ParentFont = False
        end
        object Memo215: TfrxMemoView
          Left = 151.1812
          Top = 60.47248
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo216: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 7.55906
          Top = 105.82684
          Width = 377.953
          Height = 158.74026
          ShowHint = False
          DataSet = DM.frxDBPerusahaan
          DataSetName = 'frxDBPerusahaan'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBPerusahaan."NAMA"]'
            'Kediri - Indonesia'
            ''
            ''
            ''
            ''
            ''
            '[frxDBPerusahaan."Direksi"]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 7.55906
          Width = 744.56741
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo217: TfrxMemoView
          Left = 166.29932
          Top = 3.77953
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."NetW">, MasterData8,2) #n%2,2n] Kgs')
          ParentFont = False
        end
        object Memo218: TfrxMemoView
          Left = 166.29932
          Top = 22.67718
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."GrossW">, MasterData8,2) #n%2,2n] Kgs')
          ParentFont = False
        end
        object Memo219: TfrxMemoView
          Left = 7.55906
          Top = 3.77953
          Width = 132.28355
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Total Net Weight')
          ParentFont = False
        end
        object Memo220: TfrxMemoView
          Left = 7.55906
          Top = 22.67718
          Width = 132.28355
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Total Gross Weight')
          ParentFont = False
        end
        object Memo221: TfrxMemoView
          Left = 151.1812
          Top = 3.77953
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo222: TfrxMemoView
          Left = 151.1812
          Top = 22.67718
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo223: TfrxMemoView
          Left = 170.07885
          Top = 41.57483
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."Meas">, MasterData8,2)  #n%2,2n] M'#194#179)
          ParentFont = False
          WordWrap = False
        end
        object Memo224: TfrxMemoView
          Left = 7.55906
          Top = 41.57483
          Width = 136.06308
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Mesurement ')
          ParentFont = False
        end
        object Memo225: TfrxMemoView
          Left = 151.1812
          Top = 41.57483
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo226: TfrxMemoView
          Left = 170.07885
          Top = 60.47248
          Width = 582.04762
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoteBeneficiary3"]')
          ParentFont = False
        end
      end
      object MasterData9: TfrxMasterData
        Height = 22.67718
        Top = 525.35467
        Width = 770.646167
        DataSet = frxDBCetak
        DataSetName = 'frxDBCetak'
        RowCount = 0
        Stretched = True
        object Memo227: TfrxMemoView
          Left = 7.55906
          Width = 294.80334
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NamaBrgkom'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."NamaBrgkom"]')
          ParentFont = False
        end
        object Memo228: TfrxMemoView
          Left = 302.3624
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxDBCetak."Qty">  #n%2,2n] [frxDBCetak."Satuan"]')
          ParentFont = False
        end
        object Memo229: TfrxMemoView
          Left = 502.67749
          Width = 249.44898
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMemorial.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."ShippingMark"]')
          ParentFont = False
          SuppressRepeated = True
        end
      end
    end
  end
  object frxRichObject1: TfrxRichObject
    Left = 856
    Top = 72
  end
end
