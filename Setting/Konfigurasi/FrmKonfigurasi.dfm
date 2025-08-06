object FrKonfigurasi: TFrKonfigurasi
  Left = 231
  Top = 42
  BorderStyle = bsDialog
  Caption = 'Seting Nomor Transaksi dan Perusahaan'
  ClientHeight = 553
  ClientWidth = 936
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 174
    Top = 0
    Width = 762
    Height = 553
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object Konfigurasi: TdxPageControl
      Left = 1
      Top = 1
      Width = 760
      Height = 544
      ActivePage = SetNomor
      Align = alTop
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HideButtons = False
      HotTrack = False
      MultiLine = True
      OwnerDraw = False
      ParentFont = False
      RaggedRight = False
      ScrollOpposite = False
      TabHeight = 0
      TabOrder = 0
      TabPosition = dxtpTop
      TabWidth = 0
      OnChange = KonfigurasiChange
      object Perusahaan: TdxTabSheet
        Caption = 'Perusahaan'
        object Label16: TLabel
          Left = 8
          Top = 12
          Width = 33
          Height = 16
          Caption = 'Nama'
        end
        object Label17: TLabel
          Left = 8
          Top = 37
          Width = 40
          Height = 16
          Caption = 'Alamat'
        end
        object Label18: TLabel
          Left = 8
          Top = 87
          Width = 25
          Height = 16
          Caption = 'Kota'
        end
        object Label22: TLabel
          Left = 8
          Top = 112
          Width = 39
          Height = 16
          Caption = 'Telpon'
        end
        object Label23: TLabel
          Left = 8
          Top = 137
          Width = 20
          Height = 16
          Caption = 'Fax'
        end
        object Label27: TLabel
          Left = 16
          Top = 351
          Width = 111
          Height = 16
          Caption = 'Penandatangan FPJ'
        end
        object Label28: TLabel
          Left = 16
          Top = 376
          Width = 44
          Height = 16
          Caption = 'Jabatan'
        end
        object Label36: TLabel
          Left = 401
          Top = 350
          Width = 27
          Height = 16
          Caption = 'Logo'
        end
        object LblTTD: TLabel
          Left = 16
          Top = 414
          Width = 116
          Height = 16
          Caption = 'Ttd Trading Director'
        end
        object Label58: TLabel
          Left = 392
          Top = 137
          Width = 35
          Height = 16
          Caption = 'E-Mail'
        end
        object Nama: TEdit
          Left = 140
          Top = 8
          Width = 373
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 0
        end
        object Alamat1: TEdit
          Left = 140
          Top = 33
          Width = 373
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          MaxLength = 100
          TabOrder = 1
        end
        object Alamat2: TEdit
          Left = 140
          Top = 58
          Width = 373
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          MaxLength = 100
          TabOrder = 2
        end
        object Kota: TEdit
          Left = 140
          Top = 83
          Width = 242
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 3
        end
        object Panel3: TPanel
          Left = 399
          Top = 374
          Width = 118
          Height = 143
          BevelInner = bvLowered
          TabOrder = 8
          object Logo: TImage
            Left = 2
            Top = 2
            Width = 114
            Height = 139
            Align = alClient
            Stretch = True
            Transparent = True
          end
        end
        object BtnCari: TBitBtn
          Left = 451
          Top = 346
          Width = 65
          Height = 24
          Caption = 'Cari'
          TabOrder = 9
          TabStop = False
          OnClick = BtnCariClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            5555555555555555555555555555555555555555555555555555555555555555
            555555555555555555555555555555555555555FFFFFFFFFF555550000000000
            55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
            B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
            000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
            555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
            55555575FFF75555555555700007555555555557777555555555555555555555
            5555555555555555555555555555555555555555555555555555}
          NumGlyphs = 2
        end
        object Telpon: TEdit
          Left = 140
          Top = 108
          Width = 242
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          MaxLength = 30
          TabOrder = 4
        end
        object Fax: TEdit
          Left = 140
          Top = 133
          Width = 242
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          MaxLength = 30
          TabOrder = 5
        end
        object BitBtn1: TBitBtn
          Left = 301
          Top = 428
          Width = 75
          Height = 25
          Caption = '&Clear'
          TabOrder = 10
          Visible = False
          OnClick = BitBtn1Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
            555557777F777555F55500000000555055557777777755F75555005500055055
            555577F5777F57555555005550055555555577FF577F5FF55555500550050055
            5555577FF77577FF555555005050110555555577F757777FF555555505099910
            555555FF75777777FF555005550999910555577F5F77777775F5500505509990
            3055577F75F77777575F55005055090B030555775755777575755555555550B0
            B03055555F555757575755550555550B0B335555755555757555555555555550
            BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
            50BB555555555555575F555555555555550B5555555555555575}
          NumGlyphs = 2
        end
        object Jabatan: TEdit
          Left = 148
          Top = 372
          Width = 242
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 7
        end
        object Direksi: TEdit
          Left = 148
          Top = 347
          Width = 242
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          MaxLength = 30
          TabOrder = 6
        end
        object PanelTTD: TPanel
          Left = 148
          Top = 417
          Width = 125
          Height = 59
          BevelInner = bvLowered
          TabOrder = 11
          object TTD: TDBImage
            Left = 2
            Top = 2
            Width = 121
            Height = 55
            DataField = 'TTD'
            DataSource = DsGambar
            Stretch = True
            TabOrder = 0
          end
        end
        object BtnTTD: TBitBtn
          Left = 16
          Top = 434
          Width = 65
          Height = 24
          Caption = 'Cari'
          TabOrder = 12
          OnClick = BtnTTDClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            5555555555555555555555555555555555555555555555555555555555555555
            555555555555555555555555555555555555555FFFFFFFFFF555550000000000
            55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
            B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
            000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
            555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
            55555575FFF75555555555700007555555555557777555555555555555555555
            5555555555555555555555555555555555555555555555555555}
          NumGlyphs = 2
        end
        object x: TdxPageControl
          Left = 8
          Top = 160
          Width = 521
          Height = 185
          ActivePage = dxTabSheet2
          HideButtons = False
          HotTrack = False
          MultiLine = False
          OwnerDraw = False
          RaggedRight = False
          ScrollOpposite = False
          TabHeight = 0
          TabOrder = 13
          TabPosition = dxtpTop
          TabWidth = 0
          object dxTabSheet1: TdxTabSheet
            Caption = 'NPWP 1'
            object Label50: TLabel
              Left = 8
              Top = 10
              Width = 58
              Height = 16
              Caption = 'Nama PKP'
            end
            object Label51: TLabel
              Left = 8
              Top = 35
              Width = 65
              Height = 16
              Caption = 'Alamat PKP'
            end
            object Label52: TLabel
              Left = 8
              Top = 85
              Width = 50
              Height = 16
              Caption = 'Kota PKP'
            end
            object Label19: TLabel
              Left = 8
              Top = 109
              Width = 34
              Height = 16
              Caption = 'NPWP'
            end
            object Label20: TLabel
              Left = 8
              Top = 135
              Width = 119
              Height = 16
              Caption = 'Tanggal Pengukuhan'
            end
            object NamaPKP: TEdit
              Left = 140
              Top = 6
              Width = 371
              Height = 24
              BevelKind = bkFlat
              BorderStyle = bsNone
              TabOrder = 0
            end
            object AlamatPKP1: TEdit
              Left = 140
              Top = 31
              Width = 371
              Height = 24
              BevelKind = bkFlat
              BorderStyle = bsNone
              MaxLength = 100
              TabOrder = 1
            end
            object AlamatPKP2: TEdit
              Left = 140
              Top = 56
              Width = 371
              Height = 24
              BevelKind = bkFlat
              BorderStyle = bsNone
              MaxLength = 100
              TabOrder = 2
            end
            object KotaPKP: TEdit
              Left = 140
              Top = 81
              Width = 241
              Height = 24
              BevelKind = bkFlat
              BorderStyle = bsNone
              TabOrder = 3
            end
            object NPWP: TEdit
              Left = 140
              Top = 106
              Width = 241
              Height = 24
              BevelKind = bkFlat
              BorderStyle = bsNone
              TabOrder = 4
            end
            object TglPengukuhan: TdxDateEdit
              Left = 140
              Top = 131
              Width = 120
              Style.BorderStyle = xbsFlat
              Style.ButtonStyle = btsFlat
              Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
              Style.Shadow = False
              TabOrder = 5
              Date = -700000
              DateOnError = deToday
              DateValidation = True
              UseEditMask = True
              StoredValues = 4
            end
          end
          object dxTabSheet2: TdxTabSheet
            Caption = 'NPWP 2'
            object Label55: TLabel
              Left = 8
              Top = 10
              Width = 58
              Height = 16
              Caption = 'Nama PKP'
            end
            object Label56: TLabel
              Left = 8
              Top = 35
              Width = 65
              Height = 16
              Caption = 'Alamat PKP'
            end
            object Label57: TLabel
              Left = 8
              Top = 85
              Width = 50
              Height = 16
              Caption = 'Kota PKP'
            end
            object Label53: TLabel
              Left = 8
              Top = 109
              Width = 34
              Height = 16
              Caption = 'NPWP'
            end
            object Label54: TLabel
              Left = 8
              Top = 135
              Width = 119
              Height = 16
              Caption = 'Tanggal Pengukuhan'
            end
            object NamaPKP2: TEdit
              Left = 140
              Top = 6
              Width = 371
              Height = 24
              BevelKind = bkFlat
              BorderStyle = bsNone
              TabOrder = 0
            end
            object AlamatPKP21: TEdit
              Left = 140
              Top = 31
              Width = 371
              Height = 24
              BevelKind = bkFlat
              BorderStyle = bsNone
              MaxLength = 100
              TabOrder = 1
            end
            object AlamatPKP22: TEdit
              Left = 140
              Top = 56
              Width = 371
              Height = 24
              BevelKind = bkFlat
              BorderStyle = bsNone
              MaxLength = 100
              TabOrder = 2
            end
            object KotaPKP2: TEdit
              Left = 140
              Top = 81
              Width = 241
              Height = 24
              BevelKind = bkFlat
              BorderStyle = bsNone
              TabOrder = 3
            end
            object NPWP2: TEdit
              Left = 140
              Top = 106
              Width = 241
              Height = 24
              BevelKind = bkFlat
              BorderStyle = bsNone
              TabOrder = 4
            end
            object TglPengukuhan2: TdxDateEdit
              Left = 140
              Top = 131
              Width = 120
              Style.BorderStyle = xbsFlat
              Style.ButtonStyle = btsFlat
              Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
              Style.Shadow = False
              TabOrder = 5
              Date = -700000
              DateOnError = deToday
              DateValidation = True
              UseEditMask = True
              StoredValues = 4
            end
          end
        end
        object email: TEdit
          Left = 444
          Top = 133
          Width = 242
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          MaxLength = 30
          TabOrder = 14
        end
      end
      object SetNomor: TdxTabSheet
        Caption = 'Set Nomor Transaksi'
        object Label26: TLabel
          Left = 567
          Top = 325
          Width = 121
          Height = 16
          Caption = 'No. Seri Faktur Pajak'
        end
        object Group1: TGroupBox
          Left = 0
          Top = 16
          Width = 561
          Height = 481
          Caption = '    Kode &Transaksi    '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label3: TLabel
            Left = 9
            Top = 51
            Width = 67
            Height = 16
            Caption = 'Bank Masuk'
            FocusControl = BBM
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 9
            Top = 152
            Width = 111
            Height = 16
            Caption = 'Penyerahan Barang'
            FocusControl = BPB
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label5: TLabel
            Left = 279
            Top = 52
            Width = 67
            Height = 16
            Caption = 'Bank Keluar'
            FocusControl = BBK
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 279
            Top = 229
            Width = 67
            Height = 16
            Caption = 'Pembatalan'
            FocusControl = BPO
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label9: TLabel
            Left = 279
            Top = 179
            Width = 71
            Height = 16
            Caption = 'Pembatalan '
            FocusControl = BPL
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label10: TLabel
            Left = 9
            Top = 456
            Width = 104
            Height = 16
            Caption = 'Inisial Perusahaan'
            FocusControl = ALIAS
          end
          object Label11: TLabel
            Left = 9
            Top = 178
            Width = 128
            Height = 16
            Caption = 'Permintaan Pembelian'
            FocusControl = PPL
            Visible = False
          end
          object Label1: TLabel
            Left = 205
            Top = 456
            Width = 22
            Height = 16
            Caption = 'Tag'
            FocusControl = IniCab
          end
          object Label2: TLabel
            Left = 9
            Top = 229
            Width = 96
            Height = 16
            Caption = 'Order Pembelian'
            FocusControl = PO
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label6: TLabel
            Left = 9
            Top = 280
            Width = 143
            Height = 16
            Caption = 'Bukti Penerimaan Barang'
            FocusControl = BP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label7: TLabel
            Left = 279
            Top = 281
            Width = 106
            Height = 16
            Caption = 'Bukti Retur Barang'
            FocusControl = RPB
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label21: TLabel
            Left = 9
            Top = 25
            Width = 60
            Height = 16
            Caption = 'Kas Masuk'
            FocusControl = BKM
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label24: TLabel
            Left = 279
            Top = 26
            Width = 60
            Height = 16
            Caption = 'Kas Keluar'
            FocusControl = BKK
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 9
            Top = 77
            Width = 84
            Height = 16
            Caption = 'Bukti Memorial'
            FocusControl = BMM
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label31: TLabel
            Left = 9
            Top = 102
            Width = 78
            Height = 16
            Caption = 'Jurnal koreksi'
            FocusControl = BJK
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label32: TLabel
            Left = 9
            Top = 127
            Width = 109
            Height = 16
            Caption = 'Permintaan Barang'
            FocusControl = BPPB
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label29: TLabel
            Left = 9
            Top = 255
            Width = 46
            Height = 16
            Caption = 'Inspeksi'
            FocusControl = INS
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label30: TLabel
            Left = 9
            Top = 203
            Width = 30
            Height = 16
            Caption = 'SPRK'
            FocusControl = SPRK
            Visible = False
          end
          object Label33: TLabel
            Left = 279
            Top = 204
            Width = 93
            Height = 16
            Caption = 'Surat Pengantar'
            FocusControl = SPG
            Visible = False
          end
          object Label34: TLabel
            Left = 279
            Top = 77
            Width = 97
            Height = 16
            Caption = 'Jurnal Pembelian'
            FocusControl = PBL
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label35: TLabel
            Left = 279
            Top = 102
            Width = 94
            Height = 16
            Caption = 'Jurnal Penjualan'
            FocusControl = PJL
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label37: TLabel
            Left = 279
            Top = 127
            Width = 67
            Height = 16
            Caption = 'Pembatalan'
            FocusControl = BBP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label38: TLabel
            Left = 279
            Top = 153
            Width = 146
            Height = 16
            Caption = 'Retur Penyerahan Barang'
            FocusControl = RBPB
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label39: TLabel
            Left = 9
            Top = 331
            Width = 42
            Height = 16
            Caption = 'Enquiry'
            FocusControl = ENQ
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label40: TLabel
            Left = 279
            Top = 306
            Width = 93
            Height = 16
            Caption = 'Contract Review'
            FocusControl = CR
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label41: TLabel
            Left = 9
            Top = 356
            Width = 17
            Height = 16
            Caption = 'SO'
            FocusControl = SO
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label42: TLabel
            Left = 279
            Top = 331
            Width = 106
            Height = 16
            Caption = 'Rekaman Lanjutan'
            FocusControl = RKL
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label43: TLabel
            Left = 9
            Top = 381
            Width = 83
            Height = 16
            Caption = 'Sales Contract'
            FocusControl = SC
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label44: TLabel
            Left = 279
            Top = 356
            Width = 115
            Height = 16
            Caption = 'Perintah Pengiriman'
            FocusControl = SPP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label45: TLabel
            Left = 9
            Top = 406
            Width = 108
            Height = 16
            Caption = 'Pengiriman Barang'
            FocusControl = SPB
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label46: TLabel
            Left = 279
            Top = 381
            Width = 100
            Height = 16
            Caption = 'Invoice Penjualan'
            FocusControl = INVJual
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label47: TLabel
            Left = 9
            Top = 431
            Width = 107
            Height = 16
            Caption = 'Shipping Intruction'
            FocusControl = SHIP
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label48: TLabel
            Left = 279
            Top = 255
            Width = 68
            Height = 16
            Caption = 'Kompensasi'
            FocusControl = KNS
            Visible = False
          end
          object Label49: TLabel
            Left = 9
            Top = 306
            Width = 48
            Height = 16
            Caption = 'BP SPRK'
            FocusControl = BPSPRK
            Visible = False
          end
          object Label59: TLabel
            Left = 279
            Top = 431
            Width = 91
            Height = 16
            Caption = 'Retur Penjualan'
            FocusControl = RPNJ
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label60: TLabel
            Left = 279
            Top = 456
            Width = 101
            Height = 16
            Caption = 'Pemakaian Bahan'
            FocusControl = BHN
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label61: TLabel
            Left = 280
            Top = 406
            Width = 143
            Height = 16
            Caption = 'Retur Pengiriman Barang'
            FocusControl = RSPB
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object BBM: TEdit
            Left = 158
            Top = 47
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 4
            OnChange = PemisahChange
          end
          object BBK: TEdit
            Left = 437
            Top = 48
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 6
            OnChange = PemisahChange
          end
          object BPB: TEdit
            Left = 158
            Top = 148
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 20
            Visible = False
            OnChange = PemisahChange
          end
          object PPL: TEdit
            Left = 158
            Top = 174
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 24
            Visible = False
            OnChange = PemisahChange
          end
          object BPO: TEdit
            Left = 437
            Top = 225
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 38
            Visible = False
            OnChange = PemisahChange
          end
          object BPL: TEdit
            Left = 437
            Top = 175
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 26
            Visible = False
            OnChange = PemisahChange
          end
          object ALIAS: TEdit
            Left = 158
            Top = 452
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 4
            TabOrder = 67
            OnChange = PemisahChange
          end
          object IniCab: TEdit
            Left = 231
            Top = 452
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 4
            TabOrder = 66
            OnChange = PemisahChange
          end
          object PO: TEdit
            Left = 158
            Top = 225
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 36
            Visible = False
            OnChange = PemisahChange
          end
          object BP: TEdit
            Left = 158
            Top = 276
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 30
            Visible = False
            OnChange = PemisahChange
          end
          object RPB: TEdit
            Left = 437
            Top = 277
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 44
            Visible = False
            OnChange = PemisahChange
          end
          object BKM: TEdit
            Left = 158
            Top = 21
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 0
            OnChange = PemisahChange
          end
          object BKK: TEdit
            Left = 437
            Top = 22
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 2
            OnChange = PemisahChange
          end
          object BMM: TEdit
            Left = 158
            Top = 73
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 8
            OnChange = PemisahChange
          end
          object BJK: TEdit
            Left = 158
            Top = 98
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 12
            OnChange = PemisahChange
          end
          object BPPB: TEdit
            Left = 158
            Top = 123
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 16
            Visible = False
            OnChange = PemisahChange
          end
          object INS: TEdit
            Left = 158
            Top = 251
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 40
            Visible = False
            OnChange = PemisahChange
          end
          object SPRK: TEdit
            Left = 158
            Top = 199
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 28
            Visible = False
            OnChange = PemisahChange
          end
          object SPG: TEdit
            Left = 437
            Top = 200
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 34
            Visible = False
            OnChange = PemisahChange
          end
          object PBL: TEdit
            Left = 437
            Top = 73
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 10
            Visible = False
            OnChange = PemisahChange
          end
          object PJL: TEdit
            Left = 437
            Top = 98
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 14
            Visible = False
            OnChange = PemisahChange
          end
          object BBP: TEdit
            Left = 437
            Top = 123
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 18
            Visible = False
            OnChange = PemisahChange
          end
          object RBPB: TEdit
            Left = 437
            Top = 149
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 22
            Visible = False
            OnChange = PemisahChange
          end
          object ENQ: TEdit
            Left = 158
            Top = 327
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 46
            Visible = False
            OnChange = PemisahChange
          end
          object CR: TEdit
            Left = 437
            Top = 302
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 48
            Visible = False
            OnChange = PemisahChange
          end
          object SO: TEdit
            Left = 158
            Top = 352
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 50
            OnChange = PemisahChange
          end
          object RKL: TEdit
            Left = 437
            Top = 327
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 52
            Visible = False
            OnChange = PemisahChange
          end
          object NoBKM: TEdit
            Left = 206
            Top = 21
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 1
            OnChange = PemisahChange
          end
          object NoBBM: TEdit
            Left = 206
            Top = 47
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 5
            OnChange = PemisahChange
          end
          object NoBMM: TEdit
            Left = 206
            Top = 73
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 9
            OnChange = PemisahChange
          end
          object NoBJK: TEdit
            Left = 206
            Top = 98
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 13
            OnChange = PemisahChange
          end
          object NoBPPB: TEdit
            Left = 206
            Top = 123
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 17
            Visible = False
            OnChange = PemisahChange
          end
          object NoBPB: TEdit
            Left = 206
            Top = 148
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 21
            Visible = False
            OnChange = PemisahChange
          end
          object NoRBPB: TEdit
            Left = 486
            Top = 149
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 23
            Visible = False
            OnChange = PemisahChange
          end
          object NoPPL: TEdit
            Left = 206
            Top = 174
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 25
            Visible = False
            OnChange = PemisahChange
          end
          object NoSPRK: TEdit
            Left = 206
            Top = 199
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 29
            Visible = False
            OnChange = PemisahChange
          end
          object NoSPG: TEdit
            Left = 486
            Top = 200
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 35
            Visible = False
            OnChange = PemisahChange
          end
          object NoPO: TEdit
            Left = 206
            Top = 225
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 37
            Visible = False
            OnChange = PemisahChange
          end
          object NoINS: TEdit
            Left = 206
            Top = 250
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 41
            Visible = False
            OnChange = PemisahChange
          end
          object NoBP: TEdit
            Left = 206
            Top = 276
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 31
            Visible = False
            OnChange = PemisahChange
          end
          object NoENQ: TEdit
            Left = 206
            Top = 327
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 47
            Visible = False
            OnChange = PemisahChange
          end
          object NOSO: TEdit
            Left = 206
            Top = 352
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 51
            OnChange = PemisahChange
          end
          object NoBKK: TEdit
            Left = 486
            Top = 22
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 3
            OnChange = PemisahChange
          end
          object NoBBK: TEdit
            Left = 486
            Top = 48
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 7
            OnChange = PemisahChange
          end
          object NoPBL: TEdit
            Left = 486
            Top = 73
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 11
            Visible = False
            OnChange = PemisahChange
          end
          object NoPJL: TEdit
            Left = 486
            Top = 98
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 15
            Visible = False
            OnChange = PemisahChange
          end
          object NoBBP: TEdit
            Left = 486
            Top = 123
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 19
            Visible = False
            OnChange = PemisahChange
          end
          object NoBPL: TEdit
            Left = 486
            Top = 175
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 27
            Visible = False
            OnChange = PemisahChange
          end
          object NoBPO: TEdit
            Left = 486
            Top = 225
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 39
            Visible = False
            OnChange = PemisahChange
          end
          object NoRPB: TEdit
            Left = 486
            Top = 277
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 45
            Visible = False
            OnChange = PemisahChange
          end
          object NoCR: TEdit
            Left = 486
            Top = 302
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 49
            Visible = False
            OnChange = PemisahChange
          end
          object NoRKL: TEdit
            Left = 486
            Top = 327
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 53
            Visible = False
            OnChange = PemisahChange
          end
          object SC: TEdit
            Left = 158
            Top = 377
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 54
            Visible = False
            OnChange = PemisahChange
          end
          object NOSC: TEdit
            Left = 206
            Top = 377
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 55
            Visible = False
            OnChange = PemisahChange
          end
          object SPP: TEdit
            Left = 437
            Top = 352
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 56
            OnChange = PemisahChange
          end
          object NOSPP: TEdit
            Left = 486
            Top = 352
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 57
            OnChange = PemisahChange
          end
          object SPB: TEdit
            Left = 158
            Top = 402
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 58
            OnChange = PemisahChange
          end
          object NOSPB: TEdit
            Left = 206
            Top = 402
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 59
            OnChange = PemisahChange
          end
          object INVJual: TEdit
            Left = 437
            Top = 377
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 62
            OnChange = PemisahChange
          end
          object NOINVJual: TEdit
            Left = 486
            Top = 377
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 63
            OnChange = PemisahChange
          end
          object SHIP: TEdit
            Left = 158
            Top = 427
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 64
            Visible = False
            OnChange = PemisahChange
          end
          object NOSHIP: TEdit
            Left = 206
            Top = 427
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 65
            Visible = False
            OnChange = PemisahChange
          end
          object KNS: TEdit
            Left = 437
            Top = 251
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 43
            Visible = False
            OnChange = PemisahChange
          end
          object NOKNS: TEdit
            Left = 486
            Top = 251
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 42
            Visible = False
            OnChange = PemisahChange
          end
          object BPSPRK: TEdit
            Left = 158
            Top = 302
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 32
            Visible = False
            OnChange = PemisahChange
          end
          object NOBPSPRK: TEdit
            Left = 206
            Top = 302
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 33
            Visible = False
            OnChange = PemisahChange
          end
          object RPNJ: TEdit
            Left = 437
            Top = 427
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 68
            OnChange = PemisahChange
          end
          object NORPNJ: TEdit
            Left = 486
            Top = 427
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 69
            OnChange = PemisahChange
          end
          object BHN: TEdit
            Left = 437
            Top = 452
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 70
            Visible = False
            OnChange = PemisahChange
          end
          object NOBHN: TEdit
            Left = 486
            Top = 452
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 71
            Visible = False
            OnChange = PemisahChange
          end
          object RSPB: TEdit
            Left = 437
            Top = 402
            Width = 40
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 5
            TabOrder = 60
            Visible = False
            OnChange = PemisahChange
          end
          object NORSPB: TEdit
            Left = 486
            Top = 402
            Width = 65
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            MaxLength = 25
            TabOrder = 61
            Visible = False
            OnChange = PemisahChange
          end
        end
        object Group2: TGroupBox
          Left = 566
          Top = 16
          Width = 179
          Height = 305
          Caption = '   &Konfigurasi   '
          TabOrder = 1
          object Label12: TLabel
            Left = 8
            Top = 24
            Width = 48
            Height = 16
            Caption = 'Pemisah'
          end
          object Label13: TLabel
            Left = 8
            Top = 64
            Width = 142
            Height = 16
            Caption = 'Format Nomor Transaksi'
          end
          object Label14: TLabel
            Left = 8
            Top = 256
            Width = 85
            Height = 16
            Caption = 'Contoh Format'
          end
          object Label15: TLabel
            Left = 8
            Top = 202
            Width = 97
            Height = 16
            Caption = 'Reset Nomor Per'
          end
          object Pemisah: TComboBox
            Left = 65
            Top = 21
            Width = 104
            Height = 24
            BevelKind = bkFlat
            ItemHeight = 16
            TabOrder = 0
            Text = ':'
            OnChange = PemisahChange
            Items.Strings = (
              ':'
              '-'
              '/'
              ' ')
          end
          object Format1: TComboBox
            Left = 8
            Top = 88
            Width = 161
            Height = 24
            BevelKind = bkFlat
            ItemHeight = 16
            ItemIndex = 0
            TabOrder = 1
            Text = 'Inisial Perusahaan'
            OnChange = PemisahChange
            Items.Strings = (
              'Inisial Perusahaan'
              'Kode Transaksi'
              'MMYY'
              'MMYYYY'
              'Nomor Urut'
              'YYMM'
              'YYYYMM')
          end
          object Format2: TComboBox
            Left = 8
            Top = 116
            Width = 161
            Height = 24
            BevelKind = bkFlat
            ItemHeight = 16
            ItemIndex = 1
            TabOrder = 2
            Text = 'Kode Transaksi'
            OnChange = PemisahChange
            Items.Strings = (
              'Inisial Perusahaan'
              'Kode Transaksi'
              'MMYY'
              'MMYYYY'
              'Nomor Urut'
              'YYMM'
              'YYYYMM')
          end
          object Format3: TComboBox
            Left = 8
            Top = 144
            Width = 161
            Height = 24
            BevelKind = bkFlat
            ItemHeight = 16
            ItemIndex = 2
            TabOrder = 3
            Text = 'MMYY'
            OnChange = PemisahChange
            Items.Strings = (
              'Inisial Perusahaan'
              'Kode Transaksi'
              'MMYY'
              'MMYYYY'
              'Nomor Urut'
              'YYMM'
              'YYYYMM')
          end
          object Format4: TComboBox
            Left = 8
            Top = 172
            Width = 161
            Height = 24
            BevelKind = bkFlat
            ItemHeight = 16
            ItemIndex = 4
            TabOrder = 4
            Text = 'Nomor Urut'
            OnChange = PemisahChange
            Items.Strings = (
              'Inisial Perusahaan'
              'Kode Transaksi'
              'MMYY'
              'MMYYYY'
              'Nomor Urut'
              'YYMM'
              'YYYYMM')
          end
          object Contoh: TEdit
            Left = 8
            Top = 272
            Width = 161
            Height = 24
            TabStop = False
            BevelKind = bkFlat
            BorderStyle = bsNone
            Enabled = False
            MaxLength = 20
            ReadOnly = True
            TabOrder = 6
          end
          object Reset: TComboBox
            Left = 8
            Top = 218
            Width = 161
            Height = 24
            BevelKind = bkFlat
            ItemHeight = 16
            ItemIndex = 0
            TabOrder = 5
            Text = 'Bulan'
            Items.Strings = (
              'Bulan'
              'Tahun')
          end
        end
        object NOSERI: TEdit
          Left = 567
          Top = 342
          Width = 179
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          MaxLength = 20
          TabOrder = 2
        end
      end
    end
    object OkBtn: TBitBtn
      Left = 571
      Top = 525
      Width = 75
      Height = 25
      Caption = '&Ok'
      TabOrder = 1
      OnClick = OkBtnClick
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
    object CancelBtn: TBitBtn
      Left = 646
      Top = 525
      Width = 75
      Height = 25
      Caption = '&Batal'
      TabOrder = 2
      OnClick = CancelBtnClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 174
    Height = 553
    Align = alLeft
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Caption = 'Panel1'
    TabOrder = 0
    object Image1: TImage
      Left = 2
      Top = 2
      Width = 170
      Height = 549
      Align = alClient
      Picture.Data = {
        0A544A504547496D616765B9560000FFD8FFE000104A46494600010101006000
        600000FFE1001645786966000049492A0008000000000000000000FFEC001144
        75636B79000100040000003C0000FFEE000E41646F62650064C000000001FFDB
        0043000604040405040605050609060506090B080606080B0C0A0A0B0A0A0C10
        0C0C0C0C0C0C100C0E0F100F0E0C1313141413131C1B1B1B1C1F1F1F1F1F1F1F
        1F1F1FFFDB0043010707070D0C0D181010181A1511151A1F1F1F1F1F1F1F1F1F
        1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
        1F1F1F1F1F1F1F1FFFC0001108017900CB03012200021101031101FFC4001F00
        00010501010101010100000000000000000102030405060708090A0BFFC400B5
        100002010303020403050504040000017D010203000411051221314106135161
        07227114328191A1082342B1C11552D1F02433627282090A161718191A252627
        28292A3435363738393A434445464748494A535455565758595A636465666768
        696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6
        A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1
        E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F010003010101010101
        0101010000000000000102030405060708090A0BFFC400B51100020102040403
        0407050404000102770001020311040521310612415107617113223281081442
        91A1B1C109233352F0156272D10A162434E125F11718191A262728292A353637
        38393A434445464748494A535455565758595A636465666768696A7374757677
        78797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3
        B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8
        E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FA9E8A28A00052
        9A414A6800A46E94B41E940076A40734D6A70E9400B4534FAD34B81D4E28024A
        6B1C534482919C034EC2B921031F5A80F07DA9DE7734DC64E6A921364A00C645
        38115086C1CF61522BE79F5A4D0D31E0F38A00E69339A514862E690D145200A2
        8A28003494A48A61614C405B8A66EA33CE29315561135145150500A5348294D0
        0148D4B48680130314A338A40368CD2EEA00338A8E453D6A4A4661B69A132BFA
        7AD0C4838CD04F20D2B9C9FEB56881B839049E2949E7834D239C679F4A539C8E
        94C076C3D73D6A4881C9A6F1C7F2A7C6E18E31D2A5B1A240314DE734FED4CCF6
        A8458E068A6E3A514C43A8348451D2801AD9A889E6A526A366E715484C6E68CD
        2628C5022D515C2F843C55ABA58C506BE45C5C0CEFBB8D76FD3728E3F1AED609
        A29E31246C190F42289D371766529263E9C290D28A81851DA8A2801AD40E94AC
        38A00E31400671513827A0A976D1B69A6264011B343A7B1A9F14D61CD3B8B94A
        DB0EEE38C538A29E5BF0AB1B4633DEA06273C7E14D3B8AD6102F5A9230475A55
        4E371EBDE9E3D4D26C690AA734114134A3AD22828A28A401451450034A547E5F
        7ED531A69E955724888E714B8A7629A4734EE078B7867C5EFA65CA695AB4522D
        D0EBA7DF2F9176A3D63DDF24CA47752735E9BA36A1A56A2A5F4CB9D9328CBC0D
        8122E3B321ED9EE38AC2B6D77C0FE38D2CDBDCADB6AD680E195B05E27C71907F
        79138E39E08AF2BF88FA0EBFF0FB5DD27C55A25FCD75A042E2083CF90BB59CF2
        1E2299FEF3DBCE32B963C1C03D4577CE70A8B55CB3FC198C62D3D1DD1EFC3566
        B67315F2ED1FC32A8E39F51DAB4229A19503C4E190F42BC8AE77C3DE21D27C65
        E1C8F54B0F9436639A0623CC8275037C4F8EE323EA0823835976D7F3E937D2B4
        69BD08C4D6FBB692474209E01F4C915C7ECEF7E8D1AF35BD0EE78A70AE7B42F1
        B685ABDC359C7235AEA4BCBE9D76BE4DC003AB2AB7DF5F752456F8AC9AB163A8
        A6E79A70A4014514500148452D18CD0035F85355B3EBD6AC70722A191307EB54
        8963E37CF06A5AAC08078ED53A3646718A1A0438520CEEE696834862E28A17A5
        29A431290D2D14009DA9334A6A12DB49E29A132524537229BE6646051CD3B0AE
        7CF17FA76992B9BA92168AF41C2EA168ED05CAE4F412A6091ECD915D169B77AE
        4DA4CFA5EA8B0F8A743BC8CC53DB4E12DEF3CB6182377104A47624A60E0EEABC
        FE1C91D4EE5E1BBF4A7D8E8F3D9B6630727A66BD49F2CBD4E68B68F39F0A6ADA
        BFC31F13BFDA5A79FC3F3308E68AE0186EE4B51811C8D0BFDF96DC9DBE646583
        807919E3DCB5482C756D3EDF54D3E44B8B7B88D658265E9246C370C7D73DF9AC
        AF15782F4FF1D7854E9979B60D52DBF7DA4EA18CBDB5D28F91F8E4A37DD75E8C
        38EB823CE7E1378E6E7C3BA95D782BC5BFE871473F906295B70B3BA7C61439EB
        04FB83C6DD39CF735CD7E6D57C4BF146B6B7A33D0A3B6D32EA316DAAC6B7968B
        F341248089A06EFE5CAB8743EEA453EDB56D7F44775B3BBFEDED3231B96CEEDD
        52F5107FCF2B8FB9363D2400FF00B549E20B29AC66691497849CB823907B3023
        AFBE6BCFA5D3248AEDE5D3277B099C97684E64B7727FD862719F5520D5AA2A7A
        99BA8E27B3787BC69E1FD7832595C7977B1E3CFB0B81E55D464F4DD13F38F423
        20F635BAA78C631ED5F3FEA1147776A975AAE9BF67D5F4E1B6DF52899DADA547
        396B769A2025B7DD8CAB30C2373DCD77BA078A3555D1ED355D3673E20D1661B5
        A19CA25FC2CA76B46651FBB95908C156DA7D09CD72D4A567646D19DD1E8D484F
        38ACAD23C49A4EA8F2436B291751733D9CC0C73A7BB46E01C7B8E3DEB509248A
        C6C683A8CE29A0D3BA8A008DB807DEA2DE08C54CE38A8B68C1AA44B063F2D3A3
        7005459146E031C66AAC22C075CFBD38B01D6AA3311F30EC691A5624134B947C
        C5E1D28355639CB3E0F4F5AB22A5AB0D30A28A0D2188DD3AD53924C9C0EB52DC
        CA106DEE7F95566652B81D6B48A21B264718F7A8CB9C9A606E28DD4EC2B9E55A
        5F8A5E19DA0B7D4D64910E1B4ED495AD6E79E8562B911BB7D518D7556BE26B12
        55352B292D1D973E601B90F24640C06C71D466A67BED1F56B536DA9C30DF405B
        1E5DC22C8BCFB30E3F035C94FA05AE87AE5B595AEA33E9DE16D55FC8D30A959A
        1B2BE63C5AC90DC2C91982E7AC6782B20DA31BABD19CE2FE28FCD69F97F91CD1
        8FF2BB793D4F4AD38D85C289ECA649947528C338C743DC7E35CEF8DBE11F857C
        6174352BB596D355F27ECED770103CC4192AB321CAB842491D0F500D665EF86B
        C4FA6DD1956CA2D52D9402B3E9D21B4BA561D7F713B3C6C4F5F96551ED4CB0F1
        B5FE9777E55E5D14136C1059EA913DACE180C1F99F0849FF0065D8563EC2FAC2
        5F7FF56FBEC57B46B492D3CBFC8DFD23C39AFDAE9634DD62ED35436D94B6D440
        292C90F613212C37AF4DC1B0463BE6A8DC785844428040CE63DC3E607D2B76D3
        C67605BCBBF89ECA5FF68164C763B80E9F862B6E29AC6F623E53C73C6473B086
        1CFD2B393A907EF2B7E5FE45AE596CF53CDAD5F54D0EFA577D364BCD38AEE696
        D4F99320EE5ADDB0CEBFEE127DAB3B56B3B0788F88BC197A6D922DCFAFE9B661
        7E6538CDCBD948065E23F7D700B2F00E40AF48D46C8C656587874E53AFFF00AF
        EB58B7FA2787F592AB72889AB443CC86EA0630DDC7CFDE574F9C8C8E8722A672
        E6D4A492D0E135FD40DFC36771A82471DED904974AF135834925BE1FAACAA845
        C4714C3838C81D41E2BA2F0DF8FAED74B4BD4B85D6ECC49E4DC5AEE517F6D2AF
        FAC8CC83114E067284ED2CA4724D72BADE85AE782E580DAA9D5F40BAB87324AE
        CB05C5ACD31F9503711324AC78C81F3FD6B3FC4C90FDAADEF7478A4D23C41129
        FED2D29D5609AE63EE0A1FDD4ACA3254AE7D0F15A7B38C88E768F72D0FC4BA2E
        B701974EBA59593896020A4D191D55E26C3A91EE2B57391D78F5AF9966B9BE33
        5BEBF691BCD731AFC97B625E39258475491321D24420EDC13CE411CD7A4F87BE
        276A62C05DDE42DAB6971A6F9AEEDD02DCC4BC64CD082158AE7E6030460F1595
        4C335B6A8D23553DF73D3D8A8EF9A898F26A8693AD693AB43E7E9B74B731E016
        DA72403C8CA9F98673C55E7FF3DEB148A646D4D34FC0A8D8807AF154896341A0
        E334DC9278A701839278F4AA10F8C65C63B75AB8093DF8AA493FCE001F2F7A9C
        5C210D8EA3A544932A2C9D9D471919F7A4DDEFEF54D6625B2D8E7AD473CC5DB6
        AB600A5C80E424B207909E9CD27CABCE7351938FA8A40C0D6B622E485B34B9A6
        6E146052B0EE780AF8BFEC3323DED85FD82863BE58D52F6DC7D0C2565C7D538A
        E861F16E81E22D3A6D352EEDAFEDEE90C33DA893CB971F783F9726C75643F302
        3904715CD3DABCEA5949EA7A75A9CF85D2E6043736F1DC315E56450DC67DC7F5
        AF4B924FAFDE67A2E87A07823C6F7D893C3DE21949D634E5531DE38DA6F6CFA2
        5C843FC6A3E59947461B8706BB192FB4CBB8FECF751C7716F2FCAF0CA03A9F50
        5581FD6BC293C29AC59C666D0EEE7B0BF8B2D6B0990C968EE7AC524528750AE0
        6D240E339EB5BFE1BD53C5BA86991EA369F64BC72C63B9B4B8F32D2E2DEE2238
        96095A3F391991BA1DA32307BD734E8F2B06AFAA3D1AE7E1E786EE2DC47A63CD
        A41077A8B293116EED9824F321238E9B79F5AF24F166A3E39F037C46B19E6943
        D998D9ACDEDD4C705F400833C3246495499060E178C61979DD5E93A478B6FA02
        A9AAE8F7D62C700CB1A8BD849EF86B62F201EEC82ACF89F4BF087C42D0AE3476
        BF8A4BC8F13DAC90C8A6E6D274FB9308F87183F7811C8C8EF59C6A4E3BB6E3FD
        6E68E31DEDA9D1E8FAC69DE21D0ADF54D3A4F32DAE1772E46191870C8C3B3291
        823B1AE7B5CD1F48BA9A39350B5597C924C6FCA4B193FC51C885594FE35E4DF0
        EFC63AB780BC5173A0F8957ECD6E5F1AA41C948DCF115EC0BFF3C650016C7D3A
        AE0FBE6A36B1DC402688ABAB8055B395653C820F70474A994391FF0075FF0056
        FEBD47BAF338D6D235A8ECA5B4B4D423D634ABA5649B4BD68799BA271828B751
        8DE3FE06AD8FC6B92B8D5134FF002FC3DE35D3FC98448D1E897D7C5668E78147
        11B4E9B879B0E31BCE095009E6BAFBFBCD434C46FB05BC570C1B77D9E590C20A
        9EA04803007D3231595A9789742D6B499B4BF12DACFA2A121A3B9B842F1C53A9
        CC52C57081A3DCAD839623238E86AD45A7744B775639CB9D12EBC3406B9A3DC4
        377A24D2F99AA5BCECF32C61C8513C53467785071E6609FEF7AD67CF7561A778
        8A4D4658A7D212E980BDB8B670D1B631B2E22930639147F12480653A66A6B153
        F69BB861956D35AB6C1B89B4F606D6EE271FBBB9F27E689E397F8C104A9C8AD1
        D125D53C3135B417D6DFDA5A45EBF97677102AA3DB97195B792290ED74624EC3
        9E0FCBE95ABDAFD199ADEC6AC1647C3F2ADD5EE27D1E7755B1D534CDD1CD6A67
        EECB9E6190F2B82541E315D4E81E2DBF065B2D40A6A8D07CD1DD5A80B34B0648
        F31E06DA4B274900E41E718C57165747D33519ADAC2FCD9E97A91226B19C314B
        69E4C66196CE6C32C52FF0321CA1E3D2923BC7B6BB874CD67315EC6CEBA1F88A
        C91E49220A3E58E50017665030436EDEBEF9AE67072D4D94923D6F4EBFB1D42D
        FED165325C44C4A97420E0838208FBC181EA0F34EB9400E00CF7CD79A69B7F7A
        92CBACAB472A20C6B573A6E3CE8A403E4B9585772CB1381F328072074041AEA3
        48F1879B14A75210CA96C15DEFAD4968CC24656631FDF5520F3E873592D0A713
        7E3618C1E94A401D3A5104F6D75109ADDD5E07F9925420A9047B54BE581D083C
        55DC8B11003753CF03AF6E94C8D5B3D6A5D848F7E9430440E73814C29C7152CC
        9C91E9519236F03934D098CFAD37BF14E6E9511207D6AAC224DE075A3CC5A881
        CF5A368A2C2B9C468DE0D9EE210229E1739C618B271DBA035BB0F856F2001A5B
        5DC2318F9183E79EC0609FCAA9681AA984AAB1E95D7DBEB1130183CD6F2AD38E
        8AD612B339A92D220D2799118C2E000CA50F3ECC0572D7D2A78735A7F14DBC4D
        26973811F89E04E4F94836C77E91AF5783EECB8FBD1FFBA2BD46E350601678F2
        E63FF5910FE34FE2C03DC75FD3BD02D745BA4F30DBC322CA376E5400B2B75C91
        CF2090477E45275D35AAFC471B5F71D6B630BC49246C244650C8EB821948C820
        8E0823D2A0D7342D3AFECF6DDD9C375E5FCC9E6A82CB8E728DF794FBA9069FE1
        9D034CF0EE9834BD39A5FB0C7248F6F0CAE6410AC8DBBCA8CB65846A49DAA49C
        0E3A000694EA251B4300B8F994F7FC6B8D4ACCD66AF13CD7E227C36FEDBF0AC9
        FF0008F4ACDABDB80F045752BDC2CA8183BDB7993195E2DE3214A9F94F3585F0
        53E2142628BC27A8EF854168F4A69F2B22B293BED6507EEBA1FBA0F38E3D2BD2
        60D3750B7BBF3951644C92444E73EDC36066BCAFE33F81E6B0B993C69A55BC8B
        0C850EBB6F08E5197EE5F460670C9C0939FBA33DABAD72BF75BBA7F798424FB6
        A7A1F8A6C648C34AA414C73BB8E7A678E00AE5A1D62E6D2296DF6664E36EF00A
        383D54F51F4CD27837E235BF8A342FB3DDC91FF6C5AA01300DF2CF19031320E7
        391C30F5AA97B00691A265DD148084CF420F1B4FD3B115AD38DB4904882FFC07
        1DE42F7FA518F4AD7CAEFB5BBB60618CE58130CAA06C2B27DD2769C1208EF526
        9D36B57FA43C27C9D5ED272D6BAAD85D0FB2DEDBCAA7E78999731394382AFB41
        3C377AB9A4E84B1C2A9A66B179A6C8BC35AC8C2EEDCE3B88E6F997D386FC2A1D
        56D3C61A5EA27C4505BD9EA244663D5D2CC34335D5AC7928C2160E8678792A41
        048C8E6B39EE52FC4A12EB5A64968FA0F8DE1C5E424AE9D36A0ABBEEEDD71B4F
        9A848DE9D18E467835856D2EAA2E8E98D7C6E22B96F334D9673B8B08CE542CEB
        F32CD0E7E5249C8FA9A8FC4DAE695AF4705C07B8B359144D6B3CA9B423AE76BA
        32EF8F19C8619E991E955F47B7D335885A36536DA942EA67364D81BC731CF180
        4A156EA38C8E54D6F1A692F53272F91DCA6A2449E4DDE348F1ADB44B23DFC200
        B5BE80B631248A0A157FE3DC06D6E7A1A1AFD2DB4F5BCDFE6E9F33982C750B64
        02E2C656244B05CA64E6176E0804819E38C561D8DDF8A6E673692C9036B5A791
        2D9CA8042EC0F0B2206DD1BC4E094950E39CFB569EA577A55C2BDD44AFA3EA70
        288BC41A395F2E37122F24020C5290394607E65E339AE495349EBB1BC66DAF32
        D5B7886FAC6DE39B4E676559767EEC2A386E37DB4F0B101CB72D13E33FC35D56
        89F11F47BB5921BDC59B236D13F588827009C73136782ADD0D7946A30DC30B68
        1235D4D3C92961A8444A1B8809C981FA7CCA3EE127D3D2AB8B86691B64CB70CC
        870C836DD1541F3020F0F220E241FC439EA2B4F60990EA33E8EB75423702181E
        841C83F43DE9B24AAA4D788F87BC65ABE90105ACBE6DBC8A19ED2525C71E919E
        4640E1973EFCE6BD1F42F1C68BAB8547716978786B795B20F4C6D7EFD7A119AC
        2549AF42D4D3D8E924248CAFA5566DD9EBCFAD4F895B91F281C63E950C8AC1BE
        6E3D0D242642D21C9151E7269CD9C9CD21193FD2B444B0CD2E69421240238A91
        206650D8EB482C79BDBEAB146733594A87FD920FF8569C3AFE9A00DC668CFA32
        1E3F10696FBC1BE2386DE57874ED0EFA644668E1B77BDD3DA46032103AC930C9
        23009381D4D64DB08B53D3ADB51D274974B3B852029D52549E19E3F92E2DE78A
        EA0955248640548070700F7AEDE7A3276B4BF0FF00332E4A9D1A674916BBA7B0
        CC776A08FEF6E5C7E62A7B7D49209B097286DE561850C0EC94F500E7A3D71AE6
        F6D613F6DD1EFF000A4EF9A1B8D3AE38ED842B01A826BCD32EF10BDAEAD6EBB9
        1FCE7D3E19061483FF002C2E58F55EC2ABD8D36B7925E8DFE84BF697E9F79EA0
        977738F7EF8FE5DE9E6EE7C720D79C26ADA224DE4A6AEF0CDF7B64D67A8DB819
        F5631320FCEADAEB914446CD7ACA56FEEADE73F42B2AC78AC9E123D1AF9A681C
        E7FCBF8A3BAFB5CBDC67DA9AD7F3C642748DFF00D5FB1C7DDF4E4572F0F88751
        F25261756F3C721658C89AD9CB14C060BB1F9233C8AD44D535868774BA799632
        46E611B741D0FC9BBA543C3BE8E2FD199A9497492F919575E07D02E7568B561A
        74316A50F09751AF96F8E8436DC06073CE6AD9F0924B93B5A33D46D24631EC32
        2ADD978B916DE37BBB1689B9DC7E61D0E070EABD87AD68A78CFC3EB13CB2968A
        38D4BC8E42950A06493863D289D3AABA37F89B53AD4DEEF5318F872ED3E7573B
        D392180E7DF3D6B3358F11E9FA4CC61B9F361703FD6BC7208B7019044982BC1E
        C4D7A2DA5ED86A16115ED9CA93DB4EA1E099082AEA475045739E21D344D1B321
        20608207BD654EA5DD99A546A3B1E17A86A305ADF4B7903C3FD8F7B2EFBA8E26
        0C96F72E4013AA8E047271BC763CF7AB97BA0248AB7561FB8D46160F0CB13188
        4BCF31C8CBFC2FD8F6383DEBA5BFF09695344E66B285F236B9D98DC09E41C7AF
        AD70634D9F49D6869BF6DB98A19CB7F65DC0933DF26D9C3FCA5947DCF51C76AE
        F56DBA7E464AFBF53A4D32D2FF005D786EF4FBF782E6CA56F2A3BD8C3BC530E1
        E09244C3E1B80C0F5FBD5A777AA6B37F6AFA9C5A7BC1AB59936779631BA4EAE8
        305ADE646DADC8F9E2700FAFAD674165AF69424D7AC275BE72816FEC5A2F2DA6
        443FEB7F7679963524F032578ED5A17B73AB33C1AD5859A5D3BC4AB24B6B32C9
        1DD5A37CC014711B864E4A7539C83C573CD6A69130EFA6D07CA6B9B1B83169F7
        7F25E5AC6C51ECE74236CCB1300130787DA383C8E2ABCEF78F7739BB8D5E4443
        2CEF07C92488BC2DD4238F9D7F8C03F5E3152DF6A961293AC4313CF65303F6DB
        796261BC03B7CE5C821644C61C6791C75155A5B18ACEE6016F783CB95BCDD32E
        D1B7C71C8D93E4483AED23EEE7B71D456B146721F1CC1A388798ACA8326393E4
        6C3FF1C6E3908F91CFF03E7D6AD12AD859372F60B27C8C7692092E38DDECDC82
        2AA6E9BCA69248E206398092020016D2B0E4107AC32FA0FE94E8DE28DDD03C90
        441879A922961BB1F73278C8EABFDE5FA0A4E2099EB1F0F7C62D7AB1E85A9484
        DFC6A4DA5C480033C69D41C71B907E6315DADC390C508CA8E40AF9ED5A78DD65
        8DDA278F0EB35BB160AC0FC8E83A8C0C1F7E9D6BD8BC1BE2D87C41A7BC13B2AE
        AD6AA05C05E922F41320F4639DC3B1CD7154A7CAEFD0E884AE8D675C9C8E2936
        549B597391FE7EB4840C71D7E948561D1649C01EC6A4F288ED4D89A45C8EC7A9
        A779AC3800E2A5948E6E3F16C4C7993FCFFF00AEB8CD6B51B0D075F9758F34C5
        E1BF10CA91EB699CC769A96163B7D4957B248008671C7F09E82B834F104E0FDF
        EFEB52DCEB62EACA7B5B95135BCE8D1CB193C3238C30FCABB7D8AE9A324EFAFB
        5C58E49EDA53B268C9468C8C1520F3F507A83DC74E2B1DB52804BB91B3818CE7
        D6BCDAD35EBA685B4FBC94CB7FA4440C33C83F7977A729DA8CE7F8A6B6FBAFEA
        306922D75E52097217AE3183D7FCF3DEBD0A18956F3EA65381EB569A94648937
        649EFF004AB7777114F6ECDB8138E3FF00ADEF5E4D6DE20903E0392A79C93569
        FC4F3052039DB8EC69BABADD094343A18EEF4EF0F6A4F7D7B0412681A9C8A756
        496347169727090DF46304EDE91CC0745C376AE8E5B3F0DC7232BE9D6F1CB19C
        0084291F431EDCF1C835E463599EE8C91CB89237254AB1E3611F30FC47153685
        E239ADDD7439E4F30C284E95313F3CB02F2D6E7D5E1CFC87BA903B56729454AF
        D1FE0FFE0872DD79A3DBF4A3A53FEEE39AF21014FCB15EDCA28FC37B2FE955BC
        53E139F5DD1AEA0D33519E3D40A8368B70E92C2EC39F2E4F955B0F8DB9CF0483
        5E6B69E25984CBCE10F39F51DB8AEAB48F144C972BB9B686E0761E9FC8D65529
        5AF6D013641F07BC751E9172BE1AD4A2FB2E992CED0C714C02B595EFF1C0E4F3
        B58FDD3F8F7AF6AB8D3A1C4926CC16FF005814B0C8FC38AF15F8A3E121796CDE
        30D263334F1C4A9AF58C4A37DC408302E107FCF68073EEB9F415D6FC1FF880BA
        DE9C9A2DF4AB2DF5B461ACAEF39FB55B63E563D30EA300FE06B8A69B5CCB75BF
        F9FF009FDE3A9052D49BC4B6FA8DAC4DFD9AB1B9DC0EDB876552A73D1806E7F0
        AF3ED5A1D4EF2196D2FB485920908FDE41729BD1C7CCB247E62AE1D48C8FCABD
        B757D355A3271F2BF4FF0065BFFAF5C16AF63223327DD641951EBED5AD1A89AB
        12AFF71CC786F5DBE461A6EA7673C9AA41109D9E150C2488B1559D70C3D3E7C7
        43D7AD3C6AD65A25E488D05D5AE8578CCD389ADE554B1B863932292A7114AD8D
        C3F85B91C1AB926912DF4708B6945AEAF6ADE669972FC8473C344E3BC528015C
        7D0F6AE8F46BAB5D7B4C749A2F2E5898DAEADA5C9F318E5C61E1753CB2B0E51B
        BA513767F91A2D8E61AF744D16F1F5386F964B1BB38D4ED09DAF148C405B9894
        81C670245F4F9AA1D42C3C3B657A6DE54827D1AFC10B2232B7D9A790E46D75E4
        239E54FF00037D6BABD2A46D22EC787353267B39433685A85C6D90BA28C9B390
        B03FBD893EE1FE34FA571F7D63A26997FF00607B547D2AED8FD85F6002077E4D
        A39E328F926227A7DDF4A983BB1C958CA9AC6EACEFA5B50CED7B12B24664F992
        EADBBA10DC0703839E879EF422CE16228E2E2DA54296ECCA51E4D8C4B5BB9E40
        9633CC648F6A5B8D39567FECA99E58E424BE97A96F3E61C73B09EEE9D31D5979
        EA0D40B04A16E04825428C06A968872723052E6227A818041F4E3B57458C49A3
        9D41121560CC0CBE6A701B07693F2FB9F9C632A79AD4D2AFA5B4B94BEB5BA58A
        F2D58988B8C7CC07CCA7D55BA376AC81E7A4AC249C39CACEF284F95E32302E63
        03A8C1C4ABE9CD5C86495BE47084A614A8DD823AA8070723672A7B8E3A815128
        DD1519599EE5E1ED72CB5ED385CC4047708765DDB13CC6F8CE0FA839C83E86B5
        45B9C123AE3BD78A787752BED26FE3BEB38C16236CD0A9CACD19392A7A723390
        7D4D7B3E9B7B6FA85845776B279914832A7F881EEADE8C0F06BCE9C5C5F91D31
        771A41EEB8C77A8CAB67A55878892493CFA54257071426163E505BEF0EEF2036
        AF28070316118FD5A714ADA9688385B4D69FD07916A9FCE66AA6AD2966F9BB9C
        7E74F5DDFC44935DEA2FBB26E24F2E9B34D6D77169DACA5EDA4AB35ACFBAC948
        6FBA54825B72B83B581F5A8A3BCF0D490ADE5A695A93DBCACF1951756B179332
        37CF03A98D9814C8E7D08C55C54C8EA4566DF45169D7526A5203FD977A163D61
        539F2DC1C4578BEF193871DD0FB54CE2D6A9BF3293E839352D2D4BAFF63DD7DE
        257FE261174F7C41D734A2FACB0C1749939EEF7E4FFE830AD24F63716D334530
        0255C671C820805594F70CA411ED5198DD149C64F6AB51F37F789E8093DBAFDC
        D362527FBD7539FE4A2AB5EBC52050FA740AD1BACB1C8B3DC96464390E0E474F
        41D455886091C838E7BD5F8F4992518DB9AB54EFA3BDBD48E61744D4E7D41659
        63B6B582E6DDF65E42FE74851D86438C3A831B8E41F5C8ADA8F53BE2CA8DF633
        9E00F264231F5F36B1E2F0F6A561749A95941F68B8814ACF6838FB4DB9C9783F
        DE1F7A33FDEE3BD7756BE15B3D474BB4D5AC64F36D2E904D04BD4953D5587675
        236B8ECC08AA82B3E595FC8527A5D1D1F8535BD4D2058BED369110B8502D59B3
        D38F9A61C73CD713E3CF0ECBE19D574BD5B4F58AD7479650D6D7368AF0082FD9
        B7ED954BB809237DC6E80E41EB5D3E99A53452A06278F515D2B58C3A969375A5
        5FC0B3D8DC4663963931C83DD49E841E548EE2AE742DAADCC954EFB1BBE09F11
        E8BE2ED0CCD25AC515FC5FBAD4ED00C6C909C92B9E76B1E573CF6A8F5CD0E0C7
        CB0A874CB2300791FE22BC574AD435DF87DE2D114B21B99ADE3DEADCA0D434FD
        D8CF1C79D1E30D9E8466BE86B0BDD3B5ED0E0D4ECA4125ADCA0921907DE53DD4
        FF00B40F06B826B91DD7C3F93FEB61CA1AE963CB1B47BF5B9671AADDA367F844
        5C03EC539A9753F0F6B36D13EBBA56A77D3DFA222EA7086884975671125D232A
        98134792C87F0EF5B5ADA1B7B869146C753F32FF00853345D5C33928FF002A90
        47CC38239C64F4EC6B59AE6572E32B150687A4F8874A85FF00B6F50BDD3AE424
        F6F299572190E55C61176C91B0E4766056B16DB413A89BBD235DBDB96BFB55FD
        FA991765CC0EDFBBB9882A8C06390C3AA30FA52EADA9D8786B5C3730DC449A1E
        A72E6EED519736976DCFDA1141CAC529FF005BFDD6F9BB9AA7E2AD66D3549EDA
        4D3A57FED3B425AC2E218A4604B70F0390398E5E8DD81C1A508B1C995DF49F3E
        EDF49D4AF6E5AF633E7E9F75BC6268E36F9644C0E2583A32F7EBDEAB4361A8CF
        2CE9E6C9FDB962B9705C849E16248238FBB27A8FBADEC6AD5D5FBEB361FB8B49
        ED6F20902AC92C88B25ADCC78DD95E58800E39FBCB4AADAC6A48B3A79365AD69
        AFB3CB218B2EE190A7EE8304E39F41C7A56B7D082B7D9EDD2CA09E09E586CA57
        2B6AD21C3D9DD9277C722919D8E490DE87A70453ACAC98FEEC078DD5842622C4
        797296C88988C7EEE4FBD1B7F09E3AE2AE3C314DA7CBA93B48E66263D674B544
        465283693B464EF418200FBEB8F4ABDA569DBD92127ED524885ECE576256EEDF
        A98598E3E7407208EDED9A57D0968BDA569C84025DCE7390C4293F36082071B8
        37DEF4393D0D769A01974D98B46375B4A7FD263F4238F3147A8C722A8689676F
        1796402C197746EC32EEA9C1257AF9D1F461D587AD759671AEC042E07032FD3F
        03D5811C83E95C7559AC25634CE1D43039046430E847AFE3517954D840B3758E
        461E448C0464F1B58E7E5C8EC7B7BF1DEAE6CCF61F8E0D735EC6EB53E3C580EF
        6FA9FE74F36EE0035D5C5E1C7724E31CD5A8FC30EC07C99AF6145995CE4A081D
        C74AD3B7D28C8851E21246E0ABA30C82A461863DC1C57536BE174461900678EB
        EBDABA3D3B42B65E1B683F74AE4641E31EFDA892B0AE791E9BE1FB8B4BD5F0DD
        C076952369BC3D3E33E7DAA7CD2DA64759ADF25E31DD3E95A2DE1D63107DB907
        9CFB1E98F6F4AF58F107800EB5A3B5A5B092C756B7916EB48D49108FB35D47F3
        47202400467871DC1C118AA179A649FD996D7DE20FECFF000C6A17287EDB657D
        790C514772A4ABB40CA650D1391BD0139C1C1C1ACA8548C65693D3A1524DAF33
        CDEC7424694A151D3201EB5AD1E9896CE80AE18F4E2B6AD6C3469262F0EAF3EA
        5200711695A6DCDCEEE7F86721613F53C57476BE1613BC72C7A16A529246F6D5
        AF2DECA351C7212D3CF93F02B5DCF134A2BBFF005E763171665D96996CD12851
        8271C8C0393E99E951DAFD8FC23AB34F2027C29ADCDB7528D46EFECFD45C844B
        A5419610DC9F96503A3E1BB9AEC1745D72DB3B3FB234DB690852E209EFE6538F
        94F9B33C2A3D3250FD2AE8D1EE60844777AF5F5C2F748FECD6883D97ECF0C4E0
        7D5F35C55B11192B2F97F4AE5A696ECCFBFF000DDD89375ADBC921404B13B506
        E5E09DD294047BF7AA3657F68A4C335EDAFDAFA08A27374CBFEF2DB87C1F6ABF
        71A6F865671349671DCCC3A4B76D25CBFE2D3B39FCEA6FEDE8E151143B510708
        A8A1547D00E2855E4E36DFF3FD7F239A55237D13397F167862D3C476696BE5EA
        525DC1209ECEFECED96230480E0947BA312E1870CA7A8A6FC38F0B78E7C3BA85
        EADEF976DE1EB96622D4CA867076FCB2623DCAA4E3E65538AEA4EBB20FDF2658
        AF322FF797DBDFD2A56BC96E63063E51B907D8D44A72EDBFF5D2C4BADA1CD78A
        6CE29252E10CB2A1E8ECCD91E993E95CD7F66696D3C325E5A89AD9725A324850
        4E3A852037D0D7A447A39988DFCD457BE1648D0C8ABF2B70E3FAD38D5495994A
        7D4E4A6874584182DEC2D960756578C44AA1E3618653EC41C56069BBF4CD421D
        0AEE426C66CFF605D383D00CB59B11C7988A7F77FDE5E3B56F6AB612DA1F2C10
        A49C213C7EB915CD6A97DA65DC4FA75C6FB97931B21B2532CD1CA87292A11954
        746E4138AD3974BA354EE6B6BBA3DCD9DD7F6FE9D09B89E2454D46CE3E3ED56C
        B93918E3CD880DC87D32B55AF4B5E5BDBEB5A5C88D345116825242473DBB7260
        933C0C93F2FF0071AAD786F53F125EB7F64DF3C7A66A1671ABDDC9B77DC5C46C
        7E4B88413E585247CD8CE1B3531F0DE9DA16A71DE4919B8D1A76027329DE6CEE
        A47CFDA029C208E56387E3E5386E86B2E6B1A58A1F6882FDE2D6B468A4B89F01
        6EA11F2F9B1273B18F4F3A23D31EE2B7F47D2D21B742D204D1EF984B6F342702
        D6666063218F21598F03A2B7CA783C5ABCD164D33516D56DD19ADC90752B751B
        8ED18DB708BD7747C6F03EF2FB8AD32D65A4B333A473687A90FF00498B2AC913
        4D91E7283C793367E7ED9F9BB9A7CD7D2265376DCBF696E2012C72A949E22AF7
        FE583938C84BD8410493C61D79E8476F9B5209DC305555CE7E6914E21CB90559
        493CA4BC95209DAFC679AC956BC49E1B0998A5DA234BA55CB9244B1F57B69DFA
        92001BBD5704720D4E93C22047857CA8599A18E27008B799B024B3980CFEEE53
        8DBC75C63AAD66E17FEBFAFEB4E967973FF5FD7F5F79B8248DA368E41E609014
        DB8FBD9E08001E39E0E7A1CFB55984B45188D98395E371049C67819EF81C555B
        1B7F2C076DCB2BAAE237E5A25C7466F9B73E3E5273D00FA9BC47A703D2B8E675
        52D11E4F6F2F863EE1F11E9D3CB9C791A617D4E5CE7A7956FF0038FC8D695B8B
        5DCA2CB44D73523DA57861D3602DEE2F5EDE603E8A4D6B43AAA5BC7E4DB95820
        1F7618552251F8205A7AEAF0F77C9F7393FAD7A32751F5FEBEE33759744655DC
        9AEDAC6F733687A669D6D10CC9793DDDC6A4635C8059AD922847CB9C9FDE6075
        CD6A268DE2794465BC4EB63015198749B1B68539E72AD73F6D619CF51F5A64FA
        D5B329462A5586D2ADF7483D437B11C564697E264D3A77D22462D6E0349A6484
        E33103F3407D1A22783FDD22B3749C979F9EBA7CEE2F6D2E9A1B27E1FE89708C
        BA9DF6A9ABC6E773C77BA85C1889F786268A2C7B6DC56869FE19F07E93B4E9DA
        3D85A327DD921B7891FF00EFA0371FCEB06E3C5C147DFC9F5FF3DBD2B2EEBC59
        237018D42A3217B4933BCB8D5E0504161C5654FE24813383D3D2B839B5AB9989
        009A6C115EDC37739AD161D2DC9B1D75C789D245643F32B82AC3D8D6547ABDD3
        CE6CD8E4819B77FEFA0EDFEF2FF2C52E9FA04EE41607EB5D147E178A4806F212
        58FE7824CE36B81819F63D0D0DC6252460A59DE4E727386E735720D0653F7B9A
        DEB3BED39E13B5374F1BB45346A31B6443861DB8CFA9AAB71E208FCEFB35B8DF
        71903C9B653712E3FDA080841EE481EF45E6DDAD63094974D7D02DF464857731
        0303393D2883ECF6973B14F9915C0664191F2320CB0C938C1ACAD4B5DB98E347
        9596362D9923E2EA6545257EEC4440BD3F8A4E3D2B99BBF10497933471444216
        223B8B93E74C4F418401208C7A001ABA2961673F433F6727ABD3F33ABF12F8E2
        D747D22E750836CA96C4A3C8A47968D9C60BB158F772309BB27D29DE00F17DE7
        89B4B31DE05B3D4ADF2264C063247FC3281F75323A8E6B903616FA96E5D5945F
        2CCA639166F9B08C30CA8A70A808ECA073CE2B89B67D5FC0DE2682C966F3638C
        3CDA0DD16C89ED948DF6B29EF2463820FDE5C63914EAE15455B4F5ECFF00CBE4
        7452825DEE7B1EBFA142BC1532939D924A7711EA318C0FA62B0B4AB3B4B68A4B
        58E24B77193B54040C3D4E00C915DA68FAC699E2AF0FC5A95993E5CF959227E1
        E39178646F707F4AC3D47479049B87CB2A9E1BD6B92137F0CB466C958C3D534A
        B8BD8A0B9B39561D5AC58C9A7CCE3E5CE30D0CB8E4C530E180FAF6AD5D02FE0D
        5AC58345D7305FD94A01314B8FDE43203C1383C1E85482383C4525C436488B20
        692E263882D6305A4723A803B0F7240F5A4B9D1F57B3924F114D0C6F1E17FB4F
        48B71F34B6B18E18BF1E64F167701D19415EE2A9A2EFD7B17F40B99ACEE46811
        481AD5B2346D5242645DAA096B663C179211F70E7E65EBCAB663B8D3D741BE5B
        59F336937A4C30CAE0158257396B77C7DD8A6C9DBFDD63B7A1AD67B5D1B59D35
        1FCF0F633224F69716E7615C61E29A13FC2E9C107A8E9DEB3ADF57FED3B4BAD2
        35D11FF685BA6DBE503115C5B37DDBA88F6071D7AA366AA95D3D169D575F55FD
        7E0CE2AB539959EE98D4862B588E877F2B269C7F79A45F9277C2F1FCDE413D44
        9163319FE25E3B56EE9305D612FEF9556FDD56331C790ADB3216765206188390
        3B0E2B33C3BA75C3D9C573AA4C2EEDED5C8B0691712CE15B114D286FE251C29F
        E2FBDDEBA08BCC63E6B802671F381D875DBFAD2AD2E9F7FF005E7D7CCC93E55A
        EEFF0002E4526DE3A9EA5BD4F73416909CA9E0F4A8403C28EADFA55C40C14018
        C5714B437A6DCBE47CFCDE279727E73D7EB4C3E2698F473F9D72C198961EF566
        1B79641C026BDDE546B6371BC4170DCEE26AADF4F717D12AAC8639A36124128E
        AAE3A1FA763ED535968934B8F97835D2587860001A501571C93E9FE4D43690AF
        63074C9EEB5087795292A929710F74917191F43C11EC456E5968573291D71E86
        B40E9D6BA7EA16D73029952E245B5BD8C7CA18104C722FA3A91C9F4ADCB9D4E2
        B2B579E778AC6DD797B894AA201D0FCCDEF51252E9D4875115EC7C30A8A1A5C2
        AF72C715B56B69A6DBE02FEF58F64C63F3AC383559AFE369ED2D64BAB351BCEA
        979FE87608A7A3F9F37CCCB91D628DAAA6A1AB5EAD8CD78925C6B0D6EA5FFB37
        4602D6DA4DA3253FB42E07993065FBA6DC03BBD3AD734979DFD3FAFCEC528CDF
        4B2F33A7BDD7EC74F648E69E0B5790E228A46CCAE7D2345CBB1FF754D52D4755
        B98955A744B4493E68E5D52431160A7E6F26D63DF712919CE0AA7D6B919B5C26
        CE0BFF000F491D8E8BACC465B5BBB28B65E4A8582C91DC5CCA659BCF824055C2
        B0238E9DB0E3B911CB2CA3779D236E967918BCB21C60F992396918F1DCD6D470
        FCCAEAC97DEFFE07E25FB28AF8AECEAE4D52CA18648C7DA35367777CDD31B1B5
        2CE720ADBC40CCEB8E36CAFCD51B9D4EFEE6DFCA96E8476B1E7CAB0B602D6D63
        C9CFCB145CB63D24622B96BFD4A457DD9247BD558F5EDEE6227EF707FC2BAE34
        E09F77E6574D342DE97AC5B787F519B4D91E2B6F0C6AF389623F722B1D4241B1
        5D8AF0B6D7278723EE3E1BD6B72F239A3670CA525872AEADD411D8FBD713771C
        2E65B6BA512DA4EAC92C446728DC11FE1EF5D1784B589EEAD4F872F4F9BA9E9F
        0992C6F08CBDF584585C30EF3DB0C2BFF79307D6B48CBD9CBFB92FC1FF009314
        9732BF5352DB509461F187E00F7AB3ADE8D6BAE787E4D36F9CA39225B3B9503C
        CB6BA5C98E543EDDC771548C4C93939EA090A08EDE9F9D3A3926114975248B0D
        8A6049712B1116EECA3AB3B9C70AA09F6A5552BD9EC671F2DCE7BC03E35D47C2
        1E229E3D5904582B16B962846CC7F05DC23A1571F30FC457BEC863D52049F4E6
        5FB34A82486F7860CAC33FBB53C1E3B9E2BC73C45E12B9F12E9325EE8D670ADF
        DAA0F25EF63FF48BB88112340707F708C47CB8F9B3C9F416BE0DFC418E331683
        A8CAE2CEE49FECE794E5A09C36D92D64FEE90DC6DFF1AF2EB53BBD356BF15E6B
        BAFC8D24AEAE8F55B5D3A0B77DC884B3F12330CB9FA93572FE331DB0789803D5
        38C92474F6A964528C5D4648FBEBDC8FFEB535A3599557760139523B5725F5B9
        83AAF95C7B9C75B5AAF87EF58CA71E16D4E62D8180B6176FEA7B413B77FE193F
        DEAB11E91A7EA9AA45A8C91E34BD3C3ADBCEE4833331C3E474302E3BF53CD3DD
        575D9DEC6204E8303B2DE4E08C5D3A9C1857D630C30E7BF4AD912C573844016C
        900040E0311C6C1FECAF43E9D3B575B9B8FABFC17F9BFEB532D17A9246AF2CAB
        3B1F9501102F1C83FC471C73DAAE430E70E0F4FE95042FB0ED3D3F871E9E94B3
        4EA8EAABC79870DEC3B9AE677334D5EECB5E72724725B81F4A6EFF00C7DEA276
        53F74E57F87FA5577BA9158841951D0D4A814EAEA7805968ECEFF37CBCF56AE9
        B4DD1225C12BE67E82AB0D5FC3DA75D8B03335FEAADBB6695611BDEDE3050771
        F260DEE1463AB607BD695FDC788A08A392F7EC1E11B1941F225D5DC5E6A32023
        AC3A75B37CC4679532961D71C57AF52A463BBD7B1D494A5B2D0D7B6B4F2A3327
        11C4BF79F8014772C5B80055287C45A6DE4D25B6876F73E22B956F2DC6991F99
        02B1E7125DB98EDA33FEF49F415972D8E937BB59AC6EBC4570B83F6DF123B5BD
        90217198B498046B221E4ED99148FEF1ABD7B2DC5EDA2DA6A57AF2D8C6A1134F
        B302CAC447C6231042773A0C70B23B5671E797C2ADE6FF00AFF21AA2BED3BF92
        16F8EA324AB06A3A943A65CC322C8BA5E849FDA7A92941CAC92C8BF66B771919
        DE8CA7B1AB16B6F0DA49F68B3B48E1BD0DBBFB635293FB4F51E38063DDFE8F6C
        FEA232C9ED59FF00DA56F676FF00678163B7B74E161854220F5F95702B26FBC4
        4A011BBE98E3F4E6AFD8AFB4EFF82FB97EB735565F0AB1D54D756CCEB717B2C9
        A85CA3178E5BC732ED63D4C71FCB1447FDC4148DADC52382AE438E8C09E3F3F7
        C75AF37B8F11CCCC57770292DB5B937F269A715B0ECD9D0CE2D747D5E4867952
        DBC2BE23B80E6E5BEE695ABBAED8E65ECB05DFFAB947407072A0926A5CC135B5
        DCD6D74A63BA81DA39A363921D4E08C8EA300107B8C1AB69359EABA7CDA75EC6
        2E2D6EA330CB03630C1B8EFDF9EA3A75ACFB17BAB9866D12F5B77883428124B4
        B8C61B53D163F92393B837167F764CE0B2609C9E028FB92FEE4BF07FE4C7BAB7
        5443A95AF990FCA7A0AE52E6436AEC7AB13C7B576A0F9A85491D3AFBD71FE27B
        53165BA01CB11C702B5A8BAA262C8ED755F398EF192839357156EEFA7B58F4D2
        EBACC32A4FA44B02B3CA93C7920AAAF2CA7A38E4153CF4AC1D2B48B99A06D4AE
        EE174BD177059350981F9FFD9B7887CD337A63815D241E3782C6DE5D3FC2B049
        A75ACC9B2EB5191836A173CE7E693910A9E3E54FEB50ABF32E5DFF0022B97A9D
        DC92D9C16EB79A859ACDAE06F2EFBC3F6B3A35AD8DDBAE765D5CC44B056FBD1C
        4BCF404FA5146B8D46FF00ED77F2099D062189576C100E9B208FEEA0038CE4B1
        C726B82B2D45B47BC8F54B480DC5BF9621D5F4E5247DAACF76EF97181E7447E7
        89B04EEC82706BD0AC059C820BB826FB4D95DC6B716372872B340FF718FA3020
        AB0ECC08ADE84536E3377925A7A7919D4D355A23BAF0F18E3843A7CADC61BBFF
        00915E77F167C1E9A6DDB78B34CB71FD9B70C0EBB04390619B388EF900E83A09
        BF3F5AEDAC2EA3C2A37C84F615BE65B25B1945D3A35B346E2757C6C31153E607
        CF18DB9CE7B7E35C55A9B8CAFD4232FB8CAF857E3C3AF587F656A3206D6AC906
        65C822E60E36CA08EA70467F3E86BAA9E42F2B411B6DB524ACB2FA303CC6A7DF
        D6BC074CF04F882DBC416E7C213B2C2D2F9DA34441FB45BD937469D8E3CB89C9
        2222E4965E48E95ED77B7D35BD8416BB234B99570B0467722B0E5C8381903A83
        DEB9E549735D75E9FA9857B22C5CDE0C8B3B621360C332800469E831FC46A25B
        8588858C6D8BB0F43EBF8D63C5298B300625C92CD21EB213FC47E98AB901263C
        1CE7D7FC2B5F6691C326CD75999BEF3600E87EBFE734CB6BE594B4CDC9E5231E
        A17AB7E39ACE95D8116AA7E698811B1EA1472FF8E318AD08E0568D76E0327098
        F4FF003CD44A092F533244B86566563F260B2134E8924F2D79EBCFE7CFF5A825
        09244880806560AC0F5E339FE548D73286C0190381F4A8E5B858F00BCF89BE33
        D357CCF08DB699E1FB0B3963B9FEC0B0B68C0BB8E36DED15C5C11BDD9C2EDDC8
        10904D75424D16786D3C51A1A0FECDF10AB5D45772132DC89C9FF49B59A67DD2
        EF8A404004E31C0E86BC8ED750DD2E78CEEE0D747F0E75CB2D23579BC33AACA2
        1F0BF8A6656B3B965DC2C359DA04720E8424C311B1FA72A371AA85A93525B753
        DFBF369D4EEA5BE28031724F27248E7D8E2B1F52D78AB7071EC2AFDDDBCF04D3
        595DC7E4DD5B398A78B392AC3A1CF195604329C72A41EF9AE575BB63C915E84E
        4ED75B18450975AEBB93F355097506724135913C8C8C45209AB92523645F925E
        F48975839CD5333E463B542EC73D7AD48CE9F4BD64A483737CB5D5DCDA4DAADA
        DADEE97702D35ED2A5177A3DF7FCF3994728FD37452AE52453C1079F7F35824D
        BB7710147562401FAF03EB5E85A0B269BA7C1A96BD74748D3EE3FE3C5367997D
        764638B6B7C1639ED23703AE31C8DBDA4795A96CC9B3BE85FB28BFB7ADE0D434
        1D36506E9DE1BBD16351E6585FC447DA2D5FA2247921E291F0BB587B0A835BB2
        D0B46F33ED822D7757887CF6CA5BFB3ADA607A4927FCBC32719400007AE0D25C
        F8AF50B18E4BF8F4B8EC3C1F76CE9AFD8DB8DDAADCDB3A6CFB5DC5E83B9E6808
        DC2241B76968F2C00228EB5686D1C5AE44B07929359DC42008A7B691730DC45C
        952922F3C670720F20D4D37297BB26D5969DDA29DB7479A7882FF55D47517BCD
        4AE5AE26E44476ED445E9B228D00445F403F1E7355ECE568D801D3EB5B7AADAC
        6DCEDDB8EB8ACC367B30F9AAE4B3D0499B16F3310AC01CAF439E47D3F435B3E1
        3D61746BF3A75D3795A36A330FB2CE4FEEEC75093A673F761BB3C49D95C0239C
        D73F607242E7EF71F9D6B9B049A09209A357865531CA87A32B7183FCF3DBDABA
        141BDB46B625BE9D0F4237535BB379AE617809FB4231DA54AE72093C0E475FF1
        ADFD034CD535E6B56B8858D930592DED5B015E32722F2E7703FBBDC0F9311E65
        23270809AC0F00786758D520B34D6556F26817FE252B7049FB55A290B05DEA0A
        B8223800288B906E3683D0135EB17735BE936925B412E6563E65FDEB9F999D94
        02CC4700955006301400A0018030C5635CED18AF7BAFF5DBFE1885050D5EC57D
        4351D3748B79EDED49F91BFD326E4CD34CDD016EACCD9C67A0E830062B9C9279
        77BCB391F6997A85E88A3A22FA63BFBE6A0BA92599D75065288B9FB340461B67
        773E8C7F87D0557590CCC194821B90477A8A74945777D59C5564E4EE68A0F386
        ECFCC0FC8C3AE7FF00AF5A168ECF180576BF475FEEFA9355ACE350A3839C76AB
        57114851248B2649898881D5900CBB1F7503F5AA7D8E7DC215333C9727A7FAB8
        3FDD1F79BF1AB914AC0118C328CE29F143122201CC614795ECBD87D69E2C9A4C
        38CA91C8F71D7FA56329A6449155E693ED8EEA3FD4C7863D7E773E9EC2ABAC0F
        7399C3ED0E4E1738E01C0FD054CC9B2C25BA271E6179147AE0E07E55B3A4D829
        D3A025792B93F893533AAA0AEBD0EBC2D1E66EFD0F86ECEF8ACA7E6EADFD6B6E
        48EDF52B192D2E394954AEEEEA7F8597B82A707DEB8E498ACADCF735B9A75E81
        80DCA9233EF59425D19E9CA27B17863C4773E2CF0C48F7E43F8C7C2E890EB809
        2D25E586310DFA9E0B98F1B653CF4C9232A2ABDF22C884773C8EFC1E9CE05701
        61AE6A9E1ED66C7C59A42F9B7FA56E1716CDFEAEE6CDF89A07E0FDE427191C1C
        11C8AF4CD560D2CC563AC68AC65F0DEB90FDAF49909CB2293FBDB69393F3C2F9
        52327DC939AEAC354B7B8FE5FE44CD755F3381D52DCAB93E9597E61CE2BB0D4A
        CB706257E95CA5E5B98A4E849242A81924963800280493E98A7563608BB88ADE
        B5774CD2352D5E66834E84CCD18DF3CA5B641028FE39E66C246BEE4FD2AE4BA2
        E99A046973E329E5B396452F69E1DB52A753B804705F395B58CF767F98F38AC9
        D535ED5FC416D169F2451E93E1D84EEB6D0ECF72C39ECD70E7E6B893BE5F8F4A
        E5F697D11A28F7D0D36D7344D12536FA104D7F5A4C83AD5C2674EB76EFF6585B
        06E194F4771B7D01A5D2E69E5D49B53D4EE64D4354940F36F2721DC8EC067855
        1D9578159090471A048D7681DAAE5AB6D23D6B4A50B3BBD58A4CF50D3AEE2B98
        023E1938DCAD8E83D33DFB63A1EF58DA7DA1B6B88FC1972C3ECD7124B27836E6
        5214437072D3E96EC7858EE07CD0124618639C8AABA25D9054135BFAB69506B7
        A54B67312BB943472C6712472210C9221ECC8DF3023904577CE1CF14D6925AA3
        18BB3F267237BA5BC8581CAB8E1918156565E082A704104608F5AC19ECE78998
        4833CF06BBF8EF27D6ED2E6E6FC44BE27D1F6C5E228901885CC47E5B7D523439
        18933B260BC2BE4F4C566DDE9D0CEE15707D3A0FCFE9534DA9ABECFAAF32B96C
        CE523474707EE91DFA0E9EBDBEB835E9FE06F0C5C5D4767757767E6CB7833A66
        9B30244AAB80F7975D0C76B1641C1C3484ED18CE199E12F054722DBDCDE5B2DE
        89D98E8BA4B109F6C963237CB31C36CB48320C8D83B890BC9215FD5A3B09F444
        B9B88AF4DC6B57FB64BD9A45C44CCAA422229C98A24195440DC67272C493855A
        DF662F5612B2D59A1043168D6B241149F69D4EE087BDBB60159DF18070010AA8
        38441C2AE2B95B9B94BF9D9B715D3EDD98166EB7330E481D3E446EBEA69B77AB
        3EA6EF650178D0646A9301F3C591CDBA9FF9E8DFA2E2B3F52BF8D10410612145
        0B1C63A2A818007E1514A9727F89FF005FF0DDBEE396A4DC9EA49797E6472323
        2DD71EF458DB797F3E3113B00CC3AAB1E87E87BD64DAB1926C91DEBABD3D57CA
        008DD9E0A7A83EB5B35CA60CD0B5B50085621401827B0FF6AACD93A4ED25E01B
        60C3436A0FF710FCEFFF00023C7E1598F3C912AD8A92CD7276432F7118FF0058
        4FBA0E9F5AB135C08E258E3188D0058C7A28E9F9F5AC6507F7FE5FD7EA45AC4F
        35D2C7215033131CB29FE03D8FE3579AE10D9B6D38671B13EADC562C3B9DBE61
        C30C1FA7A7E352194ADD4366FF007154CCA4F5E085553EE09A974EFF002250ED
        70BADBC76F1B0DCCEB16D3DD72A33F90AEB2089E38634551B55401F9570DBDEF
        7C436700725D32EDE9C71FD6BB9DF276CE2B9B12AD65F33D2C1C6D16FB9F9D40
        9F31BEA6B42CCB645578EDC991891DC815A7696FB3048E9531474C8D7B195940
        3C020704F23A63BF1DEBAFF86BAB5BD95FCFE08D527F2340F124BE7683747E71
        61AC2F09907A477048461EB81C024D731A369FA8EA5A845A66976D25E6A338CC
        36B08DCE40EAC7A055033966C28EE40AEE6F7C27E10F08C51FFC270C35CD7D7C
        B9A3F06584816185B05D1AFEE9470172AC513A9E8B229AD272B6DF1741457DDD
        4DED3FC23ABEA02E85C469A5D9E9CCF1EA3AADF32C7696CE84ABF2C57CC2A579
        DA40E84B2E4679CD4BC53A569E8F6BE00824B8BE53B6E3C697D10321F51A740C
        0F96ADFF003D19738E7E6FBD56B57F155FFC4DD124D4754668755F0ACA5B5CF0
        D5BCB21B26B172ED0EA90C0E4F98D086D9267710067F779C52C56700840840DA
        4607738ED5D14D3AFAC9D92E8BF50F874479E1D3592EA4B9BB924BABA9D8B4F7
        1337992BB1E49676E4F353A8C74ADDD534D6049038AC768D94E0D3953E5D09BD
        C5404F1566DE13BBA525BC249E9D6B66CAC4B63238AA8A06CB7A4C2C194E2BB1
        B27091FCDC823DEB16C6CCA0527A7415AAF2456F0F99292157BF381F5AEEA51B
        1949993E206BEB0BFB6F11E90B19D5B4FDCAD0CD8F2AE6DE4189ED260DF79254
        38E9C1C30E95AFA0E8DA3EA1F60D72CE17BDD1B56DB2F87B43E45CDCC8789609
        DDC318EDACDF89A720AB2631B8B61F2F4FD224F137D9EFB51B67BAD0EEDDA2D1
        3448A4F2E6D62E23E59771C88ACE30099E53D4703AE1BDB745D157C3F6F2EA3A
        8CAB77AE5E22248F10D90C51479F2AD2D22E3CBB7843600FBCDCB364935E6626
        BAE77C9D747E7FD77378AB47DE1348D286876A66BA912EB5CBA51F699D17CB8D
        1149296F6E84931DB43B888D33EAC496624E1F883549BCF16368C5F51B90CE65
        272B04438699CF63D420EE47B549E22F104968AB2843757B747CBB3B3C80B249
        E9EC8BD589E00E3AD73C1D6C6295E5904D7F74DE6DEDD73F3B81C228EC89D147
        A7BD551A56D5EFFD7E08E39C9C9F915B517874A6135A6F31722F54FDE947FCF7
        27BC83F88FA566C974656043EF5600A11D083D08F6351DEDFBCAC707241E33FC
        AABE990F917090367ECF2B7FA3B9E88EC7943ECDDABAD444D1D1697093B7239A
        E8ADF7281B4E0023EA339E7F0EF59D636C6318DA1707183D473D0D3F50B86289
        6719DB35DE5030EAA80FEF1FF01C0FAD3E4BE87249DCB76CF15DF9976490AC4C
        566DFDD45EB27D5DFF004A1EEF7EE5906C9930241D783D180F7A89E748D36C4B
        B2341845F451C0FD055079249255957891391E841E083EB9A1C2E4735CE92C9B
        A72013C034C92459BCF901F955B6C2476318209FFBE89AA51DE2C7666E3FE79A
        E40F5238C7E75566B86B7B01193F70367DD8FCC7F524566A90731A7E0D8DEE7C
        437772D86102EC07FDA1D7F9D76A65C1ED5C97C308649B4EBABE6CABCF291CFF
        00BC735D7342CC7263073DEBCCC4C93A8FC8F6A8C79608F80BCB58C3B3950AB9
        2C5B818EA7AE6BD0BC1FF0B352D534C7F107882ED7C2DE128C2336AD79FBB9A6
        52A587D9E19002DD80673839F943F2B5A7B7E1BFC3764799E1F1BF8E2325D214
        38D234F9700E5BEF091D18F19CB71C088F5E1BC59E34D7FC55A9B6A7AEDE3DCC
        EA4FD9A15388200460AC3172A9C0C1232C7F88934AF7D8BB1DBEA3F1374ED1B4
        F7D0BE1B59B687A648A05F6B930DFAA5EB2AE32646DC63072C41EA3F8447D2B8
        6FB402ECC5896725A5663B8B31392C58F249EE4F3EB58CF7C36FBFF11FE5501B
        F627AD546C8977674DA7EB7A8787F5AB6F14692825BEB0C8BAB46E52EACDFE59
        EDA452086575271C70704738AF47961D3603657DA23B4DE16D7A16BBF0FBB633
        0AA9227B290924092DDC142093C00324835E3F63A832B7BE783DC5761F0F759B
        1B4BEB8F09EAD71F65F0E7892749ACAF98FF00C8375750562B800FCBE5CD9114
        B9C6410090335A427C92E65B750B5D58ECEEED565072324FF857377DA6B23938
        AE950DD5B4D71A76A3135B6A762FE4DE5BB74560010C0F74704329EE083CF5A8
        EE6157ED8CD7A928A92BA31D56E61E9D65B88C8AE92C6C95464E0553821113E7
        B645683EA16F6B01791B6E013DB1C7A9FF0023D69421606CD166B6B7B7F32621
        5073DB3F51EE31F4C75ACFD3EC3FE12136FAA6A96F2CFE1F9EE3ECDA3E9110D9
        3EB33FF714F54B44C6E9A53C1507B7154B4BB1FF00848A24D6B578E49BC373C9
        E4E8BA2C042DDEBB709D21881E45BA9FF5B274C039217247AD68BA7EB3E1C9EE
        3C45AFD945A85FDC4423926B09094B0B44C14B2B4B67083C98C8CB3290CE7923
        85038B118973F763E9EBE48D2314B566DF87740FEC284EB1ADC915CF88268561
        925B7411C16F0020AD95921E63B78F03AF2E46E6E70064F8835F8EDE19F50BD7
        C43180022F2C493848E21DD989E3F3A9353F10DBDCDB9D4A5B844B148FCD5949
        FDDAC78FBC4F3FE39E3AD713F6D9350B95D52ED7C9823C9D26D5BEF2291CDC48
        3FE7A38E147F08A587C3F2EAF7FEB446156AF33F2275799649352BE20EA332EC
        48C1C8B787A8853D0F24BB77358DA8EA0CCCDF367346A3A9EE27079AC47959DF
        AF7AED48845A818C925753A5D8C7347B251F23E067B8F71EE3A8AC2D2ED4B303
        8AEC6C202883238C753D053644DD8209182FD9AE187DAA0FF59231C078874907
        AF1F7BD2A2B394CD2497F2021661B2DD7D2053FA16604FD31506B81EE1A1B586
        40975292E24C676C09CC9BBFD9933B2A61751C96EAEB85006C68FBA328FB87E8
        31F856C96871CC65E5CB74CE7D4FA9EF4B62ACED9ACC9A7DF263DEB6B4C4C28C
        75C8C7B9E94A5A109683EF0794D103FEAE47CCCBE8107CAC7DB3D6B3FC4D7463
        B56FEFBE08F727BD6B6435D5C3901A2897C84FC39909FC4E2B92D77F7D3DA69E
        84B2CB28033D4063F77F03537DBC8DA10BBB1EBFE04B4FB1F85EC90FDE75DEDF
        F02ADEDDE9D2ABD8DB2DB585BDBE30228D57F1039FD69FB1FB1E2BE724EEDBEE
        CF762ACAC7E75FDB42E5470B93FCE9A6F09EF59ACFF3BFD4D2ABF15A730AC5D3
        3934A1B3CE6AA2B66AC251702D43215618E6B5D043796AF6F38DD1C830DE8383
        83F86735911203F5AD2B41CF3F4AD22C867A8F8775EBAF12F879DAF1CCDE35F0
        8DB7FA7E412FA9688842A5CE47DF9AD7386246597AE58802FC776B3C51CB1952
        92A87539E0823AA9E3F9579C58EA3AA691A9E9FE20D15FCBD6F4893CEB6C6712
        46062481F6F252542CA47BD77BAA5F68CB6369E2BD117CBF0D6BC1DE2838C586
        A080B5CD8B91808576978C10372F4185C9EBC355E47CAF67B113575724BBBE8A
        D6232C842A8EEC703239E7D7D69BE1ED263D66DA0F10788E1B87F0D4B37D9F46
        D1A21FE97AE5D3671140A0822DC632EE78DB9C900122AF87F41B7D56D61F1578
        A2198F85CCDE5689A2458FB5EB7764FC9142B907C8047CCD9E4027214135EE3E
        17D02E2D6E5BC4BE22688EBF341E45BDAC3B7ECDA5598008B2B3000191802593
        0379E8000008C4622537CB1D812515764DE1BF0F49A7CEDAFF00883C997C432C
        3F6745841169A7DA0FBB6364870028006F70B973CF030049A96A6F7328766215
        0968D7A0071D4FA6793E98EB54F54D65AE652471182446A39DC4F4241EE7A570
        9AEEAE357B99F48B594AD943C6A772BD5CF5FB2467FF00461F4C57450C35B57B
        FE472D4A9CCCAB25F5B5DDEA673FF0891989B743C4535E2B1218E7FE586E1F20
        FEFD4DA9EACCECC0B739248239CF7AA1AC5DDBCB6EF68CABF67DAB188D460280
        3031E9B71C7D335CCC5A8CBB9ED666DD343F7656FF009689DA4FA8E87DEBAF94
        2F73567BB2EE7DEA7B184BC82B2A025DFEB5D46856997048A1E83B9D26896000
        5245747E5411425A53B2341BDDFD157963F80155B4E8E38E2070738C003D6A3D
        5DDAE65874743812A19EFE4C70B046785FACAC71F8562B5664CA965BA7F37539
        4157BDE63420656052446BF8AFCDF8D666AB3FD9656BA8CE54802E500E081C07
        1EEBDEB66F2740A48180380076F6FC3A5729AB5E027683C13CA9E9FE7D6BAE2C
        E4BDD8FB6943CCAE4E55B90FD8E6BA5B57F260321FBA8A5C9ED81FFD7AE47444
        F2AE1627E6094FEEBFD96EA50FB7715D5CC07916F08E7ED0FB36FA2A9CB13F85
        0D1325AF91223B45660C87E7914CAFE9FBCF9BF91AE7BC391FF687C40B0B67E7
        CA903B2FAA8C9CFE1915B5AACC120739C120F3517C1CB4FB5F8AAFB5065F9608
        CEC6F773B7FA57362256849F91D7858DE67B411CFB526169D8A315F387B27E66
        BF0EDF534290691C7EF1BEA69C839AD4924415760504D411AE48ABD6F1735A24
        2659821F941F6ABD0281D6A08805207AD58C003CC6381D72781FE1FE735AA443
        2F42F8C01DBA7F9FE75DDFC3CD22DEC3C3DACEADE27804FE03D71E18ECF4278D
        9EE755D5616DD09B0552AE806DDACE0E18039C005867F843C21A7AE909E2EF19
        44E9E19DEB1693A3C43FD335AB927290C2BC37924FDE3FC401C9080D7ABE85A7
        6A53EA31F893C449126AE21F234DD32100DA6916A063ECF6CA38321503CC93BF
        40028005460EA3B2D975137CA8D3F0FE8DA81D48789BC48912EBC6236F636309
        06D74BB323E5B4B5C6017DBFEB64C0C9E000A00AB1A9EB0665089F2C439CE719
        2BFE78AABA86AEAC0A2E360E4FA13EA6B90F11F88A5B5115B59859F54BA245A4
        47A281CB4D29EC89D71DC802BD4A5878C15D9C53A8E6EC49AFEBD7125C1D1F4E
        93C9BE914C97575C32DB40DDCFACAC38403A75ACA92E6DAD2D56CED805B78815
        45CE49CF5662792CC7926A944F1D85BB42B234F2BB196E6EE4FF0059348FD5DB
        D01E80761C76ACDBABDDC4F35B25DC94BB6C49777B92706B36E91E628F136DB9
        8B2D0376C9E0AB1F461C523C9B8D4D6CBB9BDBD286AE56C68E84C2E512450467
        E592323051D782BF876AEFF46B5D8A0FE75C6595A9B497FB400CDBB616FA3519
        3B47DD9D7DD09E7DBE95E87A7A22A21423CB2A1D255E01046723D88EF4729954
        9DBD0D46BA82DA169A67F2E0894BCAC7B2A8C9AA5A633FD9E5BEB8045DEA0C26
        915BF82303F730E3FD94E4FB93546FE517BA845A5F5B7880B9D4063208DD9862
        27D59867F0AB1757980C58F3D49F5E2850FEBFAFEB63294B4B7529EA977B41E7
        81C0FA57277370659B1EF57757BFDD9C1EBDAB36C2269AE071DEAC7189D2E8D6
        8B24656404A381C8EC47423DC56E59B3C9A83C329267B28C464AF46F3724483E
        838351E916E9146AEFF7541CFA74CF3F952C315C9805DA1DB72C4CE0F40DBB27
        631FEE950295EEBFADCCD2EE53F15DD2DB5A311D08C7D38C0AEABE08D8F97A25
        EDDB2E0CF3ED0DEA235C1FD735E75E2CD43CD862E360621A58DFAA800B328FAE
        38AF67F86BA6B69FE0AD3217189248BCE907FB521DC7F9D79B984B969DBBB3D1
        C144E9874A5A46E9482BC53D03F341C6646FA9A7C6849A0AFEF1BEA6ACC31574
        244324822C1E6B4ADC2E6AAC711E2ACC4BF3609C01D4E703F33C0FC78AD12249
        A4650F9E9819CFD3D7F9F35DEF83BC1BA4C1A2A78E7C74248BC2A8C1749D2D3F
        D7EB374725218E3E0F944A9CE787EA48406A2F05782B4A4D0C78F7C741A3F085
        ABE34CD2B18B8D62E33FBB862462331161D3F88024E10135BD3EA3AC788B5A5F
        12788B114CAA23D1F468F0D6FA5DB9C7C912100191954077DA09F4000036A142
        556565B756293E5573A5D31B55D675A4F147895634D5517C8D274C87E6B7D2ED
        1871142A700CA703CC93193C0000000DEBBD503295538CF7F5F6C9AE7AD2E3CB
        8BCD97299E029AA1AC6B905A5B497133ED8A31927B92780ABEAC7A0AF7552852
        8D96C8E09C9CD96B5DF10C7A75AF98C8D2CAEDB2D6D93EFCB21E88BFCC9EC2B9
        B83CEB5F36E6EDC4DA9DD81F6A907DD5C72218BFD84FD4E4D51B79AE279FFB56
        FD76DE4836DB419C8B687A71FF004D1BF88D326B966C9CF5EDD7F5EF58F35DDD
        94A36269EE8B3139AA524849A619334D04934EE3B12A0C9C56B69B6C5D978ACF
        B688B374AEAB45B4E41229A264CDDD22CF0A32B9E31B7B107A8C77CF4AB11DD4
        7A22B4175BA4B060CD6207DEDE0E4DB67D73FEAFD7356ECA3554F4E3F1FC2B3F
        528975BBF1A6B3B25AE9FB6EAED9465BED27E6B6507D63C6F3EC6B4B6873F5F2
        DCD1D360B882CBCEBA20DF5D319EE987F7DBF807B46302A86AB7BB50F3F854B0
        EA72BC72C378C3FB42D4ED9F1D6407EECC3DA41CE3B1E2B9DD6AF4EE619FC286
        42576665DCE5E523D6B77C3F6DBA4526B9AB70659BD726BBCF0FDA1540719E3F
        4C67FA541A4F446CDC2B7D845BAFDFBB75814FA29F99CFE0A0D4D7D22451363E
        E01851FEC8E9FA0A858F99AA448A4ECB584971D8C93F4FC956A86B978120700E
        00E9F43D295BFAFEBCAC65D6C71FAE48F7FAC47668773CACB1E3DE665503F2AF
        A76CA116F69040060451AA63FDD0057CD5F0F2D4EADF10B4F81F2C229DAE18B7
        464814FF005AFA6F15E36653BC92EC7AF858D9087AD3695A92BCD3A8FCDB09FB
        C6FA9AB70A64629A22CBBE3AE4E2A541B50EE38C753FFD7FEBDBBD75A464C9A3
        5420E48013A9FF003FAFB57A0F817C0BA27F63BF8EBC7ECF69E09B5602C2D071
        3EAD7009D9142830C6262BD88DFEA143111F803C05A33E8EDE3EF1D39B4F02D8
        3E2DAD369F3F57B819D90C284A9642C31C1F9883C850C44FE27F12F88BC47ADC
        3E22D674E3FD936916CD0B40B560534D83801BCAC2AB48CAA0B1033C6D185000
        AA7073765B757D836D4D2D4F57D6BC55ACC7E23F10C2B692DB45E568BA247C41
        616C7EE80BDE661F79881D8001400346CA1DDBAEA752B18394527963EA4F7ACE
        D1E5B5D561FB643289AD5188E010DBC7F0B03C83CF4AB77F78380A3A7181DB1F
        E79AFA2A108D38251DBF3386AC9B7626D435548D1DDE45448D4B33370A147539
        F41DEB915B99358BA8F52B918B18093A6C0DFC4DD3CF71DF8E147A555BCBB1AD
        DC98B76746B67C4AC3817128E7629FEE29EA6AD49312463000E0281803D001E9
        584A7CEFC9028A4BCCB12DCB3139355CC99A88B734B9A9B8D21C589A9230738C
        544B9357ECE12CDD29A06686996C59978AED74AB4DAA0902B1F47B1FBBC57576
        F16C41C73DBFCFBF4AE9844E69C84D43538F4BD365BC75DED1E16085792F2B9D
        B1263FDA7E29BA2D8BE9960B1C843DECCC6E2F643C969E5F9A41F45E83E9544B
        B6A3AFED5C1B0D1983311FF2D2F9C6463DA143F99AD2B8944719E7A8C1CF5C83
        D7EBEB4EC66DBB58C1F113488CB796601BC8159550FF00CB48D8E5A36F7EA57F
        FAF5CBDCEA0976AB344DBA37CED6F4F553EEA78AD9D6AF7248079CF5FEBF8572
        0F235ADE7983E5B39D879C0748E53C093FDD7EF594E563682D0E9344B6DF2A9C
        57A2E9708484163B57A31FF6719627F015C8F86ED3EE9239EE3D3DBFC3DABAAB
        D731698E89C3CFB6DE323A8794EDC8FA2E4D3B5CCE7B8584CED03DD91C5CBB4C
        3FDDFBA9FA006B97F14EA06389F3E84E7E82BAABA9A38A0291F11AAED403FBA0
        607E82BCDBC5B77BA42991C90983F9D1264D38DE573B5FD9F34E69BC4DA85FB8
        C8B4B5088DFEDCEF923F24AF7DC715E57FB3CE9BE4F856F75065C35F5DB609EE
        912841FAE6BD5335F398C9F3557E5A1ED51568A10F4A4A53CD18AE5343F39D4F
        CED96001241EDD4FAF6AF41F879F0FF46BCD327F1CF8EA56D3FC0760C0443EE4
        BAA4EA4E20B7008768F72E091CB1C80461997CCEEBFE3DEE3FDD7FE46BDDFE38
        7FC929F84BF483FF004963AEA49BD3CCCD191ACEBFABF8D358B7D7759B7163A6
        59031786FC3E9810D9DB800072AA0032B2A8E71D300000002CDADB35CC859FE5
        814F2FEFDB03D7D6A14FF5727D5BF9D69D8FFC78A7D4D7D26128C62B952D17E2
        72D593D4C0D766FEC8D47FB5A15096373B62D5214E029E91DC0F75270C7D3159
        5AC6A126A374DA55ACA51401FDA1729C948C8E110FF7DC77EC2B5BC5BFF206BF
        FF00AE327F215C8F843FE41127FD763FFA0D615E4D54E45B3D7FAF5221B5FA9B
        0A238A358A1511C518DA88BC0007149B89EF48DD6917A1A9287034F06A31D29C
        B480B1082C6BA2D22D3791915CFDB7DF15D7687F7856B04673674DA75B0451C5
        4FABEA5FD9DA7493C69BEE8E22B384FF00CB4B890ED897DC67AD496BF70565EB
        FF00F21BF0D7FD7ECBFF00A20D754B489CDBB3474AD3D34BD2A2B467324EACCD
        34A792F3B9DD2B7FDF4703DAA8EAD7A554F35AF3FF00ABFC1BFA572FAC74343D
        89DD9CEEA3765DFD79AAB6D0A4CDB2450C8C30EA4646D3D41FAFF3A6DDFDF356
        74AFF5C3EB5833A12D0EB7C1C5E197FB3A762668C07B79D8F3341D067FDB8C1E
        47A62BA5B9CCBA85B423A5AC6F7047ABBFEEE3FD326B9CB2FF0090968BFF005F
        137FE8A35D027FC862F3FDC83F9355A460F5D4ADAD4A1226C1FE1FCB8AF2ED52
        F5A7B90241B64843332FB9E07E95E95E22FBB27D0D7956A1FF002137FF00AE07
        FF00423594DEC6B41687D59F0B34CFECEF00E8D6E461DA012C83FDA97E73FCEB
        AA359FE1FF00F90069BFF5E90FFE8B5AD0FF00EBD7CBCE57937E6CF612B21075
        A2907DEA2A40FFD9}
      Stretch = True
      Transparent = True
    end
  end
  object QuSimpan: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from dbPerusahaan')
  end
  object DataSource1: TDataSource
    DataSet = QuSimpan
    Left = 56
    Top = 64
  end
  object CariGambar: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp|JPEG Image File (*.jpg)|*.jpg'
    Left = 56
    Top = 136
  end
  object AdGambar: TADODataSet
    Connection = DM.MyStock
    CursorLocation = clUseServer
    CommandText = 'select TTD from dbPerusahaan'
    Parameters = <>
    Left = 472
    Top = 8
    object AdGambarTTD: TBlobField
      FieldName = 'TTD'
    end
  end
  object DsGambar: TDataSource
    DataSet = AdGambar
    Left = 504
    Top = 8
  end
end
