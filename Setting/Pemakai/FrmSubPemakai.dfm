object FrSubPemakai: TFrSubPemakai
  Left = 356
  Top = 159
  BorderStyle = bsDialog
  Caption = 'Input Data'
  ClientHeight = 392
  ClientWidth = 374
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
    Left = 13
    Top = 5
    Width = 356
    Height = 300
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 29
    Top = 45
    Width = 26
    Height = 16
    Caption = 'User'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 29
    Top = 71
    Width = 55
    Height = 16
    Caption = 'Password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 29
    Top = 97
    Width = 55
    Height = 16
    Caption = 'Password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 29
    Top = 198
    Width = 29
    Height = 16
    Caption = 'Level'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label8: TLabel
    Left = 29
    Top = 224
    Width = 36
    Height = 16
    Caption = 'Status'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 29
    Top = 147
    Width = 70
    Height = 16
    Caption = 'Departemen'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LNamaBag: TLabel
    Left = 190
    Top = 148
    Width = 30
    Height = 16
    Caption = '[ ... ]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 29
    Top = 172
    Width = 44
    Height = 16
    Caption = 'Jabatan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lnamaJab: TLabel
    Left = 190
    Top = 173
    Width = 30
    Height = 16
    Caption = '[ ... ]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 29
    Top = 122
    Width = 84
    Height = 16
    Caption = 'Nama Lengkap'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel
    Left = 29
    Top = 248
    Width = 60
    Height = 16
    Caption = 'Kode Kasir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 37
    Top = 329
    Width = 88
    Height = 16
    Caption = 'Access Counter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object LNamaCounter: TLabel
    Left = 390
    Top = 235
    Width = 30
    Height = 16
    Caption = '[ ... ]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label11: TLabel
    Left = 33
    Top = 18
    Width = 19
    Height = 16
    Caption = 'NIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblNIk: TLabel
    Left = 233
    Top = 19
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
  object Userid: TEdit
    Left = 122
    Top = 42
    Width = 148
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
    OnEnter = UseridEnter
    OnExit = UseridExit
  end
  object Password1: TEdit
    Left = 122
    Top = 68
    Width = 133
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 20
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 2
  end
  object Password2: TEdit
    Left = 122
    Top = 94
    Width = 133
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 20
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 3
  end
  object Level: TComboBox
    Left = 122
    Top = 194
    Width = 143
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
    TabOrder = 7
    Text = 'User'
    Items.Strings = (
      'User'
      'Supervisor'
      'Administrator')
  end
  object Status: TComboBox
    Left = 122
    Top = 220
    Width = 98
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
    TabOrder = 8
    Text = 'Offline'
    Items.Strings = (
      'Offline'
      'Online')
  end
  object BitBtn3: TBitBtn
    Left = 289
    Top = 363
    Width = 80
    Height = 27
    Caption = '&Simpan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = BitBtn3Click
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
  object KodeBag: TEdit
    Left = 122
    Top = 144
    Width = 63
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
    ParentShowHint = False
    ShowHint = False
    TabOrder = 5
    OnEnter = KodeBagEnter
    OnExit = KodeBagExit
  end
  object kodejab: TEdit
    Left = 122
    Top = 169
    Width = 63
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
    ParentShowHint = False
    ShowHint = False
    TabOrder = 6
    OnEnter = kodejabEnter
    OnExit = kodejabExit
  end
  object Fullname: TEdit
    Left = 122
    Top = 119
    Width = 148
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 50
    ParentFont = False
    TabOrder = 4
  end
  object KodeKasir: TEdit
    Left = 122
    Top = 245
    Width = 63
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
    MaxLength = 3
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 9
    OnExit = KodeKasirExit
  end
  object Kodegdg: TEdit
    Left = 130
    Top = 326
    Width = 63
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
    MaxLength = 3
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 10
    Visible = False
    OnEnter = kodejabEnter
    OnExit = KodegdgExit
  end
  object NIK: TEdit
    Left = 121
    Top = 16
    Width = 109
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Color = clWhite
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 15
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnEnter = NIKEnter
    OnExit = NIKExit
  end
end
