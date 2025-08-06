object FrSubPerkiraan: TFrSubPerkiraan
  Left = 259
  Top = 212
  BorderStyle = bsDialog
  Caption = 'Input Data'
  ClientHeight = 348
  ClientWidth = 431
  Color = 16773589
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
  object Bevel1: TBevel
    Left = 10
    Top = 49
    Width = 408
    Height = 248
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 55
    Top = 64
    Width = 54
    Height = 16
    Alignment = taRightJustify
    Caption = 'Perkiraan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 44
    Top = 89
    Width = 65
    Height = 16
    Alignment = taRightJustify
    Caption = 'Keterangan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 9
    Top = 15
    Width = 141
    Height = 19
    Caption = 'Master Perkiraan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel2: TBevel
    Left = 11
    Top = 40
    Width = 408
    Height = 6
    Shape = bsTopLine
  end
  object Label3: TLabel
    Left = 54
    Top = 114
    Width = 55
    Height = 16
    Alignment = taRightJustify
    Caption = 'Kelompok'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 84
    Top = 139
    Width = 25
    Height = 16
    Alignment = taRightJustify
    Caption = 'Tipe'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 78
    Top = 164
    Width = 31
    Height = 16
    Alignment = taRightJustify
    Caption = 'Valas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 30
    Top = 192
    Width = 79
    Height = 16
    Alignment = taRightJustify
    Caption = 'Debet / Kredit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 222
    Top = 205
    Width = 39
    Height = 13
    Alignment = taRightJustify
    Caption = 'Neraca'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label10: TLabel
    Left = 218
    Top = 165
    Width = 38
    Height = 16
    Caption = '[ . . . ]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 70
    Top = 214
    Width = 39
    Height = 16
    Alignment = taRightJustify
    Caption = 'Simbol'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 274
    Top = 242
    Width = 35
    Height = 16
    Alignment = taRightJustify
    Caption = 'Lokasi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label12: TLabel
    Left = 59
    Top = 240
    Width = 50
    Height = 16
    Alignment = taRightJustify
    Caption = 'Arus Kas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 218
    Top = 241
    Width = 38
    Height = 16
    Caption = '[ . . . ]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel
    Left = 33
    Top = 268
    Width = 76
    Height = 16
    Alignment = taRightJustify
    Caption = 'Sub Arus Kas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel
    Left = 218
    Top = 268
    Width = 38
    Height = 16
    Caption = '[ . . . ]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Perkiraan: TEdit
    Left = 115
    Top = 61
    Width = 100
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 25
    ParentFont = False
    TabOrder = 0
    OnEnter = PerkiraanEnter
    OnExit = PerkiraanExit
  end
  object Keterangan: TEdit
    Left = 115
    Top = 86
    Width = 291
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 8000
    ParentFont = False
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 268
    Top = 308
    Width = 75
    Height = 25
    Caption = '&Simpan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
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
  object BitBtn2: TBitBtn
    Left = 343
    Top = 308
    Width = 75
    Height = 25
    Caption = '&Batal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
      33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
      993337777F777F3377F3393999707333993337F77737333337FF993399933333
      399377F3777FF333377F993339903333399377F33737FF33377F993333707333
      399377F333377FF3377F993333101933399377F333777FFF377F993333000993
      399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
      99333773FF777F777733339993707339933333773FF7FFF77333333999999999
      3333333777333777333333333999993333333333377777333333}
    NumGlyphs = 2
  end
  object Kelompok: TComboBox
    Left = 115
    Top = 111
    Width = 100
    Height = 24
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 16
    ItemIndex = 0
    ParentFont = False
    TabOrder = 3
    Text = 'Aktiva'
    Items.Strings = (
      'Aktiva'
      'Kewajiban'
      'Modal'
      'Pendapatan'
      'Biaya')
  end
  object Tipe: TComboBox
    Left = 115
    Top = 136
    Width = 100
    Height = 24
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 4
    Text = 'General'
    OnChange = TipeChange
    OnExit = TipeExit
    Items.Strings = (
      'General'
      'Detail')
  end
  object Valas: TEdit
    Left = 115
    Top = 161
    Width = 100
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnEnter = ValasEnter
    OnExit = ValasExit
  end
  object DK: TComboBox
    Left = 115
    Top = 186
    Width = 100
    Height = 24
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 16
    ItemIndex = 0
    ParentFont = False
    TabOrder = 6
    Text = 'Debet'
    Items.Strings = (
      'Debet'
      'Kredit')
  end
  object Neraca: TEdit
    Left = 267
    Top = 199
    Width = 100
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Visible = False
  end
  object Simbol: TEdit
    Left = 115
    Top = 211
    Width = 30
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 2
    ParentFont = False
    TabOrder = 8
  end
  object ISPpn: TCheckBox
    Left = 282
    Top = 65
    Width = 121
    Height = 17
    Caption = 'Perkiraan PPN ?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Visible = False
  end
  object Lokasi: TComboBox
    Left = 315
    Top = 236
    Width = 100
    Height = 24
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 16
    ItemIndex = 0
    ParentFont = False
    TabOrder = 9
    Text = 'Surabaya'
    Visible = False
    Items.Strings = (
      'Surabaya'
      'Gempol')
  end
  object ArusKas: TEdit
    Left = 115
    Top = 237
    Width = 100
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnEnter = ValasEnter
    OnExit = ArusKasExit
  end
  object SubArusKas: TEdit
    Left = 115
    Top = 263
    Width = 100
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnEnter = ValasEnter
    OnExit = SubArusKasExit
  end
end
