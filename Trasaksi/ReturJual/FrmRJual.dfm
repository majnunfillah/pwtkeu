object FrRJual: TFrRJual
  Left = 209
  Top = 68
  Width = 1258
  Height = 630
  Caption = 'Transaksi Retur Penjualan Barang'
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
    Width = 1250
    Height = 179
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Shape1: TShape
      Left = 809
      Top = 200
      Width = 280
      Height = 59
      Brush.Color = 14220537
      Pen.Color = clSilver
      Pen.Style = psClear
      Shape = stRoundRect
      Visible = False
    end
    object LAlamatKirim: TLabel
      Left = 815
      Top = 201
      Width = 266
      Height = 58
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
      WordWrap = True
    end
    object Shape4: TShape
      Left = 16
      Top = 33
      Width = 969
      Height = 2
      Brush.Color = clBlack
    end
    object Label5: TLabel
      Left = 16
      Top = 10
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
      Left = 151
      Top = 10
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
      Left = 720
      Top = 114
      Width = 44
      Height = 16
      Caption = 'Tgl SPP'
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
    object Label2: TLabel
      Left = 16
      Top = 42
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
      Top = 133
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
    object Label11: TLabel
      Left = 720
      Top = 89
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
      Visible = False
    end
    object Label13: TLabel
      Left = 720
      Top = 11
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
      Left = 88
      Top = 66
      Width = 384
      Height = 63
      Brush.Color = 14220537
      Pen.Color = clSilver
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object LNamaCustSupp: TLabel
      Left = 94
      Top = 66
      Width = 370
      Height = 16
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object LAlamatCustSupp: TLabel
      Left = 94
      Top = 81
      Width = 370
      Height = 47
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
    object Label6: TLabel
      Left = 720
      Top = 41
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
    object Label15: TLabel
      Left = 280
      Top = 323
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
    object Label14: TLabel
      Left = 720
      Top = 66
      Width = 39
      Height = 16
      Caption = 'Tgl SO'
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
      Left = 16
      Top = 158
      Width = 62
      Height = 16
      Caption = 'Tgl Invoice'
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
      Left = 480
      Top = 41
      Width = 61
      Height = 16
      Caption = 'Mata Uang'
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
      Left = 611
      Top = 41
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
    object Label22: TLabel
      Left = 480
      Top = 65
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
    object Label23: TLabel
      Left = 264
      Top = 216
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
      Visible = False
    end
    object Label24: TLabel
      Left = 264
      Top = 241
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
      Visible = False
    end
    object Label32: TLabel
      Left = 264
      Top = 264
      Width = 43
      Height = 16
      Caption = 'No. LKP'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Label33: TLabel
      Left = 264
      Top = 289
      Width = 42
      Height = 16
      Caption = 'Tgl LKP'
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
    object Label34: TLabel
      Left = 480
      Top = 90
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
    object Label35: TLabel
      Left = 641
      Top = 90
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
    object Label37: TLabel
      Left = 480
      Top = 114
      Width = 31
      Height = 16
      Caption = 'Sales'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LNamaSls: TLabel
      Left = 623
      Top = 112
      Width = 177
      Height = 16
      AutoSize = False
      Caption = '[ . . . ]'
      Transparent = True
    end
    object Label36: TLabel
      Left = 480
      Top = 137
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
    object Label38: TLabel
      Left = 728
      Top = 175
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
      Visible = False
    end
    object NoUrut: TEdit
      Left = 88
      Top = 6
      Width = 55
      Height = 24
      BevelKind = bkFlat
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
      Left = 232
      Top = 6
      Width = 179
      Height = 24
      BevelKind = bkFlat
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
    object TglSPP: TDateEdit
      Left = 805
      Top = 111
      Width = 141
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
      TabOrder = 17
      Visible = False
      OnChange = TanggalChange
      OnEnter = NoUrutEnter
      OnKeyDown = TanggalKeyDown
    end
    object Supp: TEdit
      Left = 88
      Top = 39
      Width = 105
      Height = 24
      BevelKind = bkFlat
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
      ReadOnly = True
      TabOrder = 3
      OnEnter = SuppEnter
      OnExit = SuppExit
      OnKeyDown = TanggalKeyDown
    end
    object NOPNJ: TEdit
      Left = 88
      Top = 130
      Width = 179
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
      OnEnter = NoUrutEnter
      OnExit = NOPNJExit
      OnKeyDown = TanggalKeyDown
    end
    object NOSPP: TEdit
      Left = 805
      Top = 86
      Width = 179
      Height = 24
      BevelKind = bkFlat
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
      TabOrder = 16
      Visible = False
      OnChange = TanggalChange
      OnEnter = NoUrutEnter
      OnKeyDown = TanggalKeyDown
    end
    object Tanggal: TDateEdit
      Left = 838
      Top = 8
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
    object NOSC: TEdit
      Left = 805
      Top = 38
      Width = 179
      Height = 24
      BevelKind = bkFlat
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
      OnEnter = NoUrutEnter
      OnKeyDown = TanggalKeyDown
    end
    object Tipe: TComboBox
      Left = 352
      Top = 319
      Width = 141
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
      TabOrder = 6
      Text = 'Lokal'
      Visible = False
      OnChange = TanggalChange
      OnKeyDown = TanggalKeyDown
      Items.Strings = (
        'Lokal'
        'Export')
    end
    object TglSC: TDateEdit
      Left = 805
      Top = 63
      Width = 141
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
      OnKeyDown = TanggalKeyDown
    end
    object TglInvoice: TDateEdit
      Left = 88
      Top = 155
      Width = 141
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
      TabOrder = 5
      OnChange = TanggalChange
      OnEnter = NoUrutEnter
      OnKeyDown = TanggalKeyDown
    end
    object KodeVls: TEdit
      Left = 565
      Top = 38
      Width = 42
      Height = 22
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
      MaxLength = 3
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
      Text = 'IDR'
      OnChange = TanggalChange
      OnKeyDown = TanggalKeyDown
    end
    object Kurs: TPBNumEdit
      Left = 641
      Top = 38
      Width = 76
      Height = 22
      Alignment = taRightJustify
      Ctl3D = False
      Decimals = 4
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
      TabOrder = 8
      Value = 1
    end
    object PPN: TComboBox
      Left = 565
      Top = 61
      Width = 152
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
      TabOrder = 9
      Text = 'NONE'
      OnChange = TanggalChange
      OnKeyDown = TanggalKeyDown
      Items.Strings = (
        'NONE'
        'Exclude'
        'Include')
    end
    object NoShip: TEdit
      Left = 346
      Top = 213
      Width = 179
      Height = 24
      BevelKind = bkFlat
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
      TabOrder = 10
      Visible = False
      OnEnter = NoUrutEnter
      OnKeyDown = TanggalKeyDown
    end
    object TglShip: TDateEdit
      Left = 346
      Top = 238
      Width = 141
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
      TabOrder = 11
      Visible = False
      OnChange = TanggalChange
      OnEnter = NoUrutEnter
      OnKeyDown = TanggalKeyDown
    end
    object NOLKP: TEdit
      Left = 346
      Top = 261
      Width = 179
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
      TabOrder = 12
      Visible = False
      OnChange = TanggalChange
      OnEnter = NoUrutEnter
      OnKeyDown = TanggalKeyDown
    end
    object TGLLKP: TDateEdit
      Left = 346
      Top = 286
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
      TabOrder = 13
      Visible = False
      OnChange = TanggalChange
      OnEnter = NoUrutEnter
      OnKeyDown = TanggalKeyDown
    end
    object TipeBayar: TComboBox
      Left = 565
      Top = 86
      Width = 73
      Height = 22
      BevelKind = bkFlat
      Ctl3D = False
      Enabled = False
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
      TabOrder = 18
      Text = 'TUNAI'
      OnChange = TanggalChange
      OnKeyDown = TanggalKeyDown
      Items.Strings = (
        'TUNAI'
        'KREDIT')
    end
    object Hari: TPBNumEdit
      Left = 673
      Top = 86
      Width = 33
      Height = 22
      Alignment = taRightJustify
      Enabled = False
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
      TabOrder = 19
    end
    object KodeSls: TEdit
      Left = 565
      Top = 110
      Width = 55
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clWhite
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 20
      OnChange = TanggalChange
      OnKeyDown = TanggalKeyDown
    end
    object PoNo: TEdit
      Left = 565
      Top = 134
      Width = 152
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
      TabOrder = 21
      OnEnter = NoUrutEnter
      OnKeyDown = TanggalKeyDown
    end
    object NoAlamatKirim: TEdit
      Left = 812
      Top = 175
      Width = 55
      Height = 22
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 22
      Visible = False
      OnChange = TanggalChange
      OnKeyDown = TanggalKeyDown
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 351
    Width = 1250
    Height = 245
    Align = alBottom
    BevelOuter = bvNone
    BorderWidth = 1
    TabOrder = 1
    Visible = False
    object LNamaBrg: TRxLabel
      Left = 230
      Top = 3
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
      Top = 3
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
      Left = 186
      Top = 212
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
      Left = 15
      Top = 124
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
      Left = 15
      Top = 55
      Width = 82
      Height = 16
      Caption = 'Quantity Retur'
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
      Left = 309
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
      Left = 733
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
      Left = 885
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
    object Label7: TLabel
      Left = 108
      Top = 194
      Width = 323
      Height = 16
      Caption = 'Tekan Tombol Tab untuk keluar dari inputan Keterangan'
    end
    object Label8: TLabel
      Left = 959
      Top = 8
      Width = 84
      Height = 16
      Caption = 'Quantity Tukar'
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
      Left = 1149
      Top = 8
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
    object Label25: TLabel
      Left = 871
      Top = 95
      Width = 63
      Height = 16
      Caption = 'Net Weight'
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
    object Label26: TLabel
      Left = 871
      Top = 122
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
    object Label27: TLabel
      Left = 711
      Top = 56
      Width = 67
      Height = 32
      Caption = 'Net Weight Tukar'
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
      WordWrap = True
    end
    object Label28: TLabel
      Left = 903
      Top = 58
      Width = 76
      Height = 32
      Caption = 'Gross Weight Tukar'
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
      WordWrap = True
    end
    object Label29: TLabel
      Left = 871
      Top = 147
      Width = 78
      Height = 16
      Caption = 'Measurement'
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
    object Label30: TLabel
      Left = 1087
      Top = 58
      Width = 104
      Height = 16
      Caption = 'Mesurement tukar'
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
    object Label31: TLabel
      Left = 15
      Top = 79
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
    object Label17: TLabel
      Left = 16
      Top = 28
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
      Visible = False
    end
    object Label18: TLabel
      Left = 293
      Top = 27
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
      Visible = False
    end
    object Label43: TLabel
      Left = 15
      Top = 105
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
    object Label44: TLabel
      Left = 183
      Top = 105
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
    object KodeBrg: TEdit
      Left = 108
      Top = 0
      Width = 117
      Height = 24
      BevelKind = bkFlat
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
      OnKeyDown = QntKeyDown
    end
    object BitBtn1: TBitBtn
      Left = 108
      Top = 212
      Width = 75
      Height = 25
      Caption = '&Simpan'
      TabOrder = 17
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
      Left = 108
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
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 2
      Value = 1
    end
    object Nosat: TComboBox
      Left = 202
      Top = 51
      Width = 103
      Height = 24
      BevelKind = bkFlat
      ItemHeight = 16
      TabOrder = 3
      Text = 'Pilih Satuan'
      OnChange = NosatChange
      OnEnter = NosatEnter
      OnExit = NosatChange
      OnKeyDown = QntKeyDown
    end
    object Qnt2: TPBNumEdit
      Left = 636
      Top = 2
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
      ParentCtl3D = False
      TabOrder = 5
      Value = 1
      Visible = False
    end
    object Qnt1: TPBNumEdit
      Left = 780
      Top = 2
      Width = 93
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      NumberFormat = Thousands
      OnEnter = KodeBrgEnter
      ParentCtl3D = False
      TabOrder = 6
      Value = 1
      Visible = False
    end
    object Ket: TMemo
      Left = 108
      Top = 125
      Width = 317
      Height = 70
      BevelKind = bkSoft
      BorderStyle = bsNone
      TabOrder = 16
      OnEnter = KetEnter
      OnExit = KetExit
    end
    object QntTukar: TPBNumEdit
      Left = 1052
      Top = 4
      Width = 93
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      NumberFormat = Thousands
      OnEnter = QntTukarEnter
      ParentCtl3D = False
      TabOrder = 4
      Value = 1
      Visible = False
    end
    object Qnt2Tukar: TPBNumEdit
      Left = 1100
      Top = 82
      Width = 93
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      NumberFormat = Thousands
      OnEnter = KodeBrgEnter
      ParentCtl3D = False
      TabOrder = 18
      Value = 1
      Visible = False
    end
    object NetW: TPBNumEdit
      Left = 956
      Top = 93
      Width = 93
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
      Value = 1
      Visible = False
    end
    object GrossW: TPBNumEdit
      Left = 956
      Top = 118
      Width = 93
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
      TabOrder = 9
      Value = 1
      Visible = False
    end
    object NetWTukar: TPBNumEdit
      Left = 804
      Top = 54
      Width = 93
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      NumberFormat = Thousands
      OnEnter = KodeBrgEnter
      ParentCtl3D = False
      TabOrder = 12
      Value = 1
      Visible = False
    end
    object GrossWTukar: TPBNumEdit
      Left = 988
      Top = 54
      Width = 93
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      NumberFormat = Thousands
      OnEnter = KodeBrgEnter
      ParentCtl3D = False
      TabOrder = 13
      Value = 1
      Visible = False
    end
    object Mesurement: TPBNumEdit
      Left = 956
      Top = 143
      Width = 93
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
      Value = 1
      Visible = False
    end
    object MesureTukar: TPBNumEdit
      Left = 1196
      Top = 54
      Width = 93
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      NumberFormat = Thousands
      OnEnter = KodeBrgEnter
      ParentCtl3D = False
      TabOrder = 11
      Value = 1
      Visible = False
    end
    object Harga: TPBNumEdit
      Left = 108
      Top = 77
      Width = 93
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
    object NoSPB: TEdit
      Left = 108
      Top = 25
      Width = 179
      Height = 24
      BevelKind = bkFlat
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
      TabOrder = 1
      Visible = False
      OnEnter = NoUrutEnter
      OnExit = NoSPBExit
      OnKeyDown = NoSPBKeyDown
    end
    object TglSPB: TDateEdit
      Left = 353
      Top = 25
      Width = 141
      Height = 24
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
      TabOrder = 19
      Visible = False
    end
    object DiscP: TPBNumEdit
      Left = 108
      Top = 102
      Width = 53
      Height = 22
      Alignment = taRightJustify
      Ctl3D = False
      Decimals = 2
      NumberFormat = Thousands
      OnExit = DiscPExit
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 14
    end
    object DiscRp: TPBNumEdit
      Left = 230
      Top = 102
      Width = 117
      Height = 22
      Alignment = taRightJustify
      Ctl3D = False
      Decimals = 2
      NumberFormat = Thousands
      OnExit = DiscPExit
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 15
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 179
    Width = 1250
    Height = 172
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 2
    object dxDBGrid1: TdxDBGrid
      Left = 5
      Top = 5
      Width = 1240
      Height = 102
      Bands = <
        item
          Fixed = bfLeft
          MinWidth = 0
          Width = 0
        end
        item
          Caption = 'Satuan 2'
          MinWidth = 0
          Visible = False
          Width = 0
        end
        item
          Caption = 'Kuantum'
          MinWidth = 0
          Width = 0
        end
        item
          Caption = 'Jumlah'
          MinWidth = 0
          Width = 0
        end
        item
          Caption = 'Weight'
          MinWidth = 0
          Visible = False
          Width = 237
        end
        item
          MinWidth = 0
          Width = 0
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
        Width = 53
        BandIndex = 0
        RowIndex = 0
        FieldName = 'URUT'
      end
      object dxDBGrid1Column14: TdxDBGridColumn
        Caption = 'No'
        HeaderAlignment = taCenter
        Width = 27
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UrutTrans'
      end
      object dxDBGrid1KODEBRG: TdxDBGridMaskColumn
        Caption = 'Kode Barang'
        HeaderAlignment = taCenter
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KODEBRG'
      end
      object dxDBGrid1NamaBrg: TdxDBGridMaskColumn
        Caption = 'Nama Barang'
        HeaderAlignment = taCenter
        Width = 208
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NamaBrg'
      end
      object dxDBGrid1QNT2: TdxDBGridMaskColumn
        Caption = 'Qty'
        HeaderAlignment = taCenter
        Width = 70
        BandIndex = 1
        RowIndex = 0
        FieldName = 'QNT2'
      end
      object dxDBGrid1SAT_2: TdxDBGridMaskColumn
        Caption = 'Sat'
        HeaderAlignment = taCenter
        Width = 40
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
        Caption = 'Qty'
        HeaderAlignment = taCenter
        Width = 70
        BandIndex = 2
        RowIndex = 0
        FieldName = 'QNT'
      end
      object dxDBGrid1SAT_1: TdxDBGridMaskColumn
        Caption = 'Sat'
        HeaderAlignment = taCenter
        Width = 40
        BandIndex = 2
        RowIndex = 0
        FieldName = 'Satuan'
      end
      object dxDBGrid1NOSO: TdxDBGridMaskColumn
        Caption = 'NOSO'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 5
        RowIndex = 0
        FieldName = 'NOPO'
      end
      object dxDBGrid1URUTSO: TdxDBGridMaskColumn
        Caption = 'URUTSO'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 5
        RowIndex = 0
        FieldName = 'URUTPO'
      end
      object dxDBGrid1NetW: TdxDBGridMaskColumn
        Caption = 'Net'
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 4
        RowIndex = 0
        FieldName = 'NetW'
      end
      object dxDBGrid1GrossW: TdxDBGridMaskColumn
        Caption = 'Gross'
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 4
        RowIndex = 0
        FieldName = 'GrossW'
      end
      object dxDBGrid1Mesurement: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 4
        RowIndex = 0
        FieldName = 'Mesurement'
      end
      object dxDBGrid1Keterangan: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 300
        BandIndex = 5
        RowIndex = 0
        FieldName = 'Keterangan'
      end
      object dxDBGrid1HARGA: TdxDBGridMaskColumn
        Caption = 'Harga'
        HeaderAlignment = taCenter
        Width = 102
        BandIndex = 3
        RowIndex = 0
        FieldName = 'HARGA'
      end
      object dxDBGrid1DISCTOT: TdxDBGridMaskColumn
        Caption = 'Diskon'
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 3
        RowIndex = 0
        FieldName = 'DISCTOT'
      end
      object dxDBGrid1SUBTOTAL: TdxDBGridMaskColumn
        Caption = 'Sub Total'
        HeaderAlignment = taCenter
        Width = 140
        BandIndex = 3
        RowIndex = 0
        FieldName = 'Total'
        SummaryFooterType = cstSum
        SummaryFooterField = 'SUBTOTAL'
        SummaryFooterFormat = ',0.00'
      end
    end
    object PanelShow1: TPanel
      Left = 5
      Top = 135
      Width = 1240
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
        Left = 154
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
        Left = 79
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
        Left = 4
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
        Left = 304
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
    end
    object Panel4: TPanel
      Left = 5
      Top = 107
      Width = 1240
      Height = 28
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object LDiskonP: TLabel
        Left = 10
        Top = 6
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
      object Label39: TLabel
        Left = 582
        Top = 6
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
      object Label40: TLabel
        Left = 445
        Top = 6
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
      object Label41: TLabel
        Left = 284
        Top = 6
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
        Left = 118
        Top = 6
        Width = 42
        Height = 16
        Alignment = taRightJustify
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
      object DiskonP: TPBNumEdit
        Left = 52
        Top = 3
        Width = 52
        Height = 22
        Alignment = taRightJustify
        DisabledColor = clInfoBk
        Enabled = False
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        ParentCtl3D = False
        TabOrder = 0
      end
      object GrandTotal: TPBNumEdit
        Left = 653
        Top = 3
        Width = 117
        Height = 22
        TabStop = False
        Alignment = taRightJustify
        DisabledColor = clInfoBk
        Enabled = False
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 4
      end
      object Pajak: TPBNumEdit
        Left = 470
        Top = 3
        Width = 100
        Height = 22
        TabStop = False
        Alignment = taRightJustify
        DisabledColor = clInfoBk
        Enabled = False
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
      object DPP: TPBNumEdit
        Left = 310
        Top = 3
        Width = 117
        Height = 22
        TabStop = False
        Alignment = taRightJustify
        DisabledColor = clInfoBk
        Enabled = False
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
      end
      object DiskonRp: TPBNumEdit
        Left = 166
        Top = 3
        Width = 100
        Height = 22
        Alignment = taRightJustify
        DisabledColor = clInfoBk
        Enabled = False
        Ctl3D = False
        Decimals = 2
        NumberFormat = Thousands
        ParentCtl3D = False
        TabOrder = 1
      end
    end
  end
  object QuBeli: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 60
    Parameters = <>
    SQL.Strings = (
      'declare @NoBukti varchar(30), @Flagmenu int'
      ''
      'Select '#9'@NoBukti='#39'SJY/RINVC/0113/00001'#39', @Flagmenu=1;'
      ''
      
        'With DataSPB(NOSPB, TGLSPB, NOINV,UrutINV, NoAlamatKirim, KodeSL' +
        'S, NOSO, TGLSO, NoSPP, TglSPP, NoPO) AS'
      
        '(Select a.NoBukti, a.Tanggal, d.NoBukti NoInvoice, D.Urut UrutIn' +
        'voice, e.NoAlamatKirim, f.KODESLS, F.NOBUKTI NOSO, F.TANGGAL TGL' +
        'SO,'
      '        e.NoBukti NoSPP, e.Tanggal TglSPP, f.NoPesanan'
      ' From dbSPB a'
      '      Left Outer join dbSPBDet b on b.NoBukti=a.NoBukti'
      
        '      left Outer join dbInvoicePLDet d on d.NoSPB=B.NoBukti and ' +
        'd.UrutSPB=b.Urut'
      
        '      Left Outer join dbSPPDet c on c.NoBukti=b.NoSPP and c.Urut' +
        '=b.UrutSPP  '
      '      Left Outer join dbSPP e on e.NoBukti=c.NoBukti'
      '      Left Outer join DBSO f on f.NOBUKTI=c.NoSO'
      
        ' Group by a.NoBukti, a.Tanggal, d.NoBukti,d.Urut, e.NoAlamatKiri' +
        'm, f.KODESLS, F.NOBUKTI, F.TANGGAL, e.NoBukti, e.Tanggal, f.NoPe' +
        'sanan)'
      ''
      
        'select  A.NOBUKTI, A.NOURUT, A.TANGGAL, A.TglJatuhTempo, A.KODEC' +
        'USTSUPP, D.NamaCustSupp, D.Alamat, D.Kota,'
      
        '        B.NOSPB, E.TGLSPB, E.NoSPP, E.TglSPP,A.NoInvoice, A.TglI' +
        'nvoice, A.noso nosc, A.TglSO TglSC,'
      
        '        A.KODEVLS, A.KURS, A.PPN, A.TIPEBAYAR, A.HARI,  A.DISC, ' +
        'A.DISCRP,'
      
        '        A.FREIGHT, A.LAIN2, A.ISCETAK, A.ISCETAKGDG, A.IsBatal, ' +
        'A.UserBatal, A.IDUser,'
      
        '        B.URUT, B.KODEBRG, B.NamaBrg NamaBrgKom, C.NamaBrg, B.QN' +
        'T QNT1, B.QNT2,'
      
        '        B.SAT_1, B.SAT_2, B.NoSat, B.ISI, B.HARGA, B.DiscP1, B.D' +
        'iscRp1, B.DiscP2, B.DiscRp2,'
      
        '        B.DiscP3, B.DiscRp3, B.DiscP4, B.DiscRp4, B.DISCTOT, B.B' +
        'YANGKUT, B.HRGNETTO,'
      
        '        B.NDISKON, B.SUBTOTAL, B.NDPP, B.NPPN, B.NNET, B.SUBTOTA' +
        'LRp,'
      '        B.NDPPRp, B.NPPNRp, B.NNETRp, B.UrutInvoice,'
      '        B.Keterangan,'
      
        '        B.UrutTrans, B.QntTukar, B.Qnt2Tukar, A.FlagRetur, A.Tip' +
        'e, B.NetW, B.GrossW,'
      
        '        B.NetWTukar, B.GrossWTukar, B.Mesurement, B.MesurementTu' +
        'kar, A.NoLKP, A.TglLKP,'
      '        Case when B.Nosat=1 then B.qnt'
      '             when B.Nosat=2 then B.qnt2'
      '             else 0.00'
      '        end Qnt,'
      '        Case when B.Nosat=1 then B.Sat_1'
      '             when B.Nosat=2 then B.Sat_2'
      '             else '#39#39
      
        '        end Satuan, E.KodeSLS, F.Nama NamaSLS, E.NoAlamatKirim, ' +
        'G.Nama, G.Alamat, E.NOSO, E.TGLSO, E.NoPO,'
      
        '        Case when A.Kodevls='#39'IDR'#39' then B.SubTotalRp  else B.SubT' +
        'otal end Total,'
      
        '        Case when A.Kodevls='#39'IDR'#39' then I.TotDiskonRp  else I.Tot' +
        'Diskon end Diskon,'
      
        '        Case when A.Kodevls='#39'IDR'#39' then I.TotDPPRp  else I.TotDPP' +
        ' end TotalDPP,'
      
        '        Case when A.Kodevls='#39'IDR'#39' then I.TotPPnRp  else I.TotPPn' +
        ' end TotalPPn,'
      
        '        Case when A.Kodevls='#39'IDR'#39' then I.TotNetRp  else I.TotNet' +
        ' end TotalNetto'
      'From DBRInvoicePL A'
      'Left Outer Join DBRInvoicePLDET B on B.NoBukti=A.NoBukti'
      'Left Outer Join DBBARANG c On C.KodeBrg=B.KodeBrg'
      'Left Outer Join vwBrowsCust D On D.KodeCustSupp=A.KodeCustSupp'
      
        'Left Outer join DataSPB E on e.NOINV=b.NoInvoice and E.UrutINV=b' +
        '.UrutInvoice'
      'Left Outer join dbKaryawan F on F.KeyNIK=E.KodeSLS'
      
        'Left Outer join DBALAMATCUST G on G.KODECUSTSUPP=A.KODECUSTSUPP ' +
        'and G.Nomor=E.NoAlamatKirim'
      'left Outer join vwRpDetRInvoicePL I on I.Nobukti=A.NOBUKTI'
      'where a.NoBukti=@NoBukti'
      'order By B.Urut')
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
    object QuBeliNOSPB: TStringField
      FieldName = 'NOSPB'
      Size = 30
    end
    object QuBeliTGLSPB: TDateTimeField
      FieldName = 'TGLSPB'
    end
    object QuBeliNoSPP: TStringField
      FieldName = 'NoSPP'
      Size = 30
    end
    object QuBeliTglSPP: TDateTimeField
      FieldName = 'TglSPP'
    end
    object QuBeliNoInvoice: TStringField
      FieldName = 'NoInvoice'
      Size = 30
    end
    object QuBeliTglInvoice: TDateTimeField
      FieldName = 'TglInvoice'
    end
    object QuBelinosc: TStringField
      FieldName = 'nosc'
      Size = 30
    end
    object QuBeliTglSC: TDateTimeField
      FieldName = 'TglSC'
    end
    object QuBeliKODEVLS: TStringField
      FieldName = 'KODEVLS'
      Size = 15
    end
    object QuBeliKURS: TBCDField
      FieldName = 'KURS'
      Precision = 18
      Size = 2
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
    object QuBeliDISC: TFloatField
      FieldName = 'DISC'
    end
    object QuBeliDISCRP: TBCDField
      FieldName = 'DISCRP'
      Precision = 18
    end
    object QuBeliFREIGHT: TBCDField
      FieldName = 'FREIGHT'
      Precision = 18
      Size = 2
    end
    object QuBeliLAIN2: TBCDField
      FieldName = 'LAIN2'
      Precision = 18
      Size = 2
    end
    object QuBeliISCETAK: TWordField
      FieldName = 'ISCETAK'
    end
    object QuBeliISCETAKGDG: TWordField
      FieldName = 'ISCETAKGDG'
    end
    object QuBeliIsBatal: TBooleanField
      FieldName = 'IsBatal'
    end
    object QuBeliUserBatal: TStringField
      FieldName = 'UserBatal'
      Size = 15
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
    object QuBeliNamaBrgKom: TStringField
      FieldName = 'NamaBrgKom'
      Size = 1000
    end
    object QuBeliNamaBrg: TStringField
      FieldName = 'NamaBrg'
      Size = 200
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
    object QuBeliHARGA: TBCDField
      FieldName = 'HARGA'
      DisplayFormat = ',0.00'
      Precision = 18
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
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliDiscRp2: TBCDField
      FieldName = 'DiscRp2'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliDiscP3: TBCDField
      FieldName = 'DiscP3'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliDiscRp3: TBCDField
      FieldName = 'DiscRp3'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliDiscP4: TBCDField
      FieldName = 'DiscP4'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliDiscRp4: TBCDField
      FieldName = 'DiscRp4'
      DisplayFormat = ',0.00'
      Precision = 18
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
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliHRGNETTO: TBCDField
      FieldName = 'HRGNETTO'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 21
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
      Size = 5
    end
    object QuBeliNDPP: TBCDField
      FieldName = 'NDPP'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 5
    end
    object QuBeliNPPN: TBCDField
      FieldName = 'NPPN'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliNNET: TBCDField
      FieldName = 'NNET'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 5
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
    object QuBeliUrutInvoice: TIntegerField
      FieldName = 'UrutInvoice'
    end
    object QuBeliKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 800
    end
    object QuBeliUrutTrans: TIntegerField
      FieldName = 'UrutTrans'
    end
    object QuBeliQntTukar: TBCDField
      FieldName = 'QntTukar'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuBeliQnt2Tukar: TBCDField
      FieldName = 'Qnt2Tukar'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuBeliFlagRetur: TWordField
      FieldName = 'FlagRetur'
    end
    object QuBeliTipe: TWordField
      FieldName = 'Tipe'
    end
    object QuBeliNetW: TBCDField
      FieldName = 'NetW'
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
    object QuBeliNetWTukar: TBCDField
      FieldName = 'NetWTukar'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuBeliGrossWTukar: TBCDField
      FieldName = 'GrossWTukar'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuBeliMesurement: TBCDField
      FieldName = 'Mesurement'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuBeliMesurementTukar: TBCDField
      FieldName = 'MesurementTukar'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuBeliNoLKP: TWideStringField
      FieldName = 'NoLKP'
      ReadOnly = True
      Size = 50
    end
    object QuBeliTglLKP: TDateTimeField
      FieldName = 'TglLKP'
      ReadOnly = True
    end
    object QuBeliQNT1: TBCDField
      FieldName = 'QNT1'
      Precision = 18
      Size = 2
    end
    object QuBeliSatuan: TStringField
      FieldName = 'Satuan'
      ReadOnly = True
      Size = 5
    end
    object QuBeliKodeSLS: TIntegerField
      FieldName = 'KodeSLS'
    end
    object QuBeliNamaSLS: TStringField
      FieldName = 'NamaSLS'
      Size = 50
    end
    object QuBeliNama: TStringField
      FieldName = 'Nama'
      Size = 100
    end
    object QuBeliAlamat_1: TStringField
      FieldName = 'Alamat_1'
      Size = 200
    end
    object QuBeliNOSO: TStringField
      FieldName = 'NOSO'
      Size = 30
    end
    object QuBeliTGLSO: TDateTimeField
      FieldName = 'TGLSO'
    end
    object QuBeliNoAlamatKirim: TIntegerField
      FieldName = 'NoAlamatKirim'
    end
    object QuBeliNoPO: TStringField
      FieldName = 'NoPO'
      Size = 150
    end
    object QuBeliTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 5
    end
    object QuBeliDiskon: TBCDField
      FieldName = 'Diskon'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliTotalDPP: TBCDField
      FieldName = 'TotalDPP'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 5
    end
    object QuBeliTotalPPn: TBCDField
      FieldName = 'TotalPPn'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliTotalNetto: TBCDField
      FieldName = 'TotalNetto'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 5
    end
  end
  object Sp_Beli: TADOStoredProc
    Connection = DM.MyStock
    CommandTimeout = 60
    ProcedureName = 'Sp_RInvoicePL;1'
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
        Name = '@Noinvoice'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@TglInvoice'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@IsLokal'
        Attributes = [paNullable]
        DataType = ftBoolean
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
        Name = '@Valas'
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
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@NOSC'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@TGLSC'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@NOSPP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@TGLSPP'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@NOSPB'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@TGLSPB'
        Attributes = [paNullable]
        DataType = ftDateTime
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
        Name = '@KODEBRG'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@Namabrg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 800
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
        Name = '@ISI'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NoSat'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@URUTInvoice'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Keterangan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 800
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
        Name = '@QntTukar'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Qnt2Tukar'
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
        Name = '@Mesurement'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NetWTukar'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@GrossWTukar'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@MesurementTukar'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
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
        Name = '@NOLKP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@TglLKP'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Disc'
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
        Name = '@DiscP1'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@DiscRp1'
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
      end>
    Prepared = True
    Left = 229
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
  object QuReport: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    SQL.Strings = (
      'declare @NoBukti varchar(30)'
      ''
      'select '#9'@NoBukti='#39'VSM/092009/00001/PNJ'#39
      ''
      'select * from vwCetakRPJ'
      'where Nobukti=@nobukti'
      'order By Urut'
      ''
      '')
    Left = 336
    Top = 64
  end
  object frxReport1: TfrxReport
    Version = '4.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40693.8264650232
    ReportOptions.LastChange = 40693.8264650232
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnAfterPrintReport = frxReport1AfterPrintReport
    Left = 392
    Top = 48
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
    Left = 392
    Top = 80
  end
end
