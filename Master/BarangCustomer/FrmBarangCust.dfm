object FrbarangCust: TFrbarangCust
  Left = 493
  Top = 53
  BorderStyle = bsDialog
  Caption = 'Alamat Kirim'
  ClientHeight = 564
  ClientWidth = 801
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
  object DxpageControl1: TdxPageControl
    Left = 0
    Top = 0
    Width = 801
    Height = 564
    ActivePage = dxTabSheet2
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
      Caption = 'Barang Customer'
      object Panel3: TPanel
        Left = 0
        Top = 433
        Width = 801
        Height = 108
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
        Visible = False
        object SpeedButton1: TSpeedButton
          Left = 145
          Top = 63
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
        object Label8: TLabel
          Left = 9
          Top = 32
          Width = 34
          Height = 16
          Caption = 'Harga'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LNamaBrg: TLabel
          Left = 326
          Top = 12
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
          Left = 9
          Top = 8
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
        object BitBtn1: TBitBtn
          Left = 62
          Top = 63
          Width = 75
          Height = 25
          Caption = '&Simpan'
          TabOrder = 2
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
        object kodeBrg: TEdit
          Left = 94
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
          OnEnter = kodeBrgEnter
          OnExit = kodeBrgExit
          OnKeyDown = kodeBrgKeyDown
        end
        object Harga: TPBNumEdit
          Left = 94
          Top = 30
          Width = 127
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          ParentCtl3D = False
          TabOrder = 1
          Value = 1
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 49
        Width = 801
        Height = 384
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 5
        TabOrder = 1
        object Panel4: TPanel
          Left = 5
          Top = 345
          Width = 791
          Height = 34
          Align = alBottom
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object PanelShow1: TPanel
            Left = 2
            Top = 2
            Width = 787
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
          Width = 791
          Height = 340
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'kodebrg'
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
            Caption = 'Kode Barang'
            HeaderAlignment = taCenter
            Width = 88
            BandIndex = 0
            RowIndex = 0
            FieldName = 'kodebrg'
          end
          object dxDBGrid1Nomor: TdxDBGridMaskColumn
            Caption = 'Nama Barang'
            HeaderAlignment = taCenter
            Width = 250
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NamaBrg'
          end
          object dxDBGrid1NamaKirim: TdxDBGridMaskColumn
            Caption = 'Harga'
            HeaderAlignment = taCenter
            Width = 180
            BandIndex = 0
            RowIndex = 0
            FieldName = 'harga'
          end
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 801
        Height = 49
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        Visible = False
        object LblKode: TLabel
          Left = 5
          Top = 5
          Width = 71
          Height = 18
          Caption = 'Input Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LblNama: TLabel
          Left = 117
          Top = 5
          Width = 71
          Height = 18
          Caption = 'Input Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object dxTabSheet2: TdxTabSheet
      Caption = 'Komisi Customer'
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 801
        Height = 49
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        Visible = False
        object Label1: TLabel
          Left = 5
          Top = 5
          Width = 71
          Height = 18
          Caption = 'Input Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 117
          Top = 5
          Width = 71
          Height = 18
          Caption = 'Input Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 49
        Width = 801
        Height = 384
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 5
        TabOrder = 1
        object Panel7: TPanel
          Left = 5
          Top = 345
          Width = 791
          Height = 34
          Align = alBottom
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object Panel8: TPanel
            Left = 2
            Top = 2
            Width = 787
            Height = 30
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 0
            object SpeedButton2: TSpeedButton
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
              OnClick = SpeedButton2Click
            end
            object SpeedButton3: TSpeedButton
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
              OnClick = SpeedButton3Click
            end
            object SpeedButton4: TSpeedButton
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
              OnClick = SpeedButton4Click
            end
          end
        end
        object dxDBGrid2: TdxDBGrid
          Left = 5
          Top = 5
          Width = 791
          Height = 340
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'Nama'
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
          DataSource = DsKomisi
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
          object dxDBGridMaskColumn1: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 88
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Nama'
          end
          object dxDBGridMaskColumn2: TdxDBGridMaskColumn
            Caption = 'Harga Kurir'
            HeaderAlignment = taCenter
            Width = 250
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Kurir'
          end
        end
      end
      object Panel9: TPanel
        Left = 0
        Top = 433
        Width = 801
        Height = 108
        Align = alBottom
        BevelOuter = bvNone
        BorderWidth = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Visible = False
        object SpeedButton5: TSpeedButton
          Left = 145
          Top = 63
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
          OnClick = SpeedButton5Click
        end
        object Label4: TLabel
          Left = 9
          Top = 32
          Width = 81
          Height = 16
          Caption = 'Jumlah Komisi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
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
        object BitBtn2: TBitBtn
          Left = 70
          Top = 63
          Width = 75
          Height = 25
          Caption = '&Simpan'
          TabOrder = 2
          OnClick = BitBtn2Click
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
        object Nama: TEdit
          Left = 94
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
        end
        object JumlahKomisi: TPBNumEdit
          Left = 94
          Top = 30
          Width = 127
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          Decimals = 2
          NumberFormat = Thousands
          ParentCtl3D = False
          TabOrder = 1
        end
      end
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
        Value = '0'
      end>
    SQL.Strings = (
      
        'select A.KodeCustSupp, a.kodebrg,a.harga,B.NamaBrg from Dbbarang' +
        'Customer  A'
      'left outer join dbbarang b on a.kodebrg = B.kodebrg'
      'where A.kodecustSupp=:0'
      'Order by A.kodebrg')
    Left = 475
    Top = 26
    object QuBeliKodeCustSupp: TStringField
      FieldName = 'KodeCustSupp'
      Size = 15
    end
    object QuBelikodebrg: TStringField
      FieldName = 'kodebrg'
      Size = 25
    end
    object QuBeliharga: TBCDField
      FieldName = 'harga'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 0
    end
    object QuBeliNamaBrg: TStringField
      FieldName = 'NamaBrg'
      Size = 100
    end
  end
  object DsQuBeli: TDataSource
    DataSet = QuBeli
    Left = 434
    Top = 24
  end
  object QuKomisi: TADOQuery
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
        Value = '0'
      end>
    SQL.Strings = (
      
        'select A.KodeCustSupp, A.urut,a.Nama,a.Kurir,A.islunas from dbko' +
        'misicustomer A'
      'left outer join DBCustsupp b on a.Kodecustsupp = B.Kodecustsupp'
      'where A.kodecustSupp=:0'
      'Order by A.KodeCustSupp')
    Left = 643
    Top = 26
    object QuKomisiKodeCustSupp: TStringField
      FieldName = 'KodeCustSupp'
      Size = 15
    end
    object QuKomisiurut: TIntegerField
      FieldName = 'urut'
    end
    object QuKomisiNama: TStringField
      FieldName = 'Nama'
      Size = 50
    end
    object QuKomisiKurir: TBCDField
      FieldName = 'Kurir'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 0
    end
    object QuKomisiislunas: TWordField
      FieldName = 'islunas'
    end
  end
  object DsKomisi: TDataSource
    DataSet = QuKomisi
    Left = 602
    Top = 24
  end
end
