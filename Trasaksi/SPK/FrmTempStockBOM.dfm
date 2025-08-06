object FrTempStockBOM: TFrTempStockBOM
  Left = 98
  Top = 98
  BorderStyle = bsSingle
  Caption = 'Cek BOM'
  ClientHeight = 553
  ClientWidth = 1028
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1028
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label2: TLabel
      Left = 8
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
    object NamaBrg: TRxLabel
      Left = 200
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
    object Label3: TLabel
      Left = 7
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
      Left = 272
      Top = 36
      Width = 58
      Height = 16
      Caption = 'Kode BOM'
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
    object LSatuanQnt: TRxLabel
      Left = 200
      Top = 35
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
    object KodeBrg: TEdit
      Left = 92
      Top = 8
      Width = 100
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnEnter = KodeBrgEnter
      OnExit = KodeBrgExit
    end
    object Qnt: TPBNumEdit
      Left = 92
      Top = 33
      Width = 100
      Height = 22
      Alignment = taRightJustify
      Ctl3D = False
      Decimals = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumberFormat = Thousands
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object KodeBOM: TEdit
      Left = 340
      Top = 33
      Width = 100
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnEnter = KodeBOMEnter
      OnExit = KodeBOMExit
    end
    object RefreshBtn: TBitBtn
      Left = 456
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Refresh'
      TabOrder = 3
      OnClick = RefreshBtnClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 1028
    Height = 439
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 1
    object Panel4: TPanel
      Left = 5
      Top = 400
      Width = 1018
      Height = 34
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object PanelShow1: TPanel
        Left = 2
        Top = 2
        Width = 1014
        Height = 30
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
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
          Visible = False
        end
        object KoreksiBtn: TSpeedButton
          Left = 79
          Top = 1
          Width = 74
          Height = 28
          Caption = 'Qnt Prod.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          OnClick = KoreksiBtnClick
        end
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
          Visible = False
        end
        object SimpanBOMBtn: TSpeedButton
          Left = 314
          Top = 2
          Width = 87
          Height = 28
          Caption = 'Simpan BOM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          OnClick = SimpanBOMBtnClick
        end
      end
    end
    object dxDBGrid1: TdxDBGrid
      Left = 5
      Top = 5
      Width = 1018
      Height = 395
      Bands = <
        item
          Caption = 'Level BOM'
          Fixed = bfLeft
        end
        item
        end
        item
          Caption = 'Qnt BOM'
        end
        item
          Caption = 'Stock'
        end
        item
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'StrLevelBOM'
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
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -13
      BandFont.Name = 'Tahoma'
      BandFont.Style = []
      DataSource = DsQuBeli
      Filter.Criteria = {00000000}
      FixedBandLineWidth = 1
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
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Tahoma'
      PreviewFont.Style = []
      RowFooterColor = 11202790
      ShowBands = True
      object dxDBGrid1IDUser: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IDUser'
      end
      object dxDBGrid1L1: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'L1'
      end
      object dxDBGrid1L2: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'L2'
      end
      object dxDBGrid1L3: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'L3'
      end
      object dxDBGrid1L4: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'L4'
      end
      object dxDBGrid1L5: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'L5'
      end
      object dxDBGrid1L6: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'L6'
      end
      object dxDBGrid1L7: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'L7'
      end
      object dxDBGrid1L8: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'L8'
      end
      object dxDBGrid1KodeBrg: TdxDBGridMaskColumn
        Caption = 'Kode Brg'
        Width = 80
        BandIndex = 1
        RowIndex = 0
        FieldName = 'KodeBrg'
      end
      object dxDBGrid1NAMABRG: TdxDBGridMaskColumn
        Caption = 'Nama Barang'
        Width = 230
        BandIndex = 1
        RowIndex = 0
        FieldName = 'NAMABRG'
      end
      object dxDBGrid1Sat1: TdxDBGridMaskColumn
        Caption = 'Sat'
        Width = 40
        BandIndex = 1
        RowIndex = 0
        FieldName = 'Sat1'
      end
      object dxDBGrid1KodeBOM: TdxDBGridMaskColumn
        Caption = 'Kode BOM'
        Width = 90
        BandIndex = 1
        RowIndex = 0
        FieldName = 'KodeBOM'
      end
      object dxDBGrid1StrLevelBOM: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 1
        RowIndex = 0
        FieldName = 'StrLevelBOM'
      end
      object dxDBGrid1IntLevelBOM: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 1
        RowIndex = 0
        FieldName = 'IntLevelBOM'
      end
      object dxDBGrid1Urut1: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 1
        RowIndex = 0
        FieldName = 'Urut1'
      end
      object dxDBGrid1Urut2: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 1
        RowIndex = 0
        FieldName = 'Urut2'
      end
      object dxDBGrid1QntBOM_: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 2
        RowIndex = 0
        FieldName = 'QntBOM_'
      end
      object dxDBGrid1QntBOMX: TdxDBGridMaskColumn
        Caption = 'Qnt Asal'
        HeaderAlignment = taRightJustify
        Width = 80
        BandIndex = 2
        RowIndex = 0
        FieldName = 'QntBOMX'
      end
      object dxDBGrid1QntBOM: TdxDBGridMaskColumn
        Caption = 'Qnt BOM'
        HeaderAlignment = taRightJustify
        Width = 80
        BandIndex = 2
        RowIndex = 0
        FieldName = 'QntBOM'
      end
      object dxDBGrid1IsBarang: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 1
        RowIndex = 0
        FieldName = 'IsBarang'
      end
      object dxDBGrid1QntStockR: TdxDBGridMaskColumn
        Caption = 'Real'
        HeaderAlignment = taRightJustify
        Width = 70
        BandIndex = 3
        RowIndex = 0
        FieldName = 'QntStockR'
      end
      object dxDBGrid1QntOutPO: TdxDBGridMaskColumn
        Caption = 'Out PO'
        HeaderAlignment = taRightJustify
        Width = 70
        BandIndex = 3
        RowIndex = 0
        FieldName = 'QntOutPO'
      end
      object dxDBGrid1QntOutPrd: TdxDBGridMaskColumn
        Caption = 'Out Prod.'
        HeaderAlignment = taRightJustify
        Width = 70
        BandIndex = 3
        RowIndex = 0
        FieldName = 'QntOutPrd'
      end
      object dxDBGrid1QntOutSPK: TdxDBGridMaskColumn
        Caption = 'Out SPK'
        HeaderAlignment = taRightJustify
        Width = 70
        BandIndex = 3
        RowIndex = 0
        FieldName = 'QntOutSPK'
      end
      object dxDBGrid1QntStock: TdxDBGridMaskColumn
        Caption = 'Av. Stock'
        HeaderAlignment = taRightJustify
        Width = 70
        BandIndex = 3
        RowIndex = 0
        FieldName = 'QntStock'
      end
      object dxDBGrid1QntSisaStock: TdxDBGridMaskColumn
        Caption = 'Sisa Stock'
        HeaderAlignment = taRightJustify
        Width = 70
        BandIndex = 3
        RowIndex = 0
        FieldName = 'QntSisaStock'
      end
      object dxDBGrid1QntProduksi: TdxDBGridMaskColumn
        Caption = 'Qnt Prod.'
        HeaderAlignment = taRightJustify
        Width = 70
        BandIndex = 4
        RowIndex = 0
        FieldName = 'QntProduksi'
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 504
    Width = 1028
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    BorderWidth = 1
    TabOrder = 2
    Visible = False
    object SpeedButton1: TSpeedButton
      Left = 298
      Top = 10
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
    object Label11: TLabel
      Left = 8
      Top = 14
      Width = 72
      Height = 16
      Caption = 'Qnt Produksi'
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
    object BitBtn1: TBitBtn
      Left = 220
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Simpan'
      TabOrder = 1
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
    object QntProduksi: TPBNumEdit
      Left = 100
      Top = 11
      Width = 93
      Height = 22
      Alignment = taRightJustify
      Ctl3D = False
      Decimals = 2
      NumberFormat = Thousands
      ParentCtl3D = False
      TabOrder = 0
    end
  end
  object QuBeli: TADOQuery
    CacheSize = 2000
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @IDUser varchar(30)'
      ''
      'select @IDUser='#39'SA'#39
      ''
      'select case when A.IntLevelBOM=1 then '#39'1'#39' else '#39#39' end L1,'
      'case when A.IntLevelBOM=2 then '#39'2'#39' else '#39#39' end L2,'
      'case when A.IntLevelBOM=3 then '#39'3'#39' else '#39#39' end L3,'
      'case when A.IntLevelBOM=4 then '#39'4'#39' else '#39#39' end L4,'
      'case when A.IntLevelBOM=5 then '#39'5'#39' else '#39#39' end L5,'
      'case when A.IntLevelBOM=6 then '#39'6'#39' else '#39#39' end L6,'
      'case when A.IntLevelBOM=7 then '#39'7'#39' else '#39#39' end L7,'
      'case when A.IntLevelBOM=8 then '#39'8'#39' else '#39#39' end L8,'#9
      'A.*, Brg.NAMABRG, Brg.Sat1'
      'from '#9'TempStockBOM A'
      'left outer join dbBARANg Brg on Brg.KodeBrg=A.KodeBrg'
      'order by A.StrLevelBOM'
      '')
    Left = 107
    Top = 82
    object QuBeliIDUser: TStringField
      FieldName = 'IDUser'
      Size = 30
    end
    object QuBeliL1: TStringField
      FieldName = 'L1'
      ReadOnly = True
      Size = 1
    end
    object QuBeliL2: TStringField
      FieldName = 'L2'
      ReadOnly = True
      Size = 1
    end
    object QuBeliL3: TStringField
      FieldName = 'L3'
      ReadOnly = True
      Size = 1
    end
    object QuBeliL4: TStringField
      FieldName = 'L4'
      ReadOnly = True
      Size = 1
    end
    object QuBeliL5: TStringField
      FieldName = 'L5'
      ReadOnly = True
      Size = 1
    end
    object QuBeliL6: TStringField
      FieldName = 'L6'
      ReadOnly = True
      Size = 1
    end
    object QuBeliL7: TStringField
      FieldName = 'L7'
      ReadOnly = True
      Size = 1
    end
    object QuBeliL8: TStringField
      FieldName = 'L8'
      ReadOnly = True
      Size = 1
    end
    object QuBeliKodeBrg: TStringField
      FieldName = 'KodeBrg'
      Size = 25
    end
    object QuBeliNAMABRG: TStringField
      FieldName = 'NAMABRG'
      Size = 100
    end
    object QuBeliKodeBOM: TStringField
      FieldName = 'KodeBOM'
      Size = 30
    end
    object QuBeliStrLevelBOM: TStringField
      FieldName = 'StrLevelBOM'
      Size = 50
    end
    object QuBeliIntLevelBOM: TIntegerField
      FieldName = 'IntLevelBOM'
    end
    object QuBeliUrut1: TIntegerField
      FieldName = 'Urut1'
    end
    object QuBeliUrut2: TIntegerField
      FieldName = 'Urut2'
    end
    object QuBeliQntBOM_: TFloatField
      FieldName = 'QntBOM_'
      DisplayFormat = ',0.000000'
    end
    object QuBeliQntBOMX: TBCDField
      FieldName = 'QntBOMX'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliQntBOM: TBCDField
      FieldName = 'QntBOM'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliIsBarang: TIntegerField
      FieldName = 'IsBarang'
    end
    object QuBeliQntStockR: TBCDField
      FieldName = 'QntStockR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliQntOutPO: TBCDField
      FieldName = 'QntOutPO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliQntOutSPK: TBCDField
      FieldName = 'QntOutSPK'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliQntStock: TBCDField
      FieldName = 'QntStock'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliQntSisaStock: TBCDField
      FieldName = 'QntSisaStock'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliQntProduksi: TBCDField
      FieldName = 'QntProduksi'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliQntOutPrd: TBCDField
      FieldName = 'QntOutPrd'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliSat1: TStringField
      FieldName = 'Sat1'
      Size = 5
    end
  end
  object DsQuBeli: TDataSource
    DataSet = QuBeli
    Left = 66
    Top = 80
  end
end
