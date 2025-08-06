object FrJualKasir: TFrJualKasir
  Left = 200
  Top = 22
  BorderStyle = bsNone
  Caption = 'Take Order'
  ClientHeight = 642
  ClientWidth = 1016
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 516
    Top = 41
    Width = 500
    Height = 601
    Align = alRight
    Color = 13673887
    TabOrder = 0
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 498
      Height = 229
      Align = alTop
      BevelOuter = bvNone
      Color = 13673887
      TabOrder = 0
      DesignSize = (
        498
        229)
      object Label3: TLabel
        Left = 8
        Top = 12
        Width = 59
        Height = 16
        Caption = 'Tanggal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5713963
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 8
        Top = 35
        Width = 63
        Height = 16
        Caption = 'No. Bukti'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5713963
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 328
        Top = 11
        Width = 57
        Height = 16
        Caption = 'No. Urut'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5713963
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label7: TLabel
        Left = 248
        Top = 11
        Width = 57
        Height = 16
        Caption = 'No. Urut'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 248
        Top = 35
        Width = 57
        Height = 16
        Anchors = [akLeft, akTop, akRight]
        Caption = 'No. Urut'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 8
        Top = 59
        Width = 66
        Height = 16
        Caption = 'Pemesan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5713963
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 8
        Top = 137
        Width = 49
        Height = 16
        Caption = 'Alamat'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5713963
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 8
        Top = 169
        Width = 59
        Height = 16
        Caption = 'Telepon'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5713963
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 240
        Top = 160
        Width = 63
        Height = 32
        Caption = 'Tanggal Ambil'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5713963
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object Label18: TLabel
        Left = 6
        Top = 108
        Width = 54
        Height = 16
        Caption = 'Counter'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5713963
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LnamaCounter: TLabel
        Left = 246
        Top = 108
        Width = 23
        Height = 16
        Caption = '[   ]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5713963
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 7
        Top = 189
        Width = 63
        Height = 32
        Caption = 'Tanggal Kirim'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5713963
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object Label20: TLabel
        Left = 240
        Top = 192
        Width = 35
        Height = 32
        Caption = 'Jam Kirim'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5713963
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object NoBukti: TEdit
        Left = 75
        Top = 32
        Width = 166
        Height = 22
        BevelOuter = bvNone
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5713963
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object NoUrut: TEdit
        Left = 387
        Top = 7
        Width = 38
        Height = 22
        BevelOuter = bvNone
        CharCase = ecUpperCase
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5713963
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 5
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Visible = False
        OnChange = NoUrutChange
      end
      object IsOrder: TCheckBox
        Left = 260
        Top = 59
        Width = 181
        Height = 17
        Caption = 'Pesanan ?'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnExit = IsOrderExit
      end
      object Pemesan: TEdit
        Left = 75
        Top = 54
        Width = 166
        Height = 28
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 50
        ParentFont = False
        TabOrder = 3
        OnExit = PemesanExit
      end
      object Alamat: TEdit
        Left = 75
        Top = 132
        Width = 326
        Height = 28
        CharCase = ecUpperCase
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 50
        ParentFont = False
        TabOrder = 6
        OnExit = PemesanExit
      end
      object Telepon: TEdit
        Left = 75
        Top = 162
        Width = 150
        Height = 28
        CharCase = ecUpperCase
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 50
        ParentFont = False
        TabOrder = 8
        OnExit = PemesanExit
      end
      object cbAmbil: TCheckBox
        Left = 8
        Top = 85
        Width = 249
        Height = 17
        Caption = 'Ambil di Counter?'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = cbAmbilClick
      end
      object Kodegdg: TEdit
        Left = 75
        Top = 103
        Width = 166
        Height = 28
        CharCase = ecUpperCase
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 50
        ParentFont = False
        TabOrder = 5
        OnEnter = KodegdgEnter
        OnExit = KodegdgExit
      end
      object JamKirim: TcxTimeEdit
        Left = 308
        Top = 190
        Width = 149
        Height = 24
        EditValue = 0
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        TabOrder = 7
      end
      object TANGGAL: TDateEdit
        Left = 75
        Top = 6
        Width = 107
        Height = 24
        CheckOnExit = True
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Anchors = [akTop, akRight]
        NumGlyphs = 2
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
      end
      object TgKirim: TDateEdit
        Left = 76
        Top = 194
        Width = 107
        Height = 24
        CheckOnExit = True
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Anchors = [akTop, akRight]
        NumGlyphs = 2
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
      end
      object TanggalAmbil: TDateEdit
        Left = 307
        Top = 166
        Width = 107
        Height = 24
        CheckOnExit = True
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Anchors = [akTop, akRight]
        NumGlyphs = 2
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
      end
    end
    object Panel12: TPanel
      Left = 1
      Top = 230
      Width = 498
      Height = 370
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel12'
      TabOrder = 1
      object Panel13: TPanel
        Left = 0
        Top = 213
        Width = 498
        Height = 157
        Align = alBottom
        BevelOuter = bvNone
        Color = 13673887
        TabOrder = 0
        object HapusBtn: TSpeedButton
          Left = 8
          Top = 10
          Width = 89
          Height = 74
          Caption = '&Hapus'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
            3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
            33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
            33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
            333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
            03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
            33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
            0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
            3333333337FFF7F3333333333000003333333333377777333333}
          Layout = blGlyphTop
          NumGlyphs = 2
          ParentFont = False
          OnClick = HapusBtnClick
        end
        object SpeedButton3: TSpeedButton
          Left = 110
          Top = 10
          Width = 83
          Height = 74
          Caption = '&Pembayaran'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000130B0000130B00001000000000000000000200001D7F
            090051711A002F2F90004F4FFF000D8C0E003A9247005AA55E00769C91000D77
            B7008E602E00B6BBB8008CC98C0090E0E000F1F8F10000000000BBB000000000
            0000BBB7D6DDDDDDDDD0BBB555722AAEDED0B75555555EDDEDD0B555655557AE
            DED0B555D5D555DE33D0BBB5D5C555DD43D0BBB5755557EEEEE0BB7555555BBB
            BBBBB7555555BBBBBBBBB55555BBBBBBBBBBB557B5B55BBBBBBBB55555555BBB
            BBBBB55555555BBBBBBBBB755557BBBBBBBBBBB7B7BBBBBBBBBB}
          Layout = blGlyphTop
          ParentFont = False
          OnClick = SpeedButton3Click
        end
        object SpeedButton1: TSpeedButton
          Left = 8
          Top = 122
          Width = 33
          Height = 33
          Hint = 'Lihat Transaksi'
          Enabled = False
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
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000005A5200
            0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000009CADADDEFF00
            5A52000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000009CADADDEFF00848400
            0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000009CADADDEFF008484000000C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0000000009CADADDEFF008484000000C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08484840000000000
            00000000000000848484000000005A52ADDEFF008484000000C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000848484ADBDADFFDE
            D6FFDED6ADBDAD848484000000003929003952000000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000ADBDADFFDED6FFDED6FFDE
            D6FFDED6FFDED6FFDED6ADBDAD000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0848484848484FFDED6FFDED6FFDED6FFBD
            ADFFBDADFFDED6FFDED6FFDED6848484848484C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000ADBDADFFDED6FFDED6FFBDADFFBD
            D6FFBDD6FFBDADFFDED6FFDED6ADBDAD000000C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFDED6FFDED6FFBDADFFBDD6FFBD
            D6FFBDD6FFBDD6FFBDADFFDED6FFDED6000000C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFDED6FFDED6FFBDADFFBDD6FFBD
            D6FFBDD6FFBDD6FFBDADFFDED6FFDED6000000C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000ADBDADFFDED6C0C0C0C0C0C0FFBD
            D6FFBDD6FFBDADFFDED6FFDED6ADBDAD000000C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0848484848484FFDED6FFDED6C0C0C0FFBD
            ADFFBDADFFDED6FFDED6FFDED6848484848484C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000ADBDADFFDED6FFDED6FFDE
            D6FFDED6FFDED6FFDED6ADBDAD000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000848484ADBDADFFDE
            D6FFDED6ADBDAD848484000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08484840000000000
            00000000000000848484C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
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
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 56
          Top = 121
          Width = 79
          Height = 33
          Caption = '&Koreksi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
            3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
            33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
            33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
            333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
            03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
            33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
            0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
            3333333337FFF7F3333333333000003333333333377777333333}
          NumGlyphs = 2
          ParentFont = False
          Visible = False
          OnClick = SpeedButton2Click
        end
        object SpeedButton4: TSpeedButton
          Left = 8
          Top = 88
          Width = 33
          Height = 33
          Hint = 'Toping Gratis'
          Caption = '---'
          ParentShowHint = False
          ShowHint = True
          Visible = False
          OnClick = SpeedButton4Click
        end
        object Label14: TLabel
          Left = 208
          Top = 40
          Width = 33
          Height = 23
          Caption = 'TAX'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 208
          Top = 72
          Width = 74
          Height = 23
          Caption = 'SERVICE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 208
          Top = 8
          Width = 41
          Height = 23
          Caption = 'Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 152
          Top = 120
          Width = 139
          Height = 23
          Caption = 'GRAND TOTAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Grandtotal2: TPBNumEdit
          Left = 288
          Top = 0
          Width = 173
          Height = 37
          Alignment = taRightJustify
          BorderStyle = bsNone
          Color = 13673887
          DisabledColor = 13673887
          Ctl3D = True
          Decimals = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -1
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumberFormat = Thousands
          OnChange = Grandtotal2Change
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object TotalTax: TPBNumEdit
          Left = 288
          Top = 40
          Width = 173
          Height = 37
          Alignment = taRightJustify
          BorderStyle = bsNone
          Color = 13673887
          DisabledColor = 13673887
          Ctl3D = True
          Decimals = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -1
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumberFormat = Thousands
          OnChange = Grandtotal2Change
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object TotalService: TPBNumEdit
          Left = 288
          Top = 72
          Width = 173
          Height = 37
          Alignment = taRightJustify
          BorderStyle = bsNone
          Color = 13673887
          DisabledColor = 13673887
          Ctl3D = True
          Decimals = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -1
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumberFormat = Thousands
          OnChange = Grandtotal2Change
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object GrandTotal: TPBNumEdit
          Left = 288
          Top = 112
          Width = 173
          Height = 37
          Alignment = taRightJustify
          BorderStyle = bsNone
          Color = 13673887
          DisabledColor = 13673887
          Ctl3D = True
          Decimals = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -1
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumberFormat = Thousands
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
      end
      object dxDBGrid2: TdxDBGrid
        Left = 0
        Top = 0
        Width = 498
        Height = 213
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'RecId'
        ShowSummaryFooter = True
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 1
        DataSource = DsMemDataKasir
        Filter.Criteria = {00000000}
        ScrollBars = ssHorizontal
        OnEdited = dxDBGrid2Edited
        object dxDBGrid2NamaMenu: TdxDBGridMaskColumn
          Caption = 'Nama Menu'
          DisableEditor = True
          HeaderAlignment = taCenter
          ReadOnly = True
          Width = 175
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NamaMenu'
        end
        object dxDBGrid2Keterangan: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Width = 150
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Keterangan'
        end
        object dxDBGrid2Qnt: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Width = 50
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qnt'
        end
        object dxDBGrid2HrgNetto: TdxDBGridMaskColumn
          Caption = 'HARGA'
          DisableEditor = True
          HeaderAlignment = taCenter
          ReadOnly = True
          Visible = False
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'HrgNetto'
        end
        object dxDBGrid2SubTotal: TdxDBGridMaskColumn
          Caption = 'Jumlah'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 103
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SubTotal'
          SummaryFooterType = cstSum
          SummaryFooterField = 'SubTotal'
          SummaryFooterFormat = ',0.00'
        end
        object dxDBGrid2TaxPPn: TdxDBGridMaskColumn
          Visible = False
          Width = 45
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TaxPPn'
          SummaryFooterType = cstSum
          SummaryFooterField = 'TaxPPn'
        end
        object dxDBGrid2TaxService: TdxDBGridMaskColumn
          Visible = False
          Width = 62
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TaxService'
          SummaryFooterType = cstSum
          SummaryFooterField = 'TaxService'
        end
        object dxDBGrid2NoBukti: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NoBukti'
        end
        object dxDBGrid2Urut: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Urut'
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1016
    Height = 41
    Align = alTop
    Caption = 
      'Chong Ho Restaurant                                             ' +
      '                                                                ' +
      '                                                                ' +
      '                                              '
    Color = 5713963
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 516
    Height = 601
    Align = alClient
    Color = clWhite
    TabOrder = 2
    object pageOrder: TdxPageControl
      Left = 1
      Top = 65
      Width = 514
      Height = 535
      ActivePage = sheetFBCategories
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HideButtons = True
      HotTrack = False
      MultiLine = False
      OwnerDraw = False
      ParentFont = False
      RaggedRight = False
      ScrollOpposite = False
      TabHeight = 0
      TabOrder = 0
      TabPosition = dxtpTop
      TabWidth = 0
      object sheetFBCategories: TdxTabSheet
        Caption = 'sheetFBCategories'
        object Panel25: TPanel
          Left = 0
          Top = 0
          Width = 514
          Height = 535
          Align = alClient
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Panel29: TPanel
            Left = 0
            Top = 0
            Width = 5
            Height = 520
            Align = alLeft
            BevelOuter = bvNone
            Color = 13673887
            TabOrder = 0
          end
          object Panel30: TPanel
            Left = 0
            Top = 520
            Width = 514
            Height = 15
            Align = alBottom
            BevelOuter = bvNone
            Color = 13673887
            TabOrder = 1
          end
          object Panel28: TPanel
            Left = 5
            Top = 0
            Width = 509
            Height = 520
            Align = alClient
            BevelInner = bvLowered
            TabOrder = 2
            object Panel32: TPanel
              Left = 2
              Top = 2
              Width = 505
              Height = 210
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Label5: TLabel
                Left = 0
                Top = 0
                Width = 505
                Height = 18
                Align = alTop
                Caption = '   GROUP'
                Color = 13673887
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold, fsUnderline]
                ParentColor = False
                ParentFont = False
              end
              object Panel8: TPanel
                Left = 457
                Top = 18
                Width = 48
                Height = 192
                Align = alRight
                BevelOuter = bvNone
                Color = 13673887
                TabOrder = 0
                OnResize = Panel39Resize
                object SpeedButton5: TSpeedButton
                  Left = 0
                  Top = 0
                  Width = 46
                  Height = 46
                  Flat = True
                  Glyph.Data = {
                    42080000424D4208000000000000420000002800000020000000200000000100
                    10000300000000080000C30E0000C30E00000000000000000000007C0000E003
                    00001F0000001F7C1F7C1F7C5E793D77FD77FF7FFF7FFF7FFF7FFF7FFF7FFF7F
                    FF7FFF7FFF7FFF7FFF7FFF7FFE7FFF7FFF7FFF7FFF7FFF7FFF7FFE773E735E75
                    1F7C1F7C1F7C1F7C1F7CFF7C1E763D679D639E677F677E677E677D677D677D67
                    7E677E677E677E677E677D677D677E679E637E637D677E679E679E5F3E631E72
                    FF7C1F7C1F7C1F7CDF7CDF7A9E63FC46BC367B327C2E9C327C327B329B329B32
                    9C329C329C327C327C327B2E7B2E7C329C329C327B327C329C32BC36FC427E5F
                    BF76DF781F7C5E751E769E67BC47BC2E3B1E3B1E3B1A3B1A3B1A3B1A3B1A3B1A
                    3B1A3B1E3B1E3B1E3B1A3B1A3B1A3B1A3B1A3B1A3B1A3B1E3B1E3B1EBC2EBC43
                    7E631E725E793E6F3D6B3D4FDC3A7B2A5B265B2A5B265B265B265B265B265B26
                    5B265B265B265B265B265B225B225B225B265B265B265B2A5B265B267B2ADC36
                    1D4B3E675E73FD73BD67FC425C2A7B2A7C267C2E7B2E7B2A7B2A7B2A7B2A7B2A
                    7B2A7B2A7B2A7B2A7B2A7B2A7B267B267B2A7B2A7C2A7C2E7B2A7B267B2A5B26
                    DC3ABE63FE77FF7B9E67DC3A5B267C2A7C2E7B2E7B2E7B2E7B2E7C2E7C2E7C2E
                    7C2E7B2E7B2A7B2A7B2A7C2E7C2E7C2A7C2A7C2A7C2A9C2E7C2E7C2E7B2A5B22
                    BC3A9E67FF7FFF7F9E6BDC3A5B267C2E7C2E7B2E7B2E7B2E7C2E9C2E7C2E7C2E
                    9C2E9B2E7B2E9C2E9C2E9C2E7C2E7C2E7C2E7B2A7B2E9C2E9C2E9C2E9C2E5B26
                    BC3A7E6BFF7FFF7F9E67DC3E5B2A7B2E7B2E9B2E9B2E7B329C329C2E9C2E9C2E
                    9C329B2E9B2E9C329C329C329C2E7C2E9B2E7B2E7B2E9B2E9B2E9C329C2E7B2A
                    DC3E9E67FF7FFF7F9E67DC3E7B2A9B2EBB329B367B2E7B2A7C2E9C369C329C32
                    9C329B329C329C329C329C329C327C2E7B267B2A9B369B369B329C329C327B2A
                    DC3E9E67FF7BFE7F9E67DC3E9C2EBC32BC32BC36BC36DC3ABC36BC369C329C32
                    9B329B32BC36BC369C329C329C32BC369B36BB36BC369C369B369B369C329C2E
                    DD429F6BFF7BFE7BBE6BFC429C2EBC369C2E9C2E1D4F7D631D4B7C2E9C2EBC36
                    BB369B32BC36BC36BC367B327C2AFD467E631D4F9C2E9C2EBC36BC369C369C2E
                    DC429E6BFF7BFE7BBE6BFC429C32BC36BC36DD3E9E67FE7F7E67BC3A9C32BC36
                    BC36BC36BC36BC36BC369C32BC365E5FFF7F9F6BDD42BC36BC36BC36BC369C32
                    DC429E6BFF7FFF7BBE6BFC467B2E9B361D4FBE6FFF7FFF7FDF7B7E63DC427B2A
                    9B32BC3ABC3ABC369C2EDC427D5FDF73FF7FFF7B9E6F3E53BD36BC36BC369C32
                    DD429E6BFE7FFF7FBF6BFC467B2EBB363D57DE77FF7FFF7FFF7FFF7B5E5FDC42
                    BC36BC369C36BC36DD3E7E5FFF7BFF7FFF7FFF7FDE7B5E5BBD3ABC36DC3ABC36
                    FE469F6FFF7FFF7F9E6BFC46BC36DC3ADC423D4F9E6BFF7FFF7FFF7FDF777E67
                    FD467B2A9C2AFC427E63DF77FF7FFF7FFF7FBE6B3D53DC46DC3EDC3EDC3ABC36
                    FD46BF6FFF7FFF7FBE6FFC46BC36DC3EBC36BC363D53BE6FFF7BFF7FFF7FFF7F
                    7E5FFC42FD425D5BDE7BFF7FFF7FFF7BBE6F3D53BC36BC36BC3EDC3EDC3EBC36
                    FC4ABE6FFF7FFF7FBE6FFC4ABC3ADC3EDC3ABC3ADC3AFD4ABE6BFF7FFF7FFF7F
                    DE77BF6FBF6FDE77FF7FFF7FFF7FBF6F1C4FDC3ABC3ABC3ABC3EDC3EDC3EBC3A
                    FC4ABE6BFF7BFF7FBE6F1C4FDC3ADC3EDC42DC3EBC36BC363D539E6FDF7BFF7F
                    FF7FFF7FFF7FFF7FFF7FFF7BBF6F3D53BC3ABC36DC3EDC42DC3EDC42DC42BC3A
                    FC4A9E6BFF7BFF7FBE6F1D4FDC3EDC42DC42DC42DC3EDC3EDC3E1E4BBF6FFF7F
                    FF7FFF7FFF7FFF7FFF7FBF6F1D4FDC3EDC3EDC42FD42DC42DC42DC42FD42DC3E
                    1C4BBE6BFF7BFF7FBF6F1D4FDC3EFC42FC46FC42FC42FC42BC3ADD3E3E57BE6F
                    FF7FFF7FFF7FFF7FBE6F5D57DC3EBC3ADC42FC46FC46FC42DC42FC46FD46DC3E
                    1E4FBE6FFF7FFF7FBF6F3D53DC42FC46FC46FC46FC46FC46DC46FD46DD461D53
                    BE73FF7FFF7FDE773D57DC46DD42DC46FC4AFC46FC46FC46FC46FC46FC46DC42
                    3D4FBE6FFF7FFF7FBE6F3D53FC46FD4AFD4AFD4AFC4AFC4AFC4AFC46DC42FD46
                    5D5B9E679F6B7D5FFC4ADC42FD4AFD4AFD4AFD4AFD4AFC4AFC4AFC4A1D4BFC46
                    3D4FBD6FFF7FFE7FBE6F3D57FC46FD4AFD4AFD4A1D4F1D4FFC4AFC4AFD4A1D4F
                    1D4F1D4B1D4B1D4B1D4F1D4F1D4B1D4B1D4B1D4F1D4F1D4B1D4B1D4B1D4BFD46
                    3D53BE6FFF7FFE7FBE6F3D53FD461D4F1D4F1D4F1D4F1D4F1D4F1C4B1D4F1D4F
                    1D4BFD4AFD4A1D4B1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4FFD46
                    3D53BE6FFF7FFF7FDE735D571D4B1D4F1D4F1D4F1D4F1D4F1D4F1C4F1D4F1D4F
                    1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4FFD4A
                    3D57BF73FF7FFE77FE739D5F3D531D4F1D4F1D4F1D531D4F1D531D531D531D53
                    1D531D531D531D533D533D531D531D531D531D531D531D531D531D4F1D4F1D53
                    7D5FFE6FFE775E737E739E6B7D5F3D571D531C531D533D531D531D533D533D53
                    1D531D531D533D533D533D531D531D533D531D531D533D533D533D533D577D5B
                    9D677E735E775F793F7ADE73FD677D5B1D571D4F1D4F1D4F1D4F1D531D531D53
                    1D531D531D531C531D531D531D4F1D531D531C4F1C4F1D4F1D533D577D5BFE67
                    BE733F7A5F791F7CDF7CDF7EBE739D6B5D5F5D5B5D5B5D5B5D5F5D5B5D5B5D5B
                    5D5B5D5B5D5F5E5B5D5B5D5B5D5B5E5F5D5F5C5B5C5B5D5B5D5F7D637D6BBE73
                    DF7EDF7C1F7C1F7C1F7CFF7C3E7A5E73DE6FDF73BF73BE77DF73BF73BE73BE73
                    BF73BF73BE77BE73BE73BF73BF73BE77BE77BE77BE73BF77DF77DE737E733F7A
                    FF7C1F7C1F7C1F7C1F7C1F7C5F795E77FE77FF7FFF7FFF7FFF7FFF7BFF7FFF7F
                    FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFE775E775F79
                    1F7C1F7C1F7C}
                  OnClick = btUpGroupClick
                end
                object SpeedButton6: TSpeedButton
                  Left = 0
                  Top = 146
                  Width = 46
                  Height = 46
                  Flat = True
                  Glyph.Data = {
                    42080000424D4208000000000000420000002800000020000000200000000100
                    10000300000000080000C30E0000C30E00000000000000000000007C0000E003
                    00001F0000001F7C1F7C1F7C5F795E77FE77FF7FFF7FFF7FFF7FFF7FFF7FFF7F
                    FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7BFF7FFF7FFF7FFF7FFE775E775F79
                    1F7C1F7C1F7C1F7C1F7CFF7C3F7A7E73DE73DF77BF77BE73BE77BE77BE77BF73
                    BF73BE73BE73BE77BF73BF73BE73BE73BF73DF73BE77BF73DF73DE6F5E733E7A
                    FF7C1F7C1F7C1F7CDF7CDF7EBE737D6B7D635D5F5D5B5C5B5C5B5D5F5E5F5D5B
                    5D5B5D5B5E5B5D5F5D5B5D5B5D5B5D5B5D5B5D5F5D5B5D5B5D5B5D5F9D6BBE73
                    DF7EDF7C1F7C5F793F7ABE73FE677D5B3D571D531D4F1C4F1C4F1D531D531D4F
                    1D531D531C531D531D531D531D531D531D531D4F1D4F1D4F1D4F1D577D5BFD67
                    DE733F7A5F795E777E739D677D5B3D573D533D533D531D531D533D531D531D53
                    3D533D533D531D531D531D533D533D531D531D533D531D531C531D533D577D5F
                    9E6B7E735E73FE77FE6F7D5F1D531D4F1D4F1D531D531D531D531D531D531D53
                    3D533D531D531D531D531D531D531D531D531D531D4F1D531D4F1D4F1D4F3D53
                    9D5FFE73FE77FF7FBF733D57FD4A1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F
                    1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1C4F1D4F1D4F1D4F1D4F1D4F1D4F1D4B
                    5D57DE73FF7FFF7FBE6F3D53FD461D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F
                    1D4F1D4F1D4BFD4AFD4A1D4B1D4F1D4F1C4B1D4F1D4F1D4F1D4F1D4F1D4FFD46
                    3D53BE6FFE7FFF7FBE6F3D53FD461D4B1D4B1D4B1D4B1D4F1D4F1D4B1D4B1D4B
                    1D4F1D4F1D4B1D4B1D4B1D4F1D4FFD4AFC4AFC4A1D4F1D4FFD4AFD4AFD4AFC46
                    3D57BE6FFE7FFF7FBD6F3D4FFC461D4BFC4AFC4AFC4AFD4AFD4AFD4AFD4AFD4A
                    DC42FC4A7D5F9F6B9E675D5BFD46DC42FC46FC4AFC4AFC4AFD4AFD4AFD4AFC46
                    3D53BE6FFF7FFF7FBE6F3D4FDC42FC46FC46FC46FC46FC46FC46FC4ADC46DD42
                    DC463D57DE77FF7FFF7FBE731D53DD46FD46DC46FC46FC46FC46FC46FC46DC42
                    3D53BF6FFF7FFF7FBE6F1E4FDC3EFD46FC46DC42FC42FC46FC46DC42BC3ADC3E
                    5D57BE6FFF7FFF7FFF7FFF7FBE6F3E57DD3EBC3AFC42FC42FC42FC46FC42DC3E
                    1D4FBF6FFF7FFF7BBE6B1C4BDC3EFD42DC42DC42DC42FD42DC42DC3EDC3E1D4F
                    BF6FFF7FFF7FFF7FFF7FFF7FFF7FBF6F1E4BDC3EDC3EDC3EDC42DC42DC42DC3E
                    1D4FBE6FFF7FFF7B9E6BFC4ABC3ADC42DC42DC3EDC42DC3EBC36BC3A3D53BF6F
                    FF7BFF7FFF7FFF7FFF7FFF7FFF7FDF7B9E6F3D53BC36BC36DC3EDC42DC3EDC3A
                    1C4FBE6FFF7FFF7BBE6BFC4ABC3ADC3EDC3EBC3EBC3ABC3ADC3A1C4FBF6FFF7F
                    FF7FFF7FDE77BF6FBF6FDE77FF7FFF7FFF7FBE6BFD4ADC3ABC3ADC3ADC3EBC3A
                    FC4ABE6FFF7FFF7FBE6FFC4ABC36DC3EDC3EBC3EBC36BC363D53BE6FFF7BFF7F
                    FF7FDE7B5D5BFD42FC427E5FFF7FFF7FFF7FFF7BBE6F3D53BC36BC36DC3EBC36
                    FC46BE6FFF7FFF7FBF6FFD46BC36DC3ADC3EDC3EDC463D53BE6BFF7FFF7FFF7F
                    DF777E63FC429C2A7B2AFD467E67DF77FF7FFF7FFF7F9E6B3D4FDC42DC3ABC36
                    FC469E6BFF7FFF7F9F6FFE46BC36DC3ABC36BD3A5E5BDE7BFF7FFF7FFF7FFF7B
                    7E5FDD3EBC369C36BC36BC36DC425E5FFF7BFF7FFF7FFF7FDE773D57BB367B2E
                    FC46BF6BFF7FFE7F9E6BDD429C32BC36BC36BD363E539E6FFF7BFF7FDF737D5F
                    DC429C2EBC36BC3ABC3A9B327B2ADC427E63DF7BFF7FFF7FBE6F1D4F9B367B2E
                    FC46BE6BFF7BFF7F9E6BDC429C32BC36BC36BC36BC36DD429F6BFF7F5E5FBC36
                    9C32BC36BC36BC36BC36BC36BC369C32BC3A7E67FE7F9E67DD3EBC36BC369C32
                    FC42BE6BFE7BFF7B9E6BDC429C2E9C36BC36BC369C2E9C2E1D4F7E63FD467C2A
                    7B32BC36BC36BC369B32BB36BC369C2E7C2E1D4B7D631D4F9C2E9C2EBC369C2E
                    FC42BE6BFE7BFF7B9F6BDD429C2E9C329B369B369C36BC36BB369B36BC369C32
                    9C329C32BC36BC369B329B329C329C32BC36BC36DC3ABC36BC36BC32BC329C2E
                    DC3E9E67FE7FFF7B9E67DC3E7B2A9C329C329B329B369B367B2A7B267C2E9C32
                    9C329C329C329C329B329C329C329C329C367C2E7B2A7B2E9B36BB329B2E7B2A
                    DC3E9E67FF7FFF7F9E67DC3E7B2A9C2E9C329B2E9B2E7B2E7B2E9B2E7C2E9C2E
                    9C329C329C329B2E9B2E9C329C2E9C2E9C2E9C327B329B2E9B2E7B2E7B2E5B2A
                    DC3E9E67FF7FFF7F7E6BBC3A5B269C2E9C2E9C2E9C2E7B2E7B2A7C2E7C2E7C2E
                    9C2E9C2E9C2E7B2E9B2E9C2E7C2E7C2E9C2E7C2E7B2E7B2E7B2E7C2E7C2E5B26
                    DC3A9E6BFF7FFF7F9E67BC3A5B227B2A7C2E7C2E9C2E7C2A7C2A7C2A7C2A7C2E
                    7C2E7B2A7B2A7B2A7B2E7C2E7C2E7C2E7C2E7B2E7B2E7B2E7B2E7C2E7C2A5B26
                    DC3A9E67FF7BFE77BE63DC3A5B267B2A7B267B2A7C2E7C2A7B2A7B2A7B267B26
                    7B2A7B2A7B2A7B2A7B2A7B2A7B2A7B2A7B2A7B2A7B2A7B2E7C2E7C267B2A5C2A
                    FC42BD67FD735E733E671D4BDC367B2A5B265B265B2A5B265B265B265B225B22
                    5B225B265B265B265B265B265B265B265B265B265B265B265B2A5B267B2ADC3A
                    3D4F3D6B3E6F5E791E727E63BC43BC2E3B1E3B1E3B1E3B1A3B1A3B1A3B1A3B1A
                    3B1A3B1A3B1E3B1E3B1E3B1A3B1A3B1A3B1A3B1A3B1A3B1A3B1E3B1EBC2EBC47
                    9E671E765E751F7CDF78BF767E5FFC42BC369C327C327B329C329C327C327B2E
                    7B2E7C327C329C329C329C329B329B327B327C329C327C2E7B32BC36FC469E63
                    DF7ADF7C1F7C1F7C1F7CFF7C1E723E639E5F9E677E677D677E639E637E677D67
                    7D677E677E677E677E677E677D677D677D677E677E677F679E679D633D671E76
                    FF7C1F7C1F7C1F7C1F7C1F7C5E753E73FE77FF7FFF7FFF7FFF7FFF7FFF7FFE7F
                    FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFD773D775E79
                    1F7C1F7C1F7C}
                  OnClick = btDownGroupClick
                end
              end
              object Panel9: TPanel
                Left = 0
                Top = 18
                Width = 457
                Height = 192
                Align = alClient
                Color = 15792633
                Locked = True
                TabOrder = 1
              end
            end
            object Panel33: TPanel
              Left = 2
              Top = 212
              Width = 505
              Height = 88
              Align = alClient
              TabOrder = 1
              object Label4: TLabel
                Left = 1
                Top = 1
                Width = 503
                Height = 18
                Align = alTop
                Caption = '   MENU'
                Color = 13673887
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold, fsUnderline]
                ParentColor = False
                ParentFont = False
              end
              object Panel11: TPanel
                Left = 457
                Top = 19
                Width = 47
                Height = 68
                Align = alRight
                BevelOuter = bvNone
                Color = 13673887
                TabOrder = 0
                OnResize = Panel39Resize
                object Panel20: TPanel
                  Left = 0
                  Top = 0
                  Width = 47
                  Height = 46
                  Align = alTop
                  Color = 13673887
                  TabOrder = 0
                  object SpeedButton7: TSpeedButton
                    Left = 0
                    Top = -1
                    Width = 46
                    Height = 46
                    Flat = True
                    Glyph.Data = {
                      42080000424D4208000000000000420000002800000020000000200000000100
                      10000300000000080000C30E0000C30E00000000000000000000007C0000E003
                      00001F0000001F7C1F7C1F7C5E793D77FD77FF7FFF7FFF7FFF7FFF7FFF7FFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFE7FFF7FFF7FFF7FFF7FFF7FFF7FFE773E735E75
                      1F7C1F7C1F7C1F7C1F7CFF7C1E763D679D639E677F677E677E677D677D677D67
                      7E677E677E677E677E677D677D677E679E637E637D677E679E679E5F3E631E72
                      FF7C1F7C1F7C1F7CDF7CDF7A9E63FC46BC367B327C2E9C327C327B329B329B32
                      9C329C329C327C327C327B2E7B2E7C329C329C327B327C329C32BC36FC427E5F
                      BF76DF781F7C5E751E769E67BC47BC2E3B1E3B1E3B1A3B1A3B1A3B1A3B1A3B1A
                      3B1A3B1E3B1E3B1E3B1A3B1A3B1A3B1A3B1A3B1A3B1A3B1E3B1E3B1EBC2EBC43
                      7E631E725E793E6F3D6B3D4FDC3A7B2A5B265B2A5B265B265B265B265B265B26
                      5B265B265B265B265B265B225B225B225B265B265B265B2A5B265B267B2ADC36
                      1D4B3E675E73FD73BD67FC425C2A7B2A7C267C2E7B2E7B2A7B2A7B2A7B2A7B2A
                      7B2A7B2A7B2A7B2A7B2A7B2A7B267B267B2A7B2A7C2A7C2E7B2A7B267B2A5B26
                      DC3ABE63FE77FF7B9E67DC3A5B267C2A7C2E7B2E7B2E7B2E7B2E7C2E7C2E7C2E
                      7C2E7B2E7B2A7B2A7B2A7C2E7C2E7C2A7C2A7C2A7C2A9C2E7C2E7C2E7B2A5B22
                      BC3A9E67FF7FFF7F9E6BDC3A5B267C2E7C2E7B2E7B2E7B2E7C2E9C2E7C2E7C2E
                      9C2E9B2E7B2E9C2E9C2E9C2E7C2E7C2E7C2E7B2A7B2E9C2E9C2E9C2E9C2E5B26
                      BC3A7E6BFF7FFF7F9E67DC3E5B2A7B2E7B2E9B2E9B2E7B329C329C2E9C2E9C2E
                      9C329B2E9B2E9C329C329C329C2E7C2E9B2E7B2E7B2E9B2E9B2E9C329C2E7B2A
                      DC3E9E67FF7FFF7F9E67DC3E7B2A9B2EBB329B367B2E7B2A7C2E9C369C329C32
                      9C329B329C329C329C329C329C327C2E7B267B2A9B369B369B329C329C327B2A
                      DC3E9E67FF7BFE7F9E67DC3E9C2EBC32BC32BC36BC36DC3ABC36BC369C329C32
                      9B329B32BC36BC369C329C329C32BC369B36BB36BC369C369B369B369C329C2E
                      DD429F6BFF7BFE7BBE6BFC429C2EBC369C2E9C2E1D4F7D631D4B7C2E9C2EBC36
                      BB369B32BC36BC36BC367B327C2AFD467E631D4F9C2E9C2EBC36BC369C369C2E
                      DC429E6BFF7BFE7BBE6BFC429C32BC36BC36DD3E9E67FE7F7E67BC3A9C32BC36
                      BC36BC36BC36BC36BC369C32BC365E5FFF7F9F6BDD42BC36BC36BC36BC369C32
                      DC429E6BFF7FFF7BBE6BFC467B2E9B361D4FBE6FFF7FFF7FDF7B7E63DC427B2A
                      9B32BC3ABC3ABC369C2EDC427D5FDF73FF7FFF7B9E6F3E53BD36BC36BC369C32
                      DD429E6BFE7FFF7FBF6BFC467B2EBB363D57DE77FF7FFF7FFF7FFF7B5E5FDC42
                      BC36BC369C36BC36DD3E7E5FFF7BFF7FFF7FFF7FDE7B5E5BBD3ABC36DC3ABC36
                      FE469F6FFF7FFF7F9E6BFC46BC36DC3ADC423D4F9E6BFF7FFF7FFF7FDF777E67
                      FD467B2A9C2AFC427E63DF77FF7FFF7FFF7FBE6B3D53DC46DC3EDC3EDC3ABC36
                      FD46BF6FFF7FFF7FBE6FFC46BC36DC3EBC36BC363D53BE6FFF7BFF7FFF7FFF7F
                      7E5FFC42FD425D5BDE7BFF7FFF7FFF7BBE6F3D53BC36BC36BC3EDC3EDC3EBC36
                      FC4ABE6FFF7FFF7FBE6FFC4ABC3ADC3EDC3ABC3ADC3AFD4ABE6BFF7FFF7FFF7F
                      DE77BF6FBF6FDE77FF7FFF7FFF7FBF6F1C4FDC3ABC3ABC3ABC3EDC3EDC3EBC3A
                      FC4ABE6BFF7BFF7FBE6F1C4FDC3ADC3EDC42DC3EBC36BC363D539E6FDF7BFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7BBF6F3D53BC3ABC36DC3EDC42DC3EDC42DC42BC3A
                      FC4A9E6BFF7BFF7FBE6F1D4FDC3EDC42DC42DC42DC3EDC3EDC3E1E4BBF6FFF7F
                      FF7FFF7FFF7FFF7FFF7FBF6F1D4FDC3EDC3EDC42FD42DC42DC42DC42FD42DC3E
                      1C4BBE6BFF7BFF7FBF6F1D4FDC3EFC42FC46FC42FC42FC42BC3ADD3E3E57BE6F
                      FF7FFF7FFF7FFF7FBE6F5D57DC3EBC3ADC42FC46FC46FC42DC42FC46FD46DC3E
                      1E4FBE6FFF7FFF7FBF6F3D53DC42FC46FC46FC46FC46FC46DC46FD46DD461D53
                      BE73FF7FFF7FDE773D57DC46DD42DC46FC4AFC46FC46FC46FC46FC46FC46DC42
                      3D4FBE6FFF7FFF7FBE6F3D53FC46FD4AFD4AFD4AFC4AFC4AFC4AFC46DC42FD46
                      5D5B9E679F6B7D5FFC4ADC42FD4AFD4AFD4AFD4AFD4AFC4AFC4AFC4A1D4BFC46
                      3D4FBD6FFF7FFE7FBE6F3D57FC46FD4AFD4AFD4A1D4F1D4FFC4AFC4AFD4A1D4F
                      1D4F1D4B1D4B1D4B1D4F1D4F1D4B1D4B1D4B1D4F1D4F1D4B1D4B1D4B1D4BFD46
                      3D53BE6FFF7FFE7FBE6F3D53FD461D4F1D4F1D4F1D4F1D4F1D4F1C4B1D4F1D4F
                      1D4BFD4AFD4A1D4B1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4FFD46
                      3D53BE6FFF7FFF7FDE735D571D4B1D4F1D4F1D4F1D4F1D4F1D4F1C4F1D4F1D4F
                      1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4FFD4A
                      3D57BF73FF7FFE77FE739D5F3D531D4F1D4F1D4F1D531D4F1D531D531D531D53
                      1D531D531D531D533D533D531D531D531D531D531D531D531D531D4F1D4F1D53
                      7D5FFE6FFE775E737E739E6B7D5F3D571D531C531D533D531D531D533D533D53
                      1D531D531D533D533D533D531D531D533D531D531D533D533D533D533D577D5B
                      9D677E735E775F793F7ADE73FD677D5B1D571D4F1D4F1D4F1D4F1D531D531D53
                      1D531D531D531C531D531D531D4F1D531D531C4F1C4F1D4F1D533D577D5BFE67
                      BE733F7A5F791F7CDF7CDF7EBE739D6B5D5F5D5B5D5B5D5B5D5F5D5B5D5B5D5B
                      5D5B5D5B5D5F5E5B5D5B5D5B5D5B5E5F5D5F5C5B5C5B5D5B5D5F7D637D6BBE73
                      DF7EDF7C1F7C1F7C1F7CFF7C3E7A5E73DE6FDF73BF73BE77DF73BF73BE73BE73
                      BF73BF73BE77BE73BE73BF73BF73BE77BE77BE77BE73BF77DF77DE737E733F7A
                      FF7C1F7C1F7C1F7C1F7C1F7C5F795E77FE77FF7FFF7FFF7FFF7FFF7BFF7FFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFE775E775F79
                      1F7C1F7C1F7C}
                    OnClick = btUpMenuClick
                  end
                end
                object Panel21: TPanel
                  Left = 0
                  Top = 22
                  Width = 47
                  Height = 46
                  Align = alBottom
                  Color = 13673887
                  TabOrder = 1
                  object SpeedButton8: TSpeedButton
                    Left = 0
                    Top = 0
                    Width = 46
                    Height = 46
                    Flat = True
                    Glyph.Data = {
                      42080000424D4208000000000000420000002800000020000000200000000100
                      10000300000000080000C30E0000C30E00000000000000000000007C0000E003
                      00001F0000001F7C1F7C1F7C5F795E77FE77FF7FFF7FFF7FFF7FFF7FFF7FFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7BFF7FFF7FFF7FFF7FFE775E775F79
                      1F7C1F7C1F7C1F7C1F7CFF7C3F7A7E73DE73DF77BF77BE73BE77BE77BE77BF73
                      BF73BE73BE73BE77BF73BF73BE73BE73BF73DF73BE77BF73DF73DE6F5E733E7A
                      FF7C1F7C1F7C1F7CDF7CDF7EBE737D6B7D635D5F5D5B5C5B5C5B5D5F5E5F5D5B
                      5D5B5D5B5E5B5D5F5D5B5D5B5D5B5D5B5D5B5D5F5D5B5D5B5D5B5D5F9D6BBE73
                      DF7EDF7C1F7C5F793F7ABE73FE677D5B3D571D531D4F1C4F1C4F1D531D531D4F
                      1D531D531C531D531D531D531D531D531D531D4F1D4F1D4F1D4F1D577D5BFD67
                      DE733F7A5F795E777E739D677D5B3D573D533D533D531D531D533D531D531D53
                      3D533D533D531D531D531D533D533D531D531D533D531D531C531D533D577D5F
                      9E6B7E735E73FE77FE6F7D5F1D531D4F1D4F1D531D531D531D531D531D531D53
                      3D533D531D531D531D531D531D531D531D531D531D4F1D531D4F1D4F1D4F3D53
                      9D5FFE73FE77FF7FBF733D57FD4A1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F
                      1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1C4F1D4F1D4F1D4F1D4F1D4F1D4F1D4B
                      5D57DE73FF7FFF7FBE6F3D53FD461D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F
                      1D4F1D4F1D4BFD4AFD4A1D4B1D4F1D4F1C4B1D4F1D4F1D4F1D4F1D4F1D4FFD46
                      3D53BE6FFE7FFF7FBE6F3D53FD461D4B1D4B1D4B1D4B1D4F1D4F1D4B1D4B1D4B
                      1D4F1D4F1D4B1D4B1D4B1D4F1D4FFD4AFC4AFC4A1D4F1D4FFD4AFD4AFD4AFC46
                      3D57BE6FFE7FFF7FBD6F3D4FFC461D4BFC4AFC4AFC4AFD4AFD4AFD4AFD4AFD4A
                      DC42FC4A7D5F9F6B9E675D5BFD46DC42FC46FC4AFC4AFC4AFD4AFD4AFD4AFC46
                      3D53BE6FFF7FFF7FBE6F3D4FDC42FC46FC46FC46FC46FC46FC46FC4ADC46DD42
                      DC463D57DE77FF7FFF7FBE731D53DD46FD46DC46FC46FC46FC46FC46FC46DC42
                      3D53BF6FFF7FFF7FBE6F1E4FDC3EFD46FC46DC42FC42FC46FC46DC42BC3ADC3E
                      5D57BE6FFF7FFF7FFF7FFF7FBE6F3E57DD3EBC3AFC42FC42FC42FC46FC42DC3E
                      1D4FBF6FFF7FFF7BBE6B1C4BDC3EFD42DC42DC42DC42FD42DC42DC3EDC3E1D4F
                      BF6FFF7FFF7FFF7FFF7FFF7FFF7FBF6F1E4BDC3EDC3EDC3EDC42DC42DC42DC3E
                      1D4FBE6FFF7FFF7B9E6BFC4ABC3ADC42DC42DC3EDC42DC3EBC36BC3A3D53BF6F
                      FF7BFF7FFF7FFF7FFF7FFF7FFF7FDF7B9E6F3D53BC36BC36DC3EDC42DC3EDC3A
                      1C4FBE6FFF7FFF7BBE6BFC4ABC3ADC3EDC3EBC3EBC3ABC3ADC3A1C4FBF6FFF7F
                      FF7FFF7FDE77BF6FBF6FDE77FF7FFF7FFF7FBE6BFD4ADC3ABC3ADC3ADC3EBC3A
                      FC4ABE6FFF7FFF7FBE6FFC4ABC36DC3EDC3EBC3EBC36BC363D53BE6FFF7BFF7F
                      FF7FDE7B5D5BFD42FC427E5FFF7FFF7FFF7FFF7BBE6F3D53BC36BC36DC3EBC36
                      FC46BE6FFF7FFF7FBF6FFD46BC36DC3ADC3EDC3EDC463D53BE6BFF7FFF7FFF7F
                      DF777E63FC429C2A7B2AFD467E67DF77FF7FFF7FFF7F9E6B3D4FDC42DC3ABC36
                      FC469E6BFF7FFF7F9F6FFE46BC36DC3ABC36BD3A5E5BDE7BFF7FFF7FFF7FFF7B
                      7E5FDD3EBC369C36BC36BC36DC425E5FFF7BFF7FFF7FFF7FDE773D57BB367B2E
                      FC46BF6BFF7FFE7F9E6BDD429C32BC36BC36BD363E539E6FFF7BFF7FDF737D5F
                      DC429C2EBC36BC3ABC3A9B327B2ADC427E63DF7BFF7FFF7FBE6F1D4F9B367B2E
                      FC46BE6BFF7BFF7F9E6BDC429C32BC36BC36BC36BC36DD429F6BFF7F5E5FBC36
                      9C32BC36BC36BC36BC36BC36BC369C32BC3A7E67FE7F9E67DD3EBC36BC369C32
                      FC42BE6BFE7BFF7B9E6BDC429C2E9C36BC36BC369C2E9C2E1D4F7E63FD467C2A
                      7B32BC36BC36BC369B32BB36BC369C2E7C2E1D4B7D631D4F9C2E9C2EBC369C2E
                      FC42BE6BFE7BFF7B9F6BDD429C2E9C329B369B369C36BC36BB369B36BC369C32
                      9C329C32BC36BC369B329B329C329C32BC36BC36DC3ABC36BC36BC32BC329C2E
                      DC3E9E67FE7FFF7B9E67DC3E7B2A9C329C329B329B369B367B2A7B267C2E9C32
                      9C329C329C329C329B329C329C329C329C367C2E7B2A7B2E9B36BB329B2E7B2A
                      DC3E9E67FF7FFF7F9E67DC3E7B2A9C2E9C329B2E9B2E7B2E7B2E9B2E7C2E9C2E
                      9C329C329C329B2E9B2E9C329C2E9C2E9C2E9C327B329B2E9B2E7B2E7B2E5B2A
                      DC3E9E67FF7FFF7F7E6BBC3A5B269C2E9C2E9C2E9C2E7B2E7B2A7C2E7C2E7C2E
                      9C2E9C2E9C2E7B2E9B2E9C2E7C2E7C2E9C2E7C2E7B2E7B2E7B2E7C2E7C2E5B26
                      DC3A9E6BFF7FFF7F9E67BC3A5B227B2A7C2E7C2E9C2E7C2A7C2A7C2A7C2A7C2E
                      7C2E7B2A7B2A7B2A7B2E7C2E7C2E7C2E7C2E7B2E7B2E7B2E7B2E7C2E7C2A5B26
                      DC3A9E67FF7BFE77BE63DC3A5B267B2A7B267B2A7C2E7C2A7B2A7B2A7B267B26
                      7B2A7B2A7B2A7B2A7B2A7B2A7B2A7B2A7B2A7B2A7B2A7B2E7C2E7C267B2A5C2A
                      FC42BD67FD735E733E671D4BDC367B2A5B265B265B2A5B265B265B265B225B22
                      5B225B265B265B265B265B265B265B265B265B265B265B265B2A5B267B2ADC3A
                      3D4F3D6B3E6F5E791E727E63BC43BC2E3B1E3B1E3B1E3B1A3B1A3B1A3B1A3B1A
                      3B1A3B1A3B1E3B1E3B1E3B1A3B1A3B1A3B1A3B1A3B1A3B1A3B1E3B1EBC2EBC47
                      9E671E765E751F7CDF78BF767E5FFC42BC369C327C327B329C329C327C327B2E
                      7B2E7C327C329C329C329C329B329B327B327C329C327C2E7B32BC36FC469E63
                      DF7ADF7C1F7C1F7C1F7CFF7C1E723E639E5F9E677E677D677E639E637E677D67
                      7D677E677E677E677E677E677D677D677D677E677E677F679E679D633D671E76
                      FF7C1F7C1F7C1F7C1F7C1F7C5E753E73FE77FF7FFF7FFF7FFF7FFF7FFF7FFE7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFD773D775E79
                      1F7C1F7C1F7C}
                    OnClick = btDownMenuClick
                  end
                end
              end
              object Panel10: TPanel
                Left = 1
                Top = 19
                Width = 456
                Height = 68
                Align = alClient
                Color = 15792633
                TabOrder = 1
              end
            end
            object Panel2: TPanel
              Left = 2
              Top = 300
              Width = 505
              Height = 218
              Align = alBottom
              TabOrder = 2
              object Label6: TLabel
                Left = 1
                Top = 1
                Width = 503
                Height = 18
                Align = alTop
                Caption = '   REQUEST'
                Color = 13673887
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold, fsUnderline]
                ParentColor = False
                ParentFont = False
              end
              object Panel5: TPanel
                Left = 457
                Top = 19
                Width = 47
                Height = 198
                Align = alRight
                BevelOuter = bvNone
                Color = 13673887
                TabOrder = 0
                OnResize = Panel39Resize
                object Panel14: TPanel
                  Left = 0
                  Top = 0
                  Width = 47
                  Height = 46
                  Align = alTop
                  Color = 13673887
                  TabOrder = 0
                  object SpeedButton9: TSpeedButton
                    Left = 0
                    Top = 0
                    Width = 46
                    Height = 46
                    Flat = True
                    Glyph.Data = {
                      42080000424D4208000000000000420000002800000020000000200000000100
                      10000300000000080000C30E0000C30E00000000000000000000007C0000E003
                      00001F0000001F7C1F7C1F7C5E793D77FD77FF7FFF7FFF7FFF7FFF7FFF7FFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFE7FFF7FFF7FFF7FFF7FFF7FFF7FFE773E735E75
                      1F7C1F7C1F7C1F7C1F7CFF7C1E763D679D639E677F677E677E677D677D677D67
                      7E677E677E677E677E677D677D677E679E637E637D677E679E679E5F3E631E72
                      FF7C1F7C1F7C1F7CDF7CDF7A9E63FC46BC367B327C2E9C327C327B329B329B32
                      9C329C329C327C327C327B2E7B2E7C329C329C327B327C329C32BC36FC427E5F
                      BF76DF781F7C5E751E769E67BC47BC2E3B1E3B1E3B1A3B1A3B1A3B1A3B1A3B1A
                      3B1A3B1E3B1E3B1E3B1A3B1A3B1A3B1A3B1A3B1A3B1A3B1E3B1E3B1EBC2EBC43
                      7E631E725E793E6F3D6B3D4FDC3A7B2A5B265B2A5B265B265B265B265B265B26
                      5B265B265B265B265B265B225B225B225B265B265B265B2A5B265B267B2ADC36
                      1D4B3E675E73FD73BD67FC425C2A7B2A7C267C2E7B2E7B2A7B2A7B2A7B2A7B2A
                      7B2A7B2A7B2A7B2A7B2A7B2A7B267B267B2A7B2A7C2A7C2E7B2A7B267B2A5B26
                      DC3ABE63FE77FF7B9E67DC3A5B267C2A7C2E7B2E7B2E7B2E7B2E7C2E7C2E7C2E
                      7C2E7B2E7B2A7B2A7B2A7C2E7C2E7C2A7C2A7C2A7C2A9C2E7C2E7C2E7B2A5B22
                      BC3A9E67FF7FFF7F9E6BDC3A5B267C2E7C2E7B2E7B2E7B2E7C2E9C2E7C2E7C2E
                      9C2E9B2E7B2E9C2E9C2E9C2E7C2E7C2E7C2E7B2A7B2E9C2E9C2E9C2E9C2E5B26
                      BC3A7E6BFF7FFF7F9E67DC3E5B2A7B2E7B2E9B2E9B2E7B329C329C2E9C2E9C2E
                      9C329B2E9B2E9C329C329C329C2E7C2E9B2E7B2E7B2E9B2E9B2E9C329C2E7B2A
                      DC3E9E67FF7FFF7F9E67DC3E7B2A9B2EBB329B367B2E7B2A7C2E9C369C329C32
                      9C329B329C329C329C329C329C327C2E7B267B2A9B369B369B329C329C327B2A
                      DC3E9E67FF7BFE7F9E67DC3E9C2EBC32BC32BC36BC36DC3ABC36BC369C329C32
                      9B329B32BC36BC369C329C329C32BC369B36BB36BC369C369B369B369C329C2E
                      DD429F6BFF7BFE7BBE6BFC429C2EBC369C2E9C2E1D4F7D631D4B7C2E9C2EBC36
                      BB369B32BC36BC36BC367B327C2AFD467E631D4F9C2E9C2EBC36BC369C369C2E
                      DC429E6BFF7BFE7BBE6BFC429C32BC36BC36DD3E9E67FE7F7E67BC3A9C32BC36
                      BC36BC36BC36BC36BC369C32BC365E5FFF7F9F6BDD42BC36BC36BC36BC369C32
                      DC429E6BFF7FFF7BBE6BFC467B2E9B361D4FBE6FFF7FFF7FDF7B7E63DC427B2A
                      9B32BC3ABC3ABC369C2EDC427D5FDF73FF7FFF7B9E6F3E53BD36BC36BC369C32
                      DD429E6BFE7FFF7FBF6BFC467B2EBB363D57DE77FF7FFF7FFF7FFF7B5E5FDC42
                      BC36BC369C36BC36DD3E7E5FFF7BFF7FFF7FFF7FDE7B5E5BBD3ABC36DC3ABC36
                      FE469F6FFF7FFF7F9E6BFC46BC36DC3ADC423D4F9E6BFF7FFF7FFF7FDF777E67
                      FD467B2A9C2AFC427E63DF77FF7FFF7FFF7FBE6B3D53DC46DC3EDC3EDC3ABC36
                      FD46BF6FFF7FFF7FBE6FFC46BC36DC3EBC36BC363D53BE6FFF7BFF7FFF7FFF7F
                      7E5FFC42FD425D5BDE7BFF7FFF7FFF7BBE6F3D53BC36BC36BC3EDC3EDC3EBC36
                      FC4ABE6FFF7FFF7FBE6FFC4ABC3ADC3EDC3ABC3ADC3AFD4ABE6BFF7FFF7FFF7F
                      DE77BF6FBF6FDE77FF7FFF7FFF7FBF6F1C4FDC3ABC3ABC3ABC3EDC3EDC3EBC3A
                      FC4ABE6BFF7BFF7FBE6F1C4FDC3ADC3EDC42DC3EBC36BC363D539E6FDF7BFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7BBF6F3D53BC3ABC36DC3EDC42DC3EDC42DC42BC3A
                      FC4A9E6BFF7BFF7FBE6F1D4FDC3EDC42DC42DC42DC3EDC3EDC3E1E4BBF6FFF7F
                      FF7FFF7FFF7FFF7FFF7FBF6F1D4FDC3EDC3EDC42FD42DC42DC42DC42FD42DC3E
                      1C4BBE6BFF7BFF7FBF6F1D4FDC3EFC42FC46FC42FC42FC42BC3ADD3E3E57BE6F
                      FF7FFF7FFF7FFF7FBE6F5D57DC3EBC3ADC42FC46FC46FC42DC42FC46FD46DC3E
                      1E4FBE6FFF7FFF7FBF6F3D53DC42FC46FC46FC46FC46FC46DC46FD46DD461D53
                      BE73FF7FFF7FDE773D57DC46DD42DC46FC4AFC46FC46FC46FC46FC46FC46DC42
                      3D4FBE6FFF7FFF7FBE6F3D53FC46FD4AFD4AFD4AFC4AFC4AFC4AFC46DC42FD46
                      5D5B9E679F6B7D5FFC4ADC42FD4AFD4AFD4AFD4AFD4AFC4AFC4AFC4A1D4BFC46
                      3D4FBD6FFF7FFE7FBE6F3D57FC46FD4AFD4AFD4A1D4F1D4FFC4AFC4AFD4A1D4F
                      1D4F1D4B1D4B1D4B1D4F1D4F1D4B1D4B1D4B1D4F1D4F1D4B1D4B1D4B1D4BFD46
                      3D53BE6FFF7FFE7FBE6F3D53FD461D4F1D4F1D4F1D4F1D4F1D4F1C4B1D4F1D4F
                      1D4BFD4AFD4A1D4B1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4FFD46
                      3D53BE6FFF7FFF7FDE735D571D4B1D4F1D4F1D4F1D4F1D4F1D4F1C4F1D4F1D4F
                      1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4FFD4A
                      3D57BF73FF7FFE77FE739D5F3D531D4F1D4F1D4F1D531D4F1D531D531D531D53
                      1D531D531D531D533D533D531D531D531D531D531D531D531D531D4F1D4F1D53
                      7D5FFE6FFE775E737E739E6B7D5F3D571D531C531D533D531D531D533D533D53
                      1D531D531D533D533D533D531D531D533D531D531D533D533D533D533D577D5B
                      9D677E735E775F793F7ADE73FD677D5B1D571D4F1D4F1D4F1D4F1D531D531D53
                      1D531D531D531C531D531D531D4F1D531D531C4F1C4F1D4F1D533D577D5BFE67
                      BE733F7A5F791F7CDF7CDF7EBE739D6B5D5F5D5B5D5B5D5B5D5F5D5B5D5B5D5B
                      5D5B5D5B5D5F5E5B5D5B5D5B5D5B5E5F5D5F5C5B5C5B5D5B5D5F7D637D6BBE73
                      DF7EDF7C1F7C1F7C1F7CFF7C3E7A5E73DE6FDF73BF73BE77DF73BF73BE73BE73
                      BF73BF73BE77BE73BE73BF73BF73BE77BE77BE77BE73BF77DF77DE737E733F7A
                      FF7C1F7C1F7C1F7C1F7C1F7C5F795E77FE77FF7FFF7FFF7FFF7FFF7BFF7FFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFE775E775F79
                      1F7C1F7C1F7C}
                    OnClick = BitBtn1Click
                  end
                end
                object Panel15: TPanel
                  Left = 0
                  Top = 152
                  Width = 47
                  Height = 46
                  Align = alBottom
                  Color = 13673887
                  TabOrder = 1
                  DesignSize = (
                    47
                    46)
                  object SpeedButton10: TSpeedButton
                    Left = 0
                    Top = 0
                    Width = 46
                    Height = 46
                    Anchors = [akLeft, akBottom]
                    Flat = True
                    Glyph.Data = {
                      42080000424D4208000000000000420000002800000020000000200000000100
                      10000300000000080000C30E0000C30E00000000000000000000007C0000E003
                      00001F0000001F7C1F7C1F7C5F795E77FE77FF7FFF7FFF7FFF7FFF7FFF7FFF7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7BFF7FFF7FFF7FFF7FFE775E775F79
                      1F7C1F7C1F7C1F7C1F7CFF7C3F7A7E73DE73DF77BF77BE73BE77BE77BE77BF73
                      BF73BE73BE73BE77BF73BF73BE73BE73BF73DF73BE77BF73DF73DE6F5E733E7A
                      FF7C1F7C1F7C1F7CDF7CDF7EBE737D6B7D635D5F5D5B5C5B5C5B5D5F5E5F5D5B
                      5D5B5D5B5E5B5D5F5D5B5D5B5D5B5D5B5D5B5D5F5D5B5D5B5D5B5D5F9D6BBE73
                      DF7EDF7C1F7C5F793F7ABE73FE677D5B3D571D531D4F1C4F1C4F1D531D531D4F
                      1D531D531C531D531D531D531D531D531D531D4F1D4F1D4F1D4F1D577D5BFD67
                      DE733F7A5F795E777E739D677D5B3D573D533D533D531D531D533D531D531D53
                      3D533D533D531D531D531D533D533D531D531D533D531D531C531D533D577D5F
                      9E6B7E735E73FE77FE6F7D5F1D531D4F1D4F1D531D531D531D531D531D531D53
                      3D533D531D531D531D531D531D531D531D531D531D4F1D531D4F1D4F1D4F3D53
                      9D5FFE73FE77FF7FBF733D57FD4A1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F
                      1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1C4F1D4F1D4F1D4F1D4F1D4F1D4F1D4B
                      5D57DE73FF7FFF7FBE6F3D53FD461D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F
                      1D4F1D4F1D4BFD4AFD4A1D4B1D4F1D4F1C4B1D4F1D4F1D4F1D4F1D4F1D4FFD46
                      3D53BE6FFE7FFF7FBE6F3D53FD461D4B1D4B1D4B1D4B1D4F1D4F1D4B1D4B1D4B
                      1D4F1D4F1D4B1D4B1D4B1D4F1D4FFD4AFC4AFC4A1D4F1D4FFD4AFD4AFD4AFC46
                      3D57BE6FFE7FFF7FBD6F3D4FFC461D4BFC4AFC4AFC4AFD4AFD4AFD4AFD4AFD4A
                      DC42FC4A7D5F9F6B9E675D5BFD46DC42FC46FC4AFC4AFC4AFD4AFD4AFD4AFC46
                      3D53BE6FFF7FFF7FBE6F3D4FDC42FC46FC46FC46FC46FC46FC46FC4ADC46DD42
                      DC463D57DE77FF7FFF7FBE731D53DD46FD46DC46FC46FC46FC46FC46FC46DC42
                      3D53BF6FFF7FFF7FBE6F1E4FDC3EFD46FC46DC42FC42FC46FC46DC42BC3ADC3E
                      5D57BE6FFF7FFF7FFF7FFF7FBE6F3E57DD3EBC3AFC42FC42FC42FC46FC42DC3E
                      1D4FBF6FFF7FFF7BBE6B1C4BDC3EFD42DC42DC42DC42FD42DC42DC3EDC3E1D4F
                      BF6FFF7FFF7FFF7FFF7FFF7FFF7FBF6F1E4BDC3EDC3EDC3EDC42DC42DC42DC3E
                      1D4FBE6FFF7FFF7B9E6BFC4ABC3ADC42DC42DC3EDC42DC3EBC36BC3A3D53BF6F
                      FF7BFF7FFF7FFF7FFF7FFF7FFF7FDF7B9E6F3D53BC36BC36DC3EDC42DC3EDC3A
                      1C4FBE6FFF7FFF7BBE6BFC4ABC3ADC3EDC3EBC3EBC3ABC3ADC3A1C4FBF6FFF7F
                      FF7FFF7FDE77BF6FBF6FDE77FF7FFF7FFF7FBE6BFD4ADC3ABC3ADC3ADC3EBC3A
                      FC4ABE6FFF7FFF7FBE6FFC4ABC36DC3EDC3EBC3EBC36BC363D53BE6FFF7BFF7F
                      FF7FDE7B5D5BFD42FC427E5FFF7FFF7FFF7FFF7BBE6F3D53BC36BC36DC3EBC36
                      FC46BE6FFF7FFF7FBF6FFD46BC36DC3ADC3EDC3EDC463D53BE6BFF7FFF7FFF7F
                      DF777E63FC429C2A7B2AFD467E67DF77FF7FFF7FFF7F9E6B3D4FDC42DC3ABC36
                      FC469E6BFF7FFF7F9F6FFE46BC36DC3ABC36BD3A5E5BDE7BFF7FFF7FFF7FFF7B
                      7E5FDD3EBC369C36BC36BC36DC425E5FFF7BFF7FFF7FFF7FDE773D57BB367B2E
                      FC46BF6BFF7FFE7F9E6BDD429C32BC36BC36BD363E539E6FFF7BFF7FDF737D5F
                      DC429C2EBC36BC3ABC3A9B327B2ADC427E63DF7BFF7FFF7FBE6F1D4F9B367B2E
                      FC46BE6BFF7BFF7F9E6BDC429C32BC36BC36BC36BC36DD429F6BFF7F5E5FBC36
                      9C32BC36BC36BC36BC36BC36BC369C32BC3A7E67FE7F9E67DD3EBC36BC369C32
                      FC42BE6BFE7BFF7B9E6BDC429C2E9C36BC36BC369C2E9C2E1D4F7E63FD467C2A
                      7B32BC36BC36BC369B32BB36BC369C2E7C2E1D4B7D631D4F9C2E9C2EBC369C2E
                      FC42BE6BFE7BFF7B9F6BDD429C2E9C329B369B369C36BC36BB369B36BC369C32
                      9C329C32BC36BC369B329B329C329C32BC36BC36DC3ABC36BC36BC32BC329C2E
                      DC3E9E67FE7FFF7B9E67DC3E7B2A9C329C329B329B369B367B2A7B267C2E9C32
                      9C329C329C329C329B329C329C329C329C367C2E7B2A7B2E9B36BB329B2E7B2A
                      DC3E9E67FF7FFF7F9E67DC3E7B2A9C2E9C329B2E9B2E7B2E7B2E9B2E7C2E9C2E
                      9C329C329C329B2E9B2E9C329C2E9C2E9C2E9C327B329B2E9B2E7B2E7B2E5B2A
                      DC3E9E67FF7FFF7F7E6BBC3A5B269C2E9C2E9C2E9C2E7B2E7B2A7C2E7C2E7C2E
                      9C2E9C2E9C2E7B2E9B2E9C2E7C2E7C2E9C2E7C2E7B2E7B2E7B2E7C2E7C2E5B26
                      DC3A9E6BFF7FFF7F9E67BC3A5B227B2A7C2E7C2E9C2E7C2A7C2A7C2A7C2A7C2E
                      7C2E7B2A7B2A7B2A7B2E7C2E7C2E7C2E7C2E7B2E7B2E7B2E7B2E7C2E7C2A5B26
                      DC3A9E67FF7BFE77BE63DC3A5B267B2A7B267B2A7C2E7C2A7B2A7B2A7B267B26
                      7B2A7B2A7B2A7B2A7B2A7B2A7B2A7B2A7B2A7B2A7B2A7B2E7C2E7C267B2A5C2A
                      FC42BD67FD735E733E671D4BDC367B2A5B265B265B2A5B265B265B265B225B22
                      5B225B265B265B265B265B265B265B265B265B265B265B265B2A5B267B2ADC3A
                      3D4F3D6B3E6F5E791E727E63BC43BC2E3B1E3B1E3B1E3B1A3B1A3B1A3B1A3B1A
                      3B1A3B1A3B1E3B1E3B1E3B1A3B1A3B1A3B1A3B1A3B1A3B1A3B1E3B1EBC2EBC47
                      9E671E765E751F7CDF78BF767E5FFC42BC369C327C327B329C329C327C327B2E
                      7B2E7C327C329C329C329C329B329B327B327C329C327C2E7B32BC36FC469E63
                      DF7ADF7C1F7C1F7C1F7CFF7C1E723E639E5F9E677E677D677E639E637E677D67
                      7D677E677E677E677E677E677D677D677D677E677E677F679E679D633D671E76
                      FF7C1F7C1F7C1F7C1F7C1F7C5E753E73FE77FF7FFF7FFF7FFF7FFF7FFF7FFE7F
                      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFD773D775E79
                      1F7C1F7C1F7C}
                    OnClick = BitBtn2Click
                  end
                end
                object Panel16: TPanel
                  Left = 6
                  Top = 46
                  Width = 36
                  Height = 100
                  Align = alCustom
                  Color = 13673887
                  TabOrder = 2
                  object Panel17: TPanel
                    Left = 1
                    Top = 66
                    Width = 34
                    Height = 33
                    Align = alBottom
                    Color = 13673887
                    TabOrder = 0
                    object SpeedButton11: TSpeedButton
                      Left = -1
                      Top = 0
                      Width = 33
                      Height = 33
                      Flat = True
                      Glyph.Data = {
                        360C0000424D360C000000000000360000002800000020000000200000000100
                        180000000000000C000001000000010000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000001000001000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        00000000000000000000000000000000000000000000000000000038220A734B
                        1F965B19A46016A35F12A35F0FA55F0B9357096A3F05321D0000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000005F3E1BA968279C58138D46
                        008C48008C49008E4C00904E009251009654009C5800A56001A8630053320000
                        0000000000000000000000000000000000000000000000000000000000000000
                        000000000000000000010000000000241505AC6E32974E088A42008C46008F4A
                        00914C00924E009450009553009755009957009A59009D5B009F5E00AB6700AA
                        6700170F01000000000000000000000000000000000000000000000000000000
                        000000000000010000000000513415B26B288B40008E4700914900924C00944D
                        009550009752009854009A56009C58009E5B009F5D00A15F00A36200A56400A8
                        6800C179003D2801000000010000000000000000000000000000000000000000
                        000000000000000000573716AF631E8F4200934900954B00954D00984F009951
                        009B53009C55009E58009F5A00A05C00A35F00A46100A66400A86600A96900AB
                        6B00AD6E00C88000432C01000000000000000000000000000000000000000000
                        0000000000002F1D08B86B26934400974A00984C00994E009B50009C53009E55
                        009F5700A15900A35C00A55F00A66100A86400A96600AB6900AC6B00AE6E00B0
                        7000B27200B47600D08A001D1301000000000000000000000000000000000000
                        010000000000BE75339845009B4C009D4E009E50009F5200A05400A25700A459
                        00A55C00A65E00A86000A96300AB6500AD6800AF6A00B06D00B26F00B37200B5
                        7500B77800B87A00BD7F00C58600000000000000000000000000000000000000
                        000000794C21A751039F4D00A15000A25200A35400A55600A65900A75B00A95D
                        00AA6000AC6200AD6500AF6800B06B00B26D00B47000B57200B67500B87700BA
                        7A00BB7E00BD8000BF8200CE8F00674801000000000000000000000000000000
                        000000C77428A34C00A65100A75400A85600A95800AB5B00AC5D00AE5F00AF62
                        00B06500B26700B36A00B56D00B66F00B77200B97500BB7800BC7A00BE7D00BF
                        8000C18300C28600C48800C68C00D99B00000000000000000000000000000000
                        593714B85C09AA5200AC5600AD5800AE5A00B05D00B15F00B26200B36400B567
                        00B66A00B76D00B96F00BA7200BB7500BD7800BE7B00BF7D00C18000C38300C4
                        8600C58900C78B00C88E00C99100DCA101483502000000000000000000000000
                        A15F1EB35600B05900B25B00B35D00B46000B56200B66500B86800B96A00BA6D
                        00BB7000BD7200BE7500BF7800C17B00C17E00C38000C58300C68600C88900C9
                        8C00CA8E00CB9100CD9400CE9700D79F009A7406000000000000000000000000
                        D1771AB65B00B75F00B86100B96400BA6400B96400BB6600BC6900BD6C00BF6F
                        00C07200C17500C37700C47B00C57D00C78000C88300C98600CB8900CC8B00CC
                        8E00CE9100D19700D19900D29C00D5A000DAA60A000000000000000000100900
                        D57917BB6100BD6500BE6800BD6700B36908BE873CBD8537BE8737BF8837BD86
                        2FBE892FBF8A2FBF8C2FC08E2FC1902FC2922FC3942FC4962FC59830C79E38C8
                        9F38CBA338C78D00D69F00D6A000D7A300F6BF0B0000000000000000001D0F00
                        DB821DC36D04C26A00C56E00B05900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFDDC581D69F00DCA806DBA800F7C20D050300000000000000201000
                        E28C24CC7B13CD7D14CD7A08B25F00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFE5D6A9DAA604E1B115E1B214FDCE24050300000000000000180D00
                        E99529D38620D48920D68C21CC8111DCC094EFE7DAEDE4D3EDE1CEECE0CAECE0
                        CAEDE3CEEEE5D4EEE5D3EEE6D3EEE6D3EEE7D3EFE7D3EFE7D3EFE7D3EFE7D3EF
                        E8D4F1ECDBD4AD35E4B51BE6B920E7BA1FFFD72C000000000000000000000000
                        F49F2ADC942FDB952EDC972EDD9A2ED6901FD08C17D18D17D18F17D29217D393
                        17D49517D49717D69917D69C17D69E17D7A017D8A217D8A417D9A517DAA817DA
                        AA16DDAD18E8BB28EABF2EEAC12EEDC42EF7CC31000000000000000000000000
                        CA8725E7A440E2A13DE2A23DE4A43DE5A73DE5A83DE6AA3DE7AC3DE7AE3DE8B0
                        3DE9B23DE9B43DE9B53DEAB73DEBB93DEBBA3DEBBC3DECBE3DECBF3DEDC23DEE
                        C23DEDC43DEDC53DEEC73DEEC83DF8D13EB99B2B000000000000000000000000
                        784E0CF6B756E8AC4CE8AE4CE9B04CE9B24CEAB34CEBB44CEAB64CEBB84CECB9
                        4CECBB4CEDBC4CEDBE4CEDBF4CEEC14CEEC34CEFC44CEFC64CEFC74CF0C94CF0
                        CA4CF1CB4CF1CD4CF2CE4CF2CF4BFFE562614E05000000000000000000000000
                        150900FFC75AEDB85EEDB95DEEB95DEEBB5DEEBD5DEEBE5DEFC05DEFC15DEFC3
                        5DF0C45DF0C55DF1C75DF1C85DF1CA5DF2CB5DF2CC5DF3CD5DF3CF5DF3D05DF3
                        D15DF3D25DF4D35DF4D55DF6D75DFFEF5F000000040300000000000000000000
                        000000B58229FBCC78F2C26DF2C36DF2C56DF2C66DF3C76DF3C96DF3CA6DF4CB
                        6DF4CD6DF4CE6DF4CF6DF4D06DF5D16DF5D26DF6D36DF6D56DF5D66DF6D66DF6
                        D86DF7D96DF7DA6DF7DB6CFFEC7F998126000000000000000000000000000000
                        080601110600FFDD77F6CE80F5CD7DF5CE7DF6CF7DF6D07DF6D17DF6D27DF7D4
                        7DF6D47DF7D57DF7D67DF7D77DF8D87DF8D97DF7DA7DF8DB7DF8DC7DF9DD7DF9
                        DE7DF9DE7DF9E07DFBE37FFFF57F000000090800000000000000000000000000
                        0000000B0801664607FFEC9EF8D58EF8D68CF9D78CF9D88CF9D98CF9D98CF9DA
                        8CF9DB8CF9DC8CFADD8CFADE8CF9DF8CFADF8CFAE08CFAE18CFAE28CFAE38CFB
                        E38CFBE48CFBE58CFFFFAA423401080701000000000000000000000000000000
                        000000000000090500A7791BFFF3B1FBDD9CFBDE9BFBDE9BFBDF9BFAE09BFBE1
                        9BFBE19BFBE19BFBE39BFBE39BFBE49BFBE59BFBE69BFCE69BFCE79BFCE79BFC
                        E89BFCE99CFFFFB6866F15000000000000000000000000000000000000000000
                        000000000000000000030100A97F21FFFDC0FDE5ACFCE4A9FCE5A9FCE5A9FCE6
                        A9FCE7A9FCE7A9FCE8A9FCE8A9FCE9A9FDE9A9FDEAA9FCEAA9FDEBA9FDEBA8FE
                        EFAEFFFFC08B7213000000060500000000000000000000000000000000000000
                        0000000000000000000000000E0A026A5012FFFFBAFFF4C3FDEAB7FDEAB5FDEA
                        B5FDEBB5FDEBB5FDECB5FDECB5FDEDB5FDEDB5FDEEB5FEEEB5FEF0B8FFFECBFF
                        FFAA4D3C00000000080601000000000000000000000000000000000000000000
                        0000000000000000000000000000001310081B1100C4A963FFFFCEFFFDD3FFF5
                        CAFEF0C5FEF0C2FEF0C1FEF0C1FEF1C3FEF2C6FFF8CBFFFFD9FFFFC0B09A4300
                        00000D0B04000000000000000000000000000000000000000000000000000000
                        000000000000000000000000000000000000040302070602271A00887337E9CD
                        7CFFFFA8FFFFC5FFFFD5FFFFD5FFFFC3FFFFA3E1C9717E6A211209000705000B
                        0A03000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000101010E0B020200
                        000702003A28003E2B003B290033240000000000000009070003030100000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000}
                      OnClick = SpeedButton11Click
                    end
                  end
                  object Panel18: TPanel
                    Left = 1
                    Top = 34
                    Width = 34
                    Height = 32
                    Align = alClient
                    Color = 13673887
                    TabOrder = 1
                    object SpeedButton12: TSpeedButton
                      Left = -1
                      Top = 0
                      Width = 33
                      Height = 33
                      Flat = True
                      Glyph.Data = {
                        F6060000424DF606000000000000360000002800000018000000180000000100
                        180000000000C006000001000000010000000000000000000000000000000000
                        00000000001400002C0000320000190000050000000000000000000000000000
                        0000000000000000000000000A00002100003400002700000E00000000000000
                        00000000000000080000550000AA0000CA0000CF0000BB000083000031000000
                        00000000000000000000000000000000004500008E0000BD0000D00000C90000
                        A400004000000000000000000000005E0000B80000FE0000FF0000FF0000FE00
                        00EE0000AC0000260000000000000000000000000000460000AF0202EC0909FE
                        0E0EFF0E0EFF0808FF0000B700003F0000000000240000B20000FE0000FF0000
                        FF0000FF0000FF0000FF0000FF0000AB00003B0000000000000000580000AE05
                        05FF1515FF2424FF2E2EFF2F2FFF2727FF0B0BFF0000A500000E00004B0000CE
                        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000F00000A80000350000
                        530000AE0404EE1616FF2A2AFF3737FF4343FF4949FF3E3EFF1B1BFF0202CD00
                        00260000570000D80000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                        0000EE00009800009A0303ED1010FF2A2AFF3939FF4343FF4F4FFF5757FF5151
                        FF2424FF0303D70000350000450000C80000FE0000FF0000FF0000FF0000FF00
                        00FF0000FF0000FF0202FF0202E70202E81212FF2626FF3838FF4343FF4F4FFF
                        5B5BFF6363FF5858FF2323FF0101CF00002500001D0000AA0000F40000FF0000
                        FF0000FF0000FF0000FF0000FF0000FF0707FF0B0BFF1212FF2525FF3535FF42
                        42FF4E4EFF5959FF6969FF6A6AFF4D4DFF0F0FFA0000A500000B00000000006E
                        0000C90000FF0000FF0000FF0000FF0000FF0000FF0404FF1010FF1A1AFF2525
                        FF3434FF3F3FFF4D4DFF5858FF6767FF7272FF5555FF2222FF0000D800005300
                        00000000000000040000790000D50000FC0000FF0000FF0000FF0404FF1212FF
                        1E1EFF2A2AFF3737FF4141FF4C4CFF5B5BFF6969FF7070FF4D4DFF1B1BFF0000
                        E30000570000000000000000000000000000030000950000DB0000FD0101FF05
                        05FF0E0EFF1D1DFF2929FF3434FF4141FF4C4CFF5757FF6868FF7070FF5151FF
                        1B1BFF0101E50000740000000000000000000000000000000000000000110000
                        920000D80303FF0C0CFF1818FF2828FF3333FF4040FF4A4AFF5656FF6363FF6F
                        6FFF5151FF1D1DFE0000DD000070000000000000000000000000000000000000
                        0000000000000000700000CE0202F51010FF2323FF3333FF3F3FFF4B4BFF5656
                        FF6262FF6F6FFF7171FF3E3EFF0808F50000D300005100000000000000000000
                        00000000000000000000000000800000E10303F51010FF2121FF3030FF3E3EFF
                        4A4AFF5555FF6161FF6D6DFF7878FF8989FF7E7EFF4747FF0B0BFA0000E50000
                        5E00000000000000000000000000000000006C0000F10202F70E0EFF2323FF2F
                        2FFF3B3BFF4848FF5454FF6262FF6D6DFF7777FF8383FF9292FFA2A2FF9090FF
                        4747FF0C0CFE0000FB0000420000000000000000000000790000FB0303FB1313
                        FF2525FF3232FF3D3DFF4949FF5656FF6464FF6C6CFF7979FF8787FF9191FF9E
                        9EFFAAAAFFBEBEFFAEAEFF6464FF1616FF0000FF0000530000000000200000E9
                        0101FE1111FF2323FF3131FF3C3CFF4848FF5353FF6464FF6E6EFF5050FF5959
                        FF8E8EFF9D9DFFA9A9FFB5B5FFC1C1FFD3D3FFB8B8FF6868FF0808FF0000D100
                        000B0000660000FF0606FE1F1FFF3030FF3C3CFF4646FF5252FF5E5EFF7171FF
                        5B5BFF2020FF2323FF6E6EFFA9A9FFB6B6FFBEBEFFCACAFFDADAFFD8D8FFA9A9
                        FF2F2FFF0000FF0000320000950000FF0E0EFF2B2BFF3C3CFF4747FF5252FF5F
                        5FFF6F6FFF5B5BFF2525FF0000FF0000FF2B2BFF7979FFC4C4FFCFCFFFD6D6FF
                        E5E5FFE2E2FFC1C1FF4B4BFF0404FF00005D00008C0101FF0F0FFF3030FF4747
                        FF5353FF6060FF6D6DFF6363FF2626FF0202FF0000920000C70202FF2D2DFF97
                        97FFD5D5FFE9E9FFF5F5FFEDEDFFB9B9FF4949FF0505FF0000530000550000FF
                        0D0DFF2B2BFF4747FF5C5CFF6868FF6060FF3333FF0000FF00009C0000000000
                        170000D20000FF4444FF9F9FFFD7D7FFE6E6FFCBCBFF9191FF3030FF0000FF00
                        00270000050000C20101FF1515FF2828FF3636FF3636FF1E1EFF0000FF000081
                        0000000000000000000000050000BB0000FF2F2FFF5E5EFF7272FF6464FF3C3C
                        FF0101FF00009500000000000000002B0000C20202FF0909FF0D0DFF0808FF00
                        00F60000860000000000000000000000000000000000070000AE0000FF0D0DFF
                        1717FF1313FF0404FF0000A300000F0000000000000000000000050000560000
                        8B00009700006A00002600000000000000000000000000000000000000000000
                        000000004200008F000094000083000043000000000000000000}
                      OnClick = SpeedButton12Click
                    end
                  end
                  object Panel19: TPanel
                    Left = 1
                    Top = 1
                    Width = 34
                    Height = 33
                    Align = alTop
                    Color = 13673887
                    TabOrder = 2
                    object SpeedButton13: TSpeedButton
                      Left = -1
                      Top = 0
                      Width = 33
                      Height = 33
                      Flat = True
                      Glyph.Data = {
                        360C0000424D360C000000000000360000002800000020000000200000000100
                        180000000000000C000001000000010000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000001000001000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        00000000000000000000000000000000000000000000000000000038220A734B
                        1F965B19A46016A35F12A35F0FA55F0B9357096A3F05321D0000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000005F3E1BA968279C58138D46
                        008C48008C49008E4C00904E009251009654009C5800A56001A8630053320000
                        0000000000000000000000000000000000000000000000000000000000000000
                        000000000000000000010000000000241505AC6E32974E088A42008C46008F4A
                        00914C00924E009450009553009755009957009A59009D5B009F5E00AB6700AA
                        6700170F01000000000000000000000000000000000000000000000000000000
                        000000000000010000000000513415B26B288B40008E4700914900924C00944D
                        009550009752009954009B55009D59009E5B009F5D00A15F00A36200A56400A8
                        6800C179003D2801000000010000000000000000000000000000000000000000
                        000000000000000000573716AF631E8F4200934900954B00954D00984F009951
                        009B53009952008943008D4C00924C00A35F00A46100A66400A86600A96900AB
                        6B00AD6E00C88000432C01000000000000000000000000000000000000000000
                        0000000000002F1D08B86B26934400974A00984C00994E009B50009C53009E55
                        009F5500965504FFFFFFFFFFFFD3BE9F9D5600A96600AB6900AC6B00AE6E00B0
                        7000B27200B47600D08A001D1301000000000000000000000000000000000000
                        010000000000BE75339845009B4C009D4E009E50009F5200A05400A25700A459
                        00A35700A97634FFFFFFFFFFFFEFE9E29B5300B06B00B06D00B26F00B37200B5
                        7500B77800B87A00BD7F00C58600000000000000000000000000000000000000
                        000000794C21A751039F4D00A15000A25200A35400A55600A65900A75B00A95D
                        00A95C00AB7630FFFFFFFFFFFFECE6DBA05800B57000B57200B67500B87700BA
                        7A00BB7E00BD8000BF8200CE8F00674801000000000000000000000000000000
                        000000C77428A34C00A65100A75400A85600A95800AB5B00AC5D00AE5F00AF62
                        00AE6000AF7A30FFFFFFFFFFFFEDE6DBA65E00BA7500BB7800BC7A00BE7D00BF
                        8000C18300C28600C48800C68C00D99B00000000000000000000000000000000
                        593714B85C09AA5200AC5600AD5800AE5A00B05D00B15F00B26200B36400B567
                        00B46600B37E30FFFFFFFFFFFFEEE7DBAC6300BF7C00BF7D00C18000C38300C4
                        8600C58900C78B00C88E00C99100DCA101483502000000000000000000000000
                        A15F1EB35600B05900B25B00B35D00B46000B56200B66500B86800B96A00BA6D
                        00BA6C00B78230FFFFFFFFFFFFEEE7DBB16A00C48100C58300C68600C88900C9
                        8C00CA8E00CB9100CD9400CE9700D79F009A7406000000000000000000000000
                        D1771AB65B00B75F00B86100B96400BA6400B96400BB6600BC6900BD6C00BF6F
                        00BE6E00B98229FFFFFFFFFFFFEEE7D9B56C00C98300C98500CA8900CB8B00CC
                        8E00CE9100D19700D19900D29C00D5A000DAA60A000000000000000000100900
                        D57917BB6100BD6500BE6800BD6700B36908BE873CBD8537BE8737BF8937BF8B
                        37BF8931C49F5EFFFFFFFFFFFFF3EDE2B98825C69837C69937C69B37C79D37C8
                        9F38CBA338C78D00D69F00D6A000D7A300F6BF0B0000000000000000001D0F00
                        DB821DC36D04C26A00C56E00B05900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFDDC581D69F00DCA806DBA800F7C20D050300000000000000201000
                        E28C24CC7B13CD7D14CD7A08B25F00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFE5D6A9DAA604E1B115E1B214FDCE24050300000000000000180D00
                        E99529D38620D48920D68C21CC8111DCC094EFE7DAEDE4D3EDE1CEECE0CAECE0
                        CAEDE2CCF1EADBFFFFFFFFFFFFFDFCF9ECE3CEEFE7D3EFE7D3EFE7D3EFE7D3EF
                        E8D4F1ECDBD4AD35E4B51BE6B920E7BA1FFFD72C000000000000000000000000
                        F49F2ADC942FDB952EDC972EDD9A2ED6901FD08C17D18D17D18F17D29217D393
                        17D39311C89C40FFFFFFFFFFFFF0EADBC78E00D9A317D8A417D9A517DAA817DA
                        AA16DDAD18E8BB28EABF2EEAC12EEDC42EF7CC31000000000000000000000000
                        CA8725E7A440E2A13DE2A23DE4A43DE5A73DE5A83DE6AA3DE7AC3DE7AE3DE8B0
                        3DE9B037D6B05BFFFFFFFFFFFFF3EDE1DCA927ECBD3DECBE3DECBF3DEDC23DEE
                        C23DEDC43DEDC53DEEC73DEEC83DF8D13EB99B2B000000000000000000000000
                        784E0CF6B756E8AC4CE8AE4CE9B04CE9B24CEAB34CEBB44CEAB64CEBB84CECB9
                        4CEDBA48D9B766FFFFFFFFFFFFF3EEE2DFB236F0C54DEFC64CEFC74CF0C94CF0
                        CA4CF1CB4CF1CD4CF2CE4CF2CF4BFFE562614E05000000000000000000000000
                        150900FFC75AEDB85EEDB95DEEB95DEEBB5DEEBD5DEEBE5DEFC05DEFC15DEFC3
                        5DF1C358DCBE71FFFFFFFFFFFFF3EFE4E3BB47F3CD5DF3CD5DF3CF5DF3D05DF3
                        D15DF3D25DF4D35DF4D55DF6D75DFFEF5F000000040300000000000000000000
                        000000B58229FBCC78F2C26DF2C36DF2C56DF2C66DF3C76DF3C96DF3CA6DF5CB
                        6DF5CC69DFC37DFFFFFFFFFFFFF3F0E6E6C358F7D56DF6D56DF5D66DF6D66DF6
                        D86DF7D96DF7DA6DF7DB6CFFEC7F998126000000000000000000000000000000
                        080601110600FFDD77F6CE80F5CD7DF5CE7DF6CF7DF6D07DF6D17DF6D27DF7D4
                        7DF7D379E1C989FFFFFFFFFFFFF4F1E8E9C969F9DB7DF8DB7DF8DC7DF9DD7DF9
                        DE7DF9DE7DF9E07DFBE37FFFF57F000000090800000000000000000000000000
                        0000000B0801664607FFEC9EF8D58EF8D68CF9D78CF9D88CF9D98CF9D98CF9DA
                        8CFADB89E4CE93FFFFFFFFFFFFF5F3ECEED37BFBE18DFAE18CFAE28CFAE38CFB
                        E38CFBE48CFBE58CFFFFAA423401080701000000000000000000000000000000
                        000000000000090500A7791BFFF3B1FBDD9CFBDE9BFBDE9BFBDF9BFAE09BFBE1
                        9BFDE39CEFD68DE9DDB9ECE5CDE6D497FAE398FCE69BFCE69BFCE79BFCE79BFC
                        E89BFCE99CFFFFB6866F15000000000000000000000000000000000000000000
                        000000000000000000030100A97F21FFFDC0FDE5ACFCE4A9FCE5A9FCE5A9FCE6
                        A9FCE7A9FEE8A9FAE4A2F8E39FFDE8A6FDEAA9FDEAA9FCEAA9FDEBA9FDEBA8FE
                        EFAEFFFFC08B7213000000060500000000000000000000000000000000000000
                        0000000000000000000000000E0A026A5012FFFFBAFFF4C3FDEAB7FDEAB5FDEA
                        B5FDEBB5FDEBB5FEEDB5FEECB5FDEDB5FDEDB5FDEEB5FEEEB5FEF0B8FFFECBFF
                        FFAA4D3C00000000080601000000000000000000000000000000000000000000
                        0000000000000000000000000000001310081B1100C4A963FFFFCEFFFDD3FFF5
                        CAFEF0C5FEF0C2FEF0C1FEF0C1FEF1C3FEF2C6FFF8CBFFFFD9FFFFC0B09A4300
                        00000D0B04000000000000000000000000000000000000000000000000000000
                        000000000000000000000000000000000000040302070602271A00887337E9CD
                        7CFFFFA8FFFFC5FFFFD5FFFFD5FFFFC3FFFFA3E1C9717E6A211209000705000B
                        0A03000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000101010E0B020200
                        000702003A28003E2B003B290033240000000000000009070003030100000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000}
                      OnClick = SpeedButton13Click
                    end
                  end
                end
              end
              object Panel7: TPanel
                Left = 1
                Top = 19
                Width = 456
                Height = 198
                Align = alClient
                Color = 15792633
                TabOrder = 1
              end
              object cbIn: TCheckBox
                Left = 360
                Top = 2
                Width = 97
                Height = 16
                Caption = 'Take In'
                TabOrder = 2
                Visible = False
              end
              object cbOut: TCheckBox
                Left = 480
                Top = 2
                Width = 97
                Height = 16
                Caption = 'Take Out'
                Checked = True
                State = cbChecked
                TabOrder = 3
                Visible = False
              end
            end
          end
        end
      end
      object sheetPengambilan: TdxTabSheet
        Caption = 'SheetPengambilan'
        object cxGrid1: TcxGrid
          Left = 0
          Top = 57
          Width = 514
          Height = 478
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          LookAndFeel.Kind = lfFlat
          object tvMaster: TcxGridDBTableView
            DataController.DataSource = DsMaster
            DataController.DetailKeyFieldNames = 'NOBUKTI'
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0'
                Kind = skCount
                FieldName = 'NoBukti'
              end
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'RpJumlah'
              end
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'RpDiskon'
              end
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'RpDPP'
              end
              item
                Format = ',0.00'
                FieldName = 'RpPPN'
              end
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'RpNet'
              end>
            DataController.Summary.SummaryGroups = <>
            OnFocusedRecordChanged = tvMasterFocusedRecordChanged
            OptionsBehavior.IncSearch = True
            OptionsCustomize.ColumnFiltering = False
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsView.CellAutoHeight = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.Indicator = True
            object tvMasterNOBUKTI: TcxGridDBColumn
              Caption = 'No Bukti'
              DataBinding.FieldName = 'NOBUKTI'
              HeaderAlignmentVert = vaCenter
              Width = 250
            end
            object tvMasterPemesan: TcxGridDBColumn
              DataBinding.FieldName = 'Pemesan'
              HeaderAlignmentVert = vaCenter
              Width = 250
            end
            object tvMasterAlamat: TcxGridDBColumn
              DataBinding.FieldName = 'Alamat'
              Width = 250
            end
            object tvMasterTelepon: TcxGridDBColumn
              DataBinding.FieldName = 'Telepon'
              Width = 150
            end
            object tvMasterTanggalAmbil: TcxGridDBColumn
              Caption = 'Tanggal Ambil'
              DataBinding.FieldName = 'TanggalAmbil'
              Width = 175
            end
          end
          object tvDetail: TcxGridDBTableView
            DataController.DataSource = DsDetail1
            DataController.DetailKeyFieldNames = 'NoBukti'
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.KeyFieldNames = 'Urut'
            DataController.MasterKeyFieldNames = 'NoBukti'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'TotalIDR'
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsView.CellAutoHeight = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.Indicator = True
            object tvDetailNOBUKTI: TcxGridDBColumn
              DataBinding.FieldName = 'NOBUKTI'
              Visible = False
            end
            object tvDetailURUT: TcxGridDBColumn
              Caption = 'Urut'
              DataBinding.FieldName = 'URUT'
              Width = 75
            end
            object tvDetailKodeBrg: TcxGridDBColumn
              DataBinding.FieldName = 'KodeBrg'
              Visible = False
            end
            object tvDetailNAMABRG: TcxGridDBColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'NAMABRG'
              Width = 500
            end
            object tvDetailKeterangan: TcxGridDBColumn
              DataBinding.FieldName = 'Keterangan'
              Width = 300
            end
            object tvDetailIsSelesai: TcxGridDBColumn
              DataBinding.FieldName = 'IsSelesai'
              Width = 125
            end
            object tvDetailIsKirim: TcxGridDBColumn
              DataBinding.FieldName = 'IsKirim'
              Width = 125
            end
          end
          object tvMaster2: TcxGridDBTableView
            DataController.DetailKeyFieldNames = 'NOBUKTI'
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.IncSearch = True
            OptionsCustomize.ColumnFiltering = False
            OptionsView.CellAutoHeight = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.Indicator = True
            object tvMaster2NOBUKTI: TcxGridDBColumn
              Caption = 'No Bukti'
              DataBinding.FieldName = 'NOBUKTI'
              HeaderAlignmentVert = vaCenter
              Width = 250
            end
            object tvMaster2Pemesan: TcxGridDBColumn
              DataBinding.FieldName = 'Pemesan'
              HeaderAlignmentVert = vaCenter
              Width = 250
            end
            object tvMaster2URUT: TcxGridDBColumn
              DataBinding.FieldName = 'URUT'
              Visible = False
              HeaderAlignmentVert = vaCenter
            end
            object tvMaster2KodeBrg: TcxGridDBColumn
              DataBinding.FieldName = 'KodeBrg'
              Visible = False
              HeaderAlignmentVert = vaCenter
            end
            object tvMaster2NAMABRG: TcxGridDBColumn
              Caption = 'Pesanan'
              DataBinding.FieldName = 'NAMABRG'
              HeaderAlignmentVert = vaCenter
              Width = 250
            end
            object tvMaster2Keterangan: TcxGridDBColumn
              DataBinding.FieldName = 'Keterangan'
              HeaderAlignmentVert = vaCenter
              Width = 250
            end
            object tvMaster2IsSelesai: TcxGridDBColumn
              DataBinding.FieldName = 'IsSelesai'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.DisplayUnchecked = 'False'
              HeaderAlignmentVert = vaCenter
              Width = 80
            end
            object tvMaster2IsKirim: TcxGridDBColumn
              DataBinding.FieldName = 'IsKirim'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.DisplayUnchecked = 'False'
              HeaderAlignmentVert = vaCenter
              Width = 80
            end
          end
          object tvDetail2: TcxGridDBTableView
            DataController.DetailKeyFieldNames = 'NOBUKTI'
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.KeyFieldNames = 'URUT'
            DataController.MasterKeyFieldNames = 'NOBUKTI'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsView.CellAutoHeight = True
            OptionsView.GroupByBox = False
            object tvDetail2NOBUKTI: TcxGridDBColumn
              DataBinding.FieldName = 'NOBUKTI'
              Visible = False
            end
            object tvDetail2URUT: TcxGridDBColumn
              DataBinding.FieldName = 'URUT'
              Width = 50
            end
            object tvDetail2KodeBrg: TcxGridDBColumn
              DataBinding.FieldName = 'KodeBrg'
              Visible = False
            end
            object tvDetail2NAMABRG: TcxGridDBColumn
              DataBinding.FieldName = 'NAMABRG'
              Width = 300
            end
            object tvDetail2Keterangan: TcxGridDBColumn
              DataBinding.FieldName = 'Keterangan'
              Width = 300
            end
            object tvDetail2IsSelesai: TcxGridDBColumn
              DataBinding.FieldName = 'IsSelesai'
              Width = 125
            end
            object tvDetail2IsKirim: TcxGridDBColumn
              DataBinding.FieldName = 'IsKirim'
              Width = 125
            end
          end
          object cxGrid1Level1: TcxGridLevel
            Caption = 'Not Ready'
            GridView = tvMaster
            object cxGrid1Level2: TcxGridLevel
              GridView = tvDetail
            end
          end
        end
        object Panel27: TPanel
          Left = 0
          Top = 0
          Width = 514
          Height = 57
          Align = alTop
          Color = 13673887
          TabOrder = 1
          DesignSize = (
            514
            57)
          object SpeedButton14: TSpeedButton
            Left = 288
            Top = 6
            Width = 46
            Height = 46
            Flat = True
            Glyph.Data = {
              42080000424D4208000000000000420000002800000020000000200000000100
              10000300000000080000C30E0000C30E00000000000000000000007C0000E003
              00001F0000001F7C1F7C1F7C5E793D77FD77FF7FFF7FFF7FFF7FFF7FFF7FFF7F
              FF7FFF7FFF7FFF7FFF7FFF7FFE7FFF7FFF7FFF7FFF7FFF7FFF7FFE773E735E75
              1F7C1F7C1F7C1F7C1F7CFF7C1E763D679D639E677F677E677E677D677D677D67
              7E677E677E677E677E677D677D677E679E637E637D677E679E679E5F3E631E72
              FF7C1F7C1F7C1F7CDF7CDF7A9E63FC46BC367B327C2E9C327C327B329B329B32
              9C329C329C327C327C327B2E7B2E7C329C329C327B327C329C32BC36FC427E5F
              BF76DF781F7C5E751E769E67BC47BC2E3B1E3B1E3B1A3B1A3B1A3B1A3B1A3B1A
              3B1A3B1E3B1E3B1E3B1A3B1A3B1A3B1A3B1A3B1A3B1A3B1E3B1E3B1EBC2EBC43
              7E631E725E793E6F3D6B3D4FDC3A7B2A5B265B2A5B265B265B265B265B265B26
              5B265B265B265B265B265B225B225B225B265B265B265B2A5B265B267B2ADC36
              1D4B3E675E73FD73BD67FC425C2A7B2A7C267C2E7B2E7B2A7B2A7B2A7B2A7B2A
              7B2A7B2A7B2A7B2A7B2A7B2A7B267B267B2A7B2A7C2A7C2E7B2A7B267B2A5B26
              DC3ABE63FE77FF7B9E67DC3A5B267C2A7C2E7B2E7B2E7B2E7B2E7C2E7C2E7C2E
              7C2E7B2E7B2A7B2A7B2A7C2E7C2E7C2A7C2A7C2A7C2A9C2E7C2E7C2E7B2A5B22
              BC3A9E67FF7FFF7F9E6BDC3A5B267C2E7C2E7B2E7B2E7B2E7C2E9C2E7C2E7C2E
              9C2E9B2E7B2E9C2E9C2E9C2E7C2E7C2E7C2E7B2A7B2E9C2E9C2E9C2E9C2E5B26
              BC3A7E6BFF7FFF7F9E67DC3E5B2A7B2E7B2E9B2E9B2E7B329C329C2E9C2E9C2E
              9C329B2E9B2E9C329C329C329C2E7C2E9B2E7B2E7B2E9B2E9B2E9C329C2E7B2A
              DC3E9E67FF7FFF7F9E67DC3E7B2A9B2EBB329B367B2E7B2A7C2E9C369C329C32
              9C329B329C329C329C329C329C327C2E7B267B2A9B369B369B329C329C327B2A
              DC3E9E67FF7BFE7F9E67DC3E9C2EBC32BC32BC36BC36DC3ABC36BC369C329C32
              9B329B32BC36BC369C329C329C32BC369B36BB36BC369C369B369B369C329C2E
              DD429F6BFF7BFE7BBE6BFC429C2EBC369C2E9C2E1D4F7D631D4B7C2E9C2EBC36
              BB369B32BC36BC36BC367B327C2AFD467E631D4F9C2E9C2EBC36BC369C369C2E
              DC429E6BFF7BFE7BBE6BFC429C32BC36BC36DD3E9E67FE7F7E67BC3A9C32BC36
              BC36BC36BC36BC36BC369C32BC365E5FFF7F9F6BDD42BC36BC36BC36BC369C32
              DC429E6BFF7FFF7BBE6BFC467B2E9B361D4FBE6FFF7FFF7FDF7B7E63DC427B2A
              9B32BC3ABC3ABC369C2EDC427D5FDF73FF7FFF7B9E6F3E53BD36BC36BC369C32
              DD429E6BFE7FFF7FBF6BFC467B2EBB363D57DE77FF7FFF7FFF7FFF7B5E5FDC42
              BC36BC369C36BC36DD3E7E5FFF7BFF7FFF7FFF7FDE7B5E5BBD3ABC36DC3ABC36
              FE469F6FFF7FFF7F9E6BFC46BC36DC3ADC423D4F9E6BFF7FFF7FFF7FDF777E67
              FD467B2A9C2AFC427E63DF77FF7FFF7FFF7FBE6B3D53DC46DC3EDC3EDC3ABC36
              FD46BF6FFF7FFF7FBE6FFC46BC36DC3EBC36BC363D53BE6FFF7BFF7FFF7FFF7F
              7E5FFC42FD425D5BDE7BFF7FFF7FFF7BBE6F3D53BC36BC36BC3EDC3EDC3EBC36
              FC4ABE6FFF7FFF7FBE6FFC4ABC3ADC3EDC3ABC3ADC3AFD4ABE6BFF7FFF7FFF7F
              DE77BF6FBF6FDE77FF7FFF7FFF7FBF6F1C4FDC3ABC3ABC3ABC3EDC3EDC3EBC3A
              FC4ABE6BFF7BFF7FBE6F1C4FDC3ADC3EDC42DC3EBC36BC363D539E6FDF7BFF7F
              FF7FFF7FFF7FFF7FFF7FFF7BBF6F3D53BC3ABC36DC3EDC42DC3EDC42DC42BC3A
              FC4A9E6BFF7BFF7FBE6F1D4FDC3EDC42DC42DC42DC3EDC3EDC3E1E4BBF6FFF7F
              FF7FFF7FFF7FFF7FFF7FBF6F1D4FDC3EDC3EDC42FD42DC42DC42DC42FD42DC3E
              1C4BBE6BFF7BFF7FBF6F1D4FDC3EFC42FC46FC42FC42FC42BC3ADD3E3E57BE6F
              FF7FFF7FFF7FFF7FBE6F5D57DC3EBC3ADC42FC46FC46FC42DC42FC46FD46DC3E
              1E4FBE6FFF7FFF7FBF6F3D53DC42FC46FC46FC46FC46FC46DC46FD46DD461D53
              BE73FF7FFF7FDE773D57DC46DD42DC46FC4AFC46FC46FC46FC46FC46FC46DC42
              3D4FBE6FFF7FFF7FBE6F3D53FC46FD4AFD4AFD4AFC4AFC4AFC4AFC46DC42FD46
              5D5B9E679F6B7D5FFC4ADC42FD4AFD4AFD4AFD4AFD4AFC4AFC4AFC4A1D4BFC46
              3D4FBD6FFF7FFE7FBE6F3D57FC46FD4AFD4AFD4A1D4F1D4FFC4AFC4AFD4A1D4F
              1D4F1D4B1D4B1D4B1D4F1D4F1D4B1D4B1D4B1D4F1D4F1D4B1D4B1D4B1D4BFD46
              3D53BE6FFF7FFE7FBE6F3D53FD461D4F1D4F1D4F1D4F1D4F1D4F1C4B1D4F1D4F
              1D4BFD4AFD4A1D4B1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4FFD46
              3D53BE6FFF7FFF7FDE735D571D4B1D4F1D4F1D4F1D4F1D4F1D4F1C4F1D4F1D4F
              1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4FFD4A
              3D57BF73FF7FFE77FE739D5F3D531D4F1D4F1D4F1D531D4F1D531D531D531D53
              1D531D531D531D533D533D531D531D531D531D531D531D531D531D4F1D4F1D53
              7D5FFE6FFE775E737E739E6B7D5F3D571D531C531D533D531D531D533D533D53
              1D531D531D533D533D533D531D531D533D531D531D533D533D533D533D577D5B
              9D677E735E775F793F7ADE73FD677D5B1D571D4F1D4F1D4F1D4F1D531D531D53
              1D531D531D531C531D531D531D4F1D531D531C4F1C4F1D4F1D533D577D5BFE67
              BE733F7A5F791F7CDF7CDF7EBE739D6B5D5F5D5B5D5B5D5B5D5F5D5B5D5B5D5B
              5D5B5D5B5D5F5E5B5D5B5D5B5D5B5E5F5D5F5C5B5C5B5D5B5D5F7D637D6BBE73
              DF7EDF7C1F7C1F7C1F7CFF7C3E7A5E73DE6FDF73BF73BE77DF73BF73BE73BE73
              BF73BF73BE77BE73BE73BF73BF73BE77BE77BE77BE73BF77DF77DE737E733F7A
              FF7C1F7C1F7C1F7C1F7C1F7C5F795E77FE77FF7FFF7FFF7FFF7FFF7BFF7FFF7F
              FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFE775E775F79
              1F7C1F7C1F7C}
            OnClick = SpeedButton14Click
          end
          object SpeedButton15: TSpeedButton
            Left = 336
            Top = 6
            Width = 46
            Height = 46
            Anchors = [akLeft, akBottom]
            Flat = True
            Glyph.Data = {
              42080000424D4208000000000000420000002800000020000000200000000100
              10000300000000080000C30E0000C30E00000000000000000000007C0000E003
              00001F0000001F7C1F7C1F7C5F795E77FE77FF7FFF7FFF7FFF7FFF7FFF7FFF7F
              FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7BFF7FFF7FFF7FFF7FFE775E775F79
              1F7C1F7C1F7C1F7C1F7CFF7C3F7A7E73DE73DF77BF77BE73BE77BE77BE77BF73
              BF73BE73BE73BE77BF73BF73BE73BE73BF73DF73BE77BF73DF73DE6F5E733E7A
              FF7C1F7C1F7C1F7CDF7CDF7EBE737D6B7D635D5F5D5B5C5B5C5B5D5F5E5F5D5B
              5D5B5D5B5E5B5D5F5D5B5D5B5D5B5D5B5D5B5D5F5D5B5D5B5D5B5D5F9D6BBE73
              DF7EDF7C1F7C5F793F7ABE73FE677D5B3D571D531D4F1C4F1C4F1D531D531D4F
              1D531D531C531D531D531D531D531D531D531D4F1D4F1D4F1D4F1D577D5BFD67
              DE733F7A5F795E777E739D677D5B3D573D533D533D531D531D533D531D531D53
              3D533D533D531D531D531D533D533D531D531D533D531D531C531D533D577D5F
              9E6B7E735E73FE77FE6F7D5F1D531D4F1D4F1D531D531D531D531D531D531D53
              3D533D531D531D531D531D531D531D531D531D531D4F1D531D4F1D4F1D4F3D53
              9D5FFE73FE77FF7FBF733D57FD4A1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F
              1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1C4F1D4F1D4F1D4F1D4F1D4F1D4F1D4B
              5D57DE73FF7FFF7FBE6F3D53FD461D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F1D4F
              1D4F1D4F1D4BFD4AFD4A1D4B1D4F1D4F1C4B1D4F1D4F1D4F1D4F1D4F1D4FFD46
              3D53BE6FFE7FFF7FBE6F3D53FD461D4B1D4B1D4B1D4B1D4F1D4F1D4B1D4B1D4B
              1D4F1D4F1D4B1D4B1D4B1D4F1D4FFD4AFC4AFC4A1D4F1D4FFD4AFD4AFD4AFC46
              3D57BE6FFE7FFF7FBD6F3D4FFC461D4BFC4AFC4AFC4AFD4AFD4AFD4AFD4AFD4A
              DC42FC4A7D5F9F6B9E675D5BFD46DC42FC46FC4AFC4AFC4AFD4AFD4AFD4AFC46
              3D53BE6FFF7FFF7FBE6F3D4FDC42FC46FC46FC46FC46FC46FC46FC4ADC46DD42
              DC463D57DE77FF7FFF7FBE731D53DD46FD46DC46FC46FC46FC46FC46FC46DC42
              3D53BF6FFF7FFF7FBE6F1E4FDC3EFD46FC46DC42FC42FC46FC46DC42BC3ADC3E
              5D57BE6FFF7FFF7FFF7FFF7FBE6F3E57DD3EBC3AFC42FC42FC42FC46FC42DC3E
              1D4FBF6FFF7FFF7BBE6B1C4BDC3EFD42DC42DC42DC42FD42DC42DC3EDC3E1D4F
              BF6FFF7FFF7FFF7FFF7FFF7FFF7FBF6F1E4BDC3EDC3EDC3EDC42DC42DC42DC3E
              1D4FBE6FFF7FFF7B9E6BFC4ABC3ADC42DC42DC3EDC42DC3EBC36BC3A3D53BF6F
              FF7BFF7FFF7FFF7FFF7FFF7FFF7FDF7B9E6F3D53BC36BC36DC3EDC42DC3EDC3A
              1C4FBE6FFF7FFF7BBE6BFC4ABC3ADC3EDC3EBC3EBC3ABC3ADC3A1C4FBF6FFF7F
              FF7FFF7FDE77BF6FBF6FDE77FF7FFF7FFF7FBE6BFD4ADC3ABC3ADC3ADC3EBC3A
              FC4ABE6FFF7FFF7FBE6FFC4ABC36DC3EDC3EBC3EBC36BC363D53BE6FFF7BFF7F
              FF7FDE7B5D5BFD42FC427E5FFF7FFF7FFF7FFF7BBE6F3D53BC36BC36DC3EBC36
              FC46BE6FFF7FFF7FBF6FFD46BC36DC3ADC3EDC3EDC463D53BE6BFF7FFF7FFF7F
              DF777E63FC429C2A7B2AFD467E67DF77FF7FFF7FFF7F9E6B3D4FDC42DC3ABC36
              FC469E6BFF7FFF7F9F6FFE46BC36DC3ABC36BD3A5E5BDE7BFF7FFF7FFF7FFF7B
              7E5FDD3EBC369C36BC36BC36DC425E5FFF7BFF7FFF7FFF7FDE773D57BB367B2E
              FC46BF6BFF7FFE7F9E6BDD429C32BC36BC36BD363E539E6FFF7BFF7FDF737D5F
              DC429C2EBC36BC3ABC3A9B327B2ADC427E63DF7BFF7FFF7FBE6F1D4F9B367B2E
              FC46BE6BFF7BFF7F9E6BDC429C32BC36BC36BC36BC36DD429F6BFF7F5E5FBC36
              9C32BC36BC36BC36BC36BC36BC369C32BC3A7E67FE7F9E67DD3EBC36BC369C32
              FC42BE6BFE7BFF7B9E6BDC429C2E9C36BC36BC369C2E9C2E1D4F7E63FD467C2A
              7B32BC36BC36BC369B32BB36BC369C2E7C2E1D4B7D631D4F9C2E9C2EBC369C2E
              FC42BE6BFE7BFF7B9F6BDD429C2E9C329B369B369C36BC36BB369B36BC369C32
              9C329C32BC36BC369B329B329C329C32BC36BC36DC3ABC36BC36BC32BC329C2E
              DC3E9E67FE7FFF7B9E67DC3E7B2A9C329C329B329B369B367B2A7B267C2E9C32
              9C329C329C329C329B329C329C329C329C367C2E7B2A7B2E9B36BB329B2E7B2A
              DC3E9E67FF7FFF7F9E67DC3E7B2A9C2E9C329B2E9B2E7B2E7B2E9B2E7C2E9C2E
              9C329C329C329B2E9B2E9C329C2E9C2E9C2E9C327B329B2E9B2E7B2E7B2E5B2A
              DC3E9E67FF7FFF7F7E6BBC3A5B269C2E9C2E9C2E9C2E7B2E7B2A7C2E7C2E7C2E
              9C2E9C2E9C2E7B2E9B2E9C2E7C2E7C2E9C2E7C2E7B2E7B2E7B2E7C2E7C2E5B26
              DC3A9E6BFF7FFF7F9E67BC3A5B227B2A7C2E7C2E9C2E7C2A7C2A7C2A7C2A7C2E
              7C2E7B2A7B2A7B2A7B2E7C2E7C2E7C2E7C2E7B2E7B2E7B2E7B2E7C2E7C2A5B26
              DC3A9E67FF7BFE77BE63DC3A5B267B2A7B267B2A7C2E7C2A7B2A7B2A7B267B26
              7B2A7B2A7B2A7B2A7B2A7B2A7B2A7B2A7B2A7B2A7B2A7B2E7C2E7C267B2A5C2A
              FC42BD67FD735E733E671D4BDC367B2A5B265B265B2A5B265B265B265B225B22
              5B225B265B265B265B265B265B265B265B265B265B265B265B2A5B267B2ADC3A
              3D4F3D6B3E6F5E791E727E63BC43BC2E3B1E3B1E3B1E3B1A3B1A3B1A3B1A3B1A
              3B1A3B1A3B1E3B1E3B1E3B1A3B1A3B1A3B1A3B1A3B1A3B1A3B1E3B1EBC2EBC47
              9E671E765E751F7CDF78BF767E5FFC42BC369C327C327B329C329C327C327B2E
              7B2E7C327C329C329C329C329B329B327B327C329C327C2E7B32BC36FC469E63
              DF7ADF7C1F7C1F7C1F7CFF7C1E723E639E5F9E677E677D677E639E637E677D67
              7D677E677E677E677E677E677D677D677D677E677E677F679E679D633D671E76
              FF7C1F7C1F7C1F7C1F7C1F7C5E753E73FE77FF7FFF7FFF7FFF7FFF7FFF7FFE7F
              FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFD773D775E79
              1F7C1F7C1F7C}
            OnClick = SpeedButton15Click
          end
          object Label13: TLabel
            Left = 1
            Top = 40
            Width = 149
            Height = 18
            Align = alCustom
            Caption = '   DAFTAR PESANAN'
            Color = 13673887
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold, fsUnderline]
            ParentColor = False
            ParentFont = False
            Layout = tlBottom
          end
          object SpeedButton16: TSpeedButton
            Left = 448
            Top = 6
            Width = 46
            Height = 46
            Anchors = [akLeft, akBottom]
            Flat = True
            Glyph.Data = {
              660F0000424D660F000000000000360000002800000024000000240000000100
              180000000000300F0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFD7E5D9BAD4BDFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5E3D8148323006A00
              96BB9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF238E3C099A2B0A8D1C087D0DBFD4C4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF4DA16309AA3E129D321287220A7C0C108017D2E2
              D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87C09612AA470E9F2E0088
              00008A00167C17057B02288C32FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1DC
              C7109F3F15AE49008900018B02008C02078808187B14007C006AAE79FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFEBF0EE00932915B24B04930F028F0903900B03900B02920A0B
              890F187B1300840381BF90FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F6F33DAA5D11B54D0B9D2404930F04
              9412049413049413049512039512108715127F0F0C8F1DB6DBC4FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6DC18714
              BA5610A63407971608991908991A08991A08991A08991A089A19069B19178117
              0D87110B952AFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF81CD9D0DC1551BBE55069B1C089F24089F24089F24089F24099F25
              0AA0250AA0260AA1260A9E2319851A088E1230AB56F6FBFAFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFC2E4D10DBD5223D56E09A52C0FA52F16A936
              1AAA391BAB3A18AA3813A83309A42B09A42B0CA52D0CA72F119D2A1C851A089D
              256AC78BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0F2E82BBB5F23E27E
              27BA5338B85844BD6246BE6648BE6747BF6647BE6745BD643FBB5F2EB65215AD
              3D09A9320CAC37169C2D1B8B1D08A6349DDDB9FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              EBF7F243C7783AE28854CC7E51C47350C6744EC6744EC6734EC6734DC6734EC6
              734EC6734FC67451C77555C8793FC26821B75010B7471A992D1B972900A932CE
              F0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF73D89F46DA885BDC924DC7754ECA794DCA794ECA
              794ECA794EC9794EC9794DC9784DC9784EC9794DC9794ECA7951CA7B50CA7A39
              C46A17B74E1D982D14A3342DC46ADFF7ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7ECD148D7875CE39B50CD
              804FCD8050CE804ECE7E4DCD7E4ECD7E4ECD7E4DCC7E50CF8350D0854DCC7D4E
              CE7E4ECD7F4FCE7F51CE8054CF8344CB791FBA561E932712B74D54D58EFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3F6
              E556D9905BE79F52D28750D2874FD28750D2874ED2864DD1864ED1864CD1844E
              D38743CD7C4CD0824FD58B4ED28550D2874FD28752D28852D28856D48B50D48A
              28C1632099300BBB5261DD9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFBFF4DA5AE6A052D89051D58D50D68D4ED58C4ED58B4D
              D58A4CD48A4BD58A4BD48A43D48549C5734BC6754ED68A4DD78E4DD58B4ED58C
              51D68E52D68D54D68F57D89151DA9222B45121AB450AC660A8F2CEFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0F5E962E6A550D99150
              D9924ED9904CD88F4AD88F48D88E49D88D47D78D4AE0962FBD5FCEEDD7ACE5C0
              37C46B4DDA8F4CDA914DD8904FD99252D99354DA9355DB945ADB9846D88C21AE
              491EB85628D982CBF9E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF77B47D45DD934EDE984BDC9447DC9246DB9143DB9042DB9143E093
              21BF5DC1E8CAFFFFFFFFFFFF80D59D40C46F49DE914ADD944CDC954FDD9653DD
              9A55DE9B58DE9C5AE09F3DDB8D25AC491CC76A31E08CDBFDECFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0EEE83BAB5B47E29847DE9642DD93
              41DE933EDD913DDF932ACA6D7FD398FFFFFFFFFFFFFFFFFFF6FCF96ACB893CC1
              6A48E59B49DE984CE09952DF9C54E09E57E19F5BE2A156E2A12BD58124B1511B
              D27748E99EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              BDD3B930BA6542E69E3DE0953CE0943AE29729D67A5BC379FAFDFAFFFFFFFFFF
              FFFFFFFFFFFFFFDDF4E543B46239C46C49E9A34BE29D50E3A055E4A258E4A559
              E5A45FE5A940E29A23CC7526C16814DA7FACF9D6FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9C8A52EC97338E99E36E69B2CE08845B0
              5CF5FAF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9F1DF259D3D36C16A48
              EBA54EE6A553E7A658E8A85CE8A95FE9AC60EAAD28E49327CF7B16D3799FF9D1
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80BD
              8621D87D2FDF8B1DAA45DFF0E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF94CFA01D912D39CE794EEEAE53EAA858EAAA5CEBAC5FEAAE66ECB1
              39E89D22D58035DF8EFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF45B46112A439A8D9B1FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF68B2700E7E144AEDA454EEAE
              57EBAC5DECAD5FECB064EEB248E8A224DD84C8F9E1FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF50A05313851F4DE9A258F0AF5DEEAE60EEB062EFB256E29FB4F4D4FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECF6ED177C1726A14456F1AC5DEEB061F0
              B253E5A1A9F2CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0D3
              B0076F0435B96362FABD55E9A575ECB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF9ECBA00C760B46D38386F4BFF9FFFBFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFA7D6B1AE
              D4B2FCFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFAFAFAF8F8F8F7F7F7F8F8F8FAFAFAF9F9F9F8F8F8F6F6F6FCFC
              FCF9F9F9F7F7F7F9F9F9}
            OnClick = SpeedButton16Click
          end
        end
      end
    end
    object Panel22: TPanel
      Left = 1
      Top = 1
      Width = 514
      Height = 64
      Align = alTop
      Color = 13673887
      TabOrder = 1
      object Panel23: TPanel
        Left = 5
        Top = -1
        Width = 161
        Height = 65
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object BtnOrder: TSpeedButton
          Left = 8
          Top = 8
          Width = 145
          Height = 49
          Caption = 'ORDER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = BtnOrderClick
        end
      end
      object Panel24: TPanel
        Left = 166
        Top = -1
        Width = 161
        Height = 65
        Color = clLime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object BtnPesanan: TSpeedButton
          Left = 8
          Top = 8
          Width = 145
          Height = 49
          Caption = 'PESANAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = BtnPesananClick
        end
      end
      object Panel26: TPanel
        Left = 326
        Top = -1
        Width = 161
        Height = 65
        Color = clLime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object BtnPengambilan: TSpeedButton
          Left = 8
          Top = 8
          Width = 145
          Height = 49
          Caption = 'PENGAMBILAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -21
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = BtnPengambilanClick
        end
      end
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 464
    Top = 195
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle1
      Styles.Content = cxStyle2
      Styles.ContentEven = cxStyle3
      Styles.ContentOdd = cxStyle4
      Styles.Inactive = cxStyle10
      Styles.IncSearch = cxStyle11
      Styles.Selection = cxStyle14
      Styles.FilterBox = cxStyle5
      Styles.Footer = cxStyle6
      Styles.Group = cxStyle7
      Styles.GroupByBox = cxStyle8
      Styles.Header = cxStyle9
      Styles.Indicator = cxStyle12
      Styles.Preview = cxStyle13
    end
  end
  object QuGroup: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    Left = 352
    Top = 139
  end
  object QuBarang: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    Left = 352
    Top = 167
  end
  object frxCetakDapur: TfrxDBDataset
    UserName = 'frxCetakDapur'
    CloseDataSource = True
    FieldAliases.Strings = (
      'NoBukti=NoBukti'
      'KodeBrg=KodeBrg'
      'Tanggal=Tanggal'
      'NoSat=NoSat'
      'Satuan=Satuan'
      'Isi=Isi'
      'HrgNetto=HrgNetto'
      'Qnt=Qnt'
      'TglInput=TglInput'
      'SubTotal=SubTotal'
      'UserID=UserID'
      'KodeCust=KodeCust'
      'Ctk=Ctk'
      'harga=harga'
      'Diskon=Diskon'
      'BayarTunai=BayarTunai'
      'BayarDebet=BayarDebet'
      'NoDebet=NoDebet'
      'BankDebet=BankDebet'
      'BayarKredit=BayarKredit'
      'TipeKartuKredit=TipeKartuKredit'
      'NoKredit=NoKredit'
      'BankKredit=BankKredit'
      'BayarVoucher=BayarVoucher'
      'DiscMember=DiscMember'
      'DiscHarian=DiscHarian'
      'NamaMenu=NamaMenu'
      'Keterangan=Keterangan'
      'DP=DP'
      'KodeKeterangan=KodeKeterangan'
      'IsTakeIn=IsTakeIn'
      'PPn=PPn'
      'Service=Service'
      'TaxPPn=TaxPPn'
      'TaxService=TaxService')
    DataSet = QuBeli
    BCDToCurrency = False
    Left = 248
    Top = 235
  end
  object PopupMenu1: TPopupMenu
    Left = 136
    Top = 352
    object ShowDetailOrder1: TMenuItem
      Caption = 'Show Detail Order'
    end
    object HideDetailOrder1: TMenuItem
      Caption = 'Hide Detail Order'
    end
  end
  object frxDesignDapur: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10
    DefaultRightMargin = 10
    DefaultTopMargin = 10
    DefaultBottomMargin = 10
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 412
    Top = 139
  end
  object QuBeli: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    AfterPost = QuBeliAfterPost
    Parameters = <
      item
        Name = '0'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = 'aaa'
      end>
    SQL.Strings = (
      'select a.NoBukti,a.KodeBrg,b.Tanggal,a.NoSat,a.Satuan,Urut,'
      'a.Isi, a.HrgNetto, Sum(a.Qnt)Qnt, b.TglInput,'
      
        '--(a.Harga*a.Qnt)* (b.DiscMember/100) NDiscMember,(a.Harga*a.Qnt' +
        ')*(b.DiscHarian/100) NDiscHarian,'
      
        'Sum(a.SubTotal)SubTotal, b.UserID, b.KodeCust,  isnull(a.Ctk, 0)' +
        ' as Ctk,a.harga,a.Diskon,'
      
        'b.BayarTunai,b.BayarDebet,b.NoDebet,b.BankDebet,b.BayarKredit,b.' +
        'TipeKartuKredit,b.NoKredit,b.BankKredit,b.BayarVoucher,b.DiscMem' +
        'ber,b.DiscHarian'
      
        ',C.NAMABRG NamaMenu, a.Keterangan, b.DP , a.KodeBrg+a.Keterangan' +
        ' KodeKeterangan , C.IsTakeIn, '
      'case when C.IsTakeIn = 1 then ISNULL(D.PPn, 0) else 0 end PPn,'
      
        'case when C.IsTakeIn = 1 then ISNULL(D.Service,0) else 0 end Ser' +
        'vice,'
      
        'case when C.IsTakeIn = 1 then ISNULL(D.PPn, 0) * a.HARGA / 100 e' +
        'lse 0 end TaxPPn,'
      
        'case when C.IsTakeIn = 1 then ISNULL(D.Service,0) * a.HARGA / 10' +
        '0 else 0 end TaxService,Piutang'
      'from dbJualTunaiDet a'
      'left outer join dbJualTunai b on a.NoBukti=b.NoBukti'
      'left outer join DBBARANG C on C.KODEBRG = a.KodeBrg'
      
        'left outer join DBMasterPajak D on D.Bulan = MONTH(B.TANGGAL) an' +
        'd D.Tahun = YEAR(B.TANGGAL)'
      'where a.NoBukti=:0'
      'Group by a.NoBukti,a.KodeBrg,b.Tanggal,a.NoSat,a.Satuan,Urut,'
      'a.Isi, a.HrgNetto,b.TglInput,'
      'b.UserID, b.KodeCust,  a.Ctk,a.harga,a.Diskon,'
      
        'b.BayarTunai,b.BayarDebet,b.NoDebet,b.BankDebet,b.BayarKredit,b.' +
        'TipeKartuKredit,b.NoKredit,b.BankKredit,b.BayarVoucher,b.DiscMem' +
        'ber,b.DiscHarian'
      
        ',C.NAMABRG, a.Keterangan, b.DP , a.KodeBrg,a.Keterangan, C.IsTak' +
        'eIn,d.PPn,d.Service,a.HARGA,Piutang'
      'Having Sum(Qnt)<>0'
      'order by Urut,C.IsTakeIn desc,TglInput '
      '')
    Left = 688
    Top = 312
    object QuBeliNoBukti: TStringField
      FieldName = 'NoBukti'
    end
    object QuBeliKodeBrg: TStringField
      FieldName = 'KodeBrg'
      Size = 25
    end
    object QuBeliTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuBeliNoSat: TWordField
      FieldName = 'NoSat'
    end
    object QuBeliSatuan: TStringField
      FieldName = 'Satuan'
      Size = 5
    end
    object QuBeliIsi: TBCDField
      FieldName = 'Isi'
      Precision = 18
      Size = 5
    end
    object QuBeliHrgNetto: TBCDField
      FieldName = 'HrgNetto'
      ReadOnly = True
      DisplayFormat = ',0'
      Precision = 32
      Size = 6
    end
    object QuBeliQnt: TBCDField
      FieldName = 'Qnt'
      DisplayFormat = ',0'
      Precision = 18
      Size = 2
    end
    object QuBeliTglInput: TDateTimeField
      FieldName = 'TglInput'
    end
    object QuBeliSubTotal: TBCDField
      FieldName = 'SubTotal'
      ReadOnly = True
      DisplayFormat = ',0'
      Precision = 32
      Size = 5
    end
    object QuBeliUserID: TStringField
      FieldName = 'UserID'
      Size = 15
    end
    object QuBeliKodeCust: TStringField
      FieldName = 'KodeCust'
      Size = 15
    end
    object QuBeliCtk: TBooleanField
      FieldName = 'Ctk'
      ReadOnly = True
    end
    object QuBeliharga: TBCDField
      FieldName = 'harga'
      Precision = 18
      Size = 2
    end
    object QuBeliDiskon: TBCDField
      FieldName = 'Diskon'
      Precision = 18
      Size = 2
    end
    object QuBeliBayarTunai: TBCDField
      FieldName = 'BayarTunai'
      Precision = 18
      Size = 2
    end
    object QuBeliBayarDebet: TBCDField
      FieldName = 'BayarDebet'
      Precision = 18
      Size = 2
    end
    object QuBeliNoDebet: TStringField
      FieldName = 'NoDebet'
      Size = 30
    end
    object QuBeliBankDebet: TStringField
      FieldName = 'BankDebet'
      Size = 30
    end
    object QuBeliBayarKredit: TBCDField
      FieldName = 'BayarKredit'
      Precision = 18
      Size = 2
    end
    object QuBeliTipeKartuKredit: TWordField
      FieldName = 'TipeKartuKredit'
    end
    object QuBeliNoKredit: TStringField
      FieldName = 'NoKredit'
      Size = 30
    end
    object QuBeliBankKredit: TStringField
      FieldName = 'BankKredit'
      Size = 30
    end
    object QuBeliBayarVoucher: TBCDField
      FieldName = 'BayarVoucher'
      Precision = 18
      Size = 2
    end
    object QuBeliDiscMember: TBCDField
      FieldName = 'DiscMember'
      Precision = 18
      Size = 2
    end
    object QuBeliDiscHarian: TBCDField
      FieldName = 'DiscHarian'
      Precision = 18
      Size = 2
    end
    object QuBeliNamaMenu: TStringField
      FieldName = 'NamaMenu'
      Size = 100
    end
    object QuBeliKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 50
    end
    object QuBeliDP: TBCDField
      FieldName = 'DP'
      Precision = 18
      Size = 2
    end
    object QuBeliKodeKeterangan: TStringField
      FieldName = 'KodeKeterangan'
      ReadOnly = True
      Size = 75
    end
    object QuBeliIsTakeIn: TBooleanField
      FieldName = 'IsTakeIn'
    end
    object QuBeliPPn: TIntegerField
      FieldName = 'PPn'
      ReadOnly = True
    end
    object QuBeliService: TIntegerField
      FieldName = 'Service'
      ReadOnly = True
    end
    object QuBeliTaxPPn: TBCDField
      FieldName = 'TaxPPn'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object QuBeliTaxService: TBCDField
      FieldName = 'TaxService'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object QuBeliUrut: TIntegerField
      FieldName = 'Urut'
    end
    object QuBeliPiutang: TBCDField
      FieldName = 'Piutang'
      Precision = 18
      Size = 2
    end
  end
  object DsBeli: TDataSource
    DataSet = QuBeli
    Left = 716
    Top = 311
  end
  object QuToping: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    Left = 352
    Top = 203
  end
  object Sp_Beli: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'Sp_JualTunai;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Choice'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@NoBukti'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@Tanggal'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@KodeCust'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@Urut'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@KodeBrg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@Qnt'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Harga'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@DiscP'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NoSat'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@Satuan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@Isi'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 3
        Precision = 18
        Value = Null
      end
      item
        Name = '@UserID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@Ctk'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DIskon'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@TglBatal'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Keterangan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@NoUrut'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = '@Pemesan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@IsOrder'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@IsTakein'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@IsTakeOut'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@IsKoreksi'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@TglInput'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@UserIdBatal'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end>
    Left = 386
    Top = 230
  end
  object frxDBPerusahaan: TfrxDBDataset
    UserName = 'frxDBPerusahaan'
    CloseDataSource = False
    FieldAliases.Strings = (
      'KodeUsaha=KodeUsaha'
      'Nama=Nama'
      'Alamat=Alamat'
      'NPWP=NPWP'
      'TglPengukuhan=TglPengukuhan'
      'Logo=Logo'
      'Direksi=Direksi'
      'Jabatan=Jabatan'
      'Kota=Kota')
    DataSet = QuPerusahaan
    BCDToCurrency = False
    Left = 248
    Top = 210
  end
  object QuPerusahaan: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from vwPerusahaan')
    Left = 382
    Top = 140
  end
  object QuGudang: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select KodeGdg from dbNomor')
    Left = 240
    Top = 143
    object QuGudangKodeGdg: TStringField
      FieldName = 'KodeGdg'
      Size = 15
    end
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 70
    Top = 133
  end
  object frxDapur: TfrxReport
    Version = '4.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 39654.6843972338
    ReportOptions.LastChange = 41563.5745963542
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      '             var DiskonMember:real;'
      ''
      'procedure ReportSummary1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxDapurGetValue
    Left = 448
    Top = 224
    Datasets = <
      item
        DataSet = frxCetakDapur
        DataSetName = 'frxCetakDapur'
      end
      item
        DataSet = frxDBPerusahaan
        DataSetName = 'frxDBPerusahaan'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      PaperWidth = 76
      PaperHeight = 279.4
      PaperSize = 256
      LeftMargin = 5
      RightMargin = 5
      TopMargin = 5
      BottomMargin = 5
      object ReportSummary1: TfrxReportSummary
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 167.19913428
        ParentFont = False
        Top = 283.46475
        Width = 249.44898
        object Memo7: TfrxMemoView
          Align = baRight
          Left = 185.19697
          Top = 37.42362364
          Width = 64.25201
          Height = 14.74015748
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DISKON]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baRight
          Left = 185.19697
          Top = 52.87401575
          Width = 64.25201
          Height = 14.74015748
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[(SUM(<frxCetakDapur."SubTotal">,MasterData1)) - [DISKON] )]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baRight
          Left = 185.19697
          Top = 68.28346457
          Width = 64.25201
          Height = 14.74015748
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[bayar]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baRight
          Left = 185.19697
          Top = 83.93700787
          Width = 64.25201
          Height = 14.74015748
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[kembali]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 132.283464566929
          Top = 37.42362364
          Width = 49.13389
          Height = 14.74015748
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Diskon')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 132.283464566929
          Top = 53.09152714
          Width = 49.13389
          Height = 14.74015748
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Total')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 132.283464566929
          Top = 68.28346457
          Width = 49.13389
          Height = 14.74015748
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Bayar')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 132.283464566929
          Top = 83.93700787
          Width = 49.13389
          Height = 14.74015748
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Kembali')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 1.57761285
          Top = 0.611471429999995
          Width = 248.63048857
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo15: TfrxMemoView
          Top = 2.84879364
          Width = 124.72449
          Height = 18.89765
          Visible = False
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxCetakDapur."NoBukti"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Align = baRight
          Left = 185.19697
          Top = 21.74644364
          Width = 64.25201
          Height = 14.74015748
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxCetakDapur."SubTotal">,MasterData1)]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 132.28346457
          Top = 21.74644364
          Width = 49.41342
          Height = 14.74015748
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'SubTotal')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 127
          Top = 2.21242999999998
          Width = 121.91342
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Bruto      [SUM(<frxCetakDapur."Harga">,MasterData1)]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Book Antiqua'
        Font.Style = []
        Height = 130
        ParentFont = False
        Top = 18.89765
        Width = 249.44898
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 1.889765
          Top = 0.805658569999998
          Width = 245.66945
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBPerusahaan."Nama"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baCenter
          Left = 1.889765
          Top = 15.50757572
          Width = 245.66945
          Height = 64.25201
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBPerusahaan."Alamat"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baRight
          Left = 120.94496
          Top = 81.25984252
          Width = 128.50402
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxCetakDapur."Tanggal"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo16: TfrxMemoView
          Align = baLeft
          Top = 81.25984252
          Width = 128.50402
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Kasir : [frxCetakDapur."userID"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo19: TfrxMemoView
          Align = baRight
          Left = 120.94496
          Top = 101.10235
          Width = 128.50402
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxCetakDapur."TglInput"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baLeft
          Top = 101.10235
          Width = 128.50402
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxCetakDapur."NoBukti"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Book Antiqua'
        Font.Style = []
        Height = 15.89765
        ParentFont = False
        Top = 207.87415
        Width = 249.44898
        AllowSplit = True
        DataSet = frxCetakDapur
        DataSetName = 'frxCetakDapur'
        RowCount = 0
        Stretched = True
        object Memo4: TfrxMemoView
          Left = 8.45191714
          Width = 147.40167
          Height = 15.11812
          ShowHint = False
          DataSet = frxCetakDapur
          DataSetName = 'frxCetakDapur'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxCetakDapur."NamaMenu"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 156.5453
          Width = 18.89765
          Height = 15.11812
          ShowHint = False
          DataField = 'Qnt'
          DataSet = frxCetakDapur
          DataSetName = 'frxCetakDapur'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxCetakDapur."Qnt"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 176.45671001
          Width = 71.81107
          Height = 15.11812
          ShowHint = False
          DataSet = frxCetakDapur
          DataSetName = 'frxCetakDapur'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxCetakDapur."HrgNetto"]')
          ParentFont = False
        end
      end
    end
  end
  object Sp_Pesan: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'Sp_PesanTunai;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Choice'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@NoBukti'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@Tanggal'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@KodeCust'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@Urut'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@KodeBrg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@Qnt'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Harga'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@DiscP'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NoSat'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@Satuan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@Isi'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 3
        Precision = 18
        Value = Null
      end
      item
        Name = '@UserID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@Ctk'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DIskon'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@TglBatal'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Keterangan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@NoUrut'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = '@Pemesan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@IsOrder'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Alamat'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@Telepon'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@TanggalAmbil'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@IsAmbil'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@KodeGdg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@TglKirim'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@JamKirim'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end
      item
        Name = '@IsKoreksi'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@TglInput'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@UserIdBatal'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end>
    Left = 386
    Top = 262
  end
  object QuMaster: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select A.NOBUKTI, A.Pemesan, A.Alamat, A.Telepon, A.TanggalAmbil'
      'from dbPesanTunai A'
      'left outer join dbPesanTunaiDet B on B.NOBUKTI = A.NOBUKTI'
      'left outer join DBBARANG C on C.KODEBRG = B.KodeBrg'
      'where A.IsAmbil = 0 and'
      #9'  A.NOBUKTI not in'
      #9#9'('
      #9#9#9'select A.NOBUKTI from dbPesanTunai A'
      #9#9#9'left outer join dbPesanTunaiDet B on B.NOBUKTI = A.NOBUKTI'
      #9#9#9'where A.IsAmbil = 0 and (B.IsSelesai = 0 or B.IsKirim = 0)'
      #9#9#9'group by A.NOBUKTI'
      #9#9')'
      ''
      
        'group by A.NOBUKTI, A.Pemesan, A.Alamat, A.Telepon, A.TanggalAmb' +
        'il'
      ''
      'order by A.NoBukti')
    Left = 24
    Top = 184
    object QuMasterNOBUKTI: TStringField
      FieldName = 'NOBUKTI'
      ReadOnly = True
    end
    object QuMasterPemesan: TStringField
      FieldName = 'Pemesan'
      ReadOnly = True
      Size = 50
    end
    object QuMasterAlamat: TStringField
      FieldName = 'Alamat'
      Size = 100
    end
    object QuMasterTelepon: TStringField
      FieldName = 'Telepon'
    end
    object QuMasterTanggalAmbil: TDateTimeField
      FieldName = 'TanggalAmbil'
    end
  end
  object DsMaster: TDataSource
    DataSet = QuMaster
    Left = 56
    Top = 184
  end
  object QuDetail1: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    DataSource = DsMaster
    Parameters = <
      item
        Name = '0'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      
        'select A.NOBUKTI, A.URUT, A.KodeBrg, A.Keterangan , A.IsSelesai,' +
        ' A.IsKirim, B.NAMABRG'
      'from dbPesanTunaiDet A'
      'left outer join DBBARANG B on B.KODEBRG = A.KodeBrg'
      'where A.NoBukti = :0')
    Left = 96
    Top = 184
    object QuDetail1NOBUKTI: TStringField
      FieldName = 'NOBUKTI'
      ReadOnly = True
    end
    object QuDetail1URUT: TIntegerField
      FieldName = 'URUT'
      ReadOnly = True
    end
    object QuDetail1KodeBrg: TStringField
      FieldName = 'KodeBrg'
      ReadOnly = True
      Size = 25
    end
    object QuDetail1Keterangan: TStringField
      FieldName = 'Keterangan'
      ReadOnly = True
      Size = 50
    end
    object QuDetail1IsSelesai: TBooleanField
      FieldName = 'IsSelesai'
    end
    object QuDetail1IsKirim: TBooleanField
      FieldName = 'IsKirim'
    end
    object QuDetail1NAMABRG: TStringField
      FieldName = 'NAMABRG'
      ReadOnly = True
      Size = 100
    end
  end
  object DsDetail1: TDataSource
    DataSet = QuDetail1
    Left = 128
    Top = 184
  end
  object Sp_AmbilTunai: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'Sp_AmbilTunai;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Choice'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@NoBukti'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@Tanggal'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@NoUrut'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = '@NoBuktiPesan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@UserID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@Urut'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 386
    Top = 294
  end
  object dxMemDataKasir: TdxMemData
    Indexes = <>
    Persistent.Data = {
      566572333333333333FB3F0B00000002000000050005004B65534A0015000000
      010008004E6F42756B74690004000000030005005572757400080000000B0008
      0054616E6767616C0015000000010008004B6F64654272670015000000010008
      004E616D61427267000400000003000400516E74000800000007000600486172
      6761001500000001000500536174310008000000060005004973693100150000
      0001000A0042756B74695572757400}
    SortOptions = []
    Left = 688
    Top = 344
  end
  object DsMemDataKasir: TDataSource
    DataSet = dxMemDataKasir
    Left = 716
    Top = 343
  end
end
