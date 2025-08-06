object FrRevPO: TFrRevPO
  Left = 422
  Top = -15
  Width = 774
  Height = 662
  Caption = 'Transaksi Purchase Order (PO) Rev'
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
    Width = 766
    Height = 129
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Ltanggal: TLabel
      Left = 1042
      Top = 89
      Width = 83
      Height = 16
      Caption = 'Jatuh Tempo :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
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
    object Label27: TLabel
      Left = 8
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
    object Label28: TLabel
      Left = 952
      Top = 125
      Width = 73
      Height = 16
      Caption = 'Biaya Angkut'
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
    object Label29: TLabel
      Left = 554
      Top = 48
      Width = 31
      Height = 16
      Caption = 'Valas'
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
      Left = 694
      Top = 48
      Width = 25
      Height = 16
      Caption = 'Kurs'
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
      Left = 794
      Top = 48
      Width = 51
      Height = 16
      Caption = 'Tipe PPN'
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
      Left = 554
      Top = 77
      Width = 71
      Height = 16
      Caption = 'Pembayaran'
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
      Left = 725
      Top = 77
      Width = 23
      Height = 16
      Caption = 'Hari'
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
    object Label35: TLabel
      Left = 795
      Top = 76
      Width = 37
      Height = 16
      Caption = 'Diskon'
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
      Left = 920
      Top = 77
      Width = 12
      Height = 16
      AutoSize = False
      Caption = '%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label42: TLabel
      Left = 762
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
      Width = 986
      Height = 2
      Brush.Color = clBlack
    end
    object Label14: TLabel
      Left = 952
      Top = 178
      Width = 64
      Height = 16
      Caption = 'Surat Jalan'
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
    object Label17: TLabel
      Left = 1016
      Top = 56
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
      Visible = False
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
    object Label2: TLabel
      Left = 952
      Top = 151
      Width = 52
      Height = 16
      Caption = 'Ekspedisi'
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
    object NamaExp: TRxLabel
      Left = 1103
      Top = 152
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
      Visible = False
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
    object Label22: TLabel
      Left = 553
      Top = 106
      Width = 79
      Height = 16
      Caption = 'Tanggal Kirim'
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
      Left = 854
      Top = 8
      Width = 140
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
      ReadOnly = True
      TabOrder = 2
      OnChange = TanggalChange
      OnEnter = TanggalEnter
      OnExit = TanggalExit
      OnKeyDown = TanggalKeyDown
    end
    object Hari: TPBNumEdit
      Left = 753
      Top = 73
      Width = 33
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Ctl3D = False
      Decimals = -1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumberFormat = Standard
      OnChange = TanggalChange
      OnExit = HariExit
      OnKeyDown = TanggalKeyDown
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 10
    end
    object Diskon: TPBNumEdit
      Left = 855
      Top = 73
      Width = 59
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Ctl3D = False
      Decimals = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumberFormat = Standard
      OnChange = TanggalChange
      OnKeyDown = TanggalKeyDown
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 11
    end
    object Valas: TEdit
      Left = 646
      Top = 44
      Width = 42
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
      MaxLength = 3
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
      Text = 'IDR'
      OnChange = TanggalChange
      OnEnter = ValasEnter
      OnExit = ValasExit
      OnKeyDown = TanggalKeyDown
    end
    object Kurs: TPBNumEdit
      Left = 728
      Top = 44
      Width = 58
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Ctl3D = False
      Decimals = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumberFormat = Thousands
      OnChange = TanggalChange
      OnExit = KursExit
      OnKeyDown = TanggalKeyDown
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
      Value = 1
    end
    object NoBukti: TEdit
      Left = 239
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
    object Handling: TPBNumEdit
      Left = 1044
      Top = 121
      Width = 126
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Enabled = False
      Ctl3D = False
      Decimals = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumberFormat = Thousands
      OnChange = TanggalChange
      OnKeyDown = TanggalKeyDown
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 14
      Visible = False
    end
    object PPN: TComboBox
      Left = 855
      Top = 44
      Width = 140
      Height = 24
      BevelKind = bkFlat
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      MaxLength = 1
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
      Text = 'NONE'
      OnChange = TanggalChange
      OnKeyDown = TanggalKeyDown
      Items.Strings = (
        'NONE'
        'Exclude'
        'Include')
    end
    object TIPE: TComboBox
      Left = 646
      Top = 73
      Width = 73
      Height = 24
      BevelKind = bkFlat
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      MaxLength = 1
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 9
      Text = 'TUNAI'
      OnChange = TanggalChange
      OnKeyDown = TanggalKeyDown
      Items.Strings = (
        'TUNAI'
        'KREDIT')
    end
    object FakturSupp: TEdit
      Left = 1044
      Top = 174
      Width = 174
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
      TabOrder = 16
      Visible = False
      OnChange = TanggalChange
      OnKeyDown = TanggalKeyDown
    end
    object Keterangan: TEdit
      Left = 1108
      Top = 52
      Width = 240
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
      TabOrder = 17
      Visible = False
      OnChange = TanggalChange
      OnKeyDown = TanggalKeyDown
    end
    object KodeExp: TEdit
      Left = 1044
      Top = 148
      Width = 55
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
      TabOrder = 15
      Visible = False
      OnChange = TanggalChange
      OnEnter = KodeSuppEnter
      OnExit = KodeExpExit
      OnKeyDown = TanggalKeyDown
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
      OnChange = TanggalChange
      OnEnter = KodeSuppEnter
      OnExit = KodeSuppExit
      OnKeyDown = TanggalKeyDown
    end
    object CB: TCheckBox
      Left = 5
      Top = 111
      Width = 82
      Height = 17
      Caption = 'Expedisi?'
      TabOrder = 4
      OnClick = CBClick
    end
    object CB2: TCheckBox
      Left = 95
      Top = 110
      Width = 80
      Height = 17
      Caption = 'Close PO?'
      TabOrder = 5
      OnClick = CB2Click
      OnKeyDown = TanggalKeyDown
    end
    object CBALL: TCheckBox
      Left = 794
      Top = 105
      Width = 149
      Height = 17
      Caption = 'Ambil Semua PR OS?'
      Enabled = False
      TabOrder = 13
      OnClick = CBALLClick
      OnKeyDown = TanggalKeyDown
    end
    object TglKirim: TDateEdit
      Left = 645
      Top = 101
      Width = 140
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
      TabOrder = 12
      OnEnter = TanggalEnter
      OnExit = TanggalExit
      OnKeyDown = TanggalKeyDown
    end
    object KodeGdg: TEdit
      Left = 100
      Top = 80
      Width = 55
      Height = 25
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
      TabOrder = 18
      Visible = False
      OnChange = TanggalChange
      OnEnter = KodeSuppEnter
      OnKeyDown = TanggalKeyDown
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 467
    Width = 766
    Height = 161
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
      Top = 135
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
      Width = 72
      Height = 16
      Caption = 'Kode Barang'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 8
      Top = 34
      Width = 47
      Height = 16
      Caption = 'Quantity'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 59
      Width = 34
      Height = 16
      Caption = 'Harga'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 231
      Top = 34
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
      Left = 303
      Top = 34
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
      Left = 231
      Top = 9
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
    object Label3: TLabel
      Left = 312
      Top = 136
      Width = 38
      Height = 16
      Caption = 'No. PR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label7: TLabel
      Left = 8
      Top = 84
      Width = 53
      Height = 16
      Caption = 'Disc  (%)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 8
      Top = 109
      Width = 52
      Height = 16
      Caption = 'Disc (Rp)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 200
      Top = 108
      Width = 75
      Height = 16
      Caption = 'Toleransi(%)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label41: TLabel
      Left = 204
      Top = 83
      Width = 5
      Height = 16
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label34: TLabel
      Left = 148
      Top = 83
      Width = 5
      Height = 16
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label39: TLabel
      Left = 316
      Top = 83
      Width = 5
      Height = 16
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label40: TLabel
      Left = 260
      Top = 83
      Width = 5
      Height = 16
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 100
      Top = 135
      Width = 75
      Height = 25
      Caption = '&Simpan'
      TabOrder = 13
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
      Left = 100
      Top = 5
      Width = 127
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = False
      MaxLength = 25
      ParentCtl3D = False
      TabOrder = 2
      OnEnter = KodeBrgEnter
      OnExit = KodeBrgExit
      OnKeyDown = KodeBrgKeyDown
    end
    object Qnt: TPBNumEdit
      Left = 100
      Top = 30
      Width = 127
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      NumberFormat = Thousands
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 3
      Value = 1
    end
    object Harga: TPBNumEdit
      Left = 100
      Top = 55
      Width = 126
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      NumberFormat = Thousands
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 5
    end
    object NoSat: TPBNumEdit
      Left = 279
      Top = 30
      Width = 20
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = -1
      MaxLength = 1
      MaxValue = 4
      MinValue = 1
      NumberFormat = Standard
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 4
      Value = 1
    end
    object NoPPL: TEdit
      Left = 404
      Top = 132
      Width = 309
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = False
      MaxLength = 25
      ParentCtl3D = False
      TabOrder = 0
      Visible = False
      OnEnter = KodeBrgEnter
      OnExit = NoPPLExit
      OnKeyDown = KodeBrgKeyDown
    end
    object CB3: TCheckBox
      Left = 431
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Close?'
      TabOrder = 1
    end
    object Panel6: TPanel
      Left = 633
      Top = 1
      Width = 1364
      Height = 143
      BevelOuter = bvNone
      BorderWidth = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      Visible = False
      object SpeedButton3: TSpeedButton
        Left = 177
        Top = 111
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
        OnClick = SpeedButton3Click
      end
      object Label13: TLabel
        Left = 8
        Top = 33
        Width = 31
        Height = 16
        Caption = 'Valas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 8
        Top = 85
        Width = 24
        Height = 16
        Caption = 'Nilai'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 8
        Top = 59
        Width = 85
        Height = 16
        Caption = 'Persentase(%)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 8
        Top = 8
        Width = 65
        Height = 16
        Caption = 'Keterangan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object BitBtn3: TBitBtn
        Left = 100
        Top = 111
        Width = 75
        Height = 25
        Caption = '&Simpan'
        TabOrder = 5
        OnClick = BitBtn3Click
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
      object Nilai: TPBNumEdit
        Left = 100
        Top = 81
        Width = 126
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        OnKeyDown = KetPembKeyDown
        ParentCtl3D = False
        TabOrder = 4
      end
      object Persen: TPBNumEdit
        Left = 100
        Top = 55
        Width = 66
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Decimals = 2
        MaxLength = 5
        MaxValue = 100
        NumberFormat = Standard
        OnKeyDown = KetPembKeyDown
        ParentCtl3D = False
        TabOrder = 3
      end
      object KetPemb: TEdit
        Left = 100
        Top = 4
        Width = 387
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        MaxLength = 200
        ParentCtl3D = False
        TabOrder = 0
        OnKeyDown = KetPembKeyDown
      end
      object Vls: TEdit
        Left = 100
        Top = 29
        Width = 42
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
        MaxLength = 3
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        OnEnter = ValasEnter
        OnExit = VlsExit
        OnKeyDown = KetPembKeyDown
      end
      object CB4: TCheckBox
        Left = 511
        Top = 11
        Width = 97
        Height = 17
        Caption = 'DP?'
        TabOrder = 1
        OnKeyDown = KetPembKeyDown
      end
    end
    object DiscP: TPBNumEdit
      Left = 100
      Top = 80
      Width = 45
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      MaxLength = 7
      MaxValue = 100
      NumberFormat = Standard
      OnChange = DiscPExit
      OnEnter = DiscPEnter
      OnExit = DiscPExit
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 6
    end
    object DiscRp: TPBNumEdit
      Left = 100
      Top = 105
      Width = 92
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      NumberFormat = Thousands
      OnEnter = DiscPEnter
      OnExit = DiscPExit
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 11
    end
    object Tlt: TPBNumEdit
      Left = 284
      Top = 105
      Width = 66
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      MaxLength = 5
      MaxValue = 100
      NumberFormat = Standard
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 12
    end
    object DiscPDet3: TPBNumEdit
      Left = 212
      Top = 80
      Width = 45
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      MaxLength = 5
      MaxValue = 100
      NumberFormat = Standard
      OnChange = DiscPExit
      OnEnter = DiscPEnter
      OnExit = DiscPExit
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 8
    end
    object DiscPDet2: TPBNumEdit
      Left = 156
      Top = 80
      Width = 45
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      MaxLength = 5
      MaxValue = 100
      NumberFormat = Standard
      OnChange = DiscPExit
      OnEnter = DiscPEnter
      OnExit = DiscPExit
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 7
    end
    object DiscPDet5: TPBNumEdit
      Left = 324
      Top = 80
      Width = 45
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      MaxLength = 5
      MaxValue = 100
      NumberFormat = Standard
      OnChange = DiscPExit
      OnEnter = DiscPEnter
      OnExit = DiscPExit
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 10
    end
    object DIscPDet4: TPBNumEdit
      Left = 268
      Top = 80
      Width = 45
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      MaxLength = 5
      MaxValue = 100
      NumberFormat = Standard
      OnChange = DiscPExit
      OnEnter = DiscPEnter
      OnExit = DiscPExit
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 9
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 129
    Width = 766
    Height = 338
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 2
    object Panel4: TPanel
      Left = 5
      Top = 265
      Width = 756
      Height = 68
      Align = alBottom
      AutoSize = True
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object PanelShow1: TPanel
        Left = 2
        Top = 32
        Width = 752
        Height = 34
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object Cetak: TSpeedButton
          Left = 341
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
          Left = 415
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
        object TglKirimBtn: TSpeedButton
          Left = 255
          Top = 3
          Width = 75
          Height = 28
          Caption = 'Tgl Kirim'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          OnClick = TglKirimBtnClick
        end
      end
      object PanelShowTotal: TPanel
        Left = 2
        Top = 2
        Width = 752
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
        end
      end
    end
    object dxPageControl1: TdxPageControl
      Left = 5
      Top = 5
      Width = 756
      Height = 260
      ActivePage = dxTabSheet1
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HideButtons = False
      HotTrack = False
      MultiLine = False
      OwnerDraw = False
      ParentFont = False
      RaggedRight = False
      ScrollOpposite = False
      TabHeight = 0
      TabOrder = 1
      TabPosition = dxtpTop
      TabWidth = 0
      OnChange = dxPageControl1Change
      object dxTabSheet1: TdxTabSheet
        Caption = 'PO Detail'
        object dxDBGrid1: TdxDBGrid
          Left = 0
          Top = 0
          Width = 756
          Height = 234
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
          TabOrder = 0
          OnDblClick = wwDBGrid1DblClick
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
          OptionsBehavior = [edgoAutoSearch, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
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
          object dxDBGrid1Urut: TdxDBGridMaskColumn
            DisableEditor = True
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Urut'
          end
          object dxDBGrid1KodeBrg: TdxDBGridMaskColumn
            Caption = 'Kode Barang'
            DisableEditor = True
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KodeBrg'
          end
          object dxDBGrid1NamaBrg: TdxDBGridMaskColumn
            Caption = 'Nama Barang'
            DisableEditor = True
            Width = 300
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NamaBrg'
          end
          object dxDBGrid1Qnt: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taRightJustify
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Qnt'
            SummaryFooterType = cstSum
            SummaryFooterField = 'Qnt'
            SummaryFooterFormat = ',0.00'
          end
          object dxDBGrid1Satuan: TdxDBGridMaskColumn
            Caption = 'Sat'
            DisableEditor = True
            Width = 40
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Satuan'
          end
          object dxDBGrid1Harga: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taRightJustify
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Harga'
          end
          object dxDBGrid1DISCTOT: TdxDBGridMaskColumn
            Caption = 'Diskon'
            DisableEditor = True
            HeaderAlignment = taRightJustify
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DISCTOT'
          end
          object dxDBGrid1TotalUSD: TdxDBGridMaskColumn
            Caption = 'Sub Total USD'
            DisableEditor = True
            HeaderAlignment = taRightJustify
            Visible = False
            Width = 117
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TotalUSD'
            SummaryFooterType = cstSum
            SummaryFooterField = 'TotalUSD'
            SummaryFooterFormat = ',0.0000'
          end
          object dxDBGrid1TotalIDR: TdxDBGridMaskColumn
            Caption = 'Sub Total'
            DisableEditor = True
            HeaderAlignment = taRightJustify
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TotalIDR'
            SummaryFooterType = cstSum
            SummaryFooterField = 'TotalIDR'
            SummaryFooterFormat = ',0.00'
          end
          object dxDBGrid1Beban: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taRightJustify
            Visible = False
            Width = 93
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Beban'
            SummaryFooterType = cstSum
            SummaryFooterField = 'Beban'
            SummaryFooterFormat = ',0.00'
          end
          object dxDBGrid1Total: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taRightJustify
            Visible = False
            Width = 136
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Total'
            SummaryFooterType = cstSum
            SummaryFooterField = 'Total'
            SummaryFooterFormat = ',0.00'
          end
          object dxDBGrid1Column12: TdxDBGridCheckColumn
            Caption = 'Close'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'IsCloseD'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object dxDBGrid1Column13: TdxDBGridColumn
            Caption = 'Toleransi'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Tolerate'
          end
        end
      end
      object dxTabSheet2: TdxTabSheet
        Caption = ' PO Kiriman'
        object Panel7: TPanel
          Left = 248
          Top = 40
          Width = 194
          Height = 55
          Color = clSkyBlue
          TabOrder = 0
          Visible = False
          object Label23: TLabel
            Left = 17
            Top = 9
            Width = 138
            Height = 16
            Caption = 'Berapa Kali Pengiriman?'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object XKirim: TPBNumEdit
            Left = 158
            Top = 6
            Width = 27
            Height = 24
            Alignment = taCenter
            AutoSize = False
            Color = clWhite
            Ctl3D = False
            Decimals = -1
            MaxLength = 1
            MaxValue = 100
            MinValue = 2
            NumberFormat = Standard
            OnKeyDown = QntKeyDown
            ParentCtl3D = False
            TabOrder = 0
            Value = 2
          end
          object Button1: TButton
            Left = 16
            Top = 27
            Width = 75
            Height = 25
            Caption = 'OK'
            TabOrder = 1
            OnClick = Button1Click
          end
        end
        object dxDBGrid2: TdxDBGrid
          Left = 0
          Top = 0
          Width = 756
          Height = 234
          Bands = <
            item
              Fixed = bfLeft
            end
            item
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 1
          KeyField = 'KeyKodeBrg'
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
          PopupMenu = PopupMenu1
          TabOrder = 1
          OnDblClick = dxDBGrid2DblClick
          OnKeyDown = dxDBGrid2KeyDown
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'Tahoma'
          BandFont.Style = []
          DataSource = DsgridKirim
          Filter.Criteria = {00000000}
          FixedBandLineWidth = 1
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
          object dxDBGrid2KeyKodeBrg: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KeyKodeBrg'
          end
          object dxDBGrid2NoBukti: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NoBukti'
          end
          object dxDBGrid2KodeBrg: TdxDBGridMaskColumn
            Caption = 'Kode Barang'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KodeBrg'
          end
          object dxDBGrid2NamaBrg: TdxDBGridMaskColumn
            Caption = 'Nama Barang'
            Width = 250
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NamaBrg'
          end
          object dxDBGrid2NoSat: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NoSat'
          end
          object dxDBGrid2Satuan: TdxDBGridMaskColumn
            Caption = 'Sat'
            Width = 40
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Satuan'
          end
          object dxDBGrid2Qnt: TdxDBGridMaskColumn
            Caption = 'Qnt PO'
            HeaderAlignment = taRightJustify
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Qnt'
          end
          object dxDBGrid2Tanggal1: TdxDBGridDateColumn
            Width = 80
            BandIndex = 1
            RowIndex = 0
            FieldName = 'Tanggal1'
          end
          object dxDBGrid2Qnt1: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 70
            BandIndex = 1
            RowIndex = 0
            FieldName = 'Qnt1'
          end
          object dxDBGrid2Tanggal2: TdxDBGridDateColumn
            Width = 80
            BandIndex = 1
            RowIndex = 0
            FieldName = 'Tanggal2'
          end
          object dxDBGrid2Qnt2: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 70
            BandIndex = 1
            RowIndex = 0
            FieldName = 'Qnt2'
          end
          object dxDBGrid2Tanggal3: TdxDBGridDateColumn
            Width = 80
            BandIndex = 1
            RowIndex = 0
            FieldName = 'Tanggal3'
          end
          object dxDBGrid2Qnt3: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 70
            BandIndex = 1
            RowIndex = 0
            FieldName = 'Qnt3'
          end
          object dxDBGrid2Tanggal4: TdxDBGridDateColumn
            Width = 80
            BandIndex = 1
            RowIndex = 0
            FieldName = 'Tanggal4'
          end
          object dxDBGrid2Qnt4: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 70
            BandIndex = 1
            RowIndex = 0
            FieldName = 'Qnt4'
          end
          object dxDBGrid2Tanggal5: TdxDBGridDateColumn
            Width = 80
            BandIndex = 1
            RowIndex = 0
            FieldName = 'Tanggal5'
          end
          object dxDBGrid2Qnt5: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 70
            BandIndex = 1
            RowIndex = 0
            FieldName = 'Qnt5'
          end
          object dxDBGrid2Tanggal6: TdxDBGridDateColumn
            Visible = False
            Width = 80
            BandIndex = 1
            RowIndex = 0
            FieldName = 'Tanggal6'
          end
          object dxDBGrid2Qnt6: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Visible = False
            Width = 70
            BandIndex = 1
            RowIndex = 0
            FieldName = 'Qnt6'
          end
          object dxDBGrid2Tanggal7: TdxDBGridDateColumn
            Visible = False
            Width = 80
            BandIndex = 1
            RowIndex = 0
            FieldName = 'Tanggal7'
          end
          object dxDBGrid2Qnt7: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Visible = False
            Width = 70
            BandIndex = 1
            RowIndex = 0
            FieldName = 'Qnt7'
          end
          object dxDBGrid2Tanggal8: TdxDBGridDateColumn
            Visible = False
            Width = 80
            BandIndex = 1
            RowIndex = 0
            FieldName = 'Tanggal8'
          end
          object dxDBGrid2Qnt8: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Visible = False
            Width = 70
            BandIndex = 1
            RowIndex = 0
            FieldName = 'Qnt8'
          end
          object dxDBGrid2SumQntKirim: TdxDBGridMaskColumn
            Caption = 'Total Kirim'
            Width = 90
            BandIndex = 1
            RowIndex = 0
            FieldName = 'SumQntKirim'
          end
        end
      end
      object dxTabSheet3: TdxTabSheet
        Caption = 'PO Pembayaran'
        TabVisible = False
        object dxDBGrid3: TdxDBGrid
          Left = 0
          Top = 0
          Width = 929
          Height = 234
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'Persentase'
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
          TabOrder = 0
          OnDblClick = wwDBGrid1DblClick
          OnEnter = wwDBGrid1Enter
          OnExit = wwDBGrid1Exit
          OnKeyDown = wwDBGrid1KeyDown
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'Tahoma'
          BandFont.Style = []
          DataSource = dsBayarPO
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
          OptionsBehavior = [edgoAutoSearch, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
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
          object dxDBGridColumn1: TdxDBGridColumn
            DisableEditor = True
            Width = 247
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Keterangan'
          end
          object dxDBGridColumn2: TdxDBGridCheckColumn
            MinWidth = 20
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DP'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object dxDBGrid3Column3: TdxDBGridColumn
            DisableEditor = True
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Persentase'
          end
          object dxDBGrid3Column4: TdxDBGridColumn
            Caption = 'Mata Uang'
            DisableEditor = True
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KodeVls'
          end
          object dxDBGrid3Column5: TdxDBGridColumn
            DisableEditor = True
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Nilai'
          end
        end
      end
    end
  end
  object PanelShow2: TPanel
    Left = 403
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
  object Panel5: TPanel
    Left = 333
    Top = 229
    Width = 452
    Height = 156
    BevelOuter = bvNone
    BorderWidth = 1
    Color = clGradientInactiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Visible = False
    object SpeedButton2: TSpeedButton
      Left = 177
      Top = 117
      Width = 75
      Height = 26
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
      OnClick = SpeedButton2Click
    end
    object Label4: TLabel
      Left = 8
      Top = 35
      Width = 72
      Height = 16
      Caption = 'Kode Barang'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 86
      Width = 47
      Height = 16
      Caption = 'Quantity'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 231
      Top = 86
      Width = 40
      Height = 16
      Caption = 'Satuan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object NmSatuanX: TRxLabel
      Left = 303
      Top = 86
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
      Visible = False
    end
    object NamaBrgX: TRxLabel
      Left = 231
      Top = 35
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
    object Label18: TLabel
      Left = 8
      Top = 8
      Width = 50
      Height = 16
      Caption = 'No. Bukti'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 5
      Top = 59
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
    object BitBtn2: TBitBtn
      Left = 100
      Top = 117
      Width = 75
      Height = 25
      Caption = '&Simpan'
      TabOrder = 5
      OnClick = BitBtn2Click
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
    object KodebrgX: TEdit
      Left = 99
      Top = 30
      Width = 127
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = False
      Enabled = False
      MaxLength = 25
      ParentCtl3D = False
      TabOrder = 3
      OnEnter = KodeBrgEnter
      OnExit = KodeBrgExit
      OnKeyDown = KodeBrgKeyDown
    end
    object QntX: TPBNumEdit
      Left = 100
      Top = 82
      Width = 127
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      NumberFormat = Thousands
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 2
      Value = 1
    end
    object Satx: TPBNumEdit
      Left = 279
      Top = 82
      Width = 20
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Enabled = False
      Ctl3D = False
      Decimals = -1
      MaxLength = 1
      MaxValue = 4
      MinValue = 1
      NumberFormat = Standard
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 4
      Value = 1
      Visible = False
    end
    object NoBuktiX: TEdit
      Left = 99
      Top = 4
      Width = 309
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = False
      Enabled = False
      MaxLength = 25
      ParentCtl3D = False
      TabOrder = 0
      OnEnter = KodeBrgEnter
      OnExit = NoPPLExit
      OnKeyDown = KodeBrgKeyDown
    end
    object TglX: TDateEdit
      Left = 99
      Top = 56
      Width = 140
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
      TabOrder = 1
      OnChange = TanggalChange
      OnEnter = TanggalEnter
      OnExit = TanggalExit
      OnKeyDown = TanggalKeyDown
    end
  end
  object Sp_Beli: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'sp_PO;1'
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
        Name = '@NoBukti'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
      end
      item
        Name = '@NoUrut'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
      end
      item
        Name = '@Tanggal'
        Attributes = [paNullable]
        DataType = ftDateTime
      end
      item
        Name = '@TglJatuhTempo'
        Attributes = [paNullable]
        DataType = ftDateTime
      end
      item
        Name = '@KodeSupp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
      end
      item
        Name = '@Handling'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@KodeExp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
      end
      item
        Name = '@Keterangan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 200
      end
      item
        Name = '@FakturSupp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
      end
      item
        Name = '@KodeVls'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
      end
      item
        Name = '@Kurs'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@PPn'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
      end
      item
        Name = '@TipeBayar'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
      end
      item
        Name = '@Hari'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@TipeDisc'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
      end
      item
        Name = '@Disc'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = '@DiscRp'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@Urut'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@KodeBrg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
      end
      item
        Name = '@Qnt'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@NoSat'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
      end
      item
        Name = '@Satuan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
      end
      item
        Name = '@Isi'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@Harga'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 4
        Precision = 18
      end
      item
        Name = '@DiscP'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@DiscTot'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 4
        Precision = 18
      end
      item
        Name = '@NoPPL'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
      end
      item
        Name = '@IsClose'
        Attributes = [paNullable]
        DataType = ftBoolean
      end
      item
        Name = '@IsCloseD'
        Attributes = [paNullable]
        DataType = ftBoolean
      end
      item
        Name = '@Catatan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
      end
      item
        Name = '@IsExp'
        Attributes = [paNullable]
        DataType = ftBoolean
      end
      item
        Name = '@Tolerate'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 5
      end
      item
        Name = '@UrutPPL'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@Kodegdg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
      end
      item
        Name = '@Discpdet2'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@Discpdet3'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@Discpdet4'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@Discpdet5'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@FlagTipe'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
      end>
    Left = 162
    Top = 326
  end
  object DsQuBeli: TDataSource
    DataSet = QuBeli
    Left = 378
    Top = 120
  end
  object QuUpdatedbbeli: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From vwPerusahaan')
    Left = 490
    Top = 146
  end
  object DataSource1: TDataSource
    DataSet = QuReport
    Left = 406
    Top = 146
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
    Left = 378
    Top = 146
  end
  object frxDataPerusahaan: TfrxDBDataset
    UserName = 'frxDataPerusahaan'
    CloseDataSource = False
    FieldAliases.Strings = (
      'KodeUsaha=KodeUsaha'
      'Nama=Nama'
      'Alamat=Alamat'
      'NPWP=NPWP'
      'TglPengukuhan=TglPengukuhan'
      'Logo=Logo'
      'Direksi=Direksi'
      'Jabatan=Jabatan'
      'Kota=Kota')
    DataSet = QuUpdatedbbeli
    Left = 224
    Top = 360
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBCetakPO'
    CloseDataSource = False
    Left = 220
    Top = 330
  end
  object frxReport1: TfrxReport
    Version = '4.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39461.6751602199
    ReportOptions.LastChange = 39936.9079683796
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Memo1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  If <frxDBCetakPO."TipeBayar"> = 0 then'
      '     Memo1.Text := '#39'Pembayaran Tunai'#39
      '  else'
      
        '     Memo1.Text := '#39'Pembayaran Kredit '#39'+Inttostr(<frxDBCetakPO."' +
        'Hari">)+ '#39' Hari / '#39'+FormatDatetime('#39'DD MMM YYY'#39',<frxDBCetakPO."T' +
        'glJatuhTempo">);'
      'end;'
      ''
      ''
      ''
      'procedure PageFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <tothal>=<Page> then'
      '  begin'
      '     memo45.visible := false;'
      '  end'
      '  else'
      '   begin'
      '     memo45.visible := true;'
      '  end;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    Left = 250
    Top = 330
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 215.9
      PaperHeight = 139.7
      PaperSize = 256
      LeftMargin = 5
      RightMargin = 5
      TopMargin = 5
      BottomMargin = 5
    end
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    FileName = 'C:\DOCUME~1\admin\LOCALS~1\Temp\fr48.tmp'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 304
    Top = 326
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
    Restrictions = []
    RTLLanguage = False
    Left = 648
    Top = 192
  end
  object QuByAngkut: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    SQL.Strings = (
      'declare @NoBukti varchar(20)'
      ''
      'select '#9'@NoBukti='#39'MA /092008/00001/PBL'#39
      ''
      'update dbBeliDet set BYANGKUT=Y.Beban'
      'from dbBeliDet X'
      'left outer join'
      #9'('
      #9'Select '#9'A.NoBukti, B.Urut, B.KodeBrg,'
      
        #9#9'case when isnull(H.SumTotal,0)=0 then 0 else round(((B.Qnt*B.H' +
        'arga)*A.Handling)/H.SumTotal,2) end Beban'
      #9'From dbBeli A'
      #9'Left Outer join dbBeliDet B on B.NoBukti=a.NoBukti'
      #9'Left Outer Join'
      #9#9'(select NoBukti, sum(Qnt*Harga) SumTotal from dbBeliDet'
      #9#9'where NoBukti=@NoBukti group by NoBukti'
      #9#9') H on H.NoBukti=A.NoBukti'
      #9'where'#9'A.NoBukti=@NoBukti'
      #9') Y on Y.NoBukti=X.NoBukti and Y.Urut=X.Urut'
      'where X.NoBukti=@NoBukti')
    Left = 576
    Top = 200
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 504
    Top = 64
    object tambah: TMenuItem
      Caption = 'Tambah Kiriman'
      OnClick = tambahClick
    end
    object Koreksi: TMenuItem
      Caption = 'Koreksi Kiriman'
      OnClick = KoreksiClick
    end
    object Hapus: TMenuItem
      Caption = 'Hapus Kiriman'
      OnClick = HapusClick
    end
  end
  object sp_kiriman: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'sp_Kiriman;1'
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
        Name = '@KodeBrg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@Tanggal'
        Attributes = [paNullable]
        DataType = ftDateTime
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
        Name = '@OldTanggal'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 730
    Top = 414
  end
  object dsKirim: TDataSource
    DataSet = Qukirim
    Left = 290
    Top = 216
  end
  object Qukirim: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @NoBukti varchar(20),@Kodebrg varchar (25)'
      ''
      'select '#9'@NoBukti='#39'VSM/052009/00001/PO '#39',@kodeBrg='#39#39
      ''
      'Select '#9'NoBukti,KodeBrg,Tanggal,Qnt from dbKirimDet'
      'where'#9'NoBukti=@NoBukti and KodeBrg=@KodeBrg'
      'order by Tanggal'
      '')
    Left = 318
    Top = 216
    object QukirimTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QukirimQnt: TBCDField
      FieldName = 'Qnt'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QukirimNoBukti: TStringField
      FieldName = 'NoBukti'
    end
    object QukirimKodeBrg: TStringField
      FieldName = 'KodeBrg'
      Size = 25
    end
  end
  object dsBayarPO: TDataSource
    DataSet = QubayarPO
    Left = 754
    Top = 488
  end
  object QubayarPO: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @NoBukti varchar(20)'
      ''
      'select '#9'@NoBukti='#39'VSM/052009/00001/PO '#39
      ''
      'Select '#9'*  from dbPembayaranPO'
      'where'#9'NoBukti=@NoBukti '
      ''
      '')
    Left = 782
    Top = 488
    object QubayarPONoBukti: TStringField
      FieldName = 'NoBukti'
    end
    object QubayarPOKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 200
    end
    object QubayarPODP: TBooleanField
      FieldName = 'DP'
    end
    object QubayarPOPersentase: TBCDField
      FieldName = 'Persentase'
      DisplayFormat = ',0.00'
      Precision = 5
      Size = 2
    end
    object QubayarPOKodeVls: TStringField
      FieldName = 'KodeVls'
      Size = 15
    end
    object QubayarPONilai: TBCDField
      FieldName = 'Nilai'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object sp_pembayaranPO: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'sp_PembayaranPO;1'
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
        Name = '@Keterangan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 200
        Value = Null
      end
      item
        Name = '@KodeVls'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@DP'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Persentase'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 5
        Value = Null
      end
      item
        Name = '@Nilai'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@OldKet'
        Attributes = [paNullable]
        DataType = ftString
        Size = 200
        Value = Null
      end>
    Left = 434
    Top = 510
  end
  object QuOSPR: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From vwPerusahaan')
    Left = 490
    Top = 178
  end
  object QuBeli: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @NoBukti varchar(30)'
      ''
      'select '#9'@NoBukti='#39'SJY/0113/PO/0001'#39
      ''
      
        'Select '#9'A.NoBukti, A.NoUrut, A.Tanggal, A.TglJatuhTempo, A.KodeS' +
        'upp, C.NamaCustSupp, C.Alamat1, C.Alamat2, C.Kota,'
      '        C.Alamat1+Char(13)+C.Alamat2+Char(13)+C.kota Alamat,'
      
        #9'A.Handling, A.Keterangan, A.FakturSupp,IsExp,J.Tanggal TglKirim' +
        ','
      
        #9'A.KodeVls, D.NamaVls, A.Kurs, c.PPN, A.TipeBayar, A.Hari, A.Dis' +
        'c,'
      #9'B.Urut, B.KodeBrg, E.NamaBrg, B.Satuan, B.Qnt, B.Nosat, B.Isi,'
      
        '        B.Harga, B.DISCP, B.DISCTOT, B.NoPPL, B.UrutPPL, A.IsClo' +
        'se,B.IsClose IsCloseD,'
      
        '        case when A.Kurs=1 then 0.0 else B.SubTotal end TotalUSD' +
        ',a.KodeExp,F.NamaExp,'
      
        #9'round(B.SubTotal*A.Kurs,2) TotalIDR, round(B.NDPP*A.Kurs,2) NDP' +
        'P,'
      
        '        round(B.NPPN*A.Kurs,2) NPPN,isnull(e.Tolerate,0) Tolerat' +
        'e,'
      #9'B.BYAngkut Beban,'
      #9'round(B.SubTotal*A.Kurs,2) + B.BYAngkut Total,'
      '        H.TotDiskon, H.TotDPP, H.TotPPN, H.TotNet,'
      '        A.Kodegdg, I.Nama NamaGDG, I.Alamat ALamatGdg,'
      
        '        x.TotalX,dbo.terbilang(x.totalx) Terbilang,B.Discp2,B.Di' +
        'scp3,B.Discp4,B.Discp5'
      'From dbPO A'
      'Left Outer join dbPODet B on B.NoBukti=a.NoBukti'
      'Left Outer Join dbCustSupp C on c.KodeCustSupp=a.KodeSupp'
      'Left Outer join dbValas D on D.KodeVls=A.KodeVls'
      'Left Outer join dbBarang E on E.KodeBrg=B.KodeBrg'
      'Left Outer join dbExpedisi F On F.KodeExp=A.KodeExp'
      'Left Outer Join vwMasterPO H on H.NoBukti=A.NoBukti'
      
        'Left Outer Join (select KodeBrg,NoBukti,Min(Tanggal)Tanggal from' +
        ' dbKirimDet group by KodeBrg,NoBukti) J On J.KodeBrg=B.KodeBrg a' +
        'nd J.NoBukti=B.NoBukti'
      
        'left outer join (select A.Nobukti, sum(round(B.SubTotal*A.Kurs,2' +
        ') + B.BYAngkut)  totalx from Dbpo A'
      
        '                        left outer join dbPODet B on A.nobukti =' +
        ' B.nobukti group By A.NObukti) X on A.nobukti = x.nobukti'
      'Left Outer join dbgudang I on I.Kodegdg=A.kodegdg'
      'where'#9'A.NoBukti=@NoBukti'
      'order by B.Urut'
      '')
    Left = 414
    Top = 120
    object QuBeliNoBukti: TStringField
      FieldName = 'NoBukti'
    end
    object QuBeliNoUrut: TStringField
      FieldName = 'NoUrut'
      Size = 10
    end
    object QuBeliTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuBeliTglJatuhTempo: TDateTimeField
      FieldName = 'TglJatuhTempo'
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
    object QuBeliAlamat2: TStringField
      FieldName = 'Alamat2'
      Size = 100
    end
    object QuBeliKota: TStringField
      FieldName = 'Kota'
      Size = 100
    end
    object QuBeliAlamat: TStringField
      FieldName = 'Alamat'
      ReadOnly = True
      Size = 302
    end
    object QuBeliHandling: TBCDField
      FieldName = 'Handling'
      Precision = 18
      Size = 2
    end
    object QuBeliKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 200
    end
    object QuBeliFakturSupp: TStringField
      FieldName = 'FakturSupp'
      Size = 50
    end
    object QuBeliIsExp: TBooleanField
      FieldName = 'IsExp'
    end
    object QuBeliTglKirim: TDateTimeField
      FieldName = 'TglKirim'
      ReadOnly = True
    end
    object QuBeliKodeVls: TStringField
      FieldName = 'KodeVls'
      Size = 15
    end
    object QuBeliNamaVls: TStringField
      FieldName = 'NamaVls'
      Size = 40
    end
    object QuBeliKurs: TBCDField
      FieldName = 'Kurs'
      Precision = 18
      Size = 2
    end
    object QuBeliPPN: TWordField
      FieldName = 'PPN'
    end
    object QuBeliTipeBayar: TWordField
      FieldName = 'TipeBayar'
    end
    object QuBeliHari: TIntegerField
      FieldName = 'Hari'
    end
    object QuBeliDisc: TFloatField
      FieldName = 'Disc'
    end
    object QuBeliUrut: TIntegerField
      FieldName = 'Urut'
    end
    object QuBeliKodeBrg: TStringField
      FieldName = 'KodeBrg'
      Size = 25
    end
    object QuBeliNamaBrg: TStringField
      FieldName = 'NamaBrg'
      Size = 100
    end
    object QuBeliSatuan: TStringField
      FieldName = 'Satuan'
      Size = 5
    end
    object QuBeliQnt: TBCDField
      FieldName = 'Qnt'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliNosat: TWordField
      FieldName = 'Nosat'
    end
    object QuBeliIsi: TBCDField
      FieldName = 'Isi'
      Precision = 18
      Size = 2
    end
    object QuBeliHarga: TBCDField
      FieldName = 'Harga'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QuBeliDISCP: TBCDField
      FieldName = 'DISCP'
      Precision = 18
      Size = 2
    end
    object QuBeliDISCTOT: TBCDField
      FieldName = 'DISCTOT'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliNoPPL: TStringField
      FieldName = 'NoPPL'
      Size = 50
    end
    object QuBeliIsClose: TBooleanField
      FieldName = 'IsClose'
    end
    object QuBeliIsCloseD: TBooleanField
      FieldName = 'IsCloseD'
    end
    object QuBeliTotalUSD: TBCDField
      FieldName = 'TotalUSD'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 5
    end
    object QuBeliKodeExp: TStringField
      FieldName = 'KodeExp'
    end
    object QuBeliNamaExp: TStringField
      FieldName = 'NamaExp'
      Size = 40
    end
    object QuBeliTotalIDR: TBCDField
      FieldName = 'TotalIDR'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliNDPP: TFloatField
      FieldName = 'NDPP'
      ReadOnly = True
    end
    object QuBeliNPPN: TFloatField
      FieldName = 'NPPN'
      ReadOnly = True
    end
    object QuBeliTolerate: TBCDField
      FieldName = 'Tolerate'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 5
      Size = 2
    end
    object QuBeliBeban: TBCDField
      FieldName = 'Beban'
      Precision = 18
      Size = 2
    end
    object QuBeliTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object QuBeliTotDiskon: TFloatField
      FieldName = 'TotDiskon'
      ReadOnly = True
    end
    object QuBeliTotDPP: TFloatField
      FieldName = 'TotDPP'
      ReadOnly = True
    end
    object QuBeliTotPPN: TFloatField
      FieldName = 'TotPPN'
      ReadOnly = True
    end
    object QuBeliTotNet: TFloatField
      FieldName = 'TotNet'
      ReadOnly = True
    end
    object QuBeliUrutPPL: TIntegerField
      FieldName = 'UrutPPL'
    end
    object QuBeliKodegdg: TStringField
      FieldName = 'Kodegdg'
      Size = 15
    end
    object QuBeliNamaGDG: TStringField
      FieldName = 'NamaGDG'
      Size = 40
    end
    object QuBeliALamatGdg: TStringField
      FieldName = 'ALamatGdg'
      Size = 100
    end
    object QuBeliTotalX: TBCDField
      FieldName = 'TotalX'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object QuBeliTerbilang: TStringField
      FieldName = 'Terbilang'
      ReadOnly = True
      Size = 250
    end
    object QuBeliDiscp2: TBCDField
      FieldName = 'Discp2'
      Precision = 18
      Size = 2
    end
    object QuBeliDiscp3: TBCDField
      FieldName = 'Discp3'
      Precision = 18
      Size = 2
    end
    object QuBeliDiscp4: TBCDField
      FieldName = 'Discp4'
      Precision = 18
      Size = 2
    end
    object QuBeliDiscp5: TBCDField
      FieldName = 'Discp5'
      Precision = 18
      Size = 2
    end
  end
  object QuGridKirim: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @NoBukti varchar(30)'
      ''
      'select '#9'@NoBukti='#39'SJY/0113/PO/0001'#39
      ''
      
        'select X.*, Y.Tanggal1, Y.Qnt1, Y.Tanggal2, Y.Qnt2, Y.Tanggal3, ' +
        'Y.Qnt3, Y.Tanggal4, Y.Qnt4,'
      
        'Y.Tanggal5, Y.Qnt5, Y.Tanggal6, Y.Qnt6, Y.Tanggal7, Y.Qnt7, Y.Ta' +
        'nggal8, Y.Qnt8, Y.SumQntKirim'
      'from'
      '('
      
        'Select '#9'left(B.KodeBrg+'#39'000000000000000000000000000000'#39',30)+cast' +
        '(B.NoSat as varchar(1)) KeyKodeBrg,'
      'A.NoBukti, B.KodeBrg, E.NamaBrg, B.NoSat, B.Satuan, sum(Qnt) Qnt'
      'From dbPO A'
      'Left Outer join dbPODet B on B.NoBukti=a.NoBukti'
      'Left Outer join dbBarang E on E.KodeBrg=B.KodeBrg'
      'where'#9'A.NoBukti=@NoBukti'
      'group by A.NoBukti, B.KodeBrg, E.NamaBrg, B.NoSat, B.Satuan'
      ') X'
      'left outer join'
      '('
      'select NoBukti, KodeBrg, NoSat, '
      'max(case when Urut=1 then Tanggal else null end) Tanggal1,'
      'max(case when Urut=1 then Qnt else null end) Qnt1,'
      'max(case when Urut=2 then Tanggal else null end) Tanggal2,'
      'max(case when Urut=2 then Qnt else null end) Qnt2,'
      'max(case when Urut=3 then Tanggal else null end) Tanggal3,'
      'max(case when Urut=3 then Qnt else null end) Qnt3,'
      'max(case when Urut=4 then Tanggal else null end) Tanggal4,'
      'max(case when Urut=4 then Qnt else null end) Qnt4,'
      'max(case when Urut=5 then Tanggal else null end) Tanggal5,'
      'max(case when Urut=5 then Qnt else null end) Qnt5,'
      'max(case when Urut=6 then Tanggal else null end) Tanggal6,'
      'max(case when Urut=6 then Qnt else null end) Qnt6,'
      'max(case when Urut=7 then Tanggal else null end) Tanggal7,'
      'max(case when Urut=7 then Qnt else null end) Qnt7,'
      'max(case when Urut=8 then Tanggal else null end) Tanggal8,'
      'max(case when Urut=8 then Qnt else null end) Qnt8,'
      'SUM(Qnt) SumQntKirim '
      'from DBKirimDET'
      'where NoBukti=@NoBukti'
      'group by NoBukti, KodeBrg, NoSat'
      
        ') Y on Y.NoBukti=X.NoBukti and Y.KodeBrg=X.KodeBrg and Y.NoSat=X' +
        '.NoSat'
      'order by X.KodeBrg, X.NOSAT desc'
      '')
    Left = 142
    Top = 208
    object QuGridKirimKeyKodeBrg: TStringField
      FieldName = 'KeyKodeBrg'
      ReadOnly = True
      Size = 31
    end
    object QuGridKirimNoBukti: TStringField
      FieldName = 'NoBukti'
    end
    object QuGridKirimKodeBrg: TStringField
      FieldName = 'KodeBrg'
      Size = 25
    end
    object QuGridKirimNamaBrg: TStringField
      FieldName = 'NamaBrg'
      Size = 100
    end
    object QuGridKirimNoSat: TWordField
      FieldName = 'NoSat'
    end
    object QuGridKirimSatuan: TStringField
      FieldName = 'Satuan'
      Size = 5
    end
    object QuGridKirimQnt: TBCDField
      FieldName = 'Qnt'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object QuGridKirimTanggal1: TDateTimeField
      FieldName = 'Tanggal1'
      ReadOnly = True
    end
    object QuGridKirimQnt1: TBCDField
      FieldName = 'Qnt1'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuGridKirimTanggal2: TDateTimeField
      FieldName = 'Tanggal2'
      ReadOnly = True
    end
    object QuGridKirimQnt2: TBCDField
      FieldName = 'Qnt2'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuGridKirimTanggal3: TDateTimeField
      FieldName = 'Tanggal3'
      ReadOnly = True
    end
    object QuGridKirimQnt3: TBCDField
      FieldName = 'Qnt3'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuGridKirimTanggal4: TDateTimeField
      FieldName = 'Tanggal4'
      ReadOnly = True
    end
    object QuGridKirimQnt4: TBCDField
      FieldName = 'Qnt4'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuGridKirimTanggal5: TDateTimeField
      FieldName = 'Tanggal5'
      ReadOnly = True
    end
    object QuGridKirimQnt5: TBCDField
      FieldName = 'Qnt5'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuGridKirimTanggal6: TDateTimeField
      FieldName = 'Tanggal6'
      ReadOnly = True
    end
    object QuGridKirimQnt6: TBCDField
      FieldName = 'Qnt6'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuGridKirimTanggal7: TDateTimeField
      FieldName = 'Tanggal7'
      ReadOnly = True
    end
    object QuGridKirimQnt7: TBCDField
      FieldName = 'Qnt7'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuGridKirimTanggal8: TDateTimeField
      FieldName = 'Tanggal8'
      ReadOnly = True
    end
    object QuGridKirimQnt8: TBCDField
      FieldName = 'Qnt8'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuGridKirimSumQntKirim: TBCDField
      FieldName = 'SumQntKirim'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
  end
  object DsgridKirim: TDataSource
    DataSet = QuGridKirim
    Left = 106
    Top = 208
  end
end
