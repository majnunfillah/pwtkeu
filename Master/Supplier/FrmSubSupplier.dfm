object FrSubSupplier: TFrSubSupplier
  Left = 473
  Top = 80
  BorderStyle = bsDialog
  Caption = 'Input Data'
  ClientHeight = 631
  ClientWidth = 507
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
  object Label30: TLabel
    Left = 8
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
    Left = 104
    Top = 8
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
    Top = 44
    Width = 516
    Height = 6
    Shape = bsTopLine
  end
  object Label50: TLabel
    Left = 24
    Top = 666
    Width = 83
    Height = 16
    Caption = 'Status Kontrak'
    Visible = False
  end
  object Label503: TLabel
    Left = 246
    Top = 663
    Width = 56
    Height = 16
    Caption = 'Harga Ke '
    Visible = False
  end
  object Label58: TLabel
    Left = 712
    Top = 199
    Width = 28
    Height = 16
    Caption = 'Valid'
    Visible = False
  end
  object Label57: TLabel
    Left = 440
    Top = 201
    Width = 74
    Height = 16
    Caption = 'Disc Member'
    Visible = False
  end
  object dxPageControl1: TdxPageControl
    Left = 0
    Top = 24
    Width = 513
    Height = 689
    ActivePage = dxTabSheet1
    HideButtons = True
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
      object BitBtn2: TBitBtn
        Left = 425
        Top = 578
        Width = 80
        Height = 28
        Caption = '&Batal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
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
      object BitBtn3: TBitBtn
        Left = 345
        Top = 578
        Width = 80
        Height = 28
        Caption = '&Simpan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = BitBtn3Click
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
      object Panel1: TPanel
        Left = 8
        Top = 0
        Width = 529
        Height = 577
        BevelOuter = bvNone
        TabOrder = 0
        object Shape6: TShape
          Left = 95
          Top = 148
          Width = 386
          Height = 57
          Brush.Color = 14220537
          Pen.Color = clSilver
          Pen.Style = psClear
          Shape = stRoundRect
        end
        object Label1: TLabel
          Left = 0
          Top = 5
          Width = 28
          Height = 16
          Caption = 'Kode'
        end
        object Label2: TLabel
          Left = 0
          Top = 51
          Width = 33
          Height = 16
          Caption = 'Nama'
        end
        object Label22: TLabel
          Left = 195
          Top = 5
          Width = 77
          Height = 16
          Caption = 'Bentuk Usaha'
        end
        object Label3: TLabel
          Left = 0
          Top = 76
          Width = 40
          Height = 16
          Caption = 'Alamat'
        end
        object Label4: TLabel
          Left = 0
          Top = 126
          Width = 25
          Height = 16
          Caption = 'Kota'
        end
        object Label27: TLabel
          Left = 224
          Top = 211
          Width = 41
          Height = 16
          Caption = 'Negara'
        end
        object Label5: TLabel
          Left = 0
          Top = 236
          Width = 39
          Height = 16
          Caption = 'Telpon'
        end
        object Label12: TLabel
          Left = 0
          Top = 210
          Width = 52
          Height = 16
          Caption = 'Kode Pos'
        end
        object Label13: TLabel
          Left = 0
          Top = 286
          Width = 31
          Height = 16
          Caption = 'Email'
        end
        object Label14: TLabel
          Left = 0
          Top = 261
          Width = 43
          Height = 16
          Caption = 'Fax No.'
        end
        object Label19: TLabel
          Left = 176
          Top = 308
          Width = 35
          Height = 16
          Caption = 'Plafon'
        end
        object Label20: TLabel
          Left = 350
          Top = 261
          Width = 53
          Height = 16
          Caption = 'Hari Nota'
        end
        object Label25: TLabel
          Left = 336
          Top = 234
          Width = 70
          Height = 16
          Caption = 'Kode Group '
          Visible = False
        end
        object Label11: TLabel
          Left = 0
          Top = 312
          Width = 85
          Height = 16
          Caption = 'Aktif/ Non Aktif'
        end
        object NmKOta: TLabel
          Left = 190
          Top = 128
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
        object LkodeArea: TLabel
          Left = 101
          Top = 153
          Width = 364
          Height = 16
          AutoSize = False
          Caption = '[...]'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object LnamaArea: TLabel
          Left = 101
          Top = 176
          Width = 372
          Height = 16
          AutoSize = False
          Caption = '[...]'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label51: TLabel
          Left = 335
          Top = 285
          Width = 69
          Height = 16
          Caption = 'Hari Piutang'
        end
        object Label54: TLabel
          Left = 0
          Top = 334
          Width = 16
          Height = 16
          Caption = 'Att'
        end
        object Label55: TLabel
          Left = 2
          Top = 413
          Width = 27
          Height = 16
          Caption = 'Bank'
          Visible = False
        end
        object Label56: TLabel
          Left = 260
          Top = 411
          Width = 43
          Height = 16
          Caption = 'Acc. No'
          Visible = False
        end
        object Label53: TLabel
          Left = 0
          Top = 360
          Width = 55
          Height = 16
          Caption = 'Att Phone'
        end
        object Label52: TLabel
          Left = 0
          Top = 385
          Width = 28
          Height = 16
          Caption = 'Jenis'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LnamaJenis: TLabel
          Left = 187
          Top = 391
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
        object Label59: TLabel
          Left = 260
          Top = 392
          Width = 36
          Height = 16
          Caption = 'Tahun'
        end
        object Email: TEdit
          Left = 98
          Top = 282
          Width = 231
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = True
          MaxLength = 40
          ParentCtl3D = False
          TabOrder = 13
        end
        object KodePos: TEdit
          Left = 98
          Top = 206
          Width = 82
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = True
          MaxLength = 7
          ParentCtl3D = False
          TabOrder = 9
        end
        object Alamat2: TEdit
          Left = 98
          Top = 97
          Width = 393
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = True
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 7
        end
        object Telpon: TEdit
          Left = 98
          Top = 232
          Width = 231
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = True
          MaxLength = 30
          ParentCtl3D = False
          TabOrder = 11
        end
        object Negara: TEdit
          Left = 322
          Top = 206
          Width = 167
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = True
          MaxLength = 30
          ParentCtl3D = False
          TabOrder = 10
        end
        object Alamat1: TEdit
          Left = 98
          Top = 72
          Width = 393
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = True
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 6
        end
        object Usaha: TEdit
          Left = 280
          Top = 1
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
          Top = 47
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
        end
        object KodeCust: TEdit
          Left = 98
          Top = 1
          Width = 95
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
          Top = 122
          Width = 82
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = True
          MaxLength = 30
          ParentCtl3D = False
          TabOrder = 8
          OnEnter = KodeKotaEnter
          OnExit = KodeKotaExit
        end
        object Fax: TEdit
          Left = 98
          Top = 257
          Width = 231
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = True
          MaxLength = 30
          ParentCtl3D = False
          TabOrder = 12
        end
        object Plafon: TPBNumEdit
          Left = 274
          Top = 306
          Width = 120
          Height = 24
          Alignment = taRightJustify
          Ctl3D = True
          Decimals = 2
          NumberFormat = Thousands
          ParentCtl3D = False
          TabOrder = 14
        end
        object Hari: TPBNumEdit
          Left = 452
          Top = 257
          Width = 37
          Height = 24
          Alignment = taRightJustify
          Ctl3D = True
          Decimals = -1
          NumberFormat = Standard
          ParentCtl3D = False
          TabOrder = 15
        end
        object Agent: TEdit
          Left = 416
          Top = 232
          Width = 73
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = True
          MaxLength = 50
          ParentCtl3D = False
          TabOrder = 17
          Visible = False
          OnEnter = NamaCustEnter
        end
        object Aktif: TComboBox
          Left = 98
          Top = 307
          Width = 71
          Height = 24
          BevelKind = bkFlat
          Ctl3D = True
          ItemHeight = 16
          ItemIndex = 1
          ParentCtl3D = False
          TabOrder = 18
          Text = 'Aktif'
          Items.Strings = (
            'Non Aktif'
            'Aktif')
        end
        object HariPiutang: TPBNumEdit
          Left = 452
          Top = 282
          Width = 37
          Height = 24
          Alignment = taRightJustify
          Ctl3D = True
          Decimals = -1
          NumberFormat = Standard
          ParentCtl3D = False
          TabOrder = 16
        end
        object GroupBox1: TGroupBox
          Left = 0
          Top = 430
          Width = 497
          Height = 145
          Caption = ' Data Pajak '
          TabOrder = 23
          object Label23: TLabel
            Left = 8
            Top = 121
            Width = 25
            Height = 16
            Caption = 'Kota'
          end
          object Label17: TLabel
            Left = 8
            Top = 70
            Width = 40
            Height = 16
            Caption = 'Alamat'
          end
          object Label16: TLabel
            Left = 8
            Top = 45
            Width = 37
            Height = 16
            Caption = 'Nama '
          end
          object Label42: TLabel
            Left = 8
            Top = 21
            Width = 34
            Height = 16
            Caption = 'NPWP'
          end
          object NPWP: TEdit
            Left = 98
            Top = 16
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
            Top = 41
            Width = 383
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
            Top = 66
            Width = 383
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
            Top = 91
            Width = 383
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
            Top = 117
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
        object Att: TEdit
          Left = 98
          Top = 333
          Width = 393
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = True
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 19
        end
        object Bank: TEdit
          Left = 98
          Top = 411
          Width = 111
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = True
          MaxLength = 40
          ParentCtl3D = False
          TabOrder = 24
          Visible = False
        end
        object NoACC: TEdit
          Left = 324
          Top = 411
          Width = 167
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = True
          MaxLength = 30
          ParentCtl3D = False
          TabOrder = 25
          Visible = False
        end
        object AttPhone: TEdit
          Left = 98
          Top = 359
          Width = 393
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = True
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 20
        end
        object PPN: TCheckBox
          Left = 189
          Top = 24
          Width = 49
          Height = 19
          Caption = 'PPN'
          TabOrder = 4
        end
        object Jenis: TEdit
          Left = 98
          Top = 385
          Width = 85
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clWhite
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 100
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 21
          OnEnter = JenisEnter
          OnExit = JenisExit
        end
        object Berikat: TCheckBox
          Left = 96
          Top = 25
          Width = 86
          Height = 17
          Caption = 'Pemerintah'#39
          TabOrder = 3
        end
        object Tunai: TCheckBox
          Left = 237
          Top = 24
          Width = 68
          Height = 19
          Caption = 'Tunai'
          TabOrder = 5
        end
        object Tahun: TPBNumEdit
          Left = 324
          Top = 385
          Width = 93
          Height = 24
          Alignment = taRightJustify
          Ctl3D = True
          Decimals = -1
          NumberFormat = Standard
          ParentCtl3D = False
          TabOrder = 22
        end
      end
    end
    object dxTabSheet3: TdxTabSheet
      Caption = 'Kontak Personal'
      TabVisible = False
      object Label7: TLabel
        Left = 8
        Top = 13
        Width = 33
        Height = 16
        Caption = 'Nama'
      end
      object Label8: TLabel
        Left = 8
        Top = 39
        Width = 40
        Height = 16
        Caption = 'Alamat'
      end
      object Label9: TLabel
        Left = 8
        Top = 89
        Width = 25
        Height = 16
        Caption = 'Kota'
      end
      object Label10: TLabel
        Left = 277
        Top = 89
        Width = 52
        Height = 16
        Caption = 'Kode Pos'
      end
      object Label15: TLabel
        Left = 8
        Top = 114
        Width = 41
        Height = 16
        Caption = 'Negara'
      end
      object Label18: TLabel
        Left = 8
        Top = 139
        Width = 39
        Height = 16
        Caption = 'Telpon'
      end
      object Label21: TLabel
        Left = 8
        Top = 164
        Width = 43
        Height = 16
        Caption = 'Fax No.'
      end
      object Label24: TLabel
        Left = 8
        Top = 189
        Width = 31
        Height = 16
        Caption = 'Email'
      end
      object Label36: TLabel
        Left = 8
        Top = 214
        Width = 15
        Height = 16
        Caption = 'HP'
      end
      object ContactP: TEdit
        Left = 98
        Top = 9
        Width = 393
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 50
        ParentCtl3D = False
        TabOrder = 0
        OnEnter = NamaCustEnter
      end
      object Alamat1ContP: TEdit
        Left = 98
        Top = 35
        Width = 393
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 100
        ParentCtl3D = False
        TabOrder = 1
      end
      object Alamat2ContP: TEdit
        Left = 98
        Top = 60
        Width = 393
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 100
        ParentCtl3D = False
        TabOrder = 2
      end
      object KotaContP: TEdit
        Left = 98
        Top = 85
        Width = 167
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 30
        ParentCtl3D = False
        TabOrder = 3
      end
      object KodePosContP: TEdit
        Left = 338
        Top = 85
        Width = 82
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 7
        ParentCtl3D = False
        TabOrder = 4
      end
      object NegaraContP: TEdit
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
      object TelponContP: TEdit
        Left = 98
        Top = 135
        Width = 231
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 30
        ParentCtl3D = False
        TabOrder = 6
      end
      object FaxContP: TEdit
        Left = 98
        Top = 160
        Width = 231
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 30
        ParentCtl3D = False
        TabOrder = 7
      end
      object EmailContP: TEdit
        Left = 98
        Top = 185
        Width = 231
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 40
        ParentCtl3D = False
        TabOrder = 8
      end
      object HPContP: TEdit
        Left = 98
        Top = 210
        Width = 231
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 30
        ParentCtl3D = False
        TabOrder = 9
      end
    end
    object dxTabSheet4: TdxTabSheet
      Caption = 'Supplier (Agent)'
      TabVisible = False
      object Label26: TLabel
        Left = 8
        Top = 39
        Width = 40
        Height = 16
        Caption = 'Alamat'
      end
      object Label28: TLabel
        Left = 8
        Top = 89
        Width = 25
        Height = 16
        Caption = 'Kota'
      end
      object Label29: TLabel
        Left = 277
        Top = 89
        Width = 52
        Height = 16
        Caption = 'Kode Pos'
      end
      object Label32: TLabel
        Left = 8
        Top = 114
        Width = 41
        Height = 16
        Caption = 'Negara'
      end
      object Label33: TLabel
        Left = 8
        Top = 139
        Width = 39
        Height = 16
        Caption = 'Telpon'
      end
      object Label34: TLabel
        Left = 8
        Top = 164
        Width = 43
        Height = 16
        Caption = 'Fax No.'
      end
      object Label35: TLabel
        Left = 8
        Top = 239
        Width = 78
        Height = 16
        Caption = 'Email Contact'
      end
      object Label37: TLabel
        Left = 8
        Top = 264
        Width = 62
        Height = 16
        Caption = 'HP Contact'
      end
      object Label38: TLabel
        Left = 8
        Top = 214
        Width = 43
        Height = 16
        Caption = 'Contact'
      end
      object Label39: TLabel
        Left = 8
        Top = 189
        Width = 68
        Height = 16
        Caption = 'Email Agent'
      end
      object Alamat1A: TEdit
        Left = 98
        Top = 35
        Width = 393
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 100
        ParentCtl3D = False
        TabOrder = 0
      end
      object Alamat2A: TEdit
        Left = 98
        Top = 60
        Width = 393
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 100
        ParentCtl3D = False
        TabOrder = 1
      end
      object KotaA: TEdit
        Left = 98
        Top = 85
        Width = 167
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 30
        ParentCtl3D = False
        TabOrder = 2
      end
      object KodeposA: TEdit
        Left = 338
        Top = 85
        Width = 82
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 7
        ParentCtl3D = False
        TabOrder = 3
      end
      object NegaraA: TEdit
        Left = 98
        Top = 110
        Width = 167
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 30
        ParentCtl3D = False
        TabOrder = 4
      end
      object TelponA: TEdit
        Left = 98
        Top = 135
        Width = 231
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 30
        ParentCtl3D = False
        TabOrder = 5
      end
      object FaxA: TEdit
        Left = 98
        Top = 160
        Width = 231
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 30
        ParentCtl3D = False
        TabOrder = 6
      end
      object EmailContA: TEdit
        Left = 98
        Top = 235
        Width = 231
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 40
        ParentCtl3D = False
        TabOrder = 9
      end
      object HPA: TEdit
        Left = 98
        Top = 260
        Width = 231
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 30
        ParentCtl3D = False
        TabOrder = 10
      end
      object ContactA: TEdit
        Left = 98
        Top = 210
        Width = 231
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 40
        ParentCtl3D = False
        TabOrder = 8
      end
      object EmailA: TEdit
        Left = 98
        Top = 185
        Width = 231
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Ctl3D = True
        MaxLength = 40
        ParentCtl3D = False
        TabOrder = 7
      end
    end
    object dxTabSheet2: TdxTabSheet
      Caption = 'Keterangan Tambahan'
      TabVisible = False
      object Label40: TLabel
        Left = 0
        Top = 151
        Width = 109
        Height = 16
        Caption = 'Syarat Penerimaan'
      end
      object Label6: TLabel
        Left = 40
        Top = 100
        Width = 34
        Height = 16
        Caption = 'NPWP'
      end
      object Label41: TLabel
        Left = 0
        Top = 227
        Width = 112
        Height = 16
        Caption = 'Syarat Pembayaran'
      end
      object Label43: TLabel
        Left = 0
        Top = 205
        Width = 99
        Height = 16
        Caption = 'Country Of Origin'
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
        Left = 0
        Top = 282
        Width = 88
        Height = 16
        Caption = 'Port Of Loading'
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
      object SyaratPenerimaan: TMemo
        Left = 117
        Top = 151
        Width = 404
        Height = 48
        BevelKind = bkFlat
        BorderStyle = bsNone
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object SyaratPembayaran: TMemo
        Left = 117
        Top = 227
        Width = 404
        Height = 48
        BevelKind = bkFlat
        BorderStyle = bsNone
        ScrollBars = ssVertical
        TabOrder = 2
      end
      object CountryOfOrigin: TEdit
        Left = 117
        Top = 201
        Width = 404
        Height = 24
        BevelKind = bkSoft
        BorderStyle = bsNone
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object PortOfLoading: TEdit
        Left = 117
        Top = 278
        Width = 404
        Height = 24
        BevelKind = bkSoft
        BorderStyle = bsNone
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
    end
    object dxTabSheet5: TdxTabSheet
      Caption = 'Alamat Customer'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 617
        Height = 442
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 5
        TabOrder = 0
        object Panel4: TPanel
          Left = 5
          Top = 403
          Width = 607
          Height = 34
          Align = alBottom
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object PanelShow1: TPanel
            Left = 2
            Top = 2
            Width = 603
            Height = 30
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 0
            object HapusBtn: TSpeedButton
              Left = 154
              Top = 1
              Width = 75
              Height = 28
              Caption = '&Hapus'
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
              Top = 1
              Width = 75
              Height = 28
              Caption = '&Koreksi'
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
              Top = 1
              Width = 75
              Height = 28
              Caption = '&Tambah'
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
          end
        end
        object dxDBGrid1: TdxDBGrid
          Left = 5
          Top = 5
          Width = 607
          Height = 398
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'Nomor'
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
          TabOrder = 1
          OnKeyDown = dxDBGrid1KeyDown
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'Tahoma'
          BandFont.Style = []
          DataSource = DsQuBeli
          Filter.Criteria = {00000000}
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
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'Tahoma'
          PreviewFont.Style = []
          RowFooterColor = 11202790
          object dxDBGrid1KodeCust: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 88
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KodeCustSupp'
          end
          object dxDBGrid1Nomor: TdxDBGridMaskColumn
            Caption = 'No.'
            HeaderAlignment = taCenter
            Visible = False
            Width = 24
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Nomor'
          end
          object dxDBGrid1NamaKirim: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 180
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Nama'
          end
          object dxDBGrid1AlamatTxt: TdxDBGridMemoColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 59
            BandIndex = 0
            RowIndex = 0
            FieldName = 'AlamatTxt'
          end
          object dxDBGrid1Alamat: TdxDBGridMemoColumn
            HeaderAlignment = taCenter
            Width = 300
            BandIndex = 0
            RowIndex = 0
            HeaderMaxLineCount = 1
            FieldName = 'Alamat'
          end
          object dxDBGrid1Kota: TdxDBGridMaskColumn
            Caption = 'Telpon '
            HeaderAlignment = taCenter
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Telp'
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 442
        Width = 617
        Height = 183
        Align = alBottom
        BevelOuter = bvNone
        BorderWidth = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = False
        object SpeedButton1: TSpeedButton
          Left = 145
          Top = 151
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
        object Label45: TLabel
          Left = 9
          Top = 32
          Width = 40
          Height = 16
          Caption = 'Alamat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label46: TLabel
          Left = 9
          Top = 99
          Width = 39
          Height = 16
          Caption = 'Telpon'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label47: TLabel
          Left = 9
          Top = 124
          Width = 20
          Height = 16
          Caption = 'Fax'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LNamaExp: TLabel
          Left = 126
          Top = 124
          Width = 38
          Height = 16
          Caption = '[ . . . ]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label48: TLabel
          Left = 9
          Top = 8
          Width = 33
          Height = 16
          Caption = 'Nama'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label49: TLabel
          Left = 63
          Top = 73
          Width = 252
          Height = 16
          Caption = 'Tekan Tombol Tab untuk keluar dari Alamat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object BitBtn1: TBitBtn
          Left = 62
          Top = 151
          Width = 75
          Height = 25
          Caption = '&Simpan'
          TabOrder = 4
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
        object Kota: TEdit
          Left = 62
          Top = 95
          Width = 91
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clWhite
          Ctl3D = False
          MaxLength = 30
          ParentCtl3D = False
          TabOrder = 2
        end
        object Alamat: TMemo
          Left = 62
          Top = 29
          Width = 395
          Height = 41
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnEnter = AlamatEnter
          OnExit = AlamatExit
        end
        object KodeExp: TEdit
          Left = 62
          Top = 120
          Width = 59
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clWhite
          Ctl3D = False
          MaxLength = 30
          ParentCtl3D = False
          TabOrder = 3
        end
        object NamaKirim: TEdit
          Left = 62
          Top = 4
          Width = 227
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clWhite
          Ctl3D = False
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 0
          OnKeyDown = NamaKirimKeyDown
        end
      end
    end
  end
  object CboKontrak: TComboBox
    Left = 122
    Top = 661
    Width = 111
    Height = 24
    BevelKind = bkFlat
    Ctl3D = True
    ItemHeight = 16
    ParentCtl3D = False
    TabOrder = 1
    Text = 'Non Kontrak'
    Visible = False
    Items.Strings = (
      'Non Kontrak'
      'Kontrak')
  end
  object HrgKe: TComboBox
    Left = 127
    Top = 685
    Width = 145
    Height = 24
    ItemHeight = 16
    ItemIndex = 0
    TabOrder = 2
    Visible = False
    Items.Strings = (
      ''
      'Harga Jual 1'
      'Harga Jual 2'
      'Harga Jual 3')
  end
  object IsMember: TCheckBox
    Left = 538
    Top = 176
    Width = 97
    Height = 17
    Caption = 'Is Member ?'
    Checked = True
    State = cbChecked
    TabOrder = 3
    Visible = False
  end
  object TanggalValid: TDateEdit
    Left = 752
    Top = 197
    Width = 166
    Height = 23
    CheckOnExit = True
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 5713963
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    NumGlyphs = 2
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
    Visible = False
  end
  object DiscMember: TPBNumEdit
    Left = 538
    Top = 197
    Width = 120
    Height = 24
    Alignment = taRightJustify
    Ctl3D = True
    Decimals = 2
    NumberFormat = Thousands
    ParentCtl3D = False
    TabOrder = 5
    Visible = False
  end
  object QuBeli: TADOQuery
    CacheSize = 2000
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <
      item
        Name = '0'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      'select A.KodeCustSupp, A.Nomor, A.Nama, A.Alamat, A.Telp, A.Fax,'
      '       cast(A.Alamat as text) AlamatTxt'
      'from dbAlamatCust A'
      'where A.kodecustSupp=:0'
      'Order by A.Nomor')
    Left = 635
    Top = 290
    object QuBeliKodeCustSupp: TStringField
      FieldName = 'KodeCustSupp'
      Size = 15
    end
    object QuBeliNomor: TIntegerField
      FieldName = 'Nomor'
    end
    object QuBeliNama: TStringField
      FieldName = 'Nama'
      Size = 100
    end
    object QuBeliAlamat: TStringField
      FieldName = 'Alamat'
      Size = 200
    end
    object QuBeliTelp: TStringField
      FieldName = 'Telp'
      Size = 50
    end
    object QuBeliFax: TStringField
      FieldName = 'Fax'
      Size = 50
    end
    object QuBeliAlamatTxt: TMemoField
      FieldName = 'AlamatTxt'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object DsQuBeli: TDataSource
    DataSet = QuBeli
    Left = 594
    Top = 288
  end
end
