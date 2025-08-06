object FrBarangCustomer: TFrBarangCustomer
  Left = 258
  Top = 30
  BorderStyle = bsDialog
  Caption = 'Input Data'
  ClientHeight = 481
  ClientWidth = 718
  Color = clBtnFace
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
  object Panel1: TPanel
    Left = 0
    Top = 328
    Width = 718
    Height = 153
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    Visible = False
    object LNamaBrg: TLabel
      Left = 342
      Top = 17
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
    object Label2: TLabel
      Left = 25
      Top = 16
      Width = 72
      Height = 16
      Caption = 'Kode Barang'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 409
      Top = 43
      Width = 90
      Height = 16
      Caption = 'Kode Cust Supp'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object LNamaCustSupp: TLabel
      Left = 638
      Top = 44
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
    object Label1: TLabel
      Left = 65
      Top = 39
      Width = 34
      Height = 16
      Caption = 'Harga'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 21
      Top = 40
      Width = 38
      Height = 14
      Caption = 'Satuan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object kodeBrg: TEdit
      Left = 110
      Top = 12
      Width = 227
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clWhite
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 100
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnEnter = kodeBrgEnter
      OnExit = kodeBrgExit
      OnKeyDown = kodeBrgKeyDown
    end
    object KodeCustSupp: TEdit
      Left = 510
      Top = 41
      Width = 123
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clWhite
      Ctl3D = False
      MaxLength = 100
      ParentCtl3D = False
      TabOrder = 0
      Visible = False
      OnEnter = KodeCustSuppEnter
      OnExit = KodeCustSuppExit
    end
    object BitBtn1: TBitBtn
      Left = 22
      Top = 120
      Width = 75
      Height = 25
      Caption = '&Simpan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
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
    object BitBtn2: TBitBtn
      Left = 110
      Top = 120
      Width = 75
      Height = 25
      Caption = '&Tutup'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
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
    object Hrg1_1: TPBNumEdit
      Left = 64
      Top = 56
      Width = 129
      Height = 24
      Alignment = taRightJustify
      Ctl3D = True
      Decimals = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumberFormat = Thousands
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
    object Hrg1_2: TPBNumEdit
      Left = 64
      Top = 81
      Width = 129
      Height = 24
      Alignment = taRightJustify
      Ctl3D = True
      Decimals = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumberFormat = Thousands
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
    end
    object Sat1: TEdit
      Left = 21
      Top = 56
      Width = 44
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Ctl3D = True
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 3
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object Sat2: TEdit
      Left = 21
      Top = 81
      Width = 44
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Ctl3D = True
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 3
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 718
    Height = 271
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 1
    object Panel4: TPanel
      Left = 5
      Top = 232
      Width = 708
      Height = 34
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object PanelShow1: TPanel
        Left = 2
        Top = 2
        Width = 704
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
        object SpeedButton1: TSpeedButton
          Left = 229
          Top = 1
          Width = 75
          Height = 28
          Caption = 'K&omisi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          OnClick = SpeedButton1Click
        end
      end
    end
    object cxGrid1: TcxGrid
      Left = 5
      Top = 5
      Width = 708
      Height = 227
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      LookAndFeel.Kind = lfFlat
      object tvBarangCust: TcxGridDBBandedTableView
        DataController.DataSource = DsQuBeli
        DataController.Filter.Criteria = {FFFFFFFF0000000000}
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OnFocusedRecordChanged = tvBarangCustFocusedRecordChanged
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        Bands = <
          item
            Caption = 'Deskripsi'
          end
          item
            Caption = 'Satuan 2'
          end
          item
            Caption = 'Satuan 1'
          end>
        object tvBarangCustkodebrg: TcxGridDBBandedColumn
          Caption = 'Kode Barang'
          DataBinding.FieldName = 'kodebrg'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 76
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object tvBarangCustNamaBrg: TcxGridDBBandedColumn
          Caption = 'Nama Barang'
          DataBinding.FieldName = 'NamaBrg'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 250
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object tvBarangCustSat_1: TcxGridDBBandedColumn
          Caption = 'Sat'
          DataBinding.FieldName = 'Sat_1'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object tvBarangCustharga_1: TcxGridDBBandedColumn
          Caption = 'Harga'
          DataBinding.FieldName = 'harga_1'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 120
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object tvBarangCustSat_2: TcxGridDBBandedColumn
          Caption = 'Sat'
          DataBinding.FieldName = 'Sat_2'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object tvBarangCustHarga_2: TcxGridDBBandedColumn
          Caption = 'Harga'
          DataBinding.FieldName = 'Harga_2'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 120
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object tvBarangCustKomisi: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Komisi'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
      end
      object tvkomisi: TcxGridDBBandedTableView
        DataController.DataSource = DSKomisi
        DataController.DetailKeyFieldNames = 'KeyUrut'
        DataController.Filter.Criteria = {FFFFFFFF0000000000}
        DataController.MasterKeyFieldNames = 'KeyUrut'
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
        Bands = <
          item
            Caption = 'Deskripsi'
          end
          item
          end>
        object tvkomisiKodeCustSupp: TcxGridDBBandedColumn
          DataBinding.FieldName = 'KodeCustSupp'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 109
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object tvkomisinamaCustSupp: TcxGridDBBandedColumn
          DataBinding.FieldName = 'namaCustSupp'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 704
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object tvkomisikodebrg: TcxGridDBBandedColumn
          DataBinding.FieldName = 'kodebrg'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 179
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object tvkomisiNamabrg: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Namabrg'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 704
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object tvkomisiNama: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Nama'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 201
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object tvkomisiKurir: TcxGridDBBandedColumn
          Caption = 'Komisi'
          DataBinding.FieldName = 'Kurir'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 137
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object tvkomisiislunas: TcxGridDBBandedColumn
          Caption = 'Saat Lunas?'
          DataBinding.FieldName = 'islunas'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 74
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object tvkomisiSat1: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Sat1'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 39
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object tvkomisiSat2: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Sat2'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 39
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object tvkomisiKeyUrut: TcxGridDBBandedColumn
          DataBinding.FieldName = 'KeyUrut'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 284
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = tvBarangCust
        object cxGrid1Level2: TcxGridLevel
          GridView = tvkomisi
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 718
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
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
      Top = 46
      Width = 772
      Height = 6
      Shape = bsTopLine
    end
  end
  object QuBeli: TADOQuery
    CacheSize = 2000
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <
      item
        Name = '0'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      
        'select A.KodeCustSupp, a.kodebrg, Case when a.Sat_1='#39#39' then b.Sa' +
        't1 else a.Sat_1 end Sat_1,'
      'a.harga_1,'
      
        'Case when a.Sat_2='#39#39' then b.sat2 else a.Sat_2 end Sat_2, a.Harga' +
        '_2,B.NamaBrg,'
      'C.NamaCustSupp,A.Komisi, A.KodecustSupp+A.Kodebrg KeyUrut'
      'from DbbarangCustomer  A'
      'left outer join dbbarang b on a.kodebrg = B.kodebrg'
      'left outer join dbcustsupp C on A.Kodecustsupp=C.kodecustsupp'
      'where A.kodecustSupp= :0'
      'Order by A.KodeCustSupp')
    Left = 475
    Top = 10
    object QuBeliKodeCustSupp: TStringField
      FieldName = 'KodeCustSupp'
      Size = 15
    end
    object QuBelikodebrg: TStringField
      FieldName = 'kodebrg'
      Size = 25
    end
    object QuBeliNamaBrg: TStringField
      FieldName = 'NamaBrg'
      Size = 100
    end
    object QuBeliNamaCustSupp: TStringField
      FieldName = 'NamaCustSupp'
      Size = 100
    end
    object QuBeliSat_1: TStringField
      FieldName = 'Sat_1'
      Size = 5
    end
    object QuBeliharga_1: TBCDField
      FieldName = 'harga_1'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 0
    end
    object QuBeliSat_2: TStringField
      FieldName = 'Sat_2'
      Size = 5
    end
    object QuBeliHarga_2: TBCDField
      FieldName = 'Harga_2'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 0
    end
    object QuBeliKomisi: TBCDField
      FieldName = 'Komisi'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliKeyUrut: TStringField
      FieldName = 'KeyUrut'
      ReadOnly = True
      Size = 40
    end
  end
  object DsQuBeli: TDataSource
    DataSet = QuBeli
    Left = 434
    Top = 8
  end
  object DSKomisi: TDataSource
    DataSet = Qukomisi
    Left = 442
    Top = 64
  end
  object Qukomisi: TADOQuery
    CacheSize = 2000
    Connection = DM.MyStock
    CursorType = ctStatic
    DataSource = DsQuBeli
    Parameters = <
      item
        Name = 'KeyUrut'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 40
        Value = Null
      end>
    SQL.Strings = (
      
        'select A.KodeCustSupp,a.kodebrg, c.Namabrg, c.Sat1, c.Sat2, A.ur' +
        'ut,a.Nama,a.Kurir,A.islunas,B.namaCustSupp,'
      '       A.kodecustSupp+A.kodebrg KeyUrut'
      'from dbkomisicustomer A'
      'left outer join DBCustsupp b on a.Kodecustsupp = B.Kodecustsupp'
      'left Outer join dbbarang c on c.kodebrg=A.kodebrg'
      'where A.kodecustSupp+A.kodebrg=:KeyUrut'
      'Order by A.KodeCustSupp')
    Left = 483
    Top = 66
    object QukomisiKodeCustSupp: TStringField
      FieldName = 'KodeCustSupp'
      Size = 15
    end
    object QukomisiSat1: TStringField
      FieldName = 'Sat1'
      Size = 5
    end
    object QukomisiSat2: TStringField
      FieldName = 'Sat2'
      Size = 5
    end
    object Qukomisiurut: TIntegerField
      FieldName = 'urut'
    end
    object QukomisiNama: TStringField
      FieldName = 'Nama'
      Size = 50
    end
    object QukomisiKurir: TBCDField
      FieldName = 'Kurir'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 0
    end
    object QukomisinamaCustSupp: TStringField
      FieldName = 'namaCustSupp'
      Size = 100
    end
    object QukomisiKeyUrut: TStringField
      FieldName = 'KeyUrut'
      ReadOnly = True
      Size = 40
    end
    object Qukomisiislunas: TBooleanField
      FieldName = 'islunas'
    end
    object Qukomisikodebrg: TStringField
      FieldName = 'kodebrg'
      Size = 25
    end
    object QukomisiNamabrg: TStringField
      FieldName = 'Namabrg'
      Size = 100
    end
  end
end
