object FrSubCustomer: TFrSubCustomer
  Left = 362
  Top = 111
  BorderStyle = bsDialog
  Caption = 'Input Data'
  ClientHeight = 414
  ClientWidth = 543
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
  object dxPageControl1: TdxPageControl
    Left = 0
    Top = 45
    Width = 543
    Height = 328
    ActivePage = dxTabSheet1
    Align = alClient
    HideButtons = False
    HotTrack = False
    MultiLine = False
    OwnerDraw = False
    RaggedRight = False
    ScrollOpposite = False
    TabHeight = 0
    TabOrder = 0
    TabPosition = dxtpTop
    TabWidth = 0
    object dxTabSheet1: TdxTabSheet
      Caption = 'Data Umum'
      object Label1: TLabel
        Left = 8
        Top = 13
        Width = 28
        Height = 16
        Caption = 'Kode'
      end
      object Label2: TLabel
        Left = 8
        Top = 38
        Width = 33
        Height = 16
        Caption = 'Nama'
      end
      object Label22: TLabel
        Left = 277
        Top = 13
        Width = 77
        Height = 16
        Caption = 'Bentuk Usaha'
      end
      object Label3: TLabel
        Left = 8
        Top = 64
        Width = 40
        Height = 16
        Caption = 'Alamat'
      end
      object Label4: TLabel
        Left = 8
        Top = 114
        Width = 25
        Height = 16
        Caption = 'Kota'
      end
      object Label27: TLabel
        Left = 8
        Top = 139
        Width = 41
        Height = 16
        Caption = 'Negara'
      end
      object Label5: TLabel
        Left = 8
        Top = 164
        Width = 39
        Height = 16
        Caption = 'Telpon'
      end
      object Label12: TLabel
        Left = 277
        Top = 114
        Width = 52
        Height = 16
        Caption = 'Kode Pos'
      end
      object Label13: TLabel
        Left = 8
        Top = 214
        Width = 31
        Height = 16
        Caption = 'Email'
      end
      object Label14: TLabel
        Left = 8
        Top = 189
        Width = 43
        Height = 16
        Caption = 'Fax No.'
      end
      object Label19: TLabel
        Left = 8
        Top = 239
        Width = 35
        Height = 16
        Caption = 'Plafon'
      end
      object Label20: TLabel
        Left = 222
        Top = 239
        Width = 23
        Height = 16
        Caption = 'Hari'
      end
      object Label10: TLabel
        Left = 9
        Top = 263
        Width = 56
        Height = 16
        Caption = 'Harga Ke '
      end
      object Email: TEdit
        Left = 98
        Top = 210
        Width = 231
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 40
        ParentCtl3D = False
        TabOrder = 10
      end
      object KodePos: TEdit
        Left = 338
        Top = 110
        Width = 82
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 7
        ParentCtl3D = False
        TabOrder = 6
      end
      object Alamat2: TEdit
        Left = 98
        Top = 85
        Width = 393
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 100
        ParentCtl3D = False
        TabOrder = 4
      end
      object Telpon: TEdit
        Left = 98
        Top = 160
        Width = 231
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 30
        ParentCtl3D = False
        TabOrder = 8
      end
      object Negara: TEdit
        Left = 98
        Top = 135
        Width = 167
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 30
        ParentCtl3D = False
        TabOrder = 7
      end
      object Alamat1: TEdit
        Left = 98
        Top = 60
        Width = 393
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 100
        ParentCtl3D = False
        TabOrder = 3
      end
      object Usaha: TEdit
        Left = 362
        Top = 9
        Width = 82
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 5
        ParentCtl3D = False
        TabOrder = 1
      end
      object NamaCust: TEdit
        Left = 98
        Top = 34
        Width = 393
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 100
        ParentCtl3D = False
        TabOrder = 2
        OnEnter = NamaCustEnter
        OnExit = NamaCustExit
        OnKeyDown = NamaCustKeyDown
      end
      object KodeCust: TEdit
        Left = 98
        Top = 9
        Width = 127
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Ctl3D = True
        MaxLength = 15
        ParentCtl3D = False
        TabOrder = 0
        OnExit = KodeCustExit
      end
      object KodeKota: TEdit
        Left = 98
        Top = 110
        Width = 167
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 30
        ParentCtl3D = False
        TabOrder = 5
      end
      object Fax: TEdit
        Left = 98
        Top = 185
        Width = 231
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 30
        ParentCtl3D = False
        TabOrder = 9
      end
      object Plafon: TPBNumEdit
        Left = 98
        Top = 235
        Width = 120
        Height = 24
        Alignment = taRightJustify
        Ctl3D = True
        Decimals = 2
        NumberFormat = Thousands
        ParentCtl3D = False
        TabOrder = 11
      end
      object Hari: TPBNumEdit
        Left = 253
        Top = 235
        Width = 37
        Height = 24
        Alignment = taRightJustify
        Ctl3D = True
        Decimals = -1
        NumberFormat = Standard
        ParentCtl3D = False
        TabOrder = 12
      end
      object ComboBox1: TComboBox
        Left = 98
        Top = 261
        Width = 145
        Height = 24
        ItemHeight = 16
        ItemIndex = 0
        TabOrder = 13
        Text = 'Pilih Harga Jual'
        Items.Strings = (
          'Pilih Harga Jual'
          'Harga Jual 1'
          'Harga Jual 2'
          'Harga Jual 3')
      end
    end
    object dxTabSheet2: TdxTabSheet
      Caption = 'Keterangan Tambahan'
      object Label6: TLabel
        Left = 8
        Top = 12
        Width = 34
        Height = 16
        Caption = 'NPWP'
      end
      object Label16: TLabel
        Left = 8
        Top = 37
        Width = 37
        Height = 16
        Caption = 'Nama '
      end
      object Label17: TLabel
        Left = 8
        Top = 62
        Width = 40
        Height = 16
        Caption = 'Alamat'
      end
      object Label23: TLabel
        Left = 8
        Top = 113
        Width = 25
        Height = 16
        Caption = 'Kota'
      end
      object NPWP: TEdit
        Left = 98
        Top = 8
        Width = 167
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 30
        ParentCtl3D = False
        TabOrder = 0
      end
      object NamaPKP: TEdit
        Left = 98
        Top = 33
        Width = 393
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 100
        ParentCtl3D = False
        TabOrder = 1
      end
      object AlamatPkp1: TEdit
        Left = 98
        Top = 58
        Width = 393
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 100
        ParentCtl3D = False
        TabOrder = 2
      end
      object AlamatPkp2: TEdit
        Left = 98
        Top = 83
        Width = 393
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 100
        ParentCtl3D = False
        TabOrder = 3
      end
      object KotaPkp: TEdit
        Left = 98
        Top = 109
        Width = 167
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 30
        ParentCtl3D = False
        TabOrder = 4
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 543
    Height = 45
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
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
    object Label7: TLabel
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
    object Label8: TLabel
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
    object Bevel1: TBevel
      Left = 5
      Top = 40
      Width = 524
      Height = 6
      Shape = bsTopLine
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 373
    Width = 543
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Label9: TLabel
      Left = 7
      Top = 12
      Width = 85
      Height = 16
      Caption = 'Aktif/ Non Aktif'
    end
    object Aktif: TComboBox
      Left = 99
      Top = 9
      Width = 111
      Height = 24
      BevelKind = bkFlat
      Ctl3D = True
      ItemHeight = 16
      ItemIndex = 1
      ParentCtl3D = False
      TabOrder = 0
      Text = 'Aktif'
      Items.Strings = (
        'Non Aktif'
        'Aktif')
    end
    object BitBtn1: TBitBtn
      Left = 360
      Top = 6
      Width = 80
      Height = 27
      Caption = '&Simpan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
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
      Left = 440
      Top = 6
      Width = 80
      Height = 27
      Caption = '&Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
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
  end
  object QuView1: TADOQuery
    CacheSize = 2000
    Connection = DM.MyStock
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandTimeout = 0
    Parameters = <
      item
        Name = '0'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = '1'
        DataType = ftString
        Size = 15
        Value = 'C200001'
      end>
    SQL.Strings = (
      'Declare @FormStatus tinyint,@KodeCustSupp varchar(15)'
      'Select @FormStatus=:0,@KodeCustSupp=:1'
      
        'Select ContactId,Title,FirstName,MiddleName,LastName,JobTitle,Ph' +
        'one1,Phone2,'
      
        '                          Phone3,Email,Alamat,Photo,KodeCustSupp' +
        ','
      '       Title+'#39' '#39'+FirstName+'#39' '#39'+MiddleName+'#39' '#39'+LastName Nama'
      'From dbContact'
      'Where KodeCustSupp Like @kodeCustSupp+'#39'%'#39
      'Order by ContactId'
      '')
    Left = 10
    Top = 93
    object QuView1ContactId: TIntegerField
      FieldName = 'ContactId'
    end
    object QuView1Title: TStringField
      FieldName = 'Title'
      Size = 15
    end
    object QuView1FirstName: TStringField
      FieldName = 'FirstName'
    end
    object QuView1MiddleName: TStringField
      FieldName = 'MiddleName'
    end
    object QuView1LastName: TStringField
      FieldName = 'LastName'
    end
    object QuView1JobTitle: TStringField
      FieldName = 'JobTitle'
      Size = 40
    end
    object QuView1Phone1: TStringField
      FieldName = 'Phone1'
      Size = 40
    end
    object QuView1Phone2: TStringField
      FieldName = 'Phone2'
      Size = 40
    end
    object QuView1Phone3: TStringField
      FieldName = 'Phone3'
      Size = 40
    end
    object QuView1Email: TStringField
      FieldName = 'Email'
      Size = 40
    end
    object QuView1Alamat: TMemoField
      FieldName = 'Alamat'
      BlobType = ftMemo
    end
    object QuView1Photo: TBlobField
      FieldName = 'Photo'
    end
    object QuView1KodeCustSupp: TStringField
      FieldName = 'KodeCustSupp'
      Size = 15
    end
    object QuView1Nama: TStringField
      FieldName = 'Nama'
      ReadOnly = True
      Size = 78
    end
  end
  object DsView1: TDataSource
    DataSet = QuView1
    Left = 43
    Top = 93
  end
  object dxContact: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 80
    Top = 96
  end
end
