object FrSPP: TFrSPP
  Left = 171
  Top = 13
  Width = 1374
  Height = 712
  Caption = 'Transaksi SPP'
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
    Width = 1366
    Height = 209
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Shape4: TShape
      Left = 16
      Top = 37
      Width = 1049
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
    object Label42: TLabel
      Left = 16
      Top = 181
      Width = 78
      Height = 16
      Caption = 'Tanggal kirim'
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
      Top = 68
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
      Left = 16
      Top = 44
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
    object Label13: TLabel
      Left = 861
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
    object Shape6: TShape
      Left = 101
      Top = 90
      Width = 384
      Height = 63
      Brush.Color = 14220537
      Pen.Color = clSilver
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object LNamaCustSupp: TLabel
      Left = 107
      Top = 90
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
      Left = 107
      Top = 105
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
      Left = 16
      Top = 157
      Width = 39
      Height = 16
      Caption = 'No. PO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 504
      Top = 293
      Width = 37
      Height = 16
      Caption = 'No. LC'
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
      Left = 864
      Top = 45
      Width = 44
      Height = 16
      Caption = 'Catatan'
    end
    object Label14: TLabel
      Left = 504
      Top = 317
      Width = 65
      Height = 16
      Caption = 'No. Shiping'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Label18: TLabel
      Left = 492
      Top = 45
      Width = 73
      Height = 16
      Caption = 'Alamat Kirim'
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
    object Shape1: TShape
      Left = 493
      Top = 67
      Width = 386
      Height = 63
      Brush.Color = 14220537
      Pen.Color = clSilver
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object LAlamatKirim: TLabel
      Left = 499
      Top = 73
      Width = 377
      Height = 65
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object Label20: TLabel
      Left = 760
      Top = 180
      Width = 62
      Height = 16
      Caption = 'Di Kirim Ke'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Label21: TLabel
      Left = 760
      Top = 205
      Width = 73
      Height = 16
      Caption = 'Alamat Kirim'
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
    object TglKirim: TDateEdit
      Left = 103
      Top = 178
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
      TabOrder = 6
      OnChange = TanggalChange
      OnEnter = NoUrutEnter
      OnKeyDown = TanggalKeyDown
    end
    object KodeCust: TEdit
      Left = 101
      Top = 65
      Width = 108
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
      TabOrder = 4
      OnKeyDown = TanggalKeyDown
    end
    object NoSC: TEdit
      Left = 101
      Top = 41
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
      TabOrder = 3
      OnEnter = NoUrutEnter
      OnExit = NoSCExit
      OnKeyDown = TanggalKeyDown
    end
    object Tanggal: TDateEdit
      Left = 923
      Top = 10
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
      OnChange = TanggalChange
      OnEnter = NoUrutEnter
      OnExit = TanggalExit
      OnKeyDown = TanggalKeyDown
    end
    object NoPesan: TEdit
      Left = 103
      Top = 154
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
      OnExit = NoSCExit
      OnKeyDown = TanggalKeyDown
    end
    object NoLC: TEdit
      Left = 591
      Top = 290
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
      TabOrder = 7
      Visible = False
      OnChange = TanggalChange
      OnEnter = NoUrutEnter
      OnKeyDown = TanggalKeyDown
    end
    object Catatan: TMemo
      Left = 924
      Top = 42
      Width = 170
      Height = 87
      BevelKind = bkSoft
      BorderStyle = bsNone
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 12
      OnChange = TanggalChange
      OnEnter = CatatanEnter
      OnExit = CatatanExit
    end
    object NoShip: TEdit
      Left = 591
      Top = 314
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
      TabOrder = 8
      Visible = False
      OnEnter = NoUrutEnter
      OnExit = NoSCExit
      OnKeyDown = TanggalKeyDown
    end
    object NoAlamatKirim: TEdit
      Left = 575
      Top = 42
      Width = 85
      Height = 22
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 11
      OnChange = TanggalChange
      OnEnter = NoAlamatKirimEnter
      OnExit = NoAlamatKirimExit
      OnKeyDown = TanggalKeyDown
    end
    object NamaKirim: TEdit
      Left = 839
      Top = 177
      Width = 266
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
      TabOrder = 9
      Visible = False
      OnChange = TanggalChange
      OnEnter = NoUrutEnter
      OnKeyDown = TanggalKeyDown
    end
    object AlamatKirim: TMemo
      Left = 839
      Top = 202
      Width = 266
      Height = 87
      BevelKind = bkSoft
      BorderStyle = bsNone
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 10
      Visible = False
      OnChange = TanggalChange
      OnEnter = CatatanEnter
      OnExit = CatatanExit
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 542
    Width = 1366
    Height = 136
    Align = alBottom
    BevelOuter = bvNone
    BorderWidth = 1
    TabOrder = 1
    Visible = False
    object LNamaBrg: TRxLabel
      Left = 219
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
      Left = 177
      Top = 102
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
      Left = 16
      Top = 80
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
    object Label19: TLabel
      Left = 16
      Top = 55
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
      Left = 300
      Top = 55
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
    object LSatuan2: TLabel
      Left = 645
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
    object LSatuan1: TLabel
      Left = 797
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
    object Label8: TLabel
      Left = 472
      Top = 126
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
      Left = 712
      Top = 125
      Width = 103
      Height = 16
      Caption = 'KG   Gross Weight'
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
      Left = 440
      Top = 0
      Width = 130
      Height = 16
      Caption = 'Nama Barang Komersil'
      Visible = False
    end
    object Label15: TLabel
      Left = 459
      Top = 101
      Width = 102
      Height = 16
      Caption = 'KG    Mesurement'
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
      Left = 462
      Top = 24
      Width = 81
      Height = 16
      Caption = 'Shipping Mark'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Label22: TLabel
      Left = 667
      Top = 101
      Width = 16
      Height = 16
      Caption = 'M'#179
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Label23: TLabel
      Left = 16
      Top = 29
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
    end
    object KodeBrg: TEdit
      Left = 99
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
      Left = 99
      Top = 102
      Width = 75
      Height = 25
      Caption = '&Simpan'
      TabOrder = 12
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
      Left = 99
      Top = 51
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
    end
    object Qnt2: TPBNumEdit
      Left = 548
      Top = 73
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
    object KetDetail: TEdit
      Left = 99
      Top = 77
      Width = 300
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
      OnKeyDown = KodeBrgKeyDown
    end
    object Nosat: TComboBox
      Left = 193
      Top = 51
      Width = 103
      Height = 24
      BevelKind = bkFlat
      Enabled = False
      ItemHeight = 16
      TabOrder = 7
      Text = 'Pilih Satuan'
      OnChange = NosatChange
      OnEnter = NosatEnter
      OnExit = NosatChange
    end
    object Qnt1: TPBNumEdit
      Left = 692
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
      TabOrder = 5
      Value = 1
      Visible = False
    end
    object NetW: TPBNumEdit
      Left = 611
      Top = 122
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
      TabOrder = 8
      Value = 1
      Visible = False
    end
    object GrossW: TPBNumEdit
      Left = 819
      Top = 122
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
      TabOrder = 9
      Value = 1
      Visible = False
    end
    object NamaBrg: TMemo
      Left = 579
      Top = 2
      Width = 300
      Height = 46
      BevelKind = bkSoft
      BorderStyle = bsNone
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 2
      Visible = False
      OnEnter = NamaBrgEnter
      OnExit = NamaBrgExit
    end
    object Mesurement: TPBNumEdit
      Left = 571
      Top = 98
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
      TabOrder = 10
      Value = 1
      Visible = False
    end
    object ShippingMark: TMemo
      Left = 551
      Top = 26
      Width = 300
      Height = 46
      BevelKind = bkSoft
      BorderStyle = bsNone
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 3
      Visible = False
      OnChange = TanggalChange
      OnEnter = NamaBrgEnter
      OnExit = NamaBrgExit
      OnKeyDown = KodeBrgKeyDown
    end
    object KodeGdg: TEdit
      Left = 99
      Top = 26
      Width = 55
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
      TabOrder = 1
      OnEnter = KodeGdgEnter
      OnExit = KodeGdgExit
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 209
    Width = 1366
    Height = 333
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 2
    object dxDBGrid1: TdxDBGrid
      Left = 5
      Top = 5
      Width = 1356
      Height = 291
      Bands = <
        item
          Caption = 'Deskripsi Barang'
          Fixed = bfLeft
        end
        item
          Caption = 'Kuantum'
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
        HeaderAlignment = taCenter
        Visible = False
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
        FieldName = 'NamabrgKom'
      end
      object dxDBGrid1ISI: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = -1
        RowIndex = 0
        FieldName = 'ISI'
      end
      object dxDBGrid1QNT: TdxDBGridMaskColumn
        Caption = 'Qnt'
        HeaderAlignment = taCenter
        Width = 70
        BandIndex = 1
        RowIndex = 0
        FieldName = 'QNT'
      end
      object dxDBGrid1SAT_1: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 50
        BandIndex = 1
        RowIndex = 0
        FieldName = 'Satuan'
      end
      object dxDBGrid1Keterangan: TdxDBGridMaskColumn
        Caption = 'Keterangan'
        HeaderAlignment = taCenter
        Width = 300
        BandIndex = 2
        RowIndex = 0
        FieldName = 'KetDetail'
      end
      object dxDBGrid1kodegdg: TdxDBGridMaskColumn
        Caption = 'Gudang'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 1
        RowIndex = 0
        FieldName = 'kodegdg'
      end
    end
    object PanelShow1: TPanel
      Left = 5
      Top = 296
      Width = 1356
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
      'Select '#9'@NoBukti='#39'SJY/DO/0712/00008'#39
      ''
      
        'select A.NOBUKTI, A.NOURUT, A.TANGGAL, A.TglKirim, A.KODECUSTSUP' +
        'P, D.namaCust NamaCustSupp, D.Alamat, D.kodekota Kota,'
      '        A.NOSHIP, A.NOPESAN, B.ShippingMark,'
      '        A.NoLC, A.Catatan,'
      '        A.ISCETAK, A.IDUser,'
      
        '        B.URUT, B.KODEBRG, C.NamaBrg,  B.QNT QNT1, B.QNT2, B.SAT' +
        '_1, B.SAT_2, B.NoSat, B.ISI,'
      
        '        B.KetDetail, B.UrutSO, B.NetW, b.GrossW, G.NOBUKTI NoSO,' +
        ' '#39#39' NOPO, B.Namabrg NamabrgKom, B.Mesurement,'
      
        '        A.NamaKirim, A.Alamatkirim, Case when B.nosat=1 then B.S' +
        'at_1 when B.nosat=2 then B.Sat_2 else '#39#39' end Satuan,'
      '        A.NoAlamatkirim, B.kodegdg,'
      
        '        Case when B.nosat=1 then B.Qnt when B.nosat=2 then B.Qnt' +
        '2 else 0 end Qnt,'
      '        Isnull(A.FlagTipe,0) FlagTipe '
      'From DBSPP A'
      'Left Outer Join DBSPPDET B on B.NoBukti=A.NoBukti'
      'Left Outer join dbSO G on G.Nobukti=B.NoSO'
      'Left Outer Join dbBarang c On C.KodeBrg=B.KodeBrg'
      
        'Left Outer Join vwBrowsCustomer D On D.KodeCust=A.KodeCustSupp a' +
        'nd D.Sales=G.KODESLS'
      
        'Left Outer Join vwOutSO_SPP E on E.Nobukti=B.NoSO and E.urut=B.U' +
        'rutSO'
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
      Size = 7
    end
    object QuBeliTANGGAL: TDateTimeField
      FieldName = 'TANGGAL'
    end
    object QuBeliTglKirim: TDateTimeField
      FieldName = 'TglKirim'
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
      Size = 333
    end
    object QuBeliKota: TStringField
      FieldName = 'Kota'
      Size = 100
    end
    object QuBeliNOSHIP: TStringField
      FieldName = 'NOSHIP'
      Size = 30
    end
    object QuBeliNOPESAN: TStringField
      FieldName = 'NOPESAN'
      Size = 30
    end
    object QuBeliShippingMark: TStringField
      FieldName = 'ShippingMark'
      Size = 8000
    end
    object QuBeliNoLC: TStringField
      FieldName = 'NoLC'
      Size = 50
    end
    object QuBeliCatatan: TStringField
      FieldName = 'Catatan'
      Size = 4000
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
      Size = 100
    end
    object QuBeliQNT: TBCDField
      FieldName = 'QNT'
      Precision = 18
      Size = 2
    end
    object QuBeliQNT2: TBCDField
      FieldName = 'QNT2'
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
    object QuBeliKetDetail: TStringField
      FieldName = 'KetDetail'
      Size = 4000
    end
    object QuBeliUrutSO: TIntegerField
      FieldName = 'UrutSO'
    end
    object QuBeliNetW: TBCDField
      FieldName = 'NetW'
      Precision = 18
      Size = 2
    end
    object QuBeliGrossW: TBCDField
      FieldName = 'GrossW'
      Precision = 18
      Size = 2
    end
    object QuBeliNoSO: TStringField
      FieldName = 'NoSO'
      Size = 30
    end
    object QuBeliNOPO: TStringField
      FieldName = 'NOPO'
      ReadOnly = True
      Size = 1
    end
    object QuBeliNamabrgKom: TStringField
      FieldName = 'NamabrgKom'
      Size = 200
    end
    object QuBeliMesurement: TBCDField
      FieldName = 'Mesurement'
      Precision = 18
      Size = 2
    end
    object QuBeliNamaKirim: TStringField
      FieldName = 'NamaKirim'
      Size = 100
    end
    object QuBeliAlamatkirim: TStringField
      FieldName = 'Alamatkirim'
      Size = 4000
    end
    object QuBeliSatuan: TStringField
      FieldName = 'Satuan'
      ReadOnly = True
      Size = 5
    end
    object QuBeliNoAlamatkirim: TIntegerField
      FieldName = 'NoAlamatkirim'
    end
    object QuBelikodegdg: TStringField
      FieldName = 'kodegdg'
      Size = 15
    end
    object QuBeliQNT1: TBCDField
      FieldName = 'QNT1'
      Precision = 18
      Size = 2
    end
    object QuBeliFlagTipe: TWordField
      FieldName = 'FlagTipe'
      ReadOnly = True
    end
  end
  object Sp_Beli: TADOStoredProc
    Connection = DM.MyStock
    CommandTimeout = 60
    ProcedureName = 'Sp_SPP;1'
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
        Name = '@NOBUKTI'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
      end
      item
        Name = '@NoUrut'
        Attributes = [paNullable]
        DataType = ftString
        Size = 7
      end
      item
        Name = '@TANGGAL'
        Attributes = [paNullable]
        DataType = ftDateTime
      end
      item
        Name = '@NoSHIP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
      end
      item
        Name = '@NoPesan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
      end
      item
        Name = '@KODECUSTSUPP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
      end
      item
        Name = '@TglKirim'
        Attributes = [paNullable]
        DataType = ftDateTime
      end
      item
        Name = '@ShippingMark'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8000
      end
      item
        Name = '@NoLC'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
      end
      item
        Name = '@Catatan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
      end
      item
        Name = '@URUT'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@UrutSHIP'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@KODEBRG'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
      end
      item
        Name = '@QNT'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@QNT2'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@SAT_1'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
      end
      item
        Name = '@SAT_2'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
      end
      item
        Name = '@NoSat'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
      end
      item
        Name = '@ISI'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@NetW'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@GrossW'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@KetDetail'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1000
      end
      item
        Name = '@IDUser'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
      end
      item
        Name = '@IsEmpty'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
      end
      item
        Name = '@Namabrg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 200
      end
      item
        Name = '@Mesurement'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@noAlamatKirim'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@NamaKirim'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
      end
      item
        Name = '@Alamatkirim'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8000
      end
      item
        Name = '@Flagmenu'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
      end
      item
        Name = '@Kodegdg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
      end
      item
        Name = '@FlagTipe'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
      end>
    Left = 197
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
    Parameters = <
      item
        Size = -1
        Value = Null
      end
      item
        Size = -1
        Value = Null
      end
      item
        Size = -1
        Value = Null
      end
      item
        Size = -1
        Value = Null
      end
      item
        Size = -1
        Value = Null
      end
      item
        Size = -1
        Value = Null
      end>
    Left = 169
    Top = 297
  end
  object QuUpdate: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    Left = 360
    Top = 192
  end
  object frxReport1: TfrxReport
    Version = '4.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40905.2924336227
    ReportOptions.LastChange = 40905.2924336227
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    OnAfterPrintReport = frxReport1AfterPrintReport
    Left = 376
    Top = 144
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
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDCetak'
    CloseDataSource = False
    DataSet = QuUpdatedbbeli
    Left = 408
    Top = 144
  end
  object frxDataPerusahaan: TfrxDBDataset
    UserName = 'frxDataPerusahaan'
    CloseDataSource = False
    Left = 400
    Top = 184
  end
end
