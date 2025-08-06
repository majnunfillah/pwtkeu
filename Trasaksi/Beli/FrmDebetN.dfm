object FrDebetN: TFrDebetN
  Left = 461
  Top = 27
  Width = 1101
  Height = 649
  Caption = 'Transaksi Debet Note'
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
    Width = 1085
    Height = 113
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label26: TLabel
      Left = 11
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
      Left = 554
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
      Width = 780
      Height = 2
      Brush.Color = clBlack
    end
    object Label12: TLabel
      Left = 159
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
    object Shape6: TShape
      Left = 159
      Top = 43
      Width = 386
      Height = 68
      Brush.Color = 14220537
      Pen.Color = clSilver
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object Label27: TLabel
      Left = 11
      Top = 46
      Width = 47
      Height = 16
      Caption = 'Supplier'
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
    object LnamaSupp: TLabel
      Left = 165
      Top = 43
      Width = 67
      Height = 16
      Caption = 'LnamaSupp'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object LAlamatSupp: TLabel
      Left = 165
      Top = 55
      Width = 377
      Height = 58
      AutoSize = False
      Caption = 'LAlamatSupp'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object NoUrut: TEdit
      Left = 100
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
      OnKeyDown = NoUrutKeyDown
    end
    object Tanggal: TDateEdit
      Left = 646
      Top = 8
      Width = 141
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
    object KodeSupp: TEdit
      Left = 100
      Top = 42
      Width = 55
      Height = 24
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
      OnEnter = KodeSuppEnter
      OnExit = KodeSuppExit
      OnKeyDown = TanggalKeyDown
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 451
    Width = 1085
    Height = 160
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
      Left = 173
      Top = 132
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
    object Label8: TLabel
      Left = 8
      Top = 9
      Width = 59
      Height = 16
      Caption = 'No.Invoice'
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
      Left = 7
      Top = 40
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
    object Label4: TLabel
      Left = 8
      Top = 87
      Width = 24
      Height = 16
      Caption = 'Nilai'
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
    object Label1: TLabel
      Left = 7
      Top = 61
      Width = 31
      Height = 16
      Caption = 'Valas'
      Color = clBlack
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
      Left = 136
      Top = 61
      Width = 25
      Height = 16
      Caption = 'Kurs'
      Color = clBlack
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
      Left = 8
      Top = 111
      Width = 43
      Height = 16
      Caption = 'Nilai Rp'
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
    object BitBtn1: TBitBtn
      Left = 96
      Top = 132
      Width = 75
      Height = 25
      Caption = '&Simpan'
      TabOrder = 6
      OnClick = BitBtn1Click
      OnKeyDown = NilaiKeyDown
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
    object noBeli: TEdit
      Left = 96
      Top = 6
      Width = 241
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 25
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnEnter = noBeliEnter
      OnExit = noBeliExit
      OnKeyDown = noBeliKeyDown
    end
    object Keterangan: TEdit
      Left = 96
      Top = 32
      Width = 349
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 100
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object Nilai: TPBNumEdit
      Left = 96
      Top = 82
      Width = 127
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      NumberFormat = Thousands
      OnKeyDown = NilaiKeyDown
      ParentCtl3D = False
      TabOrder = 4
      Value = 1
    end
    object Valas: TEdit
      Left = 96
      Top = 58
      Width = 34
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 3
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      Text = 'IDR'
      OnEnter = ValasEnter
      OnExit = ValasExit
    end
    object Kurs: TPBNumEdit
      Left = 165
      Top = 57
      Width = 78
      Height = 22
      Alignment = taRightJustify
      Ctl3D = False
      Decimals = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumberFormat = Thousands
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Value = 1
    end
    object NilaiRp: TPBNumEdit
      Left = 96
      Top = 108
      Width = 127
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      NumberFormat = Thousands
      OnKeyDown = NilaiKeyDown
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
      Value = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 113
    Width = 1085
    Height = 338
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 2
    object Panel4: TPanel
      Left = 5
      Top = 265
      Width = 1075
      Height = 68
      Align = alBottom
      AutoSize = True
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object PanelShow1: TPanel
        Left = 2
        Top = 32
        Width = 1071
        Height = 34
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
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
      object PanelShowTotal: TPanel
        Left = 2
        Top = 2
        Width = 1071
        Height = 30
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object LDiskonP: TLabel
          Left = 18
          Top = 7
          Width = 39
          Height = 16
          Caption = 'Disc %'
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
        object Label25: TLabel
          Left = 582
          Top = 7
          Width = 67
          Height = 16
          Caption = 'Grand Total'
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
        object Label37: TLabel
          Left = 445
          Top = 7
          Width = 22
          Height = 16
          Caption = 'PPN'
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
        object Label38: TLabel
          Left = 292
          Top = 7
          Width = 22
          Height = 16
          Caption = 'DPP'
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
        object LDiskonRp: TLabel
          Left = 121
          Top = 7
          Width = 56
          Height = 16
          Alignment = taRightJustify
          Caption = 'Diskon Rp'
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
        object DiskonP: TPBNumEdit
          Left = 60
          Top = 3
          Width = 52
          Height = 22
          Alignment = taRightJustify
          Enabled = False
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          Visible = False
        end
        object GrandTotal: TPBNumEdit
          Left = 653
          Top = 3
          Width = 117
          Height = 22
          TabStop = False
          Alignment = taRightJustify
          Enabled = False
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
          Visible = False
        end
        object Pajak: TPBNumEdit
          Left = 470
          Top = 3
          Width = 100
          Height = 22
          TabStop = False
          Alignment = taRightJustify
          Enabled = False
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
          Visible = False
        end
        object DPP: TPBNumEdit
          Left = 318
          Top = 3
          Width = 117
          Height = 22
          TabStop = False
          Alignment = taRightJustify
          Enabled = False
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
          Visible = False
        end
        object DiskonRp: TPBNumEdit
          Left = 182
          Top = 3
          Width = 100
          Height = 22
          Alignment = taRightJustify
          Enabled = False
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
          Visible = False
        end
      end
    end
    object dxDBGrid1: TdxDBGrid
      Left = 5
      Top = 5
      Width = 1075
      Height = 260
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
      OnEnter = wwDBGrid1Enter
      OnExit = wwDBGrid1Exit
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
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Tahoma'
      PreviewFont.Style = []
      RowFooterColor = 14088435
      ShowRowFooter = True
      OnCustomDrawCell = dxDBGrid1CustomDrawCell
      object dxDBGrid1NoBukti: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoBukti'
      end
      object dxDBGrid1tanggal: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'tanggal'
      end
      object dxDBGrid1NoBeli: TdxDBGridMaskColumn
        Caption = 'No.Invoice'
        HeaderAlignment = taCenter
        Width = 121
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoInv'
      end
      object dxDBGrid1Keterangan: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 149
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Keterangan'
      end
      object dxDBGrid1Column10: TdxDBGridColumn
        Caption = 'Nilai Debet Note'
        HeaderAlignment = taCenter
        Width = 104
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NilaiValas'
        SummaryFooterType = cstSum
        SummaryFooterFormat = ',0.00'
      end
      object dxDBGrid1SaldoD: TdxDBGridMaskColumn
        Caption = 'Jumlah Valas'
        HeaderAlignment = taCenter
        Width = 121
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SaldoD'
      end
      object dxDBGrid1kodeVls: TdxDBGridMaskColumn
        Caption = 'Valas'
        HeaderAlignment = taCenter
        Width = 42
        BandIndex = 0
        RowIndex = 0
        FieldName = 'kodeVls'
      end
      object dxDBGrid1Kurs: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Kurs'
      end
      object dxDBGrid1NilaiRp: TdxDBGridMaskColumn
        Caption = 'Nilai Debet Note Rp'
        HeaderAlignment = taCenter
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NilaiRp'
      end
      object dxDBGrid1Saldo: TdxDBGridMaskColumn
        Caption = 'Jumlah'
        HeaderAlignment = taCenter
        Width = 121
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Saldo'
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
      OnClick = BPrevClick
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
      OnClick = BNextClick
    end
  end
  object QuBeli: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @NoBukti varchar(30)'
      ''
      'select '#9'@NoBukti='#39'SJY/DN/0413/0001'#39
      ''
      
        'Select  c.KodeSupp,d.NamaCustSupp,d.Alamat1,NoUrut,a.Urut,a.NoBu' +
        'kti,c.tanggal,Keterangan,a.NoInv,b.Saldo, b.SaldoD,'
      '        a.Nilai,'
      
        '        Case when a.kodevls='#39'IDR'#39' then 0.00 else a.Nilai end Nil' +
        'aiValas,'
      '        a.kodeVls, a.Kurs, a.NilaiRp'
      'From  dbDebetNoteDet a'
      'Left Outer Join dbDebetNote c On c.NoBukti=a.NoBukti'
      
        'Left Outer Join (select a.NoFaktur,Sum(Saldo) Saldo, Sum(SaldoD)' +
        ' SaldoD'
      '                 from dbo.vwHutPiut a'
      '                 where a.Tipe='#39'HT'#39
      '                 Group by a.NoFaktur) b On a.NoInv=B.Nofaktur'
      'Left Outer Join dbCustSupp d On d.KodeCustSupp=c.KodeSupp'
      'where a.NoBukti=@NoBukti'
      'order by a.NoBukti'
      '')
    Left = 38
    Top = 224
    object QuBeliNoBukti: TStringField
      FieldName = 'NoBukti'
    end
    object QuBelitanggal: TDateTimeField
      FieldName = 'tanggal'
    end
    object QuBeliKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 100
    end
    object QuBeliNoUrut: TStringField
      DisplayWidth = 5
      FieldName = 'NoUrut'
      ReadOnly = True
      Size = 5
    end
    object QuBeliUrut: TIntegerField
      FieldName = 'Urut'
    end
    object QuBeliKodeSupp: TStringField
      FieldName = 'KodeSupp'
      Size = 15
    end
    object QuBeliNamaCustSupp: TStringField
      FieldName = 'NamaCustSupp'
      Size = 100
    end
    object QuBeliAlamat1: TStringField
      FieldName = 'Alamat1'
      Size = 100
    end
    object QuBeliNilai: TBCDField
      FieldName = 'Nilai'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBelikodeVls: TStringField
      FieldName = 'kodeVls'
      Size = 15
    end
    object QuBeliKurs: TBCDField
      FieldName = 'Kurs'
      Precision = 18
      Size = 2
    end
    object QuBeliNilaiRp: TBCDField
      FieldName = 'NilaiRp'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliSaldo: TBCDField
      FieldName = 'Saldo'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuBeliSaldoD: TBCDField
      FieldName = 'SaldoD'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuBeliNilaiValas: TBCDField
      FieldName = 'NilaiValas'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliNoInv: TStringField
      FieldName = 'NoInv'
    end
  end
  object Sp_Beli: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'Sp_DebetNote;1'
    Parameters = <>
    Left = 126
    Top = 226
  end
  object DsQuBeli: TDataSource
    DataSet = QuBeli
    Left = 10
    Top = 224
  end
  object QuUpdatedbbeli: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From vwPerusahaan')
    Left = 87
    Top = 253
  end
  object DataSource1: TDataSource
    DataSet = QuReport
    Left = 38
    Top = 250
  end
  object QuReport: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <
      item
        Name = '0'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      
        'Select A.Nobukti,f.tanggal,B.NamaBrg,A.Qnt,A.Satuan,A.Harga,C.Na' +
        'maSupp,C.Alamat,C.Kota,C.Telpon,'
      '       F.Hari,A.ket,'
      '(A.harga-A.DiscRpTot) as Hrgnett,'
      
        '(A.DiscRptot*A.Qnt) As Discount,((A.Qnt*A.Harga)-(A.Qnt*A.DiscRp' +
        'tot)) As Total,'
      '(A.DiscRp*A.Qnt) As Discount,G.Simbol,'
      
        'Case when A.DiscP1=0 then '#39#39' else (cast(a.DiscP1 as Varchar(9)) ' +
        '+ case when A.DiscP2=0 then '#39'%'#39' else '#39'%+'#39' end) end +'
      
        'Case when A.DiscP2=0 then '#39#39' else (cast(a.DiscP2 as Varchar(9)) ' +
        '+ case when A.DiscP3=0 then '#39'%'#39' else '#39'%+'#39' end) end +'
      
        'Case when A.DiscP3=0 then '#39#39' else (cast(a.DiscP3 as Varchar(9)) ' +
        '+ case when A.DiscP=0 then '#39'%'#39' else '#39'%+'#39' end) end +'
      
        'Case when A.DiscP=0 then '#39#39' else (cast(a.DiscP as Varchar(9)) +'#39 +
        '% '#39') end as Disc,'
      
        '((((A.Qnt*A.Harga)-(A.Qnt*A.DiscRptot)))*(F.Disc/100)) as DiscNo' +
        'ta,'
      'Case when F.PPn='#39'+'#39' then'
      
        '      ((((A.Qnt*A.Harga)-(A.Qnt*A.DiscRptot))-(((A.Qnt*A.Harga)-' +
        '(A.Qnt*A.DiscRptot))*(F.Disc/100))))'
      '     when F.ppn='#39'I'#39' then '
      
        '      (((((A.Qnt*A.Harga)-(A.Qnt*A.DiscRptot))-(((A.Qnt*A.Harga)' +
        '-(A.Qnt*A.DiscRptot))*(F.Disc/100)))/1.1))'
      '     else'
      
        '      ((A.Qnt*A.Harga)-(A.Qnt*A.DiscRptot))-(((A.Qnt*A.Harga)-(A' +
        '.Qnt*A.DiscRptot))*(F.Disc/100))'
      'end Dpp,'
      'Case when F.PPn='#39'+'#39' then'
      
        '      ((((A.Qnt*A.Harga)-(A.Qnt*A.DiscRptot))-(((A.Qnt*A.Harga)-' +
        '(A.Qnt*A.DiscRptot))*(F.Disc/100)))*0.1)'
      '     when F.ppn='#39'I'#39' then '
      
        '      (((((A.Qnt*A.Harga)-(A.Qnt*A.DiscRptot))-(((A.Qnt*A.Harga)' +
        '-(A.Qnt*A.DiscRptot))*(F.Disc/100)))/1.1)*0.1)'
      '     else'
      '      0'
      'end  PPN,'
      'Case when F.PPn='#39'+'#39' then'
      
        '      ((((A.Qnt*A.Harga)-(A.Qnt*A.DiscRptot))-(((A.Qnt*A.Harga)-' +
        '(A.Qnt*A.DiscRptot))*(F.Disc/100))))'
      '     when F.ppn='#39'I'#39' then '
      
        '      (((((A.Qnt*A.Harga)-(A.Qnt*A.DiscRptot))-(((A.Qnt*A.Harga)' +
        '-(A.Qnt*A.DiscRptot))*(F.Disc/100)))/1.1))'
      '     else'
      
        '      ((A.Qnt*A.Harga)-(A.Qnt*A.DiscRptot))-(((A.Qnt*A.Harga)-(A' +
        '.Qnt*A.DiscRptot))*(F.Disc/100))'
      'end +'
      'Case when F.PPn='#39'+'#39' then'
      
        '      ((((A.Qnt*A.Harga)-(A.Qnt*A.DiscRptot))-(((A.Qnt*A.Harga)-' +
        '(A.Qnt*A.DiscRptot))*(F.Disc/100)))*0.1)'
      '     when F.ppn='#39'I'#39' then '
      
        '      (((((A.Qnt*A.Harga)-(A.Qnt*A.DiscRptot))-(((A.Qnt*A.Harga)' +
        '-(A.Qnt*A.DiscRptot))*(F.Disc/100)))/1.1)*0.1)'
      '     else'
      '      0'
      
        'end Jumlah, a.DiscRpTot,f.NoSJLN,Case when f.PilihanPosting='#39'Hut' +
        'ang Usaha'#39' then f.HrgHandling else 0 end HrgHandling'
      'From dbBeliDet A'
      '     left outer join dbBeli F on (a.nobukti=f.nobukti)'
      '     left outer join dbBarang B on (A.KodeBrg=B.KodeBrg)'
      '     left outer join dbSupplier  c on c.kodeSupp=f.kodeSupp'
      '     left outer join dbgudang g on g.kodegdg=a.kodegdg'
      'where a.nobukti=:0'
      'Order by A.NoBukti, A.Urut')
    Left = 10
    Top = 250
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
    Left = 264
    Top = 251
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
    Left = 88
    Top = 224
  end
end
