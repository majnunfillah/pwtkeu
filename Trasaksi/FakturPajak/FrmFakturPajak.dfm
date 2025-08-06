object FrFakturPajak: TFrFakturPajak
  Left = -4
  Top = -4
  Width = 1374
  Height = 742
  Caption = 'Faktur Pajak'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1358
    Height = 38
    AutoSize = True
    ButtonHeight = 36
    ButtonWidth = 76
    Caption = 'ToolBar1'
    Color = clBtnFace
    EdgeBorders = [ebLeft, ebTop]
    Flat = True
    Images = DM.ImageList2
    ParentColor = False
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 0
    object ToolButton10: TToolButton
      Left = 0
      Top = 0
      Caption = 'Refresh'
      ImageIndex = 12
      OnClick = ToolButton10Click
    end
    object ToolButton7: TToolButton
      Left = 76
      Top = 0
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object ToolButton6: TToolButton
      Left = 84
      Top = 0
      Caption = 'Lain-lain'
      DropdownMenu = PopupMenu1
      ImageIndex = 10
      Style = tbsDropDown
      Visible = False
    end
    object ToolButton1: TToolButton
      Left = 175
      Top = 0
      Caption = 'Isi No Pajak'
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 251
      Top = 0
      Caption = 'Kosong'
      ImageIndex = 13
      OnClick = ToolButton2Click
    end
    object Panel3: TPanel
      Left = 327
      Top = 0
      Width = 104
      Height = 36
      TabOrder = 0
      object ComboBox1: TComboBox
        Left = 8
        Top = 8
        Width = 89
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemHeight = 16
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'Lembar 1'
        Items.Strings = (
          'Lembar 1'
          'Lembar 2'
          'Lembar 3'
          'Lembar 4')
      end
    end
    object ToolButton3: TToolButton
      Left = 431
      Top = 0
      Caption = 'Cetak'
      ImageIndex = 4
      OnClick = ToolButton3Click
    end
    object ToolButton4: TToolButton
      Left = 507
      Top = 0
      Caption = 'Design'
      ImageIndex = 10
      OnClick = ToolButton4Click
    end
    object ToolButton5: TToolButton
      Left = 583
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 9
      Style = tbsSeparator
    end
    object ToolButton9: TToolButton
      Left = 591
      Top = 0
      Caption = 'K&eluar'
      ImageIndex = 8
      OnClick = ToolButton9Click
    end
    object ToolButton8: TToolButton
      Left = 667
      Top = 0
      Caption = 'Otorisasi'
      ImageIndex = 9
      Visible = False
      OnClick = ToolButton8Click
    end
    object ToolButton11: TToolButton
      Left = 743
      Top = 0
      Caption = 'Batal Otorisasi'
      ImageIndex = 10
      Visible = False
      OnClick = ToolButton11Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 38
    Width = 1358
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 6
      Top = 8
      Width = 46
      Height = 13
      Caption = 'Periode : '
    end
    object TglAwal: TDateEdit
      Left = 55
      Top = 4
      Width = 90
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object TglAkhir: TDateEdit
      Left = 150
      Top = 4
      Width = 90
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 67
    Width = 1358
    Height = 637
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object dxDBGrid1: TdxDBGrid
      Left = 376
      Top = 128
      Width = 352
      Height = 138
      Hint = 'Untuk cari data ketik kata yang dicari di grid'
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'Kodebrg'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Color = 14540253
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Visible = False
      OnDblClick = ToolButton2Click
      AutoExpandOnSearch = False
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Tahoma'
      BandFont.Style = []
      Filter.Criteria = {00000000}
      GridLineColor = clBlack
      GroupPanelColor = 13025469
      GroupPanelFontColor = clBlack
      GroupNodeColor = clMoneyGreen
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clBlack
      HeaderFont.Height = -13
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = [fsBold]
      HideSelectionColor = clMoneyGreen
      HideSelectionTextColor = clBlack
      HighlightColor = 9629163
      HighlightTextColor = clBlack
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Tahoma'
      PreviewFont.Style = []
      RowFooterColor = 16763283
      ShowRowFooter = True
    end
    object cxGrid3: TcxGrid
      Left = 0
      Top = 0
      Width = 1358
      Height = 637
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      LookAndFeel.Kind = lfFlat
      object tvMaster3: TcxGridDBBandedTableView
        DataController.DataSource = DsMasterInv
        DataController.Filter.Criteria = {FFFFFFFF0000000000}
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        OptionsView.FixedBandSeparatorWidth = 1
        Styles.StyleSheet = DM.cxGridBandStyleHd
        Styles.Header = DM.cxStyle8
        Styles.BandHeader = DM.cxStyle8
        Bands = <
          item
            Caption = 'Deskripsi Barang'
            Hidden = True
          end
          item
            Caption = 'Otorisasi'
            Visible = False
          end>
        object tvMaster3NoBukti: TcxGridDBBandedColumn
          Caption = 'No. Invoice'
          DataBinding.FieldName = 'NoBukti'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 133
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object tvMaster3Tanggal: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Tanggal'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 81
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object tvMaster3KodeCustSupp: TcxGridDBBandedColumn
          Caption = 'Kode Customer'
          DataBinding.FieldName = 'KodeCustSupp'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 82
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object tvMaster3NamaCustSupp: TcxGridDBBandedColumn
          Caption = 'Nama Customer'
          DataBinding.FieldName = 'NamaCustSupp'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 110
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object tvMaster3NoSHip: TcxGridDBBandedColumn
          Caption = 'No. SPB'
          DataBinding.FieldName = 'NoSPB'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 120
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object tvMaster3TGLSHip: TcxGridDBBandedColumn
          Caption = 'Tanggal SPB'
          DataBinding.FieldName = 'TglSPB'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 77
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object tvMaster3NoSPP: TcxGridDBBandedColumn
          Caption = 'No. SPP'
          DataBinding.FieldName = 'NoSPP'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 125
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object tvMaster3TglSPP: TcxGridDBBandedColumn
          Caption = 'Tanggal SPP'
          DataBinding.FieldName = 'TglSPP'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 81
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object tvMaster3NoSO: TcxGridDBBandedColumn
          Caption = 'No. SO'
          DataBinding.FieldName = 'NoSO'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 126
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object tvMaster3TGLSO: TcxGridDBBandedColumn
          Caption = 'Tanggal SO'
          DataBinding.FieldName = 'TGLSO'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 75
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object tvMaster3DBNoPajak: TcxGridDBBandedColumn
          Caption = 'Nomor Pajak'
          DataBinding.FieldName = 'NoPajak'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object tvMaster3DBTglFpj: TcxGridDBBandedColumn
          Caption = 'Tanggal Faktur Pajak'
          DataBinding.FieldName = 'TglFPJ'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object tvMaster3IsOtorisasi1: TcxGridDBBandedColumn
          DataBinding.FieldName = 'IsOtorisasi1'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object tvMaster3OtoUser1: TcxGridDBBandedColumn
          DataBinding.FieldName = 'OtoUser1'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object tvMaster3TglOto1: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TglOto1'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object tvMaster3IsOtorisasi2: TcxGridDBBandedColumn
          DataBinding.FieldName = 'IsOtorisasi2'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object tvMaster3OtoUser2: TcxGridDBBandedColumn
          DataBinding.FieldName = 'OtoUser2'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object tvMaster3TglOto2: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TglOto2'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object tvMaster3IsOtorisasi3: TcxGridDBBandedColumn
          DataBinding.FieldName = 'IsOtorisasi3'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 1
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object tvMaster3OtoUser3: TcxGridDBBandedColumn
          DataBinding.FieldName = 'OtoUser3'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 1
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object tvMaster3TglOto3: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TglOto3'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 1
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object tvMaster3IsOtorisasi4: TcxGridDBBandedColumn
          DataBinding.FieldName = 'IsOtorisasi4'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 1
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object tvMaster3OtoUser4: TcxGridDBBandedColumn
          DataBinding.FieldName = 'OtoUser4'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 1
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object tvMaster3TglOto4: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TglOto4'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 1
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object tvMaster3IsOtorisasi5: TcxGridDBBandedColumn
          DataBinding.FieldName = 'IsOtorisasi5'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 1
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object tvMaster3OtoUser5: TcxGridDBBandedColumn
          DataBinding.FieldName = 'OtoUser5'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 1
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object tvMaster3TglOto5: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TglOto5'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 1
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
      end
      object tvDetail3: TcxGridDBBandedTableView
        DataController.DataSource = DsDetailInv
        DataController.DetailKeyFieldNames = 'Nobukti'
        DataController.Filter.Criteria = {FFFFFFFF0000000000}
        DataController.KeyFieldNames = 'NOBUKTI'
        DataController.MasterKeyFieldNames = 'NoBukti'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        OptionsView.FixedBandSeparatorWidth = 1
        Styles.StyleSheet = DM.cxGridBandStyleDt
        Bands = <
          item
            Caption = 'Deskripsi Barang'
            FixedKind = fkLeft
          end
          item
            Caption = 'Satuan 2'
          end
          item
            Caption = 'Satuan 1'
          end
          item
          end>
        object tvDetail3KodeBrg: TcxGridDBBandedColumn
          Caption = 'Kode Barang'
          DataBinding.FieldName = 'KodeBrg'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object tvDetail3NAMABRG: TcxGridDBBandedColumn
          Caption = 'Nama Barang'
          DataBinding.FieldName = 'NAMABRG'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 250
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object tvDetail3SAT_2: TcxGridDBBandedColumn
          Caption = 'SAT'
          DataBinding.FieldName = 'SAT_2'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object tvDetail3QNT2: TcxGridDBBandedColumn
          Caption = 'QNT'
          DataBinding.FieldName = 'QNT2'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 80
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object tvDetail3SAT_1: TcxGridDBBandedColumn
          Caption = 'SAT'
          DataBinding.FieldName = 'SAT_1'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object tvDetail3QNT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QNT'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 80
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object tvDetail3NetW: TcxGridDBBandedColumn
          Caption = 'Net Weight'
          DataBinding.FieldName = 'NetW'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 80
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object tvDetail3GrossW: TcxGridDBBandedColumn
          Caption = 'Gross Weight'
          DataBinding.FieldName = 'GrossW'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 80
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object tvDetail3HARGA: TcxGridDBBandedColumn
          Caption = 'Harga'
          DataBinding.FieldName = 'HARGA'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 100
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object tvDetail3SUBTOTAL: TcxGridDBBandedColumn
          Caption = 'Sub Total'
          DataBinding.FieldName = 'SUBTOTAL'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 100
          Position.BandIndex = 3
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object tvDetail3KetDetail: TcxGridDBBandedColumn
          Caption = 'Keterangan'
          DataBinding.FieldName = 'KetDetail'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 3
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
      end
      object cxGridLevel3: TcxGridLevel
        GridView = tvMaster3
        object cxGridLevel4: TcxGridLevel
          GridView = tvDetail3
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 515
    Top = 21
    object ExportExcel1: TMenuItem
      Caption = 'Export Excel'
      ImageIndex = 5
      OnClick = ExportExcel1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ShowGrid1: TMenuItem
      Caption = 'Show Grid'
      Checked = True
      OnClick = ShowGrid1Click
    end
    object ShowHeader1: TMenuItem
      Caption = 'Show Header'
      Checked = True
      OnClick = ShowHeader1Click
    end
    object Show1: TMenuItem
      Caption = 'Show Footer'
      Checked = True
      OnClick = Show1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object AutoFilter1: TMenuItem
      Caption = 'Auto Filter'
      ImageIndex = 14
      OnClick = AutoFilter1Click
    end
    object MultiSelect1: TMenuItem
      Caption = 'Multi Select'
      OnClick = MultiSelect1Click
    end
  end
  object SaveDialog: TSaveDialog
    FileName = 'ExpGrid'
    Options = [ofOverwritePrompt, ofHideReadOnly]
    Left = 345
    Top = 212
  end
  object quCetak: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'exec sp_FakturPajak  '#39'111'#39)
    Left = 418
    Top = 209
    object quCetakNoBukti: TStringField
      FieldName = 'NoBukti'
      Size = 30
    end
    object quCetakNoPNJ: TStringField
      FieldName = 'NoPNJ'
      Size = 30
    end
    object quCetakKodeBrg: TStringField
      FieldName = 'KodeBrg'
      Size = 25
    end
    object quCetakNOFPJ: TStringField
      FieldName = 'NOFPJ'
      ReadOnly = True
      Size = 50
    end
    object quCetakTglFPJ: TDateTimeField
      FieldName = 'TglFPJ'
    end
    object quCetakMySeri: TStringField
      FieldName = 'MySeri'
      Size = 50
    end
    object quCetakKurs: TBCDField
      FieldName = 'Kurs'
      Precision = 18
      Size = 2
    end
    object quCetakUsaha: TStringField
      FieldName = 'Usaha'
    end
    object quCetakKodeGrp: TStringField
      FieldName = 'KodeGrp'
    end
    object quCetakNamaPKP: TStringField
      FieldName = 'NamaPKP'
      Size = 40
    end
    object quCetakAlamatPKP: TStringField
      FieldName = 'AlamatPKP'
      ReadOnly = True
      Size = 243
    end
    object quCetakalamat2: TStringField
      FieldName = 'alamat2'
      Size = 100
    end
    object quCetakNPWPPKP: TStringField
      FieldName = 'NPWPPKP'
      Size = 40
    end
    object quCetakTglPKP: TDateTimeField
      FieldName = 'TglPKP'
    end
    object quCetakKodeCustSupp: TStringField
      FieldName = 'KodeCustSupp'
    end
    object quCetakNAMACUSTSUPP: TStringField
      FieldName = 'NAMACUSTSUPP'
      Size = 100
    end
    object quCetakAlamatCust: TStringField
      FieldName = 'AlamatCust'
      ReadOnly = True
      Size = 232
    end
    object quCetakNPWPCust: TStringField
      FieldName = 'NPWPCust'
      Size = 100
    end
    object quCetakalamatcustom: TStringField
      FieldName = 'alamatcustom'
      Size = 100
    end
    object quCetakkotacustom: TStringField
      FieldName = 'kotacustom'
      Size = 100
    end
    object quCetakKodeBrg_1: TStringField
      FieldName = 'KodeBrg_1'
      Size = 25
    end
    object quCetakNamaBrg: TStringField
      FieldName = 'NamaBrg'
      Size = 100
    end
    object quCetakJumlah: TBCDField
      FieldName = 'Jumlah'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object quCetakUangMuka: TIntegerField
      FieldName = 'UangMuka'
      ReadOnly = True
    end
    object quCetakQnt: TBCDField
      FieldName = 'Qnt'
      Precision = 18
      Size = 2
    end
    object quCetakSAT_1: TStringField
      FieldName = 'SAT_1'
      Size = 5
    end
    object quCetakSAT_2: TStringField
      FieldName = 'SAT_2'
      Size = 5
    end
    object quCetakNDpp: TBCDField
      FieldName = 'NDpp'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object quCetakNppn: TBCDField
      FieldName = 'Nppn'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object quCetakNnet: TBCDField
      FieldName = 'Nnet'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object quCetakValas: TStringField
      FieldName = 'Valas'
      Size = 15
    end
    object quCetakHarga: TBCDField
      FieldName = 'Harga'
      ReadOnly = True
      Precision = 25
      Size = 7
    end
    object quCetakKota: TStringField
      FieldName = 'Kota'
      Size = 40
    end
    object quCetakDireksi: TStringField
      FieldName = 'Direksi'
      Size = 50
    end
    object quCetakJabatan: TStringField
      FieldName = 'Jabatan'
      Size = 50
    end
    object quCetakKetNota: TStringField
      FieldName = 'KetNota'
      ReadOnly = True
      Size = 1
    end
    object quCetakGroupNobukti2: TStringField
      FieldName = 'GroupNobukti2'
      ReadOnly = True
      Size = 240
    end
    object quCetaknamacustpkp: TStringField
      FieldName = 'namacustpkp'
      Size = 40
    end
    object quCetakalamatcustpkp: TStringField
      FieldName = 'alamatcustpkp'
      Size = 100
    end
    object quCetakalamatcustpkp2: TStringField
      FieldName = 'alamatcustpkp2'
      Size = 100
    end
    object quCetakkotacustpkp: TStringField
      FieldName = 'kotacustpkp'
      Size = 30
    end
    object quCetaknamax: TStringField
      FieldName = 'namax'
      ReadOnly = True
      Size = 100
    end
    object quCetakalamat1x: TStringField
      FieldName = 'alamat1x'
      ReadOnly = True
      Size = 100
    end
    object quCetakalamat2x: TStringField
      FieldName = 'alamat2x'
      ReadOnly = True
      Size = 100
    end
    object quCetakkotapkpx: TStringField
      FieldName = 'kotapkpx'
      ReadOnly = True
      Size = 30
    end
    object quCetakJum: TBCDField
      FieldName = 'Jum'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object quCetakHrgNetto: TBCDField
      FieldName = 'HrgNetto'
      ReadOnly = True
      Precision = 21
    end
    object quCetakstn: TStringField
      FieldName = 'stn'
      ReadOnly = True
      Size = 5
    end
  end
  object DataSource1: TDataSource
    DataSet = quCetak
    Left = 448
    Top = 209
  end
  object frxReport1: TfrxReport
    Version = '4.14'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39078.9291113889
    ReportOptions.LastChange = 39560.3895833333
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Memo46OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  {if <frxDBDataset1."tampiltgl">=0 then'
      '  Memo46.visible:=false'
      '  else'
      '  Memo46.visible:=true;}'
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    OnAfterPrintReport = frxReport1AfterPrintReport
    Left = 478
    Top = 209
    Datasets = <>
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
    end
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 216
    Top = 136
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NoBukti=NoBukti'
      'NoPNJ=NoPNJ'
      'KodeBrg=KodeBrg'
      'NOFPJ=NOFPJ'
      'TglFPJ=TglFPJ'
      'MySeri=MySeri'
      'Kurs=Kurs'
      'Usaha=Usaha'
      'KodeGrp=KodeGrp'
      'NamaPKP=NamaPKP'
      'AlamatPKP=AlamatPKP'
      'alamat2=alamat2'
      'NPWPPKP=NPWPPKP'
      'TglPKP=TglPKP'
      'KodeCustSupp=KodeCustSupp'
      'NAMACUSTSUPP=NAMACUSTSUPP'
      'AlamatCust=AlamatCust'
      'NPWPCust=NPWPCust'
      'alamatcustom=alamatcustom'
      'kotacustom=kotacustom'
      'KodeBrg_1=KodeBrg_1'
      'NamaBrg=NamaBrg'
      'Jumlah=Jumlah'
      'UangMuka=UangMuka'
      'Qnt=Qnt'
      'SAT_1=SAT_1'
      'SAT_2=SAT_2'
      'NDpp=NDpp'
      'Nppn=Nppn'
      'Nnet=Nnet'
      'Valas=Valas'
      'Harga=Harga'
      'Kota=Kota'
      'Direksi=Direksi'
      'Jabatan=Jabatan'
      'KetNota=KetNota'
      'GroupNobukti2=GroupNobukti2'
      'namacustpkp=namacustpkp'
      'alamatcustpkp=alamatcustpkp'
      'alamatcustpkp2=alamatcustpkp2'
      'kotacustpkp=kotacustpkp'
      'namax=namax'
      'alamat1x=alamat1x'
      'alamat2x=alamat2x'
      'kotapkpx=kotapkpx'
      'Jum=Jum'
      'HrgNetto=HrgNetto'
      'stn=stn')
    DataSet = quCetak
    BCDToCurrency = False
    Left = 512
    Top = 208
  end
  object DsMasterInv: TDataSource
    DataSet = QuMasterInv
    Left = 56
    Top = 328
  end
  object QuMasterInv: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @tglawal datetime,@tglakhir datetime'
      ''
      'select @tglawal='#39'01/01/1999'#39', @tglakhir='#39'01/01/1999'#39
      ''
      'select  A.NoBukti, A.NoUrut, A.Tanggal,'
      
        '        C.NoSPP, D.Tanggal TglSPP,D.NoSO,E.Tanggal TGLSO, A.Kode' +
        'CustSupp, F.NAMACUSTSUPP NamaCustSupp, A.Consignee, A.NotifyPart' +
        'y,'
      
        '        A.ContractNo, A.PONo, A.PaymentTerm, A.DocCreditNo, A.Po' +
        'L, A.PoD,'
      
        '        A.NameOfVessel, A.ShipOnBoardDate, A.Packing, A.Others, ' +
        'A.ISLOKAL,'
      '        B.NoSPB, C.Tanggal TglSPB,'
      '        A.IsCetak, A.IDUser,'
      '        A.IsOtorisasi1, A.OtoUser1, A.TglOto1,'
      '        A.IsOtorisasi2, A.OtoUser2, A.TglOto2,'
      '        A.IsOtorisasi3, A.OtoUser3, A.TglOto3,'
      '        A.IsOtorisasi4, A.OtoUser4, A.TglOto4,'
      '        A.IsOtorisasi5, A.OtoUser5, A.TglOto5,'
      '        A.NoPajak,TglFPJ'
      'from'#9'dbInvoicePL A'
      'Left Outer join (Select x.NoBukti, x.NoSPB'
      '                 from dbInvoicePLDet x'
      
        '                 Group by x.NoBukti, x.NoSPB) B on B.NoBukti=A.N' +
        'oBukti'
      'Left Outer join (Select x.NoBukti, x.Tanggal, y.NoSPP'
      '                 from dbSPB x'
      
        '                      left Outer join dbSPBDet y on y.NoBukti=x.' +
        'NoBukti'
      
        '                 group by x.NoBukti, x.Tanggal, y.NoSPP) C on C.' +
        'nobukti=B.NoSPB'
      'left Outer join (Select x.NoBukti, x.Tanggal, y.NoSO'
      '                 from dbSPP x'
      
        '                      left Outer join dbSPPDet y on y.NoBukti=x.' +
        'NoBukti'
      
        '                 group by x.NoBukti, x.Tanggal, y.NoSO) D on D.N' +
        'oBukti=C.NoSPP'
      'left Outer join dbSO E on E.Nobukti=D.NoSO'
      
        '--left outer join vwBrowsCustomer F on F.KodeCust=A.KodeCustSupp' +
        ' and F.Sales=E.KODESLS'
      'left outer join DBCUSTSUPP F on F.KODECUSTSUPP=A.KodeCustSupp'
      'where A.tanggal between @tglawal and @tglakhir and A.FlagTipe=1'
      'order by A.NoBukti'
      '')
    Left = 24
    Top = 328
    object QuMasterInvNoBukti: TStringField
      FieldName = 'NoBukti'
      Size = 30
    end
    object QuMasterInvNoUrut: TStringField
      FieldName = 'NoUrut'
      Size = 8
    end
    object QuMasterInvTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuMasterInvNoSPP: TStringField
      FieldName = 'NoSPP'
      Size = 30
    end
    object QuMasterInvTglSPP: TDateTimeField
      FieldName = 'TglSPP'
    end
    object QuMasterInvNoSO: TStringField
      FieldName = 'NoSO'
      Size = 30
    end
    object QuMasterInvTGLSO: TDateTimeField
      FieldName = 'TGLSO'
    end
    object QuMasterInvKodeCustSupp: TStringField
      FieldName = 'KodeCustSupp'
    end
    object QuMasterInvNamaCustSupp: TStringField
      FieldName = 'NamaCustSupp'
      Size = 100
    end
    object QuMasterInvConsignee: TStringField
      FieldName = 'Consignee'
      Size = 4000
    end
    object QuMasterInvNotifyParty: TStringField
      FieldName = 'NotifyParty'
      Size = 4000
    end
    object QuMasterInvContractNo: TStringField
      FieldName = 'ContractNo'
      Size = 50
    end
    object QuMasterInvPONo: TStringField
      FieldName = 'PONo'
      Size = 50
    end
    object QuMasterInvPaymentTerm: TStringField
      FieldName = 'PaymentTerm'
      Size = 4000
    end
    object QuMasterInvDocCreditNo: TStringField
      FieldName = 'DocCreditNo'
      Size = 50
    end
    object QuMasterInvPoL: TStringField
      FieldName = 'PoL'
      Size = 4000
    end
    object QuMasterInvPoD: TStringField
      FieldName = 'PoD'
      Size = 4000
    end
    object QuMasterInvNameOfVessel: TStringField
      FieldName = 'NameOfVessel'
      Size = 4000
    end
    object QuMasterInvShipOnBoardDate: TDateTimeField
      FieldName = 'ShipOnBoardDate'
    end
    object QuMasterInvPacking: TStringField
      FieldName = 'Packing'
      Size = 4000
    end
    object QuMasterInvOthers: TStringField
      FieldName = 'Others'
      Size = 7500
    end
    object QuMasterInvISLOKAL: TBooleanField
      FieldName = 'ISLOKAL'
    end
    object QuMasterInvIsCetak: TBooleanField
      FieldName = 'IsCetak'
    end
    object QuMasterInvIDUser: TStringField
      FieldName = 'IDUser'
      Size = 30
    end
    object QuMasterInvIsOtorisasi1: TBooleanField
      FieldName = 'IsOtorisasi1'
    end
    object QuMasterInvOtoUser1: TStringField
      FieldName = 'OtoUser1'
      Size = 15
    end
    object QuMasterInvTglOto1: TDateTimeField
      FieldName = 'TglOto1'
    end
    object QuMasterInvIsOtorisasi2: TBooleanField
      FieldName = 'IsOtorisasi2'
    end
    object QuMasterInvOtoUser2: TStringField
      FieldName = 'OtoUser2'
      Size = 15
    end
    object QuMasterInvTglOto2: TDateTimeField
      FieldName = 'TglOto2'
    end
    object QuMasterInvIsOtorisasi3: TBooleanField
      FieldName = 'IsOtorisasi3'
    end
    object QuMasterInvOtoUser3: TStringField
      FieldName = 'OtoUser3'
      Size = 15
    end
    object QuMasterInvTglOto3: TDateTimeField
      FieldName = 'TglOto3'
    end
    object QuMasterInvIsOtorisasi4: TBooleanField
      FieldName = 'IsOtorisasi4'
    end
    object QuMasterInvOtoUser4: TStringField
      FieldName = 'OtoUser4'
      Size = 15
    end
    object QuMasterInvTglOto4: TDateTimeField
      FieldName = 'TglOto4'
    end
    object QuMasterInvIsOtorisasi5: TBooleanField
      FieldName = 'IsOtorisasi5'
    end
    object QuMasterInvOtoUser5: TStringField
      FieldName = 'OtoUser5'
      Size = 15
    end
    object QuMasterInvTglOto5: TDateTimeField
      FieldName = 'TglOto5'
    end
    object QuMasterInvNoSPB: TStringField
      FieldName = 'NoSPB'
      Size = 30
    end
    object QuMasterInvTglSPB: TDateTimeField
      FieldName = 'TglSPB'
    end
    object QuMasterInvNoPajak: TStringField
      FieldName = 'NoPajak'
      Size = 50
    end
    object QuMasterInvTglFPJ: TDateTimeField
      FieldName = 'TglFPJ'
    end
  end
  object QuDetailInv: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    DataSource = DsMasterInv
    Parameters = <>
    SQL.Strings = (
      'Declare @nobukti varchar(30)'
      ''
      'select @Nobukti='#39#39
      
        'select '#9'B.NoBukti, B.Urut, B.NoSPB, B.UrutSPB, B.KodeBrg, C.NAMA' +
        'BRG,'
      
        '        B.PPN, B.DISC, B.KURS, B.QNT, B.QNT2, B.SAT_1, B.SAT_2, ' +
        'B.NOSAT, B.ISI, B.NetW, B.GrossW,'
      
        '        B.HARGA, B.DiscP, B.DiscRp, B.DISCTOT, B.HRGNETTO, B.NDI' +
        'SKON, B.SUBTOTAL, B.NDPP, B.NPPN, B.NNET,'
      '        B.SUBTOTALRp, B.NDPPRp, B.NPPNRp, B.NNETRp, B.KetDetail'
      'from'#9'dbInvoicePLDet B'
      'left outer join dbBarang C on C.KodeBrg=B.KodeBrg'
      '--where'#9'B.NoBukti=@Nobukti'
      'order by B.Urut'
      ''
      '')
    Left = 96
    Top = 328
  end
  object DsDetailInv: TDataSource
    DataSet = QuDetailInv
    Left = 128
    Top = 328
  end
end
