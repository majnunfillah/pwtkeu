object FrSubGiro: TFrSubGiro
  Left = 536
  Top = 161
  BorderStyle = bsDialog
  Caption = 'Input Data'
  ClientHeight = 453
  ClientWidth = 491
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
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 10
    Top = 48
    Width = 463
    Height = 385
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 15
    Top = 61
    Width = 27
    Height = 16
    Caption = 'Bank'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 15
    Top = 88
    Width = 46
    Height = 16
    Caption = 'No. Giro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 15
    Top = 113
    Width = 73
    Height = 16
    Caption = 'Tanggal Giro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LtglBuka: TLabel
    Left = 15
    Top = 212
    Width = 47
    Height = 16
    Caption = 'LtglBuka'
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
    Width = 91
    Height = 19
    Caption = 'Daftar Giro'
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
    Width = 463
    Height = 6
    Shape = bsTopLine
  end
  object Label7: TLabel
    Left = 15
    Top = 262
    Width = 65
    Height = 16
    Caption = 'Keterangan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lBuktiBuka: TLabel
    Left = 15
    Top = 237
    Width = 55
    Height = 16
    Caption = 'Transaksi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 15
    Top = 139
    Width = 51
    Height = 16
    Caption = 'Nilai Giro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 15
    Top = 163
    Width = 31
    Height = 16
    Caption = 'Valas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 15
    Top = 189
    Width = 25
    Height = 16
    Caption = 'Kurs'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lBank: TLabel
    Left = 248
    Top = 62
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
  object Label10: TLabel
    Left = 15
    Top = 287
    Width = 73
    Height = 16
    Caption = 'Tanggal Cair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 15
    Top = 337
    Width = 92
    Height = 16
    Caption = 'Keterangan Cair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel
    Left = 15
    Top = 312
    Width = 54
    Height = 16
    Caption = 'Bukti Cair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LValas: TLabel
    Left = 184
    Top = 188
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
    Left = 15
    Top = 362
    Width = 78
    Height = 16
    Caption = 'Perkiraan Kas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LKas: TLabel
    Left = 226
    Top = 366
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
  object Bank: TEdit
    Left = 117
    Top = 58
    Width = 125
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 25
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnEnter = BankEnter
    OnKeyDown = BankKeyDown
  end
  object NoGiro: TEdit
    Left = 117
    Top = 85
    Width = 125
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 15
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    OnEnter = NoGiroEnter
    OnExit = NoGiroExit
  end
  object BitBtn1: TBitBtn
    Left = 17
    Top = 402
    Width = 80
    Height = 27
    Caption = '&Simpan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
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
    Left = 98
    Top = 402
    Width = 80
    Height = 27
    Caption = '&Batal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
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
  object KeteranganBuka: TEdit
    Left = 117
    Top = 259
    Width = 277
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 50
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 8
  end
  object BuktiBuka: TEdit
    Left = 117
    Top = 234
    Width = 212
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Ctl3D = True
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 30
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 7
  end
  object TanggalGiro: TDateEdit
    Left = 117
    Top = 110
    Width = 100
    Height = 24
    CheckOnExit = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 2
  end
  object Jumlah: TPBNumEdit
    Left = 117
    Top = 135
    Width = 125
    Height = 24
    Alignment = taRightJustify
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    ParentFont = False
    TabOrder = 3
  end
  object TglBuka: TDateEdit
    Left = 117
    Top = 209
    Width = 100
    Height = 24
    CheckOnExit = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 6
  end
  object KodeVls: TEdit
    Left = 117
    Top = 160
    Width = 62
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 15
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
    OnEnter = KodeVlsEnter
    OnExit = KodeVlsExit
  end
  object Kurs: TPBNumEdit
    Left = 117
    Top = 185
    Width = 125
    Height = 24
    Alignment = taRightJustify
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    ParentFont = False
    TabOrder = 5
  end
  object TglCair: TDateEdit
    Left = 117
    Top = 284
    Width = 100
    Height = 24
    CheckOnExit = True
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 9
  end
  object KeteranganCair: TEdit
    Left = 117
    Top = 334
    Width = 277
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Ctl3D = True
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 50
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 12
  end
  object buktiCair: TEdit
    Left = 117
    Top = 309
    Width = 212
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Ctl3D = True
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 30
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 11
  end
  object Kas: TEdit
    Left = 117
    Top = 359
    Width = 108
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 50
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 10
    OnEnter = KasEnter
    OnKeyDown = KasKeyDown
  end
end
