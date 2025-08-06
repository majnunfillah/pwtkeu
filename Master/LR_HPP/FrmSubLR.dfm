object FrSubLR: TFrSubLR
  Left = 162
  Top = 192
  BorderStyle = bsDialog
  Caption = 'Input Data'
  ClientHeight = 228
  ClientWidth = 485
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
    Top = 48
    Width = 465
    Height = 145
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 50
    Top = 61
    Width = 38
    Height = 16
    Alignment = taRightJustify
    Caption = 'Nomor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 34
    Top = 86
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
  object Label3: TLabel
    Left = 23
    Top = 111
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
  object Label5: TLabel
    Left = 63
    Top = 135
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
  object Label9: TLabel
    Left = 9
    Top = 14
    Width = 142
    Height = 19
    Caption = 'Master Laba Rugi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel2: TBevel
    Left = 10
    Top = 40
    Width = 465
    Height = 6
    Shape = bsTopLine
  end
  object Label7: TLabel
    Left = 228
    Top = 135
    Width = 36
    Height = 16
    Alignment = taRightJustify
    Caption = 'Tanda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 314
    Top = 133
    Width = 40
    Height = 16
    Alignment = taRightJustify
    Caption = 'Jumlah'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 227
    Top = 161
    Width = 39
    Height = 16
    Alignment = taRightJustify
    Caption = 'Tampil'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 29
    Top = 161
    Width = 59
    Height = 16
    Alignment = taRightJustify
    Caption = 'Persentasi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label18: TLabel
    Left = 188
    Top = 84
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
  object Label4: TLabel
    Left = 360
    Top = 160
    Width = 34
    Height = 16
    Alignment = taRightJustify
    Caption = 'Group'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Nomor: TEdit
    Left = 96
    Top = 56
    Width = 90
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 15
    ParentFont = False
    TabOrder = 0
    OnEnter = NomorEnter
    OnExit = NomorExit
  end
  object Perkiraan: TEdit
    Left = 96
    Top = 81
    Width = 90
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 15
    ParentFont = False
    TabOrder = 1
    OnEnter = PerkiraanEnter
    OnKeyDown = PerkiraanKeyDown
  end
  object BitBtn1: TBitBtn
    Left = 316
    Top = 196
    Width = 80
    Height = 27
    Caption = '&Simpan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
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
    Left = 395
    Top = 196
    Width = 80
    Height = 27
    Caption = '&Batal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
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
  object Keterangan: TEdit
    Left = 96
    Top = 106
    Width = 365
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 50
    ParentFont = False
    TabOrder = 2
  end
  object Persentasi: TEdit
    Left = 96
    Top = 157
    Width = 33
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 1
    ParentFont = False
    TabOrder = 6
    OnEnter = PersentasiEnter
    OnExit = PersentasiExit
  end
  object Group: TEdit
    Left = 400
    Top = 156
    Width = 42
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 4
    ParentFont = False
    TabOrder = 8
  end
  object Tipe: TComboBox
    Left = 96
    Top = 131
    Width = 129
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
    Items.Strings = (
      ''
      '1 - Mutasi Debet'
      '2 - Mutasi Kredit'
      '3 - Koreksi Debet'
      '4 - Koreksi Kredit'
      'A - Saldo Awal'
      'K - Saldo Akhir'
      'Z - Persedian Akhir'
      'M - Mutasi'
      'H - HPP'
      '')
  end
  object Tanda: TComboBox
    Left = 268
    Top = 131
    Width = 45
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
    TabOrder = 4
    OnEnter = TandaEnter
    OnExit = TandaExit
    Items.Strings = (
      ''
      '+'
      '-')
  end
  object Tampil: TComboBox
    Left = 268
    Top = 157
    Width = 80
    Height = 24
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 7
    Text = 'Y - Ya'
    Items.Strings = (
      'Y - Ya'
      'T - Tidak')
  end
  object Jumlah: TComboBox
    Left = 358
    Top = 131
    Width = 103
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
    TabOrder = 5
    Items.Strings = (
      ''
      'T - Total'
      'G - Group'
      'S - Sub Group')
  end
end
