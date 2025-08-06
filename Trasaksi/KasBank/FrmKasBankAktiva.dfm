object frKasBankAktiva: TfrKasBankAktiva
  Left = 306
  Top = 109
  BorderStyle = bsDialog
  Caption = 'Input Data'
  ClientHeight = 398
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Bevel1: TBevel
    Left = 5
    Top = 7
    Width = 636
    Height = 338
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 203
    Top = 65
    Width = 57
    Height = 16
    Alignment = taRightJustify
    Caption = 'No. Aktiva'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label3: TLabel
    Left = 11
    Top = 206
    Width = 50
    Height = 16
    Alignment = taRightJustify
    Caption = 'Kuantum'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 258
    Top = 206
    Width = 111
    Height = 16
    Alignment = taRightJustify
    Caption = 'Metode Penyusutan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 149
    Top = 206
    Width = 48
    Height = 16
    Alignment = taRightJustify
    Caption = '% Susut'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 11
    Top = 239
    Width = 127
    Height = 16
    Alignment = taRightJustify
    Caption = 'Akumulasi Penyusutan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 11
    Top = 264
    Width = 110
    Height = 16
    Alignment = taRightJustify
    Caption = 'Biaya Penyusutan 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel
    Left = 11
    Top = 289
    Width = 110
    Height = 16
    Alignment = taRightJustify
    Caption = 'Biaya Penyusutan 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label16: TLabel
    Left = 307
    Top = 266
    Width = 12
    Height = 16
    Alignment = taRightJustify
    Caption = '%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label18: TLabel
    Left = 307
    Top = 289
    Width = 12
    Height = 16
    Alignment = taRightJustify
    Caption = '%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label23: TLabel
    Left = 11
    Top = 136
    Width = 65
    Height = 16
    Caption = 'Keterangan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label29: TLabel
    Left = 451
    Top = 43
    Width = 38
    Height = 16
    Caption = 'Bagian'
    Visible = False
  end
  object Label31: TLabel
    Left = 443
    Top = 16
    Width = 29
    Height = 16
    Caption = 'Divisi'
    Visible = False
  end
  object Label32: TLabel
    Left = 562
    Top = 16
    Width = 38
    Height = 16
    Caption = '[ . . . ]'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label6: TLabel
    Left = 11
    Top = 16
    Width = 72
    Height = 16
    Caption = 'Group Aktiva'
  end
  object Label26: TLabel
    Left = 178
    Top = 16
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
  object RxLabel1: TRxLabel
    Left = 11
    Top = 114
    Width = 65
    Height = 16
    Caption = 'Tipe Aktiva'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShadowSize = 0
    ShadowPos = spRightBottom
  end
  object Label34: TLabel
    Left = 10
    Top = 90
    Width = 107
    Height = 16
    Caption = 'Tanggal Perolehan'
  end
  object Label30: TLabel
    Left = 611
    Top = 45
    Width = 38
    Height = 16
    Caption = '[ . . . ]'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label2: TLabel
    Left = 244
    Top = 239
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
  object Label8: TLabel
    Left = 316
    Top = 272
    Width = 94
    Height = 16
    Alignment = taRightJustify
    Caption = 'x Susut Bulan ini'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 10
    Top = 64
    Width = 47
    Height = 16
    Alignment = taRightJustify
    Caption = 'No. Urut'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 11
    Top = 41
    Width = 55
    Height = 16
    Caption = 'Kelompok'
  end
  object Label12: TLabel
    Left = 11
    Top = 315
    Width = 110
    Height = 16
    Alignment = taRightJustify
    Caption = 'Biaya Penyusutan 3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 307
    Top = 315
    Width = 12
    Height = 16
    Alignment = taRightJustify
    Caption = '%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel
    Left = 335
    Top = 295
    Width = 74
    Height = 16
    Alignment = taRightJustify
    Caption = 'Status Akfiva'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 6
    Top = 349
    Width = 80
    Height = 40
    Caption = '&Simpan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 20
    OnClick = BitBtn1Click
    Glyph.Data = {
      5E060000424D5E06000000000000360400002800000017000000170000000100
      0800000000002802000000000000000000000001000000000000000000004000
      000080000000FF000000002000004020000080200000FF200000004000004040
      000080400000FF400000006000004060000080600000FF600000008000004080
      000080800000FF80000000A0000040A0000080A00000FFA0000000C0000040C0
      000080C00000FFC0000000FF000040FF000080FF0000FFFF0000000020004000
      200080002000FF002000002020004020200080202000FF202000004020004040
      200080402000FF402000006020004060200080602000FF602000008020004080
      200080802000FF80200000A0200040A0200080A02000FFA0200000C0200040C0
      200080C02000FFC0200000FF200040FF200080FF2000FFFF2000000040004000
      400080004000FF004000002040004020400080204000FF204000004040004040
      400080404000FF404000006040004060400080604000FF604000008040004080
      400080804000FF80400000A0400040A0400080A04000FFA0400000C0400040C0
      400080C04000FFC0400000FF400040FF400080FF4000FFFF4000000060004000
      600080006000FF006000002060004020600080206000FF206000004060004040
      600080406000FF406000006060004060600080606000FF606000008060004080
      600080806000FF80600000A0600040A0600080A06000FFA0600000C0600040C0
      600080C06000FFC0600000FF600040FF600080FF6000FFFF6000000080004000
      800080008000FF008000002080004020800080208000FF208000004080004040
      800080408000FF408000006080004060800080608000FF608000008080004080
      800080808000FF80800000A0800040A0800080A08000FFA0800000C0800040C0
      800080C08000FFC0800000FF800040FF800080FF8000FFFF80000000A0004000
      A0008000A000FF00A0000020A0004020A0008020A000FF20A0000040A0004040
      A0008040A000FF40A0000060A0004060A0008060A000FF60A0000080A0004080
      A0008080A000FF80A00000A0A00040A0A00080A0A000FFA0A00000C0A00040C0
      A00080C0A000FFC0A00000FFA00040FFA00080FFA000FFFFA0000000C0004000
      C0008000C000FF00C0000020C0004020C0008020C000FF20C0000040C0004040
      C0008040C000FF40C0000060C0004060C0008060C000FF60C0000080C0004080
      C0008080C000FF80C00000A0C00040A0C00080A0C000FFA0C00000C0C00040C0
      C00080C0C000FFC0C00000FFC00040FFC00080FFC000FFFFC0000000FF004000
      FF008000FF00FF00FF000020FF004020FF008020FF00FF20FF000040FF004040
      FF008040FF00FF40FF000060FF004060FF008060FF00FF60FF000080FF004080
      FF008080FF00FF80FF0000A0FF0040A0FF0080A0FF00FFA0FF0000C0FF0040C0
      FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFFFF00DBDBDBDBDBDB
      DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB00DBDBDBDBDBDBDBDBDBDBDBDBDBDB
      DBDBDBDBDBDBDBDBDB00DBDBDBDB0000000000000000000000000000000000DB
      DB00DBDBDB0090009292929292929200DB009200909000DBDB00DBDB00909000
      9292929292929200DB009200909000DBDB00DBDB009090009292929292929200
      00009200909000DBDB00DBDB00909000929292929292929292929200909000DB
      DB00DBDB00909000000000000000000000000000909000DBDB00DBDB00909090
      909090909090909090909090909000DBDB00DBDB009090909090909090909090
      90909090909000DBDB00DBDB00909090000000000000000000000090909000DB
      DB00DBDB00909000DBDBDBDBDBDBDBDBDBDBDB00909000DBDB00DBDB00909000
      DBDBDBDBDBDBDBDBDBDBDB00909000DBDB00DBDB00909000DBDBDBDBDBDBDBDB
      DBDBDB00909000DBDB00DBDB00909000DBDBDBDBDBDBDBDBDBDBDB00909000DB
      DB00DBDB00909000DBDBDBDBDBDBDBDBDBDBDB00909000DBDB00DBDB00909000
      DBDBDBDBDBDBDBDBDBDBDB00909000DBDB00DBDB00909000DBDBDBDBDBDBDBDB
      DBDBDB00909000DBDB00DBDB00909000DBDBDBDBDBDBDBDBDBDBDB00909000DB
      DB00DBDB00909000DBDBDBDBDBDBDBDBDBDBDB00909000DBDB00DBDB00000000
      000000000000000000000000000000DBDB00DBDBDBDBDBDBDBDBDBDBDBDBDBDB
      DBDBDBDBDBDBDBDBDB00DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB
      DB00}
  end
  object KodeAktiva: TEdit
    Left = 282
    Top = 62
    Width = 151
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Enabled = False
    MaxLength = 30
    ReadOnly = True
    TabOrder = 5
    Visible = False
  end
  object Kuantum: TPBNumEdit
    Left = 90
    Top = 203
    Width = 50
    Height = 24
    Alignment = taRightJustify
    Decimals = 0
    NumberFormat = Thousands
    TabOrder = 10
  end
  object Susut: TPBNumEdit
    Left = 202
    Top = 203
    Width = 50
    Height = 24
    Alignment = taRightJustify
    Decimals = 2
    MaxValue = 100
    NumberFormat = Standard
    TabOrder = 11
  end
  object BiayaSusut2: TEdit
    Left = 140
    Top = 286
    Width = 100
    Height = 24
    BevelKind = bkSoft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    MaxLength = 15
    TabOrder = 16
    OnEnter = BiayaSusutEnter
    OnExit = BiayaSusut2Exit
  end
  object BiayaSusut: TEdit
    Left = 140
    Top = 261
    Width = 100
    Height = 24
    BevelKind = bkSoft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Ctl3D = True
    MaxLength = 15
    ParentCtl3D = False
    TabOrder = 14
    OnEnter = BiayaSusutEnter
    OnExit = BiayaSusutExit
  end
  object AkSusut: TEdit
    Left = 140
    Top = 236
    Width = 100
    Height = 24
    BevelKind = bkSoft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    MaxLength = 15
    TabOrder = 13
    OnEnter = AkSusutEnter
    OnExit = AkSusutExit
  end
  object PersenSusut2: TPBNumEdit
    Left = 241
    Top = 286
    Width = 64
    Height = 24
    Alignment = taRightJustify
    Decimals = 2
    NumberFormat = Thousands
    TabOrder = 17
  end
  object PersenSusut1: TPBNumEdit
    Left = 241
    Top = 261
    Width = 64
    Height = 24
    Alignment = taRightJustify
    Ctl3D = True
    Decimals = 2
    NumberFormat = Thousands
    ParentCtl3D = False
    TabOrder = 15
  end
  object Keterangan: TMemo
    Left = 90
    Top = 136
    Width = 376
    Height = 64
    BevelKind = bkSoft
    BorderStyle = bsNone
    ScrollBars = ssBoth
    TabOrder = 8
  end
  object Bagian: TEdit
    Left = 530
    Top = 42
    Width = 78
    Height = 24
    BevelKind = bkSoft
    BorderStyle = bsNone
    TabOrder = 9
    Visible = False
    OnEnter = BagianEnter
    OnExit = BagianExit
  end
  object Devisi: TEdit
    Left = 522
    Top = 12
    Width = 38
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    MaxLength = 20
    ReadOnly = True
    TabOrder = 1
    Visible = False
    OnEnter = DevisiEnter
    OnExit = DevisiExit
  end
  object Perkiraan: TEdit
    Left = 90
    Top = 12
    Width = 86
    Height = 24
    BevelKind = bkSoft
    BorderStyle = bsNone
    MaxLength = 25
    ReadOnly = True
    TabOrder = 0
    OnKeyDown = PerkiraanKeyDown
  end
  object TipeAktiva: TComboBox
    Left = 90
    Top = 111
    Width = 185
    Height = 24
    BevelKind = bkSoft
    ItemHeight = 16
    ItemIndex = 0
    TabOrder = 7
    Text = 'Aktiva Tetap'
    Items.Strings = (
      'Aktiva Tetap'
      'Aktiva Yang Dibiayakan')
  end
  object TglPengakuan: TDateEdit
    Left = 140
    Top = 86
    Width = 97
    Height = 24
    CheckOnExit = True
    NumGlyphs = 2
    TabOrder = 6
  end
  object LM: TComboBox
    Left = 374
    Top = 203
    Width = 107
    Height = 24
    BevelKind = bkFlat
    ItemHeight = 16
    ItemIndex = 0
    TabOrder = 12
    Text = '[L]urus'
    Items.Strings = (
      '[L]urus'
      '[M]enurun'
      '[P]ajak')
  end
  object NoUrut: TEdit
    Left = 90
    Top = 61
    Width = 55
    Height = 24
    BevelKind = bkSoft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    MaxLength = 5
    TabOrder = 3
    OnChange = NoUrutChange
    OnEnter = NoUrutEnter
  end
  object BitBtn2: TBitBtn
    Left = 86
    Top = 349
    Width = 80
    Height = 40
    Caption = '&Batal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 21
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
  object NoUrut2: TEdit
    Left = 146
    Top = 61
    Width = 55
    Height = 24
    BevelKind = bkSoft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    MaxLength = 5
    TabOrder = 4
    Visible = False
    OnChange = NoUrutChange
    OnEnter = NoUrutEnter
  end
  object isHeader: TComboBox
    Left = 90
    Top = 37
    Width = 145
    Height = 24
    BevelKind = bkSoft
    ItemHeight = 16
    ItemIndex = 0
    TabOrder = 2
    Text = 'Header Aktiva'
    OnEnter = isHeaderEnter
    OnExit = isHeaderExit
    Items.Strings = (
      'Header Aktiva'
      'Sub Aktiva')
  end
  object BiayaSusut3: TEdit
    Left = 140
    Top = 312
    Width = 100
    Height = 24
    BevelKind = bkSoft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    MaxLength = 15
    TabOrder = 18
    OnEnter = BiayaSusutEnter
    OnExit = BiayaSusut3Exit
  end
  object PersenSusut3: TPBNumEdit
    Left = 241
    Top = 312
    Width = 64
    Height = 24
    Alignment = taRightJustify
    Decimals = 2
    MaxValue = 100
    NumberFormat = Thousands
    TabOrder = 19
  end
  object XSusut: TPBNumEdit
    Left = 427
    Top = 269
    Width = 50
    Height = 24
    Alignment = taRightJustify
    Decimals = 2
    MaxValue = 100
    NumberFormat = Standard
    TabOrder = 22
    Value = 1
  end
  object PerlakuanAktiva: TComboBox
    Left = 426
    Top = 294
    Width = 145
    Height = 24
    BevelKind = bkSoft
    ItemHeight = 16
    ItemIndex = 0
    TabOrder = 23
    Text = '-'
    OnEnter = isHeaderEnter
    OnExit = isHeaderExit
    Items.Strings = (
      '-'
      'Jual'
      'Keluar Aktiva')
  end
end
