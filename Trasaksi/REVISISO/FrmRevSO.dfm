object FrRevSO: TFrRevSO
  Left = 612
  Top = 13
  Width = 970
  Height = 618
  Caption = 'Transaksi SO - Sales Order'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  Icon.Data = {
    0000010002002020100000000000E80200002600000010101000000000002801
    00000E0300002800000020000000400000000100040000000000800200000000
    0000000000000000000000000000000000000000800000800000008080008000
    0000800080008080000080808000C0C0C0000000FF0000FF000000FFFF00FF00
    0000FF00FF00FFFF0000FFFFFF00000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000F0F0000000000000000077
    777700088800088800077777700000700000888800F080088880000070000070
    88888000F8F0FF80008888807000007080000FF8FFF08FFFFF00008070000070
    80FFF8FFF8F0FF8FFFFFF0807000007080F8FFF8F7F0F7FFFFFFF08070000070
    90FFFF7FF8F0FF8F7FFFF090800000708097FFF8FFF08FFFFFF7F08080000070
    80FFF8FF77F0F77FFFFFF0808000007080F8F777FFF08FF777FFF0F080000070
    80F778FFF8F0FFFFFF77F0F08000007080F8FFF877F0877FFFFFF0F080000070
    80FFF777F8F0FFF777FFF0F080000070F0F77FF8FFF08FFFFF77F0F080000070
    F0FFF8FF77F0F77FFFFFF0F080000070F0F8F777FFF08FF777FFF0F080000070
    F0F778FFF8000FFFFF77F0F080000000F0F8FFF80000000FFFFFF0F000000000
    00FFF0000000000000FFF0000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFF83FFF8000000380000003800000038000000380000003800000038000
    0003800000038000000380000003800000038000000380000003800000038000
    000380000003800000038000000380038003E00FE00FF87FFC3FFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFF280000001000000020000000010004000000
    0000C00000000000000000000000000000000000000000000000000080000080
    00000080800080000000800080008080000080808000C0C0C0000000FF0000FF
    000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000000000000000
    000000000000000000F0F00000000008880008880000088800F0F00888000800
    FFF0FFF00800080FF7F0F7FF080008097FF0FF7F0800080FF7F0F7FF0800080F
    77F0F77F0800080F7FF0FF7F0800080FFFF0FFFF0800000FF00000FF00000000
    00000000000000000000000000000000000000000000FFFF0000FC7F0000E00F
    0000000100000001000000010000000100000001000000010000000100000001
    00000001000001010000C7C70000FFFF0000FFFF0000}
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label10: TLabel
    Left = 289
    Top = 56
    Width = 79
    Height = 15
    Caption = 'Kode Supplier'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 962
    Height = 241
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Shape1: TShape
      Left = 159
      Top = 115
      Width = 386
      Height = 59
      Brush.Color = 14220537
      Pen.Color = clSilver
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object LAlamatKirim: TLabel
      Left = 165
      Top = 113
      Width = 377
      Height = 58
      AutoSize = False
      Caption = 'LAlamatSupp'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object Label26: TLabel
      Left = 800
      Top = 177
      Width = 65
      Height = 16
      Caption = 'Keterangan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object LNamaSls: TLabel
      Left = 704
      Top = 117
      Width = 177
      Height = 16
      AutoSize = False
      Caption = '[ . . . ]'
      Transparent = True
    end
    object Label1: TLabel
      Left = 554
      Top = 119
      Width = 31
      Height = 16
      Caption = 'Sales'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Shape4: TShape
      Left = 16
      Top = 37
      Width = 770
      Height = 2
      Brush.Color = clBlack
    end
    object Label4: TLabel
      Left = 16
      Top = 14
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
      Left = 165
      Top = 14
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
      Left = 554
      Top = 14
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
    object Label30: TLabel
      Left = 686
      Top = 46
      Width = 25
      Height = 16
      Caption = 'Kurs'
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = 7492630
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label29: TLabel
      Left = 554
      Top = 46
      Width = 31
      Height = 16
      Caption = 'Valas'
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = 7492630
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 554
      Top = 71
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
    end
    object Label6: TLabel
      Left = 722
      Top = 95
      Width = 23
      Height = 16
      Caption = 'Hari'
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
    object Label32: TLabel
      Left = 554
      Top = 95
      Width = 71
      Height = 16
      Caption = 'Pembayaran'
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
    object Label27: TLabel
      Left = 16
      Top = 46
      Width = 59
      Height = 16
      Caption = 'Pelanggan'
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
    object Shape6: TShape
      Left = 159
      Top = 43
      Width = 386
      Height = 68
      Brush.Color = 14220537
      Pen.Color = clSilver
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object LnamaSupp: TLabel
      Left = 165
      Top = 43
      Width = 67
      Height = 16
      Caption = 'LnamaSupp'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object LAlamatSupp: TLabel
      Left = 165
      Top = 55
      Width = 377
      Height = 58
      AutoSize = False
      Caption = 'LAlamatSupp'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object Label17: TLabel
      Left = 18
      Top = 175
      Width = 44
      Height = 16
      Caption = 'Catatan'
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
    object Label19: TLabel
      Left = 16
      Top = 114
      Width = 73
      Height = 16
      Caption = 'Alamat Kirim'
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
    object Label20: TLabel
      Left = 552
      Top = 143
      Width = 39
      Height = 16
      Caption = 'No. PO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 552
      Top = 248
      Width = 73
      Height = 16
      Caption = 'Biaya Angkut'
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
      Left = 850
      Top = 109
      Width = 43
      Height = 16
      Caption = 'Gudang'
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
    object Label13: TLabel
      Left = 848
      Top = 70
      Width = 52
      Height = 16
      Caption = 'Ekspedisi'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object LNamaExp: TLabel
      Left = 991
      Top = 70
      Width = 38
      Height = 16
      Caption = '[ . . . ]'
      Transparent = True
      Visible = False
    end
    object Label15: TLabel
      Left = 552
      Top = 167
      Width = 79
      Height = 16
      Caption = 'Tanggal Kirim'
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
    object Label16: TLabel
      Left = 552
      Top = 184
      Width = 80
      Height = 32
      Caption = 'Masa Berlaku '#13#10'SO'
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
    object Keterangan: TEdit
      Left = 884
      Top = 173
      Width = 445
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clWhite
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 14
      Visible = False
      OnChange = TanggalChange
      OnKeyDown = TANGGALKeyDown
    end
    object PanelShow2: TPanel
      Left = 404
      Top = 8
      Width = 66
      Height = 23
      BevelOuter = bvNone
      TabOrder = 15
      Visible = False
      object BPrev: TSpeedButton
        Left = 2
        Top = 1
        Width = 24
        Height = 22
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333FF3333333333333744333333333333F773333333333337
          44473333333333F777F3333333333744444333333333F7733733333333374444
          4433333333F77333733333333744444447333333F7733337F333333744444444
          433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
          9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
          C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
          CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
          CCC333333333333777FF33333333333333CC3333333333333773}
        NumGlyphs = 2
        OnClick = BPrevClick
      end
      object BNext: TSpeedButton
        Left = 27
        Top = 1
        Width = 24
        Height = 22
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333FF3333333333333447333333333333377FFF33333333333744473333333
          333337773FF3333333333444447333333333373F773FF3333333334444447333
          33333373F3773FF3333333744444447333333337F333773FF333333444444444
          733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
          999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
          33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
          333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
          33333777333333333333CC333333333333337733333333333333}
        NumGlyphs = 2
        OnClick = BNextClick
      end
    end
    object KodeSls: TEdit
      Left = 646
      Top = 115
      Width = 55
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clWhite
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 13
      OnChange = TanggalChange
      OnEnter = TANGGALEnter
      OnExit = KodeSlsExit
      OnKeyDown = TANGGALKeyDown
    end
    object NoUrut: TEdit
      Left = 100
      Top = 10
      Width = 55
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
      OnKeyDown = NoUrutKeyDown
    end
    object NoBukti: TEdit
      Left = 248
      Top = 10
      Width = 152
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
    end
    object Tanggal: TDateEdit
      Left = 646
      Top = 10
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
      OnChange = TanggalChange
      OnEnter = TANGGALEnter
      OnExit = TANGGALExit
      OnKeyDown = TANGGALKeyDown
    end
    object Kurs: TPBNumEdit
      Left = 715
      Top = 42
      Width = 72
      Height = 22
      Alignment = taRightJustify
      Ctl3D = False
      Decimals = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumberFormat = Thousands
      OnChange = TanggalChange
      OnKeyDown = TANGGALKeyDown
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
      Value = 1
    end
    object Valas: TEdit
      Left = 646
      Top = 43
      Width = 34
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
      MaxLength = 3
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
      Text = 'IDR'
      OnChange = TanggalChange
      OnEnter = ValasEnter
      OnExit = ValasExit
      OnKeyDown = TANGGALKeyDown
    end
    object PPN: TComboBox
      Left = 646
      Top = 67
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
      TabOrder = 8
      Text = 'NONE'
      OnChange = TanggalChange
      OnClick = PPNClick
      OnKeyDown = TANGGALKeyDown
      Items.Strings = (
        'NONE'
        'Exclude'
        'Include')
    end
    object Hari: TPBNumEdit
      Left = 754
      Top = 91
      Width = 33
      Height = 22
      Alignment = taRightJustify
      Ctl3D = False
      Decimals = -1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumberFormat = Standard
      OnChange = TanggalChange
      OnKeyDown = TANGGALKeyDown
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 10
    end
    object Tipe: TComboBox
      Left = 646
      Top = 91
      Width = 73
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
      TabOrder = 9
      Text = 'TUNAI'
      OnChange = TanggalChange
      OnKeyDown = TANGGALKeyDown
      Items.Strings = (
        'TUNAI'
        'KREDIT')
    end
    object KodeCust: TEdit
      Left = 100
      Top = 42
      Width = 55
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      OnChange = TanggalChange
      OnEnter = KodeCustEnter
      OnExit = KodeCustExit
      OnKeyDown = TANGGALKeyDown
    end
    object Catatan: TMemo
      Left = 162
      Top = 178
      Width = 383
      Height = 59
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      OnChange = TanggalChange
      OnKeyDown = TANGGALKeyDown
    end
    object NoPesanan: TEdit
      Left = 646
      Top = 139
      Width = 152
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clWhite
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 18
      OnChange = TanggalChange
      OnEnter = KodeCustEnter
      OnExit = NoPesananExit
      OnKeyDown = TANGGALKeyDown
    end
    object Handling: TPBNumEdit
      Left = 636
      Top = 245
      Width = 117
      Height = 22
      Alignment = taRightJustify
      Ctl3D = False
      Decimals = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumberFormat = Thousands
      OnKeyDown = TANGGALKeyDown
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 16
      Visible = False
    end
    object NoAlamatKirim: TEdit
      Left = 100
      Top = 114
      Width = 55
      Height = 22
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnChange = TanggalChange
      OnEnter = KodeCustEnter
      OnExit = NoAlamatKirimExit
      OnKeyDown = TANGGALKeyDown
    end
    object KodeGdg: TEdit
      Left = 942
      Top = 106
      Width = 60
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 15
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 12
      Visible = False
      OnEnter = KodeCustEnter
      OnExit = KodeGdgExit
      OnKeyDown = TANGGALKeyDown
    end
    object KodeExp: TEdit
      Left = 932
      Top = 66
      Width = 55
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clWhite
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 11
      Visible = False
      OnChange = TanggalChange
      OnEnter = TANGGALEnter
      OnExit = KodeExpExit
      OnKeyDown = TANGGALKeyDown
    end
    object islengkap: TCheckBox
      Left = 846
      Top = 137
      Width = 97
      Height = 17
      Caption = 'Close ?'
      TabOrder = 17
      Visible = False
      OnClick = islengkapClick
      OnKeyDown = TANGGALKeyDown
    end
    object TglKirim: TDateEdit
      Left = 646
      Top = 163
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
      TabOrder = 19
      Visible = False
      OnChange = TanggalChange
      OnEnter = TANGGALEnter
      OnExit = TANGGALExit
      OnKeyDown = TANGGALKeyDown
    end
    object MasaBerlaku: TDateEdit
      Left = 646
      Top = 188
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
      TabOrder = 20
      Visible = False
      OnChange = TanggalChange
      OnEnter = TANGGALEnter
      OnExit = TANGGALExit
      OnKeyDown = TANGGALKeyDown
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 343
    Width = 962
    Height = 241
    Align = alBottom
    BevelOuter = bvNone
    BorderWidth = 1
    TabOrder = 1
    Visible = False
    object SpeedButton1: TSpeedButton
      Left = 178
      Top = 168
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
    object LNamaBrg: TRxLabel
      Left = 222
      Top = 11
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
    object Label2: TLabel
      Left = 16
      Top = 11
      Width = 72
      Height = 16
      Caption = 'Kode Barang'
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
    object Label7: TLabel
      Left = 16
      Top = 36
      Width = 47
      Height = 16
      Caption = 'Quantity'
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
    object Label8: TLabel
      Left = 16
      Top = 61
      Width = 34
      Height = 16
      Caption = 'Harga'
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
    object Label11: TLabel
      Left = 16
      Top = 86
      Width = 39
      Height = 16
      Caption = 'Disc %'
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
    object Label14: TLabel
      Left = 16
      Top = 111
      Width = 42
      Height = 16
      Caption = 'Disc Rp'
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
    object LSatuan2: TLabel
      Left = 701
      Top = 11
      Width = 38
      Height = 16
      Caption = '[ . . . ]'
      Visible = False
    end
    object LSatuan: TLabel
      Left = 501
      Top = 11
      Width = 38
      Height = 16
      Caption = '[ . . . ]'
      Visible = False
    end
    object LNamaSat: TRxLabel
      Left = 291
      Top = 36
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
    object LSatuan1: TLabel
      Left = 869
      Top = 13
      Width = 38
      Height = 16
      Caption = '[ . . . ]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label3: TLabel
      Left = 200
      Top = 36
      Width = 63
      Height = 16
      Caption = 'No. Satuan'
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
    object SpeedButton4: TSpeedButton
      Left = 224
      Top = 58
      Width = 73
      Height = 22
      Caption = 'Cek Harga'
      OnClick = SpeedButton4Click
    end
    object Label39: TLabel
      Left = 347
      Top = 87
      Width = 5
      Height = 16
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label40: TLabel
      Left = 285
      Top = 87
      Width = 5
      Height = 16
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label41: TLabel
      Left = 219
      Top = 87
      Width = 5
      Height = 16
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 155
      Top = 87
      Width = 5
      Height = 16
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 100
      Top = 168
      Width = 75
      Height = 25
      Caption = '&Simpan'
      TabOrder = 11
      OnClick = BitBtn1Click
      OnKeyDown = QntKeyDown
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
    object Harga: TPBNumEdit
      Left = 100
      Top = 58
      Width = 117
      Height = 22
      Alignment = taRightJustify
      Ctl3D = False
      Decimals = 2
      NumberFormat = Thousands
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 4
    end
    object KodeBrg: TEdit
      Left = 100
      Top = 8
      Width = 117
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 25
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnEnter = KodeBrgEnter
      OnExit = KodeBrgExit
      OnKeyDown = KodeBrgKeyDown
    end
    object DiscRp: TPBNumEdit
      Left = 100
      Top = 108
      Width = 117
      Height = 22
      Alignment = taRightJustify
      Ctl3D = False
      Decimals = 2
      NumberFormat = Thousands
      OnExit = DiscPExit
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 10
    end
    object Qnt2: TPBNumEdit
      Left = 604
      Top = 8
      Width = 93
      Height = 22
      Alignment = taRightJustify
      Ctl3D = False
      Decimals = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumberFormat = Thousands
      OnChange = Qnt2Change
      OnEnter = Qnt2Enter
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
    object Qnt: TPBNumEdit
      Left = 100
      Top = 33
      Width = 93
      Height = 22
      Alignment = taRightJustify
      Ctl3D = False
      Decimals = 4
      NumberFormat = Thousands
      OnChange = QntChange
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 2
    end
    object NoSat: TPBNumEdit
      Left = 267
      Top = 33
      Width = 20
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = -1
      MaxLength = 1
      MaxValue = 4
      MinValue = 1
      NumberFormat = Standard
      OnEnter = NoSatEnter
      OnExit = NoSatExit
      ParentCtl3D = False
      TabOrder = 3
      Value = 1
    end
    object Qnt1: TPBNumEdit
      Left = 764
      Top = 9
      Width = 93
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      NumberFormat = Thousands
      OnEnter = KodeBrgEnter
      OnKeyDown = KodeBrgKeyDown
      ParentCtl3D = False
      TabOrder = 12
      Value = 1
      Visible = False
    end
    object Panel5: TPanel
      Left = 417
      Top = -1
      Width = 605
      Height = 233
      TabOrder = 13
      Visible = False
      object cxGrid1: TcxGrid
        Left = 1
        Top = 1
        Width = 603
        Height = 203
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        RootLevelOptions.DetailTabsPosition = dtpTop
        object tvPrices: TcxGridDBBandedTableView
          DataController.DataSource = DSLastPrices
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          OptionsView.BandHeaders = False
          Bands = <
            item
            end>
          object tvPricesLineNum: TcxGridDBBandedColumn
            Caption = 'No.'
            DataBinding.FieldName = 'LineNum'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 27
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvPricesKODECUSTSUPP: TcxGridDBBandedColumn
            Caption = 'Kode Customer'
            DataBinding.FieldName = 'KODECUSTSUPP'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 62
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvPricesNAMACUSTSUPP: TcxGridDBBandedColumn
            Caption = 'Nama Customer'
            DataBinding.FieldName = 'NAMACUSTSUPP'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 97
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvPricesTANGGAL: TcxGridDBBandedColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'TANGGAL'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 72
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tvPricesQnt: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Qnt'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 74
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tvPricesSatuan: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Satuan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 48
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tvPricesKODEVLS: TcxGridDBBandedColumn
            Caption = 'Valas'
            DataBinding.FieldName = 'KODEVLS'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 46
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object tvPricesKURS: TcxGridDBBandedColumn
            Caption = 'Kurs'
            DataBinding.FieldName = 'KURS'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 51
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object tvPricesprice: TcxGridDBBandedColumn
            Caption = 'Harga'
            DataBinding.FieldName = 'price'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 76
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
        end
        object cxGrid1Level1: TcxGridLevel
          Caption = 'Last Price'
          GridView = tvPrices
        end
      end
      object Panel7: TPanel
        Left = 1
        Top = 204
        Width = 603
        Height = 28
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Tutup'
        TabOrder = 1
        OnClick = Panel7Click
      end
    end
    object DiscPDet5: TPBNumEdit
      Left = 356
      Top = 82
      Width = 53
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      MaxLength = 5
      MaxValue = 100
      NumberFormat = Standard
      OnChange = DiscPExit
      OnExit = DiscPExit
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 9
    end
    object DIscPDet4: TPBNumEdit
      Left = 292
      Top = 82
      Width = 53
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      MaxLength = 5
      MaxValue = 100
      NumberFormat = Standard
      OnChange = DiscPExit
      OnExit = DiscPExit
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 8
    end
    object DiscPDet3: TPBNumEdit
      Left = 228
      Top = 82
      Width = 53
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      MaxLength = 5
      MaxValue = 100
      NumberFormat = Standard
      OnChange = DiscPExit
      OnExit = DiscPExit
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 7
    end
    object DiscPDet2: TPBNumEdit
      Left = 162
      Top = 82
      Width = 53
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      Decimals = 2
      MaxLength = 5
      MaxValue = 100
      NumberFormat = Standard
      OnChange = DiscPExit
      OnExit = DiscPExit
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 6
    end
    object DiscP: TPBNumEdit
      Left = 100
      Top = 82
      Width = 53
      Height = 24
      Alignment = taRightJustify
      Ctl3D = False
      Decimals = 2
      NumberFormat = Thousands
      OnChange = DiscPExit
      OnExit = DiscPExit
      OnKeyDown = QntKeyDown
      ParentCtl3D = False
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 241
    Width = 962
    Height = 102
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 2
    object Panel4: TPanel
      Left = 5
      Top = 33
      Width = 952
      Height = 64
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 1
      object PanelShow1: TPanel
        Left = 2
        Top = 30
        Width = 948
        Height = 32
        Align = alBottom
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object Cetak: TSpeedButton
          Left = 229
          Top = 2
          Width = 75
          Height = 28
          Caption = '&Cetak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000C5C5C5C5C5C5
            C5C5C5CACACADBDBDBA0A09F9C9C9CD0D0D0CACACADBDBDB9C9C9CA0A0A0D0D0
            D0C5C5C5C5C5C5C5C5C5C5C5C5CACACADBDBDBA5A5A4120F0E000000161515A7
            A7A7A9A9A90707071A191A000000A8A8A8D0D0D0C5C5C5C5C5C5D5D5D5A5A5A4
            120F0E00000086919396A594A1AAA1161416000000B4B3B3FFFFFF848C840000
            00A8A8A8D0D0D0C5C5C55F5F5E0000008691939EAD9B2B2E29919092B5B8BA98
            A2983D322E5E62636668684B494A959D95000000A0A0A0CACACAA2A2A2232820
            3F433D89888AFFFFFFFFFFFFFFFFFFBBC0C2909D927D746FE6E6E77E817E4040
            40575957595959D0D0D0DBDBDB000000D8DDDDFFFFFFF9FFFFF8FFFFFAFFFFFF
            FFFFB0B3B5180809E1E2E28A898A5B665B000000656565D0D0D0C5C5C5ECECEC
            000000D1D7D7FFFFFFFFFFFFEEF2F2A6A7A8726B665E4E43D7D9DB7E7E7F656C
            65222722626262D0D0D0C5C5C5DBDBDB000000525050C1C8C9ABACAD6A635E55
            463A97918CE3EAECFDF9F6E1D9D68887892C2F2C616161D0D0D0C5C5C5DBDBDB
            000000ACB4B0160000695A51928E8AF7F2F1FFFBF9E9E1DEC1C2C2DADEDED8DB
            DB3938395F5F5FD0D0D0C5C5C5DBDBDB000000E9E9EA9CA3A2F3EEEEFFFFFFE5
            E0DDC2C4C4C6C7C7CACACAD0D0D0FAFCFC1118115C5C5CD0D0D0C5C5C5DBDBDB
            000000FFFDFBFFFFFDE5E0DDC1C3C4C6C7C7CACACAD3D4D4E1E1E16A6A693E48
            4E090008B4B5B4CACACAC5C5C5D5D5D5020406CCB5B0CCCFD0C6C7C7CACACAD3
            D4D4E1E2E36B615C2C322FAFABAFE7E7E6FFFBFF000000DBDBDBC5C5C5C5C5C5
            E6E6E6000000A7A7A7DBDBDBEAEBEB736A651F190FADB2B0E7E6E7F0F0F05F5F
            5F000000686868D0D0D0C5C5C5C5C5C5C5C5C5E6E6E600000071717100000074
            7876EEEFF0F0F0F05F5F5F0000005B5B5BE6E6E6D0D0D0C5C5C5C5C5C5C5C5C5
            C5C5C5C5C5C5E1E1E1434343F7F7F70000007171710000005B5B5BE6E6E6D0D0
            D0C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5D0D0D0C5C5C5E1
            E1E14F4F4FE6E6E6D0D0D0C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5}
          ParentFont = False
          Transparent = False
          OnClick = CetakClick
        end
        object HapusBtn: TSpeedButton
          Left = 154
          Top = 2
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
          Top = 2
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
          Top = 2
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
        object SpeedButton8: TSpeedButton
          Left = 303
          Top = 2
          Width = 23
          Height = 28
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
            1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
            1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
            193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
            11155557F755F777777555000755033305555577755F75F77F55555555503335
            0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
            05555757F75F75557F5505000333555505557F777FF755557F55000000355557
            07557777777F55557F5555000005555707555577777FF5557F55553000075557
            0755557F7777FFF5755555335000005555555577577777555555}
          NumGlyphs = 2
          OnClick = SpeedButton8Click
        end
        object SpeedButton2: TSpeedButton
          Left = 326
          Top = 2
          Width = 107
          Height = 28
          Caption = '&Cetak Form SO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000C5C5C5C5C5C5
            C5C5C5CACACADBDBDBA0A09F9C9C9CD0D0D0CACACADBDBDB9C9C9CA0A0A0D0D0
            D0C5C5C5C5C5C5C5C5C5C5C5C5CACACADBDBDBA5A5A4120F0E000000161515A7
            A7A7A9A9A90707071A191A000000A8A8A8D0D0D0C5C5C5C5C5C5D5D5D5A5A5A4
            120F0E00000086919396A594A1AAA1161416000000B4B3B3FFFFFF848C840000
            00A8A8A8D0D0D0C5C5C55F5F5E0000008691939EAD9B2B2E29919092B5B8BA98
            A2983D322E5E62636668684B494A959D95000000A0A0A0CACACAA2A2A2232820
            3F433D89888AFFFFFFFFFFFFFFFFFFBBC0C2909D927D746FE6E6E77E817E4040
            40575957595959D0D0D0DBDBDB000000D8DDDDFFFFFFF9FFFFF8FFFFFAFFFFFF
            FFFFB0B3B5180809E1E2E28A898A5B665B000000656565D0D0D0C5C5C5ECECEC
            000000D1D7D7FFFFFFFFFFFFEEF2F2A6A7A8726B665E4E43D7D9DB7E7E7F656C
            65222722626262D0D0D0C5C5C5DBDBDB000000525050C1C8C9ABACAD6A635E55
            463A97918CE3EAECFDF9F6E1D9D68887892C2F2C616161D0D0D0C5C5C5DBDBDB
            000000ACB4B0160000695A51928E8AF7F2F1FFFBF9E9E1DEC1C2C2DADEDED8DB
            DB3938395F5F5FD0D0D0C5C5C5DBDBDB000000E9E9EA9CA3A2F3EEEEFFFFFFE5
            E0DDC2C4C4C6C7C7CACACAD0D0D0FAFCFC1118115C5C5CD0D0D0C5C5C5DBDBDB
            000000FFFDFBFFFFFDE5E0DDC1C3C4C6C7C7CACACAD3D4D4E1E1E16A6A693E48
            4E090008B4B5B4CACACAC5C5C5D5D5D5020406CCB5B0CCCFD0C6C7C7CACACAD3
            D4D4E1E2E36B615C2C322FAFABAFE7E7E6FFFBFF000000DBDBDBC5C5C5C5C5C5
            E6E6E6000000A7A7A7DBDBDBEAEBEB736A651F190FADB2B0E7E6E7F0F0F05F5F
            5F000000686868D0D0D0C5C5C5C5C5C5C5C5C5E6E6E600000071717100000074
            7876EEEFF0F0F0F05F5F5F0000005B5B5BE6E6E6D0D0D0C5C5C5C5C5C5C5C5C5
            C5C5C5C5C5C5E1E1E1434343F7F7F70000007171710000005B5B5BE6E6E6D0D0
            D0C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5D0D0D0C5C5C5E1
            E1E14F4F4FE6E6E6D0D0D0C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5}
          ParentFont = False
          Transparent = False
          Visible = False
          OnClick = SpeedButton2Click
        end
        object SpeedButton3: TSpeedButton
          Left = 432
          Top = 2
          Width = 23
          Height = 28
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
            1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
            1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
            193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
            11155557F755F777777555000755033305555577755F75F77F55555555503335
            0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
            05555757F75F75557F5505000333555505557F777FF755557F55000000355557
            07557777777F55557F5555000005555707555577777FF5557F55553000075557
            0755557F7777FFF5755555335000005555555577577777555555}
          NumGlyphs = 2
          Visible = False
          OnClick = SpeedButton3Click
        end
      end
      object Panel6: TPanel
        Left = 2
        Top = 2
        Width = 948
        Height = 28
        Align = alBottom
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object LDiskonP: TLabel
          Left = 10
          Top = 6
          Width = 39
          Height = 16
          Caption = 'Disc %'
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
        object Label25: TLabel
          Left = 582
          Top = 6
          Width = 67
          Height = 16
          Caption = 'Grand Total'
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
        object Label37: TLabel
          Left = 445
          Top = 6
          Width = 22
          Height = 16
          Caption = 'PPN'
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
        object Label38: TLabel
          Left = 284
          Top = 6
          Width = 22
          Height = 16
          Caption = 'DPP'
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
        object LDiskonRp: TLabel
          Left = 118
          Top = 6
          Width = 42
          Height = 16
          Alignment = taRightJustify
          Caption = 'Disc Rp'
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
        object DiskonP: TPBNumEdit
          Left = 52
          Top = 3
          Width = 52
          Height = 22
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnEnter = DiskonPEnter
          OnExit = DiskonPExit
          OnKeyDown = DiskonRpKeyDown
          ParentCtl3D = False
          TabOrder = 0
        end
        object GrandTotal: TPBNumEdit
          Left = 653
          Top = 3
          Width = 117
          Height = 22
          TabStop = False
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
        object Pajak: TPBNumEdit
          Left = 470
          Top = 3
          Width = 100
          Height = 22
          TabStop = False
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object DPP: TPBNumEdit
          Left = 310
          Top = 3
          Width = 117
          Height = 22
          TabStop = False
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
        object DiskonRp: TPBNumEdit
          Left = 166
          Top = 3
          Width = 100
          Height = 22
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnEnter = DiskonRpEnter
          OnExit = DiskonRpExit
          OnKeyDown = DiskonRpKeyDown
          ParentCtl3D = False
          TabOrder = 1
        end
      end
    end
    object dxDBGrid1: TdxDBGrid
      Left = 5
      Top = 5
      Width = 952
      Height = 28
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'Urut'
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
      TabOrder = 0
      OnDblClick = wwDBGrid1DblClick
      OnEnter = wwDBGrid1Enter
      OnExit = wwDBGrid1Exit
      OnKeyDown = wwDBGrid1KeyDown
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
      OptionsBehavior = [edgoAutoSearch, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Tahoma'
      PreviewFont.Style = []
      RowFooterColor = 11202790
      OnCustomDrawCell = dxDBGrid1CustomDrawCell
      object dxDBGrid1Kodebrg: TdxDBGridMaskColumn
        Caption = 'Kode Barang'
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Kodebrg'
      end
      object dxDBGrid1Namabrg: TdxDBGridMaskColumn
        Caption = 'Nama Barang'
        HeaderAlignment = taCenter
        Width = 250
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Namabrg'
      end
      object dxDBGrid1Qnt2: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Qnt2'
        SummaryFooterType = cstSum
        SummaryFooterField = 'Qnt2'
        SummaryFooterFormat = ',0'
      end
      object dxDBGrid1SatuanRoll: TdxDBGridMaskColumn
        Caption = 'Sat2'
        HeaderAlignment = taCenter
        Visible = False
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SatuanRoll'
      end
      object dxDBGrid1Qnt: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Qnt'
        SummaryFooterType = cstSum
        SummaryFooterField = 'Qnt'
        SummaryFooterFormat = ',0'
      end
      object dxDBGrid1Satuan: TdxDBGridMaskColumn
        Caption = 'Sat'
        HeaderAlignment = taCenter
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Satuan'
      end
      object dxDBGrid1Harga: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Harga'
      end
      object dxDBGrid1DiscTot: TdxDBGridMaskColumn
        Caption = 'Diskon'
        HeaderAlignment = taCenter
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DiscTot'
      end
      object dxDBGrid1TotalUSD: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TotalUSD'
      end
      object dxDBGrid1TotalIDR: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TotalIDR'
      end
      object dxDBGrid1Total: TdxDBGridMaskColumn
        Caption = 'Sub Total'
        HeaderAlignment = taCenter
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Total'
        SummaryFooterType = cstSum
        SummaryFooterField = 'Total'
        SummaryFooterFormat = ',0.00'
      end
    end
  end
  object QuBeli: TADOQuery
    CacheSize = 2000
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @NoBukti varchar(20)'
      ''
      'select '#9'@NoBukti='#39'SJY/SO/0712/00001'#39
      ''
      
        'Select '#9'A.NoBukti, A.NOURUT, A.Tanggal, A.TglJatuhTempo, A.KodeC' +
        'UST, C.NamaCUST, C.Alamat,'
      '        A.NoAlamatKirim, J.Alamat AlamatKirim,'
      
        #9'A.Handling, A.NOSPB, Cast(A.KodeSls as varchar(200)) kodesls, C' +
        '.NamaSls, A.KodeGdg, A.Keterangan, A.KodeVls, D.NamaVls, A.Kurs,' +
        ' A.PPN, '
      #9'A.TipeBayar, A.Hari, A.TipeDisc, A.Disc, A.DiscRp, A.Catatan,'
      #9'B.Urut, B.UrutSPB, B.KodeBrg, H.NamaBrg, '
      
        '     Case when b.NOSAT=1 then B.qnt else b.Qnt2 end Qnt, B.NoSat' +
        ', B.Isi,'
      '     Case when b.NOSAT=1 then H.Sat1 else H.Sat2 end Satuan,'
      '        B.Qnt2, H.Sat2 SatuanRoll, B.Qnt3, B.Harga,'
      '        B.DiscP1, B.DiscRp1, B.DiscTot,'
      
        '        B.SubTotal TotalUSD, B.SubTotalRp TotalIDR, B.NDPPRp NDP' +
        'P,'
      '        B.NPPNRp NPPN, B.BYAngkut Beban,'
      
        '        I.TotSubTotal, I.TotDiskon, I.TotTotal, I.TotDPP, I.TotP' +
        'PN, I.TotNet,'
      
        '        I.TotSubTotalRp, I.TotDiskonRp, I.TotTotalRp, I.TotDPPRp' +
        ', I.TotPPNRp, I.TotNetRp,'
      
        '        A.KodeExp, M.NamaExp, A.InsGdg, A.InsBrg, C.IsPPN, A.IsL' +
        'engkap,'
      '        A.NoPesanan, A.TglKirim, A.MasaBerlaku,'
      
        '        Case when A.Kodevls='#39'IDR'#39' then B.SubTotalRp  else B.SubT' +
        'otal end Total,'
      
        '        Case when A.Kodevls='#39'IDR'#39' then I.TotDiskonRp  else I.Tot' +
        'Diskon end Diskon,'
      
        '        Case when A.Kodevls='#39'IDR'#39' then I.TotDPPRp  else I.TotDPP' +
        ' end TotalDPP,'
      
        '        Case when A.Kodevls='#39'IDR'#39' then I.TotPPnRp  else I.TotPPn' +
        ' end TotalPPn,'
      
        '        Case when A.Kodevls='#39'IDR'#39' then I.TotNetRp  else I.TotNet' +
        ' end TotalNetto,'
      '        B.Discp2,Discp3,Discp4,Discp5'
      'From dbSO A'
      'Left Outer join dbSODet B on B.NoBukti=a.NoBukti'
      
        'Left Outer Join vwBrowsCustomer C on c.Kodecust=a.KodeCust and c' +
        '.Sales=A.KODESLS'
      'Left Outer join dbValas D on D.KodeVls=A.KodeVls'
      
        'left outer join DBSALESCUSTOMER F on F.KeyNIK=A.KODESLS and F.Ko' +
        'deCustSupp=A.KODECUST'
      
        'Left Outer Join vwSatuanBrg H on H.KodeBrg=B.KodeBrg --and H.NoS' +
        'at=B.NoSat'
      'Left Outer Join vwRpDetSO I on I.NoBukti=A.NoBukti'
      
        'left outer join vwAlamatCust J on J.KODECUSTSUPP=A.KodeCust and ' +
        'J.Nomor=A.NoAlamatKirim'
      'left outer join dbExpedisi M on M.KodeExp=A.KodeExp'
      'where A.NoBukti=@NoBukti'
      'order by B.Urut')
    Left = 83
    Top = 304
    object QuBeliNoBukti: TStringField
      FieldName = 'NoBukti'
    end
    object QuBeliNOURUT: TStringField
      FieldName = 'NOURUT'
      Size = 10
    end
    object QuBeliTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuBeliTglJatuhTempo: TDateTimeField
      FieldName = 'TglJatuhTempo'
    end
    object QuBeliKodeCUST: TStringField
      FieldName = 'KodeCUST'
      Size = 15
    end
    object QuBeliNamaCUST: TStringField
      FieldName = 'NamaCUST'
      Size = 40
    end
    object QuBeliAlamat: TStringField
      FieldName = 'Alamat'
      ReadOnly = True
      Size = 208
    end
    object QuBeliAlamatKirim: TStringField
      FieldName = 'AlamatKirim'
      Size = 2000
    end
    object QuBeliHandling: TBCDField
      FieldName = 'Handling'
      Precision = 18
      Size = 2
    end
    object QuBeliNOSPB: TStringField
      FieldName = 'NOSPB'
    end
    object QuBeliKodeSls: TStringField
      FieldName = 'KodeSls'
      Size = 15
    end
    object QuBeliNamaSls: TStringField
      FieldName = 'NamaSls'
      Size = 40
    end
    object QuBeliKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 200
    end
    object QuBeliKodeVls: TStringField
      FieldName = 'KodeVls'
      Size = 15
    end
    object QuBeliNamaVls: TStringField
      FieldName = 'NamaVls'
      Size = 40
    end
    object QuBeliKurs: TBCDField
      FieldName = 'Kurs'
      Precision = 18
      Size = 2
    end
    object QuBeliPPN: TWordField
      FieldName = 'PPN'
    end
    object QuBeliTipeBayar: TWordField
      FieldName = 'TipeBayar'
    end
    object QuBeliHari: TIntegerField
      FieldName = 'Hari'
    end
    object QuBeliTipeDisc: TWordField
      FieldName = 'TipeDisc'
    end
    object QuBeliDisc: TFloatField
      FieldName = 'Disc'
    end
    object QuBeliDiscRp: TBCDField
      FieldName = 'DiscRp'
      Precision = 18
    end
    object QuBeliCatatan: TStringField
      FieldName = 'Catatan'
      Size = 2000
    end
    object QuBeliUrut: TIntegerField
      FieldName = 'Urut'
    end
    object QuBeliUrutSPB: TIntegerField
      FieldName = 'UrutSPB'
    end
    object QuBeliKodeBrg: TStringField
      FieldName = 'KodeBrg'
      Size = 25
    end
    object QuBeliNamaBrg: TStringField
      FieldName = 'NamaBrg'
      Size = 100
    end
    object QuBeliQnt: TBCDField
      FieldName = 'Qnt'
      DisplayFormat = ',0.0000'
      Precision = 18
      Size = 2
    end
    object QuBeliNoSat: TWordField
      FieldName = 'NoSat'
    end
    object QuBeliIsi: TBCDField
      FieldName = 'Isi'
      Precision = 18
      Size = 2
    end
    object QuBeliSatuan: TStringField
      FieldName = 'Satuan'
      Size = 5
    end
    object QuBeliQnt2: TBCDField
      FieldName = 'Qnt2'
      DisplayFormat = ',0.0000'
      Precision = 18
      Size = 2
    end
    object QuBeliSatuanRoll: TStringField
      FieldName = 'SatuanRoll'
      Size = 15
    end
    object QuBeliHarga: TBCDField
      FieldName = 'Harga'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QuBeliDiscP1: TBCDField
      FieldName = 'DiscP1'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliDiscRp1: TBCDField
      FieldName = 'DiscRp1'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QuBeliDiscTot: TBCDField
      FieldName = 'DiscTot'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliTotalUSD: TBCDField
      FieldName = 'TotalUSD'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 5
    end
    object QuBeliTotalIDR: TBCDField
      FieldName = 'TotalIDR'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliNDPP: TFloatField
      FieldName = 'NDPP'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object QuBeliNPPN: TFloatField
      FieldName = 'NPPN'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object QuBeliBeban: TBCDField
      FieldName = 'Beban'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliTotSubTotal: TBCDField
      FieldName = 'TotSubTotal'
      Precision = 32
      Size = 6
    end
    object QuBeliTotDiskon: TFloatField
      FieldName = 'TotDiskon'
    end
    object QuBeliTotTotal: TFloatField
      FieldName = 'TotTotal'
    end
    object QuBeliTotDPP: TFloatField
      FieldName = 'TotDPP'
    end
    object QuBeliTotPPN: TFloatField
      FieldName = 'TotPPN'
    end
    object QuBeliTotNet: TFloatField
      FieldName = 'TotNet'
    end
    object QuBeliTotSubTotalRp: TBCDField
      FieldName = 'TotSubTotalRp'
      Precision = 32
      Size = 6
    end
    object QuBeliTotDiskonRp: TFloatField
      FieldName = 'TotDiskonRp'
    end
    object QuBeliTotTotalRp: TFloatField
      FieldName = 'TotTotalRp'
    end
    object QuBeliTotDPPRp: TFloatField
      FieldName = 'TotDPPRp'
    end
    object QuBeliTotPPNRp: TFloatField
      FieldName = 'TotPPNRp'
    end
    object QuBeliTotNetRp: TFloatField
      FieldName = 'TotNetRp'
    end
    object QuBeliNoAlamatKirim: TIntegerField
      FieldName = 'NoAlamatKirim'
    end
    object QuBeliKodeGdg: TStringField
      FieldName = 'KodeGdg'
      Size = 15
    end
    object QuBeliKodeExp: TStringField
      FieldName = 'KodeExp'
    end
    object QuBeliNamaExp: TStringField
      FieldName = 'NamaExp'
      Size = 40
    end
    object QuBeliQnt3: TBCDField
      FieldName = 'Qnt3'
      DisplayFormat = ',0.0000'
      Precision = 18
      Size = 2
    end
    object QuBeliInsGdg: TStringField
      FieldName = 'InsGdg'
      Size = 3
    end
    object QuBeliInsBrg: TStringField
      FieldName = 'InsBrg'
      Size = 3
    end
    object QuBeliIsPPN: TBooleanField
      FieldName = 'IsPPN'
    end
    object QuBeliIsLengkap: TBooleanField
      FieldName = 'IsLengkap'
    end
    object QuBeliNoPesanan: TStringField
      FieldName = 'NoPesanan'
      Size = 150
    end
    object QuBeliTglKirim: TDateTimeField
      FieldName = 'TglKirim'
    end
    object QuBeliMasaBerlaku: TDateTimeField
      FieldName = 'MasaBerlaku'
    end
    object QuBeliTotalDPP: TFloatField
      FieldName = 'TotalDPP'
      ReadOnly = True
    end
    object QuBeliTotalPPn: TFloatField
      FieldName = 'TotalPPn'
      ReadOnly = True
    end
    object QuBeliTotalNetto: TFloatField
      FieldName = 'TotalNetto'
      ReadOnly = True
    end
    object QuBeliDiskon: TFloatField
      FieldName = 'Diskon'
      ReadOnly = True
    end
    object QuBeliDiscp2: TBCDField
      FieldName = 'Discp2'
      Precision = 18
      Size = 2
    end
    object QuBeliDiscp3: TBCDField
      FieldName = 'Discp3'
      Precision = 18
      Size = 2
    end
    object QuBeliDiscp4: TBCDField
      FieldName = 'Discp4'
      Precision = 18
      Size = 2
    end
    object QuBeliDiscp5: TBCDField
      FieldName = 'Discp5'
      Precision = 18
      Size = 2
    end
  end
  object Sp_Beli: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'Sp_SO;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@Choice'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
      end
      item
        Name = '@NoBukti'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
      end
      item
        Name = '@NoUrut'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
      end
      item
        Name = '@Tanggal'
        Attributes = [paNullable]
        DataType = ftDateTime
      end
      item
        Name = '@TglJatuhTempo'
        Attributes = [paNullable]
        DataType = ftDateTime
      end
      item
        Name = '@KodeCust'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
      end
      item
        Name = '@NOSPB'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
      end
      item
        Name = '@KodeSls'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
      end
      item
        Name = '@NoAlamatKirim'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@AlamatKirim'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2000
      end
      item
        Name = '@Keterangan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 200
      end
      item
        Name = '@Kodevls'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
      end
      item
        Name = '@Kurs'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@PPn'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
      end
      item
        Name = '@TipeBayar'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
      end
      item
        Name = '@Hari'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@TipeDisc'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
      end
      item
        Name = '@Disc'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = '@DiscRp'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 4
        Precision = 18
      end
      item
        Name = '@Catatan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2000
      end
      item
        Name = '@Urut'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@UrutSPB'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@KodeBrg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
      end
      item
        Name = '@Qnt'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@Qnt2'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@NoSat'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
      end
      item
        Name = '@Isi'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@Harga'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 4
        Precision = 18
      end
      item
        Name = '@DiscP1'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@DiscTot'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 4
        Precision = 18
      end
      item
        Name = '@KodeGdg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
      end
      item
        Name = '@KodeExp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
      end
      item
        Name = '@Qnt3'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@INSGdg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
      end
      item
        Name = '@INSBrg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
      end
      item
        Name = '@IsLengkap'
        Attributes = [paNullable]
        DataType = ftBoolean
      end
      item
        Name = '@Userid'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
      end
      item
        Name = '@TglInput'
        Attributes = [paNullable]
        DataType = ftDateTime
      end
      item
        Name = '@Satuan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
      end
      item
        Name = '@NoPesanan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
      end
      item
        Name = '@TglKirim'
        Attributes = [paNullable]
        DataType = ftDateTime
      end
      item
        Name = '@MasaBerlaku'
        Attributes = [paNullable]
        DataType = ftDateTime
      end
      item
        Name = '@Discp2'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@Discp3'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 3
        Precision = 18
      end
      item
        Name = '@Discp4'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 4
        Precision = 18
      end
      item
        Name = '@Discp5'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 5
        Precision = 18
      end>
    Left = 197
    Top = 329
  end
  object DsQuBeli: TDataSource
    DataSet = QuBeli
    Left = 50
    Top = 296
  end
  object QuUpdatedbbeli: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From vwPerusahaan')
    Left = 121
    Top = 321
  end
  object DataSource1: TDataSource
    DataSet = QuReport
    Left = 35
    Top = 321
  end
  object QuReport: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @NoBukti varchar(20)'
      ''
      'select @NoBukti='#39#39
      ''
      
        'Select a.nobukti, a.Tanggal, a.Kodecust, a.KodeSls, a.Keterangan' +
        ', a.KodeVls,'
      
        '       a.Kurs, a.PPn, a.TipeBayar, a.Hari, a.TglJatuhTempo, a.Di' +
        'sc,'
      
        '       b.Urut, b.Kodebrg, d.NamaBrg, d.Sat1, b.Qnt, b.Harga, b.H' +
        'rgNetto,'
      
        '       b.DiscTot, b.Qnt*b.HrgNetto Total, b.NDiskon, b.NDPP, b.N' +
        'PPN, b.NNet,'
      
        '       c.NamaCust, c.Usaha, c.Alamat1+Char(13)+c.Alamat2+Char(13' +
        ')+c.kodekota Alamat,'
      
        '       f.NamaSLS, f.AlamatSLS+Char(13)+f.KotaSLS AlamatSls, F.Ko' +
        'taSls,'
      '       0 Jenis, b.discp1 DiscP4'
      'From DBSO a'
      'Left Outer join DBSOdet b on b.Nobukti=a.Nobukti'
      'Left Outer Join dbCustomer c on c.Kodecust=a.Kodecust'
      'left outer join dbBarang d on d.KodeBrg=b.KodeBrg'
      'Left Outer Join dbSalesman f on f.KodeSLS=a.KodeSLS'
      'where a.NoBukti=@NoBukti'
      'order by b.Urut'
      '')
    Left = 2
    Top = 322
  end
  object frxDBCetak: TfrxDBDataset
    UserName = 'frxDBCetak'
    CloseDataSource = False
    DataSet = Qudetail
    Left = 244
    Top = 274
  end
  object frxReport1: TfrxReport
    Version = '4.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39461.6751602199
    ReportOptions.LastChange = 40156.6107137847
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    OnAfterPrintReport = frxReport1AfterPrintReport
    Left = 274
    Top = 274
    Datasets = <
      item
        DataSet = frxDBCetak
        DataSetName = 'frxDBCetak'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      PaperWidth = 215.9
      PaperHeight = 279.4
      PaperSize = 1
      LeftMargin = 10
      RightMargin = 10
      TopMargin = 10
      BottomMargin = 10
      object PageHeader1: TfrxPageHeader
        Height = 260.96058818
        Top = 64.629963
        Width = 740.409927
        Stretched = True
        object Memo35: TfrxMemoView
          Left = 37.79527559
          Top = 94.48818898
          Width = 340.15748031
          Height = 83.1496063
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 483.77952756
          Top = 94.48818898
          Width = 253.22834646
          Height = 83.1496063
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 483.77952756
          Width = 253.22834646
          Height = 83.1496063
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 491.33858268
          Top = 3.77952756000001
          Width = 94.48825
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'P.O. Number')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 491.33858268
          Top = 22.67716535
          Width = 94.48825
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'P.O. Date')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 491.33858268
          Top = 41.57480315
          Width = 94.48825
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Phone')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 491.33858268
          Top = 60.47244094
          Width = 94.48825
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Contact')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 491.33858268
          Top = 98.26771654
          Width = 245.66929134
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBCetak."NAMAPERSH"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 491.33858268
          Top = 117.16535433
          Width = 245.66929134
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."ALM1PERSH"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 491.33858268
          Top = 136.06299213
          Width = 245.66929134
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[<frxDBCetak."ALM2PERSH">+'#39', '#39'+<frxDBCetak."KOTAPERSH">]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 585.826771653543
          Top = 3.77952756000001
          Width = 151.181102362205
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBCetak."NoBukti"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 585.826771653543
          Top = 22.67716535
          Width = 151.181102362205
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Tanggal"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 585.826771653543
          Top = 41.57480315
          Width = 151.181102362205
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."TELPONSUPP"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 585.826771653543
          Top = 60.47244094
          Width = 151.181102362205
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."CONTACTSUPP"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 491.33858268
          Top = 154.96062992
          Width = 245.66929134
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NEGPERSH"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 45.35433071
          Top = 98.26771654
          Width = 328.81889764
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBCetak."NAMASUPP"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 45.35433071
          Top = 117.16535433
          Width = 328.81889764
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."ALM1SUPP"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 45.35433071
          Top = 136.06299213
          Width = 328.81889764
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."ALM2SUPP"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 45.35433071
          Top = 154.96062992
          Width = 328.81889764
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NEGSUPP"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 18.8976378
          Top = 22.677165355
          Width = 247.48825
          Height = 37.79527559
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'PURCHASE ORDER')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 408.18897638
          Top = 98.26771654
          Width = 75.59055118
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'SHIP TO :')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Top = 98.26771654
          Width = 37.79527559
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TO :')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Top = 185.370037
          Width = 94.48825
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[<frxDBCetak."TipeImpor">+'#39' : '#39']')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 37.79527559
          Top = 185.370037
          Width = 340.48825
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBCetak."KetTipeImpor"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 524.77952756
          Top = 185.370037
          Width = 212.48825
          Height = 1889.76377953
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[<frxDBCetak."TERM1KET">+IIF(<frxDBCetak."TERM2KET">='#39#39','#39#39',Chr(1' +
              '3)+<frxDBCetak."TERM2KET">)+IIF(<frxDBCetak."TERM3KET">='#39#39','#39#39',Ch' +
              'r(13)+<frxDBCetak."TERM3KET">)+IIF(<frxDBCetak."TERM4KET">='#39#39','#39#39 +
              ',Chr(13)+<frxDBCetak."TERM4KET">)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo46: TfrxMemoView
          Left = 408.18897638
          Top = 185.370037
          Width = 75.59055118
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TERMS :')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 487
          Top = 185.370037
          Width = 50.48825
          Height = 1889.76377953
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[FormatFloat('#39',0'#39',<frxDBCetak."TERM1P">)+'#39'%'#39'+IIF(<frxDBCetak."TE' +
              'RM2P">=0,'#39#39',chr(13)+FormatFloat('#39',0'#39',<frxDBCetak."TERM2P">)+'#39'%'#39')' +
              '+IIF(<frxDBCetak."TERM3P">=0,'#39#39',chr(13)+FormatFloat('#39',0'#39',<frxDBC' +
              'etak."TERM3P">)+'#39'%'#39')+IIF(<frxDBCetak."TERM4P">=0,'#39#39',chr(13)+Form' +
              'atFloat('#39',0'#39',<frxDBCetak."TERM4P">)+'#39'%'#39')]')
          ParentFont = False
          WordWrap = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.8976377952756
        Top = 428.220749
        Width = 740.409927
        DataSet = frxDBCetak
        DataSetName = 'frxDBCetak'
        RowCount = 0
        object Memo17: TfrxMemoView
          Width = 94.48825
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBCetak."KODEBRG"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 94.48818898
          Width = 170.07874016
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBCetak."NAMABRG"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 264.56692913
          Width = 94.48818898
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetak."QNT"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 359.05511811
          Width = 132.28346457
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetak."HRGNETTO"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 491.33858268
          Width = 113.38582677
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetak."SUBTOTAL"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 604.72440945
          Width = 132.28346457
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBCetak."KETERANGANDET"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 18.8976378
        Top = 386.267966
        Width = 740.409927
        object Memo23: TfrxMemoView
          Width = 94.48825
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'CODE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 94.48818898
          Width = 170.07874016
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'DESCRIPTION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 491.33858268
          Width = 113.38582677
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'PRICE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 604.72440945
          Width = 132.28346457
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 359.05511811
          Width = 132.28346457
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '['#39'UNIT PRICE ('#39'+<frxDBCetak."NAMAVLS">+'#39')'#39']')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 264.56692913
          Width = 94.48818898
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'QUANTITY')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 132.28346457
        Top = 470.173532
        Width = 740.409927
        object Memo29: TfrxMemoView
          Top = 75.5905511811025
          Width = 453.54330709
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'P.O. ACKNOWLEDGED BY :')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Top = 94.488188976378
          Width = 453.54330709
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '['#39'NAME : '#39'+<frxDBCetak."NAMASUPP">]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 472.44094488189
          Top = 94.488188976378
          Width = 264.566929133858
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '['#39'BUYER : '#39'+<frxDBCetak."BUYER">]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 264.56692913
          Width = 94.48818898
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBCetak."QNT">,MasterData1)]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 491.33858268
          Width = 113.38582677
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBCetak."SUBTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 359.05511811
          Width = 132.28346457
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 604.72440945
          Width = 132.28346457
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Width = 264.56692913
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 22.67718
        Top = 18.89765
        Visible = False
        Width = 740.409927
      end
      object ReportSummary1: TfrxReportSummary
        Height = 22.67718
        Top = 663.307515
        Width = 740.409927
      end
    end
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    FileName = 'C:\DOCUME~1\admin\LOCALS~1\Temp\fr48.tmp'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 280
    Top = 238
  end
  object Qudetail: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    Left = 296
    Top = 304
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = QuUpdatedbbeli
    Left = 328
    Top = 304
  end
  object DSLastPrices: TDataSource
    DataSet = QuLastPrices
    Left = 346
    Top = 512
  end
  object QuLastPrices: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <
      item
        Name = '0'
        DataType = ftString
        Size = 7
        Value = 'AC.B001'
      end
      item
        Name = '1'
        DataType = ftString
        Size = 6
        Value = 'T00054'
      end>
    SQL.Strings = (
      'Declare @Kodebrg varchar(30), @kodecust varchar(25)'
      'Select @Kodebrg=:0, @Kodecust=:1'
      
        'SELECT P.KODEBRG AS productid, P.namabrg,x.KODECUSTSUPP, supp.NA' +
        'MACUSTSUPP,x.TANGGAL,x.rownum,'
      '       x.Qnt,'
      '       Case when x.nosat=1 then p.SAT1 '
      '            when x.NOSAT=2 then p.SAT2'
      '            else '#39#39
      
        '       end Satuan, x.KODEVLS, x.KURS,COALESCE(x.price, 0) AS pri' +
        'ce,'
      
        '       ROW_NUMBER() over(PARTITION By P.kodebrg Order by P.kodeb' +
        'rg) as LineNum'
      'FROM dbo.DBBARANG p'
      
        'LEFT JOIN (SELECT pc.kodebrg,PO.TANGGAL, PO.KODECUST KODECUSTSUP' +
        'P,PO.NOBUKTI,PO.KODEVLS, PO.KURS, pc.Nosat,pc.QNT,'
      '                  pc.Harga Price,                  '
      
        '                  ROW_NUMBER() OVER(PARTITION BY pc.Kodebrg, PO.' +
        'Kodecust '
      
        '                                        ORDER BY PO.Tanggal DESC' +
        ') AS rownum'
      '             FROM dbo.DBSODET pc'
      
        '                  left Outer join dbo.DBSO PO on PO.NOBUKTI=pc.N' +
        'OBUKTI) x ON x.KODEBRG = p.KODEBRG AND x.rownum <=5'
      
        'left Outer join vwBrowsCust supp on supp.KODECUSTSUPP=x.KODECUST' +
        'SUPP'
      
        'where  P.KodeGrp in ('#39'BJ'#39','#39'BU'#39')  and P.Kodebrg=@Kodebrg and Supp' +
        '.KodecustSupp=@Kodecust'
      'Order by P.KODEBRG')
    Left = 374
    Top = 512
    object QuLastPricesproductid: TStringField
      FieldName = 'productid'
      Size = 25
    end
    object QuLastPricesnamabrg: TStringField
      FieldName = 'namabrg'
      Size = 100
    end
    object QuLastPricesKODECUSTSUPP: TStringField
      FieldName = 'KODECUSTSUPP'
      Size = 15
    end
    object QuLastPricesNAMACUSTSUPP: TStringField
      FieldName = 'NAMACUSTSUPP'
      Size = 100
    end
    object QuLastPricesTANGGAL: TDateTimeField
      FieldName = 'TANGGAL'
    end
    object QuLastPricesrownum: TLargeintField
      FieldName = 'rownum'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object QuLastPricesQnt: TBCDField
      FieldName = 'Qnt'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuLastPricesSatuan: TStringField
      FieldName = 'Satuan'
      ReadOnly = True
      Size = 5
    end
    object QuLastPricesKODEVLS: TStringField
      FieldName = 'KODEVLS'
      Size = 15
    end
    object QuLastPricesKURS: TBCDField
      FieldName = 'KURS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuLastPricesprice: TBCDField
      FieldName = 'price'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QuLastPricesLineNum: TLargeintField
      FieldName = 'LineNum'
      ReadOnly = True
      DisplayFormat = '0'
    end
  end
end
