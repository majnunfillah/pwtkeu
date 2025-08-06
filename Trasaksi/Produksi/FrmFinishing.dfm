object FrFinishing: TFrFinishing
  Left = -4
  Top = -4
  Width = 1928
  Height = 892
  Caption = '-'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
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
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
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
    Width = 1920
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label26: TLabel
      Left = 8
      Top = 12
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
    object Label42: TLabel
      Left = 564
      Top = 12
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
    object Shape4: TShape
      Left = 8
      Top = 37
      Width = 785
      Height = 1
      Brush.Color = clBlack
    end
    object Label12: TLabel
      Left = 175
      Top = 12
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
    object Label7: TLabel
      Left = 390
      Top = 45
      Width = 26
      Height = 16
      Caption = 'Shift'
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
    object Label38: TLabel
      Left = 9
      Top = 45
      Width = 30
      Height = 16
      Caption = 'T K 1'
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
    object NoUrut: TEdit
      Left = 99
      Top = 8
      Width = 55
      Height = 24
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
      OnEnter = KodeSuppEnter
      OnExit = NoUrutExit
      OnKeyDown = NoUrutKeyDown
    end
    object Tanggal: TDateEdit
      Left = 620
      Top = 8
      Width = 171
      Height = 24
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
      OnEnter = TanggalEnter
      OnExit = TanggalExit
      OnKeyDown = TanggalKeyDown
    end
    object NoBukti: TEdit
      Left = 263
      Top = 8
      Width = 156
      Height = 24
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
    object Shift: TEdit
      Left = 432
      Top = 46
      Width = 121
      Height = 21
      TabOrder = 3
      Visible = False
      OnKeyDown = ShiftKeyDown
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 1920
    Height = 449
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 1
    object Panel4: TPanel
      Left = 5
      Top = 406
      Width = 1910
      Height = 38
      Align = alBottom
      AutoSize = True
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object PanelShow1: TPanel
        Left = 2
        Top = 2
        Width = 1906
        Height = 34
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Cetak: TSpeedButton
          Left = 229
          Top = 3
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
          Top = 3
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
          Top = 3
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
          Top = 3
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
        object DsgCetakBtn: TSpeedButton
          Left = 303
          Top = 3
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
          OnClick = DsgCetakBtnClick
        end
      end
    end
    object dxDBGrid1: TdxDBGrid
      Left = 5
      Top = 5
      Width = 1910
      Height = 401
      Bands = <
        item
          Width = 802
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'Urut'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnDblClick = wwDBGrid1DblClick
      OnEnter = wwDBGrid1Enter
      OnKeyDown = wwDBGrid1KeyDown
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Tahoma'
      BandFont.Style = []
      DataSource = DsQuBeli
      Filter.Criteria = {00000000}
      GridLineColor = 11202790
      GroupPanelColor = 16756834
      GroupNodeColor = 10223615
      GroupNodeTextColor = 1912356
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clBlack
      HeaderFont.Height = -13
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      HideSelectionTextColor = clBlack
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Tahoma'
      PreviewFont.Style = []
      RowFooterColor = 14088435
      ShowBands = True
      ShowRowFooter = True
      OnCustomDrawCell = dxDBGrid1CustomDrawCell
      object dxDBGrid1KODEBRG: TdxDBGridMaskColumn
        Width = 121
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KODEBRG'
      end
      object dxDBGrid1namabrg: TdxDBGridMaskColumn
        Caption = 'Nama Barang'
        Width = 111
        BandIndex = 0
        RowIndex = 0
        FieldName = 'namabrg'
      end
      object dxDBGrid1QNT: TdxDBGridMaskColumn
        Caption = 'No SPK'
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'qntspk'
      end
      object dxDBGrid1Column4: TdxDBGridColumn
        Caption = 'Nama Customer'
        Width = 250
        BandIndex = 0
        RowIndex = 0
        FieldName = 'namacustsupp'
      end
    end
  end
  object PanelShow2: TPanel
    Left = 427
    Top = 8
    Width = 87
    Height = 24
    BevelOuter = bvNone
    TabOrder = 2
    Visible = False
    object BPrev: TSpeedButton
      Left = 3
      Top = 0
      Width = 24
      Height = 24
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
    end
    object BNext: TSpeedButton
      Left = 28
      Top = 0
      Width = 24
      Height = 24
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
    end
  end
  object dxPageControl1: TdxPageControl
    Left = 0
    Top = 522
    Width = 1920
    Height = 336
    ActivePage = dxTabSheet1
    Align = alBottom
    HideButtons = False
    HotTrack = False
    MultiLine = False
    OwnerDraw = False
    RaggedRight = False
    ScrollOpposite = False
    TabHeight = 0
    TabOrder = 3
    TabPosition = dxtpTop
    TabWidth = 0
    Visible = False
    object dxTabSheet1: TdxTabSheet
      Caption = 'RPP'
      object Panel3: TPanel
        Left = 0
        Top = 7
        Width = 1920
        Height = 306
        Align = alBottom
        BevelOuter = bvNone
        BorderWidth = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object SpeedButton1: TSpeedButton
          Left = 177
          Top = 235
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
        object Label1: TLabel
          Left = 8
          Top = 44
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
        object Label4: TLabel
          Left = 1448
          Top = 22
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
          Visible = False
        end
        object Label19: TLabel
          Left = 1729
          Top = 22
          Width = 40
          Height = 16
          Caption = 'Satuan'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object LNamaSat: TRxLabel
          Left = 1805
          Top = 22
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
          Visible = False
        end
        object Label2: TLabel
          Left = 7
          Top = 19
          Width = 45
          Height = 16
          Caption = 'No. SPK'
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
        object Label3: TLabel
          Left = 1336
          Top = 151
          Width = 39
          Height = 16
          Caption = 'Rupiah'
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
        object Label41: TLabel
          Left = 7
          Top = 168
          Width = 56
          Height = 16
          Caption = 'Spesimen'
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
        object Label43: TLabel
          Left = 8
          Top = 191
          Width = 65
          Height = 16
          Caption = 'Keterangan'
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
        object Label51: TLabel
          Left = 424
          Top = 270
          Width = 89
          Height = 16
          Caption = 'Jenis Pekerjaan'
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
        object Label52: TLabel
          Left = 8
          Top = 142
          Width = 54
          Height = 16
          Caption = 'Hasil Baik'
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
        object Label53: TLabel
          Left = 216
          Top = 139
          Width = 65
          Height = 16
          Caption = 'Hasil Rusak'
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
          Left = 216
          Top = 117
          Width = 57
          Height = 16
          Caption = 'Realiasasi'
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
        object Label39: TLabel
          Left = 8
          Top = 118
          Width = 61
          Height = 16
          Caption = 'Tambahan'
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
        object NamaGdg: TRxLabel
          Left = 1449
          Top = 87
          Width = 40
          Height = 16
          Caption = '[ . . . ]'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ShadowColor = clBlack
          ShadowSize = 0
          ShadowPos = spRightBottom
          Transparent = True
          Visible = False
        end
        object LNamaBrg: TRxLabel
          Left = 100
          Top = 66
          Width = 40
          Height = 16
          Caption = '[ . . . ]'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
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
        object LTK1: TRxLabel
          Left = 1394
          Top = 23
          Width = 40
          Height = 16
          Caption = '[ . . . ]'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ShadowColor = clBlack
          ShadowSize = 0
          ShadowPos = spRightBottom
          Transparent = True
          Visible = False
        end
        object Label6: TLabel
          Left = 7
          Top = 94
          Width = 78
          Height = 16
          Caption = 'Jumlah Pesan'
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
        object Label45: TLabel
          Left = 216
          Top = 93
          Width = 76
          Height = 16
          Caption = 'Jumlah Cetak'
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
        object Label5: TLabel
          Left = 216
          Top = 168
          Width = 51
          Height = 16
          Caption = 'Sisa Baik'
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
        object Label17: TLabel
          Left = 411
          Top = 147
          Width = 78
          Height = 16
          Caption = 'Kontrol Rusak'
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
        object GroupBox1: TGroupBox
          Left = 1643
          Top = 224
          Width = 219
          Height = 97
          Caption = 'Cetak'
          TabOrder = 16
          Visible = False
          object Label8: TLabel
            Left = 10
            Top = 17
            Width = 11
            Height = 16
            Caption = '1.'
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
          object Label9: TLabel
            Left = 118
            Top = 18
            Width = 11
            Height = 16
            Caption = '4.'
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
            Left = 10
            Top = 42
            Width = 11
            Height = 16
            Caption = '2.'
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
          object Label13: TLabel
            Left = 118
            Top = 44
            Width = 11
            Height = 16
            Caption = '5.'
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
          object Label46: TLabel
            Left = 10
            Top = 68
            Width = 11
            Height = 16
            Caption = '3.'
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
          object Label18: TLabel
            Left = 118
            Top = 69
            Width = 11
            Height = 16
            Caption = '6.'
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
          object C2: TPBNumEdit
            Left = 50
            Top = 42
            Width = 50
            Height = 24
            Alignment = taRightJustify
            AutoSize = False
            Color = clWhite
            Ctl3D = False
            Decimals = 2
            NumberFormat = Thousands
            OnChange = HasilRusakChange
            OnEnter = KodeBrgEnter
            OnKeyDown = QntKeyDown
            ParentCtl3D = False
            TabOrder = 1
          end
          object C5: TPBNumEdit
            Left = 158
            Top = 44
            Width = 50
            Height = 24
            Alignment = taRightJustify
            AutoSize = False
            Color = clWhite
            Ctl3D = False
            Decimals = 2
            NumberFormat = Thousands
            OnChange = HasilRusakChange
            OnEnter = KodeBrgEnter
            OnKeyDown = QntKeyDown
            ParentCtl3D = False
            TabOrder = 4
          end
          object C1: TPBNumEdit
            Left = 50
            Top = 17
            Width = 50
            Height = 24
            Alignment = taRightJustify
            AutoSize = False
            Color = clWhite
            Ctl3D = False
            Decimals = 2
            NumberFormat = Thousands
            OnChange = HasilRusakChange
            OnEnter = KodeBrgEnter
            OnKeyDown = QntKeyDown
            ParentCtl3D = False
            TabOrder = 0
          end
          object C4: TPBNumEdit
            Left = 158
            Top = 18
            Width = 50
            Height = 24
            Alignment = taRightJustify
            AutoSize = False
            Color = clWhite
            Ctl3D = False
            Decimals = 2
            NumberFormat = Thousands
            OnChange = HasilRusakChange
            OnEnter = KodeBrgEnter
            OnKeyDown = QntKeyDown
            ParentCtl3D = False
            TabOrder = 3
          end
          object C3: TPBNumEdit
            Left = 50
            Top = 68
            Width = 50
            Height = 24
            Alignment = taRightJustify
            AutoSize = False
            Color = clWhite
            Ctl3D = False
            Decimals = 2
            NumberFormat = Thousands
            OnChange = HasilRusakChange
            OnEnter = KodeBrgEnter
            OnKeyDown = QntKeyDown
            ParentCtl3D = False
            TabOrder = 2
          end
          object C6: TPBNumEdit
            Left = 158
            Top = 69
            Width = 50
            Height = 24
            Alignment = taRightJustify
            AutoSize = False
            Color = clWhite
            Ctl3D = False
            Decimals = 2
            NumberFormat = Thousands
            OnChange = HasilRusakChange
            OnEnter = KodeBrgEnter
            OnKeyDown = QntKeyDown
            ParentCtl3D = False
            TabOrder = 5
          end
        end
        object BitBtn1: TBitBtn
          Left = 100
          Top = 235
          Width = 75
          Height = 25
          Caption = 'Simpan'
          TabOrder = 17
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
        object KodeBrg: TEdit
          Left = 100
          Top = 37
          Width = 141
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = False
          Enabled = False
          MaxLength = 25
          ParentCtl3D = False
          TabOrder = 1
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
        end
        object Qnt: TPBNumEdit
          Left = 1635
          Top = 18
          Width = 90
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 13
          Value = 1
          Visible = False
        end
        object NoSat: TPBNumEdit
          Left = 1467
          Top = 50
          Width = 20
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          DisabledColor = clWhite
          Ctl3D = False
          Decimals = -1
          MaxLength = 1
          MaxValue = 2
          MinValue = 1
          NumberFormat = Standard
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 14
          Value = 1
          Visible = False
        end
        object NoSPK: TEdit
          Left = 100
          Top = 12
          Width = 200
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = False
          MaxLength = 25
          ParentCtl3D = False
          TabOrder = 0
          OnEnter = KodeBrgEnter
          OnExit = NoSPKExit
        end
        object HPP: TPBNumEdit
          Left = 1411
          Top = 147
          Width = 90
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 15
          Value = 1
          Visible = False
        end
        object TarifMesin: TPBNumEdit
          Left = 1307
          Top = 114
          Width = 90
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 18
          Value = 1
          Visible = False
        end
        object UrutMesin: TPBNumEdit
          Left = 1403
          Top = 114
          Width = 90
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 19
          Value = 1
          Visible = False
        end
        object Spesimen: TPBNumEdit
          Left = 100
          Top = 164
          Width = 90
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          Decimals = 0
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 9
        end
        object Keterangan: TEdit
          Left = 100
          Top = 189
          Width = 200
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = False
          MaxLength = 25
          ParentCtl3D = False
          TabOrder = 12
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
        end
        object JenisKerja: TComboBox
          Left = 516
          Top = 267
          Width = 145
          Height = 24
          ItemHeight = 16
          ItemIndex = 1
          TabOrder = 11
          Text = 'Sortir Awal'
          Visible = False
          Items.Strings = (
            '-'
            'Sortir Awal'
            'Hitung data'
            'Hitung Sekat'
            'Oglek Pengganti'
            'No Pack'
            'bungkus'
            'Lainnya (leles)'
            'Sortir Invisible'
            'sortir Akhir'
            'Final Finishing'
            'Tempel Hologram')
        end
        object HasilBaik: TPBNumEdit
          Left = 100
          Top = 139
          Width = 90
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          Decimals = 0
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 6
        end
        object HasilRusak: TPBNumEdit
          Left = 308
          Top = 139
          Width = 90
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Enabled = False
          Ctl3D = False
          Decimals = 0
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 7
        end
        object Realisasi: TPBNumEdit
          Left = 308
          Top = 113
          Width = 90
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Enabled = False
          Ctl3D = False
          Decimals = 0
          NumberFormat = Thousands
          OnChange = SisaBaikChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 5
        end
        object GroupBox3: TGroupBox
          Left = 1627
          Top = 0
          Width = 219
          Height = 97
          Caption = 'Hotprint'
          TabOrder = 20
          Visible = False
          object Label21: TLabel
            Left = 10
            Top = 17
            Width = 11
            Height = 16
            Caption = '1.'
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
          object Label22: TLabel
            Left = 118
            Top = 18
            Width = 11
            Height = 16
            Caption = '4.'
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
          object Label23: TLabel
            Left = 10
            Top = 42
            Width = 11
            Height = 16
            Caption = '2.'
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
          object Label24: TLabel
            Left = 118
            Top = 44
            Width = 11
            Height = 16
            Caption = '5.'
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
            Left = 10
            Top = 68
            Width = 11
            Height = 16
            Caption = '3.'
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
            Left = 118
            Top = 69
            Width = 11
            Height = 16
            Caption = '6.'
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
          object H2: TPBNumEdit
            Left = 50
            Top = 42
            Width = 50
            Height = 24
            Alignment = taRightJustify
            AutoSize = False
            Color = clWhite
            Ctl3D = False
            Decimals = 2
            NumberFormat = Thousands
            OnChange = HasilRusakChange
            OnEnter = KodeBrgEnter
            OnKeyDown = QntKeyDown
            ParentCtl3D = False
            TabOrder = 1
          end
          object h5: TPBNumEdit
            Left = 158
            Top = 44
            Width = 50
            Height = 24
            Alignment = taRightJustify
            AutoSize = False
            Color = clWhite
            Ctl3D = False
            Decimals = 2
            NumberFormat = Thousands
            OnChange = HasilRusakChange
            OnEnter = KodeBrgEnter
            OnKeyDown = QntKeyDown
            ParentCtl3D = False
            TabOrder = 4
          end
          object H1: TPBNumEdit
            Left = 50
            Top = 17
            Width = 50
            Height = 24
            Alignment = taRightJustify
            AutoSize = False
            Color = clWhite
            Ctl3D = False
            Decimals = 2
            NumberFormat = Thousands
            OnChange = HasilRusakChange
            OnEnter = KodeBrgEnter
            OnKeyDown = QntKeyDown
            ParentCtl3D = False
            TabOrder = 0
          end
          object H4: TPBNumEdit
            Left = 158
            Top = 18
            Width = 50
            Height = 24
            Alignment = taRightJustify
            AutoSize = False
            Color = clWhite
            Ctl3D = False
            Decimals = 2
            NumberFormat = Thousands
            OnChange = HasilRusakChange
            OnEnter = KodeBrgEnter
            OnKeyDown = QntKeyDown
            ParentCtl3D = False
            TabOrder = 3
          end
          object H3: TPBNumEdit
            Left = 50
            Top = 68
            Width = 50
            Height = 24
            Alignment = taRightJustify
            AutoSize = False
            Color = clWhite
            Ctl3D = False
            Decimals = 2
            NumberFormat = Thousands
            OnChange = HasilRusakChange
            OnEnter = KodeBrgEnter
            OnKeyDown = QntKeyDown
            ParentCtl3D = False
            TabOrder = 2
          end
          object H6: TPBNumEdit
            Left = 158
            Top = 69
            Width = 50
            Height = 24
            Alignment = taRightJustify
            AutoSize = False
            Color = clWhite
            Ctl3D = False
            Decimals = 2
            NumberFormat = Thousands
            OnChange = HasilRusakChange
            OnEnter = KodeBrgEnter
            OnKeyDown = QntKeyDown
            ParentCtl3D = False
            TabOrder = 5
          end
        end
        object GroupBox4: TGroupBox
          Left = 1627
          Top = 169
          Width = 118
          Height = 72
          Caption = 'Embos'
          TabOrder = 21
          Visible = False
          object Label28: TLabel
            Left = 10
            Top = 17
            Width = 11
            Height = 16
            Caption = '1.'
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
            Left = 10
            Top = 42
            Width = 11
            Height = 16
            Caption = '2.'
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
          object E2: TPBNumEdit
            Left = 50
            Top = 42
            Width = 50
            Height = 24
            Alignment = taRightJustify
            AutoSize = False
            Color = clWhite
            Ctl3D = False
            Decimals = 2
            NumberFormat = Thousands
            OnChange = HasilRusakChange
            OnEnter = KodeBrgEnter
            OnKeyDown = QntKeyDown
            ParentCtl3D = False
            TabOrder = 1
          end
          object E1: TPBNumEdit
            Left = 50
            Top = 17
            Width = 50
            Height = 24
            Alignment = taRightJustify
            AutoSize = False
            Color = clWhite
            Ctl3D = False
            Decimals = 2
            NumberFormat = Thousands
            OnChange = HasilRusakChange
            OnEnter = KodeBrgEnter
            OnKeyDown = QntKeyDown
            ParentCtl3D = False
            TabOrder = 0
          end
        end
        object GroupBox5: TGroupBox
          Left = 1747
          Top = 177
          Width = 118
          Height = 72
          Caption = 'Nomer'
          TabOrder = 22
          Visible = False
          object Label29: TLabel
            Left = 10
            Top = 17
            Width = 11
            Height = 16
            Caption = '1.'
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
          object Label31: TLabel
            Left = 10
            Top = 42
            Width = 11
            Height = 16
            Caption = '2.'
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
          object N2: TPBNumEdit
            Left = 50
            Top = 42
            Width = 50
            Height = 24
            Alignment = taRightJustify
            AutoSize = False
            Color = clWhite
            Ctl3D = False
            Decimals = 2
            NumberFormat = Thousands
            OnChange = HasilRusakChange
            OnEnter = KodeBrgEnter
            OnKeyDown = QntKeyDown
            ParentCtl3D = False
            TabOrder = 1
          end
          object N1: TPBNumEdit
            Left = 50
            Top = 17
            Width = 50
            Height = 24
            Alignment = taRightJustify
            AutoSize = False
            Color = clWhite
            Ctl3D = False
            Decimals = 2
            NumberFormat = Thousands
            OnChange = HasilRusakChange
            OnEnter = KodeBrgEnter
            OnKeyDown = QntKeyDown
            ParentCtl3D = False
            TabOrder = 0
          end
        end
        object GroupBox6: TGroupBox
          Left = 1499
          Top = 200
          Width = 118
          Height = 48
          Caption = 'Sablon / CSI'
          TabOrder = 23
          Visible = False
          object Label32: TLabel
            Left = 10
            Top = 17
            Width = 11
            Height = 16
            Caption = '1.'
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
          object CSI: TPBNumEdit
            Left = 50
            Top = 17
            Width = 50
            Height = 24
            Alignment = taRightJustify
            AutoSize = False
            Color = clWhite
            Ctl3D = False
            Decimals = 2
            NumberFormat = Thousands
            OnChange = HasilRusakChange
            OnEnter = KodeBrgEnter
            OnKeyDown = QntKeyDown
            ParentCtl3D = False
            TabOrder = 0
          end
        end
        object GroupBox7: TGroupBox
          Left = 1627
          Top = 97
          Width = 219
          Height = 73
          Caption = 'Invisible'
          TabOrder = 24
          Visible = False
          object Label35: TLabel
            Left = 10
            Top = 17
            Width = 11
            Height = 16
            Caption = '1.'
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
          object Label36: TLabel
            Left = 118
            Top = 18
            Width = 11
            Height = 16
            Caption = '3.'
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
            Left = 10
            Top = 42
            Width = 11
            Height = 16
            Caption = '2.'
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
          object I2: TPBNumEdit
            Left = 50
            Top = 42
            Width = 50
            Height = 24
            Alignment = taRightJustify
            AutoSize = False
            Color = clWhite
            Ctl3D = False
            Decimals = 2
            NumberFormat = Thousands
            OnChange = HasilRusakChange
            OnEnter = KodeBrgEnter
            OnKeyDown = QntKeyDown
            ParentCtl3D = False
            TabOrder = 1
          end
          object I1: TPBNumEdit
            Left = 50
            Top = 17
            Width = 50
            Height = 24
            Alignment = taRightJustify
            AutoSize = False
            Color = clWhite
            Ctl3D = False
            Decimals = 2
            NumberFormat = Thousands
            OnChange = HasilRusakChange
            OnEnter = KodeBrgEnter
            OnKeyDown = QntKeyDown
            ParentCtl3D = False
            TabOrder = 0
          end
          object I3: TPBNumEdit
            Left = 158
            Top = 18
            Width = 50
            Height = 24
            Alignment = taRightJustify
            AutoSize = False
            Color = clWhite
            Ctl3D = False
            Decimals = 2
            NumberFormat = Thousands
            OnChange = HasilRusakChange
            OnEnter = KodeBrgEnter
            OnKeyDown = QntKeyDown
            ParentCtl3D = False
            TabOrder = 2
          end
        end
        object KertasTambahan: TPBNumEdit
          Left = 100
          Top = 114
          Width = 90
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          Decimals = 0
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 4
        end
        object KodeGdg: TEdit
          Left = 1388
          Top = 86
          Width = 55
          Height = 20
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
          TabOrder = 25
          Visible = False
          OnEnter = KodeSuppEnter
          OnExit = KodeGdgExit
          OnKeyDown = QntKeyDown
        end
        object TK1: TEdit
          Left = 1316
          Top = 21
          Width = 69
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = False
          MaxLength = 25
          ParentCtl3D = False
          TabOrder = 8
          Visible = False
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
        end
        object QntPesan: TPBNumEdit
          Left = 100
          Top = 91
          Width = 89
          Height = 22
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 0
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 2
        end
        object QntCetak: TPBNumEdit
          Left = 308
          Top = 90
          Width = 90
          Height = 22
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 0
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 3
        end
        object GroupBox9: TGroupBox
          Left = 1499
          Top = 245
          Width = 118
          Height = 48
          Caption = 'Potong'
          TabOrder = 26
          Visible = False
          object Label44: TLabel
            Left = 10
            Top = 17
            Width = 11
            Height = 16
            Caption = '1.'
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
          object P1: TPBNumEdit
            Left = 50
            Top = 17
            Width = 50
            Height = 24
            Alignment = taRightJustify
            AutoSize = False
            Color = clWhite
            Ctl3D = False
            Decimals = 2
            NumberFormat = Thousands
            OnChange = HasilRusakChange
            OnEnter = KodeBrgEnter
            OnKeyDown = QntKeyDown
            ParentCtl3D = False
            TabOrder = 0
          end
        end
        object SisaBaik: TPBNumEdit
          Left = 308
          Top = 164
          Width = 90
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Enabled = False
          Ctl3D = False
          Decimals = 0
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 10
        end
        object KontrolRusak: TPBNumEdit
          Left = 492
          Top = 147
          Width = 90
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Enabled = False
          Ctl3D = False
          Decimals = 0
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 27
        end
      end
    end
    object dxTabSheet2: TdxTabSheet
      Caption = 'Penyebab Rusak'
      object GroupBox10: TGroupBox
        Left = -1
        Top = 1
        Width = 1266
        Height = 280
        TabOrder = 0
        object Label49: TLabel
          Left = 72
          Top = 8
          Width = 33
          Height = 16
          Caption = 'Mesin'
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
        object Label50: TLabel
          Left = 8
          Top = 26
          Width = 11
          Height = 16
          Caption = '1.'
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
        object Label54: TLabel
          Left = 165
          Top = 8
          Width = 40
          Height = 16
          Caption = 'Jumlah'
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
        object Label55: TLabel
          Left = 301
          Top = 8
          Width = 65
          Height = 16
          Caption = 'Keterangan'
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
        object Label56: TLabel
          Left = 8
          Top = 64
          Width = 11
          Height = 16
          Caption = '2.'
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
        object Label57: TLabel
          Left = 8
          Top = 105
          Width = 11
          Height = 16
          Caption = '3.'
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
        object Label58: TLabel
          Left = 8
          Top = 144
          Width = 11
          Height = 16
          Caption = '4.'
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
        object Label59: TLabel
          Left = 8
          Top = 184
          Width = 11
          Height = 16
          Caption = '5.'
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
        object Label61: TLabel
          Left = 424
          Top = 25
          Width = 11
          Height = 16
          Caption = '7.'
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
        object Label62: TLabel
          Left = 424
          Top = 64
          Width = 11
          Height = 16
          Caption = '8.'
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
        object Label63: TLabel
          Left = 424
          Top = 105
          Width = 11
          Height = 16
          Caption = '9.'
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
        object Label64: TLabel
          Left = 424
          Top = 146
          Width = 18
          Height = 16
          Caption = '10.'
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
        object Label68: TLabel
          Left = 424
          Top = 224
          Width = 18
          Height = 16
          Caption = '12.'
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
        object Label69: TLabel
          Left = 832
          Top = 23
          Width = 18
          Height = 16
          Caption = '13.'
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
        object Label70: TLabel
          Left = 832
          Top = 65
          Width = 18
          Height = 16
          Caption = '14.'
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
        object Label71: TLabel
          Left = 832
          Top = 103
          Width = 18
          Height = 16
          Caption = '15.'
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
        object Label72: TLabel
          Left = 832
          Top = 148
          Width = 18
          Height = 16
          Caption = '16.'
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
        object Label73: TLabel
          Left = 832
          Top = 187
          Width = 18
          Height = 16
          Caption = '17.'
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
        object Label74: TLabel
          Left = 832
          Top = 222
          Width = 18
          Height = 16
          Caption = '18.'
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
        object Label75: TLabel
          Left = 424
          Top = 185
          Width = 18
          Height = 16
          Caption = '11.'
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
        object NmMsn1: TRxLabel
          Left = 28
          Top = 47
          Width = 40
          Height = 16
          Caption = '[ . . . ]'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
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
        object NmMsn2: TRxLabel
          Left = 28
          Top = 86
          Width = 40
          Height = 16
          Caption = '[ . . . ]'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
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
        object NmMsn3: TRxLabel
          Left = 28
          Top = 126
          Width = 40
          Height = 16
          Caption = '[ . . . ]'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
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
        object NmMsn4: TRxLabel
          Left = 28
          Top = 166
          Width = 40
          Height = 16
          Caption = '[ . . . ]'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
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
        object NmMsn5: TRxLabel
          Left = 28
          Top = 205
          Width = 40
          Height = 16
          Caption = '[ . . . ]'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
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
        object Label60: TLabel
          Left = 8
          Top = 223
          Width = 11
          Height = 16
          Caption = '6.'
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
        object NmMsn6: TRxLabel
          Left = 28
          Top = 245
          Width = 40
          Height = 16
          Caption = '[ . . . ]'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
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
        object Label14: TLabel
          Left = 484
          Top = 8
          Width = 33
          Height = 16
          Caption = 'Mesin'
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
        object Label15: TLabel
          Left = 577
          Top = 7
          Width = 40
          Height = 16
          Caption = 'Jumlah'
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
        object Label16: TLabel
          Left = 698
          Top = 8
          Width = 65
          Height = 16
          Caption = 'Keterangan'
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
        object NmMsn7: TRxLabel
          Left = 444
          Top = 47
          Width = 40
          Height = 16
          Caption = '[ . . . ]'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
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
        object NmMsn8: TRxLabel
          Left = 444
          Top = 86
          Width = 40
          Height = 16
          Caption = '[ . . . ]'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
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
        object NmMsn9: TRxLabel
          Left = 444
          Top = 126
          Width = 40
          Height = 16
          Caption = '[ . . . ]'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
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
        object NmMsn10: TRxLabel
          Left = 444
          Top = 166
          Width = 40
          Height = 16
          Caption = '[ . . . ]'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
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
        object NmMsn11: TRxLabel
          Left = 444
          Top = 205
          Width = 40
          Height = 16
          Caption = '[ . . . ]'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
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
        object NmMsn12: TRxLabel
          Left = 444
          Top = 245
          Width = 40
          Height = 16
          Caption = '[ . . . ]'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
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
        object NmMsn13: TRxLabel
          Left = 852
          Top = 45
          Width = 40
          Height = 16
          Caption = '[ . . . ]'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
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
        object NmMsn14: TRxLabel
          Left = 852
          Top = 84
          Width = 40
          Height = 16
          Caption = '[ . . . ]'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
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
        object NmMsn15: TRxLabel
          Left = 852
          Top = 125
          Width = 40
          Height = 16
          Caption = '[ . . . ]'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
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
        object NmMsn16: TRxLabel
          Left = 852
          Top = 165
          Width = 40
          Height = 16
          Caption = '[ . . . ]'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
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
        object NmMsn17: TRxLabel
          Left = 852
          Top = 205
          Width = 40
          Height = 16
          Caption = '[ . . . ]'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
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
        object NmMsn18: TRxLabel
          Left = 852
          Top = 244
          Width = 40
          Height = 16
          Caption = '[ . . . ]'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
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
        object Label65: TLabel
          Left = 887
          Top = 8
          Width = 33
          Height = 16
          Caption = 'Mesin'
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
        object Label66: TLabel
          Left = 980
          Top = 7
          Width = 40
          Height = 16
          Caption = 'Jumlah'
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
        object Label67: TLabel
          Left = 1101
          Top = 8
          Width = 65
          Height = 16
          Caption = 'Keterangan'
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
        object PR1: TEdit
          Left = 28
          Top = 25
          Width = 110
          Height = 22
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
          OnExit = PR1Exit
          OnKeyDown = QntKeyDown
        end
        object QR1: TPBNumEdit
          Left = 139
          Top = 25
          Width = 100
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 1
        end
        object KetR1: TEdit
          Left = 240
          Top = 25
          Width = 170
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 500
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
        end
        object PR2: TEdit
          Left = 28
          Top = 63
          Width = 110
          Height = 22
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
          TabOrder = 3
          OnEnter = KodeBrgEnter
          OnExit = PR2Exit
          OnKeyDown = QntKeyDown
        end
        object QR2: TPBNumEdit
          Left = 139
          Top = 63
          Width = 100
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 4
        end
        object KetR2: TEdit
          Left = 240
          Top = 63
          Width = 170
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 500
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
        end
        object PR3: TEdit
          Left = 28
          Top = 104
          Width = 110
          Height = 22
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
          TabOrder = 6
          OnEnter = KodeBrgEnter
          OnExit = PR3Exit
          OnKeyDown = QntKeyDown
        end
        object QR3: TPBNumEdit
          Left = 139
          Top = 104
          Width = 100
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 7
        end
        object KetR3: TEdit
          Left = 240
          Top = 104
          Width = 170
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 500
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 8
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
        end
        object PR4: TEdit
          Left = 28
          Top = 143
          Width = 110
          Height = 22
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
          TabOrder = 9
          OnEnter = KodeBrgEnter
          OnExit = PR4Exit
          OnKeyDown = QntKeyDown
        end
        object QR4: TPBNumEdit
          Left = 139
          Top = 143
          Width = 100
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 10
        end
        object KetR4: TEdit
          Left = 240
          Top = 143
          Width = 170
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 500
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 11
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
        end
        object PR5: TEdit
          Left = 28
          Top = 183
          Width = 110
          Height = 22
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
          TabOrder = 12
          OnEnter = KodeBrgEnter
          OnExit = PR5Exit
          OnKeyDown = QntKeyDown
        end
        object QR5: TPBNumEdit
          Left = 139
          Top = 183
          Width = 100
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 13
        end
        object KetR5: TEdit
          Left = 240
          Top = 183
          Width = 170
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 500
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 14
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
        end
        object PR7: TEdit
          Left = 444
          Top = 25
          Width = 110
          Height = 22
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
          TabOrder = 15
          OnExit = PR7Exit
          OnKeyDown = QntKeyDown
        end
        object QR7: TPBNumEdit
          Left = 555
          Top = 25
          Width = 100
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 16
        end
        object KetR7: TEdit
          Left = 656
          Top = 25
          Width = 170
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 500
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 17
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
        end
        object PR8: TEdit
          Left = 444
          Top = 63
          Width = 110
          Height = 22
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
          TabOrder = 18
          OnEnter = KodeBrgEnter
          OnExit = PR8Exit
          OnKeyDown = QntKeyDown
        end
        object QR8: TPBNumEdit
          Left = 555
          Top = 63
          Width = 100
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 19
        end
        object KetR8: TEdit
          Left = 656
          Top = 63
          Width = 170
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 500
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 20
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
        end
        object PR9: TEdit
          Left = 444
          Top = 104
          Width = 110
          Height = 22
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
          TabOrder = 21
          OnEnter = KodeBrgEnter
          OnExit = PR9Exit
          OnKeyDown = QntKeyDown
        end
        object QR9: TPBNumEdit
          Left = 555
          Top = 104
          Width = 100
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 22
        end
        object KetR9: TEdit
          Left = 656
          Top = 104
          Width = 170
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 500
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 23
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
        end
        object PR10: TEdit
          Left = 444
          Top = 143
          Width = 110
          Height = 22
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
          TabOrder = 24
          OnEnter = KodeBrgEnter
          OnExit = PR10Exit
          OnKeyDown = QntKeyDown
        end
        object QR10: TPBNumEdit
          Left = 555
          Top = 143
          Width = 100
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 25
        end
        object KetR10: TEdit
          Left = 656
          Top = 143
          Width = 170
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 500
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 26
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
        end
        object PR11: TEdit
          Left = 444
          Top = 183
          Width = 110
          Height = 22
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
          TabOrder = 27
          OnEnter = KodeBrgEnter
          OnExit = PR11Exit
          OnKeyDown = QntKeyDown
        end
        object QR11: TPBNumEdit
          Left = 555
          Top = 183
          Width = 100
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 28
        end
        object KetR11: TEdit
          Left = 656
          Top = 183
          Width = 170
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 500
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 29
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
        end
        object PR12: TEdit
          Left = 444
          Top = 222
          Width = 110
          Height = 22
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
          TabOrder = 30
          OnEnter = KodeBrgEnter
          OnExit = PR12Exit
          OnKeyDown = QntKeyDown
        end
        object QR12: TPBNumEdit
          Left = 555
          Top = 222
          Width = 100
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 31
        end
        object KetR12: TEdit
          Left = 656
          Top = 222
          Width = 170
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 500
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 32
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
        end
        object PR13: TEdit
          Left = 852
          Top = 25
          Width = 110
          Height = 22
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
          TabOrder = 33
          OnEnter = KodeBrgEnter
          OnExit = PR13Exit
          OnKeyDown = QntKeyDown
        end
        object QR13: TPBNumEdit
          Left = 963
          Top = 25
          Width = 100
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 34
        end
        object KetR13: TEdit
          Left = 1064
          Top = 25
          Width = 170
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 500
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 35
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
        end
        object PR14: TEdit
          Left = 852
          Top = 63
          Width = 110
          Height = 22
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
          TabOrder = 36
          OnEnter = KodeBrgEnter
          OnExit = PR14Exit
          OnKeyDown = QntKeyDown
        end
        object QR14: TPBNumEdit
          Left = 963
          Top = 63
          Width = 100
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 37
        end
        object KetR14: TEdit
          Left = 1064
          Top = 63
          Width = 170
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 500
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 38
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
        end
        object PR15: TEdit
          Left = 852
          Top = 104
          Width = 110
          Height = 22
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
          TabOrder = 39
          OnEnter = KodeBrgEnter
          OnExit = PR15Exit
          OnKeyDown = QntKeyDown
        end
        object QR15: TPBNumEdit
          Left = 963
          Top = 104
          Width = 100
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 40
        end
        object KetR15: TEdit
          Left = 1064
          Top = 104
          Width = 170
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 500
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 41
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
        end
        object PR16: TEdit
          Left = 852
          Top = 143
          Width = 110
          Height = 22
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
          TabOrder = 42
          OnEnter = KodeBrgEnter
          OnExit = PR16Exit
          OnKeyDown = QntKeyDown
        end
        object QR16: TPBNumEdit
          Left = 963
          Top = 143
          Width = 100
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 43
        end
        object KetR16: TEdit
          Left = 1064
          Top = 143
          Width = 170
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 500
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 44
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
        end
        object PR17: TEdit
          Left = 852
          Top = 184
          Width = 110
          Height = 22
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
          TabOrder = 45
          OnEnter = KodeBrgEnter
          OnExit = PR17Exit
          OnKeyDown = QntKeyDown
        end
        object QR17: TPBNumEdit
          Left = 963
          Top = 184
          Width = 100
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 46
        end
        object KetR17: TEdit
          Left = 1064
          Top = 184
          Width = 170
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 500
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 47
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
        end
        object PR18: TEdit
          Left = 852
          Top = 222
          Width = 110
          Height = 22
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
          TabOrder = 48
          OnEnter = KodeBrgEnter
          OnExit = PR18Exit
          OnKeyDown = QntKeyDown
        end
        object QR18: TPBNumEdit
          Left = 963
          Top = 222
          Width = 100
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 49
        end
        object KetR18: TEdit
          Left = 1064
          Top = 222
          Width = 170
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 500
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 50
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
        end
        object PR6: TEdit
          Left = 28
          Top = 222
          Width = 110
          Height = 22
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
          TabOrder = 51
          OnEnter = KodeBrgEnter
          OnExit = PR6Exit
          OnKeyDown = QntKeyDown
        end
        object QR6: TPBNumEdit
          Left = 139
          Top = 222
          Width = 100
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 52
        end
        object KetR6: TEdit
          Left = 240
          Top = 222
          Width = 170
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 500
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 53
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
        end
      end
    end
    object dxTabSheet3: TdxTabSheet
      Caption = 'Rusak'
      object GroupBox11: TGroupBox
        Left = 0
        Top = 10
        Width = 385
        Height = 168
        Caption = 'Rusak'
        TabOrder = 0
        object Label76: TLabel
          Left = 32
          Top = 42
          Width = 36
          Height = 16
          Caption = 'Kertas'
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
        object Label77: TLabel
          Left = 8
          Top = 42
          Width = 11
          Height = 16
          Caption = '1.'
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
        object Label78: TLabel
          Left = 130
          Top = 18
          Width = 40
          Height = 16
          Caption = 'Jumlah'
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
        object Label79: TLabel
          Left = 245
          Top = 18
          Width = 65
          Height = 16
          Caption = 'Keterangan'
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
        object Label80: TLabel
          Left = 8
          Top = 65
          Width = 11
          Height = 16
          Caption = '2.'
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
        object Label81: TLabel
          Left = 8
          Top = 88
          Width = 11
          Height = 16
          Caption = '3.'
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
        object Label82: TLabel
          Left = 8
          Top = 111
          Width = 11
          Height = 16
          Caption = '4.'
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
        object Label83: TLabel
          Left = 8
          Top = 134
          Width = 11
          Height = 16
          Caption = '5.'
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
        object Label84: TLabel
          Left = 32
          Top = 66
          Width = 30
          Height = 16
          Caption = 'Kotor'
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
        object Label85: TLabel
          Left = 32
          Top = 90
          Width = 59
          Height = 16
          Caption = 'Lain - Lain'
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
        object Label86: TLabel
          Left = 32
          Top = 114
          Width = 59
          Height = 16
          Caption = 'Lain - Lain'
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
        object Label87: TLabel
          Left = 32
          Top = 135
          Width = 59
          Height = 16
          Caption = 'Lain - Lain'
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
        object JmlKR1: TPBNumEdit
          Left = 104
          Top = 41
          Width = 100
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 0
        end
        object KetKR1: TEdit
          Left = 205
          Top = 41
          Width = 170
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 500
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
        end
        object JmlKR2: TPBNumEdit
          Left = 104
          Top = 64
          Width = 100
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 2
        end
        object KetKR2: TEdit
          Left = 205
          Top = 64
          Width = 170
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 500
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
        end
        object L1: TPBNumEdit
          Left = 104
          Top = 87
          Width = 100
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 4
        end
        object KetKRL1: TEdit
          Left = 205
          Top = 87
          Width = 170
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 500
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
        end
        object L2: TPBNumEdit
          Left = 104
          Top = 110
          Width = 100
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 6
        end
        object KetKRL2: TEdit
          Left = 205
          Top = 110
          Width = 170
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 500
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
        end
        object L3: TPBNumEdit
          Left = 104
          Top = 133
          Width = 100
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          OnChange = HasilRusakChange
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
          ParentCtl3D = False
          TabOrder = 8
        end
        object KetKRL3: TEdit
          Left = 205
          Top = 133
          Width = 170
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 500
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 9
          OnEnter = KodeBrgEnter
          OnKeyDown = QntKeyDown
        end
      end
    end
  end
  object QuBeli: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @NoBukti varchar(20)'
      ''
      'select @NoBukti='#39'00001/FNS/PWT/122019'#39
      ''
      'select distinct'#9'A.NOBUKTI, A.NOURUT, A.TANGGAL,A.KETERANGAN,NIK'
      ',namabrg,a.shift'
      ', B.*, case '
      'when b.JenisKerja =1 then '#39'Sortir Awal'#39
      'when b.JenisKerja =2 then '#39'Hitung data'#39
      'when b.JenisKerja =3 then '#39'Hitung Sekat'#39
      'when b.JenisKerja =4 then '#39'Oglek Pengganti'#39
      'when b.JenisKerja =5 then '#39'No Pack'#39
      'when b.JenisKerja =6 then '#39'bungkus'#39
      'when b.JenisKerja =7 then '#39'Lainnya (leles)'#39
      'when b.JenisKerja =8 then '#39'Sortir Invisible'#39
      'when b.JenisKerja =9 then '#39'Sortir Akhir'#39
      'when b.JenisKerja =10 then '#39'Final Finishing'#39
      'when b.JenisKerja =11 then '#39'Tempel Hologram'#39
      'end'
      'NamaKerjaan  ,namacustsupp,c.qnt qntspk'
      'from DBfinishing A'
      'left outer join DBfinishingDET B on B.NOBUKTI=A.NOBUKTI'
      'left outer join DBBARANG Br on Br.KODEBRG=B.KODEBRG'
      'left outer join dbspk c on c.nobukti = b.nospk'
      'left outer join dbso d on d.nobukti=c.noso'
      'left outer join dbcustsupp e on e.kodecustsupp=d.kodecust'
      '--left outer join dbGudang  c on c.KodeGdg=b.KodeGdg'
      '--left outer join dbmesin d on d.kodemsn=b.kodemsn'
      ''
      'where A.NoBukti=@NoBukti'
      'order by B.Urut'
      ''
      '')
    Left = 30
    Top = 205
    object QuBeliNOBUKTI: TStringField
      FieldName = 'NOBUKTI'
    end
    object QuBeliNOURUT: TStringField
      FieldName = 'NOURUT'
      Size = 10
    end
    object QuBeliTANGGAL: TDateTimeField
      FieldName = 'TANGGAL'
    end
    object QuBeliKETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 200
    end
    object QuBeliNIK: TStringField
      FieldName = 'NIK'
      Size = 50
    end
    object QuBelinamabrg: TStringField
      FieldName = 'namabrg'
      Size = 100
    end
    object QuBelishift: TWordField
      FieldName = 'shift'
    end
    object QuBeliNOBUKTI_1: TStringField
      FieldName = 'NOBUKTI_1'
    end
    object QuBeliURUT: TIntegerField
      FieldName = 'URUT'
    end
    object QuBeliKODEBRG: TStringField
      FieldName = 'KODEBRG'
      Size = 25
    end
    object QuBeliQNT: TBCDField
      FieldName = 'QNT'
      Precision = 18
      Size = 2
    end
    object QuBeliNOSAT: TWordField
      FieldName = 'NOSAT'
    end
    object QuBeliSATUAN: TStringField
      FieldName = 'SATUAN'
      Size = 5
    end
    object QuBeliISI: TBCDField
      FieldName = 'ISI'
      Precision = 18
      Size = 2
    end
    object QuBeliNoSPK: TStringField
      FieldName = 'NoSPK'
      Size = 50
    end
    object QuBeliHPP: TBCDField
      FieldName = 'HPP'
      Precision = 18
      Size = 2
    end
    object QuBeliJenisKerja: TIntegerField
      FieldName = 'JenisKerja'
    end
    object QuBeliKertas: TBCDField
      FieldName = 'Kertas'
      Precision = 18
      Size = 2
    end
    object QuBeliWaktu: TBCDField
      FieldName = 'Waktu'
      Precision = 18
      Size = 2
    end
    object QuBeliKetDetail: TStringField
      FieldName = 'KetDetail'
      Size = 1000
    end
    object QuBeliC1: TBCDField
      FieldName = 'C1'
      Precision = 18
      Size = 2
    end
    object QuBeliC2: TBCDField
      FieldName = 'C2'
      Precision = 18
      Size = 2
    end
    object QuBeliC3: TBCDField
      FieldName = 'C3'
      Precision = 18
      Size = 2
    end
    object QuBeliC4: TBCDField
      FieldName = 'C4'
      Precision = 18
      Size = 2
    end
    object QuBeliC5: TBCDField
      FieldName = 'C5'
      Precision = 18
      Size = 2
    end
    object QuBeliC6: TBCDField
      FieldName = 'C6'
      Precision = 18
      Size = 2
    end
    object QuBeliI1: TBCDField
      FieldName = 'I1'
      Precision = 18
      Size = 2
    end
    object QuBeliI2: TBCDField
      FieldName = 'I2'
      Precision = 18
      Size = 2
    end
    object QuBeliI3: TBCDField
      FieldName = 'I3'
      Precision = 18
      Size = 2
    end
    object QuBeliH1: TBCDField
      FieldName = 'H1'
      Precision = 18
      Size = 2
    end
    object QuBeliH2: TBCDField
      FieldName = 'H2'
      Precision = 18
      Size = 2
    end
    object QuBeliH3: TBCDField
      FieldName = 'H3'
      Precision = 18
      Size = 2
    end
    object QuBeliH4: TBCDField
      FieldName = 'H4'
      Precision = 18
      Size = 2
    end
    object QuBeliH5: TBCDField
      FieldName = 'H5'
      Precision = 18
      Size = 2
    end
    object QuBeliH6: TBCDField
      FieldName = 'H6'
      Precision = 18
      Size = 2
    end
    object QuBeliE1: TBCDField
      FieldName = 'E1'
      Precision = 18
      Size = 2
    end
    object QuBeliE2: TBCDField
      FieldName = 'E2'
      Precision = 18
      Size = 2
    end
    object QuBeliE3: TBCDField
      FieldName = 'E3'
      Precision = 18
      Size = 2
    end
    object QuBeliN1: TBCDField
      FieldName = 'N1'
      Precision = 18
      Size = 2
    end
    object QuBeliN2: TBCDField
      FieldName = 'N2'
      Precision = 18
      Size = 2
    end
    object QuBeliCSI: TBCDField
      FieldName = 'CSI'
      Precision = 18
      Size = 2
    end
    object QuBeliL1: TBCDField
      FieldName = 'L1'
      Precision = 18
      Size = 2
    end
    object QuBeliL2: TBCDField
      FieldName = 'L2'
      Precision = 18
      Size = 2
    end
    object QuBeliL3: TBCDField
      FieldName = 'L3'
      Precision = 18
      Size = 2
    end
    object QuBeliL4: TBCDField
      FieldName = 'L4'
      Precision = 18
      Size = 2
    end
    object QuBeliL5: TBCDField
      FieldName = 'L5'
      Precision = 18
      Size = 2
    end
    object QuBeliL6: TBCDField
      FieldName = 'L6'
      Precision = 18
      Size = 2
    end
    object QuBeliL7: TBCDField
      FieldName = 'L7'
      Precision = 18
      Size = 2
    end
    object QuBeliL8: TBCDField
      FieldName = 'L8'
      Precision = 18
      Size = 2
    end
    object QuBeliL9: TBCDField
      FieldName = 'L9'
      Precision = 18
      Size = 2
    end
    object QuBeliHasilBaik: TBCDField
      FieldName = 'HasilBaik'
      Precision = 18
      Size = 2
    end
    object QuBeliHasilRusak: TBCDField
      FieldName = 'HasilRusak'
      Precision = 18
      Size = 2
    end
    object QuBeliKertasReject: TBCDField
      FieldName = 'KertasReject'
      Precision = 18
      Size = 2
    end
    object QuBeliK1: TBCDField
      FieldName = 'K1'
      Precision = 18
      Size = 2
    end
    object QuBeliP1: TBCDField
      FieldName = 'P1'
      Precision = 18
      Size = 2
    end
    object QuBeliNIK_1: TStringField
      FieldName = 'NIK_1'
      Size = 50
    end
    object QuBeliJml1: TBCDField
      FieldName = 'Jml1'
      Precision = 18
      Size = 2
    end
    object QuBeliJml2: TBCDField
      FieldName = 'Jml2'
      Precision = 18
      Size = 2
    end
    object QuBeliJml3: TBCDField
      FieldName = 'Jml3'
      Precision = 18
      Size = 2
    end
    object QuBeliJml4: TBCDField
      FieldName = 'Jml4'
      Precision = 18
      Size = 2
    end
    object QuBeliJml5: TBCDField
      FieldName = 'Jml5'
      Precision = 18
      Size = 2
    end
    object QuBeliJml6: TBCDField
      FieldName = 'Jml6'
      Precision = 18
      Size = 2
    end
    object QuBeliJml7: TBCDField
      FieldName = 'Jml7'
      Precision = 18
      Size = 2
    end
    object QuBeliJml8: TBCDField
      FieldName = 'Jml8'
      Precision = 18
      Size = 2
    end
    object QuBeliJml9: TBCDField
      FieldName = 'Jml9'
      Precision = 18
      Size = 2
    end
    object QuBeliJml10: TBCDField
      FieldName = 'Jml10'
      Precision = 18
      Size = 2
    end
    object QuBeliJml11: TBCDField
      FieldName = 'Jml11'
      Precision = 18
      Size = 2
    end
    object QuBeliJml12: TBCDField
      FieldName = 'Jml12'
      Precision = 18
      Size = 2
    end
    object QuBeliJml13: TBCDField
      FieldName = 'Jml13'
      Precision = 18
      Size = 2
    end
    object QuBeliJml14: TBCDField
      FieldName = 'Jml14'
      Precision = 18
      Size = 2
    end
    object QuBeliJml15: TBCDField
      FieldName = 'Jml15'
      Precision = 18
      Size = 2
    end
    object QuBeliJml16: TBCDField
      FieldName = 'Jml16'
      Precision = 18
      Size = 2
    end
    object QuBeliJml17: TBCDField
      FieldName = 'Jml17'
      Precision = 18
      Size = 2
    end
    object QuBeliJml18: TBCDField
      FieldName = 'Jml18'
      Precision = 18
      Size = 2
    end
    object QuBeliKetR1: TStringField
      FieldName = 'KetR1'
      Size = 500
    end
    object QuBeliKetR2: TStringField
      FieldName = 'KetR2'
      Size = 500
    end
    object QuBeliKetR3: TStringField
      FieldName = 'KetR3'
      Size = 500
    end
    object QuBeliKetR4: TStringField
      FieldName = 'KetR4'
      Size = 500
    end
    object QuBeliKetR5: TStringField
      FieldName = 'KetR5'
      Size = 500
    end
    object QuBeliKetR6: TStringField
      FieldName = 'KetR6'
      Size = 500
    end
    object QuBeliKetR7: TStringField
      FieldName = 'KetR7'
      Size = 500
    end
    object QuBeliKetR8: TStringField
      FieldName = 'KetR8'
      Size = 500
    end
    object QuBeliKetR9: TStringField
      FieldName = 'KetR9'
      Size = 500
    end
    object QuBeliKetR10: TStringField
      FieldName = 'KetR10'
      Size = 500
    end
    object QuBeliKetR11: TStringField
      FieldName = 'KetR11'
      Size = 500
    end
    object QuBeliKetR12: TStringField
      FieldName = 'KetR12'
      Size = 500
    end
    object QuBeliKetR13: TStringField
      FieldName = 'KetR13'
      Size = 500
    end
    object QuBeliKetR14: TStringField
      FieldName = 'KetR14'
      Size = 500
    end
    object QuBeliKetR15: TStringField
      FieldName = 'KetR15'
      Size = 500
    end
    object QuBeliKetR16: TStringField
      FieldName = 'KetR16'
      Size = 500
    end
    object QuBeliKetR17: TStringField
      FieldName = 'KetR17'
      Size = 500
    end
    object QuBeliKetR18: TStringField
      FieldName = 'KetR18'
      Size = 500
    end
    object QuBeliQntCetak: TBCDField
      FieldName = 'QntCetak'
      Precision = 18
      Size = 2
    end
    object QuBeliQntTambahan: TBCDField
      FieldName = 'QntTambahan'
      Precision = 18
      Size = 2
    end
    object QuBeliQntSpesimen: TBCDField
      FieldName = 'QntSpesimen'
      Precision = 18
      Size = 2
    end
    object QuBeliJmlKR1: TBCDField
      FieldName = 'JmlKR1'
      Precision = 18
      Size = 2
    end
    object QuBeliJmlKR2: TBCDField
      FieldName = 'JmlKR2'
      Precision = 18
      Size = 2
    end
    object QuBeliKetKRL1: TStringField
      FieldName = 'KetKRL1'
      Size = 500
    end
    object QuBeliKetKRL2: TStringField
      FieldName = 'KetKRL2'
      Size = 500
    end
    object QuBeliKetKRL3: TStringField
      FieldName = 'KetKRL3'
      Size = 500
    end
    object QuBeliPR1: TStringField
      FieldName = 'PR1'
      Size = 500
    end
    object QuBeliPR2: TStringField
      FieldName = 'PR2'
      Size = 500
    end
    object QuBeliPR3: TStringField
      FieldName = 'PR3'
      Size = 500
    end
    object QuBeliPR4: TStringField
      FieldName = 'PR4'
      Size = 500
    end
    object QuBeliPR5: TStringField
      FieldName = 'PR5'
      Size = 500
    end
    object QuBeliPR6: TStringField
      FieldName = 'PR6'
      Size = 500
    end
    object QuBeliPR7: TStringField
      FieldName = 'PR7'
      Size = 500
    end
    object QuBeliPR8: TStringField
      FieldName = 'PR8'
      Size = 500
    end
    object QuBeliPR9: TStringField
      FieldName = 'PR9'
      Size = 500
    end
    object QuBeliPR10: TStringField
      FieldName = 'PR10'
      Size = 500
    end
    object QuBeliPR11: TStringField
      FieldName = 'PR11'
      Size = 500
    end
    object QuBeliPR12: TStringField
      FieldName = 'PR12'
      Size = 500
    end
    object QuBeliPR13: TStringField
      FieldName = 'PR13'
      Size = 500
    end
    object QuBeliPR14: TStringField
      FieldName = 'PR14'
      Size = 500
    end
    object QuBeliPR15: TStringField
      FieldName = 'PR15'
      Size = 500
    end
    object QuBeliPR16: TStringField
      FieldName = 'PR16'
      Size = 500
    end
    object QuBeliPR17: TStringField
      FieldName = 'PR17'
      Size = 500
    end
    object QuBeliPR18: TStringField
      FieldName = 'PR18'
      Size = 500
    end
    object QuBeliNamaKerjaan: TStringField
      FieldName = 'NamaKerjaan'
      ReadOnly = True
      Size = 16
    end
    object QuBeliKetKR1: TStringField
      FieldName = 'KetKR1'
      Size = 500
    end
    object QuBeliKetKR2: TStringField
      FieldName = 'KetKR2'
      Size = 500
    end
    object QuBelinamacustsupp: TStringField
      FieldName = 'namacustsupp'
      Size = 100
    end
    object QuBeliqntspk: TBCDField
      FieldName = 'qntspk'
      Precision = 18
      Size = 2
    end
  end
  object Sp_Beli: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'Sp_Finishing;1'
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
        Name = '@NoUrut'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@Tanggal'
        Attributes = [paNullable]
        DataType = ftDateTime
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
        Name = '@Keterangan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 200
        Value = Null
      end
      item
        Name = '@nik'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
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
        Size = 5
        Value = Null
      end
      item
        Name = '@Isi'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NoSPK'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@HPP'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@kodemsn'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@shift'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@JenisKerja'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Kertas'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Waktu'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@KetDetail'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2000
        Value = Null
      end
      item
        Name = '@hasilbaik'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@hasilrusak'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@PR1'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@PR2'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@PR3'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@PR4'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@PR5'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@PR6'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@PR7'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@PR8'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@PR9'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@PR10'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@PR11'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@PR12'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@PR13'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@PR14'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@PR15'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@PR16'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@PR17'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@PR18'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@KetR1'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@KetR2'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@KetR3'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@KetR4'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@KetR5'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@KetR6'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@KetR7'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@KetR8'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@KetR9'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@KetR10'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@KetR11'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@KetR12'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@KetR13'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@KetR14'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@KetR15'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@KetR16'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@KetR17'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@KetR18'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@Jml1'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Jml2'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Jml3'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Jml4'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Jml5'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Jml6'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Jml7'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Jml8'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Jml9'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Jml10'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Jml11'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Jml12'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Jml13'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Jml14'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Jml15'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Jml16'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Jml17'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Jml18'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@QntCetak'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@QntTambahan'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@QntSpesimen'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@JmlKR1'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@JmlKR2'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@KetKR1'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@KetKR2'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@L1'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@L2'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@L3'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@KetRL1'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@KetRL2'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@KetRL3'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end>
    Left = 146
    Top = 246
  end
  object DsQuBeli: TDataSource
    DataSet = QuBeli
    Left = 2
    Top = 205
  end
  object QuUpdatedbbeli: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From vwPerusahaan')
    Left = 114
    Top = 146
  end
  object DataSource1: TDataSource
    DataSet = QuReport
    Left = 30
    Top = 231
  end
  object QuReport: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @NoBukti varchar(20)'
      ''
      'select @NoBukti='#39'VSM/062009/00001/G01'#39
      ''
      
        'select'#9'A.NOBUKTI, A.NOURUT, A.TANGGAL,A.KETERANGAN, B.URUT, B.KO' +
        'DEBRG, Br.NAMABRG, Br.NFix, B.QNT, B.NOSAT, B.SATUAN, B.ISI,'
      'B.KodeGdg'
      'from DBHasilPrd A'
      'left outer join DBHasilPrdDET B on B.NOBUKTI=A.NOBUKTI'
      'left outer join DBBARANG Br on Br.KODEBRG=B.KODEBRG'
      'where A.NoBukti=@NoBukti'
      'order by B.Urut'
      ''
      ''
      '')
    Left = 2
    Top = 231
  end
  object frxDataPerusahaan: TfrxDBDataset
    UserName = 'frxDataPerusahaan'
    CloseDataSource = False
    DataSet = QuUpdatedbbeli
    BCDToCurrency = False
    Left = 208
    Top = 280
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBCetakPO'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 204
    Top = 250
  end
  object frxReport1: TfrxReport
    Version = '4.14'
    DataSet = frxDBDataset1
    DataSetName = 'frxDBCetakPO'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39461.6751602199
    ReportOptions.LastChange = 39463.4044384722
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Memo12OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  If <frxDBCetakPO."TipeBayar"> = 0 then'
      '     Memo12.Text := '#39'Tunai'#39
      '  else'
      
        '     Memo12.Text := '#39'Kredit '#39'+Inttostr(<frxDBCetakPO."Hari">)+ '#39 +
        ' Hari / '#39'+FormatDatetime('#39'DD MMM YYY'#39',<frxDBCetakPO."TglJatuhTem' +
        'po">);'
      'end;'
      ''
      'procedure Memo49OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <LINE#> Mod 2 =0 then'
      '     Memo49.color:=clInfoBk'
      '  else'
      '     Memo49.color:=clWhite;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    OnAfterPrintReport = frxReport1AfterPrintReport
    Left = 234
    Top = 250
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBCetakPO'
      end
      item
        DataSet = frxDataPerusahaan
        DataSetName = 'frxDataPerusahaan'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      PaperWidth = 215.9
      PaperHeight = 139.7
      PaperSize = 256
      LeftMargin = 5
      RightMargin = 5
      TopMargin = 5
      BottomMargin = 5
      object PageHeader1: TfrxPageHeader
        Height = 166.29932
        Top = 18.89765
        Width = 778.205227
        object Picture1: TfrxPictureView
          Width = 64.25201
          Height = 68.03154
          ShowHint = False
          DataField = 'LOGO'
          DataSet = frxDataPerusahaan
          DataSetName = 'frxDataPerusahaan'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          KeepAspectRatio = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Left = 68.03154
          Width = 321.26005
          Height = 18.89765
          ShowHint = False
          DataField = 'NAMA'
          DataSet = frxDataPerusahaan
          DataSetName = 'frxDataPerusahaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8 = (
            '[frxDataPerusahaan."NAMA"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 68.03154
          Top = 18.89765
          Width = 321.26005
          Height = 56.69295
          ShowHint = False
          DataSet = frxDataPerusahaan
          DataSetName = 'frxDataPerusahaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataPerusahaan."ALAMAT"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 83.14966
          Top = 117.16543
          Width = 139.84261
          Height = 18.89765
          ShowHint = False
          DataSet = frxDataPerusahaan
          DataSetName = 'frxDataPerusahaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetakPO."NoPO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 3.77953
          Top = 117.16543
          Width = 71.81107
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'NO. PO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 75.5906
          Top = 117.16543
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 257.00804
          Top = 117.16543
          Width = 79.37013
          Height = 18.89765
          OnBeforePrint = 'Memo12OnBeforePrint'
          ShowHint = False
          AutoWidth = True
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetakPO."TipeBayar"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 491.3389
          Width = 71.81107
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nomor ')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 563.14997
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 491.3389
          Top = 18.89765
          Width = 71.81107
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Tanggal')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 563.14997
          Top = 18.89765
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 570.70903
          Width = 158.74026
          Height = 18.89765
          ShowHint = False
          AutoWidth = True
          DataField = 'nobukti'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetakPO."nobukti"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          Left = 570.70903
          Top = 18.89765
          Width = 143.62214
          Height = 18.89765
          ShowHint = False
          DataField = 'Tanggal'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetakPO."Tanggal"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 423.30736
          Top = 56.69295
          Width = 68.03154
          Height = 18.89765
          ShowHint = False
          Memo.UTF8 = (
            'Pemasok : ')
        end
        object Memo18: TfrxMemoView
          Left = 491.3389
          Top = 56.69295
          Width = 287.24428
          Height = 18.89765
          ShowHint = False
          AutoWidth = True
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBCetakPO."NamaSupp"],  ([frxDBCetakPO."KodeSupp"])')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          Left = 491.3389
          Top = 75.5906
          Width = 287.24428
          Height = 56.69295
          ShowHint = False
          DataField = 'Alamat'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetakPO."Alamat"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 222.99227
          Top = 79.37013
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DataSet = frxDataPerusahaan
          DataSetName = 'frxDataPerusahaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'NOTA PEMBELIAN')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Top = 139.84261
          Width = 778.58318
          Height = 26.45671
          ShowHint = False
          Color = 9955024
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 30.23624
          Top = 143.62214
          Width = 124.72449
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'KODE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 3.77953
          Top = 143.62214
          Width = 26.45671
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'NO .')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 154.96073
          Top = 143.62214
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DESKRIPSI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 340.1577
          Top = 143.62214
          Width = 52.91342
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'SATUAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 393.07112
          Top = 143.62214
          Width = 71.81107
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'HARGA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 468.66172
          Top = 143.62214
          Width = 45.35436
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DISC 1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 514.01608
          Top = 143.62214
          Width = 41.57483
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DISC 2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 555.59091
          Top = 143.62214
          Width = 45.35436
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DISC 3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 600.94527
          Top = 143.62214
          Width = 37.7953
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DISC 4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 676.53587
          Top = 143.62214
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'SUB TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 638.74057
          Top = 143.62214
          Width = 37.7953
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'QTY')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 124.72449
        Top = 325.03958
        Width = 778.205227
        object Memo44: TfrxMemoView
          Width = 778.58318
          Height = 26.45671
          ShowHint = False
          Color = 9955024
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 566.9295
          Top = 3.77953000000002
          Width = 79.37013
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 638.74057
          Top = 3.77953000000002
          Width = 37.7953
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBCetakPO."Qnt">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 676.53587
          Top = 3.77953000000002
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBCetakPO."nDPP">,MasterData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 566.9295
          Top = 30.23624
          Width = 188.9765
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            'PPN 10%')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 676.53587
          Top = 30.23624
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBCetakPO."nPPN">,MasterData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 566.9295
          Top = 60.47248
          Width = 188.9765
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            'Total')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 676.53587
          Top = 60.47248
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBCetakPO."nNet">,MasterData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 79.37013
          Top = 3.77953000000002
          Width = 328.81911
          Height = 37.7953
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          LineSpacing = 6
          Memo.UTF8 = (
            '[Terbilang]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 117.16543
          Top = 45.35436
          Width = 113.3859
          Height = 18.89765
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            'APK')
        end
        object Memo56: TfrxMemoView
          Left = 117.16543
          Top = 94.48825
          Width = 113.3859
          Height = 18.89765
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            '(..........................)')
        end
        object Memo57: TfrxMemoView
          Left = 7.55906
          Top = 3.77953000000002
          Width = 68.03154
          Height = 18.89765
          ShowHint = False
          Memo.UTF8 = (
            'Terbilang')
        end
        object Memo58: TfrxMemoView
          Left = 3.77953
          Top = 45.35436
          Width = 109.60637
          Height = 18.89765
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            'ADM. Hutang')
        end
        object Memo59: TfrxMemoView
          Left = 3.77953
          Top = 94.48825
          Width = 109.60637
          Height = 18.89765
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            '(..........................)')
        end
        object Memo60: TfrxMemoView
          Left = 347.71676
          Top = 45.35436
          Width = 113.3859
          Height = 18.89765
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            'Gudang')
        end
        object Memo61: TfrxMemoView
          Left = 347.71676
          Top = 94.48825
          Width = 113.3859
          Height = 18.89765
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            '(..........................)')
        end
        object Memo62: TfrxMemoView
          Left = 234.33086
          Top = 45.35436
          Width = 109.60637
          Height = 18.89765
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            'Pembelian')
        end
        object Memo63: TfrxMemoView
          Left = 234.33086
          Top = 94.48825
          Width = 109.60637
          Height = 18.89765
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            '(..........................)')
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.89765
        ParentFont = False
        Top = 245.66945
        Width = 778.205227
        DataSet = frxDBDataset1
        DataSetName = 'frxDBCetakPO'
        RowCount = 0
        object Memo49: TfrxMemoView
          Width = 778.58318
          Height = 18.89765
          OnBeforePrint = 'Memo49OnBeforePrint'
          ShowHint = False
          Color = clInfoBk
          WordWrap = False
        end
        object Memo33: TfrxMemoView
          Left = 3.77953
          Width = 22.67718
          Height = 15.11812
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[LINE#].')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 30.23624
          Width = 124.72449
          Height = 15.11812
          ShowHint = False
          DataField = 'Kodebrg'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          Memo.UTF8 = (
            '[frxDBCetakPO."Kodebrg"]')
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 154.96073
          Width = 185.19697
          Height = 15.11812
          ShowHint = False
          DataField = 'Namabrg'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          Memo.UTF8 = (
            '[frxDBCetakPO."Namabrg"]')
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 340.1577
          Width = 52.91342
          Height = 15.11812
          ShowHint = False
          DataField = 'Satuan'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBCetakPO."Satuan"]')
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 393.07112
          Width = 71.81107
          Height = 15.11812
          ShowHint = False
          DataField = 'Harga'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakPO."Harga"]')
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 468.66172
          Width = 45.35436
          Height = 15.11812
          ShowHint = False
          DataField = 'DiscP1'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakPO."DiscP1"]')
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 514.01608
          Width = 41.57483
          Height = 15.11812
          ShowHint = False
          DataField = 'DiscP2'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakPO."DiscP2"]')
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 555.59091
          Width = 45.35436
          Height = 15.11812
          ShowHint = False
          DataField = 'discP3'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakPO."discP3"]')
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 600.94527
          Width = 37.7953
          Height = 15.11812
          ShowHint = False
          DataField = 'DiscP4'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakPO."DiscP4"]')
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 676.53587
          Width = 102.04731
          Height = 15.11812
          ShowHint = False
          DataField = 'Ndpp'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakPO."Ndpp"]')
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 638.74057
          Width = 37.7953
          Height = 15.11812
          ShowHint = False
          DataField = 'Qnt'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakPO."Qnt"]')
          WordWrap = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    FileName = 'C:\DOCUME~1\admin\LOCALS~1\Temp\fr48.tmp'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 288
    Top = 246
  end
  object frxDesigner1: TfrxDesigner
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
    Left = 584
    Top = 160
  end
  object QuTenaker: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    DataSource = DsQuBeli
    Parameters = <
      item
        Name = 'nobukti'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'urut'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from dbproduksitenaker a'
      'left outer join dbkaryawan b on b.nik =a.nik'
      'where a.nobukti =:nobukti and urut =:urut')
    Left = 530
    Top = 202
    object QuTenakerNobukti: TStringField
      FieldName = 'Nobukti'
    end
    object QuTenakerUrut: TIntegerField
      FieldName = 'Urut'
    end
    object QuTenakerNik: TStringField
      FieldName = 'Nik'
      Size = 10
    end
    object QuTenakerUrutNiK: TIntegerField
      FieldName = 'UrutNiK'
    end
    object QuTenakerJam: TBCDField
      FieldName = 'Jam'
      Precision = 18
      Size = 2
    end
    object QuTenakerTrfTenaker: TBCDField
      FieldName = 'TrfTenaker'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuTenakerJmLTrfTenaker: TBCDField
      FieldName = 'JmLTrfTenaker'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
    end
    object QuTenakerKeyNIK: TIntegerField
      FieldName = 'KeyNIK'
    end
    object QuTenakerTipeTrans: TStringField
      FieldName = 'TipeTrans'
      Size = 10
    end
    object QuTenakerNoBukti_1: TStringField
      FieldName = 'NoBukti_1'
      Size = 30
    end
    object QuTenakerNIK_1: TStringField
      FieldName = 'NIK_1'
      Size = 10
    end
    object QuTenakerNama: TStringField
      FieldName = 'Nama'
      Size = 50
    end
    object QuTenakerNamaPanggilan: TStringField
      FieldName = 'NamaPanggilan'
      Size = 50
    end
    object QuTenakerKelamin: TStringField
      FieldName = 'Kelamin'
      Size = 1
    end
    object QuTenakerTmpLahir: TStringField
      FieldName = 'TmpLahir'
      Size = 30
    end
    object QuTenakerTglLahir: TDateTimeField
      FieldName = 'TglLahir'
    end
    object QuTenakerAgama: TStringField
      FieldName = 'Agama'
    end
    object QuTenakerTinggi: TBCDField
      FieldName = 'Tinggi'
      Precision = 18
      Size = 2
    end
    object QuTenakerBerat: TBCDField
      FieldName = 'Berat'
      Precision = 18
      Size = 2
    end
    object QuTenakerBerkacaMata: TWordField
      FieldName = 'BerkacaMata'
    end
    object QuTenakerDarah: TStringField
      FieldName = 'Darah'
      Size = 2
    end
    object QuTenakerNomorKTP: TStringField
      FieldName = 'NomorKTP'
      Size = 50
    end
    object QuTenakerAlamatKTP: TStringField
      FieldName = 'AlamatKTP'
      Size = 100
    end
    object QuTenakerKecamatanKTP: TStringField
      FieldName = 'KecamatanKTP'
      Size = 30
    end
    object QuTenakerKabupatenKTP: TStringField
      FieldName = 'KabupatenKTP'
      Size = 30
    end
    object QuTenakerPropinsiKTP: TStringField
      FieldName = 'PropinsiKTP'
      Size = 30
    end
    object QuTenakerKodePosKTP: TStringField
      FieldName = 'KodePosKTP'
    end
    object QuTenakerAlamatRmh: TStringField
      FieldName = 'AlamatRmh'
      Size = 100
    end
    object QuTenakerKecamatanRmh: TStringField
      FieldName = 'KecamatanRmh'
      Size = 30
    end
    object QuTenakerKabupatenRmh: TStringField
      FieldName = 'KabupatenRmh'
      Size = 30
    end
    object QuTenakerPropinsiRmh: TStringField
      FieldName = 'PropinsiRmh'
      Size = 30
    end
    object QuTenakerKodePosRmh: TStringField
      FieldName = 'KodePosRmh'
    end
    object QuTenakerTeleponHP: TStringField
      FieldName = 'TeleponHP'
      Size = 60
    end
    object QuTenakerKodePendAkhir: TStringField
      FieldName = 'KodePendAkhir'
    end
    object QuTenakerKetPendAkhir: TStringField
      FieldName = 'KetPendAkhir'
      Size = 50
    end
    object QuTenakerStatusTempTinggal: TStringField
      FieldName = 'StatusTempTinggal'
    end
    object QuTenakerHubungan: TWordField
      FieldName = 'Hubungan'
    end
    object QuTenakerReferensi: TStringField
      FieldName = 'Referensi'
      Size = 100
    end
    object QuTenakerRekomendasi: TWordField
      FieldName = 'Rekomendasi'
    end
    object QuTenakerNamaR: TStringField
      FieldName = 'NamaR'
      Size = 100
    end
    object QuTenakerJabatanR: TStringField
      FieldName = 'JabatanR'
      Size = 100
    end
    object QuTenakerNamaInstR: TStringField
      FieldName = 'NamaInstR'
      Size = 100
    end
    object QuTenakerAlamatR: TStringField
      FieldName = 'AlamatR'
      Size = 100
    end
    object QuTenakerTglMasuk: TDateTimeField
      FieldName = 'TglMasuk'
    end
    object QuTenakerTglKeluar: TDateTimeField
      FieldName = 'TglKeluar'
    end
    object QuTenakerBankAccount: TStringField
      FieldName = 'BankAccount'
      Size = 50
    end
    object QuTenakerNomorAstek: TStringField
      FieldName = 'NomorAstek'
      Size = 50
    end
    object QuTenakerTglAstek: TDateTimeField
      FieldName = 'TglAstek'
    end
    object QuTenakerKodeShf: TStringField
      FieldName = 'KodeShf'
      Size = 15
    end
    object QuTenakerKodeJab: TStringField
      FieldName = 'KodeJab'
    end
    object QuTenakerKodeDept: TStringField
      FieldName = 'KodeDept'
    end
    object QuTenakerKodeESL: TStringField
      FieldName = 'KodeESL'
    end
    object QuTenakerKodeGrade: TStringField
      FieldName = 'KodeGrade'
    end
    object QuTenakerGajiPokok: TBCDField
      FieldName = 'GajiPokok'
      Precision = 18
      Size = 2
    end
    object QuTenakerTnjJabatan: TBCDField
      FieldName = 'TnjJabatan'
      Precision = 18
      Size = 2
    end
    object QuTenakerTnjKehadiran: TBCDField
      FieldName = 'TnjKehadiran'
      Precision = 18
      Size = 2
    end
    object QuTenakerTnjTransport: TBCDField
      FieldName = 'TnjTransport'
      Precision = 18
      Size = 2
    end
    object QuTenakerTnjMakan: TBCDField
      FieldName = 'TnjMakan'
      Precision = 18
      Size = 2
    end
    object QuTenakerTnjLain2: TBCDField
      FieldName = 'TnjLain2'
      Precision = 18
      Size = 2
    end
    object QuTenakerTnjHaid: TBCDField
      FieldName = 'TnjHaid'
      Precision = 18
      Size = 2
    end
    object QuTenakerJKK: TBCDField
      FieldName = 'JKK'
      Precision = 18
      Size = 2
    end
    object QuTenakerJHT: TBCDField
      FieldName = 'JHT'
      Precision = 18
      Size = 2
    end
    object QuTenakerJPK: TBCDField
      FieldName = 'JPK'
      Precision = 18
      Size = 2
    end
    object QuTenakerJKM: TBCDField
      FieldName = 'JKM'
      Precision = 18
      Size = 2
    end
    object QuTenakerPrima: TBCDField
      FieldName = 'Prima'
      Precision = 18
      Size = 2
    end
    object QuTenakerTnjPajak: TBooleanField
      FieldName = 'TnjPajak'
    end
    object QuTenakerStsPJK: TStringField
      FieldName = 'StsPJK'
    end
    object QuTenakerStsAST: TStringField
      FieldName = 'StsAST'
    end
    object QuTenakerTanggung: TBCDField
      FieldName = 'Tanggung'
      Precision = 18
      Size = 2
    end
    object QuTenakerNPWP: TStringField
      FieldName = 'NPWP'
      Size = 50
    end
    object QuTenakerAktif: TWordField
      FieldName = 'Aktif'
    end
    object QuTenakerLamaKontrak: TIntegerField
      FieldName = 'LamaKontrak'
    end
    object QuTenakerTglAkhirKontrak: TDateTimeField
      FieldName = 'TglAkhirKontrak'
    end
    object QuTenakerIDUserInput: TStringField
      FieldName = 'IDUserInput'
      Size = 30
    end
    object QuTenakerTglInput: TDateTimeField
      FieldName = 'TglInput'
    end
    object QuTenakerIsSales: TBooleanField
      FieldName = 'IsSales'
    end
    object QuTenakerProduksi: TWordField
      FieldName = 'Produksi'
    end
  end
  object Sp_BeliTenaker: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'sp_HasilPrdTenaker;1'
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
        Name = '@nobukti'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
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
        Name = '@NIK'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@Jam'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end>
    Left = 146
    Top = 278
  end
  object DSTenaker: TDataSource
    DataSet = QuTenaker
    Left = 570
    Top = 208
  end
end
