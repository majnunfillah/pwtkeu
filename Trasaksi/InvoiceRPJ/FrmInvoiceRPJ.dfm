object FrInvoiceRPJ: TFrInvoiceRPJ
  Left = 117
  Top = 110
  Width = 1294
  Height = 624
  Caption = 'Invoice Retur Penjualan'
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
    Width = 1286
    Height = 205
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Shape4: TShape
      Left = 7
      Top = 117
      Width = 994
      Height = 2
      Brush.Color = clBlack
    end
    object Label5: TLabel
      Left = 526
      Top = 42
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
      Left = 523
      Top = 67
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
      Left = 546
      Top = 90
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
    object Label29: TLabel
      Left = 815
      Top = 128
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
      Left = 902
      Top = 126
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
      Left = 795
      Top = 153
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
    object Shape6: TShape
      Left = 109
      Top = 36
      Width = 384
      Height = 76
      Brush.Color = 14220537
      Pen.Color = clSilver
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object LNamaCustSupp: TLabel
      Left = 115
      Top = 36
      Width = 370
      Height = 16
      AutoSize = False
      Caption = 'LNamaCustSupp'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object LAlamatCustSupp: TLabel
      Left = 115
      Top = 51
      Width = 370
      Height = 57
      AutoSize = False
      Caption = 'LAlamatCustSupp'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object Label42: TLabel
      Left = 546
      Top = 152
      Width = 44
      Height = 16
      Caption = 'Tgl SPB'
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
      Left = 46
      Top = 10
      Width = 55
      Height = 16
      Caption = 'Customer'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 21
      Top = 127
      Width = 80
      Height = 16
      Caption = 'No. Retur Jual'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 545
      Top = 127
      Width = 45
      Height = 16
      Caption = 'No. SPB'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label14: TLabel
      Left = 318
      Top = 183
      Width = 39
      Height = 16
      Caption = 'No. OP'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label15: TLabel
      Left = 60
      Top = 152
      Width = 41
      Height = 16
      Caption = 'Retur ?'
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
    object Label1: TLabel
      Left = 294
      Top = 129
      Width = 63
      Height = 16
      Caption = 'No. Invoice'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label17: TLabel
      Left = 291
      Top = 154
      Width = 66
      Height = 16
      Caption = 'Tgl. Invoice'
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
    object Label18: TLabel
      Left = 520
      Top = 177
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
    object Label19: TLabel
      Left = 684
      Top = 180
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
    object Label41: TLabel
      Left = 1048
      Top = 111
      Width = 79
      Height = 16
      Caption = 'Retur Barang '
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
    object Label53: TLabel
      Left = 1064
      Top = 155
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
      Visible = False
    end
    object NoUrut: TEdit
      Left = 600
      Top = 38
      Width = 55
      Height = 24
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Ctl3D = True
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 5
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 13
      OnChange = NoUrutChange
      OnEnter = TanggalEnter
      OnExit = NoUrutExit
      OnKeyDown = NoUrutKeyDown
    end
    object NoBukti: TEdit
      Left = 600
      Top = 63
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
      TabOrder = 14
    end
    object Tanggal: TDateEdit
      Left = 600
      Top = 87
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
      TabOrder = 1
      OnChange = TanggalChange
      OnEnter = TanggalEnter
      OnKeyDown = TanggalKeyDown
    end
    object KodeVls: TEdit
      Left = 856
      Top = 124
      Width = 43
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
      MaxLength = 3
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 10
      Text = 'IDR'
      OnChange = TanggalChange
      OnEnter = KodeVlsEnter
      OnExit = KodeVlsExit
      OnKeyDown = TanggalKeyDown
    end
    object Kurs: TPBNumEdit
      Left = 932
      Top = 124
      Width = 65
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
      OnChange = TanggalChange
      OnEnter = TanggalEnter
      OnKeyDown = TanggalKeyDown
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
      Value = 1
    end
    object PPN1: TComboBox
      Left = 816
      Top = 13
      Width = 141
      Height = 24
      BevelKind = bkSoft
      Style = csDropDownList
      Ctl3D = True
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
      TabOrder = 12
      Text = 'NONE'
      Visible = False
      OnChange = TanggalChange
      OnEnter = TanggalEnter
      OnKeyDown = TanggalKeyDown
      Items.Strings = (
        'NONE'
        'Exclude'
        'Include')
    end
    object TanggalSPB: TDateEdit
      Left = 600
      Top = 149
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
      TabOrder = 7
      OnChange = TanggalChange
      OnKeyDown = TanggalKeyDown
    end
    object KodeCustSupp: TEdit
      Left = 109
      Top = 9
      Width = 132
      Height = 24
      TabStop = False
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
      OnEnter = KodeCustSuppEnter
      OnExit = KodeCustSuppExit
      OnKeyDown = KodeCustSuppKeyDown
    end
    object NoPBL: TEdit
      Left = 109
      Top = 124
      Width = 172
      Height = 24
      BevelKind = bkSoft
      BorderStyle = bsNone
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnEnter = NoPBLEnter
      OnExit = NoPBLExit
      OnKeyDown = TanggalKeyDown
    end
    object SPB: TEdit
      Left = 600
      Top = 124
      Width = 179
      Height = 24
      BevelKind = bkSoft
      BorderStyle = bsNone
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 50
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
      OnChange = TanggalChange
      OnKeyDown = TanggalKeyDown
    end
    object Tipe: TComboBox
      Left = 109
      Top = 149
      Width = 92
      Height = 24
      BevelKind = bkSoft
      Style = csDropDownList
      Ctl3D = True
      Enabled = False
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
      TabOrder = 3
      Text = 'Lokal'
      Visible = False
      OnChange = TanggalChange
      OnKeyDown = TanggalKeyDown
      Items.Strings = (
        'Lokal'
        'Export')
    end
    object NoInvoice: TEdit
      Left = 365
      Top = 124
      Width = 140
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
      MaxLength = 50
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      OnChange = TanggalChange
      OnEnter = TanggalEnter
      OnExit = NoInvoiceExit
      OnKeyDown = TanggalKeyDown
    end
    object TglInvoice: TDateEdit
      Left = 365
      Top = 149
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
      TabOrder = 5
      OnChange = TanggalChange
      OnEnter = TanggalEnter
      OnKeyDown = TanggalKeyDown
    end
    object TipeBayar: TComboBox
      Left = 601
      Top = 175
      Width = 73
      Height = 22
      BevelKind = bkFlat
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 14
      ItemIndex = 0
      MaxLength = 1
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
      Text = 'TUNAI'
      OnChange = TanggalChange
      OnKeyDown = TanggalKeyDown
      Items.Strings = (
        'TUNAI'
        'KREDIT'
        'TELEGRAPHIC TRANSFER'
        'IRREVOCABLE LETTER OF CREDIT')
    end
    object Hari: TPBNumEdit
      Left = 708
      Top = 175
      Width = 33
      Height = 22
      Alignment = taRightJustify
      Ctl3D = False
      Decimals = -1
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
      TabOrder = 9
    end
    object Flagmenu: TComboBox
      Left = 1133
      Top = 107
      Width = 172
      Height = 24
      BevelKind = bkSoft
      Style = csDropDownList
      Ctl3D = True
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
      TabOrder = 15
      Text = 'Barang Jadi'
      Visible = False
      OnChange = TanggalChange
      OnKeyDown = TanggalKeyDown
      Items.Strings = (
        'Barang Jadi'
        'Bahan Baku dan Lain-lain')
    end
    object PPN: TComboBox
      Left = 855
      Top = 154
      Width = 100
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
      TabOrder = 16
      Text = 'NONE'
      OnChange = TanggalChange
      OnKeyDown = TanggalKeyDown
      Items.Strings = (
        'NONE'
        'Exclude'
        'Include')
    end
    object Pemungut: TCheckBox
      Left = 854
      Top = 178
      Width = 97
      Height = 17
      Caption = 'Pemungut'
      TabOrder = 17
      OnClick = PemungutClick
      OnExit = PemungutExit
    end
    object Ppnp: TPBNumEdit
      Left = 1016
      Top = 155
      Width = 40
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
      OnKeyDown = TanggalKeyDown
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 18
      Visible = False
    end
    object CPpnP: TComboBox
      Left = 959
      Top = 154
      Width = 55
      Height = 24
      BevelKind = bkFlat
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 1
      MaxLength = 1
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 19
      Text = '11'
      OnChange = TanggalChange
      OnClick = CPpnPClick
      OnKeyDown = TanggalKeyDown
      Items.Strings = (
        '10'
        '11'
        '12')
    end
  end
  object dxPageControl1: TdxPageControl
    Left = 0
    Top = 205
    Width = 1286
    Height = 385
    ActivePage = dxTabSheet1
    Align = alClient
    HideButtons = False
    HotTrack = False
    MultiLine = False
    OwnerDraw = False
    RaggedRight = False
    ScrollOpposite = False
    TabHeight = 0
    TabOrder = 1
    TabPosition = dxtpTop
    TabWidth = 0
    object dxTabSheet1: TdxTabSheet
      Caption = 'Daftar Barang'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1286
        Height = 186
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Panel4: TPanel
          Left = 0
          Top = 91
          Width = 1286
          Height = 95
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 1286
            Height = 59
            Align = alBottom
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label35: TLabel
              Left = 10
              Top = 9
              Width = 48
              Height = 16
              Caption = 'Discount'
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
            object Label23: TLabel
              Left = 266
              Top = 9
              Width = 85
              Height = 16
              Caption = 'PPN 10%/ VAT'
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
              Left = 514
              Top = 9
              Width = 115
              Height = 16
              Caption = 'Freight / Biaya kirim'
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
            object Label26: TLabel
              Left = 514
              Top = 35
              Width = 99
              Height = 16
              Caption = 'Lain-lain / Others'
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
              Left = 70
              Top = 5
              Width = 51
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
              OnEnter = TanggalEnter
              OnKeyDown = HeaderBawahKeyDown
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
            end
            object DiskonRp: TPBNumEdit
              Left = 136
              Top = 5
              Width = 108
              Height = 24
              TabStop = False
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
              OnEnter = TanggalEnter
              OnKeyDown = HeaderBawahKeyDown
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
            end
            object PPN10VAT: TPBNumEdit
              Left = 368
              Top = 5
              Width = 108
              Height = 24
              TabStop = False
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
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object Freight: TPBNumEdit
              Left = 664
              Top = 5
              Width = 108
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
              OnEnter = TanggalEnter
              OnKeyDown = HeaderBawahKeyDown
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 3
            end
            object Lain2: TPBNumEdit
              Left = 664
              Top = 31
              Width = 108
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
              OnEnter = TanggalEnter
              OnKeyDown = HeaderBawahKeyDown
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 4
            end
          end
          object Panel5: TPanel
            Left = 0
            Top = 59
            Width = 1286
            Height = 36
            Align = alBottom
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 1
            object TambahBtn: TSpeedButton
              Left = 4
              Top = 4
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
            object KoreksiBtn: TSpeedButton
              Left = 79
              Top = 4
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
            object HapusBtn: TSpeedButton
              Left = 154
              Top = 4
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
            object Cetak: TSpeedButton
              Left = 229
              Top = 4
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
            object SpeedButton8: TSpeedButton
              Left = 303
              Top = 4
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
        object dxDBGrid1: TdxDBGrid
          Left = 0
          Top = 0
          Width = 1286
          Height = 91
          Bands = <
            item
              Fixed = bfLeft
            end
            item
              Caption = 'Satuan 2'
            end
            item
              Caption = 'Satuan 1'
            end
            item
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
            Visible = False
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'URUT'
          end
          object dxDBGrid1Column25: TdxDBGridColumn
            Caption = 'No'
            Width = 32
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UrutTrans'
          end
          object dxDBGrid1KODEBRG: TdxDBGridMaskColumn
            Caption = 'Kode Barang'
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KODEBRG'
          end
          object dxDBGrid1NamaBrg: TdxDBGridMaskColumn
            Caption = 'Nama Barang'
            Width = 250
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NamaBrg'
          end
          object dxDBGrid1SAT_2: TdxDBGridMaskColumn
            Caption = 'Sat'
            Width = 40
            BandIndex = 1
            RowIndex = 0
            FieldName = 'SAT_2'
          end
          object dxDBGrid1QNT2: TdxDBGridMaskColumn
            Caption = 'Qnt'
            HeaderAlignment = taRightJustify
            Width = 70
            BandIndex = 1
            RowIndex = 0
            FieldName = 'QNT2'
            SummaryFooterType = cstSum
            SummaryFooterFormat = ',0.##'
          end
          object dxDBGrid1ISI: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 1
            RowIndex = 0
            FieldName = 'ISI'
          end
          object dxDBGrid1SAT_1: TdxDBGridMaskColumn
            Caption = 'Sat'
            Width = 40
            BandIndex = 2
            RowIndex = 0
            FieldName = 'SAT_1'
          end
          object dxDBGrid1QNT: TdxDBGridMaskColumn
            Caption = 'Qnt'
            HeaderAlignment = taRightJustify
            Width = 70
            BandIndex = 2
            RowIndex = 0
            FieldName = 'QNT'
            SummaryFooterType = cstSum
            SummaryFooterFormat = ',0.##'
          end
          object dxDBGrid1NOPO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 3
            RowIndex = 0
            FieldName = 'NOPO'
          end
          object dxDBGrid1URUTPO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 3
            RowIndex = 0
            FieldName = 'URUTPO'
          end
          object dxDBGrid1Keterangan: TdxDBGridMaskColumn
            Visible = False
            Width = 200
            BandIndex = 3
            RowIndex = 0
            FieldName = 'Keterangan'
          end
          object dxDBGrid1HARGA: TdxDBGridMaskColumn
            Caption = 'Harga'
            HeaderAlignment = taRightJustify
            Width = 90
            BandIndex = 3
            RowIndex = 0
            FieldName = 'HARGA'
          end
          object dxDBGrid1DISCTOT: TdxDBGridMaskColumn
            Caption = 'Diskon'
            HeaderAlignment = taRightJustify
            Width = 90
            BandIndex = 3
            RowIndex = 0
            FieldName = 'DISCTOT'
          end
          object dxDBGrid1HRGNETTO: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Visible = False
            BandIndex = 3
            RowIndex = 0
            FieldName = 'HRGNETTO'
          end
          object dxDBGrid1NDISKON: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Visible = False
            BandIndex = 3
            RowIndex = 0
            FieldName = 'NDISKON'
          end
          object dxDBGrid1SUBTOTAL: TdxDBGridMaskColumn
            Caption = 'Sub Total $'
            HeaderAlignment = taRightJustify
            Visible = False
            Width = 110
            BandIndex = 3
            RowIndex = 0
            FieldName = 'SUBTOTAL'
            SummaryFooterType = cstSum
            SummaryFooterFormat = ',0.00'
          end
          object dxDBGrid1NDPP: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Visible = False
            BandIndex = 3
            RowIndex = 0
            FieldName = 'NDPP'
          end
          object dxDBGrid1NPPN: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Visible = False
            BandIndex = 3
            RowIndex = 0
            FieldName = 'NPPN'
          end
          object dxDBGrid1NNET: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Visible = False
            BandIndex = 3
            RowIndex = 0
            FieldName = 'NNET'
          end
          object dxDBGrid1SUBTOTALRp: TdxDBGridMaskColumn
            Caption = 'Sub Total Rp'
            HeaderAlignment = taRightJustify
            Width = 120
            BandIndex = 3
            RowIndex = 0
            FieldName = 'SUBTOTALRp'
            SummaryFooterType = cstSum
            SummaryFooterFormat = ',0.00'
          end
          object dxDBGrid1BYANGKUT: TdxDBGridMaskColumn
            Caption = 'Beban'
            HeaderAlignment = taRightJustify
            Visible = False
            Width = 100
            BandIndex = 3
            RowIndex = 0
            FieldName = 'BYANGKUT'
            SummaryFooterType = cstSum
            SummaryFooterFormat = ',0.00'
          end
          object dxDBGrid1NDPPRp: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Visible = False
            BandIndex = 3
            RowIndex = 0
            FieldName = 'NDPPRp'
          end
          object dxDBGrid1NPPNRp: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Visible = False
            BandIndex = 3
            RowIndex = 0
            FieldName = 'NPPNRp'
          end
          object dxDBGrid1NNETRp: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Visible = False
            BandIndex = 3
            RowIndex = 0
            FieldName = 'NNETRp'
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 186
        Width = 1286
        Height = 173
        Align = alBottom
        BevelOuter = bvNone
        BorderWidth = 1
        TabOrder = 1
        Visible = False
        object LNamaBrg: TRxLabel
          Left = 222
          Top = 7
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
          Top = 7
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
          Left = 178
          Top = 139
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
        object Label3: TLabel
          Left = 432
          Top = 32
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
        object Label7: TLabel
          Left = 41
          Top = 32
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
        object Label6: TLabel
          Left = 54
          Top = 56
          Width = 34
          Height = 16
          Caption = 'Harga'
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
        object Label8: TLabel
          Left = 49
          Top = 80
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
        end
        object Label9: TLabel
          Left = 45
          Top = 104
          Width = 42
          Height = 16
          Caption = 'Disc Rp'
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
          Left = 299
          Top = 32
          Width = 38
          Height = 16
          Caption = '[ . . . ]'
        end
        object LSatuan2: TLabel
          Left = 757
          Top = 5
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
          Left = 909
          Top = 5
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
        object Label43: TLabel
          Left = 144
          Top = 79
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
        object Label44: TLabel
          Left = 198
          Top = 79
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
        object Label45: TLabel
          Left = 254
          Top = 79
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
        object Label46: TLabel
          Left = 310
          Top = 79
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
        object KodeBrg: TEdit
          Left = 100
          Top = 4
          Width = 117
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
          MaxLength = 25
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnEnter = KodeBrgEnter
          OnExit = KodeBrgExit
          OnKeyDown = KodeBrgKeyDown
        end
        object BitBtn1: TBitBtn
          Left = 100
          Top = 139
          Width = 75
          Height = 25
          Caption = '&Simpan'
          TabOrder = 11
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
        object Ket: TEdit
          Left = 527
          Top = 29
          Width = 258
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
          MaxLength = 50
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 10
          Visible = False
        end
        object Harga: TPBNumEdit
          Left = 100
          Top = 53
          Width = 93
          Height = 22
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnChange = DiscP1Exit
          OnEnter = HargaEnter
          OnExit = HargaExit
          OnKeyDown = HargaKeyDown
          ParentCtl3D = False
          TabOrder = 3
        end
        object DiscP1: TPBNumEdit
          Left = 100
          Top = 76
          Width = 45
          Height = 22
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          MaxValue = 100
          NumberFormat = Thousands
          OnChange = DiscP1Exit
          OnEnter = DiscP1Enter
          OnExit = DiscP1Exit
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 4
        end
        object DiscRp1: TPBNumEdit
          Left = 100
          Top = 101
          Width = 93
          Height = 22
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnEnter = DiscP1Enter
          OnExit = DiscP1Exit
          OnKeyDown = HargaKeyDown
          ParentCtl3D = False
          TabOrder = 9
        end
        object Qnt: TPBNumEdit
          Left = 100
          Top = 29
          Width = 93
          Height = 22
          Alignment = taRightJustify
          DisabledColor = clWindow
          Enabled = False
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 1
        end
        object Nosat: TComboBox
          Left = 194
          Top = 29
          Width = 103
          Height = 24
          BevelKind = bkSoft
          Ctl3D = True
          Enabled = False
          ItemHeight = 16
          ParentCtl3D = False
          TabOrder = 2
          Text = 'Pilih Satuan'
        end
        object Qnt2: TPBNumEdit
          Left = 660
          Top = 1
          Width = 93
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          ParentCtl3D = False
          TabOrder = 12
          Value = 1
          Visible = False
        end
        object Qnt1: TPBNumEdit
          Left = 804
          Top = 1
          Width = 93
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          ParentCtl3D = False
          TabOrder = 13
          Value = 1
          Visible = False
        end
        object DiscPDet2: TPBNumEdit
          Left = 151
          Top = 76
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
          OnChange = DiscP1Exit
          OnEnter = DiscP1Enter
          OnExit = DiscP1Exit
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 5
        end
        object DiscPDet3: TPBNumEdit
          Left = 206
          Top = 76
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
          OnChange = DiscP1Exit
          OnEnter = DiscP1Enter
          OnExit = DiscP1Exit
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 6
        end
        object DIscPDet4: TPBNumEdit
          Left = 262
          Top = 76
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
          OnChange = DiscP1Exit
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 7
        end
        object DiscPDet5: TPBNumEdit
          Left = 318
          Top = 76
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
          OnChange = DiscP1Exit
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 8
        end
      end
    end
    object dxTabSheet2: TdxTabSheet
      Caption = 'Faktur Pajak Masukan dan PPh'
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 1286
        Height = 196
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Panel8: TPanel
          Left = 0
          Top = 163
          Width = 1012
          Height = 33
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          object Panel9: TPanel
            Left = 0
            Top = 0
            Width = 1012
            Height = 33
            Align = alBottom
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 0
            object SpeedButton2: TSpeedButton
              Left = 227
              Top = 2
              Width = 75
              Height = 28
              Caption = '&Cetak'
              Flat = True
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
              Visible = False
            end
            object SpeedButton3: TSpeedButton
              Left = 152
              Top = 2
              Width = 75
              Height = 28
              Caption = '&Hapus'
              Flat = True
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
              OnClick = SpeedButton3Click
            end
            object SpeedButton4: TSpeedButton
              Left = 77
              Top = 2
              Width = 75
              Height = 28
              Caption = '&Koreksi'
              Flat = True
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
              OnClick = SpeedButton4Click
            end
            object SpeedButton5: TSpeedButton
              Left = 2
              Top = 2
              Width = 75
              Height = 28
              Caption = '&Tambah'
              Flat = True
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
              OnClick = SpeedButton5Click
            end
            object SpeedButton6: TSpeedButton
              Left = 302
              Top = 2
              Width = 23
              Height = 28
              Flat = True
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
              Visible = False
            end
          end
        end
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 1012
          Height = 163
          Align = alClient
          TabOrder = 1
          LookAndFeel.Kind = lfFlat
          object TvMasterPajak: TcxGridDBBandedTableView
            OnKeyDown = wwDBGrid1KeyDown
            DataController.DataSource = DsBiayaPO
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'NPPn'
                Column = TvMasterPajakNPPn
              end
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'nPPh'
                Column = TvMasterPajaknPPh
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.CellAutoHeight = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            Styles.StyleSheet = DM.cxGridBandStyleHd
            Styles.Header = DM.cxStyle8
            Styles.BandHeader = DM.cxStyle8
            Bands = <
              item
                Caption = 'Deskripsi'
                FixedKind = fkLeft
                Width = 500
              end
              item
                Caption = 'Faktur Pajak'
              end
              item
                Caption = 'PPh'
              end>
            object TvMasterPajakNPWP: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NPWP'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 247
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object TvMasterPajakNamaPKP: TcxGridDBBandedColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'NamaPKP'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 421
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object TvMasterPajakAlamatPKP: TcxGridDBBandedColumn
              Caption = 'Alamat'
              DataBinding.FieldName = 'AlamatPKP'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 682
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object TvMasterPajakNOFPJ: TcxGridDBBandedColumn
              Caption = 'No. Faktur Pajak'
              DataBinding.FieldName = 'NOFPJ'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 179
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object TvMasterPajakTGLFPJ: TcxGridDBBandedColumn
              Caption = 'Tanggal Faktur Pajak'
              DataBinding.FieldName = 'TGLFPJ'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 89
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object TvMasterPajakNPPn: TcxGridDBBandedColumn
              Caption = 'Jumlah'
              DataBinding.FieldName = 'NPPn'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object TvMasterPajakTglLaporFPJ: TcxGridDBBandedColumn
              Caption = 'Tanggal Lapor'
              DataBinding.FieldName = 'TglLaporFPJ'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 86
              Position.BandIndex = 1
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object TvMasterPajakTipePPh: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TipePPh'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object TvMasterPajakMyPPh: TcxGridDBBandedColumn
              Caption = 'PPh'
              DataBinding.FieldName = 'MyPPh'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object TvMasterPajakNoPPh: TcxGridDBBandedColumn
              Caption = 'No. Bukti Potong'
              DataBinding.FieldName = 'NoPPh'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 179
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object TvMasterPajakTglPPh: TcxGridDBBandedColumn
              Caption = 'Tanggal PPh'
              DataBinding.FieldName = 'TglPPh'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Position.BandIndex = 2
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object TvMasterPajaknPPh: TcxGridDBBandedColumn
              Caption = 'Jumlah'
              DataBinding.FieldName = 'nPPh'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
              Position.BandIndex = 2
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object TvMasterPajakTglLaporPPh: TcxGridDBBandedColumn
              Caption = 'Tanggal Lapor PPh'
              DataBinding.FieldName = 'TglLaporPPh'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 80
              Position.BandIndex = 2
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object TvMasterPajakAlamatPKP1: TcxGridDBBandedColumn
              DataBinding.FieldName = 'AlamatPKP1'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object TvMasterPajakAlamatPKP2: TcxGridDBBandedColumn
              DataBinding.FieldName = 'AlamatPKP2'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object TvMasterPajakKotaPKP: TcxGridDBBandedColumn
              DataBinding.FieldName = 'KotaPKP'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object TvMasterPajakMyID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MyID'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object TvMasterPajakPerk_PPh: TcxGridDBBandedColumn
              Caption = 'Perkiraan'
              DataBinding.FieldName = 'Perk_PPh'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 80
              Position.BandIndex = 2
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object TvMasterPajakNamaPerk_PPh: TcxGridDBBandedColumn
              Caption = 'Nama Perkiraan'
              DataBinding.FieldName = 'NamaPerk_PPh'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 250
              Position.BandIndex = 2
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = TvMasterPajak
          end
        end
      end
      object Panel10: TPanel
        Left = 0
        Top = 196
        Width = 1286
        Height = 163
        Align = alBottom
        BevelOuter = bvNone
        BorderWidth = 1
        TabOrder = 1
        Visible = False
        object SpeedButton7: TSpeedButton
          Left = 139
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
          OnClick = SpeedButton7Click
        end
        object Label20: TLabel
          Left = 456
          Top = 6
          Width = 94
          Height = 16
          Caption = 'No. Faktur Pajak'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label21: TLabel
          Left = 456
          Top = 30
          Width = 69
          Height = 16
          Caption = 'Tanggal FPJ'
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
          Left = 456
          Top = 53
          Width = 44
          Height = 16
          Caption = 'Jumlah '
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
        object Label25: TLabel
          Left = 456
          Top = 78
          Width = 82
          Height = 16
          Caption = 'Tanggal Lapor'
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
          Left = 749
          Top = 54
          Width = 44
          Height = 16
          Caption = 'No. PPh'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label28: TLabel
          Left = 749
          Top = 78
          Width = 71
          Height = 16
          Caption = 'Tanggal PPh'
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
          Left = 749
          Top = 4
          Width = 44
          Height = 16
          Caption = 'Jumlah '
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
          Left = 749
          Top = 102
          Width = 107
          Height = 16
          Caption = 'Tanggal Lapor PPh'
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
          Left = 8
          Top = 58
          Width = 40
          Height = 16
          Caption = 'Alamat'
        end
        object Label36: TLabel
          Left = 8
          Top = 106
          Width = 25
          Height = 16
          Caption = 'Kota'
        end
        object Label37: TLabel
          Left = 8
          Top = 32
          Width = 33
          Height = 16
          Caption = 'Nama'
        end
        object Label38: TLabel
          Left = 749
          Top = 26
          Width = 55
          Height = 16
          Caption = 'PPh Pasal'
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
        object Label39: TLabel
          Left = 8
          Top = 6
          Width = 34
          Height = 16
          Caption = 'NPWP'
        end
        object Label40: TLabel
          Left = 752
          Top = 126
          Width = 54
          Height = 16
          Caption = 'Perkiraan'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object NamaPerkiraan: TLabel
          Left = 1004
          Top = 124
          Width = 38
          Height = 16
          Caption = '[ . . . ]'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object BitBtn2: TBitBtn
          Left = 61
          Top = 135
          Width = 75
          Height = 25
          Caption = '&Simpan'
          TabOrder = 15
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
        object TglFPJ: TDateEdit
          Left = 557
          Top = 26
          Width = 141
          Height = 22
          CheckOnExit = True
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
        end
        object NoFPJ: TEdit
          Left = 557
          Top = 2
          Width = 185
          Height = 24
          BevelKind = bkSoft
          BorderStyle = bsNone
          Ctl3D = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
        end
        object NilaiFPJ: TPBNumEdit
          Left = 557
          Top = 50
          Width = 93
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
          TabOrder = 7
        end
        object TglLaporFPJ: TDateEdit
          Left = 557
          Top = 74
          Width = 141
          Height = 22
          CheckOnExit = True
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 8
        end
        object TglLaporPPh21: TDateEdit
          Left = 876
          Top = 98
          Width = 141
          Height = 22
          CheckOnExit = True
          Ctl3D = False
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 13
        end
        object NilaiPPh21: TPBNumEdit
          Left = 876
          Top = 1
          Width = 93
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
          OnChange = NilaiPPh21Change
          OnEnter = NilaiPPh21Enter
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 9
        end
        object TglPPh21: TDateEdit
          Left = 876
          Top = 74
          Width = 141
          Height = 22
          CheckOnExit = True
          Ctl3D = False
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 12
        end
        object NoPPh21: TEdit
          Left = 876
          Top = 50
          Width = 185
          Height = 24
          BevelKind = bkSoft
          BorderStyle = bsNone
          Ctl3D = True
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 11
        end
        object Alamat1: TEdit
          Left = 61
          Top = 54
          Width = 387
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = True
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 2
        end
        object Alamat2: TEdit
          Left = 61
          Top = 79
          Width = 387
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = True
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 3
        end
        object Kota: TEdit
          Left = 61
          Top = 104
          Width = 167
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = True
          MaxLength = 30
          ParentCtl3D = False
          TabOrder = 4
        end
        object NamaCust: TEdit
          Left = 61
          Top = 28
          Width = 387
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = True
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 1
        end
        object PPh: TComboBox
          Left = 876
          Top = 24
          Width = 145
          Height = 24
          BevelKind = bkSoft
          Enabled = False
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 10
          Items.Strings = (
            ''
            'PPh 21'
            'PPh 22'
            'PPh 23'
            'PPh 26')
        end
        object NPWP: TEdit
          Left = 61
          Top = 2
          Width = 167
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = True
          MaxLength = 30
          ParentCtl3D = False
          TabOrder = 0
        end
        object Perkiraan: TEdit
          Left = 876
          Top = 121
          Width = 121
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 20
          ParentFont = False
          TabOrder = 14
          OnEnter = PerkiraanEnter
          OnExit = PerkiraanExit
        end
      end
    end
  end
  object nopo: TEdit
    Left = 365
    Top = 175
    Width = 140
    Height = 24
    BevelKind = bkSoft
    BorderStyle = bsNone
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    OnEnter = TanggalEnter
    OnKeyDown = TanggalKeyDown
  end
  object QuBeli: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 60
    Parameters = <>
    SQL.Strings = (
      'declare @NoBukti varchar(30)'
      ''
      'select '#9'@NoBukti='#39'TT/0812/00007/SZZ'#39
      ''
      
        'Select  A.NOBUKTI, A.NOURUT, A.TANGGAL, A.TglJatuhTempo, A.KODEC' +
        'USTSUPP, D.NamaCustSupp, D.Alamat, D.Kota,        '
      '         B.NOSPR,'
      
        '        A.KODEVLS, A.KURS, A.PPN, A.TIPEBAYAR, A.HARI, 0.00 DISC' +
        ', 0.00 DISCRP,'
      
        '        0.00 FREIGHT , 0.00 LAIN2 , Cast(0 as bit) ISCETAK, Cast' +
        '(0 as bit) ISCETAKGDG, Cast(0 as bit)IsBatal, '#39#39' UserBatal, A.ID' +
        'User,'
      '        B.URUT, B.KODEBRG, C.NamaBrg, B.QNT, B.QNT2,'
      
        '        B.SAT_1, B.SAT_2, B.NoSat, B.ISI, B.HARGA, B.DiscP DiscP' +
        '1, B.DiscRp DiscRp1, 0.00 DiscRp2,'
      
        '         0.00 DiscRp3, 0.00 DiscRp4, B.DISCTOT,  0.00  BYANGKUT,' +
        ' B.HRGNETTO,'
      
        '        B.NDISKON, B.SUBTOTAL, B.NDPP, B.NPPN, B.NNET, B.SUBTOTA' +
        'LRp,'
      '        B.NDPPRp, B.NPPNRp, B.NNETRp, B.UrutSPR,'
      '        B.Keterangan,'
      
        '        I.TotSubTotal, I.TotDiskon, I.TotTotal, I.TotDPP, I.TotP' +
        'PN, I.TotNet,'
      
        '        I.TotSubTotalRp, I.TotDiskonRp, I.TotTotalRp, I.TotDPPRp' +
        ', I.TotPPNRp, I.TotNetRp,'
      
        '        0 Konversi, B.UrutTrans,  a.Noinvoice, a.TglInvoice, A.I' +
        'SFLag,B.Discp2,B.Discp3,B.Discp4,B.Discp5,'
      
        '        a.FlagTipe,x2.Tanggal TglINv,x2.PONO,x2.ContractNo,M2.Ta' +
        'nggal TglSPBX,M4.TipeBayar ,M4.Hari  ,b.ppnp'
      ' ,x2.Valas,x2.PPN,x2.Kurs'
      ''
      'From DBINVOICERPJ A'
      'Left Outer Join DBInvoiceRPJDET B on B.NoBukti=A.NoBukti'
      'Left Outer Join dbBarang c On C.KodeBrg=B.KodeBrg'
      'Left Outer Join vwBrowscust D On D.KodeCustSupp=A.KodeCustSupp'
      
        'Left Outer join dbSPBRJualdet E on E.nobukti=B.NOSPR and E.Urut=' +
        'B.UrutSPR'
      'Left Outer Join vwRpDetInvoiceRPJ I on I.NoBukti=A.NoBukti'
      
        'Left Outer Join DbINvoicePLdet m1 on E.Noinv = m1.Nobukti and E.' +
        'urutInv=M1.urut'
      'Left Outer Join DbINvoicePL x2 on A.Noinvoice=x2.Nobukti'
      
        ' left Outer join (select Distinct(Nobukti),NOspp,tanggal from Db' +
        'SPb) M2 on x2.ContractNo=M2.Nobukti'
      
        ' Left Outer join (select Distinct(Nobukti),NOship from DbSPP) M3' +
        ' on M2.NOSPP=M3.NObukti'
      
        ' Left Outer join (select Distinct(Nobukti),tipebayar,hari from D' +
        'BSO) M4 on M3.NOSHIP=M4.NObukti'
      ''
      'where a.NoBukti=@NoBukti'
      'order By B.Urut')
    Left = 163
    Top = 410
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
    object QuBeliTglJatuhTempo: TDateTimeField
      FieldName = 'TglJatuhTempo'
    end
    object QuBeliKODECUSTSUPP: TStringField
      FieldName = 'KODECUSTSUPP'
      Size = 15
    end
    object QuBeliNamaCustSupp: TStringField
      FieldName = 'NamaCustSupp'
      Size = 100
    end
    object QuBeliAlamat: TStringField
      FieldName = 'Alamat'
      ReadOnly = True
      Size = 201
    end
    object QuBeliKota: TStringField
      FieldName = 'Kota'
      Size = 100
    end
    object QuBeliNOSPR: TStringField
      FieldName = 'NOSPR'
      Size = 30
    end
    object QuBeliKODEVLS: TStringField
      FieldName = 'KODEVLS'
      Size = 15
    end
    object QuBeliKURS: TBCDField
      FieldName = 'KURS'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QuBeliPPN: TWordField
      FieldName = 'PPN'
    end
    object QuBeliTIPEBAYAR: TWordField
      FieldName = 'TIPEBAYAR'
    end
    object QuBeliHARI: TIntegerField
      FieldName = 'HARI'
    end
    object QuBeliDISC: TBCDField
      FieldName = 'DISC'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 2
      Size = 2
    end
    object QuBeliDISCRP: TBCDField
      FieldName = 'DISCRP'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 2
      Size = 2
    end
    object QuBeliFREIGHT: TBCDField
      FieldName = 'FREIGHT'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 2
      Size = 2
    end
    object QuBeliLAIN2: TBCDField
      FieldName = 'LAIN2'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object QuBeliISCETAK: TBooleanField
      FieldName = 'ISCETAK'
      ReadOnly = True
    end
    object QuBeliISCETAKGDG: TBooleanField
      FieldName = 'ISCETAKGDG'
      ReadOnly = True
    end
    object QuBeliIsBatal: TBooleanField
      FieldName = 'IsBatal'
      ReadOnly = True
    end
    object QuBeliUserBatal: TStringField
      FieldName = 'UserBatal'
      ReadOnly = True
      Size = 1
    end
    object QuBeliIDUser: TStringField
      FieldName = 'IDUser'
      Size = 15
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
    object QuBeliQNT: TBCDField
      FieldName = 'QNT'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliQNT2: TBCDField
      FieldName = 'QNT2'
      DisplayFormat = ',0.00'
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
    object QuBeliHARGA: TBCDField
      FieldName = 'HARGA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliDiscP1: TBCDField
      FieldName = 'DiscP1'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliDiscRp1: TBCDField
      FieldName = 'DiscRp1'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliDiscP2: TBCDField
      FieldName = 'DiscP2'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 2
      Size = 2
    end
    object QuBeliDiscRp2: TBCDField
      FieldName = 'DiscRp2'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 2
      Size = 2
    end
    object QuBeliDiscP3: TBCDField
      FieldName = 'DiscP3'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 2
      Size = 2
    end
    object QuBeliDiscRp3: TBCDField
      FieldName = 'DiscRp3'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 2
      Size = 2
    end
    object QuBeliDiscP4: TBCDField
      FieldName = 'DiscP4'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 2
      Size = 2
    end
    object QuBeliDiscRp4: TBCDField
      FieldName = 'DiscRp4'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 2
      Size = 2
    end
    object QuBeliDISCTOT: TBCDField
      FieldName = 'DISCTOT'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliBYANGKUT: TBCDField
      FieldName = 'BYANGKUT'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 2
      Size = 2
    end
    object QuBeliHRGNETTO: TBCDField
      FieldName = 'HRGNETTO'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 19
      Size = 2
    end
    object QuBeliNDISKON: TBCDField
      FieldName = 'NDISKON'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
    end
    object QuBeliNDPP: TBCDField
      FieldName = 'NDPP'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
    end
    object QuBeliNPPN: TBCDField
      FieldName = 'NPPN'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 5
    end
    object QuBeliNNET: TBCDField
      FieldName = 'NNET'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
    end
    object QuBeliSUBTOTALRp: TBCDField
      FieldName = 'SUBTOTALRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliNDPPRp: TBCDField
      FieldName = 'NDPPRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliNPPNRp: TBCDField
      FieldName = 'NPPNRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliNNETRp: TBCDField
      FieldName = 'NNETRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliUrutSPR: TIntegerField
      FieldName = 'UrutSPR'
    end
    object QuBeliKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 8000
    end
    object QuBeliTotSubTotal: TBCDField
      FieldName = 'TotSubTotal'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
    end
    object QuBeliTotDiskon: TBCDField
      FieldName = 'TotDiskon'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliTotTotal: TBCDField
      FieldName = 'TotTotal'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
    end
    object QuBeliTotDPP: TBCDField
      FieldName = 'TotDPP'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
    end
    object QuBeliTotPPN: TBCDField
      FieldName = 'TotPPN'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 5
    end
    object QuBeliTotNet: TBCDField
      FieldName = 'TotNet'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
    end
    object QuBeliTotSubTotalRp: TBCDField
      FieldName = 'TotSubTotalRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliTotDiskonRp: TBCDField
      FieldName = 'TotDiskonRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliTotTotalRp: TBCDField
      FieldName = 'TotTotalRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliTotDPPRp: TBCDField
      FieldName = 'TotDPPRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliTotPPNRp: TBCDField
      FieldName = 'TotPPNRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliTotNetRp: TBCDField
      FieldName = 'TotNetRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliKonversi: TIntegerField
      FieldName = 'Konversi'
      ReadOnly = True
    end
    object QuBeliUrutTrans: TIntegerField
      FieldName = 'UrutTrans'
    end
    object QuBeliNoinvoice: TStringField
      FieldName = 'Noinvoice'
      Size = 50
    end
    object QuBeliTglInvoice: TDateTimeField
      FieldName = 'TglInvoice'
    end
    object QuBeliISFLag: TBooleanField
      FieldName = 'ISFLag'
      ReadOnly = True
    end
    object QuBeliDiscp5: TBCDField
      FieldName = 'Discp5'
      Precision = 18
      Size = 2
    end
    object QuBeliFlagTipe: TWordField
      FieldName = 'FlagTipe'
    end
    object QuBeliPONO: TStringField
      FieldName = 'PONO'
      Size = 50
    end
    object QuBeliTglSPBX: TDateTimeField
      FieldName = 'TglSPBX'
    end
    object QuBeliContractNo: TStringField
      FieldName = 'ContractNo'
      Size = 50
    end
    object QuBelippnp: TBCDField
      FieldName = 'ppnp'
      Precision = 18
      Size = 2
    end
  end
  object Sp_Beli: TADOStoredProc
    Connection = DM.MyStock
    CommandTimeout = 60
    ProcedureName = 'SP_InvoiceRPJ;1'
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
        Size = 30
        Value = Null
      end
      item
        Name = '@NoUrut'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = '@Tanggal'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Kodecustsupp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@NoInvoice'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@TglInvoice'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Kodevls'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@Kurs'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
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
        Name = '@TipeBayar'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@Hari'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Iduser'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
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
        Name = '@kodebrg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@NoRPJ'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@urutRPJ'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
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
        Name = '@qnt2'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Nosat'
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
        Name = '@Harga'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@DiscP'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@DiscRp'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@DiscTot'
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
        Size = 8000
        Value = Null
      end
      item
        Name = '@Flagmenu'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@FlagTipe'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@Discp2'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Discp3'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Discp4'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Discp5'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@ppnp'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end>
    Left = 245
    Top = 409
  end
  object DsQuBeli: TDataSource
    DataSet = QuBeli
    Left = 130
    Top = 408
  end
  object QuUpdatedbbeli: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From vwPerusahaan')
    Left = 209
    Top = 409
  end
  object QuBiayaPO: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 60
    Parameters = <>
    SQL.Strings = (
      'declare'#9'@NoBukti varchar(50)'
      ''
      'select'#9'@NoBukti='#39'Testing'#39
      ''
      
        'select A.NoBukti, A.Urut, A.NOFPJ, A.TGLFPJ, A.NPPn, A.TglLaporF' +
        'PJ, A.TipePPh, A.NoPPh, A.TglPPh, A.nPPh, A.TglLaporPPh,'
      '        A.NPWP, A.NamaPKP, AlamatPKP1, AlamatPKP2, KotaPKP,'
      '        A.MyID, A.UrutTrans, '
      
        '      A.AlamatPKP1+Char(13)+A.AlamatPKP2+Char(13)+A.KotaPKP Alam' +
        'atPKP,'
      '      Case when A.TipePph=1 then '#39'PPh 21'#39
      '           when A.TipePph=2 then '#39'PPh 22'#39
      '           when A.TipePph=3 then '#39'PPh 23'#39
      '           when A.TipePph=4 then '#39'PPh 26'#39
      '           else '#39#39
      '      end MyPPh'
      'from DBPajakMasuk A'
      'where a.Nobukti=@nobukti'
      'order by a.Urut'
      '')
    Left = 619
    Top = 392
    object QuBiayaPONoBukti: TStringField
      FieldName = 'NoBukti'
      Size = 50
    end
    object QuBiayaPOUrut: TIntegerField
      FieldName = 'Urut'
    end
    object QuBiayaPONOFPJ: TStringField
      FieldName = 'NOFPJ'
      Size = 50
    end
    object QuBiayaPOTGLFPJ: TDateTimeField
      FieldName = 'TGLFPJ'
    end
    object QuBiayaPONPPn: TBCDField
      FieldName = 'NPPn'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBiayaPOTglLaporFPJ: TDateTimeField
      FieldName = 'TglLaporFPJ'
    end
    object QuBiayaPOTipePPh: TWordField
      FieldName = 'TipePPh'
    end
    object QuBiayaPONoPPh: TStringField
      FieldName = 'NoPPh'
      Size = 50
    end
    object QuBiayaPOTglPPh: TDateTimeField
      FieldName = 'TglPPh'
    end
    object QuBiayaPOnPPh: TBCDField
      FieldName = 'nPPh'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBiayaPOTglLaporPPh: TDateTimeField
      FieldName = 'TglLaporPPh'
    end
    object QuBiayaPONPWP: TStringField
      FieldName = 'NPWP'
      Size = 50
    end
    object QuBiayaPONamaPKP: TStringField
      FieldName = 'NamaPKP'
      Size = 100
    end
    object QuBiayaPOAlamatPKP1: TStringField
      FieldName = 'AlamatPKP1'
      Size = 100
    end
    object QuBiayaPOAlamatPKP2: TStringField
      FieldName = 'AlamatPKP2'
      Size = 100
    end
    object QuBiayaPOKotaPKP: TStringField
      FieldName = 'KotaPKP'
      Size = 100
    end
    object QuBiayaPOMyID: TBytesField
      FieldName = 'MyID'
      ReadOnly = True
      Size = 8
    end
    object QuBiayaPOUrutTrans: TIntegerField
      FieldName = 'UrutTrans'
    end
    object QuBiayaPOAlamatPKP: TStringField
      FieldName = 'AlamatPKP'
      ReadOnly = True
      Size = 302
    end
    object QuBiayaPOMyPPh: TStringField
      FieldName = 'MyPPh'
      ReadOnly = True
      Size = 6
    end
  end
  object DsBiayaPO: TDataSource
    DataSet = QuBiayaPO
    Left = 586
    Top = 392
  end
  object sp_BiayaPO: TADOStoredProc
    Connection = DM.MyStock
    CommandTimeout = 60
    ProcedureName = 'Sp_PajakMasuk;1'
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
        Name = '@NoFPJ'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@TglFpj'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@nPPn'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@TglLaporFpj'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@TipePph'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@NoPph'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@TglPPh'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@nPPh'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@TglLaporPPh'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@npwp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@NamaPKP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@AlamatPkp1'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@AlamatPkp2'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@kotaPKP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@TipeINV'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = '@Perk_PPh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end>
    Left = 661
    Top = 393
  end
  object frxDataPerusahaan: TfrxDBDataset
    UserName = 'frxDataPerusahaan'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 680
    Top = 192
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
    Left = 712
    Top = 192
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 676
    Top = 162
  end
  object frxReport1: TfrxReport
    Version = '4.14'
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
    Left = 706
    Top = 162
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
        DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
end
