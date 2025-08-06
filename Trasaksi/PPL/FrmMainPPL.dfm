object FrMainPPL: TFrMainPPL
  Left = 272
  Top = 336
  Width = 1320
  Height = 784
  Caption = 'PR(Purchasing Request)'
  Color = 16773589
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
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 48
    Width = 1312
    Height = 702
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'nobukti'
    ShowSummaryFooter = True
    SummaryGroups = <
      item
        DefaultGroup = True
        SummaryItems = <
          item
            SummaryField = 'satuan'
            SummaryFormat = 'SubTotal'
          end
          item
            SummaryField = 'qnt'
            SummaryFormat = ',0.00'
            SummaryType = cstSum
          end
          item
            SummaryField = 'harga'
            SummaryFormat = ',0.00'
            SummaryType = cstSum
          end
          item
            SummaryField = 'discrptot'
            SummaryFormat = ',0.00'
            SummaryType = cstSum
          end
          item
            SummaryField = 'Hrgnett'
            SummaryFormat = ',0.00'
            SummaryType = cstSum
          end
          item
            SummaryField = 'Total'
            SummaryFormat = ',0.00'
            SummaryType = cstSum
          end>
        Name = 'dxDBGrid1SummaryGroup1'
      end>
    SummarySeparator = ', '
    Align = alClient
    Color = 14540253
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnDblClick = ToolButton2Click
    OnMouseUp = dxDBGrid1MouseUp
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'Tahoma'
    BandFont.Style = []
    Filter.Criteria = {00000000}
    FixedBandLineColor = clBlack
    GridLineColor = clBlack
    GroupPanelColor = clMoneyGreen
    GroupPanelFontColor = clBlack
    GroupNodeColor = clMoneyGreen
    GroupNodeTextColor = clBlack
    HeaderColor = 11441504
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clBlack
    HeaderFont.Height = -12
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    HideSelectionColor = 14216171
    HideSelectionTextColor = clBlack
    HighlightColor = 9629163
    HighlightTextColor = clBlack
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCollapsedReload, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'Tahoma'
    PreviewFont.Style = []
    RowFooterColor = 10865880
    ShowRowFooter = True
    object dxDBGrid1GroupNoBukti: TdxDBGridMaskColumn
      Caption = 'Group No Bukti'
      HeaderAlignment = taCenter
      Sorted = csUp
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'GroupNoBukti'
      GroupIndex = 0
    end
    object dxDBGrid1Kodebrg: TdxDBGridMaskColumn
      Caption = 'KODE'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Kodebrg'
    end
    object dxDBGrid1Namabrg: TdxDBGridMaskColumn
      Caption = 'DESKRIPSI'
      HeaderAlignment = taCenter
      Sorted = csUp
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Namabrg'
    end
    object dxDBGrid1Satuan: TdxDBGridMaskColumn
      Caption = 'SATUAN'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Satuan'
    end
    object dxDBGrid1Harga: TdxDBGridMaskColumn
      Caption = 'HARGA'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Harga'
    end
    object dxDBGrid1DiscP1: TdxDBGridMaskColumn
      Caption = 'DISC 1'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DiscP1'
    end
    object dxDBGrid1DiscP2: TdxDBGridMaskColumn
      Caption = 'DISC 2'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DiscP2'
    end
    object dxDBGrid1discP3: TdxDBGridMaskColumn
      Caption = 'DISC 3'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'discP3'
    end
    object dxDBGrid1DiscP4: TdxDBGridMaskColumn
      Caption = 'DISC 4'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DiscP4'
    end
    object dxDBGrid1Qnt: TdxDBGridMaskColumn
      Caption = 'QTY'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Qnt'
    end
    object dxDBGrid1Ndpp: TdxDBGridMaskColumn
      Caption = 'DPP'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Ndpp'
    end
    object dxDBGrid1NPpn: TdxDBGridMaskColumn
      Caption = 'PPN'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NPpn'
    end
    object dxDBGrid1NNet: TdxDBGridMaskColumn
      Caption = 'TOTAL'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NNet'
    end
    object dxDBGrid1NamaGdg: TdxDBGridMaskColumn
      Caption = 'GUDANG'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'kodegdg'
    end
    object dxDBGrid1Kodelokasi: TdxDBGridMaskColumn
      Caption = 'LOKASI'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Kodelokasi'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1312
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 1312
      Height = 40
      ButtonHeight = 39
      ButtonWidth = 89
      Color = clBtnFace
      Customizable = True
      EdgeBorders = []
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Images = DM.ImageList2
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowCaptions = True
      ShowHint = True
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Hint = 'Tambah Record'
        Caption = '&Tambah'
        ImageIndex = 0
        OnClick = ToolButton1Click
      end
      object ToolButton2: TToolButton
        Left = 89
        Top = 0
        Hint = 'Koreksi Record'
        Caption = '&Koreksi'
        ImageIndex = 1
        OnClick = ToolButton2Click
      end
      object ToolButton3: TToolButton
        Left = 178
        Top = 0
        Hint = 'Hapus Record'
        Caption = '&Batal'
        ImageIndex = 13
        Visible = False
      end
      object ToolButton5: TToolButton
        Left = 267
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object ToolButton10: TToolButton
        Left = 275
        Top = 0
        Caption = 'Refresh'
        ImageIndex = 12
        OnClick = ToolButton10Click
      end
      object ToolButton7: TToolButton
        Left = 364
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 0
        Style = tbsSeparator
      end
      object ToolButton6: TToolButton
        Left = 372
        Top = 0
        Caption = '  Lain - lain  '
        DropdownMenu = PopupMenu1
        ImageIndex = 10
        Style = tbsDropDown
        Visible = False
      end
      object ToolButton8: TToolButton
        Left = 474
        Top = 0
        Width = 8
        Caption = 'ToolButton8'
        ImageIndex = 9
        Style = tbsSeparator
        Visible = False
      end
      object ToolButton9: TToolButton
        Left = 482
        Top = 0
        Caption = 'K&eluar'
        ImageIndex = 8
        OnClick = ToolButton9Click
      end
      object ToolButton11: TToolButton
        Left = 571
        Top = 0
        Caption = 'Tampil Valid'
        DropdownMenu = PopupMenu2
        ImageIndex = 7
        Style = tbsDropDown
        Visible = False
      end
      object ToolButton4: TToolButton
        Left = 673
        Top = 0
        Caption = 'Cetak'
        ImageIndex = 4
        OnClick = ToolButton4Click
      end
      object ToolButton13: TToolButton
        Left = 762
        Top = 0
        Caption = 'Otorisasi'
        ImageIndex = 15
        OnClick = ToolButton13Click
      end
      object ToolButton12: TToolButton
        Left = 851
        Top = 0
        Caption = 'Batal Otorisasi'
        ImageIndex = 16
        OnClick = ToolButton12Click
      end
      object ToolButton14: TToolButton
        Left = 940
        Top = 0
        Caption = 'Batal'
        ImageIndex = 6
        OnClick = ToolButton14Click
      end
    end
  end
  object dxPageControl1: TdxPageControl
    Left = 0
    Top = 48
    Width = 1312
    Height = 702
    ActivePage = dxTabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    HideButtons = False
    HotTrack = False
    MultiLine = False
    OwnerDraw = False
    ParentFont = False
    RaggedRight = False
    ScrollOpposite = False
    TabHeight = 0
    TabOrder = 2
    TabPosition = dxtpTop
    TabWidth = 0
    OnChange = dxPageControl1Change
    object dxTabSheet1: TdxTabSheet
      Caption = 'Informasi Stock'
      TabVisible = False
      object cxGrid2: TcxGrid
        Left = 760
        Top = 144
        Width = 186
        Height = 101
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = False
        LookAndFeel.Kind = lfFlat
        object tvPO: TcxGridDBTableView
          DataController.DataSource = dsBppB
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
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.StyleSheet = FrSetForm.cxGridStyleHd
          object tvPOKodebrg: TcxGridDBColumn
            Caption = 'Kode Barang'
            DataBinding.FieldName = 'Kodebrg'
            Width = 150
          end
          object tvPONAMABRG: TcxGridDBColumn
            Caption = 'Nama Barang'
            DataBinding.FieldName = 'NAMABRG'
            Width = 264
          end
          object tvPODBColumn2: TcxGridDBColumn
            Caption = 'Sat'
            DataBinding.FieldName = 'Sat1'
          end
          object tvPOSisa: TcxGridDBColumn
            Caption = 'OS SPK(BP)'
            DataBinding.FieldName = 'Sisa'
            Width = 125
          end
          object tvPOOSPPL: TcxGridDBColumn
            Caption = 'OS PR'
            DataBinding.FieldName = 'OSPPL'
            Width = 132
          end
          object tvPOOSPO: TcxGridDBColumn
            Caption = 'OS PO'
            DataBinding.FieldName = 'OSPO'
            Width = 114
          end
          object tvPOStok: TcxGridDBColumn
            DataBinding.FieldName = 'Stok'
            Width = 163
          end
          object tvPOQntBPPB: TcxGridDBColumn
            Caption = 'Qnt SPK'
            DataBinding.FieldName = 'QntBPPB'
            Visible = False
            Width = 134
          end
          object tvPOQntBP: TcxGridDBColumn
            Caption = 'Qnt BP'
            DataBinding.FieldName = 'QntBP'
            Visible = False
            Width = 120
          end
          object tvPODBColumn1: TcxGridDBColumn
            Caption = 'Sisa'
            DataBinding.FieldName = 'Xsisa'
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = tvPO
        end
      end
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 1009
        Height = 466
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        LookAndFeel.Kind = lfFlat
        object cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsBppB
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
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.StyleSheet = FrSetForm.cxGridStyleHd
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'Kode Barang'
            DataBinding.FieldName = 'Kodebrg'
            HeaderAlignmentHorz = taCenter
            Width = 150
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'Nama Barang'
            DataBinding.FieldName = 'NAMABRG'
            HeaderAlignmentHorz = taCenter
            Width = 264
          end
          object cxGridDBTableView1DBColumn1: TcxGridDBColumn
            Caption = 'Stock'
            DataBinding.FieldName = 'SALDOQNT'
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'OutStanding PR'
            DataBinding.FieldName = 'Qnt1OutPR'
            HeaderAlignmentHorz = taCenter
            Width = 120
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Outstanding PO'
            DataBinding.FieldName = 'Qnt1outPO'
            HeaderAlignmentHorz = taCenter
            Width = 120
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'Qnt Minim'
            DataBinding.FieldName = 'qntmin'
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'Stock Fiktif'
            DataBinding.FieldName = 'Qnt1Fiktif'
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object dxTabSheet2: TdxTabSheet
      Caption = 'PR(Purchasing Request)'
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1312
        Height = 676
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        object tvMaster: TcxGridDBTableView
          DataController.DataSource = DsMaster
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
          OnCellClick = tvMasterCellClick
          OnCustomDrawCell = tvMasterCustomDrawCell
          OnFocusedRecordChanged = tvMasterFocusedRecordChanged
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
          Styles.StyleSheet = FrSetForm.cxGridStyleHd
          object tvMasterNoBukti: TcxGridDBColumn
            Caption = 'No. Bukti'
            DataBinding.FieldName = 'NoBukti'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 164
          end
          object tvMasterTanggal: TcxGridDBColumn
            DataBinding.FieldName = 'Tanggal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 110
          end
          object tvMasterDBColumn4: TcxGridDBColumn
            Caption = 'Departemen'
            DataBinding.FieldName = 'NMDEP'
            Width = 91
          end
          object tvMasterIsOtorisasi1: TcxGridDBColumn
            DataBinding.FieldName = 'IsOtorisasi1'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterOtoUser1: TcxGridDBColumn
            DataBinding.FieldName = 'OtoUser1'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterTglOto1: TcxGridDBColumn
            DataBinding.FieldName = 'TglOto1'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterIsOtorisasi2: TcxGridDBColumn
            DataBinding.FieldName = 'IsOtorisasi2'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterOtoUser2: TcxGridDBColumn
            DataBinding.FieldName = 'OtoUser2'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterTglOto2: TcxGridDBColumn
            DataBinding.FieldName = 'TglOto2'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterIsOtorisasi3: TcxGridDBColumn
            DataBinding.FieldName = 'IsOtorisasi3'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterOtoUser3: TcxGridDBColumn
            DataBinding.FieldName = 'OtoUser3'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterTglOto3: TcxGridDBColumn
            DataBinding.FieldName = 'TglOto3'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterIsOtorisasi4: TcxGridDBColumn
            DataBinding.FieldName = 'IsOtorisasi4'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterOtoUser4: TcxGridDBColumn
            DataBinding.FieldName = 'OtoUser4'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterTglOto4: TcxGridDBColumn
            DataBinding.FieldName = 'TglOto4'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterIsOtorisasi5: TcxGridDBColumn
            DataBinding.FieldName = 'IsOtorisasi5'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterOtoUser5: TcxGridDBColumn
            DataBinding.FieldName = 'OtoUser5'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterTglOto5: TcxGridDBColumn
            DataBinding.FieldName = 'TglOto5'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterDBColumn1: TcxGridDBColumn
            Caption = 'Batal'
            DataBinding.FieldName = 'IsBatal'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DisplayUnchecked = 'False'
            Properties.NullStyle = nssUnchecked
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
          end
          object tvMasterDBColumn2: TcxGridDBColumn
            Caption = 'User Batal'
            DataBinding.FieldName = 'Userbatal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
          end
          object tvMasterDBColumn3: TcxGridDBColumn
            Caption = 'Tgl Batal'
            DataBinding.FieldName = 'tglBatal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
          end
        end
        object tvDetail: TcxGridDBTableView
          DataController.DataSource = DsDetail1
          DataController.DetailKeyFieldNames = 'NOBUKTI'
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.KeyFieldNames = 'URUT'
          DataController.MasterKeyFieldNames = 'NOBUKTI'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0.00'
              Kind = skSum
              FieldName = 'Total'
            end
            item
              Format = ',0.00'
              Kind = skSum
              FieldName = 'QNT'
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          Styles.StyleSheet = FrSetForm.cxGridStyleDt
          object tvDetailNoBukti: TcxGridDBColumn
            DataBinding.FieldName = 'NoBukti'
            Visible = False
          end
          object tvDetailperkpers: TcxGridDBColumn
            Caption = 'Perkiraan'
            DataBinding.FieldName = 'perkpers'
            Width = 100
          end
          object tvDetailUrut: TcxGridDBColumn
            DataBinding.FieldName = 'Urut'
            Visible = False
          end
          object tvDetailKodeBrg: TcxGridDBColumn
            Caption = 'Kode Barang'
            DataBinding.FieldName = 'KodeBrg'
            Width = 120
          end
          object tvDetailNamaBrg: TcxGridDBColumn
            Caption = 'Nama Barang'
            DataBinding.FieldName = 'NamaBrg'
            Width = 300
          end
          object tvDetailSatuan: TcxGridDBColumn
            Caption = 'Sat'
            DataBinding.FieldName = 'Satuan'
            Width = 40
          end
          object tvDetailQnt: TcxGridDBColumn
            DataBinding.FieldName = 'Qnt'
            Width = 100
          end
          object tvDetailNoSat: TcxGridDBColumn
            DataBinding.FieldName = 'NoSat'
            Visible = False
          end
          object tvDetailIsi: TcxGridDBColumn
            DataBinding.FieldName = 'Isi'
            Visible = False
          end
          object tvDetailDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'Keterangan'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = tvMaster
          object cxGrid1Level2: TcxGridLevel
            GridView = tvDetail
          end
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 475
    Top = 105
    object ExportExcel1: TMenuItem
      Caption = 'Export Excel'
      ImageIndex = 5
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
    Left = 503
    Top = 104
  end
  object Sp_Batal: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'sp_BatalBlr;1'
    Parameters = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@mode'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@kodet'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = '@nobukti'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@idUser'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@tgl'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 529
    Top = 104
  end
  object PopupMenu2: TPopupMenu
    Left = 435
    Top = 159
    object TampilValid: TMenuItem
      Caption = 'Tampil Valid'
      Checked = True
      OnClick = TampilValidClick
    end
    object TampilBatal: TMenuItem
      Caption = 'Tampil Batal'
      OnClick = TampilBatalClick
    end
  end
  object DsMaster: TDataSource
    DataSet = QuMaster
    Left = 56
    Top = 184
  end
  object QuMaster: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @Tahun int, @Bulan int'
      ''
      'select @Tahun=2015, @Bulan=6'
      ''
      'Select '#9'A.NoBukti, A.Tanggal,b.NMDEP,'
      '        A.IsOtorisasi1, A.OtoUser1, A.TglOto1,'
      '       A.IsOtorisasi2, A.OtoUser2, A.TglOto2,'
      '       A.IsOtorisasi3, A.OtoUser3, A.TglOto3,'
      '       A.IsOtorisasi4, A.OtoUser4, A.TglOto4,'
      '       A.IsOtorisasi5, A.OtoUser5, A.TglOto5,'
      
        '       Cast(Case when Case when A.IsOtorisasi1=1 then 1 else 0 e' +
        'nd+'
      
        '                      Case when A.IsOtorisasi2=1 then 1 else 0 e' +
        'nd+'
      
        '                      Case when A.IsOtorisasi3=1 then 1 else 0 e' +
        'nd+'
      
        '                      Case when A.IsOtorisasi4=1 then 1 else 0 e' +
        'nd+'
      
        '                      Case when A.IsOtorisasi5=1 then 1 else 0 e' +
        'nd=A.MaxOL then 0'
      '                 else 1'
      '            end As Bit) NeedOtorisasi,'
      '       Isnull(A.Isbatal,0) IsBatal,A.Userbatal,A.tglBatal'
      ''
      'From dbPPL A'
      'left outer join DBDEPART b on b.KDDEP=a.KDDep'
      'where year(A.Tanggal)=@Tahun and month(A.Tanggal)=@Bulan'
      '       '
      'order by A.NoBukti'
      ''
      ''
      '')
    Left = 24
    Top = 184
    object QuMasterNoBukti: TStringField
      FieldName = 'NoBukti'
      Size = 50
    end
    object QuMasterTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuMasterIsOtorisasi1: TBooleanField
      FieldName = 'IsOtorisasi1'
    end
    object QuMasterOtoUser1: TStringField
      FieldName = 'OtoUser1'
      Size = 15
    end
    object QuMasterTglOto1: TDateTimeField
      FieldName = 'TglOto1'
    end
    object QuMasterIsOtorisasi2: TBooleanField
      FieldName = 'IsOtorisasi2'
    end
    object QuMasterOtoUser2: TStringField
      FieldName = 'OtoUser2'
      Size = 15
    end
    object QuMasterTglOto2: TDateTimeField
      FieldName = 'TglOto2'
    end
    object QuMasterIsOtorisasi3: TBooleanField
      FieldName = 'IsOtorisasi3'
    end
    object QuMasterOtoUser3: TStringField
      FieldName = 'OtoUser3'
      Size = 15
    end
    object QuMasterTglOto3: TDateTimeField
      FieldName = 'TglOto3'
    end
    object QuMasterIsOtorisasi4: TBooleanField
      FieldName = 'IsOtorisasi4'
    end
    object QuMasterOtoUser4: TStringField
      FieldName = 'OtoUser4'
      Size = 15
    end
    object QuMasterTglOto4: TDateTimeField
      FieldName = 'TglOto4'
    end
    object QuMasterIsOtorisasi5: TBooleanField
      FieldName = 'IsOtorisasi5'
    end
    object QuMasterOtoUser5: TStringField
      FieldName = 'OtoUser5'
      Size = 15
    end
    object QuMasterTglOto5: TDateTimeField
      FieldName = 'TglOto5'
    end
    object QuMasterNeedOtorisasi: TBooleanField
      FieldName = 'NeedOtorisasi'
      ReadOnly = True
    end
    object QuMasterIsBatal: TBooleanField
      FieldName = 'IsBatal'
      ReadOnly = True
    end
    object QuMasterUserbatal: TStringField
      FieldName = 'Userbatal'
      Size = 15
    end
    object QuMastertglBatal: TDateTimeField
      FieldName = 'tglBatal'
    end
    object QuMasterNMDEP: TStringField
      FieldName = 'NMDEP'
      Size = 40
    end
  end
  object QuDetail1: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    DataSource = DsMaster
    Parameters = <
      item
        Name = 'NoBukti'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = '0001/PR/PWT/082014'
      end>
    SQL.Strings = (
      'Select '#9'A.NoBukti  , c.perkpers , '
      
        #9'B.Urut, B.KodeBrg, case when h.Proses =1 then NamaBarang  else ' +
        'h.NAMABRG end namabrg --H.NamaBrg'
      '        , B.Qnt, B.NoSat, B.Isi Isi, B.Sat Satuan,B.Keterangan '
      'From dbPPL A'
      'Left Outer join dbPPLDet B on B.NoBukti=a.NoBukti'
      'Left Outer join dbBarang H on H.KodeBrg=b.KodeBrg'
      'left outer join dbsubgroup c on c.kodesubgrp =h.kodesubgrp'
      'where A.NoBukti=:NoBukti'
      '   '
      'order by A.NoBukti, B.Urut'
      ''
      '')
    Left = 96
    Top = 184
    object QuDetail1NoBukti: TStringField
      FieldName = 'NoBukti'
      Size = 50
    end
    object QuDetail1perkpers: TStringField
      FieldName = 'perkpers'
      Size = 25
    end
    object QuDetail1Urut: TIntegerField
      FieldName = 'Urut'
    end
    object QuDetail1KodeBrg: TStringField
      FieldName = 'KodeBrg'
      Size = 25
    end
    object QuDetail1NamaBrg: TStringField
      FieldName = 'NamaBrg'
      Size = 100
    end
    object QuDetail1Qnt: TBCDField
      FieldName = 'Qnt'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetail1NoSat: TWordField
      FieldName = 'NoSat'
    end
    object QuDetail1Isi: TBCDField
      FieldName = 'Isi'
      Precision = 18
      Size = 2
    end
    object QuDetail1Satuan: TStringField
      FieldName = 'Satuan'
      Size = 5
    end
    object QuDetail1Keterangan: TStringField
      FieldName = 'Keterangan'
      Size = 50
    end
  end
  object DsDetail1: TDataSource
    DataSet = QuDetail1
    Left = 128
    Top = 184
  end
  object QuBppB: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @bulan integer,@tahun integer,@periode varchar(6)'
      ''
      'select @bulan=4,@tahun=1999'
      
        'Set @Periode=Cast(@tahun as varchar(4))+Case when @bulan<10 then' +
        ' '#39'0'#39' else '#39#39' end+Cast(@bulan as varchar(2))'
      ''
      'select A.Bulan,A.Tahun,A.KODEBRG,B.NamaBrg,B.qntmin,'
      
        #9'SUM(isnull(A.SALDOQNT,0)) SALDOQNT,SUM(isnull(A.SALDO2QNT,0)) S' +
        'ALDO2QNT,'
      
        #9'SUM(isnull(F.Qnt1outPO,0)) Qnt1outPO,SUM(isnull(F.Qnt2outPO,0))' +
        ' Qnt2outPO,'
      
        #9'SUM(Isnull(E.Qnt1OutPR,0)) Qnt1OutPR,SUM(Isnull(E.Qnt2OutPR,0))' +
        ' Qnt2OutPR,'
      #9' '
      
        '        SUM(isnull(A.SALDOQNT,0)) +SUM(isnull(F.Qnt1outPO,0))+SU' +
        'M(Isnull(E.Qnt1OutPR,0)) - ISNULL(B.qntmin,0) Qnt1Fiktif,'
      
        '        SUM(isnull(A.SALDO2QNT,0)) +SUM(isnull(F.Qnt2outPO,0))+S' +
        'UM(Isnull(E.Qnt2OutPR,0)) - ISNULL(B.qntmin,0) Qnt2Fiktif'
      ''
      'from DBSTOCKBRG A'
      'left outer join DBBARANG b on A.KODEBRG = B.KODEBRG'
      ''
      
        'left outer join (select D.KODEBRG,Month(B.tanggal) Bulan,YEAR(B.' +
        'tanggal) Tahun,'
      
        #9#9#9'sum(case when MONTH(B.tanggal)=@bulan and year(B.tanggal)=@ta' +
        'hun then'
      
        #9#9#9#9'case when A.NOSAT=1 then isnull(A.Qnt,0) else ISNULL(A.Qnt,0' +
        ') * D.ISI1 end else 0 end) Qnt1PO,'
      
        #9#9#9'sum(case when MONTH(B.tanggal)=@bulan and year(B.tanggal)=@ta' +
        'hun then'
      
        #9#9#9#9'case when A.NOSAT=2 then isnull(A.Qnt,0) else ISNULL(A.Qnt,0' +
        ')/D.ISI2 end else 0 end) Qnt2PO'
      #9#9#9'from DBBARANG D '
      #9#9#9'Left Outer Join DBPODET A on D.KODEBRG = A.KODEBRG '
      #9#9#9'Left Outer Join DBPO B on A.NOBUKTI = B.NOBUKTI'
      #9#9#9'Group By Month(B.Tanggal),year(B.tanggal),D.KODEBRG) D '
      
        #9#9#9'on A.BULAN = D.Bulan and A.TAHUN = D.Tahun and A.KODEBRG = D.' +
        'KODEBRG'
      #9#9#9
      
        'left outer join (select kodebrg,MONTH(Tanggal) Bulan,YEAR(tangga' +
        'l) tahun,'
      
        #9#9#9'SUM(case when MONTH(tanggal)=@bulan and year(tanggal)=@tahun ' +
        'then'
      
        #9#9#9#9'case when nosat=1 then ISNULL(qnt,0)else ISNULL(Qnt,0) * isi' +
        ' end else 0 end) Qnt1OutPR,'
      
        #9#9#9'sum(case when MONTH(tanggal)=@bulan and year(tanggal)=@tahun ' +
        'then'
      
        #9#9#9#9'case when NOSAT=2 then isnull(Qnt,0) else ISNULL(Qnt,0)/ISI ' +
        'end else 0 end) Qnt2OutPR'
      #9#9#9'from vwOutPPL where SisaPPL>0'
      
        #9#9#9'Group By MONTH(tanggal),YEAR(tanggal),kodebrg)E on A.KODEBRG=' +
        'E.kodebrg and A.TAHUN=E.tahun and A.BULAN = A.BULAN '
      #9#9#9
      'left outer join ('
      #9#9#9
      
        '                        Select Month(A.TANGGAL) BUlan,YEAR(A.tan' +
        'ggal) Tahun,B.KODEBRG,sum(isnull(B.Qnt1PO,0)) Qnt1outPO,Sum(Isnu' +
        'll(B.Qnt2PO,0)) Qnt2OutPO'
      '                        From DBPO A'
      
        '                        left outer join DBPODET C on A.NOBUKTI=C' +
        '.NOBUKTI'
      '                        Left Outer join (Select X.KODEBRG,'
      
        '                                                SUM(Case when mo' +
        'nth(z1.tanggal)=@bulan and year(z1.TANGGAL)=@tahun  '
      
        '                                                    then case wh' +
        'en x.NOSAT=1 then isnull(x.QNT,0)  else ISNULL(x.Qnt,0) * x.isi ' +
        'end else 0 end) Qnt1PO,'
      
        '                                                sum(case when MO' +
        'NTH(z1.tanggal)=@bulan and year(z1.tanggal)=@tahun then'
      
        '                                                    case when x.' +
        'NOSAT=2 then isnull(x.Qnt,0) else ISNULL(x.Qnt,0)/x.ISI end else' +
        ' 0 end) Qnt2PO'
      #9#9#9#9#9#9#9#9'--,SUM(isnull(y.Qnt,0)) QntBeli '
      '                                        from DBPODET x'
      
        '                                        left outer join (Select ' +
        'x.NoPO, x.UrutPO, SUM(x.QNT) Qnt'
      
        '                                                         from DB' +
        'BELIDET x'
      
        '                                                         Group b' +
        'y x.NoPO, x.UrutPO) y on y.NoPO=x.NOBUKTI and y.UrutPO=x.URUT'
      
        '                                        left outer Join DBBARANG' +
        ' Z on x.KODEBRG = Z.KODEBRG'
      
        '                                        Left Outer join DBPO Z1 ' +
        'on x.NOBUKTI = Z1.NOBUKTI'
      '                                        Group by x.kodebrg'
      
        '                                        Having SUM(x.QNT)-SUM(is' +
        'null(y.Qnt,0))>0) B on B.KODEBRG=C.KODEBRG'
      
        '                        left outer join DBBARANG D on C.KODEBRG ' +
        '= D.KODEBRG'
      
        '                        where Cast(Case when Case when A.IsOtori' +
        'sasi1=1 then 1 else 0 end+'
      
        '                                   Case when A.IsOtorisasi2=1 th' +
        'en 1 else 0 end+'
      
        '                                   Case when A.IsOtorisasi3=1 th' +
        'en 1 else 0 end+'
      
        '                                   Case when A.IsOtorisasi4=1 th' +
        'en 1 else 0 end+'
      
        '                                   Case when A.IsOtorisasi5=1 th' +
        'en 1 else 0 end=A.MaxOL then 0'
      '                                else 1'
      #9#9#9#9'end As Bit)=0 and B.KODEBRG is not null and '
      
        #9#9#9#9'cast(year(A.Tanggal) as varchar(4))+Case when month(A.tangga' +
        'l)<10 then '#39'0'#39' else '#39#39' end+Cast(month(A.Tanggal) as varchar(2))<' +
        '=@Periode'
      
        #9#9#9#9'Group by   C.KODEBRG,A.TANGGAL,B.KODEBRG) F on A.kodebrg = F' +
        '.kodebrg and A.bulan=F.BUlan and A.tahun=F.Tahun'
      'where A.BULAN=@bulan and A.TAHUN=@tahun'
      'group by A.Bulan,A.Tahun,A.KODEBRG,B.NamaBrg,B.QntMin'
      ''
      '/*declare @Bulan Int,@Tahun Int'
      'Select @Bulan =7,@Tahun=2012'
      
        'select d.Sat1,a.Kodebrg,d.NAMABRG,Isnull(c.Qnt,0)Stok,Isnull(c.Q' +
        'nt2,0)Stok2,Isnull(SUM(a.QNT*isi),0)QntBPPB,Isnull(b.Qnt,0)QntBP' +
        ',Isnull(b.Qnt2,0)Qnt2BP,Isnull(SUM(a.QNT*isi),0)-Isnull(b.Qnt,0)' +
        'Sisa,isnull(e.Sisa,0)OSPPL,Isnull(f.sisa,0)OSPO,'
      
        '(Isnull(SUM(a.QNT*isi),0)-Isnull(b.Qnt,0))-Isnull(e.Sisa,0)-Isnu' +
        'll(f.sisa,0)- Isnull(c.Qnt,0)Xsisa from DBSPKDET a '
      
        'left Outer Join (select Kodebrg,SUM(Qnt)Qnt,SUM(Qnt2)Qnt2 from D' +
        'BPenyerahanBhnDET group by kodebrg)b On b.kodebrg=a.KodeBrg '
      
        'left Outer Join (select Kodebrg,SUM(SALDOQNT)Qnt,SUM(SALDO2QNT)Q' +
        'nt2 from DBSTOCKBRG where Bulan=@Bulan and Tahun=@Tahun group by' +
        ' kodebrg)c On c.kodebrg=a.KodeBrg'
      
        'Left Outer join (select a.kodebrg,SUM(a.Qnt*isi)QntPPL,Isnull(b.' +
        'Qnt,0) QntPO,SUM(a.Qnt*isi)-Isnull(b.Qnt,0)sisa from DBPPLDET a'
      
        '                 Left Outer Join (select Kodebrg,SUM(Qnt*isi)Qnt' +
        ' from DBPODET group by Kodebrg)b On  a.kodebrg=b.KODEBRG'
      '                 group by a.kodebrg,b.Qnt'
      
        '                 having SUM(a.Qnt*isi)-Isnull(b.Qnt,0)<>0)e on e' +
        '.KODEBRG=a.KODEBRG'
      
        'Left Outer Join (select a.kodebrg,sum(a.Qnt*a.isi)QntPO,Isnull((' +
        'b.Qnt),0)QntBeli,Sum(a.Qnt*isi)-(isnull((b.Qnt),0))as sisa from ' +
        'DBPODET a'
      
        '                 left Outer Join (select Kodebrg,Isnull(Sum(Qnt)' +
        ',0)Qnt from DBBELIDET Group by KODEBRG)b On a.KODEBRG=b.KODEBRG'
      '                 group by a.KodeBrg,b.Qnt'
      
        '                 having SUM(a.Qnt*a.ISI)-(isnull((b.Qnt),0))<>0)' +
        'f On f.KODEBRG=a.KODEBRG                 '
      'Left Outer Join DBBARANG d On a.KODEBRG=d.kodebrg '
      
        'group by a.KodeBrg,b.Qnt,b.Qnt2,c.Qnt,c.Qnt2,d.NAMABRG,e.Sisa,f.' +
        'sisa,d.Sat1'
      
        'having (Isnull(SUM(a.QNT*isi),0)-Isnull(b.Qnt,0))-Isnull(e.Sisa,' +
        '0)-Isnull(f.sisa,0)-Isnull(c.Qnt,0) >0   */')
    Left = 856
    Top = 272
    object QuBppBBulan: TIntegerField
      FieldName = 'Bulan'
    end
    object QuBppBTahun: TIntegerField
      FieldName = 'Tahun'
    end
    object QuBppBKODEBRG: TStringField
      FieldName = 'KODEBRG'
      Size = 25
    end
    object QuBppBNamaBrg: TStringField
      FieldName = 'NamaBrg'
      Size = 100
    end
    object QuBppBSALDOQNT: TBCDField
      FieldName = 'SALDOQNT'
      ReadOnly = True
      DisplayFormat = ',0'
      Precision = 32
      Size = 2
    end
    object QuBppBSALDO2QNT: TBCDField
      FieldName = 'SALDO2QNT'
      ReadOnly = True
      DisplayFormat = ',0'
      Precision = 32
      Size = 2
    end
    object QuBppBQnt1outPO: TBCDField
      FieldName = 'Qnt1outPO'
      ReadOnly = True
      DisplayFormat = ',0'
      Precision = 32
    end
    object QuBppBQnt2outPO: TBCDField
      FieldName = 'Qnt2outPO'
      ReadOnly = True
      DisplayFormat = ',0'
      Precision = 32
      Size = 20
    end
    object QuBppBQnt1OutPR: TBCDField
      FieldName = 'Qnt1OutPR'
      ReadOnly = True
      DisplayFormat = ',0'
      Precision = 32
    end
    object QuBppBQnt2OutPR: TBCDField
      FieldName = 'Qnt2OutPR'
      ReadOnly = True
      DisplayFormat = ',0'
      Precision = 32
      Size = 20
    end
    object QuBppBQnt1Fiktif: TBCDField
      FieldName = 'Qnt1Fiktif'
      ReadOnly = True
      DisplayFormat = ',0'
      Precision = 32
      Size = 2
    end
    object QuBppBQnt2Fiktif: TBCDField
      FieldName = 'Qnt2Fiktif'
      ReadOnly = True
      DisplayFormat = ',0'
      Precision = 32
      Size = 2
    end
    object QuBppBqntmin: TBCDField
      FieldName = 'qntmin'
      DisplayFormat = ',0'
      Precision = 18
      Size = 2
    end
  end
  object dsBppB: TDataSource
    DataSet = QuBppB
    Left = 888
    Top = 272
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
    Left = 496
    Top = 198
  end
  object frxReport1: TfrxReport
    Version = '4.14'
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
    Left = 442
    Top = 202
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
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBCetakPO'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 412
    Top = 202
  end
  object frxDataPerusahaan: TfrxDBDataset
    UserName = 'frxDataPerusahaan'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 416
    Top = 232
  end
  object QuReport: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
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
      
        'Select A.Nobukti,f.tanggal,B.NamaBrg,A.Qnt,A.Satuan,A.Harga,C.Na' +
        'maSupp,C.Alamat,C.Kota,C.Telpon,'
      '       F.Hari,A.ket,'
      '(A.harga-A.DiscRpTot) as Hrgnett,'
      
        '(A.DiscRptot*A.Qnt) As Discount,((A.Qnt*A.Harga)-(A.Qnt*A.DiscRp' +
        'tot)) As Total,'
      '(A.DiscRp*A.Qnt) As Discount,G.Simbol,'
      
        'Case when A.DiscP1=0 then '#39#39' else (cast(a.DiscP1 as Varchar(9)) ' +
        '+ case when A.DiscP2=0 then '#39'%'#39' else '#39'%+'#39' end) end +'
      
        'Case when A.DiscP2=0 then '#39#39' else (cast(a.DiscP2 as Varchar(9)) ' +
        '+ case when A.DiscP3=0 then '#39'%'#39' else '#39'%+'#39' end) end +'
      
        'Case when A.DiscP3=0 then '#39#39' else (cast(a.DiscP3 as Varchar(9)) ' +
        '+ case when A.DiscP=0 then '#39'%'#39' else '#39'%+'#39' end) end +'
      
        'Case when A.DiscP=0 then '#39#39' else (cast(a.DiscP as Varchar(9)) +'#39 +
        '% '#39') end as Disc,'
      
        '((((A.Qnt*A.Harga)-(A.Qnt*A.DiscRptot)))*(F.Disc/100)) as DiscNo' +
        'ta,'
      'Case when F.PPn='#39'+'#39' then'
      
        '      ((((A.Qnt*A.Harga)-(A.Qnt*A.DiscRptot))-(((A.Qnt*A.Harga)-' +
        '(A.Qnt*A.DiscRptot))*(F.Disc/100))))'
      '     when F.ppn='#39'I'#39' then '
      
        '      (((((A.Qnt*A.Harga)-(A.Qnt*A.DiscRptot))-(((A.Qnt*A.Harga)' +
        '-(A.Qnt*A.DiscRptot))*(F.Disc/100)))/1.1))'
      '     else'
      
        '      ((A.Qnt*A.Harga)-(A.Qnt*A.DiscRptot))-(((A.Qnt*A.Harga)-(A' +
        '.Qnt*A.DiscRptot))*(F.Disc/100))'
      'end Dpp,'
      'Case when F.PPn='#39'+'#39' then'
      
        '      ((((A.Qnt*A.Harga)-(A.Qnt*A.DiscRptot))-(((A.Qnt*A.Harga)-' +
        '(A.Qnt*A.DiscRptot))*(F.Disc/100)))*0.1)'
      '     when F.ppn='#39'I'#39' then '
      
        '      (((((A.Qnt*A.Harga)-(A.Qnt*A.DiscRptot))-(((A.Qnt*A.Harga)' +
        '-(A.Qnt*A.DiscRptot))*(F.Disc/100)))/1.1)*0.1)'
      '     else'
      '      0'
      'end  PPN,'
      'Case when F.PPn='#39'+'#39' then'
      
        '      ((((A.Qnt*A.Harga)-(A.Qnt*A.DiscRptot))-(((A.Qnt*A.Harga)-' +
        '(A.Qnt*A.DiscRptot))*(F.Disc/100))))'
      '     when F.ppn='#39'I'#39' then '
      
        '      (((((A.Qnt*A.Harga)-(A.Qnt*A.DiscRptot))-(((A.Qnt*A.Harga)' +
        '-(A.Qnt*A.DiscRptot))*(F.Disc/100)))/1.1))'
      '     else'
      
        '      ((A.Qnt*A.Harga)-(A.Qnt*A.DiscRptot))-(((A.Qnt*A.Harga)-(A' +
        '.Qnt*A.DiscRptot))*(F.Disc/100))'
      'end +'
      'Case when F.PPn='#39'+'#39' then'
      
        '      ((((A.Qnt*A.Harga)-(A.Qnt*A.DiscRptot))-(((A.Qnt*A.Harga)-' +
        '(A.Qnt*A.DiscRptot))*(F.Disc/100)))*0.1)'
      '     when F.ppn='#39'I'#39' then '
      
        '      (((((A.Qnt*A.Harga)-(A.Qnt*A.DiscRptot))-(((A.Qnt*A.Harga)' +
        '-(A.Qnt*A.DiscRptot))*(F.Disc/100)))/1.1)*0.1)'
      '     else'
      '      0'
      
        'end Jumlah, a.DiscRpTot,f.NoSJLN,Case when f.PilihanPosting='#39'Hut' +
        'ang Usaha'#39' then f.HrgHandling else 0 end HrgHandling'
      'From dbBeliDet A'
      '     left outer join dbBeli F on (a.nobukti=f.nobukti)'
      '     left outer join dbBarang B on (A.KodeBrg=B.KodeBrg)'
      '     left outer join dbSupplier  c on c.kodeSupp=f.kodeSupp'
      '     left outer join dbgudang g on g.kodegdg=a.kodegdg'
      'where a.nobukti=:0'
      'Order by A.NoBukti, A.Urut')
    Left = 506
    Top = 242
  end
end
