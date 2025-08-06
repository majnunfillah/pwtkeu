object FrRPembelian: TFrRPembelian
  Left = 360
  Top = 105
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Input Data Retur Pembelian'
  ClientHeight = 374
  ClientWidth = 441
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
    Top = 50
    Width = 428
    Height = 279
    Shape = bsFrame
  end
  object LNamaSubTipe: TRxLabel
    Left = 157
    Top = 171
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
  object Label1: TLabel
    Left = 13
    Top = 171
    Width = 51
    Height = 16
    Caption = 'Sub Tipe'
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 13
    Top = 196
    Width = 47
    Height = 16
    Caption = 'Quantity'
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 165
    Top = 196
    Width = 34
    Height = 16
    Caption = 'Harga'
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 13
    Top = 70
    Width = 50
    Height = 16
    Caption = 'No. Bukti'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 13
    Top = 122
    Width = 47
    Height = 16
    Caption = 'Supplier'
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object LNamaCustSupp: TLabel
    Left = 157
    Top = 119
    Width = 38
    Height = 16
    Caption = '[ . . . ]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel
    Left = 13
    Top = 95
    Width = 46
    Height = 16
    Caption = 'Tanggal'
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label7: TLabel
    Left = 218
    Top = 69
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
    Visible = False
  end
  object Label9: TLabel
    Left = 13
    Top = 146
    Width = 29
    Height = 16
    Caption = 'Tipe '
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object LNamaTipe: TRxLabel
    Left = 157
    Top = 146
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
  object Image1: TImage
    Left = 5
    Top = 5
    Width = 32
    Height = 32
    AutoSize = True
    Picture.Data = {
      055449636F6E0000010001002020000000000000A80C00001600000028000000
      2000000040000000010018000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FFFFA5F7F700ADFF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000A5F7F7A5F7F700FFFFA5F7F700ADFF00ADFF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000A5F7F7A5F7F700FFFFA5F7F700ADFF00ADFF00
      000000FFFFA5F7F700ADFF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000A5F7F7A5F7F700FFFFA5F7F700ADFF00ADFF00
      000000FFFFA5F7F700ADFF00ADFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000A5F7F7A5F7F700FFFFA5F7F700ADFF00ADFF00
      000000FFFFA5F7F700ADFF00ADFF00000000FFFFA5F7F700ADFF000000000000
      7373737373737373737373730000000000000000000000000000000000000000
      00000000000000000000000000A5F7F7A5F7F700FFFFA5F7F700ADFF00ADFF00
      000000FFFFA5F7F700ADFF00ADFF00000000FFFFA5F7F700ADFF00ADFF000000
      7373737373737373737373737373730000000000000000000000000000000000
      00000000000000000000000000A5F7F7A5F7F700FFFFA5F7F700ADFF00ADFF00
      000000FFFFA5F7F700ADFF00ADFF00000000FFFFA5F7F700ADFF00ADFF000000
      C0C0C0C0C0C07373737373737373737373737373737373737373730000000000
      00000000000000000000000000A5F7F7A5F7F700FFFFA5F7F700ADFF00ADFF00
      000000FFFFA5F7F700ADFF00ADFF00000000FFFFA5F7F700ADFF00ADFF000000
      C0C0C0C0C0C07373737373737373737373737373737373737373737373730000
      00000000000000C6C6C6000000A5F7F7A5F7F700FFFFA5F7F700FFFF00FFFF00
      000000FFFFA5F7F700ADFF00ADFF00000000FFFFA5F7F700ADFF00ADFF000000
      C0C0C0C0C0C0737373737373737373C0C0C0C0C0C07373737373737373737373
      73000000000000737373000000A5F7F7A5F7F7A5F7F700FFFF00FFFF00ADFF00
      ADFF000000A5F7F700ADFF00ADFF00000000FFFFA5F7F700ADFF00ADFF000000
      C0C0C0C0C0C0737373737373737373C0C0C0C0C0C07373737373737373737373
      73000000000000000000A5F7F7A5F7F7A5F7F7A5F7F700FFFF00FFFF00ADFF00
      ADFF000000A5F7F700FFFF00FFFF00000000FFFFA5F7F700ADFF00ADFF000000
      C0C0C0C0C0C0737373737373737373C0C0C0C0C0C07373737373737373737373
      73000000000000000000A5F7F7A5F7F7A5F7F7A5F7F700FFFF00FFFF00ADFF00
      ADFF00000000FFFF00FFFF00ADFF00ADFF000000A5F7F700ADFF00ADFF000000
      C0C0C0C0C0C0737373737373737373C0C0C0C0C0C07373737373737373737373
      73000000000000000000A5F7F7A5F7F7A5F7F7A5F7F700FFFF00FFFF00ADFF00
      ADFF00000000FFFF00FFFF00ADFF00ADFF000000A5F7F700FFFF00FFFF000000
      C0C0C0C0C0C0737373737373737373C0C0C0C0C0C07373737373737373737373
      73000000000000000000A5F7F7A5F7F7A5F7F7A5F7F700FFFF00FFFF00ADFF00
      ADFF00000000FFFF00FFFF00ADFF00ADFF00000000FFFF00FFFF00ADFF00ADFF
      000000C0C0C0737373737373737373C0C0C0C0C0C07373737373737373737373
      73000000000000000000A5F7F7A5F7F7A5F7F7A5F7F700FFFF00FFFF00FFFF00
      FFFF00000000FFFF00FFFF00ADFF00ADFF00000000FFFF00FFFF00ADFF00ADFF
      000000C0C0C0C0C0C0C0C0C0737373C0C0C0C0C0C07373737373737373737373
      73000000000000000000A5F7F7A5F7F700FFFF00FFFF73737373737300000000
      0000A5F7F700FFFF00FFFF00ADFF00ADFF00000000FFFF00FFFF00ADFF00ADFF
      000000C0C0C0C0C0C0737373737373737373C0C0C07373737373737373737373
      73000000000000A59494000000737373000000000000000000000000737373A5
      F7F7A5F7F700FFFF00FFFF00FFFF00FFFF00000000FFFF00FFFF00ADFF00ADFF
      000000C0C0C0C0C0C0737373737373737373C0C0C0C0C0C0C0C0C07373737373
      7300000000000000000073000000000000ADFF00ADFF00ADFF00ADFF00000000
      FFFF00FFFF737373737373000000000000A5F7F700FFFF00FFFF00ADFF00ADFF
      000000C0C0C0C0C0C0737373737373737373C0C0C0C0C0C07373737373737373
      737373737373734A002173000000000042B5FF42B5FF00ADFF00ADFF00000000
      0000000000000000000000737373A5F7F7A5F7F700FFFF00FFFF00FFFF00FFFF
      000000C0C0C0C0C0C0737373737373737373C0C0C0C0C0C07373737373737373
      7373737331313100000073000000000042B5FF42B5FF42B5FF00ADFF00000000
      ADFF00ADFF00ADFF00ADFF00000000FFFF00FFFF737373737373000000000000
      C0C0C0C0C0C0C0C0C0737373737373737373C0C0C0C0C0C07373737373737373
      737373733131314A002173000094002900000042B5FF42B5FF00000073737342
      B5FF42B5FF00ADFF00ADFF000000000000000000000000000000737373C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0737373C0C0C0C0C0C07373737373737373
      737373733131314A0021730000940029FF000000000000000042FF4200000042
      B5FF42B5FF42B5FF00ADFF00000000ADFF00ADFF00ADFF00ADFF000000C0C0C0
      C0C0C0737373737373737373737373C0C0C0C0C0C0C0C0C07373737373737373
      737373733131314A002173000094002973000000B53942FF42FF5221B57B0000
      000042B5FF42B5FF00000073737342B5FF42B5FF00ADFF00ADFF000000737373
      737373737373737373737373C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07373
      737373737373734A0021940029730000007B0000FFA500FFA500942900DE4252
      FF21000000000000FFF7A500000042B5FF42B5FF42B5FF00ADFF000000C0C0C0
      C0C0C0737373737373737373C0C0C0C0C0C07373737373737373737373737373
      7300000000000000000094002973000000942900DE4200FFFF00FFFF00FFFF00
      FF528C9400FFF7D6FFF7D6FFC66300000042B5FF42B5FF000000737373C0C0C0
      C0C0C0C0C0C07373737373737373737373737373737373737373730000000000
      00000000000000A594944A0021730000007B0000B53900FFA500FFFFFFAD2142
      FF6B00DE42737300FFFF21FFC663FFC663000000000000000000737373C0C0C0
      C0C0C0C0C0C0C0C0C0737373C0C0C0C0C0C07373737373737373737373730000
      00000000000000000000000000FF00004A0021007B0000DE4200FFA5B5FF425A
      940000DE42009400FFAD00FFAD21FFAD00FFAD004A0021000000000000737373
      C0C0C0C0C0C0737373737373C0C0C0C0C0C0C0C0C07373737373737373730000
      00000000000000000000000000000000730000004A2900940000DE42007B0000
      7B0000DE42FFFF8CFFF7A5FF7342FFAD00313131004A29000000000000000000
      737373737373B5B5B5737373C0C0C0C0C0C0C0C0C0C0C0C07373737373730000
      00000000000000000000000000000000000000000000007B00007B00007B00FF
      C663FFFF8CFFF7D6FFF7D6B5FF42000000004A29000000000000000000000000
      000000000000000000000000737373C0C0C0C0C0C07373737373730000000000
      00000000000000000000000000000000000000A59494000000000000B5FF42FF
      F7A5FFF7D6EFC6ADB57B00000000A59494000000000000000000000000000000
      0000000000000000000000000000007373737373737373730000000000000000
      000000000000000000000000000000000000000000000000007373734A4A4A4A
      4A4A3131314A4A4A737373000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000F87FFFFFE03FFFFFC003FFFFC001FFFFC0001FFFC00000FFC000007F
      C0000007C0000003800000018000000180000001800000018000000180000001
      8000000180000001800000018000000000000000000000000000000000000000
      00000000000000018000000780000003C0002003E0007003F000FF07F801FF8F
      FE07FFFF}
    Transparent = True
  end
  object Label30: TLabel
    Left = 48
    Top = 5
    Width = 88
    Height = 19
    Caption = 'Input Data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label31: TLabel
    Left = 48
    Top = 24
    Width = 142
    Height = 13
    Caption = 'Ketik item-item, Click Simpan !'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel2: TBevel
    Left = 5
    Top = 40
    Width = 428
    Height = 6
    Shape = bsTopLine
  end
  object Label12: TLabel
    Left = 221
    Top = 80
    Width = 74
    Height = 16
    Caption = 'Jatuh Tempo'
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
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
    Left = 13
    Top = 221
    Width = 31
    Height = 16
    Caption = 'Valas'
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label13: TLabel
    Left = 125
    Top = 221
    Width = 25
    Height = 16
    Caption = 'Kurs'
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label15: TLabel
    Left = 13
    Top = 247
    Width = 33
    Height = 16
    Caption = 'DPP $'
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label16: TLabel
    Left = 13
    Top = 273
    Width = 33
    Height = 16
    Caption = 'PPN $'
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label17: TLabel
    Left = 13
    Top = 299
    Width = 40
    Height = 16
    Caption = 'Total $'
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label10: TLabel
    Left = 197
    Top = 273
    Width = 41
    Height = 16
    Caption = 'PPN Rp'
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label8: TLabel
    Left = 197
    Top = 247
    Width = 41
    Height = 16
    Caption = 'DPP Rp'
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label11: TLabel
    Left = 197
    Top = 299
    Width = 48
    Height = 16
    Caption = 'Total Rp'
    Color = 16577773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label18: TLabel
    Left = 197
    Top = 95
    Width = 82
    Height = 16
    Caption = 'No. Pembelian'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Harga: TPBNumEdit
    Left = 204
    Top = 193
    Width = 101
    Height = 22
    Alignment = taRightJustify
    Ctl3D = False
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    OnChange = HargaChange
    OnKeyDown = KodeTipeKeyDown
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 9
  end
  object KodeSubTipe: TEdit
    Left = 72
    Top = 168
    Width = 81
    Height = 22
    BevelKind = bkFlat
    BorderStyle = bsNone
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 25
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 7
    OnEnter = KodeCustSuppEnter
    OnExit = KodeSubTipeExit
    OnKeyDown = KodeTipeKeyDown
  end
  object Qnt: TPBNumEdit
    Left = 72
    Top = 193
    Width = 81
    Height = 22
    Alignment = taRightJustify
    DisabledColor = clWindow
    Ctl3D = False
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    OnChange = HargaChange
    OnKeyDown = KodeTipeKeyDown
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 8
  end
  object NoBukti: TEdit
    Left = 72
    Top = 66
    Width = 137
    Height = 22
    BevelKind = bkFlat
    BorderStyle = bsNone
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnKeyDown = NoBuktiKeyDown
  end
  object KodeCustSupp: TEdit
    Left = 72
    Top = 118
    Width = 81
    Height = 22
    BevelKind = bkFlat
    BorderStyle = bsNone
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 5
    OnEnter = KodeCustSuppEnter
    OnExit = KodeCustSuppExit
    OnKeyDown = TanggalKeyDown
  end
  object PPN: TComboBox
    Left = 278
    Top = 66
    Width = 141
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
    TabOrder = 1
    Text = 'NONE'
    Visible = False
    Items.Strings = (
      'NONE'
      'Exclude'
      'Include')
  end
  object Tanggal: TDateEdit
    Left = 72
    Top = 92
    Width = 117
    Height = 22
    CheckOnExit = True
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumGlyphs = 2
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    OnKeyDown = TanggalKeyDown
  end
  object KodeTipe: TEdit
    Left = 72
    Top = 143
    Width = 81
    Height = 22
    BevelKind = bkFlat
    BorderStyle = bsNone
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 25
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 6
    OnEnter = KodeCustSuppEnter
    OnExit = KodeTipeExit
    OnKeyDown = KodeTipeKeyDown
  end
  object JatuhTempo: TDateEdit
    Left = 304
    Top = 77
    Width = 117
    Height = 22
    CheckOnExit = True
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumGlyphs = 2
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    Visible = False
    OnKeyDown = TanggalKeyDown
  end
  object KodeVls: TEdit
    Left = 72
    Top = 218
    Width = 41
    Height = 22
    BevelKind = bkFlat
    BorderStyle = bsNone
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 25
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 10
    OnChange = HargaChange
    OnEnter = KodeCustSuppEnter
    OnExit = KodeVlsExit
    OnKeyDown = KodeTipeKeyDown
  end
  object Kurs: TPBNumEdit
    Left = 165
    Top = 218
    Width = 81
    Height = 22
    Alignment = taRightJustify
    DisabledColor = clWindow
    Ctl3D = False
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    OnChange = HargaChange
    OnKeyDown = KodeTipeKeyDown
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 11
  end
  object NDPPD: TPBNumEdit
    Left = 72
    Top = 244
    Width = 114
    Height = 22
    Alignment = taRightJustify
    Ctl3D = False
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    OnChange = NDPPDChange
    OnEnter = KodeCustSuppEnter
    OnKeyDown = KodeTipeKeyDown
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 12
  end
  object NNetD: TPBNumEdit
    Left = 72
    Top = 296
    Width = 114
    Height = 22
    Alignment = taRightJustify
    Enabled = False
    Ctl3D = False
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    OnKeyDown = KodeTipeKeyDown
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 14
  end
  object NPPND: TPBNumEdit
    Left = 72
    Top = 270
    Width = 114
    Height = 22
    Alignment = taRightJustify
    Ctl3D = False
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    OnChange = NPPNDChange
    OnEnter = KodeCustSuppEnter
    OnKeyDown = KodeTipeKeyDown
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 13
  end
  object NDPP: TPBNumEdit
    Left = 248
    Top = 244
    Width = 114
    Height = 22
    Alignment = taRightJustify
    Ctl3D = False
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    OnChange = NDPPChange
    OnEnter = KodeCustSuppEnter
    OnKeyDown = KodeTipeKeyDown
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 15
  end
  object NPPN: TPBNumEdit
    Left = 248
    Top = 270
    Width = 114
    Height = 22
    Alignment = taRightJustify
    Ctl3D = False
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    OnChange = NPPNChange
    OnEnter = KodeCustSuppEnter
    OnKeyDown = KodeTipeKeyDown
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 16
  end
  object NNET: TPBNumEdit
    Left = 248
    Top = 296
    Width = 114
    Height = 22
    Alignment = taRightJustify
    Enabled = False
    Ctl3D = False
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    OnKeyDown = KodeTipeKeyDown
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 17
  end
  object BtnBatal: TBitBtn
    Left = 160
    Top = 338
    Width = 75
    Height = 25
    Caption = '&Batal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 19
    OnClick = BtnBatalClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
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
  object BtnSimpan: TBitBtn
    Left = 72
    Top = 338
    Width = 75
    Height = 25
    Caption = '&Simpan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
    OnClick = BtnSimpanClick
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
  object NoBukti_: TEdit
    Left = 284
    Top = 92
    Width = 137
    Height = 22
    BevelKind = bkFlat
    BorderStyle = bsNone
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
    OnKeyDown = NoBuktiKeyDown
  end
end
