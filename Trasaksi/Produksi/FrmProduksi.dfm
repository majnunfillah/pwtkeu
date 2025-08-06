object FrProduksi: TFrProduksi
  Left = 360
  Top = 55
  Width = 1378
  Height = 676
  Caption = 'Transaksi Mesin Tenaker'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
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
  TextHeight = 13
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1405
    Height = 105
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label26: TLabel
      Left = 8
      Top = 12
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
    object Label42: TLabel
      Left = 564
      Top = 12
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
    object Shape4: TShape
      Left = 8
      Top = 37
      Width = 785
      Height = 1
      Brush.Color = clBlack
    end
    object Label12: TLabel
      Left = 175
      Top = 12
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
    object Label6: TLabel
      Left = 6
      Top = 49
      Width = 43
      Height = 16
      Caption = 'Gudang'
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
    object NamaGdg: TRxLabel
      Left = 159
      Top = 49
      Width = 40
      Height = 16
      Caption = '[ . . . ]'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlack
      ShadowSize = 0
      ShadowPos = spRightBottom
      Transparent = True
      Visible = False
    end
    object Label7: TLabel
      Left = 390
      Top = 45
      Width = 26
      Height = 16
      Caption = 'Shift'
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
    object NoUrut: TEdit
      Left = 99
      Top = 8
      Width = 55
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Ctl3D = False
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
      OnEnter = KodeSuppEnter
      OnExit = NoUrutExit
      OnKeyDown = NoUrutKeyDown
    end
    object Tanggal: TDateEdit
      Left = 620
      Top = 8
      Width = 171
      Height = 24
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
      OnEnter = TanggalEnter
      OnExit = TanggalExit
      OnKeyDown = TanggalKeyDown
    end
    object NoBukti: TEdit
      Left = 263
      Top = 8
      Width = 156
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Ctl3D = False
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
    end
    object KodeGdg: TEdit
      Left = 99
      Top = 45
      Width = 55
      Height = 20
      BevelKind = bkFlat
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      Visible = False
      OnEnter = KodeSuppEnter
      OnExit = KodeGdgExit
      OnKeyDown = QntKeyDown
    end
    object Shift: TEdit
      Left = 432
      Top = 46
      Width = 121
      Height = 21
      TabOrder = 4
      OnKeyDown = ShiftKeyDown
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 344
    Width = 1405
    Height = 281
    Align = alBottom
    BevelOuter = bvNone
    BorderWidth = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    object SpeedButton1: TSpeedButton
      Left = 177
      Top = 250
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
    object Label1: TLabel
      Left = 8
      Top = 44
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
    object Label4: TLabel
      Left = 8
      Top = 110
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
    object Label19: TLabel
      Left = 177
      Top = 110
      Width = 40
      Height = 16
      Caption = 'Satuan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LNamaSat: TRxLabel
      Left = 253
      Top = 110
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
    object LNamaBrg: TRxLabel
      Left = 227
      Top = 42
      Width = 40
      Height = 16
      Caption = '[ . . . ]'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
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
    object Label2: TLabel
      Left = 7
      Top = 19
      Width = 45
      Height = 16
      Caption = 'No. SPK'
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
    object Label3: TLabel
      Left = 1208
      Top = 215
      Width = 39
      Height = 16
      Caption = 'Rupiah'
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
    object Label5: TLabel
      Left = 8
      Top = 66
      Width = 65
      Height = 16
      Caption = 'Kode Mesin'
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
    object NamaMesin: TRxLabel
      Left = 144
      Top = 65
      Width = 40
      Height = 16
      Caption = '[ . . . ]'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
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
    object Label28: TLabel
      Left = 8
      Top = 86
      Width = 55
      Height = 16
      Caption = 'Tgl Mesin'
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
    object Label41: TLabel
      Left = 8
      Top = 135
      Width = 66
      Height = 16
      Caption = 'Hasil Aktual'
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
    object Label43: TLabel
      Left = 8
      Top = 210
      Width = 65
      Height = 16
      Caption = 'Keterangan'
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
    object Label51: TLabel
      Left = 8
      Top = 159
      Width = 47
      Height = 16
      Caption = 'Lintasan'
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
    object Label52: TLabel
      Left = 8
      Top = 183
      Width = 54
      Height = 16
      Caption = 'Hasil Baik'
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
    object Label53: TLabel
      Left = 179
      Top = 183
      Width = 65
      Height = 16
      Caption = 'Hasil Rusak'
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
    object GroupBox1: TGroupBox
      Left = 358
      Top = 0
      Width = 219
      Height = 97
      Caption = 'Jam Non Produksi'
      TabOrder = 12
      object Label8: TLabel
        Left = 10
        Top = 17
        Width = 29
        Height = 16
        Caption = 'T . O'
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
      object Label9: TLabel
        Left = 118
        Top = 18
        Width = 27
        Height = 16
        Caption = 'T . B'
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
      object Label11: TLabel
        Left = 10
        Top = 42
        Width = 26
        Height = 16
        Caption = 'Prwt'
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
      object Label13: TLabel
        Left = 118
        Top = 44
        Width = 20
        Height = 16
        Caption = 'T R'
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
      object Label46: TLabel
        Left = 10
        Top = 68
        Width = 32
        Height = 16
        Caption = 'A C C'
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
      object NPR3: TPBNumEdit
        Left = 50
        Top = 42
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 2
      end
      object NPR4: TPBNumEdit
        Left = 158
        Top = 44
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 3
      end
      object NPR1: TPBNumEdit
        Left = 50
        Top = 17
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 0
      end
      object NPR2: TPBNumEdit
        Left = 158
        Top = 18
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 1
      end
      object NPR5: TPBNumEdit
        Left = 49
        Top = 68
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 4
      end
    end
    object BitBtn1: TBitBtn
      Left = 100
      Top = 250
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 15
      OnClick = BitBtn1Click
      OnKeyDown = QntKeyDown
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
    object KodeBrg: TEdit
      Left = 83
      Top = 37
      Width = 141
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = False
      Enabled = False
      MaxLength = 25
      ParentCtl3D = False
      TabOrder = 1
      OnEnter = KodeBrgEnter
      OnKeyDown = QntKeyDown
    end
    object Qnt: TPBNumEdit
      Left = 83
      Top = 106
      Width = 90
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      NumberFormat = Thousands
      OnEnter = KodeBrgEnter
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 4
      Value = 1
    end
    object NoSat: TPBNumEdit
      Left = 227
      Top = 106
      Width = 20
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      DisabledColor = clWhite
      Ctl3D = False
      Decimals = -1
      MaxLength = 1
      MaxValue = 2
      MinValue = 1
      NumberFormat = Standard
      OnEnter = KodeBrgEnter
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 5
      Value = 1
    end
    object NoSPK: TEdit
      Left = 83
      Top = 12
      Width = 200
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = False
      MaxLength = 25
      ParentCtl3D = False
      TabOrder = 0
      OnEnter = KodeBrgEnter
      OnExit = NoSPKExit
      OnKeyDown = QntKeyDown
    end
    object HPP: TPBNumEdit
      Left = 1283
      Top = 211
      Width = 90
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      NumberFormat = Thousands
      OnEnter = KodeBrgEnter
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 6
      Value = 1
      Visible = False
    end
    object GroupBox2: TGroupBox
      Left = 360
      Top = 101
      Width = 217
      Height = 128
      Caption = 'Jam Produksi'
      TabOrder = 13
      object Label14: TLabel
        Left = 10
        Top = 17
        Width = 29
        Height = 16
        Caption = 'Pers.'
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
      object Label15: TLabel
        Left = 106
        Top = 18
        Width = 18
        Height = 16
        Caption = 'Ctk'
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
      object Label16: TLabel
        Left = 10
        Top = 43
        Width = 16
        Height = 16
        Caption = 'Op'
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
      object Label17: TLabel
        Left = 106
        Top = 44
        Width = 24
        Height = 16
        Caption = 'Cuci'
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
      object Label33: TLabel
        Left = 10
        Top = 94
        Width = 37
        Height = 16
        Caption = 'P. Jadi'
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
      object Label34: TLabel
        Left = 10
        Top = 69
        Width = 36
        Height = 16
        Caption = 'P. Bhn'
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
      object Label47: TLabel
        Left = 106
        Top = 69
        Width = 45
        Height = 16
        Caption = '1/2 Jadi'
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
      object Label48: TLabel
        Left = 107
        Top = 94
        Width = 43
        Height = 16
        Caption = 'Lembur'
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
      object PR3: TPBNumEdit
        Left = 50
        Top = 43
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 2
      end
      object PR4: TPBNumEdit
        Left = 155
        Top = 44
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnExit = PR4Exit
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 3
      end
      object PR1: TPBNumEdit
        Left = 50
        Top = 17
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 0
      end
      object PR2: TPBNumEdit
        Left = 155
        Top = 18
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 1
      end
      object PR5: TPBNumEdit
        Left = 50
        Top = 69
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 4
      end
      object PR6: TPBNumEdit
        Left = 50
        Top = 94
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnExit = PR4Exit
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 6
      end
      object PR7: TPBNumEdit
        Left = 155
        Top = 69
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 5
      end
      object PR8: TPBNumEdit
        Left = 155
        Top = 94
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 7
      end
    end
    object GroupBox3: TGroupBox
      Left = 605
      Top = 0
      Width = 588
      Height = 217
      Caption = 'Tenaga Kerja'
      TabOrder = 14
      object Label18: TLabel
        Left = 10
        Top = 34
        Width = 30
        Height = 16
        Caption = 'T K 1'
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
      object Label20: TLabel
        Left = 10
        Top = 59
        Width = 30
        Height = 16
        Caption = 'T K 2'
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
      object LTK1: TRxLabel
        Left = 435
        Top = 39
        Width = 40
        Height = 16
        Caption = '[ . . . ]'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
      object LTK2: TRxLabel
        Left = 435
        Top = 63
        Width = 40
        Height = 16
        Caption = '[ . . . ]'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
      object Label23: TLabel
        Left = 233
        Top = 38
        Width = 23
        Height = 16
        Caption = 'Jam'
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
      object Label24: TLabel
        Left = 233
        Top = 61
        Width = 23
        Height = 16
        Caption = 'Jam'
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
      object Label21: TLabel
        Left = 10
        Top = 84
        Width = 30
        Height = 16
        Caption = 'T K 3'
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
      object Label22: TLabel
        Left = 233
        Top = 87
        Width = 23
        Height = 16
        Caption = 'Jam'
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
      object LTK3: TRxLabel
        Left = 435
        Top = 88
        Width = 40
        Height = 16
        Caption = '[ . . . ]'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
      object Label25: TLabel
        Left = 10
        Top = 109
        Width = 30
        Height = 16
        Caption = 'T K 4'
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
      object Label27: TLabel
        Left = 233
        Top = 112
        Width = 23
        Height = 16
        Caption = 'Jam'
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
      object LTK4: TRxLabel
        Left = 435
        Top = 113
        Width = 40
        Height = 16
        Caption = '[ . . . ]'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
      object Label35: TLabel
        Left = 10
        Top = 134
        Width = 30
        Height = 16
        Caption = 'T K 5'
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
      object Label36: TLabel
        Left = 233
        Top = 136
        Width = 23
        Height = 16
        Caption = 'Jam'
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
      object LTK5: TRxLabel
        Left = 435
        Top = 137
        Width = 40
        Height = 16
        Caption = '[ . . . ]'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
      object Label37: TLabel
        Left = 10
        Top = 159
        Width = 30
        Height = 16
        Caption = 'T K 6'
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
      object Label38: TLabel
        Left = 233
        Top = 160
        Width = 23
        Height = 16
        Caption = 'Jam'
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
      object LTK6: TRxLabel
        Left = 435
        Top = 161
        Width = 40
        Height = 16
        Caption = '[ . . . ]'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
      object Label39: TLabel
        Left = 10
        Top = 184
        Width = 30
        Height = 16
        Caption = 'T K 7'
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
      object Label40: TLabel
        Left = 233
        Top = 184
        Width = 23
        Height = 16
        Caption = 'Jam'
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
      object LTK7: TRxLabel
        Left = 435
        Top = 185
        Width = 40
        Height = 16
        Caption = '[ . . . ]'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
      object Label44: TLabel
        Left = 280
        Top = 14
        Width = 24
        Height = 16
        Caption = 'Qnt '
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
      object Label45: TLabel
        Left = 333
        Top = 16
        Width = 37
        Height = 16
        Caption = 'Uraian'
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
      object Label49: TLabel
        Left = 182
        Top = 14
        Width = 43
        Height = 16
        Caption = 'Lembur'
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
      object Label50: TLabel
        Left = 126
        Top = 14
        Width = 30
        Height = 16
        Caption = 'Kerja'
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
      object TK1: TEdit
        Left = 52
        Top = 33
        Width = 69
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        MaxLength = 25
        ParentCtl3D = False
        TabOrder = 0
        OnEnter = KodeBrgEnter
        OnExit = TK1Exit
        OnKeyDown = QntKeyDown
      end
      object TK2: TEdit
        Left = 52
        Top = 58
        Width = 69
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        MaxLength = 25
        ParentCtl3D = False
        TabOrder = 3
        OnEnter = KodeBrgEnter
        OnExit = TK2Exit
        OnKeyDown = QntKeyDown
      end
      object JamTK1: TPBNumEdit
        Left = 126
        Top = 33
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 1
      end
      object JamTK2: TPBNumEdit
        Left = 126
        Top = 58
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 4
      end
      object TK3: TEdit
        Left = 52
        Top = 83
        Width = 69
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        MaxLength = 25
        ParentCtl3D = False
        TabOrder = 6
        OnEnter = KodeBrgEnter
        OnExit = TK3Exit
        OnKeyDown = QntKeyDown
      end
      object JamTK3: TPBNumEdit
        Left = 126
        Top = 83
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 7
      end
      object TK4: TEdit
        Left = 52
        Top = 108
        Width = 69
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        MaxLength = 25
        ParentCtl3D = False
        TabOrder = 9
        OnEnter = KodeBrgEnter
        OnExit = TK4Exit
        OnKeyDown = QntKeyDown
      end
      object JamTk4: TPBNumEdit
        Left = 126
        Top = 108
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 10
      end
      object TarifTenaker2: TPBNumEdit
        Left = 481
        Top = 60
        Width = 90
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 35
        Visible = False
      end
      object TarifTenaker3: TPBNumEdit
        Left = 481
        Top = 84
        Width = 90
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 36
        Visible = False
      end
      object TarifTenaker4: TPBNumEdit
        Left = 481
        Top = 108
        Width = 90
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 37
        Visible = False
      end
      object TK5: TEdit
        Left = 52
        Top = 133
        Width = 69
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        MaxLength = 25
        ParentCtl3D = False
        TabOrder = 12
        OnEnter = KodeBrgEnter
        OnExit = TK5Exit
        OnKeyDown = QntKeyDown
      end
      object JamTk5: TPBNumEdit
        Left = 126
        Top = 133
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 13
      end
      object TarifTenaker5: TPBNumEdit
        Left = 481
        Top = 132
        Width = 90
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 38
        Visible = False
      end
      object TK6: TEdit
        Left = 52
        Top = 158
        Width = 69
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        MaxLength = 25
        ParentCtl3D = False
        TabOrder = 15
        OnEnter = KodeBrgEnter
        OnExit = TK6Exit
        OnKeyDown = QntKeyDown
      end
      object JamTk6: TPBNumEdit
        Left = 126
        Top = 158
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 16
      end
      object TarifTenaker6: TPBNumEdit
        Left = 481
        Top = 156
        Width = 90
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 39
        Visible = False
      end
      object TK7: TEdit
        Left = 52
        Top = 183
        Width = 69
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        MaxLength = 25
        ParentCtl3D = False
        TabOrder = 18
        OnEnter = KodeBrgEnter
        OnExit = TK7Exit
        OnKeyDown = QntKeyDown
      end
      object JamTk7: TPBNumEdit
        Left = 126
        Top = 183
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 19
      end
      object TarifTenaker7: TPBNumEdit
        Left = 481
        Top = 180
        Width = 90
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 40
        Visible = False
      end
      object QntTK1: TPBNumEdit
        Left = 277
        Top = 34
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 21
      end
      object QntTK2: TPBNumEdit
        Left = 277
        Top = 59
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 23
      end
      object QntTK3: TPBNumEdit
        Left = 277
        Top = 84
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 25
      end
      object QntTK4: TPBNumEdit
        Left = 277
        Top = 109
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 27
      end
      object QntTK5: TPBNumEdit
        Left = 277
        Top = 134
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 29
      end
      object QntTK6: TPBNumEdit
        Left = 277
        Top = 159
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 31
      end
      object QntTK7: TPBNumEdit
        Left = 277
        Top = 184
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 33
      end
      object KetTK1: TEdit
        Left = 330
        Top = 34
        Width = 99
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        MaxLength = 25
        ParentCtl3D = False
        TabOrder = 22
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
      end
      object KetTK2: TEdit
        Left = 330
        Top = 59
        Width = 99
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        MaxLength = 25
        ParentCtl3D = False
        TabOrder = 24
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
      end
      object KetTK3: TEdit
        Left = 330
        Top = 84
        Width = 99
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        MaxLength = 25
        ParentCtl3D = False
        TabOrder = 26
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
      end
      object KetTK4: TEdit
        Left = 330
        Top = 109
        Width = 99
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        MaxLength = 25
        ParentCtl3D = False
        TabOrder = 28
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
      end
      object KetTK5: TEdit
        Left = 330
        Top = 134
        Width = 99
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        MaxLength = 25
        ParentCtl3D = False
        TabOrder = 30
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
      end
      object KetTK6: TEdit
        Left = 330
        Top = 159
        Width = 99
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        MaxLength = 25
        ParentCtl3D = False
        TabOrder = 32
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
      end
      object KetTK7: TEdit
        Left = 330
        Top = 184
        Width = 99
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        MaxLength = 25
        ParentCtl3D = False
        TabOrder = 34
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
      end
      object JamTKL1: TPBNumEdit
        Left = 179
        Top = 33
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 2
      end
      object JamTKL2: TPBNumEdit
        Left = 179
        Top = 58
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 5
      end
      object JamTKL3: TPBNumEdit
        Left = 179
        Top = 83
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 8
      end
      object JamTKL4: TPBNumEdit
        Left = 179
        Top = 108
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 11
      end
      object JamTKL5: TPBNumEdit
        Left = 179
        Top = 133
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 14
      end
      object JamTKL6: TPBNumEdit
        Left = 179
        Top = 158
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 17
      end
      object JamTKL7: TPBNumEdit
        Left = 179
        Top = 183
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 20
      end
    end
    object KodeMesin: TEdit
      Left = 83
      Top = 62
      Width = 55
      Height = 20
      BevelKind = bkFlat
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnEnter = KodeSuppEnter
      OnExit = KodeMesinExit
      OnKeyDown = QntKeyDown
    end
    object TglSPKmsn: TDateEdit
      Left = 83
      Top = 83
      Width = 101
      Height = 24
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
      TabOrder = 3
      OnChange = TanggalChange
      OnEnter = TanggalEnter
      OnExit = TanggalExit
      OnKeyDown = TanggalKeyDown
    end
    object TarifMesin: TPBNumEdit
      Left = 1259
      Top = 162
      Width = 90
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      NumberFormat = Thousands
      OnEnter = KodeBrgEnter
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 16
      Value = 1
      Visible = False
    end
    object TarifTenaker1: TPBNumEdit
      Left = 1086
      Top = 36
      Width = 90
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      NumberFormat = Thousands
      OnEnter = KodeBrgEnter
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 17
      Visible = False
    end
    object CSPK: TCheckBox
      Left = 293
      Top = 19
      Width = 73
      Height = 17
      Caption = 'Closing'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
    end
    object UrutMesin: TPBNumEdit
      Left = 1355
      Top = 162
      Width = 90
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      NumberFormat = Thousands
      OnEnter = KodeBrgEnter
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 19
      Value = 1
      Visible = False
    end
    object GroupBox4: TGroupBox
      Left = 1257
      Top = 16
      Width = 121
      Height = 137
      Caption = 'Produksi Lembur'
      TabOrder = 20
      Visible = False
      object Label29: TLabel
        Left = 10
        Top = 17
        Width = 29
        Height = 16
        Caption = 'Pers.'
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
      object Label30: TLabel
        Left = 10
        Top = 42
        Width = 18
        Height = 16
        Caption = 'Ctk'
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
      object Label31: TLabel
        Left = 10
        Top = 67
        Width = 16
        Height = 16
        Caption = 'Op'
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
      object Label32: TLabel
        Left = 10
        Top = 92
        Width = 24
        Height = 16
        Caption = 'Cuci'
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
      object PBNumEdit1: TPBNumEdit
        Left = 50
        Top = 67
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 2
      end
      object PBNumEdit2: TPBNumEdit
        Left = 50
        Top = 92
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnExit = PR4Exit
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 3
      end
      object PBNumEdit3: TPBNumEdit
        Left = 50
        Top = 17
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 0
      end
      object PBNumEdit4: TPBNumEdit
        Left = 50
        Top = 42
        Width = 50
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnEnter = KodeBrgEnter
        OnKeyDown = QntKeyDown
        ParentCtl3D = False
        TabOrder = 1
      end
    end
    object QntHasil: TPBNumEdit
      Left = 83
      Top = 131
      Width = 90
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      NumberFormat = Thousands
      OnEnter = KodeBrgEnter
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 7
      Value = 1
    end
    object Keterangan: TEdit
      Left = 83
      Top = 208
      Width = 200
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = False
      MaxLength = 25
      ParentCtl3D = False
      TabOrder = 11
      OnEnter = KodeBrgEnter
      OnKeyDown = QntKeyDown
    end
    object Lintasan: TComboBox
      Left = 83
      Top = 156
      Width = 145
      Height = 24
      ItemHeight = 16
      ItemIndex = 1
      TabOrder = 8
      Text = 'Lintasan 1'
      Items.Strings = (
        '-'
        'Lintasan 1'
        'Lintasan 2'
        'Lintasan 3'
        'Lintasan 4'
        'Lintasan 5'
        'Lintasan 6'
        'Lintasan 7'
        'Lintasan 8')
    end
    object HasilBaik: TPBNumEdit
      Left = 83
      Top = 183
      Width = 90
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 0
      NumberFormat = Thousands
      OnEnter = KodeBrgEnter
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 9
    end
    object HasilRusak: TPBNumEdit
      Left = 249
      Top = 183
      Width = 90
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 0
      NumberFormat = Thousands
      OnEnter = KodeBrgEnter
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 10
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 793
    Height = 239
    Align = alLeft
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 2
    object Panel4: TPanel
      Left = 5
      Top = 196
      Width = 783
      Height = 38
      Align = alBottom
      AutoSize = True
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object PanelShow1: TPanel
        Left = 2
        Top = 2
        Width = 779
        Height = 34
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Cetak: TSpeedButton
          Left = 229
          Top = 3
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
          Top = 3
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
          Top = 3
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
          Top = 3
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
        object DsgCetakBtn: TSpeedButton
          Left = 303
          Top = 3
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
          OnClick = DsgCetakBtnClick
        end
      end
    end
    object dxDBGrid1: TdxDBGrid
      Left = 5
      Top = 5
      Width = 783
      Height = 191
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'Urut'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnDblClick = wwDBGrid1DblClick
      OnEnter = wwDBGrid1Enter
      OnExit = Dx
      OnKeyDown = wwDBGrid1KeyDown
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Tahoma'
      BandFont.Style = []
      DataSource = DsQuBeli
      Filter.Criteria = {00000000}
      GridLineColor = 11202790
      GroupPanelColor = 16756834
      GroupNodeColor = 10223615
      GroupNodeTextColor = 1912356
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clBlack
      HeaderFont.Height = -13
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      HideSelectionTextColor = clBlack
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Tahoma'
      PreviewFont.Style = []
      RowFooterColor = 14088435
      ShowRowFooter = True
      OnCustomDrawCell = dxDBGrid1CustomDrawCell
      object dxDBGrid1URUT: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'URUT'
      end
      object dxDBGrid1KODEBRG: TdxDBGridMaskColumn
        Caption = 'Kode Barang'
        HeaderAlignment = taCenter
        Width = 114
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KODEBRG'
      end
      object dxDBGrid1NAMABRG: TdxDBGridMaskColumn
        Caption = 'Nama Barang'
        HeaderAlignment = taCenter
        Width = 180
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NAMABRG'
      end
      object dxDBGrid1QNT: TdxDBGridMaskColumn
        Caption = 'Qnt'
        HeaderAlignment = taCenter
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QNT'
      end
      object dxDBGrid1NOSAT: TdxDBGridMaskColumn
        Caption = 'Sat'
        HeaderAlignment = taCenter
        Width = 45
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SATUAN'
      end
      object dxDBGrid1NoSPK: TdxDBGridMaskColumn
        Caption = 'No. SPK'
        HeaderAlignment = taCenter
        Width = 140
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoSPK'
      end
      object dxDBGrid1Column7: TdxDBGridColumn
        Visible = False
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HPP'
      end
      object dxDBGrid1Column8: TdxDBGridColumn
        Caption = 'Mesin'
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ket'
      end
      object dxDBGrid1Column9: TdxDBGridColumn
        Caption = 'Jam Prd'
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'jamproduksi'
      end
      object dxDBGrid1Column10: TdxDBGridColumn
        Caption = 'Tarif Prd'
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JmlTarifPrd'
      end
    end
  end
  object PanelShow2: TPanel
    Left = 427
    Top = 8
    Width = 87
    Height = 24
    BevelOuter = bvNone
    TabOrder = 3
    Visible = False
    object BPrev: TSpeedButton
      Left = 3
      Top = 0
      Width = 24
      Height = 24
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF3333333333333744333333333333F773333333333337
        44473333333333F777F3333333333744444333333333F7733733333333374444
        4433333333F77333733333333744444447333333F7733337F333333744444444
        433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
        9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
        C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
        CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
        CCC333333333333777FF33333333333333CC3333333333333773}
      NumGlyphs = 2
    end
    object BNext: TSpeedButton
      Left = 28
      Top = 0
      Width = 24
      Height = 24
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FF3333333333333447333333333333377FFF33333333333744473333333
        333337773FF3333333333444447333333333373F773FF3333333334444447333
        33333373F3773FF3333333744444447333333337F333773FF333333444444444
        733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
        999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
        33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
        333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
        33333777333333333333CC333333333333337733333333333333}
      NumGlyphs = 2
    end
  end
  object Panel5: TPanel
    Left = 793
    Top = 105
    Width = 612
    Height = 239
    Align = alRight
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 4
    object Panel6: TPanel
      Left = 5
      Top = 196
      Width = 602
      Height = 38
      Align = alBottom
      AutoSize = True
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object Panel7: TPanel
        Left = 2
        Top = 2
        Width = 598
        Height = 34
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        Visible = False
        object SpeedButton2: TSpeedButton
          Left = 229
          Top = 3
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
        object SpeedButton3: TSpeedButton
          Left = 154
          Top = 3
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
        object SpeedButton4: TSpeedButton
          Left = 79
          Top = 3
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
        object SpeedButton5: TSpeedButton
          Left = 4
          Top = 3
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
        object SpeedButton6: TSpeedButton
          Left = 303
          Top = 3
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
          OnClick = DsgCetakBtnClick
        end
      end
    end
    object dxDBGrid2: TdxDBGrid
      Left = 5
      Top = 5
      Width = 602
      Height = 191
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'Urut'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnDblClick = wwDBGrid1DblClick
      OnEnter = wwDBGrid1Enter
      OnExit = Dx
      OnKeyDown = wwDBGrid1KeyDown
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Tahoma'
      BandFont.Style = []
      DataSource = DSTenaker
      Filter.Criteria = {00000000}
      GridLineColor = 11202790
      GroupPanelColor = 16756834
      GroupNodeColor = 10223615
      GroupNodeTextColor = 1912356
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clBlack
      HeaderFont.Height = -13
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      HideSelectionTextColor = clBlack
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Tahoma'
      PreviewFont.Style = []
      RowFooterColor = 14088435
      ShowRowFooter = True
      OnCustomDrawCell = dxDBGrid1CustomDrawCell
      object dxDBGrid2Nobukti: TdxDBGridMaskColumn
        Visible = False
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Nobukti'
      end
      object dxDBGrid2Urut: TdxDBGridMaskColumn
        Visible = False
        Width = 37
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Urut'
      end
      object dxDBGrid2Nik: TdxDBGridMaskColumn
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Nik'
      end
      object dxDBGrid2UrutNiK: TdxDBGridMaskColumn
        Visible = False
        Width = 37
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UrutNiK'
      end
      object dxDBGrid2Nama: TdxDBGridMaskColumn
        Width = 152
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Nama'
      end
      object dxDBGrid2Jam: TdxDBGridMaskColumn
        Caption = 'Jam TK'
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Jam'
      end
      object dxDBGrid2Column7: TdxDBGridColumn
        Caption = 'Tarif Tenaker'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JmLTrfTenaker'
      end
    end
  end
  object QuBeli: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @NoBukti varchar(20)'
      ''
      'select @NoBukti='#39'VSM/062009/00001/G01'#39
      ''
      
        'select distinct'#9'A.NOBUKTI, A.NOURUT, A.TANGGAL,A.KETERANGAN, B.U' +
        'RUT, B.KODEBRG, Br.NAMABRG, Br.NFix, B.QNT, B.NOSAT, B.SATUAN, B' +
        '.ISI,'
      'NoSPK,HPP,b.kodemsn,shift,ket,'
      
        'NPR1,NPR2,NPR3,NPR4,NPR5,PR1,PR2,PR3,PR4,pr5,pr6,pr7,pr8,TglHasi' +
        'lP,TglSpkMsn,tarifmesin,jamproduksi,   JmlTarifPrd,isclosespk,  ' +
        'urutmesin,'
      'case when e.urutnik=1 then e.nik end tk1,'
      'case when f.urutnik=2 then f.nik end tk2,'
      'case when g.urutnik=3 then g.nik end tk3,'
      'case when h.urutnik=4 then h.nik end tk4,'
      'case when i.urutnik=5 then i.nik end tk5,'
      'case when j.urutnik=6 then j.nik end tk6,'
      'case when k.urutnik=7 then k.nik end tk7,'
      'case when e.urutnik=1 then e.jam end jam1,'
      'case when f.urutnik=2 then f.jam end jam2,'
      'case when g.urutnik=3 then g.jam end jam3,'
      'case when h.urutnik=4 then h.jam end jam4,'
      'case when i.urutnik=5 then i.jam end jam5,'
      'case when j.urutnik=6 then j.jam end jam6,'
      'case when k.urutnik=7 then k.jam end jam7,'
      'case when e.urutnik=1 then e.trftenaker end trftenaker1,'
      'case when f.urutnik=2 then f.trftenaker end trftenaker2,'
      'case when g.urutnik=3 then g.trftenaker end trftenaker3,'
      'case when h.urutnik=4 then h.trftenaker end trftenaker4,'
      'case when i.urutnik=5 then i.trftenaker end trftenaker5,'
      'case when j.urutnik=6 then j.trftenaker end trftenaker6,'
      'case when k.urutnik=7 then k.trftenaker end trftenaker7,'
      'case when e.urutnik=1 then e.qntaktualTK end Qnttenaker1,'
      'case when f.urutnik=2 then f.qntaktualTK end Qnttenaker2,'
      'case when g.urutnik=3 then g.qntaktualTK end Qnttenaker3,'
      'case when h.urutnik=4 then h.qntaktualTK end Qnttenaker4,'
      'case when i.urutnik=5 then i.qntaktualTK end Qnttenaker5,'
      'case when j.urutnik=6 then j.qntaktualTK end Qnttenaker6,'
      'case when k.urutnik=7 then k.qntaktualTK end Qnttenaker7,'
      'case when e.urutnik=1 then e.KeteranganTK end Kettenaker1,'
      'case when f.urutnik=2 then f.KeteranganTK end Kettenaker2,'
      'case when g.urutnik=3 then g.KeteranganTK end Kettenaker3,'
      'case when h.urutnik=4 then h.KeteranganTK end Kettenaker4,'
      'case when i.urutnik=5 then i.KeteranganTK end Kettenaker5,'
      'case when j.urutnik=6 then j.KeteranganTK end Kettenaker6,'
      'case when k.urutnik=7 then k.KeteranganTK end Kettenaker7,'
      'QntAktual, b.keterangan  ketfinishing,'
      'case when e.urutnik=1 then e.jaml end jaml1,'
      'case when f.urutnik=2 then f.jaml end jaml2,'
      'case when g.urutnik=3 then g.jaml end jaml3,'
      'case when h.urutnik=4 then h.jaml end jaml4,'
      'case when i.urutnik=5 then i.jaml end jaml5,'
      'case when j.urutnik=6 then j.jaml end jaml6,'
      'case when k.urutnik=7 then k.jaml end jaml7,'
      'lintasan,hasilbaik,hasilrusak'
      'from DBProduksi A'
      'left outer join DBProduksiDET B on B.NOBUKTI=A.NOBUKTI'
      'left outer join DBBARANG Br on Br.KODEBRG=B.KODEBRG'
      '--left outer join dbGudang  c on c.KodeGdg=b.KodeGdg'
      'left outer join dbmesin d on d.kodemsn=b.kodemsn'
      
        '/*left outer join DBProduksiTenaker e on e.nobukti=b.nobukti and' +
        ' b.urut=e.urut and e.UrutNiK =1'
      
        'left outer join DBProduksiTenaker f on f.nobukti=b.nobukti and b' +
        '.urut=f.urut and f.UrutNiK =2'
      
        'left outer join DBProduksiTenaker g on g.nobukti=b.nobukti and b' +
        '.urut=g.urut and g.UrutNiK =3'
      
        'left outer join DBProduksiTenaker h on h.nobukti=b.nobukti and b' +
        '.urut=h.urut and h.UrutNiK =4'
      
        'left outer join DBProduksiTenaker i on i.nobukti=b.nobukti and b' +
        '.urut=i.urut and i.UrutNiK =5'
      
        'left outer join DBProduksiTenaker j on j.nobukti=b.nobukti and b' +
        '.urut=j.urut and j.UrutNiK =6'
      
        'left outer join DBProduksiTenaker k on k.nobukti=b.nobukti and b' +
        '.urut=k.urut and k.UrutNiK =7 */'
      
        ' left outer join dbo.MesinTenaker(@NoBukti ,1) e on e.nobukti=b.' +
        'nobukti and b.urut=e.urut  '
      
        ' left outer join dbo.MesinTenaker(@NoBukti ,2) f on f.nobukti=b.' +
        'nobukti and b.urut=f.urut '
      
        ' left outer join dbo.MesinTenaker(@NoBukti ,3) g on g.nobukti=b.' +
        'nobukti and b.urut=g.urut  '
      
        ' left outer join dbo.MesinTenaker(@NoBukti ,4) h on h.nobukti=b.' +
        'nobukti and b.urut=h.urut '
      
        ' left outer join dbo.MesinTenaker(@NoBukti ,5) i on i.nobukti=b.' +
        'nobukti and b.urut=i.urut '
      
        ' left outer join dbo.MesinTenaker(@NoBukti ,6) j on j.nobukti=b.' +
        'nobukti and b.urut=j.urut '
      
        ' left outer join dbo.MesinTenaker(@NoBukti ,7) k on k.nobukti=b.' +
        'nobukti and b.urut=k.urut '
      ''
      'where A.NoBukti=@NoBukti'
      'order by B.Urut'
      ''
      '')
    Left = 30
    Top = 136
    object QuBeliNOBUKTI: TStringField
      FieldName = 'NOBUKTI'
    end
    object QuBeliNOURUT: TStringField
      FieldName = 'NOURUT'
      Size = 10
    end
    object QuBeliTANGGAL: TDateTimeField
      FieldName = 'TANGGAL'
    end
    object QuBeliKETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 200
    end
    object QuBeliURUT: TIntegerField
      FieldName = 'URUT'
    end
    object QuBeliKODEBRG: TStringField
      FieldName = 'KODEBRG'
      Size = 25
    end
    object QuBeliNAMABRG: TStringField
      FieldName = 'NAMABRG'
      Size = 100
    end
    object QuBeliNFix: TBooleanField
      FieldName = 'NFix'
    end
    object QuBeliQNT: TBCDField
      FieldName = 'QNT'
      Precision = 18
      Size = 2
    end
    object QuBeliNOSAT: TWordField
      FieldName = 'NOSAT'
    end
    object QuBeliSATUAN: TStringField
      FieldName = 'SATUAN'
      Size = 5
    end
    object QuBeliISI: TBCDField
      FieldName = 'ISI'
      Precision = 18
      Size = 2
    end
    object QuBeliNoSPK: TStringField
      FieldName = 'NoSPK'
      Size = 50
    end
    object QuBeliHPP: TBCDField
      FieldName = 'HPP'
      Precision = 18
      Size = 2
    end
    object QuBelikodemsn: TStringField
      FieldName = 'kodemsn'
      Size = 15
    end
    object QuBelishift: TWordField
      FieldName = 'shift'
    end
    object QuBeliket: TStringField
      FieldName = 'ket'
      Size = 50
    end
    object QuBeliNPR1: TBCDField
      FieldName = 'NPR1'
      Precision = 18
      Size = 2
    end
    object QuBeliNPR2: TBCDField
      FieldName = 'NPR2'
      Precision = 18
      Size = 2
    end
    object QuBeliNPR3: TBCDField
      FieldName = 'NPR3'
      Precision = 18
      Size = 2
    end
    object QuBeliNPR4: TBCDField
      FieldName = 'NPR4'
      Precision = 18
      Size = 2
    end
    object QuBeliPR1: TBCDField
      FieldName = 'PR1'
      Precision = 18
      Size = 2
    end
    object QuBeliPR2: TBCDField
      FieldName = 'PR2'
      Precision = 18
      Size = 2
    end
    object QuBeliPR3: TBCDField
      FieldName = 'PR3'
      Precision = 18
      Size = 2
    end
    object QuBeliPR4: TBCDField
      FieldName = 'PR4'
      Precision = 18
      Size = 2
    end
    object QuBeliTglHasilP: TDateTimeField
      FieldName = 'TglHasilP'
    end
    object QuBeliTglSpkMsn: TDateTimeField
      FieldName = 'TglSpkMsn'
    end
    object QuBelitarifmesin: TBCDField
      FieldName = 'tarifmesin'
      Precision = 18
      Size = 2
    end
    object QuBelijamproduksi: TBCDField
      FieldName = 'jamproduksi'
      ReadOnly = True
      Precision = 21
      Size = 2
    end
    object QuBeliJmlTarifPrd: TBCDField
      FieldName = 'JmlTarifPrd'
      ReadOnly = True
      Precision = 32
    end
    object QuBeliisclosespk: TBooleanField
      FieldName = 'isclosespk'
    end
    object QuBeliurutmesin: TIntegerField
      FieldName = 'urutmesin'
    end
    object QuBelitk1: TStringField
      FieldName = 'tk1'
      ReadOnly = True
      Size = 10
    end
    object QuBelitk2: TStringField
      FieldName = 'tk2'
      ReadOnly = True
      Size = 10
    end
    object QuBelitk3: TStringField
      FieldName = 'tk3'
      ReadOnly = True
      Size = 10
    end
    object QuBelitk4: TStringField
      FieldName = 'tk4'
      ReadOnly = True
      Size = 10
    end
    object QuBelijam1: TBCDField
      FieldName = 'jam1'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuBelijam2: TBCDField
      FieldName = 'jam2'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuBelijam3: TBCDField
      FieldName = 'jam3'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuBelijam4: TBCDField
      FieldName = 'jam4'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuBelitrftenaker1: TBCDField
      FieldName = 'trftenaker1'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuBelitrftenaker2: TBCDField
      FieldName = 'trftenaker2'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuBelitrftenaker3: TBCDField
      FieldName = 'trftenaker3'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuBelitrftenaker4: TBCDField
      FieldName = 'trftenaker4'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuBelipr5: TBCDField
      FieldName = 'pr5'
      Precision = 18
      Size = 2
    end
    object QuBelipr6: TBCDField
      FieldName = 'pr6'
      Precision = 18
      Size = 2
    end
    object QuBelitk5: TStringField
      FieldName = 'tk5'
      ReadOnly = True
      Size = 10
    end
    object QuBelitk6: TStringField
      FieldName = 'tk6'
      ReadOnly = True
      Size = 10
    end
    object QuBelitk7: TStringField
      FieldName = 'tk7'
      ReadOnly = True
      Size = 10
    end
    object QuBelijam5: TBCDField
      FieldName = 'jam5'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuBelijam6: TBCDField
      FieldName = 'jam6'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuBelijam7: TBCDField
      FieldName = 'jam7'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuBelitrftenaker5: TBCDField
      FieldName = 'trftenaker5'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuBelitrftenaker6: TBCDField
      FieldName = 'trftenaker6'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuBelitrftenaker7: TBCDField
      FieldName = 'trftenaker7'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuBeliQntAktual: TBCDField
      FieldName = 'QntAktual'
      Precision = 18
      Size = 2
    end
    object QuBeliketfinishing: TStringField
      FieldName = 'ketfinishing'
      Size = 1000
    end
    object QuBeliQnttenaker1: TBCDField
      FieldName = 'Qnttenaker1'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuBeliQnttenaker2: TBCDField
      FieldName = 'Qnttenaker2'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuBeliQnttenaker3: TBCDField
      FieldName = 'Qnttenaker3'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuBeliQnttenaker4: TBCDField
      FieldName = 'Qnttenaker4'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuBeliQnttenaker5: TBCDField
      FieldName = 'Qnttenaker5'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuBeliQnttenaker6: TBCDField
      FieldName = 'Qnttenaker6'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuBeliQnttenaker7: TBCDField
      FieldName = 'Qnttenaker7'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuBeliKettenaker1: TStringField
      FieldName = 'Kettenaker1'
      ReadOnly = True
      Size = 1000
    end
    object QuBeliKettenaker2: TStringField
      FieldName = 'Kettenaker2'
      ReadOnly = True
      Size = 1000
    end
    object QuBeliKettenaker3: TStringField
      FieldName = 'Kettenaker3'
      ReadOnly = True
      Size = 1000
    end
    object QuBeliKettenaker4: TStringField
      FieldName = 'Kettenaker4'
      ReadOnly = True
      Size = 1000
    end
    object QuBeliKettenaker5: TStringField
      FieldName = 'Kettenaker5'
      ReadOnly = True
      Size = 1000
    end
    object QuBeliKettenaker6: TStringField
      FieldName = 'Kettenaker6'
      ReadOnly = True
      Size = 1000
    end
    object QuBeliKettenaker7: TStringField
      FieldName = 'Kettenaker7'
      ReadOnly = True
      Size = 1000
    end
    object QuBeliNPR5: TBCDField
      FieldName = 'NPR5'
      Precision = 18
      Size = 2
    end
    object QuBelipr7: TBCDField
      FieldName = 'pr7'
      Precision = 18
      Size = 2
    end
    object QuBelipr8: TBCDField
      FieldName = 'pr8'
      Precision = 18
      Size = 2
    end
    object QuBelijaml1: TBCDField
      FieldName = 'jaml1'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuBelijaml2: TBCDField
      FieldName = 'jaml2'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuBelijaml3: TBCDField
      FieldName = 'jaml3'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuBelijaml4: TBCDField
      FieldName = 'jaml4'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuBelijaml5: TBCDField
      FieldName = 'jaml5'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuBelijaml6: TBCDField
      FieldName = 'jaml6'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuBelijaml7: TBCDField
      FieldName = 'jaml7'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuBelilintasan: TWordField
      FieldName = 'lintasan'
    end
    object QuBelihasilbaik: TBCDField
      FieldName = 'hasilbaik'
      Precision = 18
      Size = 2
    end
    object QuBelihasilrusak: TBCDField
      FieldName = 'hasilrusak'
      Precision = 18
      Size = 2
    end
  end
  object Sp_Beli: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'Sp_produksi;1'
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
        Name = '@KodeGdg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@Keterangan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 200
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
        Name = '@KodeBrg'
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
        Name = '@NoSat'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@Satuan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
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
        Name = '@NoSPK'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@HPP'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@kodemsn'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@shift'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@NPR1'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NPR2'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NPR3'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NPR4'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@PR1'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@PR2'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@PR3'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@PR4'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@PR5'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@PR6'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@nik1'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@jam1'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@nik2'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@jam2'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@nik3'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@jam3'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@nik4'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@jam4'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@nik5'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@jam5'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@nik6'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@jam6'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@nik7'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@jam7'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@tglHasilP'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@TarifMesin'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@TrfTenaker1'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@TrfTenaker2'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@TrfTenaker3'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@TrfTenaker4'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@TrfTenaker5'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@TrfTenaker6'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@TrfTenaker7'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@isclosespk'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@urutMesin'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@QntAktual'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@ketfinishing'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1000
        Value = Null
      end
      item
        Name = '@Qntnik1'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@KetNik1'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1000
        Value = Null
      end
      item
        Name = '@Qntnik2'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@KetNik2'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1000
        Value = Null
      end
      item
        Name = '@Qntnik3'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@KetNik3'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1000
        Value = Null
      end
      item
        Name = '@Qntnik4'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@KetNik4'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1000
        Value = Null
      end
      item
        Name = '@Qntnik5'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@KetNik5'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1000
        Value = Null
      end
      item
        Name = '@Qntnik6'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@KetNik6'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1000
        Value = Null
      end
      item
        Name = '@Qntnik7'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@KetNik7'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1000
        Value = Null
      end
      item
        Name = '@NPR5'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@PR7'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@PR8'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@jamL1'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@jamL2'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@jamL3'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@jamL4'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@jamL5'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@jamL6'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@jamL7'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@lintasan'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@hasilbaik'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@hasilrusak'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end>
    Left = 146
    Top = 246
  end
  object DsQuBeli: TDataSource
    DataSet = QuBeli
    Left = 2
    Top = 136
  end
  object QuUpdatedbbeli: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From vwPerusahaan')
    Left = 114
    Top = 146
  end
  object DataSource1: TDataSource
    DataSet = QuReport
    Left = 30
    Top = 162
  end
  object QuReport: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @NoBukti varchar(20)'
      ''
      'select @NoBukti='#39'VSM/062009/00001/G01'#39
      ''
      
        'select'#9'A.NOBUKTI, A.NOURUT, A.TANGGAL,A.KETERANGAN, B.URUT, B.KO' +
        'DEBRG, Br.NAMABRG, Br.NFix, B.QNT, B.NOSAT, B.SATUAN, B.ISI,'
      'B.KodeGdg'
      'from DBHasilPrd A'
      'left outer join DBHasilPrdDET B on B.NOBUKTI=A.NOBUKTI'
      'left outer join DBBARANG Br on Br.KODEBRG=B.KODEBRG'
      'where A.NoBukti=@NoBukti'
      'order by B.Urut'
      ''
      ''
      '')
    Left = 2
    Top = 162
  end
  object frxDataPerusahaan: TfrxDBDataset
    UserName = 'frxDataPerusahaan'
    CloseDataSource = False
    DataSet = QuUpdatedbbeli
    BCDToCurrency = False
    Left = 208
    Top = 280
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBCetakPO'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 204
    Top = 250
  end
  object frxReport1: TfrxReport
    Version = '4.14'
    DataSet = frxDBDataset1
    DataSetName = 'frxDBCetakPO'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39461.6751602199
    ReportOptions.LastChange = 39463.4044384722
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Memo12OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  If <frxDBCetakPO."TipeBayar"> = 0 then'
      '     Memo12.Text := '#39'Tunai'#39
      '  else'
      
        '     Memo12.Text := '#39'Kredit '#39'+Inttostr(<frxDBCetakPO."Hari">)+ '#39 +
        ' Hari / '#39'+FormatDatetime('#39'DD MMM YYY'#39',<frxDBCetakPO."TglJatuhTem' +
        'po">);'
      'end;'
      ''
      'procedure Memo49OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <LINE#> Mod 2 =0 then'
      '     Memo49.color:=clInfoBk'
      '  else'
      '     Memo49.color:=clWhite;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    OnAfterPrintReport = frxReport1AfterPrintReport
    Left = 234
    Top = 250
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBCetakPO'
      end
      item
        DataSet = frxDataPerusahaan
        DataSetName = 'frxDataPerusahaan'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      PaperWidth = 215.9
      PaperHeight = 139.7
      PaperSize = 256
      LeftMargin = 5
      RightMargin = 5
      TopMargin = 5
      BottomMargin = 5
      object PageHeader1: TfrxPageHeader
        Height = 166.29932
        Top = 18.89765
        Width = 778.205227
        object Picture1: TfrxPictureView
          Width = 64.25201
          Height = 68.03154
          ShowHint = False
          DataField = 'LOGO'
          DataSet = frxDataPerusahaan
          DataSetName = 'frxDataPerusahaan'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          KeepAspectRatio = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Left = 68.03154
          Width = 321.26005
          Height = 18.89765
          ShowHint = False
          DataField = 'NAMA'
          DataSet = frxDataPerusahaan
          DataSetName = 'frxDataPerusahaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8 = (
            '[frxDataPerusahaan."NAMA"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 68.03154
          Top = 18.89765
          Width = 321.26005
          Height = 56.69295
          ShowHint = False
          DataSet = frxDataPerusahaan
          DataSetName = 'frxDataPerusahaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataPerusahaan."ALAMAT"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 83.14966
          Top = 117.16543
          Width = 139.84261
          Height = 18.89765
          ShowHint = False
          DataSet = frxDataPerusahaan
          DataSetName = 'frxDataPerusahaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetakPO."NoPO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 3.77953
          Top = 117.16543
          Width = 71.81107
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'NO. PO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 75.5906
          Top = 117.16543
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 257.00804
          Top = 117.16543
          Width = 79.37013
          Height = 18.89765
          OnBeforePrint = 'Memo12OnBeforePrint'
          ShowHint = False
          AutoWidth = True
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetakPO."TipeBayar"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 491.3389
          Width = 71.81107
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nomor ')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 563.14997
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 491.3389
          Top = 18.89765
          Width = 71.81107
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Tanggal')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 563.14997
          Top = 18.89765
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 570.70903
          Width = 158.74026
          Height = 18.89765
          ShowHint = False
          AutoWidth = True
          DataField = 'nobukti'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetakPO."nobukti"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          Left = 570.70903
          Top = 18.89765
          Width = 143.62214
          Height = 18.89765
          ShowHint = False
          DataField = 'Tanggal'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetakPO."Tanggal"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 423.30736
          Top = 56.69295
          Width = 68.03154
          Height = 18.89765
          ShowHint = False
          Memo.UTF8 = (
            'Pemasok : ')
        end
        object Memo18: TfrxMemoView
          Left = 491.3389
          Top = 56.69295
          Width = 287.24428
          Height = 18.89765
          ShowHint = False
          AutoWidth = True
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBCetakPO."NamaSupp"],  ([frxDBCetakPO."KodeSupp"])')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          Left = 491.3389
          Top = 75.5906
          Width = 287.24428
          Height = 56.69295
          ShowHint = False
          DataField = 'Alamat'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetakPO."Alamat"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 222.99227
          Top = 79.37013
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DataSet = frxDataPerusahaan
          DataSetName = 'frxDataPerusahaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'NOTA PEMBELIAN')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Top = 139.84261
          Width = 778.58318
          Height = 26.45671
          ShowHint = False
          Color = 9955024
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 30.23624
          Top = 143.62214
          Width = 124.72449
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'KODE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 3.77953
          Top = 143.62214
          Width = 26.45671
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'NO .')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 154.96073
          Top = 143.62214
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DESKRIPSI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 340.1577
          Top = 143.62214
          Width = 52.91342
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'SATUAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 393.07112
          Top = 143.62214
          Width = 71.81107
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'HARGA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 468.66172
          Top = 143.62214
          Width = 45.35436
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DISC 1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 514.01608
          Top = 143.62214
          Width = 41.57483
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DISC 2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 555.59091
          Top = 143.62214
          Width = 45.35436
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DISC 3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 600.94527
          Top = 143.62214
          Width = 37.7953
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DISC 4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 676.53587
          Top = 143.62214
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'SUB TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 638.74057
          Top = 143.62214
          Width = 37.7953
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'QTY')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 124.72449
        Top = 325.03958
        Width = 778.205227
        object Memo44: TfrxMemoView
          Width = 778.58318
          Height = 26.45671
          ShowHint = False
          Color = 9955024
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 566.9295
          Top = 3.77953000000002
          Width = 79.37013
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 638.74057
          Top = 3.77953000000002
          Width = 37.7953
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBCetakPO."Qnt">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 676.53587
          Top = 3.77953000000002
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBCetakPO."nDPP">,MasterData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 566.9295
          Top = 30.23624
          Width = 188.9765
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            'PPN 10%')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 676.53587
          Top = 30.23624
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBCetakPO."nPPN">,MasterData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 566.9295
          Top = 60.47248
          Width = 188.9765
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            'Total')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 676.53587
          Top = 60.47248
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBCetakPO."nNet">,MasterData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 79.37013
          Top = 3.77953000000002
          Width = 328.81911
          Height = 37.7953
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          LineSpacing = 6
          Memo.UTF8 = (
            '[Terbilang]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 117.16543
          Top = 45.35436
          Width = 113.3859
          Height = 18.89765
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            'APK')
        end
        object Memo56: TfrxMemoView
          Left = 117.16543
          Top = 94.48825
          Width = 113.3859
          Height = 18.89765
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            '(..........................)')
        end
        object Memo57: TfrxMemoView
          Left = 7.55906
          Top = 3.77953000000002
          Width = 68.03154
          Height = 18.89765
          ShowHint = False
          Memo.UTF8 = (
            'Terbilang')
        end
        object Memo58: TfrxMemoView
          Left = 3.77953
          Top = 45.35436
          Width = 109.60637
          Height = 18.89765
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            'ADM. Hutang')
        end
        object Memo59: TfrxMemoView
          Left = 3.77953
          Top = 94.48825
          Width = 109.60637
          Height = 18.89765
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            '(..........................)')
        end
        object Memo60: TfrxMemoView
          Left = 347.71676
          Top = 45.35436
          Width = 113.3859
          Height = 18.89765
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            'Gudang')
        end
        object Memo61: TfrxMemoView
          Left = 347.71676
          Top = 94.48825
          Width = 113.3859
          Height = 18.89765
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            '(..........................)')
        end
        object Memo62: TfrxMemoView
          Left = 234.33086
          Top = 45.35436
          Width = 109.60637
          Height = 18.89765
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            'Pembelian')
        end
        object Memo63: TfrxMemoView
          Left = 234.33086
          Top = 94.48825
          Width = 109.60637
          Height = 18.89765
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            '(..........................)')
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.89765
        ParentFont = False
        Top = 245.66945
        Width = 778.205227
        DataSet = frxDBDataset1
        DataSetName = 'frxDBCetakPO'
        RowCount = 0
        object Memo49: TfrxMemoView
          Width = 778.58318
          Height = 18.89765
          OnBeforePrint = 'Memo49OnBeforePrint'
          ShowHint = False
          Color = clInfoBk
          WordWrap = False
        end
        object Memo33: TfrxMemoView
          Left = 3.77953
          Width = 22.67718
          Height = 15.11812
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[LINE#].')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 30.23624
          Width = 124.72449
          Height = 15.11812
          ShowHint = False
          DataField = 'Kodebrg'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          Memo.UTF8 = (
            '[frxDBCetakPO."Kodebrg"]')
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 154.96073
          Width = 185.19697
          Height = 15.11812
          ShowHint = False
          DataField = 'Namabrg'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          Memo.UTF8 = (
            '[frxDBCetakPO."Namabrg"]')
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 340.1577
          Width = 52.91342
          Height = 15.11812
          ShowHint = False
          DataField = 'Satuan'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBCetakPO."Satuan"]')
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 393.07112
          Width = 71.81107
          Height = 15.11812
          ShowHint = False
          DataField = 'Harga'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakPO."Harga"]')
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 468.66172
          Width = 45.35436
          Height = 15.11812
          ShowHint = False
          DataField = 'DiscP1'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakPO."DiscP1"]')
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 514.01608
          Width = 41.57483
          Height = 15.11812
          ShowHint = False
          DataField = 'DiscP2'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakPO."DiscP2"]')
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 555.59091
          Width = 45.35436
          Height = 15.11812
          ShowHint = False
          DataField = 'discP3'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakPO."discP3"]')
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 600.94527
          Width = 37.7953
          Height = 15.11812
          ShowHint = False
          DataField = 'DiscP4'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakPO."DiscP4"]')
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 676.53587
          Width = 102.04731
          Height = 15.11812
          ShowHint = False
          DataField = 'Ndpp'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakPO."Ndpp"]')
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 638.74057
          Width = 37.7953
          Height = 15.11812
          ShowHint = False
          DataField = 'Qnt'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakPO."Qnt"]')
          WordWrap = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    FileName = 'C:\DOCUME~1\admin\LOCALS~1\Temp\fr48.tmp'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 288
    Top = 246
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10
    DefaultRightMargin = 10
    DefaultTopMargin = 10
    DefaultBottomMargin = 10
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 584
    Top = 160
  end
  object QuTenaker: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    DataSource = DsQuBeli
    Parameters = <
      item
        Name = 'nobukti'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'urut'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from dbproduksitenaker a'
      'left outer join dbkaryawan b on b.nik =a.nik'
      'where a.nobukti =:nobukti and urut =:urut')
    Left = 530
    Top = 202
    object QuTenakerNobukti: TStringField
      FieldName = 'Nobukti'
    end
    object QuTenakerUrut: TIntegerField
      FieldName = 'Urut'
    end
    object QuTenakerNik: TStringField
      FieldName = 'Nik'
      Size = 10
    end
    object QuTenakerUrutNiK: TIntegerField
      FieldName = 'UrutNiK'
    end
    object QuTenakerJam: TBCDField
      FieldName = 'Jam'
      Precision = 18
      Size = 2
    end
    object QuTenakerTrfTenaker: TBCDField
      FieldName = 'TrfTenaker'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuTenakerJmLTrfTenaker: TBCDField
      FieldName = 'JmLTrfTenaker'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
    end
    object QuTenakerKeyNIK: TIntegerField
      FieldName = 'KeyNIK'
    end
    object QuTenakerTipeTrans: TStringField
      FieldName = 'TipeTrans'
      Size = 10
    end
    object QuTenakerNoBukti_1: TStringField
      FieldName = 'NoBukti_1'
      Size = 30
    end
    object QuTenakerNIK_1: TStringField
      FieldName = 'NIK_1'
      Size = 10
    end
    object QuTenakerNama: TStringField
      FieldName = 'Nama'
      Size = 50
    end
    object QuTenakerNamaPanggilan: TStringField
      FieldName = 'NamaPanggilan'
      Size = 50
    end
    object QuTenakerKelamin: TStringField
      FieldName = 'Kelamin'
      Size = 1
    end
    object QuTenakerTmpLahir: TStringField
      FieldName = 'TmpLahir'
      Size = 30
    end
    object QuTenakerTglLahir: TDateTimeField
      FieldName = 'TglLahir'
    end
    object QuTenakerAgama: TStringField
      FieldName = 'Agama'
    end
    object QuTenakerTinggi: TBCDField
      FieldName = 'Tinggi'
      Precision = 18
      Size = 2
    end
    object QuTenakerBerat: TBCDField
      FieldName = 'Berat'
      Precision = 18
      Size = 2
    end
    object QuTenakerBerkacaMata: TWordField
      FieldName = 'BerkacaMata'
    end
    object QuTenakerDarah: TStringField
      FieldName = 'Darah'
      Size = 2
    end
    object QuTenakerNomorKTP: TStringField
      FieldName = 'NomorKTP'
      Size = 50
    end
    object QuTenakerAlamatKTP: TStringField
      FieldName = 'AlamatKTP'
      Size = 100
    end
    object QuTenakerKecamatanKTP: TStringField
      FieldName = 'KecamatanKTP'
      Size = 30
    end
    object QuTenakerKabupatenKTP: TStringField
      FieldName = 'KabupatenKTP'
      Size = 30
    end
    object QuTenakerPropinsiKTP: TStringField
      FieldName = 'PropinsiKTP'
      Size = 30
    end
    object QuTenakerKodePosKTP: TStringField
      FieldName = 'KodePosKTP'
    end
    object QuTenakerAlamatRmh: TStringField
      FieldName = 'AlamatRmh'
      Size = 100
    end
    object QuTenakerKecamatanRmh: TStringField
      FieldName = 'KecamatanRmh'
      Size = 30
    end
    object QuTenakerKabupatenRmh: TStringField
      FieldName = 'KabupatenRmh'
      Size = 30
    end
    object QuTenakerPropinsiRmh: TStringField
      FieldName = 'PropinsiRmh'
      Size = 30
    end
    object QuTenakerKodePosRmh: TStringField
      FieldName = 'KodePosRmh'
    end
    object QuTenakerTeleponHP: TStringField
      FieldName = 'TeleponHP'
      Size = 60
    end
    object QuTenakerKodePendAkhir: TStringField
      FieldName = 'KodePendAkhir'
    end
    object QuTenakerKetPendAkhir: TStringField
      FieldName = 'KetPendAkhir'
      Size = 50
    end
    object QuTenakerStatusTempTinggal: TStringField
      FieldName = 'StatusTempTinggal'
    end
    object QuTenakerHubungan: TWordField
      FieldName = 'Hubungan'
    end
    object QuTenakerReferensi: TStringField
      FieldName = 'Referensi'
      Size = 100
    end
    object QuTenakerRekomendasi: TWordField
      FieldName = 'Rekomendasi'
    end
    object QuTenakerNamaR: TStringField
      FieldName = 'NamaR'
      Size = 100
    end
    object QuTenakerJabatanR: TStringField
      FieldName = 'JabatanR'
      Size = 100
    end
    object QuTenakerNamaInstR: TStringField
      FieldName = 'NamaInstR'
      Size = 100
    end
    object QuTenakerAlamatR: TStringField
      FieldName = 'AlamatR'
      Size = 100
    end
    object QuTenakerTglMasuk: TDateTimeField
      FieldName = 'TglMasuk'
    end
    object QuTenakerTglKeluar: TDateTimeField
      FieldName = 'TglKeluar'
    end
    object QuTenakerBankAccount: TStringField
      FieldName = 'BankAccount'
      Size = 50
    end
    object QuTenakerNomorAstek: TStringField
      FieldName = 'NomorAstek'
      Size = 50
    end
    object QuTenakerTglAstek: TDateTimeField
      FieldName = 'TglAstek'
    end
    object QuTenakerKodeShf: TStringField
      FieldName = 'KodeShf'
      Size = 15
    end
    object QuTenakerKodeJab: TStringField
      FieldName = 'KodeJab'
    end
    object QuTenakerKodeDept: TStringField
      FieldName = 'KodeDept'
    end
    object QuTenakerKodeESL: TStringField
      FieldName = 'KodeESL'
    end
    object QuTenakerKodeGrade: TStringField
      FieldName = 'KodeGrade'
    end
    object QuTenakerGajiPokok: TBCDField
      FieldName = 'GajiPokok'
      Precision = 18
      Size = 2
    end
    object QuTenakerTnjJabatan: TBCDField
      FieldName = 'TnjJabatan'
      Precision = 18
      Size = 2
    end
    object QuTenakerTnjKehadiran: TBCDField
      FieldName = 'TnjKehadiran'
      Precision = 18
      Size = 2
    end
    object QuTenakerTnjTransport: TBCDField
      FieldName = 'TnjTransport'
      Precision = 18
      Size = 2
    end
    object QuTenakerTnjMakan: TBCDField
      FieldName = 'TnjMakan'
      Precision = 18
      Size = 2
    end
    object QuTenakerTnjLain2: TBCDField
      FieldName = 'TnjLain2'
      Precision = 18
      Size = 2
    end
    object QuTenakerTnjHaid: TBCDField
      FieldName = 'TnjHaid'
      Precision = 18
      Size = 2
    end
    object QuTenakerJKK: TBCDField
      FieldName = 'JKK'
      Precision = 18
      Size = 2
    end
    object QuTenakerJHT: TBCDField
      FieldName = 'JHT'
      Precision = 18
      Size = 2
    end
    object QuTenakerJPK: TBCDField
      FieldName = 'JPK'
      Precision = 18
      Size = 2
    end
    object QuTenakerJKM: TBCDField
      FieldName = 'JKM'
      Precision = 18
      Size = 2
    end
    object QuTenakerPrima: TBCDField
      FieldName = 'Prima'
      Precision = 18
      Size = 2
    end
    object QuTenakerTnjPajak: TBooleanField
      FieldName = 'TnjPajak'
    end
    object QuTenakerStsPJK: TStringField
      FieldName = 'StsPJK'
    end
    object QuTenakerStsAST: TStringField
      FieldName = 'StsAST'
    end
    object QuTenakerTanggung: TBCDField
      FieldName = 'Tanggung'
      Precision = 18
      Size = 2
    end
    object QuTenakerNPWP: TStringField
      FieldName = 'NPWP'
      Size = 50
    end
    object QuTenakerAktif: TWordField
      FieldName = 'Aktif'
    end
    object QuTenakerLamaKontrak: TIntegerField
      FieldName = 'LamaKontrak'
    end
    object QuTenakerTglAkhirKontrak: TDateTimeField
      FieldName = 'TglAkhirKontrak'
    end
    object QuTenakerIDUserInput: TStringField
      FieldName = 'IDUserInput'
      Size = 30
    end
    object QuTenakerTglInput: TDateTimeField
      FieldName = 'TglInput'
    end
    object QuTenakerIsSales: TBooleanField
      FieldName = 'IsSales'
    end
    object QuTenakerProduksi: TWordField
      FieldName = 'Produksi'
    end
  end
  object Sp_BeliTenaker: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'sp_HasilPrdTenaker;1'
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
        Name = '@nobukti'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
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
        Name = '@NIK'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@Jam'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end>
    Left = 146
    Top = 278
  end
  object DSTenaker: TDataSource
    DataSet = QuTenaker
    Left = 570
    Top = 208
  end
end
