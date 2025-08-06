object FrLunas: TFrLunas
  Left = 267
  Top = 18
  Width = 1036
  Height = 710
  Caption = 'Transaksi Pelunasan Hutang'
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
    Width = 1020
    Height = 91
    Align = alTop
    BevelOuter = bvNone
    Color = clGradientInactiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label11: TLabel
      Left = 523
      Top = 7
      Width = 46
      Height = 16
      Caption = 'Tanggal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Shape4: TShape
      Left = 13
      Top = 30
      Width = 773
      Height = 3
      Brush.Color = clBlack
    end
    object NamaCS: TLabel
      Left = 261
      Top = 39
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
    object LblCS: TLabel
      Left = 42
      Top = 39
      Width = 47
      Height = 16
      Alignment = taRightJustify
      Caption = 'Supplier'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 258
      Top = 64
      Width = 40
      Height = 16
      Caption = 'Jumlah'
    end
    object Label26: TLabel
      Left = 11
      Top = 8
      Width = 64
      Height = 14
      Caption = 'Nomor Urut'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 174
      Top = 8
      Width = 67
      Height = 14
      Caption = 'Nomor Bukti'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 25
      Top = 139
      Width = 65
      Height = 16
      Caption = 'Keterangan'
    end
    object Label13: TLabel
      Left = 44
      Top = 64
      Width = 31
      Height = 16
      Caption = 'Valas'
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
    object Label2: TLabel
      Left = 145
      Top = 64
      Width = 25
      Height = 16
      Caption = 'Kurs'
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
    object NoBukti: TEdit
      Left = 247
      Top = 3
      Width = 193
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 7
      ParentFont = False
      TabOrder = 1
      Text = '0000000'
    end
    object Tanggal: TDateEdit
      Left = 578
      Top = 3
      Width = 97
      Height = 24
      CheckOnExit = True
      NumGlyphs = 2
      TabOrder = 2
      OnEnter = TanggalEnter
      OnExit = TanggalExit
      OnKeyDown = TanggalKeyDown
    end
    object KodeCS: TEdit
      Left = 96
      Top = 35
      Width = 137
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 20
      ParentFont = False
      TabOrder = 3
      OnExit = KodeCSExit
      OnKeyDown = TanggalKeyDown
    end
    object Jumlah: TPBNumEdit
      Left = 305
      Top = 59
      Width = 106
      Height = 24
      Alignment = taRightJustify
      Decimals = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumberFormat = Thousands
      OnKeyDown = TanggalKeyDown
      ParentFont = False
      TabOrder = 6
    end
    object NoUrut: TEdit
      Left = 99
      Top = 3
      Width = 62
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = 7492630
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 5
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnKeyDown = NoUrutKeyDown
    end
    object Keterangan: TEdit
      Left = 96
      Top = 135
      Width = 426
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnKeyDown = TanggalKeyDown
    end
    object Valas: TEdit
      Left = 97
      Top = 60
      Width = 42
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
      MaxLength = 3
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      Text = 'IDR'
      OnEnter = NoFakturEnter
      OnExit = ValasExit
    end
    object Kurs: TPBNumEdit
      Left = 171
      Top = 60
      Width = 62
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Ctl3D = False
      Decimals = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumberFormat = Thousands
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      Value = 1
    end
    object CBBayar: TComboBox
      Left = 433
      Top = 59
      Width = 145
      Height = 24
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 7
      Text = 'Cash(Tunai)'
      OnChange = CBBayarChange
      OnExit = CBBayarExit
      OnKeyDown = TanggalKeyDown
      Items.Strings = (
        'Cash(Tunai)'
        'Giro')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 152
    Width = 1020
    Height = 520
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    Color = clGradientInactiveCaption
    TabOrder = 2
    object cxGrid1: TcxGrid
      Left = 5
      Top = 5
      Width = 1010
      Height = 478
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnEnter = dxDBGrid1Enter
      OnExit = dxDBGrid1Exit
      LookAndFeel.Kind = lfFlat
      object tvMaster: TcxGridDBTableView
        OnKeyDown = tvMasterKeyDown
        DataController.DataSource = dsBeli
        DataController.Filter.Criteria = {FFFFFFFF0000000000}
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            FieldName = 'Bayar'
            Column = tvMasterBayarDet
          end
          item
            Format = ',0.00'
            Kind = skSum
            FieldName = 'Diskon'
            Column = tvMasterBayarRpDet
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooters = gfAlwaysVisible
        OptionsView.Indicator = True
        Styles.StyleSheet = DM.cxGridStyleHd
        object tvMasterNoBuktiBayar: TcxGridDBColumn
          Caption = 'No. Bukti Pembayaran'
          DataBinding.FieldName = 'NoBuktiBayar'
        end
        object tvMasterBayarDet: TcxGridDBColumn
          Caption = 'Bayar'
          DataBinding.FieldName = 'BayarDet'
          Width = 165
        end
        object tvMasterBayarRpDet: TcxGridDBColumn
          Caption = 'Bayar(Rp)'
          DataBinding.FieldName = 'BayarRpDet'
          Width = 186
        end
        object tvMasterNoGiro: TcxGridDBColumn
          Caption = 'No. Giro'
          DataBinding.FieldName = 'NoGiro'
        end
        object tvMasterTglGiro: TcxGridDBColumn
          Caption = 'Tgl. Giro'
          DataBinding.FieldName = 'TglGiro'
        end
        object tvMasterBank: TcxGridDBColumn
          DataBinding.FieldName = 'Bank'
        end
        object tvMasterNilaiGiro: TcxGridDBColumn
          Caption = 'Nilai Giro'
          DataBinding.FieldName = 'NilaiGiro'
        end
        object tvMasterValas: TcxGridDBColumn
          DataBinding.FieldName = 'Valas'
          Visible = False
        end
        object tvMasterKurs: TcxGridDBColumn
          DataBinding.FieldName = 'Kurs'
          Visible = False
        end
        object tvMasterUrut: TcxGridDBColumn
          DataBinding.FieldName = 'Urut'
          Visible = False
        end
        object tvMasterNamaCS: TcxGridDBColumn
          DataBinding.FieldName = 'NamaCS'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = tvMaster
      end
    end
    object Panel4: TPanel
      Left = 5
      Top = 483
      Width = 1010
      Height = 32
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clGradientInactiveCaption
      TabOrder = 1
      object TambahBtn: TSpeedButton
        Left = 7
        Top = 5
        Width = 75
        Height = 23
        Caption = '&Tambah'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
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
      object KoreksiBtn: TSpeedButton
        Left = 82
        Top = 5
        Width = 75
        Height = 23
        Caption = '&Koreksi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
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
        Visible = False
        OnClick = KoreksiBtnClick
      end
      object HapusBtn: TSpeedButton
        Left = 157
        Top = 5
        Width = 75
        Height = 23
        Caption = '&Hapus'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
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
        Visible = False
      end
      object Cetak: TSpeedButton
        Left = 232
        Top = 5
        Width = 75
        Height = 23
        Caption = '&Cetak'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
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
        OnClick = CetakClick
      end
      object SpeedButton8: TSpeedButton
        Left = 307
        Top = 5
        Width = 23
        Height = 23
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
        OnClick = SpeedButton8Click
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 91
    Width = 1020
    Height = 61
    Align = alTop
    BevelOuter = bvNone
    Color = clGradientInactiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    object Label6: TLabel
      Left = 43
      Top = 89
      Width = 46
      Height = 16
      Caption = 'No. Giro'
    end
    object Label8: TLabel
      Left = 274
      Top = 89
      Width = 27
      Height = 16
      Caption = 'Bank'
    end
    object Label14: TLabel
      Left = 44
      Top = 114
      Width = 45
      Height = 16
      Caption = 'Tgl Giro'
    end
    object Label16: TLabel
      Left = 250
      Top = 114
      Width = 51
      Height = 16
      Caption = 'Nilai Giro'
    end
    object Label19: TLabel
      Left = 25
      Top = 139
      Width = 65
      Height = 16
      Caption = 'Keterangan'
    end
    object LabelGiro: TLabel
      Left = 35
      Top = 11
      Width = 46
      Height = 16
      Caption = 'No. Giro'
    end
    object Lbank: TLabel
      Left = 266
      Top = 13
      Width = 27
      Height = 16
      Caption = 'Bank'
    end
    object LtglGiro: TLabel
      Left = 36
      Top = 40
      Width = 45
      Height = 16
      Caption = 'Tgl Giro'
    end
    object Lgiro: TLabel
      Left = 242
      Top = 40
      Width = 51
      Height = 16
      Caption = 'Nilai Giro'
    end
    object Edit3: TEdit
      Left = 96
      Top = 85
      Width = 137
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = TanggalKeyDown
    end
    object Edit4: TEdit
      Left = 305
      Top = 85
      Width = 107
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyDown = TanggalKeyDown
    end
    object DateEdit2: TDateEdit
      Left = 96
      Top = 110
      Width = 137
      Height = 24
      ButtonWidth = 20
      NumGlyphs = 2
      TabOrder = 2
      OnKeyDown = TanggalKeyDown
    end
    object PBNumEdit2: TPBNumEdit
      Left = 305
      Top = 110
      Width = 106
      Height = 24
      Alignment = taRightJustify
      Decimals = 2
      NumberFormat = Thousands
      OnKeyDown = TanggalKeyDown
      TabOrder = 3
    end
    object Edit6: TEdit
      Left = 96
      Top = 135
      Width = 426
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyDown = TanggalKeyDown
    end
    object NoGiro: TEdit
      Left = 97
      Top = 8
      Width = 137
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnKeyDown = TanggalKeyDown
    end
    object Bank: TEdit
      Left = 306
      Top = 8
      Width = 107
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnKeyDown = TanggalKeyDown
    end
    object TglGiro: TDateEdit
      Left = 96
      Top = 35
      Width = 137
      Height = 24
      ButtonWidth = 20
      NumGlyphs = 2
      TabOrder = 6
      OnKeyDown = TanggalKeyDown
    end
    object NilaiGiro: TPBNumEdit
      Left = 306
      Top = 36
      Width = 106
      Height = 24
      Alignment = taRightJustify
      Decimals = 2
      NumberFormat = Thousands
      OnKeyDown = TanggalKeyDown
      TabOrder = 8
    end
  end
  object QuUpdatedbbeli: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    SQL.Strings = (
      'select*from vwperusahaan')
    Left = 503
    Top = 273
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
    ReportOptions.LastChange = 40478.4839002778
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure PageFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <tothal>=<Page#> then'
      '  begin'
      '     memo45.visible := false;'
      '  end'
      '  else'
      '   begin'
      '     memo45.visible := true;'
      '  end;      '
      'end;'
      ''
      'procedure Memo49OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <Page><>1 then'
      '  begin'
      '     memo32.visible := True;  '
      '  end'
      '  else'
      '   begin'
      '     memo32.visible := False;'
      '  end;  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    Left = 234
    Top = 242
    Datasets = <
      item
        DataSet = frxDataPerusahaan
        DataSetName = 'frxDataPerusahaan'
      end
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBCetakPO'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.9
      PaperHeight = 139.7
      PaperSize = 256
      LeftMargin = 5
      RightMargin = 5
      TopMargin = 5
      BottomMargin = 5
      PrintOnPreviousPage = True
      object PageHeader1: TfrxPageHeader
        Height = 173.85838
        Top = 18.89765
        Width = 778.205227
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        object Memo5: TfrxMemoView
          Left = 71.8110236220472
          Top = 79.37007874
          Width = 554.457051
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ': [frxDBCetakHeader."NamaCS"],  ([frxDBCetakHeader."KodeCS"])')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 444.7483
          Top = 32.503865
          Width = 313.425294
          Height = 18.89765
          ShowHint = False
          DataSet = frxDataPerusahaan
          DataSetName = 'frxDataPerusahaan'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'FAKTUR PELUNASAN PIUTANG')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = -0.377953
          Top = 79.37007874
          Width = 66.141775
          Height = 18.89765
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Customer')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Top = 154.96073
          Width = 124.72440457
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8 = (
            'No. Faktur')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 192.75590551
          Top = 154.96073
          Width = 64.25197339
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jth Tempo')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 124.62214
          Top = 154.96073
          Width = 68.03150339
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tgl Faktur')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 257.00787157
          Top = 154.96073
          Width = 90.70866142
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'Nilai Faktur')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 347.71653299
          Top = 154.96073
          Width = 90.70866142
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'Nilai Retur')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 669.283891
          Top = 154.96073
          Width = 90.70866142
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'Bayar')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 1
          Top = 52.32282
          Width = 759.68553
          Height = 2.77953
          ShowHint = False
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
        end
        object Memo27: TfrxMemoView
          Left = 1.13385827
          Width = 300.472635
          Height = 22.67718
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDataPerusahaan."Nama"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          Left = 1
          Top = 19.60235
          Width = 300.472635
          Height = 30.23624
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataPerusahaan."AlamatX"], [frxDataPerusahaan."Kota"]'
            
              'Phone Telp. [frxDataPerusahaan."Telpon"], FAX [frxDataPerusahaan' +
              '."Fax"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo1: TfrxMemoView
          Left = 71.8110236220472
          Top = 60.47244094
          Width = 172.724521
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ': [frxDBCetakHeader."Nobukti"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Top = 60.47244094
          Width = 66.141775
          Height = 18.89765
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'No. Bukti')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 71.8110236220472
          Top = 98.26771654
          Width = 168.944991
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ': [frxDBCetakHeader."NoGiro"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Top = 98.26771654
          Width = 66.141775
          Height = 18.89765
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'No. Giro')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 356.409679
          Top = 98.26771654
          Width = 138.708751
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ': [frxDBCetakHeader."NoGiro"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 294.80334
          Top = 98.26771654
          Width = 58.582715
          Height = 18.89765
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Bank')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 71.8110236220472
          Top = 117.16535433
          Width = 168.944991
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ': [frxDBCetakHeader."TglGiro"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Top = 117.16535433
          Width = 66.141775
          Height = 18.89765
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Tgl. Giro')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 356.409679
          Top = 117.16535433
          Width = 138.708751
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ': [frxDBCetakHeader."NilaiGiro"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 294.80334
          Top = 117.16535433
          Width = 58.582715
          Height = 18.89765
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nilai Giro')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 71.8110236220472
          Top = 136.06299213
          Width = 478.866451
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ': [frxDBCetakHeader."Keterangan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Top = 136.06299213
          Width = 66.141775
          Height = 18.89765
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Keterangan')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 549.165709
          Top = 57.070903
          Width = 206.740291
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Tanggal : [frxDBCetakHeader."Tanggal"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 438.42519441
          Top = 154.96073
          Width = 90.70866142
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'Sudah Bayar')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 529.13389
          Top = 154.96073
          Width = 90.70866142
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'Sisa')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 619.84292
          Top = 154.96073
          Width = 49.13383386
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'Diskon')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Width = 759.68553
          Height = 154.96073
          ShowHint = False
          Color = clWhite
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 619.84292
          Top = 136.06308
          Width = 138.708751
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Hal : [Page] / [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.015615
        Top = 377.953
        Width = 778.205227
        OnBeforePrint = 'PageFooter1OnBeforePrint'
        object Memo28: TfrxMemoView
          Top = 1.393568
          Width = 759.68553
          Height = 2.267718
          ShowHint = False
          Color = clWindow
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haRight
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 529.13405843
          Width = 90.70866142
          Height = 18.8976378
          Visible = False
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBCetakPO."Sisa">,MasterData1,2)]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 619.84308843
          Width = 49.13383386
          Height = 18.8976378
          Visible = False
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBCetakPO."Diskon">,MasterData1,2)]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 668.97697843
          Width = 90.70866142
          Height = 18.8976378
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakHeader."Jumlah"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Top = 1.77953
          Width = 759.68553
          Height = 37.7953
          ShowHint = False
          Color = clWhite
          HAlign = haCenter
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Top = 275.90569
        Width = 778.205227
        DataSetName = 'frxDBCetakHeader'
        RowCount = 0
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 18.8976378
        Top = 298.58287
        Width = 778.205227
        object Memo29: TfrxMemoView
          Left = 257.00804
          Width = 90.70866142
          Height = 18.8976378
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxDBCetakPO."SaldoFaktur">]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 347.71670142
          Width = 90.70866142
          Height = 18.8976378
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxDBCetakPO."SaldoRetur">]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 438.42536284
          Width = 90.70866142
          Height = 18.8976378
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxDBCetakPO."SdhBayar">]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 529.13405843
          Width = 90.70866142
          Height = 18.8976378
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxDBCetakPO."Sisa">]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 619.84308843
          Width = 49.13383386
          Height = 18.8976378
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxDBCetakPO."Diskon">]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 668.97697843
          Width = 90.70866142
          Height = 18.8976378
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxDBCetakPO."Bayar">]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Width = 124.72440457
          Height = 18.8976378
          ShowHint = False
          DataField = 'NoFaktur'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetakPO."NoFaktur"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 124.62214
          Width = 68.03150339
          Height = 18.8976378
          ShowHint = False
          DataField = 'TglFaktur'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetakPO."TglFaktur"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 192.75590551
          Width = 64.25197339
          Height = 18.8976378
          ShowHint = False
          DataField = 'JatuhTempo'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBCetakPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetakPO."JatuhTempo"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Top = 253.22851
        Width = 778.205227
        Condition = 'frxDBCetakPO."NoFaktur"'
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBCetakPO'
    CloseDataSource = False
    FieldAliases.Strings = (
      'UrutTrans=UrutTrans'
      'NoFaktur=NoFaktur'
      'JatuhTempo=JatuhTempo'
      'Sisa=Sisa'
      'Diskon=Diskon'
      'Bayar=Bayar'
      'TglFaktur=TglFaktur'
      'SaldoRetur=SaldoRetur'
      'SaldoFaktur=SaldoFaktur'
      'SdhBayar=SdhBayar'
      'IsRetur=IsRetur'
      'NoBuktiBayar=NoBuktiBayar')
    BCDToCurrency = False
    Left = 204
    Top = 242
  end
  object frxDataPerusahaan: TfrxDBDataset
    UserName = 'frxDataPerusahaan'
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
      'Kota=Kota'
      'Telpon=Telpon'
      'Fax=Fax'
      'AlamatX=AlamatX'
      'NoSeri=NoSeri')
    DataSet = QuUpdatedbbeli
    BCDToCurrency = False
    Left = 202
    Top = 271
  end
  object sp_HutPiut: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'sp_HutPiut;1'
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
        Name = '@NoFaktur'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@NoRetur'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@TipeTrans'
        Attributes = [paNullable]
        DataType = ftString
        Size = 3
        Value = Null
      end
      item
        Name = '@KodeCustSupp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@NoBukti'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@NoMsk'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
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
        Name = '@Tanggal'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@JatuhTempo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Debet'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Kredit'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Valas'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@Kurs'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 4
        Precision = 18
        Value = Null
      end
      item
        Name = '@KodeSales'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@Tipe'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@Perkiraan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@Catatan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 800
        Value = Null
      end
      item
        Name = '@NoInvoice'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@KodeVls_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@Kurs_'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@KursBayar'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@DebetD'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@KreditD'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Bank'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@noGiro'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@TglGiro'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@BuktiCair'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@TipeBayar'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@NilaiGiroD'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NilaiGiroK'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end>
    Left = 472
    Top = 241
  end
  object QuBeli: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @NoBukti varchar(25), @Tipe varchar(20)'
      ''
      'select  @NoBukti='#39#39', @Tipe='#39'PT'#39
      ''
      
        'select  A.TipeBayar,A.KodeCustSupp,A.tanggal,A.Valas,A.Kurs,A.Ur' +
        'ut, case when @Tipe='#39'HT'#39' Then A.Debet else A.Kredit end BayarDet' +
        ', case when @Tipe='#39'HT'#39' Then A.Debet*A.Kurs else A.Kredit*A.Kurs ' +
        'end BayarRpDet, A.NoBukti NoBuktiBayar,'
      
        '        NAMACUSTSUPP NamaCS,c.NoGiro,c.TglGiro,c.Bank,Case when ' +
        '@Tipe='#39'HT'#39' Then c.DebetRp else c.KreditRp end NilaiGiro,Catatan'
      'from    DBHUTPIUT A'
      'left outer join DBCUSTSUPP B on B.KODECUSTSUPP=A.KodeCustSupp'
      'Left outer join dbGiro C on C.BuktiCair=A.NoBukti'
      'where   A.NoBukti=@NoBukti and TipeTrans='#39'L'#39
      'order by A.Urut')
    Left = 440
    Top = 272
    object QuBeliValas: TStringField
      FieldName = 'Valas'
      Size = 15
    end
    object QuBeliKurs: TBCDField
      FieldName = 'Kurs'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QuBeliUrut: TIntegerField
      FieldName = 'Urut'
    end
    object QuBeliBayarDet: TBCDField
      FieldName = 'BayarDet'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliBayarRpDet: TBCDField
      FieldName = 'BayarRpDet'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliNoBuktiBayar: TStringField
      FieldName = 'NoBuktiBayar'
      Size = 30
    end
    object QuBeliNamaCS: TStringField
      FieldName = 'NamaCS'
      Size = 100
    end
    object QuBeliNoGiro: TStringField
      FieldName = 'NoGiro'
    end
    object QuBeliTglGiro: TDateTimeField
      FieldName = 'TglGiro'
    end
    object QuBeliBank: TStringField
      FieldName = 'Bank'
      Size = 25
    end
    object QuBeliNilaiGiro: TBCDField
      FieldName = 'NilaiGiro'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliCatatan: TStringField
      FieldName = 'Catatan'
      Size = 800
    end
    object QuBelitanggal: TDateTimeField
      FieldName = 'tanggal'
    end
    object QuBeliKodeCustSupp: TStringField
      FieldName = 'KodeCustSupp'
      Size = 15
    end
    object QuBeliTipeBayar: TWordField
      FieldName = 'TipeBayar'
    end
  end
  object QuHutPiut: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = '0'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = 'PT'
      end
      item
        Name = '1'
        DataType = ftString
        Size = 2
        Value = #39#39
      end
      item
        Name = '2'
        DataType = ftString
        Size = 2
        Value = #39#39
      end>
    SQL.Strings = (
      
        'Declare @Kodecust varchar(20),@Nobukti varchar(30), @perkiraan v' +
        'archar(30)'
      'Select @Kodecust=:0,@nobukti=:1, @Perkiraan=:2'
      '      Select a.*,'
      '            (Case when a.Tipe='#39'PT'#39' then '
      '                  Case when a.Debet<>0 then a.Debet'
      '                       when a.Kredit<>0 then -a.Kredit'
      '                       else 0'
      '                  end'
      '                  when a.Tipe='#39'HT'#39' then'
      '                  Case when a.Debet<>0 then -a.Debet'
      '                       when a.Kredit<>0 then a.Kredit'
      '                       else 0'
      '                  end'
      '                  else 0'
      '             end) as SaldoRp, '
      '            (Case when a.Tipe='#39'PT'#39' then '
      '                  Case when a.DebetD<>0 then a.DebetD'
      '                       when a.KreditD<>0 then -a.KreditD'
      '                       else 0'
      '                  end'
      '                  when a.Tipe='#39'HT'#39' then'
      '                  Case when a.DebetD<>0 then -a.DebetD'
      '                       when a.KreditD<>0 then a.KreditD'
      '                       else 0'
      '                  end'
      '                  else 0'
      '             end) as SaldoVls,'
      
        '             a.NoFaktur+'#39' '#39'+CONVERT(Varchar(12),A.Tanggal,105)+C' +
        'ast(a.urut as varchar(4)) MyKey,'
      '             a.nobukti+Cast(a.nomsk as varchar(4)) MyNobuktiKas'
      '      from vwHutpiut a'
      '           left Outer join (select x.Nofaktur,x.kodecustSupp'
      '                            from vwHutPiutBelumlunas x'
      
        '                            where x.kodecustsupp=@kodecust)b on ' +
        'b.kodecustSupp=a.KodeCustSupp'
      
        '      where a.KodeCustSupp=@kodecust  and (b.Nofaktur=a.nofaktur' +
        ') and a.Perkiraan in(@Perkiraan)'
      '      union'
      '      Select a.*,'
      '            (Case when a.Tipe='#39'PT'#39' then '
      '                  Case when a.Debet<>0 then a.Debet'
      '                       when a.Kredit<>0 then -a.Kredit'
      '                       else 0'
      '                  end'
      '                  when a.Tipe='#39'HT'#39' then'
      '                  Case when a.Debet<>0 then -a.Debet'
      '                       when a.Kredit<>0 then a.Kredit'
      '                       else 0'
      '                  end'
      '                  else 0'
      '             end) as SaldoRp, '
      '            (Case when a.Tipe='#39'PT'#39' then '
      '                  Case when a.DebetD<>0 then a.DebetD'
      '                       when a.KreditD<>0 then -a.KreditD'
      '                       else 0'
      '                  end'
      '                  when a.Tipe='#39'HT'#39' then'
      '                  Case when a.DebetD<>0 then -a.DebetD'
      '                       when a.KreditD<>0 then a.KreditD'
      '                       else 0'
      '                  end'
      '                  else 0'
      '             end) as SaldoVls,'
      
        '             a.NoFaktur+'#39' '#39'+CONVERT(Varchar(12),A.Tanggal,105)+C' +
        'ast(a.urut as varchar(4)) MyKey,'
      '             a.nobukti+Cast(a.nomsk as varchar(4)) MyNobuktiKas'
      '      from vwHutpiut a'
      '           left outer join (select x.Nofaktur,x.KodecustSupp'
      '                       from vwHutPiut x'
      
        '                       where x.kodecustSupp=@kodecust and x.nobu' +
        'kti=@nobukti) c on c.kodecustSupp=a.Kodecustsupp'
      
        '      where a.KodeCustsupp=@kodecust and (c.Nofaktur=a.nofaktur)' +
        ' and a.Perkiraan in(@Perkiraan)'
      '      order by MyKey,Nofaktur,TipeTrans Desc')
    Left = 408
    Top = 240
    object QuHutPiutNoFaktur: TStringField
      FieldName = 'NoFaktur'
      ReadOnly = True
      Size = 30
    end
    object QuHutPiutNoRetur: TStringField
      FieldName = 'NoRetur'
      ReadOnly = True
      Size = 30
    end
    object QuHutPiutTipeTrans: TStringField
      FieldName = 'TipeTrans'
      ReadOnly = True
      Size = 3
    end
    object QuHutPiutKodeCustSupp: TStringField
      FieldName = 'KodeCustSupp'
      ReadOnly = True
      Size = 15
    end
    object QuHutPiutNoBukti: TStringField
      FieldName = 'NoBukti'
      ReadOnly = True
      Size = 30
    end
    object QuHutPiutNoMsk: TIntegerField
      FieldName = 'NoMsk'
      ReadOnly = True
    end
    object QuHutPiutUrut: TIntegerField
      FieldName = 'Urut'
      ReadOnly = True
    end
    object QuHutPiutTanggal: TDateTimeField
      FieldName = 'Tanggal'
      ReadOnly = True
    end
    object QuHutPiutJatuhTempo: TDateTimeField
      FieldName = 'JatuhTempo'
      ReadOnly = True
    end
    object QuHutPiutDebet: TBCDField
      FieldName = 'Debet'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuHutPiutKredit: TBCDField
      FieldName = 'Kredit'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 20
      Size = 2
    end
    object QuHutPiutSaldo: TBCDField
      FieldName = 'Saldo'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 20
      Size = 2
    end
    object QuHutPiutValas: TStringField
      FieldName = 'Valas'
      ReadOnly = True
      Size = 15
    end
    object QuHutPiutKurs: TBCDField
      FieldName = 'Kurs'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 20
    end
    object QuHutPiutDebetD: TBCDField
      FieldName = 'DebetD'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuHutPiutKreditD: TBCDField
      FieldName = 'KreditD'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 20
      Size = 2
    end
    object QuHutPiutSaldoD: TBCDField
      FieldName = 'SaldoD'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 20
      Size = 2
    end
    object QuHutPiutKodeSales: TStringField
      FieldName = 'KodeSales'
      ReadOnly = True
      Size = 15
    end
    object QuHutPiutTipe: TStringField
      FieldName = 'Tipe'
      ReadOnly = True
      Size = 4
    end
    object QuHutPiutPerkiraan: TStringField
      FieldName = 'Perkiraan'
      ReadOnly = True
      Size = 25
    end
    object QuHutPiutSaldoRp: TBCDField
      FieldName = 'SaldoRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 20
      Size = 2
    end
    object QuHutPiutSaldoVls: TBCDField
      FieldName = 'SaldoVls'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 20
      Size = 2
    end
    object QuHutPiutCatatan: TStringField
      FieldName = 'Catatan'
      ReadOnly = True
      Size = 800
    end
    object QuHutPiutMyKey: TStringField
      FieldName = 'MyKey'
      ReadOnly = True
      Size = 35
    end
    object QuHutPiutMyNobuktiKas: TStringField
      FieldName = 'MyNobuktiKas'
      ReadOnly = True
      Size = 35
    end
  end
  object DSHutPiut: TDataSource
    DataSet = QuHutPiut
    Left = 438
    Top = 241
  end
  object dsBeli: TDataSource
    DataSet = QuBeli
    Left = 472
    Top = 273
  end
end
