object FrNoBuktiInvoicePL: TFrNoBuktiInvoicePL
  Left = 594
  Top = 220
  BorderStyle = bsDialog
  Caption = 'Pembuatan Invoice Baru'
  ClientHeight = 173
  ClientWidth = 424
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Bevel1: TBevel
    Left = 5
    Top = 56
    Width = 412
    Height = 71
    Shape = bsFrame
  end
  object Label4: TLabel
    Left = 8
    Top = 67
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
    Left = 157
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
  object Label42: TLabel
    Left = 8
    Top = 99
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
  object NoUrut: TEdit
    Left = 77
    Top = 64
    Width = 73
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
    MaxLength = 5
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnChange = NoUrutChange
    OnEnter = NoUrutEnter
    OnExit = NoUrutExit
  end
  object NoBukti: TEdit
    Left = 240
    Top = 64
    Width = 169
    Height = 22
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
    OnEnter = NoUrutEnter
  end
  object Tanggal: TDateEdit
    Left = 77
    Top = 96
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
    OnEnter = NoUrutEnter
    OnExit = TanggalExit
  end
  object BitBtn1: TBitBtn
    Left = 241
    Top = 134
    Width = 75
    Height = 28
    Caption = '&Simpan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ModalResult = 1
    ParentFont = False
    TabOrder = 3
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
    Left = 317
    Top = 134
    Width = 75
    Height = 28
    Caption = '&Batal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
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
  object PilihanInvoice: TRadioGroup
    Left = 5
    Top = 0
    Width = 412
    Height = 49
    Columns = 2
    Enabled = False
    ItemIndex = 0
    Items.Strings = (
      'Lokal'
      'Ekspor')
    TabOrder = 5
    OnClick = PilihanInvoiceClick
  end
end
