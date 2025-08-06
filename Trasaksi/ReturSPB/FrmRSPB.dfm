object FrRSPB: TFrRSPB
  Left = 488
  Top = 84
  Width = 1030
  Height = 630
  Caption = 'Transaksi Retur Surat Jalan'
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
    Width = 1022
    Height = 191
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Shape4: TShape
      Left = 1
      Top = 37
      Width = 1129
      Height = 2
      Brush.Color = clBlack
    end
    object Label5: TLabel
      Left = 445
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
    object Label12: TLabel
      Left = 614
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
      Left = 44
      Top = 97
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
      Left = 54
      Top = 73
      Width = 45
      Height = 16
      Caption = 'No. SPP'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 914
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
    object Label17: TLabel
      Left = 880
      Top = 52
      Width = 80
      Height = 16
      Caption = 'No. Pol. Kend.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Shape6: TShape
      Left = 107
      Top = 119
      Width = 384
      Height = 63
      Brush.Color = 14220537
      Pen.Color = clSilver
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object LNamaCustSupp: TLabel
      Left = 113
      Top = 119
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
      Left = 113
      Top = 134
      Width = 370
      Height = 47
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
    object Label1: TLabel
      Left = 471
      Top = 49
      Width = 40
      Height = 16
      Caption = 'No. SO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 1184
      Top = 58
      Width = 55
      Height = 16
      Caption = 'Container'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Label7: TLabel
      Left = 1184
      Top = 79
      Width = 78
      Height = 16
      Caption = 'No. Container'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Label8: TLabel
      Left = 1184
      Top = 104
      Width = 48
      Height = 16
      Alignment = taRightJustify
      Caption = 'No. Seal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Label14: TLabel
      Left = 467
      Top = 69
      Width = 44
      Height = 16
      Caption = 'Catatan'
    end
    object Label15: TLabel
      Left = 12
      Top = 12
      Width = 87
      Height = 16
      Caption = 'No. Surat Jalan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label18: TLabel
      Left = 1159
      Top = 153
      Width = 72
      Height = 16
      Caption = 'No. Shipping'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Label20: TLabel
      Left = 22
      Top = 50
      Width = 77
      Height = 16
      Caption = 'Tanggal SJLN'
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
      Left = 253
      Top = 48
      Width = 72
      Height = 16
      Caption = 'Tanggal SPP'
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
      Left = 704
      Top = 50
      Width = 66
      Height = 16
      Caption = 'Tanggal SC'
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
      Left = 1168
      Top = 125
      Width = 99
      Height = 16
      Caption = 'Tanggal Shipping'
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
      Left = 519
      Top = 9
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
      TabOrder = 0
      OnChange = NoUrutChange
      OnEnter = NoUrutEnter
      OnExit = NoUrutExit
      OnKeyDown = NoUrutKeyDown
    end
    object NoBukti: TEdit
      Left = 694
      Top = 9
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
    object KodeCust: TEdit
      Left = 107
      Top = 94
      Width = 76
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
      TabOrder = 7
      OnKeyDown = TanggalKeyDown
    end
    object NoSPP: TEdit
      Left = 107
      Top = 70
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
      TabOrder = 5
      OnEnter = NoUrutEnter
      OnKeyDown = TanggalKeyDown
    end
    object Tanggal: TDateEdit
      Left = 965
      Top = 9
      Width = 98
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
    object NoPolKend: TEdit
      Left = 965
      Top = 47
      Width = 164
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
      TabOrder = 9
      OnChange = TanggalChange
      OnEnter = NoUrutEnter
      OnKeyDown = TanggalKeyDown
    end
    object NoSC: TEdit
      Left = 519
      Top = 47
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
      TabOrder = 4
      OnEnter = NoUrutEnter
      OnKeyDown = TanggalKeyDown
    end
    object Container: TEdit
      Left = 1269
      Top = 52
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
      TabOrder = 10
      Visible = False
      OnChange = TanggalChange
      OnEnter = NoUrutEnter
      OnKeyDown = TanggalKeyDown
    end
    object NoContainer: TEdit
      Left = 1269
      Top = 76
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
      TabOrder = 11
      Visible = False
      OnChange = TanggalChange
      OnEnter = NoUrutEnter
      OnKeyDown = TanggalKeyDown
    end
    object NoSeal: TEdit
      Left = 1269
      Top = 101
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
      TabOrder = 12
      Visible = False
      OnChange = TanggalChange
      OnEnter = NoUrutEnter
      OnKeyDown = TanggalKeyDown
    end
    object Catatan: TMemo
      Left = 519
      Top = 71
      Width = 297
      Height = 78
      BevelKind = bkSoft
      BorderStyle = bsNone
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 8
      OnChange = TanggalChange
      OnEnter = CatatanEnter
      OnExit = CatatanExit
      OnKeyDown = TanggalKeyDown
    end
    object NoSPB: TEdit
      Left = 107
      Top = 9
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
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      OnEnter = NoUrutEnter
      OnExit = NoSPBExit
      OnKeyDown = NoSPBKeyDown
    end
    object NoShip: TEdit
      Left = 1271
      Top = 150
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
      TabOrder = 6
      Visible = False
      OnEnter = NoUrutEnter
      OnKeyDown = TanggalKeyDown
    end
    object TglSPB: TDateEdit
      Left = 107
      Top = 47
      Width = 99
      Height = 22
      CheckOnExit = True
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 13
      OnChange = TanggalChange
      OnEnter = NoUrutEnter
      OnExit = TanggalExit
      OnKeyDown = TanggalKeyDown
    end
    object TglSPP: TDateEdit
      Left = 334
      Top = 47
      Width = 99
      Height = 22
      CheckOnExit = True
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 14
      OnChange = TanggalChange
      OnEnter = NoUrutEnter
      OnExit = TanggalExit
      OnKeyDown = TanggalKeyDown
    end
    object TglSC: TDateEdit
      Left = 774
      Top = 47
      Width = 99
      Height = 22
      CheckOnExit = True
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 15
      OnChange = TanggalChange
      OnEnter = NoUrutEnter
      OnExit = TanggalExit
      OnKeyDown = TanggalKeyDown
    end
    object TglShip: TDateEdit
      Left = 1270
      Top = 122
      Width = 99
      Height = 22
      CheckOnExit = True
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 16
      Visible = False
      OnChange = TanggalChange
      OnEnter = NoUrutEnter
      OnExit = TanggalExit
      OnKeyDown = TanggalKeyDown
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 512
    Width = 1022
    Height = 84
    Align = alBottom
    BevelOuter = bvNone
    BorderWidth = 1
    TabOrder = 1
    Visible = False
    object LNamaBrg: TRxLabel
      Left = 270
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
      Left = 226
      Top = 52
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
      Left = 15
      Top = 31
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
      Left = 837
      Top = 77
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
      Left = 245
      Top = 31
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
    object LSatuan1: TLabel
      Left = 397
      Top = 31
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
    object Label3: TLabel
      Left = 503
      Top = 57
      Width = 61
      Height = 16
      Caption = 'Net weight'
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
    object Label9: TLabel
      Left = 735
      Top = 54
      Width = 76
      Height = 16
      Caption = 'Gross Weight'
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
    object Label11: TLabel
      Left = 464
      Top = 8
      Width = 130
      Height = 16
      Caption = 'Nama Barang Komersil'
      Visible = False
    end
    object KodeBrg: TEdit
      Left = 148
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
      Left = 148
      Top = 52
      Width = 75
      Height = 25
      Caption = '&Simpan'
      TabOrder = 8
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
      Left = 636
      Top = 73
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
      TabOrder = 4
      Value = 1
      Visible = False
    end
    object Qnt2: TPBNumEdit
      Left = 148
      Top = 27
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
      TabOrder = 2
      Value = 1
    end
    object Nosat: TComboBox
      Left = 730
      Top = 73
      Width = 103
      Height = 24
      BevelKind = bkFlat
      Enabled = False
      ItemHeight = 16
      TabOrder = 5
      Text = 'Pilih Satuan'
      Visible = False
      OnChange = NosatChange
      OnEnter = NosatEnter
      OnExit = NosatChange
    end
    object Qnt1: TPBNumEdit
      Left = 292
      Top = 27
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
    object NetW: TPBNumEdit
      Left = 636
      Top = 50
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
      TabOrder = 6
      Value = 1
      Visible = False
    end
    object GrossW: TPBNumEdit
      Left = 820
      Top = 50
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
      TabOrder = 7
      Value = 1
      Visible = False
    end
    object NamaBrg: TMemo
      Left = 596
      Top = 10
      Width = 300
      Height = 46
      BevelKind = bkSoft
      BorderStyle = bsNone
      Ctl3D = True
      Enabled = False
      ParentCtl3D = False
      TabOrder = 1
      Visible = False
      OnEnter = NamaBrgEnter
      OnExit = NamaBrgExit
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 191
    Width = 1022
    Height = 321
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 2
    object PanelShow1: TPanel
      Left = 5
      Top = 283
      Width = 1012
      Height = 33
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object Cetak: TSpeedButton
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
        OnClick = CetakClick
      end
      object HapusBtn: TSpeedButton
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
        OnClick = HapusBtnClick
      end
      object KoreksiBtn: TSpeedButton
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
        OnClick = KoreksiBtnClick
      end
      object TambahBtn: TSpeedButton
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
        OnClick = TambahBtnClick
      end
      object SpeedButton8: TSpeedButton
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
        OnClick = SpeedButton8Click
      end
      object RekapBrgBtn: TSpeedButton
        Left = 555
        Top = 2
        Width = 113
        Height = 28
        Caption = 'Detail RSPB'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
          333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
          C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
          F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
          F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
          00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
          3333333373FF7333333333333000333333333333377733333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        ParentFont = False
        Transparent = False
        Visible = False
        OnClick = RekapBrgBtnClick
      end
      object ComboBox1: TComboBox
        Left = 441
        Top = 4
        Width = 112
        Height = 24
        BevelKind = bkSoft
        ItemHeight = 16
        ItemIndex = 0
        TabOrder = 0
        Text = 'SPB'
        Visible = False
        Items.Strings = (
          'SPB'
          'BPBJ')
      end
    end
    object cxGrid1: TcxGrid
      Left = 5
      Top = 5
      Width = 1012
      Height = 278
      Align = alClient
      TabOrder = 1
      LookAndFeel.Kind = lfFlat
      object tvMaster: TcxGridDBBandedTableView
        OnKeyDown = wwDBGrid1KeyDown
        DataController.DataSource = DsQuBeli
        DataController.Filter.Criteria = {FFFFFFFF0000000000}
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OnFocusedRecordChanged = tvMasterFocusedRecordChanged
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        Bands = <
          item
            Caption = 'Deskripsi'
          end
          item
            Caption = 'Satuan 2'
          end
          item
            Caption = 'Satuan 1'
          end
          item
            Caption = 'Weight'
            Visible = False
          end>
        object tvMasterKODEBRG: TcxGridDBBandedColumn
          Caption = 'Kode Barang'
          DataBinding.FieldName = 'KODEBRG'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object tvMasterNamaBrg: TcxGridDBBandedColumn
          Caption = 'Nama Barang'
          DataBinding.FieldName = 'NamaBrg'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 200
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object tvMasterJns_Kertas: TcxGridDBBandedColumn
          Caption = 'Jenis Kertas'
          DataBinding.FieldName = 'Jns_Kertas'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 73
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object tvMasterUkr_Kertas: TcxGridDBBandedColumn
          Caption = 'Ukuran Kertas'
          DataBinding.FieldName = 'Ukr_Kertas'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 153
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object tvMasterGSM: TcxGridDBBandedColumn
          DataBinding.FieldName = 'GSM'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 48
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object tvMasterQNT2: TcxGridDBBandedColumn
          Caption = 'Qnt'
          DataBinding.FieldName = 'QNT2'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 80
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object tvMasterSAT_2: TcxGridDBBandedColumn
          Caption = 'Sat'
          DataBinding.FieldName = 'SAT_2'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object tvMasterQNT: TcxGridDBBandedColumn
          Caption = 'Qnt'
          DataBinding.FieldName = 'QNT'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 80
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object tvMasterSAT_1: TcxGridDBBandedColumn
          Caption = 'Sat'
          DataBinding.FieldName = 'SAT_1'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object tvMasternetW: TcxGridDBBandedColumn
          Caption = 'Net'
          DataBinding.FieldName = 'netW'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 80
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object tvMasterGrossW: TcxGridDBBandedColumn
          Caption = 'Gross'
          DataBinding.FieldName = 'GrossW'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 80
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object TvDetailSPB: TcxGridDBBandedTableView
        DataController.DataSource = DSQuDetailSPB
        DataController.DetailKeyFieldNames = 'MyKey'
        DataController.Filter.Criteria = {FFFFFFFF0000000000}
        DataController.MasterKeyFieldNames = 'Mykey'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        Bands = <
          item
            Caption = 'Deskripsi'
          end
          item
            Caption = 'Satuan 2'
          end
          item
            Caption = 'Satuan 1'
          end
          item
            Caption = 'Weight'
          end>
        object TvDetailSPBkodebrg: TcxGridDBBandedColumn
          Caption = 'Kode Barang'
          DataBinding.FieldName = 'kodebrg'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object TvDetailSPBNamabrg: TcxGridDBBandedColumn
          Caption = 'Nama Barang'
          DataBinding.FieldName = 'Namabrg'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 200
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object TvDetailSPBNoPallet: TcxGridDBBandedColumn
          Caption = 'No. Pallet'
          DataBinding.FieldName = 'NoPallet'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object TvDetailSPBNOROLL: TcxGridDBBandedColumn
          Caption = 'No. Roll'
          DataBinding.FieldName = 'NOROLL'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object TvDetailSPBNOLOT: TcxGridDBBandedColumn
          Caption = 'No. Lot'
          DataBinding.FieldName = 'NOLOT'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object TvDetailSPBQnt2: TcxGridDBBandedColumn
          Caption = 'Qnt'
          DataBinding.FieldName = 'Qnt2'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 80
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object TvDetailSPBSat_2: TcxGridDBBandedColumn
          Caption = 'Sat'
          DataBinding.FieldName = 'Sat_2'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 40
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object TvDetailSPBQnt: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Qnt'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 80
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object TvDetailSPBSat_1: TcxGridDBBandedColumn
          Caption = 'Sat'
          DataBinding.FieldName = 'Sat_1'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 40
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object TvDetailSPBNetW: TcxGridDBBandedColumn
          Caption = 'Net'
          DataBinding.FieldName = 'NetW'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 80
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object TvDetailSPBGrossW: TcxGridDBBandedColumn
          Caption = 'Gross'
          DataBinding.FieldName = 'GrossW'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 80
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object TvDetailSPBKeterangan: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Keterangan'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 200
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object TvDetailSPBMyKey: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MyKey'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = tvMaster
        object cxGrid1Level2: TcxGridLevel
          GridView = TvDetailSPB
        end
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
      'select @NoBukti='#39'VSM/092009/00001/PNJ'#39
      ''
      
        'select A.NOBUKTI, A.NOURUT, A.TANGGAL, A.KODECUSTSUPP, D.NamaCus' +
        't NamaCustSupp, D.Alamat, D.NamaKota Kota,'
      
        '        A1.NOSO, A1.TglSO, A1.NoSPB, A1.TglSPB, A1.NoSPP, A1.Tgl' +
        'SPP, '
      '        A.NoPolKend,'
      '        A.Container, A.NoContainer, A.NoSeal,'
      '        A.ISCETAK, A.IDUser,'
      
        '        B.URUT, B.KODEBRG, C.NamaBrg, '#39#39' Jns_Kertas, '#39#39'Ukr_Kerta' +
        's, B.QNT, B.QNT2, B.SAT_1, B.SAT_2, B.NoSat, B.ISI,'
      
        '        B.UrutSPB, B.netW, b.GrossW, B.Namabrg Namabrgkom, 0.00 ' +
        'GSM,'
      '        B.NoBukti+Cast(B.urut as varchar(5)) Mykey'
      'From DBRSPB A'
      'Left Outer Join DBRSPBDet B on B.NoBukti=A.NoBukti'
      
        'left outer join (Select x.NoBukti NoSPB, x.Tanggal TglSPB, y.NoS' +
        'PP, y.TglSPP,  w.NoSO, w.TglSO'
      '                 from (Select x.NoBukti,y.Tanggal, x.NoSPP'
      '                       From DBSPBDet x           '
      
        '                            left Outer join DBSPB y on y.NoBukti' +
        '=x.NoBukti'
      '                       Group by x.NoBukti,y.Tanggal, x.NoSPP) x '
      
        '                      left Outer Join (Select x.NoBukti NoSPP, y' +
        '.Tanggal TglSPP, x.NoSO'
      '                                       from DBSPPDet x'
      
        '                                            left outer join DBSP' +
        'P y on y.NoBukti=x.NoBukti'
      
        '                                       Group by x.NoBukti,y.Tang' +
        'gal, x.NoSO) y on y.NoSPP=x.NoSPP '
      
        '                      left Outer join (Select x.Nobukti NoSO, y.' +
        'Tanggal TglSO'
      '                                       From dbSODet x'
      
        '                                            left Outer join dbSO' +
        ' y on y.Nobukti=x.Nobukti'
      
        '                                       Group by x.Nobukti,y.Tang' +
        'gal) w on w.NoSO=y.NoSO                 '
      '                ) A1 on A1.NoSPB=B.NoSPB'
      'Left Outer Join dbBarang c On C.KodeBrg=B.KodeBrg'
      'Left Outer Join vwBrowsCustomer D On D.KodeCust=A.KodeCustSupp'
      'where a.NoBukti=@NoBukti  '
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
      Size = 7
    end
    object QuBeliTANGGAL: TDateTimeField
      FieldName = 'TANGGAL'
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
    object QuBeliNoSPB: TStringField
      FieldName = 'NoSPB'
      ReadOnly = True
      Size = 30
    end
    object QuBeliTglSPB: TDateTimeField
      FieldName = 'TglSPB'
      ReadOnly = True
    end
    object QuBeliNoSPP: TStringField
      FieldName = 'NoSPP'
      ReadOnly = True
      Size = 30
    end
    object QuBeliTglSPP: TDateTimeField
      FieldName = 'TglSPP'
      ReadOnly = True
    end
    object QuBeliNoPolKend: TStringField
      FieldName = 'NoPolKend'
      Size = 50
    end
    object QuBeliContainer: TStringField
      FieldName = 'Container'
      Size = 50
    end
    object QuBeliNoContainer: TStringField
      FieldName = 'NoContainer'
      Size = 50
    end
    object QuBeliNoSeal: TStringField
      FieldName = 'NoSeal'
      Size = 50
    end
    object QuBeliISCETAK: TBooleanField
      FieldName = 'ISCETAK'
    end
    object QuBeliIDUser: TStringField
      FieldName = 'IDUser'
      Size = 30
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
    object QuBeliNoSat: TIntegerField
      FieldName = 'NoSat'
    end
    object QuBeliISI: TBCDField
      FieldName = 'ISI'
      Precision = 18
      Size = 2
    end
    object QuBeliUrutSPB: TIntegerField
      FieldName = 'UrutSPB'
    end
    object QuBelinetW: TBCDField
      FieldName = 'netW'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuBeliGrossW: TBCDField
      FieldName = 'GrossW'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuBeliNamabrgkom: TStringField
      FieldName = 'Namabrgkom'
      Size = 200
    end
    object QuBeliGSM: TBCDField
      FieldName = 'GSM'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuBeliMykey: TStringField
      FieldName = 'Mykey'
      ReadOnly = True
      Size = 35
    end
    object QuBeliNOSO: TStringField
      FieldName = 'NOSO'
      Size = 30
    end
    object QuBeliTglSO: TDateTimeField
      FieldName = 'TglSO'
    end
  end
  object Sp_Beli: TADOStoredProc
    Connection = DM.MyStock
    CommandTimeout = 60
    ProcedureName = 'sp_RSPB;1'
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
        Name = '@NOBUKTI'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@NoUrut'
        Attributes = [paNullable]
        DataType = ftString
        Size = 7
        Value = Null
      end
      item
        Name = '@TANGGAL'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@NoSPP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@KODECUSTSUPP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@NoPolKend'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@Container'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@NoContainer'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@NoSeal'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@Catatan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@URUT'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@UrutSPP'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@KODEBRG'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@QNT'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@QNT2'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@SAT_1'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = '@SAT_2'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
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
        Name = '@ISI'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NetW'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@GrossW'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@IDUser'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@IsEmpty'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@Namabrg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 200
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
  object frxReport1: TfrxReport
    Version = '4.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40694.2430998611
    ReportOptions.LastChange = 40694.2430998611
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    Left = 1096
    Top = 248
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 297
      PaperSize = 9
    end
  end
  object frxDBCetak: TfrxDBDataset
    UserName = 'frxDBCetak'
    CloseDataSource = False
    Left = 1128
    Top = 280
  end
  object QuReport: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @NoBukti varchar(20)'
      ''
      'select '#9'@NoBukti='#39'VSM/092009/00001/PNJ'#39
      ''
      'select * from vwcetakspb'
      'order By Urut')
    Left = 1096
    Top = 280
  end
  object QuReportLampiran: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 1096
    Top = 312
  end
  object frxDBCetakLampiran: TfrxDBDataset
    UserName = 'frxDBCetakLampiran'
    CloseDataSource = False
    Left = 1128
    Top = 312
  end
  object QuDetailSPB: TADOQuery
    CacheSize = 2000
    Connection = DM.MyStock
    CursorType = ctStatic
    DataSource = DsQuBeli
    Parameters = <
      item
        Name = 'MyKey'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 35
        Value = Null
      end>
    SQL.Strings = (
      
        'Select A.urut,A.NoSPB NOENQDET,A.UrutSPB UrutENQ,A.NoPallet, A.N' +
        'OROLL,A.NOLOT,A.NetW,A.GrossW,'
      
        '       b.kodebrg,b.Namabrg,A.Sat_1,A.Sat_2,A.Qnt,A.Qnt2,A.Nosat,' +
        'A.ISI, A.Keterangan,'
      '       A.NoSPB+Cast(A.urutSpb as varchar(5)) MyKey'
      'from dbSPBLampiran A'
      
        '     left outer join (Select x.kodebrg, y.NamaBrg, x.Nobukti,x.U' +
        'rut, x.NoSPP,x.UrutSPP, 1 Tipe'
      '                      from dbSPBDet x, dbbarang y'
      '                      where x.kodebrg=y.Kodebrg'
      '                      union '
      
        '                      Select x.kodebrg, y.NamaBrg, x.Nobukti,x.U' +
        'rut, x.NoSPB,x.UrutSPB,z.Islokal Tipe'
      '                      from dbRSPBDet x '
      
        '                           left outer join dbbarang y on x.kodeb' +
        'rg=y.Kodebrg                           '
      '                           left Outer join (Select *'
      
        '                                            from vwSPB) z on z.n' +
        'oSPB=x.NoSPB) b on B.nobukti=A.NoSPB and b.urut=a.UrutSPB'
      'Where A.NoSPB+Cast(A.urutSpb as varchar(5)) =:MyKey'
      'Order by A.Urut')
    Left = 363
    Top = 306
    object QuDetailSPBurut: TIntegerField
      FieldName = 'urut'
    end
    object QuDetailSPBNOENQDET: TStringField
      FieldName = 'NOENQDET'
      Size = 30
    end
    object QuDetailSPBUrutENQ: TIntegerField
      FieldName = 'UrutENQ'
    end
    object QuDetailSPBNoPallet: TStringField
      FieldName = 'NoPallet'
      Size = 15
    end
    object QuDetailSPBNOROLL: TStringField
      FieldName = 'NOROLL'
      Size = 15
    end
    object QuDetailSPBNOLOT: TStringField
      FieldName = 'NOLOT'
      Size = 15
    end
    object QuDetailSPBNetW: TBCDField
      FieldName = 'NetW'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuDetailSPBGrossW: TBCDField
      FieldName = 'GrossW'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuDetailSPBkodebrg: TStringField
      FieldName = 'kodebrg'
      ReadOnly = True
      Size = 25
    end
    object QuDetailSPBNamabrg: TStringField
      FieldName = 'Namabrg'
      ReadOnly = True
      Size = 200
    end
    object QuDetailSPBSat_1: TStringField
      FieldName = 'Sat_1'
      Size = 5
    end
    object QuDetailSPBSat_2: TStringField
      FieldName = 'Sat_2'
      Size = 5
    end
    object QuDetailSPBQnt: TBCDField
      FieldName = 'Qnt'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuDetailSPBQnt2: TBCDField
      FieldName = 'Qnt2'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuDetailSPBNosat: TWordField
      FieldName = 'Nosat'
    end
    object QuDetailSPBISI: TBCDField
      FieldName = 'ISI'
      Precision = 18
      Size = 2
    end
    object QuDetailSPBKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 200
    end
    object QuDetailSPBMyKey: TStringField
      FieldName = 'MyKey'
      ReadOnly = True
      Size = 35
    end
  end
  object DSQuDetailSPB: TDataSource
    DataSet = QuDetailSPB
    Left = 322
    Top = 304
  end
end
