object FrPembayaran: TFrPembayaran
  Left = 306
  Top = 5
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Pembayaran'
  ClientHeight = 670
  ClientWidth = 789
  Color = 14465460
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 5
    Top = 5
    Width = 780
    Height = 644
    Shape = bsFrame
    Style = bsRaised
  end
  object Bevel1: TBevel
    Left = 5
    Top = 536
    Width = 779
    Height = 10
    Shape = bsTopLine
  end
  object Label23: TLabel
    Left = 143
    Top = 154
    Width = 67
    Height = 25
    Alignment = taRightJustify
    Caption = 'Jumlah'
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 158
    Top = 309
    Width = 52
    Height = 25
    Alignment = taRightJustify
    Caption = 'Tunai'
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 136
    Top = 614
    Width = 74
    Height = 25
    Alignment = taRightJustify
    Caption = 'Kembali'
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 104
    Top = 353
    Width = 106
    Height = 25
    Alignment = taRightJustify
    Caption = 'Debet Card'
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 104
    Top = 432
    Width = 106
    Height = 25
    Alignment = taRightJustify
    Caption = 'Kredit Card'
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel
    Left = 133
    Top = 545
    Width = 77
    Height = 25
    Alignment = taRightJustify
    Caption = 'Voucher'
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 423
    Top = 352
    Width = 38
    Height = 25
    Alignment = taRightJustify
    Caption = 'No. '
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object Label7: TLabel
    Left = 415
    Top = 387
    Width = 46
    Height = 25
    Alignment = taRightJustify
    Caption = 'Bank'
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object Label8: TLabel
    Left = 423
    Top = 466
    Width = 38
    Height = 25
    Alignment = taRightJustify
    Caption = 'No. '
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object Label9: TLabel
    Left = 415
    Top = 501
    Width = 46
    Height = 25
    Alignment = taRightJustify
    Caption = 'Bank'
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object Bevel3: TBevel
    Left = 5
    Top = 344
    Width = 779
    Height = 11
    Shape = bsTopLine
  end
  object Bevel4: TBevel
    Left = 5
    Top = 422
    Width = 779
    Height = 11
    Shape = bsTopLine
  end
  object Label14: TLabel
    Left = 415
    Top = 431
    Width = 46
    Height = 25
    Alignment = taRightJustify
    Caption = 'Jenis'
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object SpeedButton1: TSpeedButton
    Left = 619
    Top = 596
    Width = 24
    Height = 47
    Glyph.Data = {
      76080000424DB608000000000000B60000002800000020000000100000000100
      2000000000000008000000000000000000001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00800080008000
      800080008000800080008000800000000000FFFFFF00FFFFFF00000000008000
      8000800080000000FF00000080000000FF008000800000000000800080008000
      800080008000FFFFFF00FFFFFF007F7F7F0080008000FFFFFF007F7F7F008000
      8000800080007F7F7F00FFFFFF007F7F7F00FFFFFF007F7F7F00800080007F7F
      7F00000000000000000000000000FFFFFF00FFFFFF0000000000800080008000
      8000800080000000FF00000080000000FF000000000000808000800080008000
      80007F7F7F007F7F7F007F7F7F0080008000FFFFFF007F7F7F00800080008000
      8000800080007F7F7F00FFFFFF007F7F7F007F7F7F00800080007F7F7F000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080008000800080008000
      8000800080000000FF00000080000000FF000080800000808000800080007F7F
      7F0080008000FFFFFF00FFFFFF00800080007F7F7F00FFFFFF00800080008000
      8000800080007F7F7F00FFFFFF007F7F7F00FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF00FFFFFF000000000080008000800080008000
      8000800080000000FF00000080000000FF0000808000008080007F7F7F00FFFF
      FF007F7F7F007F7F7F0080008000FFFFFF007F7F7F00FFFFFF00800080008000
      8000800080007F7F7F00FFFFFF007F7F7F00FFFFFF007F7F7F00000000000000
      0000800080008000800000000000FFFFFF000000000080008000800080008000
      8000800080000000FF00000080000000FF0000808000800080007F7F7F007F7F
      7F0080008000800080007F7F7F00FFFFFF007F7F7F00FFFFFF00800080008000
      8000FFFFFF007F7F7F00800080007F7F7F007F7F7F00FFFFFF00000000007F7F
      7F00800080008000800000000000FFFFFF000000000080008000800080008000
      80000000FF000000FF000000FF000000FF000000FF00800080007F7F7F008000
      800080008000800080007F7F7F00800080007F7F7F008000800080008000FFFF
      FF007F7F7F00FFFFFF00FFFFFF00FFFFFF007F7F7F00FFFFFF00800080008000
      80007F7F7F0000000000FFFFFF00000000007F7F7F0080008000800080000000
      0000000080000000800000008000000080000000800080008000800080008000
      8000800080007F7F7F00FFFFFF007F7F7F008000800080008000FFFFFF007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F0080008000800080008000
      80000000000000000000000000007F7F7F008000800080008000000000000080
      8000008080000080800000000000800080008000800080008000800080008000
      80007F7F7F007F7F7F007F7F7F008000800080008000FFFFFF007F7F7F008000
      8000FFFFFF007F7F7F007F7F7F00FFFFFF008000800080008000800080008000
      8000800080008000800080008000800080008000800000000000008080000080
      8000008080008000800000000000800080008000800080008000800080008000
      800080008000FFFFFF00FFFFFF0080008000FFFFFF007F7F7F0080008000FFFF
      FF007F7F7F00800080007F7F7F00FFFFFF008000800080008000800080008000
      8000000000000000000080008000800080000000000000808000008080000080
      8000800080008000800000000000800080008000800080008000800080008000
      80007F7F7F007F7F7F00FFFFFF00FFFFFF007F7F7F0080008000FFFFFF007F7F
      7F0080008000800080007F7F7F00FFFFFF008000800080008000800080000000
      0000800080000000000080008000000000000080800000808000008080008000
      8000800080008000800000000000800080008000800080008000800080007F7F
      7F00800080007F7F7F00FFFFFF007F7F7F0080008000FFFFFF007F7F7F008000
      800080008000800080007F7F7F00FFFFFF008000800080008000000000008000
      8000000000000000000000000000008080000080800000808000800080008000
      80008000800080008000000000008000800080008000800080007F7F7F00FFFF
      FF007F7F7F007F7F7F007F7F7F00FFFFFF00FFFFFF007F7F7F00800080008000
      800080008000800080007F7F7F00FFFFFF008000800080008000000000000000
      0000000000000000000000000000000000000080800080008000800080008000
      8000800080007F7F7F00000000007F7F7F0080008000800080007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00FFFFFF00800080008000
      800080008000800080007F7F7F00FFFFFF008000800080008000800080008000
      8000000000000000000000000000000000000000000080008000800080008000
      8000800080007F7F7F00000000007F7F7F008000800080008000800080008000
      80007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00FFFFFF00FFFFFF008000
      800080008000800080007F7F7F00FFFFFF008000800080008000800080008000
      800000808000000000000000000000000000000000007F7F7F00800080008000
      8000800080007F7F7F00000000007F7F7F008000800080008000800080008000
      80007F7F7F00FFFFFF007F7F7F007F7F7F007F7F7F007F7F7F00FFFFFF00FFFF
      FF00FFFFFF00800080007F7F7F00800080008000800080008000800080008000
      8000008080000080800080008000000000000000000000000000000000000000
      0000800080008000800080008000800080008000800080008000800080008000
      80007F7F7F007F7F7F00800080007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F00800080008000800080008000800080008000800080008000}
    NumGlyphs = 2
    OnClick = SpeedButton1Click
  end
  object Label12: TLabel
    Left = 462
    Top = 272
    Width = 161
    Height = 25
    Alignment = taRightJustify
    Caption = 'Keterangan Batal'
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object Label17: TLabel
    Left = 184
    Top = 272
    Width = 26
    Height = 25
    Alignment = taRightJustify
    Caption = 'DP'
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label18: TLabel
    Left = 173
    Top = 192
    Width = 37
    Height = 25
    Alignment = taRightJustify
    Caption = 'TAX'
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label19: TLabel
    Left = 127
    Top = 229
    Width = 83
    Height = 25
    Alignment = taRightJustify
    Caption = 'SERVICE'
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label40: TLabel
    Left = 136
    Top = 580
    Width = 71
    Height = 25
    Caption = 'Piutang'
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object BitBtn1: TBitBtn
    Left = 487
    Top = 596
    Width = 133
    Height = 47
    Caption = '&Cetak Nota'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
    OnClick = BitBtn1Click
    Glyph.Data = {
      66010000424D6601000000000000760000002800000014000000140000000100
      040000000000F000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
      FFFFFFFF2000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      00000000000FFFFFFF00FFF0777777777070FFFFFFFFFF000000000000070FFF
      FF00FF07777777FFF77070FFFFFFFF0777777700077000FF0000FF0777777777
      777070FF4E04FF00000000000000770F4D00FFF0777777777708070F1400FFFF
      000000000070800F9001FFFFF0FFFFFFF077080F1000FFFFFF0F0000FF0000FF
      FFFFFFFFFF0FFFFFFF0FFFFFFFFFFFFFFFF0F0000FF0FFFFFFFFFFFFFFF0FFFF
      FFF0FFFFFFFFFFFFFFFF00000000FFFF0000FFFFFFFFFFFFFFFFFFFFFF00FFFF
      FFFFFFFFFFFFFFFFFFFF}
  end
  object Total: TPBNumEdit
    Left = 213
    Top = 151
    Width = 181
    Height = 33
    Alignment = taRightJustify
    DisabledColor = clWhite
    Enabled = False
    Ctl3D = True
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    OnChange = JumlahBayarChange
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
  end
  object JumlahBayar: TPBNumEdit
    Left = 213
    Top = 306
    Width = 181
    Height = 33
    Alignment = taRightJustify
    DisabledColor = clWhite
    Ctl3D = True
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    OnChange = JumlahBayarChange
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
  end
  object Kembali: TPBNumEdit
    Left = 213
    Top = 611
    Width = 181
    Height = 33
    Alignment = taRightJustify
    DisabledColor = clWhite
    Enabled = False
    Ctl3D = True
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 13
  end
  object NoDebet: TEdit
    Left = 465
    Top = 349
    Width = 310
    Height = 33
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 25
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 5
    Visible = False
  end
  object BayarDebet: TPBNumEdit
    Left = 213
    Top = 350
    Width = 181
    Height = 33
    Alignment = taRightJustify
    DisabledColor = clWhite
    Ctl3D = True
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    OnChange = BayarDebetChange
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
  end
  object BayarKredit: TPBNumEdit
    Left = 213
    Top = 428
    Width = 181
    Height = 33
    Alignment = taRightJustify
    DisabledColor = clWhite
    Ctl3D = True
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    OnChange = BayarKreditChange
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 7
  end
  object BayarVoucher: TPBNumEdit
    Left = 213
    Top = 542
    Width = 181
    Height = 33
    Alignment = taRightJustify
    DisabledColor = clWhite
    Ctl3D = True
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    OnChange = BayarVoucherChange
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 11
  end
  object BankDebet: TEdit
    Left = 465
    Top = 384
    Width = 107
    Height = 33
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 25
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 6
    Visible = False
  end
  object TipeKreditCard: TComboBox
    Left = 466
    Top = 428
    Width = 167
    Height = 33
    BevelInner = bvNone
    Style = csDropDownList
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 25
    ItemIndex = 0
    ParentFont = False
    TabOrder = 8
    Text = 'MASTER CARD'
    Visible = False
    Items.Strings = (
      'MASTER CARD'
      'VISA')
  end
  object NoKredit: TEdit
    Left = 466
    Top = 463
    Width = 310
    Height = 33
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 25
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 9
    Visible = False
  end
  object BankKredit: TEdit
    Left = 466
    Top = 498
    Width = 107
    Height = 33
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 25
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 10
    Visible = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 16
    Width = 769
    Height = 127
    Caption = ' Diskon '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label10: TLabel
      Left = 126
      Top = 17
      Width = 76
      Height = 25
      Alignment = taRightJustify
      Caption = 'Member'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object NamaMember: TLabel
      Left = 423
      Top = 17
      Width = 82
      Height = 25
      Caption = '[ CASH ]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 31
      Top = 51
      Width = 171
      Height = 25
      Alignment = taRightJustify
      Caption = 'Disc. Member (%)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 27
      Top = 86
      Width = 175
      Height = 25
      Alignment = taRightJustify
      Caption = 'Disc. Member (Rp)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 425
      Top = 51
      Width = 156
      Height = 25
      Alignment = taRightJustify
      Caption = 'Disc. Harian (%)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 421
      Top = 90
      Width = 160
      Height = 25
      Alignment = taRightJustify
      Caption = 'Disc. Harian (Rp)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object KodeCust: TEdit
      Left = 205
      Top = 14
      Width = 180
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'CASH'
      OnEnter = KodeCustEnter
      OnExit = KodeCustExit
    end
    object DiscCust: TPBNumEdit
      Left = 205
      Top = 49
      Width = 76
      Height = 33
      Alignment = taRightJustify
      DisabledColor = clWhite
      Enabled = False
      Ctl3D = True
      Decimals = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      NumberFormat = Thousands
      OnChange = DiscCustChange
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object nDiskonCust: TPBNumEdit
      Left = 205
      Top = 84
      Width = 180
      Height = 33
      Alignment = taRightJustify
      DisabledColor = clWhite
      Enabled = False
      Ctl3D = True
      Decimals = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      NumberFormat = Thousands
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object DiscHarian: TPBNumEdit
      Left = 589
      Top = 49
      Width = 76
      Height = 33
      Alignment = taRightJustify
      DisabledColor = clWhite
      Enabled = False
      Ctl3D = True
      Decimals = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      NumberFormat = Thousands
      OnChange = DiscHarianChange
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object nDiscHarian: TPBNumEdit
      Left = 589
      Top = 84
      Width = 172
      Height = 33
      Alignment = taRightJustify
      DisabledColor = clWhite
      Enabled = False
      Ctl3D = True
      Decimals = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      NumberFormat = Thousands
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
  end
  object BitBtn2: TBitBtn
    Left = 644
    Top = 596
    Width = 141
    Height = 47
    Caption = '&Batal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    OnClick = BitBtn2Click
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C000000000000000000000000000000000000C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000052007B52007B52007B0000
      00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000052007B52007B52007B00
      0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000AD5AFF5200D65200D65200
      7B000000C0C0C0C0C0C0C0C0C0C0C0C000000052007B5200D65200D652007B00
      0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000AD5AFF5200D65200D65200
      D652007B000000C0C0C0C0C0C000000052007B5200D65200D65200D6AD5AFF00
      0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000AD5AFF5200D65200
      D65200D652007B00000000000052007B5200D65200D65200D6AD5AFF000000C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000AD5AFF5200
      D65200D65200D652007B52007B5200D65200D65200D6AD5AFF000000C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000AD5A
      FF5200D65200D65200D65200D65200D65200D6AD5AFF000000C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000
      00AD5AFF5200D65200D65200D65200D6AD5AFF000000C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000
      0052007B5200D65200D65200D65200D652007B000000C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000005200
      7B5200D65200D65200D65200D65200D65200D652007B000000C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000052007B5200
      D65200D65200D6AD5AFFAD5AFF5200D65200D65200D652007B000000C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000052007B5200D65200
      D65200D6AD5AFF000000000000AD5AFF5200D65200D65200D652007B000000C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000052007B5200D65200D65200
      D6AD5AFF000000C0C0C0C0C0C0000000AD5AFF5200D65200D65200D652007B00
      0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000AD5AFF5200D65200D6AD5A
      FF000000C0C0C0C0C0C0C0C0C0C0C0C0000000AD5AFF5200D65200D652007B00
      0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000AD5AFFAD5AFFAD5AFF0000
      00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000AD5AFFAD5AFFAD5AFF00
      0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
  end
  object Catatan: TEdit
    Left = 465
    Top = 301
    Width = 310
    Height = 33
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 30
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    Visible = False
  end
  object DP: TPBNumEdit
    Left = 213
    Top = 269
    Width = 181
    Height = 33
    Alignment = taRightJustify
    DisabledColor = clWhite
    Enabled = False
    Ctl3D = True
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    OnChange = JumlahBayarChange
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 16
  end
  object Tax: TPBNumEdit
    Left = 213
    Top = 189
    Width = 181
    Height = 33
    Alignment = taRightJustify
    DisabledColor = clWhite
    Enabled = False
    Ctl3D = True
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    OnChange = JumlahBayarChange
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 17
  end
  object Service: TPBNumEdit
    Left = 213
    Top = 226
    Width = 181
    Height = 33
    Alignment = taRightJustify
    DisabledColor = clWhite
    Enabled = False
    Ctl3D = True
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    OnChange = JumlahBayarChange
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 18
  end
  object Piutang: TPBNumEdit
    Left = 213
    Top = 576
    Width = 180
    Height = 33
    Alignment = taRightJustify
    Ctl3D = True
    Decimals = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    OnChange = JumlahBayarChange
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 12
  end
end
