object FrMainUMInvoicePL: TFrMainUMInvoicePL
  Left = 217
  Top = 160
  Width = 1136
  Height = 544
  Caption = 'Invoice - Packing List(UM)'
  Color = 16767411
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MoneyString1: TMoneyString
    Left = 624
    Top = 3
    Width = 241
    Height = 24
    Value = 12
    Expand = [exWholeSum, exWholeCurrency, exFractionSum, exFractionCurrency]
    CharCase = ccProper
    Transparent = True
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1128
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 1128
      Height = 39
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
      object ToolButton13: TToolButton
        Left = 673
        Top = 0
        Caption = 'Cetak'
        DropdownMenu = PopupMenu3
        ImageIndex = 4
        Style = tbsDropDown
      end
      object ToolButton14: TToolButton
        Left = 775
        Top = 0
        Width = 8
        Caption = 'ToolButton14'
        ImageIndex = 17
        Style = tbsSeparator
      end
      object ToolButton4: TToolButton
        Left = 783
        Top = 0
        Caption = 'Otorisasi'
        ImageIndex = 15
        OnClick = ToolButton4Click
      end
      object ToolButton12: TToolButton
        Left = 872
        Top = 0
        Caption = 'Batal Otorisasi'
        ImageIndex = 16
        OnClick = ToolButton12Click
      end
      object ToolButton15: TToolButton
        Left = 961
        Top = 0
        Caption = 'Batal'
        ImageIndex = 6
        OnClick = ToolButton15Click
      end
    end
  end
  object dxPageControl1: TdxPageControl
    Left = 0
    Top = 48
    Width = 1128
    Height = 469
    ActivePage = dxTabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    HideButtons = False
    HotTrack = False
    MultiLine = False
    OwnerDraw = False
    ParentFont = False
    RaggedRight = False
    ScrollOpposite = False
    TabHeight = 0
    TabOrder = 1
    TabPosition = dxtpTop
    TabWidth = 0
    OnChange = dxPageControl1Change
    object dxTabSheet1: TdxTabSheet
      Caption = 'SO'
      object cxGrid4: TcxGrid
        Left = 0
        Top = 0
        Width = 1128
        Height = 443
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        object tvMaster4: TcxGridDBBandedTableView
          DataController.DataSource = DsMaster4
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OnFocusedRecordChanged = tvMaster4FocusedRecordChanged
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnHiding = True
          OptionsCustomize.BandHiding = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.GridLineColor = clBtnFace
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          OptionsView.BandHeaders = False
          OptionsView.FixedBandSeparatorWidth = 1
          Styles.StyleSheet = DM.cxGridBandStyleHd
          Styles.Header = DM.cxStyle8
          Styles.BandHeader = DM.cxStyle8
          Bands = <
            item
              Hidden = True
            end>
          object tvMaster4NamaCustSupp: TcxGridDBBandedColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'NamaCustSupp'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 156
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvMaster4NoSHIP: TcxGridDBBandedColumn
            Caption = 'No. Bukti'
            DataBinding.FieldName = 'NoBukti'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 137
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvMaster4TglShip: TcxGridDBBandedColumn
            Caption = 'Tanggal '
            DataBinding.FieldName = 'Tanggal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 93
            Position.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvMaster4KodeCustSupp: TcxGridDBBandedColumn
            DataBinding.FieldName = 'KodeCustSupp'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
        end
        object tvDetail4: TcxGridDBBandedTableView
          DataController.DataSource = DsDetail4
          DataController.DetailKeyFieldNames = 'Nobukti'
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.KeyFieldNames = 'MyKey'
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
            end
            item
              Caption = 'Satuan 2'
            end
            item
              Caption = 'Satuan 1'
            end>
          object tvDetail4Kodebrg: TcxGridDBBandedColumn
            Caption = 'Kode Barang'
            DataBinding.FieldName = 'Kodebrg'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvDetail4NAMABRG: TcxGridDBBandedColumn
            Caption = 'Nama Barang'
            DataBinding.FieldName = 'NAMABRG_1'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 130
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvDetail4Sat_2: TcxGridDBBandedColumn
            Caption = 'Sat'
            DataBinding.FieldName = 'Sat_2'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvDetail4Qnt2: TcxGridDBBandedColumn
            Caption = 'Qnt'
            DataBinding.FieldName = 'Qnt2'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 75
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvDetail4Sat_1: TcxGridDBBandedColumn
            Caption = 'Sat'
            DataBinding.FieldName = 'Sat_1'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvDetail4Qnt: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Qnt'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 75
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvDetail4MyKey: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MyKey'
            Visible = False
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
        end
        object tvSPB: TcxGridDBBandedTableView
          DataController.DetailKeyFieldNames = 'MySPP'
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.KeyFieldNames = 'MyKey'
          DataController.MasterKeyFieldNames = 'MyKey'
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
          object tvSPBNoBukti: TcxGridDBBandedColumn
            Caption = 'No. SPB'
            DataBinding.FieldName = 'NoBukti'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 130
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvSPBTanggal: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Tanggal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvSPBSAT_2: TcxGridDBBandedColumn
            Caption = 'SAT'
            DataBinding.FieldName = 'SAT_2'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvSPBQnt2: TcxGridDBBandedColumn
            Caption = 'Qnt'
            DataBinding.FieldName = 'Qnt2'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 130
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvSPBSAT_1: TcxGridDBBandedColumn
            Caption = 'SAT'
            DataBinding.FieldName = 'SAT_1'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvSPBQnt: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Qnt'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 130
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvSPBMySHIP: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MySPP'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvSPBMyKey: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MyKey'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
        end
        object cxGridLevel7: TcxGridLevel
          GridView = tvMaster4
          object cxGridLevel8: TcxGridLevel
            GridView = tvDetail4
          end
        end
      end
    end
    object dxTabSheet2: TdxTabSheet
      Caption = 'Packing List - Invoice(UM)'
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 1128
        Height = 443
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        object tvMaster3: TcxGridDBBandedTableView
          DataController.DataSource = DsMasterInv
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OnCellClick = tvMaster3CellClick
          OnCustomDrawCell = tvMaster3CustomDrawCell
          OnFocusedRecordChanged = tvMaster3FocusedRecordChanged
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
            end
            item
              Caption = 'Pembatalan'
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
            Visible = False
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
            Visible = False
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
          object tvMaster3DBBandedColumn1: TcxGridDBBandedColumn
            Caption = 'Batal'
            DataBinding.FieldName = 'Isbatal'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DisplayUnchecked = 'False'
            Properties.NullStyle = nssUnchecked
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvMaster3DBBandedColumn2: TcxGridDBBandedColumn
            Caption = 'User batal'
            DataBinding.FieldName = 'userBatal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvMaster3DBBandedColumn3: TcxGridDBBandedColumn
            Caption = 'Tgl Batal'
            DataBinding.FieldName = 'tglBatal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Position.BandIndex = 2
            Position.ColIndex = 2
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
  end
  object PopupMenu2: TPopupMenu
    Left = 563
    Top = 111
    object TampilValid: TMenuItem
      Caption = 'Tampil Valid'
      Checked = True
    end
    object TampilBatal: TMenuItem
      Caption = 'Tampil Batal'
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
    end
    object ShowHeader1: TMenuItem
      Caption = 'Show Header'
      Checked = True
    end
    object Show1: TMenuItem
      Caption = 'Show Footer'
      Checked = True
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object AutoFilter1: TMenuItem
      Caption = 'Auto Filter'
      ImageIndex = 14
    end
    object MultiSelect1: TMenuItem
      Caption = 'Multi Select'
    end
  end
  object SaveDialog: TSaveDialog
    FileName = 'ExpGrid'
    Options = [ofOverwritePrompt, ofHideReadOnly]
    Left = 503
    Top = 104
  end
  object QuMasterInv: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @Tahun int, @Bulan int'
      ''
      'select @Tahun=2013, @Bulan=1'
      ''
      'select  A.NoBukti, A.NoUrut, A.Tanggal,'
      
        '        '#39#39' NoSPP, null TglSPP,C.NOBUKTI NoSO,C.Tanggal TGLSO, A.' +
        'KodeCustSupp, F.NamaCust NamaCustSupp, A.Consignee, A.NotifyPart' +
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
      
        '        Cast(Case when Case when A.IsOtorisasi1=1 then 1 else 0 ' +
        'end+'
      
        '                     Case when A.IsOtorisasi2=1 then 1 else 0 en' +
        'd+'
      
        '                     Case when A.IsOtorisasi3=1 then 1 else 0 en' +
        'd+'
      
        '                     Case when A.IsOtorisasi4=1 then 1 else 0 en' +
        'd+'
      
        '                     Case when A.IsOtorisasi5=1 then 1 else 0 en' +
        'd=A.MaxOL then 0'
      '                else 1'
      '           end As Bit) NeedOtorisasi'
      'from'#9'dbInvoiceUM A'
      'Left Outer join (Select x.NoBukti, x.NoSPB'
      '                 from dbInvoiceUMDet x'
      
        '                 Group by x.NoBukti, x.NoSPB) B on B.NoBukti=A.N' +
        'oBukti'
      'Left Outer join (Select x.NoBukti, x.Tanggal,x.KODESLS'
      '                 from dbSO x'
      
        '                      left Outer join dbSODet y on y.NoBukti=x.N' +
        'oBukti'
      
        '                 group by x.NoBukti, x.Tanggal, x.KODESLS) C on ' +
        'C.nobukti=B.NoSPB'
      
        'left outer join vwBrowsCustomer F on F.KodeCust=A.KodeCustSupp -' +
        '-and F.Sales=C.KODESLS'
      
        'where'#9'year(A.Tanggal)=@Tahun and month(A.Tanggal)=@Bulan  and Is' +
        'null(A.IsFlag,0)<>1'
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
      ReadOnly = True
      Size = 1
    end
    object QuMasterInvTglSPP: TIntegerField
      FieldName = 'TglSPP'
      ReadOnly = True
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
    object QuMasterInvNoSPB: TStringField
      FieldName = 'NoSPB'
      Size = 30
    end
    object QuMasterInvTglSPB: TDateTimeField
      FieldName = 'TglSPB'
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
    object QuMasterInvNeedOtorisasi: TBooleanField
      FieldName = 'NeedOtorisasi'
      ReadOnly = True
    end
  end
  object DsMasterInv: TDataSource
    DataSet = QuMasterInv
    Left = 56
    Top = 328
  end
  object QuDetailInv: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    DataSource = DsMasterInv
    Parameters = <
      item
        Name = 'NoBukti'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = 'SJY/INVC/0712/00001'
      end>
    SQL.Strings = (
      
        'select '#9'B.NoBukti, B.Urut, B.NoSPB, B.UrutSPB, B.KodeBrg, C.NAMA' +
        'BRG, '
      
        '        B.PPN, B.DISC, B.KURS, B.QNT, B.QNT2, B.SAT_1, B.SAT_2, ' +
        'B.NOSAT, B.ISI, B.NetW, B.GrossW,'
      
        '        B.HARGA, B.DiscP, B.DiscRp, B.DISCTOT, B.HRGNETTO, B.NDI' +
        'SKON, B.SUBTOTAL, B.NDPP, B.NPPN, B.NNET,'
      '        B.SUBTOTALRp, B.NDPPRp, B.NPPNRp, B.NNETRp, B.KetDetail'
      'from'#9'dbInvoiceUMDet B'
      'left outer join dbBarang C on C.KodeBrg=B.KodeBrg'
      'where'#9'B.NoBukti=:NoBukti'
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
  object DsDetail4: TDataSource
    DataSet = QuDetail4
    Left = 128
    Top = 256
  end
  object QuDetail4: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    DataSource = DsMaster4
    Parameters = <
      item
        Name = 'NoBukti'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = 'SJY/SJ/0712/00002'
      end>
    SQL.Strings = (
      
        'Select  A.NoBukti, A.Urut, '#39#39' NoSPP, 0 UrutSPP, A.KodeBrg, B.Nam' +
        'abrg,'
      
        '        A.QNT Qnt, A.QNT2 QNT2, B.SAT1 SAT_1, B.SAT2 SAT_2, A.NO' +
        'SAT, A.ISI, 0.00 NetW, 0.00 GrossW, A.HPP, '#39#39' KodeGdg,'
      '                      A.isCetakKitir,B.NAMABRG,'
      '           A.Nobukti+Cast(A.Urut as varchar(5)) MyKey'
      'from dbSODet A'
      '     left outer join DBBARANG B on B.KODEBRG=A.Kodebrg     '
      'where A.Nobukti=:Nobukti'
      'Order by A.Urut')
    Left = 96
    Top = 256
    object QuDetail4NoBukti: TStringField
      FieldName = 'NoBukti'
      Size = 30
    end
    object QuDetail4Urut: TIntegerField
      FieldName = 'Urut'
    end
    object QuDetail4NoSPP: TStringField
      FieldName = 'NoSPP'
      ReadOnly = True
      Size = 1
    end
    object QuDetail4UrutSPP: TIntegerField
      FieldName = 'UrutSPP'
      ReadOnly = True
    end
    object QuDetail4KodeBrg: TStringField
      FieldName = 'KodeBrg'
      Size = 25
    end
    object QuDetail4Namabrg: TStringField
      FieldName = 'Namabrg'
      Size = 100
    end
    object QuDetail4Qnt: TBCDField
      FieldName = 'Qnt'
      Precision = 18
      Size = 2
    end
    object QuDetail4QNT2: TBCDField
      FieldName = 'QNT2'
      Precision = 18
      Size = 2
    end
    object QuDetail4SAT_1: TStringField
      FieldName = 'SAT_1'
      Size = 5
    end
    object QuDetail4SAT_2: TStringField
      FieldName = 'SAT_2'
      Size = 5
    end
    object QuDetail4NOSAT: TWordField
      FieldName = 'NOSAT'
    end
    object QuDetail4ISI: TBCDField
      FieldName = 'ISI'
      Precision = 18
      Size = 2
    end
    object QuDetail4NetW: TBCDField
      FieldName = 'NetW'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object QuDetail4GrossW: TBCDField
      FieldName = 'GrossW'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object QuDetail4HPP: TBCDField
      FieldName = 'HPP'
      Precision = 18
      Size = 2
    end
    object QuDetail4KodeGdg: TStringField
      FieldName = 'KodeGdg'
      ReadOnly = True
      Size = 1
    end
    object QuDetail4isCetakKitir: TBooleanField
      FieldName = 'isCetakKitir'
    end
    object QuDetail4NAMABRG_1: TStringField
      FieldName = 'NAMABRG_1'
      Size = 100
    end
    object QuDetail4MyKey: TStringField
      FieldName = 'MyKey'
      ReadOnly = True
      Size = 35
    end
  end
  object DsMaster4: TDataSource
    DataSet = QuMaster4
    Left = 56
    Top = 256
  end
  object QuMaster4: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @Tahun int, @Bulan int, @Periode Varchar(30)'
      ''
      'select @Tahun=2013, @Bulan=1'
      ''
      
        'Set @Periode=CAST(@Tahun as varchar(4))+Case when @Bulan<10 then' +
        ' '#39'0'#39' else '#39#39' end+CAST(@Bulan as varchar(2))'
      'Select A.NoBukti,A.Tanggal,A.KodeCust KodeCustSupp,'
      '       E.NamaCust NamaCustSupp'
      'From DBSO A'
      
        '     Left Outer join (Select x.NoBukti, Sum(x.QNT)-Isnull(Y.Qnt,' +
        '0) Qnt, Sum(x.QNT2)-Isnull(Y.Qnt2,0) Qnt2'
      '                      from dbSODet x'
      
        '                      Left Outer Join (select Noso,Kodebrg,Sum(Q' +
        'nt)Qnt,Sum(Qnt2)Qnt2 from dbInvoiceUMDet Group by Noso,Kodebrg)Y' +
        ' On Y.Kodebrg=x.Kodebrg and Y.NoSO=x.NoBukti'
      
        '                      group by x.NoBukti,Y.Qnt2,Y.Qnt) B on B.No' +
        'Bukti=A.NoBukti'
      
        '     left outer join vwBrowsCustomer E on E.Kodecust=A.KodeCust ' +
        'and Isnull(E.Sales,A.KodeSLS)=A.KODESLS'
      
        'where Cast(Case when Case when A.IsOtorisasi1=1 then 1 else 0 en' +
        'd+'
      
        '                     Case when A.IsOtorisasi2=1 then 1 else 0 en' +
        'd+'
      
        '                     Case when A.IsOtorisasi3=1 then 1 else 0 en' +
        'd+'
      
        '                     Case when A.IsOtorisasi4=1 then 1 else 0 en' +
        'd+'
      
        '                     Case when A.IsOtorisasi5=1 then 1 else 0 en' +
        'd=A.MaxOL then 0'
      '                else 1'
      '           end As Bit)=0  and'
      '      (B.Qnt>0 or B.Qnt2>0) '
      'order by A.NoBukti')
    Left = 24
    Top = 256
    object QuMaster4NoBukti: TStringField
      FieldName = 'NoBukti'
      Size = 30
    end
    object QuMaster4Tanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuMaster4KodeCustSupp: TStringField
      FieldName = 'KodeCustSupp'
      Size = 15
    end
    object QuMaster4NamaCustSupp: TStringField
      FieldName = 'NamaCustSupp'
      Size = 100
    end
  end
  object QuBeli: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 60
    Parameters = <>
    SQL.Strings = (
      'declare @NoBukti varchar(30)'
      ''
      'select '#9'@NoBukti='#39'SJY/INVC/0712/00003'#39
      ''
      
        'Select A.NoBukti,A.NoUrut,A.Tanggal,B.NoSPP, B.TglSPP,B.NoSO, B.' +
        'TglSO,A.KodeCustSupp,E.KODESLS,I.Nama NamaSls,'
      '       A.Valas,A.Kurs,A.IsLokal,'
      '       A.Consignee,A.NotifyParty,B.PONo,'
      '       A.PaymentTerm, A.PoL,A.PoD,A.NameOfVessel,'
      '       A.ShipOnBoardDate,A.Packing,'
      
        '       B.Urut,B.UrutSPB,B.KodeBrg,E.PPN,E.DISC,B.QNT QNT1,B.QNT2' +
        ',E.TipeBayar, E.Hari,'
      '       B.SAT_1,B.SAT_2,B.NOSAT,B.ISI,B.NetW,B.GrossW,'
      '       B.HARGA,B.DiscP,B.DiscRp,B.DISCTOT,'
      '       B.HrgNetto,B.SubTotal,B.NDiskon,B.NDPP,B.NPPN,B.NNET,'
      
        '       B.SubTotalRp,B.NDiskonRp,B.NDPPRp,B.NPPNRp,B.NNETRp,B.Ket' +
        'Detail,'
      '       A.Consignee ConsigneeSC,A.PaymentTerm,A.NotifyParty,'
      '       A.PoL PoLSC,'
      '       A.PoD,A.Packing, F.NAMABRG,'
      
        '       Case when G.usaha<>'#39#39' then G.Usaha+'#39'. '#39' else '#39#39' end+G.Nam' +
        'aCust NamaCustSupp,'
      
        '       G.Alamat,G.kodekota kota,'#39#39' Negara, B.Namabrg NamabrgKom,' +
        '       '
      
        '       A.NoBL, A.NoteBeneficiary1, A.NoteBeneficiary2, A.NoteBen' +
        'eficiary3,'
      
        '       A.ShipmentAdvice1, A.ShipmentAdvice2, B.ShippingMark, A.E' +
        'TADestination, A.ToShipmentAdvice2,'
      '       A.FootNote,A.IssuingBank, H.NamaVls,'
      '       Case when B.Nosat=1 then B.Qnt'
      '            when B.Nosat=2 then B.Qnt2'
      '            Else 0'
      '       end Qnt,'
      '       Case when B.Nosat=1 then B.Sat_1'
      '            when B.Nosat=2 then B.Sat_2'
      '            Else '#39#39
      
        '       end Satuan, B.NoSPB,D.NoAlamatKirim, J.Nama, J.Alamat,J.T' +
        'elp, J.Fax,'
      
        '       Case when A.Valas='#39'IDR'#39' then B.SubTotalRp  else B.SubTota' +
        'l end Total,'
      
        '       Case when A.Valas='#39'IDR'#39' then K.TotDiskonRp  else K.TotDis' +
        'kon end Diskon,'
      
        '       Case when A.Valas='#39'IDR'#39' then K.TotDPPRp  else K.TotDPP en' +
        'd TotalDPP,'
      
        '       Case when A.Valas='#39'IDR'#39' then K.TotPPnRp  else K.TotPPn en' +
        'd TotalPPn,'
      
        '       Case when A.Valas='#39'IDR'#39' then K.TotNetRp  else K.TotNet en' +
        'd TotalNetto,'
      '       B.UrutTrans '
      'From dbInvoicePL A'
      '     left outer join dbInvoicePLDet B on B.NoBukti=A.NoBukti'
      '     left Outer join (Select x.NoBukti, y.NoSPP'
      '                      from dbSPB x'
      
        '                         left Outer join dbSPBDet y on y.NoBukti' +
        '=x.NoBukti'
      
        '                      group by x.NoBukti, y.NoSPP) C on C.NoBukt' +
        'i=B.NoSPB'
      '     left Outer join (Select x.NoBukti, y.NoSO, x.NoAlamatKirim'
      '                      from dbSPP x'
      
        '                           left Outer join dbSPPDet y on y.NoBuk' +
        'ti=x.NoBukti'
      
        '                      Group by x.NoBukti, y.NoSO, x.NoAlamatKiri' +
        'm) D on D.NoBukti=C.NoSPP'
      '     left outer join (Select x.*'
      '                      from DBSO x) E on E.Nobukti=D.NoSO'
      '     left outer join DBBARANG F on F.KODEBRG=B.KodeBrg'
      
        '     left outer join vwBrowsCustomer G on G.Kodecust=A.kodeCustS' +
        'upp and G.Sales=E.KODESLS'
      '     left Outer join dbkaryawan I on I.KeyNik=G.Sales'
      '     left Outer join dbValas H on H.kodevls=A.Valas'
      
        '     Left Outer join dbAlamatCust J on J.KodecustSupp=A.Kodecust' +
        'Supp and J.Nomor=D.NoAlamatKirim'
      '     Left Outer join vwRpDetInvoicePL K on K.nobukti=A.Nobukti'
      'where A.NoBukti=@nobukti'
      'Order by B.Urut')
    Left = 1048
    Top = 208
    object QuBeliNoBukti: TStringField
      FieldName = 'NoBukti'
      Size = 30
    end
    object QuBeliNoUrut: TStringField
      FieldName = 'NoUrut'
      Size = 8
    end
    object QuBeliTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuBeliNoSPP: TStringField
      FieldName = 'NoSPP'
      Size = 30
    end
    object QuBeliTglSPP: TDateTimeField
      FieldName = 'TglSPP'
    end
    object QuBeliNoSO: TStringField
      FieldName = 'NoSO'
      Size = 30
    end
    object QuBeliTglSO: TDateTimeField
      FieldName = 'TglSO'
    end
    object QuBeliKodeCustSupp: TStringField
      FieldName = 'KodeCustSupp'
    end
    object QuBeliKODESLS: TIntegerField
      FieldName = 'KODESLS'
    end
    object QuBeliValas: TStringField
      FieldName = 'Valas'
      Size = 15
    end
    object QuBeliKurs: TBCDField
      FieldName = 'Kurs'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliIsLokal: TBooleanField
      FieldName = 'IsLokal'
    end
    object QuBeliConsignee: TStringField
      FieldName = 'Consignee'
      Size = 4000
    end
    object QuBeliNotifyParty: TStringField
      FieldName = 'NotifyParty'
      Size = 4000
    end
    object QuBeliPONo: TStringField
      FieldName = 'PONo'
      Size = 500
    end
    object QuBeliPaymentTerm: TStringField
      FieldName = 'PaymentTerm'
      Size = 4000
    end
    object QuBeliPoL: TStringField
      FieldName = 'PoL'
      Size = 4000
    end
    object QuBeliPoD: TStringField
      FieldName = 'PoD'
      Size = 4000
    end
    object QuBeliNameOfVessel: TStringField
      FieldName = 'NameOfVessel'
      Size = 4000
    end
    object QuBeliShipOnBoardDate: TDateTimeField
      FieldName = 'ShipOnBoardDate'
    end
    object QuBeliPacking: TStringField
      FieldName = 'Packing'
      Size = 4000
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
    object QuBeliPPN: TWordField
      FieldName = 'PPN'
    end
    object QuBeliDISC: TBCDField
      FieldName = 'DISC'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliQNT1: TBCDField
      FieldName = 'QNT1'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliQNT2: TBCDField
      FieldName = 'QNT2'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliSAT_1: TStringField
      FieldName = 'SAT_1'
      Size = 5
    end
    object QuBeliSAT_2: TStringField
      FieldName = 'SAT_2'
      Size = 5
    end
    object QuBeliNOSAT: TIntegerField
      FieldName = 'NOSAT'
    end
    object QuBeliISI: TBCDField
      FieldName = 'ISI'
      Precision = 18
      Size = 2
    end
    object QuBeliNetW: TBCDField
      FieldName = 'NetW'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliGrossW: TBCDField
      FieldName = 'GrossW'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliHARGA: TBCDField
      FieldName = 'HARGA'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QuBeliDiscP: TBCDField
      FieldName = 'DiscP'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliDiscRp: TBCDField
      FieldName = 'DiscRp'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliDISCTOT: TBCDField
      FieldName = 'DISCTOT'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliHrgNetto: TBCDField
      FieldName = 'HrgNetto'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 21
    end
    object QuBeliSubTotal: TBCDField
      FieldName = 'SubTotal'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliNDiskon: TBCDField
      FieldName = 'NDiskon'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliNDPP: TBCDField
      FieldName = 'NDPP'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliNPPN: TBCDField
      FieldName = 'NPPN'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliNNET: TBCDField
      FieldName = 'NNET'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliSubTotalRp: TBCDField
      FieldName = 'SubTotalRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliNDiskonRp: TBCDField
      FieldName = 'NDiskonRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliNDPPRp: TBCDField
      FieldName = 'NDPPRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliNPPNRp: TBCDField
      FieldName = 'NPPNRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliNNETRp: TBCDField
      FieldName = 'NNETRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliKetDetail: TStringField
      FieldName = 'KetDetail'
      Size = 500
    end
    object QuBeliConsigneeSC: TStringField
      FieldName = 'ConsigneeSC'
      Size = 4000
    end
    object QuBeliPaymentTerm_1: TStringField
      FieldName = 'PaymentTerm_1'
      Size = 4000
    end
    object QuBeliNotifyParty_1: TStringField
      FieldName = 'NotifyParty_1'
      Size = 4000
    end
    object QuBeliPoLSC: TStringField
      FieldName = 'PoLSC'
      Size = 4000
    end
    object QuBeliPoD_1: TStringField
      FieldName = 'PoD_1'
      Size = 4000
    end
    object QuBeliPacking_1: TStringField
      FieldName = 'Packing_1'
      Size = 4000
    end
    object QuBeliNAMABRG: TStringField
      FieldName = 'NAMABRG'
      Size = 100
    end
    object QuBeliNamaCustSupp: TStringField
      FieldName = 'NamaCustSupp'
      ReadOnly = True
      Size = 122
    end
    object QuBeliAlamat: TStringField
      FieldName = 'Alamat'
      ReadOnly = True
      Size = 333
    end
    object QuBelikota: TStringField
      FieldName = 'kota'
      Size = 100
    end
    object QuBeliNegara: TStringField
      FieldName = 'Negara'
      ReadOnly = True
      Size = 1
    end
    object QuBeliNamabrgKom: TStringField
      FieldName = 'NamabrgKom'
      Size = 200
    end
    object QuBeliNoBL: TStringField
      FieldName = 'NoBL'
      Size = 50
    end
    object QuBeliNoteBeneficiary1: TStringField
      FieldName = 'NoteBeneficiary1'
      Size = 8000
    end
    object QuBeliNoteBeneficiary2: TStringField
      FieldName = 'NoteBeneficiary2'
      Size = 8000
    end
    object QuBeliNoteBeneficiary3: TStringField
      FieldName = 'NoteBeneficiary3'
      Size = 8000
    end
    object QuBeliShipmentAdvice1: TStringField
      FieldName = 'ShipmentAdvice1'
      Size = 8000
    end
    object QuBeliShipmentAdvice2: TStringField
      FieldName = 'ShipmentAdvice2'
      Size = 8000
    end
    object QuBeliShippingMark: TStringField
      FieldName = 'ShippingMark'
      Size = 8000
    end
    object QuBeliETADestination: TDateTimeField
      FieldName = 'ETADestination'
    end
    object QuBeliToShipmentAdvice2: TStringField
      FieldName = 'ToShipmentAdvice2'
      Size = 8000
    end
    object QuBeliFootNote: TStringField
      FieldName = 'FootNote'
      Size = 8000
    end
    object QuBeliIssuingBank: TStringField
      FieldName = 'IssuingBank'
      Size = 8000
    end
    object QuBeliNamaVls: TStringField
      FieldName = 'NamaVls'
      Size = 40
    end
    object QuBeliQnt: TBCDField
      FieldName = 'Qnt'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliSatuan: TStringField
      FieldName = 'Satuan'
      ReadOnly = True
      Size = 5
    end
    object QuBeliNoSPB: TStringField
      FieldName = 'NoSPB'
      Size = 30
    end
    object QuBeliNamaSls: TStringField
      FieldName = 'NamaSls'
      Size = 50
    end
    object QuBeliTipeBayar: TWordField
      FieldName = 'TipeBayar'
    end
    object QuBeliHari: TIntegerField
      FieldName = 'Hari'
    end
    object QuBeliNoAlamatKirim: TIntegerField
      FieldName = 'NoAlamatKirim'
    end
    object QuBeliNama: TStringField
      FieldName = 'Nama'
      Size = 100
    end
    object QuBeliAlamat_1: TStringField
      FieldName = 'Alamat_1'
      Size = 200
    end
    object QuBeliTelp: TStringField
      FieldName = 'Telp'
      Size = 50
    end
    object QuBeliFax: TStringField
      FieldName = 'Fax'
      Size = 50
    end
    object QuBeliTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliDiskon: TBCDField
      FieldName = 'Diskon'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliTotalDPP: TBCDField
      FieldName = 'TotalDPP'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliTotalPPn: TBCDField
      FieldName = 'TotalPPn'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliTotalNetto: TBCDField
      FieldName = 'TotalNetto'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuBeliUrutTrans: TIntegerField
      FieldName = 'UrutTrans'
    end
  end
  object QuUpdatedbBeli: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 1082
    Top = 208
  end
  object frxReport1: TfrxReport
    Version = '4.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40905.8888162384
    ReportOptions.LastChange = 41031.6701578819
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Footer2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Footer2.Visible := (<frxDBDataset2."Keterangan"><>'#39#39');        ' +
        '                             '
      'end;'
      ''
      'procedure MasterData2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  MasterData2.Visible := (<frxDBDataset2."Keterangan"><>'#39#39');  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    Left = 1128
    Top = 8
    Datasets = <
      item
        DataSet = frxDBCetak
        DataSetName = 'frxDBCetak'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = DM.frxDBPerusahaan
        DataSetName = 'frxDBPerusahaan'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.9
      PaperHeight = 330.2
      PaperSize = 14
      LeftMargin = 6
      RightMargin = 6
      TopMargin = 45
      BottomMargin = 6
      LargeDesignHeight = True
      object ReportTitle1: TfrxReportTitle
        Height = 366.61441
        Top = 18.89765
        Width = 770.646167
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 209.5749385
          Width = 351.49629
          Height = 26.45671
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'COMMERCIAL INVOICE')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 389.29159
          Top = 49.13389
          Width = 151.1812
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Invoice No. ')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 389.29159
          Top = 68.03154
          Width = 151.1812
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Date ')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 559.37044
          Top = 49.13389
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoBukti"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 559.37044
          Top = 68.03154
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Bulan"] [<frxDBCetak."Tanggal"> #dDD, YYYY]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 389.29159
          Top = 86.92919
          Width = 151.1812
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Our Ref No.')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 559.37044
          Top = 86.92919
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."ContractNo"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 389.29159
          Top = 105.82684
          Width = 151.1812
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Your Ref No.')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 559.37044
          Top = 105.82684
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PONo"]')
          ParentFont = False
        end
        object Rich1: TfrxRichView
          ShiftMode = smWhenOverlapped
          Left = 7.55906
          Top = 49.13389
          Width = 332.59864
          Height = 204.09462
          ShowHint = False
          StretchMode = smMaxHeight
          GapX = 2
          GapY = 1
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033337B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C204E6172726F773B7D7B5C66315C666E696C5C6663
            6861727365743020417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220
            4D7366746564697420352E34312E31352E313531363B7D5C766965776B696E64
            345C7563315C706172645C66305C667331382042757965725C7061720D0A5C70
            6172645C716A5C62205B6672784442436574616B2E224E616D61437573745375
            7070225D5C62305C7061720D0A5B6672784442436574616B2E22416C616D6174
            225D5C7061720D0A5C706172645C66692D3230305C6C693230305C716A205B66
            72784442436574616B2E224B6F7461225D5C7061720D0A5C706172645C716A5C
            62205B6672784442436574616B2E224E4547415241225D5C7061720D0A5C6230
            2054656C203A205B6672784442436574616B2E2254454C504F4E225D20466178
            203A205B6672784442436574616B2E22464158225D5C7061720D0A5C70617264
            5C7061720D0A5C706172645C716A20436F6E7369676E65655C7061720D0A5B66
            72784442436574616B2E22436F6E7369676E656553686970225D5C7061720D0A
            5C7061720D0A4E6F74696679205061727479205C7061720D0A5B667278444243
            6574616B2E224E6F746966795F506172747953686970225D5C66315C66733230
            5C7061720D0A7D0D0A00}
        end
        object Memo2: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 139.84261
          Width = 151.1812
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Payment Term ')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 158.74026
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Documentary Credit No.')
          ParentFont = False
        end
        object Memo232: TfrxMemoView
          Left = 559.37044
          Top = 139.84261
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PaymentTerm"]')
          ParentFont = False
        end
        object Memo233: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 559.37044
          Top = 158.74026
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoLC"]')
          ParentFont = False
        end
        object Memo234: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 215.43321
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Port of Loading')
          ParentFont = False
        end
        object Memo237: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 559.37044
          Top = 215.43321
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoL"]')
          ParentFont = False
        end
        object Memo238: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 238.11039
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Port of Discharge')
          ParentFont = False
        end
        object Memo239: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 559.37044
          Top = 238.11039
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoD"]')
          ParentFont = False
        end
        object Memo240: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 264.5671
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Name Of Vessel')
          ParentFont = False
        end
        object Memo241: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 283.46475
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Ship on Board Date')
          ParentFont = False
        end
        object Memo242: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 559.37044
          Top = 264.5671
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NameOfVessel"]')
          ParentFont = False
        end
        object Memo243: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 559.37044
          Top = 283.46475
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxDBCetak."Bulan"] [<frxDBCetak."ShipOnBoardDate">  #d dd, yyy' +
              'y]')
          ParentFont = False
        end
        object Memo244: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 302.3624
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Packing')
          ParentFont = False
        end
        object Memo245: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 559.37044
          Top = 302.3624
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBCetak."Packing"]')
          ParentFont = False
        end
        object Memo247: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 177.63791
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Issuing Bank of L/C')
          ParentFont = False
        end
        object Memo248: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 559.37044
          Top = 177.63791
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."IssuingBank"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.89765
        Top = 517.79561
        Width = 770.646167
        DataSet = frxDBCetak
        DataSetName = 'frxDBCetak'
        RowCount = 0
        Stretched = True
        object frxDBDCetakNamaBrgkom: TfrxMemoView
          Left = 7.55906
          Width = 257.00804
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NamaBrgkom'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."NamaBrgkom"]')
          ParentFont = False
        end
        object frxDBCetakQty: TfrxMemoView
          Left = 264.5671
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetak."Qty"]')
          ParentFont = False
        end
        object frxDBCetakSatuan: TfrxMemoView
          Left = 362.83488
          Width = 79.37013
          Height = 18.89765
          ShowHint = False
          DataField = 'Satuan'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."Satuan"]')
          ParentFont = False
        end
        object frxDBCetakHarga: TfrxMemoView
          Left = 442.20501
          Width = 128.50402
          Height = 18.89765
          ShowHint = False
          DataField = 'Harga'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetak."Harga"]')
          ParentFont = False
        end
        object frxDBCetakNNET: TfrxMemoView
          Left = 570.70903
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetak."NNET"]')
          ParentFont = False
        end
        object frxDBCetakValas: TfrxMemoView
          Left = 442.20501
          Width = 41.57483
          Height = 18.89765
          ShowHint = False
          DataField = 'Valas'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Valas"]')
          ParentFont = False
        end
        object Memo235: TfrxMemoView
          Left = 570.70903
          Width = 37.7953
          Height = 18.89765
          ShowHint = False
          DataField = 'Valas'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Valas"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 37.7953
        Top = 559.37044
        Width = 770.646167
        AllowSplit = True
        Stretched = True
        object Memo22: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 7.55906
          Top = 18.89765
          Width = 748.34694
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8 = (
            'Say :[Terbilang]')
          ParentFont = False
          WordBreak = True
        end
        object Memo164: TfrxMemoView
          Left = 608.50433
          Width = 147.40167
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."NNET">, Masterdata1,2)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo165: TfrxMemoView
          Left = 7.55906
          Width = 661.41775
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haRight
          ParentFont = False
        end
        object Memo236: TfrxMemoView
          Left = 570.70903
          Width = 37.7953
          Height = 18.89765
          ShowHint = False
          DataField = 'Valas'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Valas"]')
          ParentFont = False
        end
        object Memo246: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 7.55906
          Width = 551.81138
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoD"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 49.13389
        Top = 445.98454
        Width = 770.646167
        AllowSplit = True
        object Memo12: TfrxMemoView
          Left = 7.55906
          Top = 11.33859
          Width = 257.00804
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Description of Goods')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 264.5671
          Top = 11.33859
          Width = 98.26778
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Quantity')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 362.83488
          Top = 11.33859
          Width = 79.37013
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Unit')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 442.20501
          Top = 11.33859
          Width = 128.50402
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Unit Price')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 570.70903
          Top = 11.33859
          Width = 185.19697
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Total Price')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer2: TfrxFooter
        Height = 18.89765
        Top = 661.41775
        Width = 770.646167
        AllowSplit = True
        object Memo25: TfrxMemoView
          Left = 570.70903
          Width = 185.19697
          Height = 18.89765
          Visible = False
          ShowHint = False
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBDataset2."NNet">, MasterData2,0)]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 7.55906
          Width = 563.14997
          Height = 18.89765
          Visible = False
          ShowHint = False
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8 = (
            'Total Value')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 570.70903
          Width = 37.7953
          Height = 18.89765
          Visible = False
          ShowHint = False
          DataField = 'Valas'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Valas"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 18.89765
        Top = 619.84292
        Width = 770.646167
        OnBeforePrint = 'MasterData2OnBeforePrint'
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        Stretched = True
        object Memo23: TfrxMemoView
          Left = 7.55906
          Width = 563.14997
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Keterangan'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[frxDBDataset2."Keterangan"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 570.70903
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NNet'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset2."NNet"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 570.70903
          Width = 37.7953
          Height = 18.89765
          ShowHint = False
          DataField = 'Valas'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Valas"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 291.02381
        Top = 740.78788
        Width = 770.646167
        object Memo230: TfrxMemoView
          Left = 7.55906
          Width = 328.81911
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Footnote"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 434.64595
          Width = 98.26778
          Height = 22.67718
          ShowHint = False
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."NetW">, MasterData1,2)  #n%2.2n] Kgs')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 434.64595
          Top = 22.67718
          Width = 98.26778
          Height = 22.67718
          ShowHint = False
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."GrossW">, MasterData1,2) #n%2.2n] Kgs')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 336.37817
          Width = 86.92919
          Height = 22.67718
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Net Weight')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 336.37817
          Top = 22.67718
          Width = 86.92919
          Height = 22.67718
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Gross Weight')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 423.30736
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 423.30736
          Top = 22.67718
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 7.55906
          Top = 90.70872
          Width = 593.38621
          Height = 18.89765
          Visible = False
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'WE, CERTIFY THAT MERCHANDISE ARE OF INDONESIA ORIGIN')
          ParentFont = False
        end
        object frxDBPerusahaanNAMA: TfrxMemoView
          Left = 7.55906
          Top = 128.50402
          Width = 321.26005
          Height = 158.74026
          ShowHint = False
          DataSet = DM.frxDBPerusahaan
          DataSetName = 'frxDBPerusahaan'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBPerusahaan."NAMA"]'
            'Kediri - Indonesia'
            ''
            ''
            ''
            ''
            ''
            ''
            '[Uppercase(<frxDBPerusahaan."Direksi">)]')
          ParentFont = False
        end
        object Subreport2: TfrxSubreport
          Left = 434.64595
          Top = 45.35436
          Width = 374.17347
          Height = 18.89765
          ShowHint = False
          Page = frxReport1.Page3
        end
        object Memo249: TfrxMemoView
          Left = 336.37817
          Top = 45.35436
          Width = 86.92919
          Height = 22.67718
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Shipping Mark')
          ParentFont = False
        end
        object Memo250: TfrxMemoView
          Left = 423.30736
          Top = 45.35436
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 215.9
      PaperHeight = 330.2
      PaperSize = 14
      LeftMargin = 6
      RightMargin = 6
      TopMargin = 45
      BottomMargin = 6
      LargeDesignHeight = True
      object ReportTitle2: TfrxReportTitle
        Height = 355.27582
        Top = 18.89765
        Width = 770.646167
        Stretched = True
        object Memo36: TfrxMemoView
          Left = 209.5749385
          Width = 351.49629
          Height = 26.45671
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'PACKING LIST')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 389.29159
          Top = 49.13389
          Width = 136.06308
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Packing List No.')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 389.29159
          Top = 68.03154
          Width = 52.91342
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Date')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 555.59091
          Top = 49.13389
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoBukti"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 555.59091
          Top = 68.03154
          Width = 173.85838
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Bulan"] [<frxDBCetak."Tanggal"> #dDD, YYYY]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 389.29159
          Top = 94.48825
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Our Ref No.')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 555.59091
          Top = 94.48825
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."ContractNo"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 389.29159
          Top = 117.16543
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Your Ref No.')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 555.59091
          Top = 117.16543
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PONo"]')
          ParentFont = False
        end
        object Rich2: TfrxRichView
          ShiftMode = smWhenOverlapped
          Left = 7.55906
          Top = 52.91342
          Width = 332.59864
          Height = 204.09462
          ShowHint = False
          StretchMode = smMaxHeight
          GapX = 2
          GapY = 1
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033337B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C204E6172726F773B7D7B5C66315C666E696C5C6663
            6861727365743020417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220
            4D7366746564697420352E34312E31352E313531363B7D5C766965776B696E64
            345C7563315C706172645C66305C667331382042757965725C7061720D0A5C70
            6172645C716A5C62205B6672784442436574616B2E224E616D61437573745375
            7070225D5C62305C7061720D0A5B6672784442436574616B2E22416C616D6174
            225D5C7061720D0A5C706172645C66692D3230305C6C693230305C716A205B66
            72784442436574616B2E224B6F7461225D5C7061720D0A5C706172645C716A5C
            62205B6672784442436574616B2E224E4547415241225D5C7061720D0A5C6230
            2054656C203A205B6672784442436574616B2E2254454C504F4E225D20466178
            203A205B6672784442436574616B2E22464158225D5C7061720D0A5C70617264
            5C7061720D0A5C706172645C716A20436F6E7369676E65655C7061720D0A5B66
            72784442436574616B2E22436F6E7369676E656553686970225D5C7061720D0A
            5C7061720D0A4E6F74696679205061727479205C7061720D0A5B667278444243
            6574616B2E224E6F746966795F506172747953686970225D5C66315C66733230
            5C7061720D0A7D0D0A00}
        end
        object Memo37: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 143.62214
          Width = 151.1812
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Payment Term ')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 162.51979
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Documentary Credit No.')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 559.37044
          Top = 143.62214
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PaymentTerm"]')
          ParentFont = False
        end
        object Memo251: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 559.37044
          Top = 162.51979
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoLC"]')
          ParentFont = False
        end
        object Memo252: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 207.87415
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Port of Loading')
          ParentFont = False
        end
        object Memo253: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 559.37044
          Top = 207.87415
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoL"]')
          ParentFont = False
        end
        object Memo254: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 230.55133
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Port of Discharge')
          ParentFont = False
        end
        object Memo255: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 559.37044
          Top = 230.55133
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoD"]')
          ParentFont = False
        end
        object Memo256: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 257.00804
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Name Of Vessel')
          ParentFont = False
        end
        object Memo257: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 275.90569
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Ship on Board Date')
          ParentFont = False
        end
        object Memo258: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 559.37044
          Top = 257.00804
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NameOfVessel"]')
          ParentFont = False
        end
        object Memo259: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 559.37044
          Top = 275.90569
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxDBCetak."Bulan"] [<frxDBCetak."ShipOnBoardDate">  #d dd, yyy' +
              'y]')
          ParentFont = False
        end
        object Memo260: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 294.80334
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Packing')
          ParentFont = False
        end
        object Memo261: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 559.37044
          Top = 294.80334
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBCetak."Packing"]')
          ParentFont = False
        end
        object Memo262: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 181.41744
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Issuing Bank of L/C')
          ParentFont = False
        end
        object Memo263: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 559.37044
          Top = 181.41744
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."IssuingBank"]')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        Height = 22.67718
        Top = 506.45702
        Width = 770.646167
        DataSet = frxDBCetak
        DataSetName = 'frxDBCetak'
        RowCount = 0
        Stretched = True
        object Memo48: TfrxMemoView
          Left = 7.55906
          Width = 241.88992
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NamaBrgkom'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."NamaBrgkom"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 249.44898
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetak."Qty"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 347.71676
          Width = 75.5906
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Satuan'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."Satuan"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 423.30736
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NetW'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetak."NetW"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 521.57514
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'GrossW'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetak."GrossW"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 619.84292
          Width = 132.28355
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'KetDetail'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."KetDetail"]')
          ParentFont = False
          SuppressRepeated = True
        end
      end
      object Header2: TfrxHeader
        Height = 49.13389
        Top = 434.64595
        Width = 770.646167
        AllowSplit = True
        object Memo53: TfrxMemoView
          Left = 7.55906
          Top = 11.33859
          Width = 241.88992
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Description of Goods')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 249.44898
          Top = 11.33859
          Width = 98.26778
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Quantity')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 347.71676
          Top = 11.33859
          Width = 75.5906
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Unit')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 423.30736
          Top = 11.33859
          Width = 98.26778
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Net Weight'
            '(Kgs)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 521.57514
          Top = 11.33859
          Width = 98.26778
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Gross Weight'
            '(Kgs)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 619.84292
          Top = 11.33859
          Width = 132.28355
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Notes')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary2: TfrxReportSummary
        Height = 291.02381
        Top = 589.60668
        Width = 770.646167
        object Memo60: TfrxMemoView
          Left = 362.83488
          Top = 45.35436
          Width = 83.14966
          Height = 18.89765
          ShowHint = False
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."Meas">, MasterData3,2)  #n%2,2n] M'#194#179)
          ParentFont = False
          WordWrap = False
        end
        object Memo62: TfrxMemoView
          Left = 241.88992
          Top = 45.35436
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Mesurement ')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 347.71676
          Top = 45.35436
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 7.55906
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Miscellaneous')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 109.60637
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Subreport1: TfrxSubreport
          Left = 362.83488
          Top = 71.81107
          Width = 374.17347
          Height = 18.89765
          ShowHint = False
          Page = frxReport1.Page3
        end
        object Memo61: TfrxMemoView
          Left = 241.88992
          Top = 71.81107
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Shipping Mark')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 347.71676
          Top = 71.81107
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 7.55906
          Width = 744.56741
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo231: TfrxMemoView
          Left = 117.16543
          Width = 638.74057
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Footnote"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 7.55906
          Top = 124.72449
          Width = 321.26005
          Height = 158.74026
          ShowHint = False
          DataSet = DM.frxDBPerusahaan
          DataSetName = 'frxDBPerusahaan'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBPerusahaan."NAMA"]'
            'Kediri - Indonesia'
            ''
            ''
            ''
            ''
            ''
            ''
            '[Uppercase(<frxDBPerusahaan."Direksi">)]')
          ParentFont = False
        end
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 215.9
      PaperHeight = 279.4
      PaperSize = 1
      LeftMargin = 10
      RightMargin = 10
      TopMargin = 10
      BottomMargin = 10
      object MasterData4: TfrxMasterData
        Height = 22.67718
        Top = 18.89765
        Width = 740.409927
        DataSet = frxDBCetak
        DataSetName = 'frxDBCetak'
        RowCount = 0
        Stretched = True
        object frxDBDCetakShippingMark: TfrxMemoView
          Width = 668.97681
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'ShippingMark'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."ShippingMark"]')
          ParentFont = False
          SuppressRepeated = True
        end
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 215.9
      PaperHeight = 330.2
      PaperSize = 14
      LeftMargin = 6
      RightMargin = 6
      TopMargin = 45
      BottomMargin = 6
      object ReportTitle3: TfrxReportTitle
        Height = 374.17347
        Top = 18.89765
        Width = 770.646167
        Stretched = True
        object Memo65: TfrxMemoView
          Left = 209.5749385
          Width = 351.49629
          Height = 26.45671
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'BENEFICIARY CERTIFICATE')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 389.29159
          Top = 68.03154
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Invoice No.')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 389.29159
          Top = 49.13389
          Width = 52.91342
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Date')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 555.59091
          Top = 68.03154
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoBukti"]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 555.59091
          Top = 49.13389
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Bulan"] [<frxDBCetak."Tanggal"> #dDD, YYYY]')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 389.29159
          Top = 117.16543
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Our Ref No.')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 555.59091
          Top = 117.16543
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."ContractNo"]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 389.29159
          Top = 136.06308
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Your Ref No.')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 555.59091
          Top = 136.06308
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PONo"]')
          ParentFont = False
        end
        object Memo162: TfrxMemoView
          ShiftMode = smDontShift
          Left = 555.59091
          Top = 86.92919
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Valas"] [<InvoiceValue>  #n%2,2n]')
          ParentFont = False
          WordWrap = False
        end
        object Memo163: TfrxMemoView
          Left = 389.29159
          Top = 86.92919
          Width = 117.16543
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Invoice Value')
          ParentFont = False
        end
        object Rich3: TfrxRichView
          ShiftMode = smWhenOverlapped
          Left = 7.55906
          Top = 49.13389
          Width = 332.59864
          Height = 204.09462
          ShowHint = False
          StretchMode = smMaxHeight
          GapX = 2
          GapY = 1
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033337B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C204E6172726F773B7D7B5C66315C666E696C5C6663
            6861727365743020417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220
            4D7366746564697420352E34312E31352E313531363B7D5C766965776B696E64
            345C7563315C706172645C66305C6673313820546F5C7061720D0A5C70617264
            5C716A5C62205B6672784442436574616B2E224E616D61437573745375707022
            5D5C62305C7061720D0A5B6672784442436574616B2E22416C616D6174225D5C
            7061720D0A5C706172645C66692D3230305C6C693230305C716A205B66727844
            42436574616B2E224B6F7461225D5C7061720D0A5C706172645C716A5C62205B
            6672784442436574616B2E224E4547415241225D5C7061720D0A5C6230205465
            6C203A205B6672784442436574616B2E2254454C504F4E225D20466178203A20
            5B6672784442436574616B2E22464158225D5C7061720D0A5C66315C66733230
            5C7061720D0A7D0D0A00}
        end
        object Memo68: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 162.51979
          Width = 151.1812
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Payment Term ')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 181.41744
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Documentary Credit No.')
          ParentFont = False
        end
        object Memo264: TfrxMemoView
          Left = 555.59091
          Top = 162.51979
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PaymentTerm"]')
          ParentFont = False
        end
        object Memo265: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 181.41744
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoLC"]')
          ParentFont = False
        end
        object Memo266: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 230.55133
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Port of Loading')
          ParentFont = False
        end
        object Memo267: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 230.55133
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoL"]')
          ParentFont = False
        end
        object Memo268: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 253.22851
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Port of Discharge')
          ParentFont = False
        end
        object Memo269: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 253.22851
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoD"]')
          ParentFont = False
        end
        object Memo270: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 279.68522
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Name Of Vessel')
          ParentFont = False
        end
        object Memo271: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 317.48052
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Ship on Board Date')
          ParentFont = False
        end
        object Memo272: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 279.68522
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NameOfVessel"]')
          ParentFont = False
        end
        object Memo273: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 317.48052
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxDBCetak."Bulan"] [<frxDBCetak."ShipOnBoardDate">  #d dd, yyy' +
              'y]')
          ParentFont = False
        end
        object Memo274: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 355.27582
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Packing')
          ParentFont = False
        end
        object Memo275: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 355.27582
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBCetak."Packing"]')
          ParentFont = False
        end
        object Memo276: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 200.31509
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Issuing Bank of L/C')
          ParentFont = False
        end
        object Memo277: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 200.31509
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."IssuingBank"]')
          ParentFont = False
        end
        object Memo278: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 298.58287
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'B/L No. ')
          ParentFont = False
        end
        object Memo279: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 298.58287
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoBL"]')
          ParentFont = False
        end
        object Memo280: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 336.37817
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'ETA Destination               ')
          ParentFont = False
        end
        object Memo281: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 336.37817
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxDBCetak."Bulan"] [<frxDBCetak."ETADestination">  #d dd, yyyy' +
              ']')
          ParentFont = False
        end
      end
      object Header3: TfrxHeader
        Height = 49.13389
        Top = 453.5436
        Width = 770.646167
        AllowSplit = True
        object Memo80: TfrxMemoView
          Left = 7.55906
          Top = 11.33859
          Width = 294.80334
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Description of Goods')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 302.3624
          Top = 11.33859
          Width = 196.53556
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Quantity')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 498.89796
          Top = 11.33859
          Width = 253.22851
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Shipping Mark')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary3: TfrxReportSummary
        Height = 291.02381
        Top = 604.7248
        Width = 770.646167
        Stretched = True
        object Memo89: TfrxMemoView
          Left = 7.55906
          Top = 71.81107
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Miscellaneous')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 151.1812
          Top = 71.81107
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 7.55906
          Top = 128.50402
          Width = 377.953
          Height = 158.74026
          ShowHint = False
          DataSet = DM.frxDBPerusahaan
          DataSetName = 'frxDBPerusahaan'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBPerusahaan."NAMA"]'
            'Kediri - Indonesia'
            ''
            ''
            ''
            ''
            ''
            '[frxDBPerusahaan."Direksi"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 7.55906
          Width = 744.56741
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo86: TfrxMemoView
          Left = 166.29932
          Top = 3.77953
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."NetW">, MasterData5,2) #n%2,2n] Kgs')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Left = 166.29932
          Top = 26.45671
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."GrossW">, MasterData5,2)  #n%2,2n] Kgs')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 7.55906
          Top = 3.77953
          Width = 132.28355
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Total Net Weight')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 7.55906
          Top = 26.45671
          Width = 132.28355
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Total Gross Weight')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 151.1812
          Top = 3.77953
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 151.1812
          Top = 26.45671
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          Left = 166.29932
          Top = 49.13389
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."Meas">, MasterData5,2)  #n%2,2n] M'#194#179)
          ParentFont = False
          WordWrap = False
        end
        object Memo102: TfrxMemoView
          Left = 7.55906
          Top = 49.13389
          Width = 136.06308
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Mesurement ')
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          Left = 151.1812
          Top = 49.13389
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object frxDBDCetakNoteBeneficiary1: TfrxMemoView
          Left = 170.07885
          Top = 71.81107
          Width = 582.04762
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoteBeneficiary1"]')
          ParentFont = False
        end
      end
      object MasterData5: TfrxMasterData
        Height = 18.89765
        Top = 525.35467
        Width = 770.646167
        DataSet = frxDBCetak
        DataSetName = 'frxDBCetak'
        RowCount = 0
        Stretched = True
        object Memo94: TfrxMemoView
          Left = 7.55906
          Width = 294.80334
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NamaBrgkom'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."NamaBrgkom"]')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 302.3624
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxDBCetak."Qty">  #n%2,2n] [frxDBCetak."Satuan"]')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Left = 502.67749
          Width = 249.44898
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."ShippingMark"]')
          ParentFont = False
          SuppressRepeated = True
        end
      end
    end
    object Page5: TfrxReportPage
      PaperWidth = 215.9
      PaperHeight = 330.2
      PaperSize = 256
      LeftMargin = 6
      RightMargin = 6
      TopMargin = 45
      BottomMargin = 6
      object ReportTitle4: TfrxReportTitle
        Height = 374.17347
        Top = 18.89765
        Width = 770.646167
        Stretched = True
        object Memo82: TfrxMemoView
          Left = 209.5749385
          Width = 351.49629
          Height = 26.45671
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'SHIPMENT ADVICE')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 389.29159
          Top = 68.03154
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Invoice No.')
          ParentFont = False
        end
        object Memo282: TfrxMemoView
          Left = 555.59091
          Top = 68.03154
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoBukti"]')
          ParentFont = False
        end
        object Memo283: TfrxMemoView
          Left = 389.29159
          Top = 117.16543
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Our Ref No.')
          ParentFont = False
        end
        object Memo284: TfrxMemoView
          Left = 555.59091
          Top = 117.16543
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."ContractNo"]')
          ParentFont = False
        end
        object Memo285: TfrxMemoView
          Left = 389.29159
          Top = 136.06308
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Your Ref No.')
          ParentFont = False
        end
        object Memo286: TfrxMemoView
          Left = 555.59091
          Top = 136.06308
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PONo"]')
          ParentFont = False
        end
        object Memo287: TfrxMemoView
          ShiftMode = smDontShift
          Left = 555.59091
          Top = 86.92919
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Valas"] [<InvoiceValue>  #n%2,2n]')
          ParentFont = False
          WordWrap = False
        end
        object Memo288: TfrxMemoView
          Left = 389.29159
          Top = 86.92919
          Width = 117.16543
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Invoice Value')
          ParentFont = False
        end
        object Rich4: TfrxRichView
          ShiftMode = smWhenOverlapped
          Left = 3.77953
          Top = 49.13389
          Width = 347.71676
          Height = 204.09462
          ShowHint = False
          StretchMode = smMaxHeight
          GapX = 2
          GapY = 1
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033337B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C204E6172726F773B7D7B5C66315C666E696C5C6663
            6861727365743020417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220
            4D7366746564697420352E34312E31352E313531363B7D5C766965776B696E64
            345C7563315C706172645C66305C6673313820546F5C7061720D0A5C70617264
            5C716A5C62205B6672784442436574616B2E224E616D61437573745375707022
            5D5C62305C7061720D0A5B6672784442436574616B2E22416C616D6174225D5C
            7061720D0A5C706172645C66692D3230305C6C693230305C716A205B66727844
            42436574616B2E224B6F7461225D5C7061720D0A5C706172645C716A5C62205B
            6672784442436574616B2E224E4547415241225D5C7061720D0A5C6230205465
            6C203A205B6672784442436574616B2E2254454C504F4E225D20466178203A20
            5B6672784442436574616B2E22464158225D5C7061720D0A5C66315C66733230
            5C7061720D0A7D0D0A00}
        end
        object Memo289: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 162.51979
          Width = 151.1812
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Payment Term ')
          ParentFont = False
        end
        object Memo290: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 181.41744
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Documentary Credit No.')
          ParentFont = False
        end
        object Memo291: TfrxMemoView
          Left = 555.59091
          Top = 162.51979
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PaymentTerm"]')
          ParentFont = False
        end
        object Memo292: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 181.41744
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoLC"]')
          ParentFont = False
        end
        object Memo293: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 230.55133
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Port of Loading')
          ParentFont = False
        end
        object Memo294: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 230.55133
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoL"]')
          ParentFont = False
        end
        object Memo295: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 253.22851
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Port of Discharge')
          ParentFont = False
        end
        object Memo296: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 253.22851
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoD"]')
          ParentFont = False
        end
        object Memo297: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 279.68522
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Name Of Vessel')
          ParentFont = False
        end
        object Memo298: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 317.48052
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Ship on Board Date')
          ParentFont = False
        end
        object Memo299: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 279.68522
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NameOfVessel"]')
          ParentFont = False
        end
        object Memo300: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 317.48052
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxDBCetak."Bulan"] [<frxDBCetak."ShipOnBoardDate">  #d dd, yyy' +
              'y]')
          ParentFont = False
        end
        object Memo301: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 355.27582
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Packing')
          ParentFont = False
        end
        object Memo302: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 355.27582
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBCetak."Packing"]')
          ParentFont = False
        end
        object Memo303: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 200.31509
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Issuing Bank of L/C')
          ParentFont = False
        end
        object Memo304: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 200.31509
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."IssuingBank"]')
          ParentFont = False
        end
        object Memo305: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 298.58287
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'B/L No. ')
          ParentFont = False
        end
        object Memo306: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 298.58287
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoBL"]')
          ParentFont = False
        end
        object Memo307: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 336.37817
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'ETA Destination               ')
          ParentFont = False
        end
        object Memo308: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 336.37817
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxDBCetak."Bulan"] [<frxDBCetak."ETADestination">  #d dd, yyyy' +
              ']')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 389.29159
          Top = 49.13389
          Width = 52.91342
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Date')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 555.59091
          Top = 49.13389
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Bulan"] [<frxDBCetak."Tanggal"> #dDD, YYYY]')
          ParentFont = False
        end
      end
      object Header4: TfrxHeader
        Height = 49.13389
        Top = 453.5436
        Width = 770.646167
        AllowSplit = True
        object Memo110: TfrxMemoView
          Left = 7.55906
          Top = 11.33859
          Width = 294.80334
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Description of Goods')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          Left = 302.3624
          Top = 11.33859
          Width = 196.53556
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Quantity')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          Left = 498.89796
          Top = 11.33859
          Width = 253.22851
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Shipping Mark')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary4: TfrxReportSummary
        Height = 291.02381
        Top = 608.50433
        Width = 770.646167
        Stretched = True
        object Memo113: TfrxMemoView
          Left = 7.55906
          Top = 71.81107
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Miscellaneous')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Left = 151.1812
          Top = 71.81107
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 7.55906
          Top = 128.50402
          Width = 377.953
          Height = 158.74026
          ShowHint = False
          DataSet = DM.frxDBPerusahaan
          DataSetName = 'frxDBPerusahaan'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBPerusahaan."NAMA"]'
            'Kediri - Indonesia'
            ''
            ''
            ''
            ''
            ''
            '[frxDBPerusahaan."Direksi"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 7.55906
          Width = 744.56741
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo116: TfrxMemoView
          Left = 166.29932
          Top = 3.77953
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."NetW">, MasterData6,2) #n%2,2n] Kgs')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          Left = 166.29932
          Top = 26.45671
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."GrossW">, MasterData6,2)  #n%2,2n] Kgs')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          Left = 7.55906
          Top = 3.77953
          Width = 132.28355
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Total Net Weight')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          Left = 7.55906
          Top = 26.45671
          Width = 132.28355
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Total Gross Weight')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          Left = 151.1812
          Top = 3.77953
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo121: TfrxMemoView
          Left = 151.1812
          Top = 26.45671
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          Left = 170.07885
          Top = 49.13389
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."Meas">, MasterData6,2) #n%2,2n] M'#194#179)
          ParentFont = False
          WordWrap = False
        end
        object Memo123: TfrxMemoView
          Left = 7.55906
          Top = 49.13389
          Width = 136.06308
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Mesurement ')
          ParentFont = False
        end
        object Memo124: TfrxMemoView
          Left = 151.1812
          Top = 49.13389
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo125: TfrxMemoView
          Left = 170.07885
          Top = 71.81107
          Width = 582.04762
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."ShipmentAdvice1"]')
          ParentFont = False
        end
      end
      object MasterData6: TfrxMasterData
        Height = 22.67718
        Top = 525.35467
        Width = 770.646167
        DataSet = frxDBCetak
        DataSetName = 'frxDBCetak'
        RowCount = 0
        Stretched = True
        object Memo126: TfrxMemoView
          Left = 7.55906
          Width = 294.80334
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NamaBrgkom'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."NamaBrgkom"]')
          ParentFont = False
        end
        object Memo127: TfrxMemoView
          Left = 302.3624
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxDBCetak."Qty"> #n%2,2n] [frxDBCetak."Satuan"]')
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          Left = 502.67749
          Width = 249.44898
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'ShippingMark'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."ShippingMark"]')
          ParentFont = False
          SuppressRepeated = True
        end
      end
    end
    object Page6: TfrxReportPage
      PaperWidth = 215.9
      PaperHeight = 330.2
      PaperSize = 14
      LeftMargin = 6
      RightMargin = 6
      TopMargin = 45
      BottomMargin = 6
      object ReportTitle5: TfrxReportTitle
        Height = 374.17347
        Top = 18.89765
        Width = 770.646167
        Stretched = True
        object Memo129: TfrxMemoView
          Left = 209.5749385
          Width = 351.49629
          Height = 26.45671
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'SHIPMENT ADVICE')
          ParentFont = False
        end
        object Memo160: TfrxMemoView
          Left = 7.55906
          Top = 49.13389
          Width = 52.91342
          Height = 18.55405636
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'To')
          ParentFont = False
        end
        object Memo161: TfrxMemoView
          Left = 7.55906
          Top = 71.39875764
          Width = 370.39394
          Height = 41.98714236
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."ToShipmentAdvice2"]')
          ParentFont = False
        end
        object Rich5: TfrxRichView
          ShiftMode = smWhenOverlapped
          Left = 7.55906
          Top = 113.3859
          Width = 370.39394
          Height = 204.09462
          ShowHint = False
          StretchMode = smMaxHeight
          GapX = 2
          GapY = 1
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033337B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C204E6172726F773B7D7B5C66315C666E696C5C6663
            6861727365743020417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220
            4D7366746564697420352E34312E31352E313531363B7D5C766965776B696E64
            345C7563315C706172645C66305C667331382042757965725C7061720D0A5C70
            6172645C716A5C62205B6672784442436574616B2E224E616D61437573745375
            7070225D5C62305C7061720D0A5B6672784442436574616B2E22416C616D6174
            225D5C7061720D0A5C706172645C66692D3230305C6C693230305C716A205B66
            72784442436574616B2E224B6F7461225D5C7061720D0A5C706172645C716A5C
            62205B6672784442436574616B2E224E4547415241225D5C7061720D0A5C6230
            2054656C203A205B6672784442436574616B2E2254454C504F4E225D20466178
            203A205B6672784442436574616B2E22464158225D5C7061720D0A5C66315C66
            7332305C7061720D0A7D0D0A00}
        end
        object Memo96: TfrxMemoView
          Left = 389.29159
          Top = 68.03154
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Invoice No.')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 555.59091
          Top = 68.03154
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoBukti"]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 389.29159
          Top = 117.16543
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Our Ref No.')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          Left = 555.59091
          Top = 117.16543
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."ContractNo"]')
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          Left = 389.29159
          Top = 136.06308
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Your Ref No.')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          Left = 555.59091
          Top = 136.06308
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PONo"]')
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          ShiftMode = smDontShift
          Left = 555.59091
          Top = 86.92919
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Valas"] [<InvoiceValue>  #n%2,2n]')
          ParentFont = False
          WordWrap = False
        end
        object Memo108: TfrxMemoView
          Left = 389.29159
          Top = 86.92919
          Width = 117.16543
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Invoice Value')
          ParentFont = False
        end
        object Memo109: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 162.51979
          Width = 151.1812
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Payment Term ')
          ParentFont = False
        end
        object Memo131: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 181.41744
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Documentary Credit No.')
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          Left = 555.59091
          Top = 162.51979
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PaymentTerm"]')
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 181.41744
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoLC"]')
          ParentFont = False
        end
        object Memo134: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 230.55133
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Port of Loading')
          ParentFont = False
        end
        object Memo135: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 230.55133
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoL"]')
          ParentFont = False
        end
        object Memo136: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 253.22851
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Port of Discharge')
          ParentFont = False
        end
        object Memo137: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 253.22851
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoD"]')
          ParentFont = False
        end
        object Memo138: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 279.68522
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Name Of Vessel')
          ParentFont = False
        end
        object Memo139: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 317.48052
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Ship on Board Date')
          ParentFont = False
        end
        object Memo140: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 279.68522
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NameOfVessel"]')
          ParentFont = False
        end
        object Memo166: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 317.48052
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxDBCetak."Bulan"] [<frxDBCetak."ShipOnBoardDate">  #d dd, yyy' +
              'y]')
          ParentFont = False
        end
        object Memo167: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 355.27582
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Packing')
          ParentFont = False
        end
        object Memo168: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 355.27582
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBCetak."Packing"]')
          ParentFont = False
        end
        object Memo169: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 200.31509
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Issuing Bank of L/C')
          ParentFont = False
        end
        object Memo309: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 200.31509
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."IssuingBank"]')
          ParentFont = False
        end
        object Memo310: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 298.58287
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'B/L No. ')
          ParentFont = False
        end
        object Memo311: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 298.58287
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoBL"]')
          ParentFont = False
        end
        object Memo312: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 336.37817
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'ETA Destination               ')
          ParentFont = False
        end
        object Memo313: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 336.37817
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxDBCetak."Bulan"] [<frxDBCetak."ETADestination">  #d dd, yyyy' +
              ']')
          ParentFont = False
        end
        object Memo314: TfrxMemoView
          Left = 389.29159
          Top = 49.13389
          Width = 52.91342
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Date')
          ParentFont = False
        end
        object Memo315: TfrxMemoView
          Left = 555.59091
          Top = 49.13389
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Bulan"] [<frxDBCetak."Tanggal"> #dDD, YYYY]')
          ParentFont = False
        end
      end
      object Header5: TfrxHeader
        Height = 49.13389
        Top = 453.5436
        Width = 770.646167
        AllowSplit = True
        object Memo141: TfrxMemoView
          Left = 7.55906
          Top = 11.33859
          Width = 294.80334
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Description of Goods')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo142: TfrxMemoView
          Left = 302.3624
          Top = 11.33859
          Width = 196.53556
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Quantity')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo143: TfrxMemoView
          Left = 498.89796
          Top = 11.33859
          Width = 253.22851
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Shipping Mark')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary5: TfrxReportSummary
        Height = 291.02381
        Top = 604.7248
        Width = 770.646167
        Stretched = True
        object Memo144: TfrxMemoView
          Left = 7.55906
          Top = 60.47248
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Miscellaneous')
          ParentFont = False
        end
        object Memo145: TfrxMemoView
          Left = 113.3859
          Top = 60.47248
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo146: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 7.55906
          Top = 113.3859
          Width = 377.953
          Height = 158.74026
          ShowHint = False
          DataSet = DM.frxDBPerusahaan
          DataSetName = 'frxDBPerusahaan'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBPerusahaan."NAMA"]'
            'Kediri - Indonesia'
            ''
            ''
            ''
            ''
            ''
            '[frxDBPerusahaan."Direksi"]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 7.55906
          Width = 744.56741
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo147: TfrxMemoView
          Left = 128.50402
          Top = 3.77953
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."NetW">, MasterData7,2) #n%2,2n] Kgs')
          ParentFont = False
        end
        object Memo148: TfrxMemoView
          Left = 128.50402
          Top = 22.67718
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."GrossW">, MasterData7,2) #n%2,2n] Kgs')
          ParentFont = False
        end
        object Memo149: TfrxMemoView
          Left = 7.55906
          Top = 3.77953
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Total Net Weight')
          ParentFont = False
        end
        object Memo150: TfrxMemoView
          Left = 7.55906
          Top = 22.67718
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Total Gross Weight')
          ParentFont = False
        end
        object Memo151: TfrxMemoView
          Left = 113.3859
          Top = 3.77953
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo152: TfrxMemoView
          Left = 113.3859
          Top = 22.67718
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo153: TfrxMemoView
          Left = 132.28355
          Top = 41.57483
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."Meas">, MasterData7,2) #n%2,2n] M'#194#179)
          ParentFont = False
          WordWrap = False
        end
        object Memo154: TfrxMemoView
          Left = 7.55906
          Top = 41.57483
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Mesurement ')
          ParentFont = False
        end
        object Memo155: TfrxMemoView
          Left = 113.3859
          Top = 41.57483
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo156: TfrxMemoView
          Left = 132.28355
          Top = 60.47248
          Width = 582.04762
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."ShipmentAdvice2"]')
          ParentFont = False
        end
      end
      object MasterData7: TfrxMasterData
        Height = 18.89765
        Top = 525.35467
        Width = 770.646167
        DataSet = frxDBCetak
        DataSetName = 'frxDBCetak'
        RowCount = 0
        Stretched = True
        object Memo157: TfrxMemoView
          Left = 7.55906
          Width = 294.80334
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NamaBrgkom'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."NamaBrgkom"]')
          ParentFont = False
        end
        object Memo158: TfrxMemoView
          Left = 302.3624
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxDBCetak."Qty">  #n%2,2n] [frxDBCetak."Satuan"]')
          ParentFont = False
        end
        object Memo159: TfrxMemoView
          Left = 502.67749
          Width = 249.44898
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."ShippingMark"]')
          ParentFont = False
          SuppressRepeated = True
        end
      end
    end
    object Page7: TfrxReportPage
      PaperWidth = 215.9
      PaperHeight = 330.2
      PaperSize = 14
      LeftMargin = 6
      RightMargin = 6
      TopMargin = 45
      BottomMargin = 6
      object ReportTitle6: TfrxReportTitle
        Height = 374.17347
        Top = 18.89765
        Width = 770.646167
        Stretched = True
        object Memo130: TfrxMemoView
          Left = 209.5749385
          Width = 351.49629
          Height = 26.45671
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'BENEFICIARY CERTIFICATE')
          ParentFont = False
        end
        object Memo172: TfrxMemoView
          Left = 389.29159
          Top = 68.03154
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Invoice No.')
          ParentFont = False
        end
        object Memo173: TfrxMemoView
          Left = 555.59091
          Top = 68.03154
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoBukti"]')
          ParentFont = False
        end
        object Memo174: TfrxMemoView
          Left = 389.29159
          Top = 117.16543
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Our Ref No.')
          ParentFont = False
        end
        object Memo175: TfrxMemoView
          Left = 555.59091
          Top = 117.16543
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."ContractNo"]')
          ParentFont = False
        end
        object Memo176: TfrxMemoView
          Left = 389.29159
          Top = 136.06308
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Your Ref No.')
          ParentFont = False
        end
        object Memo177: TfrxMemoView
          Left = 555.59091
          Top = 136.06308
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PONo"]')
          ParentFont = False
        end
        object Memo178: TfrxMemoView
          ShiftMode = smDontShift
          Left = 555.59091
          Top = 86.92919
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Valas"] [<InvoiceValue>  #n%2,2n]')
          ParentFont = False
          WordWrap = False
        end
        object Memo179: TfrxMemoView
          Left = 389.29159
          Top = 86.92919
          Width = 117.16543
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Invoice Value')
          ParentFont = False
        end
        object Memo180: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 162.51979
          Width = 151.1812
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Payment Term ')
          ParentFont = False
        end
        object Memo181: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 181.41744
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Documentary Credit No.')
          ParentFont = False
        end
        object Memo182: TfrxMemoView
          Left = 555.59091
          Top = 162.51979
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PaymentTerm"]')
          ParentFont = False
        end
        object Memo316: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 181.41744
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoLC"]')
          ParentFont = False
        end
        object Memo317: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 230.55133
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Port of Loading')
          ParentFont = False
        end
        object Memo318: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 230.55133
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoL"]')
          ParentFont = False
        end
        object Memo319: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 253.22851
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Port of Discharge')
          ParentFont = False
        end
        object Memo320: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 253.22851
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoD"]')
          ParentFont = False
        end
        object Memo321: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 279.68522
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Name Of Vessel')
          ParentFont = False
        end
        object Memo322: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 317.48052
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Ship on Board Date')
          ParentFont = False
        end
        object Memo323: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 279.68522
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NameOfVessel"]')
          ParentFont = False
        end
        object Memo324: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 317.48052
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxDBCetak."Bulan"] [<frxDBCetak."ShipOnBoardDate">  #d dd, yyy' +
              'y]')
          ParentFont = False
        end
        object Memo325: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 355.27582
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Packing')
          ParentFont = False
        end
        object Memo326: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 355.27582
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBCetak."Packing"]')
          ParentFont = False
        end
        object Memo327: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 200.31509
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Issuing Bank of L/C')
          ParentFont = False
        end
        object Memo328: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 200.31509
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."IssuingBank"]')
          ParentFont = False
        end
        object Memo329: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 298.58287
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'B/L No. ')
          ParentFont = False
        end
        object Memo330: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 298.58287
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoBL"]')
          ParentFont = False
        end
        object Memo331: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 336.37817
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'ETA Destination               ')
          ParentFont = False
        end
        object Memo332: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 336.37817
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxDBCetak."Bulan"] [<frxDBCetak."ETADestination">  #d dd, yyyy' +
              ']')
          ParentFont = False
        end
        object Memo333: TfrxMemoView
          Left = 389.29159
          Top = 49.13389
          Width = 52.91342
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Date')
          ParentFont = False
        end
        object Memo334: TfrxMemoView
          Left = 555.59091
          Top = 49.13389
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Bulan"] [<frxDBCetak."Tanggal"> #dDD, YYYY]')
          ParentFont = False
        end
        object Rich6: TfrxRichView
          ShiftMode = smWhenOverlapped
          Left = 7.55906
          Top = 49.13389
          Width = 347.71676
          Height = 204.09462
          ShowHint = False
          StretchMode = smMaxHeight
          GapX = 2
          GapY = 1
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033337B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C204E6172726F773B7D7B5C66315C666E696C5C6663
            6861727365743020417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220
            4D7366746564697420352E34312E31352E313531363B7D5C766965776B696E64
            345C7563315C706172645C66305C6673313820546F5C7061720D0A5C70617264
            5C716A5C62205B6672784442436574616B2E224E616D61437573745375707022
            5D5C62305C7061720D0A5B6672784442436574616B2E22416C616D6174225D5C
            7061720D0A5C706172645C66692D3230305C6C693230305C716A205B66727844
            42436574616B2E224B6F7461225D5C7061720D0A5C706172645C716A5C62205B
            6672784442436574616B2E224E4547415241225D5C7061720D0A5C6230205465
            6C203A205B6672784442436574616B2E2254454C504F4E225D20466178203A20
            5B6672784442436574616B2E22464158225D5C7061720D0A5C66315C66733230
            5C7061720D0A7D0D0A00}
        end
      end
      object Header6: TfrxHeader
        Height = 49.13389
        Top = 453.5436
        Width = 770.646167
        AllowSplit = True
        object Memo183: TfrxMemoView
          Left = 7.55906
          Top = 11.33859
          Width = 294.80334
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Description of Goods')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo184: TfrxMemoView
          Left = 302.3624
          Top = 11.33859
          Width = 196.53556
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Quantity')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo185: TfrxMemoView
          Left = 498.89796
          Top = 11.33859
          Width = 253.22851
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Shipping Mark')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary6: TfrxReportSummary
        Height = 268.34663
        Top = 608.50433
        Width = 770.646167
        Stretched = True
        object Memo186: TfrxMemoView
          Left = 7.55906
          Top = 60.47248
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Miscellaneous')
          ParentFont = False
        end
        object Memo187: TfrxMemoView
          Left = 151.1812
          Top = 60.47248
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo188: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 7.55906
          Top = 109.60637
          Width = 377.953
          Height = 158.74026
          ShowHint = False
          DataSet = DM.frxDBPerusahaan
          DataSetName = 'frxDBPerusahaan'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBPerusahaan."NAMA"]'
            'Kediri - Indonesia'
            ''
            ''
            ''
            ''
            ''
            '[frxDBPerusahaan."Direksi"]')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 7.55906
          Width = 744.56741
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo189: TfrxMemoView
          Left = 166.29932
          Top = 3.77953
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."NetW">, MasterData8,2)  #n%2,2n] Kgs')
          ParentFont = False
        end
        object Memo190: TfrxMemoView
          Left = 166.29932
          Top = 22.67718
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."GrossW">, MasterData8,2) #n%2,2n] Kgs')
          ParentFont = False
        end
        object Memo191: TfrxMemoView
          Left = 7.55906
          Top = 3.77953
          Width = 132.28355
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Total Net Weight')
          ParentFont = False
        end
        object Memo192: TfrxMemoView
          Left = 7.55906
          Top = 22.67718
          Width = 132.28355
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Total Gross Weight')
          ParentFont = False
        end
        object Memo193: TfrxMemoView
          Left = 151.1812
          Top = 3.77953
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo194: TfrxMemoView
          Left = 151.1812
          Top = 22.67718
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo195: TfrxMemoView
          Left = 170.07885
          Top = 41.57483
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."Meas">, MasterData8,2)  #n%2,2n] M'#194#179)
          ParentFont = False
          WordWrap = False
        end
        object Memo196: TfrxMemoView
          Left = 7.55906
          Top = 41.57483
          Width = 136.06308
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Mesurement ')
          ParentFont = False
        end
        object Memo197: TfrxMemoView
          Left = 151.1812
          Top = 41.57483
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo198: TfrxMemoView
          Left = 170.07885
          Top = 60.47248
          Width = 582.04762
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoteBeneficiary2"]')
          ParentFont = False
        end
      end
      object MasterData8: TfrxMasterData
        Height = 22.67718
        Top = 525.35467
        Width = 770.646167
        DataSet = frxDBCetak
        DataSetName = 'frxDBCetak'
        RowCount = 0
        Stretched = True
        object Memo199: TfrxMemoView
          Left = 7.55906
          Width = 294.80334
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NamaBrgkom'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."NamaBrgkom"]')
          ParentFont = False
        end
        object Memo200: TfrxMemoView
          Left = 302.3624
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxDBCetak."Qty">  #n%2,2n] [frxDBCetak."Satuan"]')
          ParentFont = False
        end
        object Memo201: TfrxMemoView
          Left = 502.67749
          Width = 249.44898
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."ShippingMark"]')
          ParentFont = False
          SuppressRepeated = True
        end
      end
    end
    object Page8: TfrxReportPage
      PaperWidth = 215.9
      PaperHeight = 330.2
      PaperSize = 14
      LeftMargin = 6
      RightMargin = 6
      TopMargin = 45
      BottomMargin = 6
      object ReportTitle7: TfrxReportTitle
        Height = 374.17347
        Top = 18.89765
        Width = 770.646167
        Stretched = True
        object Memo17: TfrxMemoView
          Left = 209.5749385
          Width = 351.49629
          Height = 26.45671
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'BENEFICIARY CERTIFICATE')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 389.29159
          Top = 68.03154
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Invoice No.')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 555.59091
          Top = 68.03154
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoBukti"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 389.29159
          Top = 117.16543
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Our Ref No.')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 555.59091
          Top = 117.16543
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."ContractNo"]')
          ParentFont = False
        end
        object Memo170: TfrxMemoView
          Left = 389.29159
          Top = 136.06308
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Your Ref No.')
          ParentFont = False
        end
        object Memo171: TfrxMemoView
          Left = 555.59091
          Top = 136.06308
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PONo"]')
          ParentFont = False
        end
        object Memo202: TfrxMemoView
          ShiftMode = smDontShift
          Left = 555.59091
          Top = 86.92919
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Valas"] [<InvoiceValue>  #n%2,2n]')
          ParentFont = False
          WordWrap = False
        end
        object Memo203: TfrxMemoView
          Left = 389.29159
          Top = 86.92919
          Width = 117.16543
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Invoice Value')
          ParentFont = False
        end
        object Memo204: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 162.51979
          Width = 151.1812
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Payment Term ')
          ParentFont = False
        end
        object Memo205: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 181.41744
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Documentary Credit No.')
          ParentFont = False
        end
        object Memo206: TfrxMemoView
          Left = 555.59091
          Top = 162.51979
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PaymentTerm"]')
          ParentFont = False
        end
        object Memo207: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 181.41744
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoLC"]')
          ParentFont = False
        end
        object Memo208: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 230.55133
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Port of Loading')
          ParentFont = False
        end
        object Memo209: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 230.55133
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoL"]')
          ParentFont = False
        end
        object Memo210: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 253.22851
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Port of Discharge')
          ParentFont = False
        end
        object Memo335: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 253.22851
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."PoD"]')
          ParentFont = False
        end
        object Memo336: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 279.68522
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Name Of Vessel')
          ParentFont = False
        end
        object Memo337: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 317.48052
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Ship on Board Date')
          ParentFont = False
        end
        object Memo338: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 279.68522
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NameOfVessel"]')
          ParentFont = False
        end
        object Memo339: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 317.48052
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxDBCetak."Bulan"] [<frxDBCetak."ShipOnBoardDate">  #d dd, yyy' +
              'y]')
          ParentFont = False
        end
        object Memo340: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 355.27582
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Packing')
          ParentFont = False
        end
        object Memo341: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 355.27582
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBCetak."Packing"]')
          ParentFont = False
        end
        object Memo342: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 200.31509
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Issuing Bank of L/C')
          ParentFont = False
        end
        object Memo343: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 200.31509
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."IssuingBank"]')
          ParentFont = False
        end
        object Memo344: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 298.58287
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'B/L No. ')
          ParentFont = False
        end
        object Memo345: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 298.58287
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoBL"]')
          ParentFont = False
        end
        object Memo346: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 389.29159
          Top = 336.37817
          Width = 185.19697
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'ETA Destination               ')
          ParentFont = False
        end
        object Memo347: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 555.59091
          Top = 336.37817
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxDBCetak."Bulan"] [<frxDBCetak."ETADestination">  #d dd, yyyy' +
              ']')
          ParentFont = False
        end
        object Memo348: TfrxMemoView
          Left = 389.29159
          Top = 49.13389
          Width = 52.91342
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Date')
          ParentFont = False
        end
        object Memo349: TfrxMemoView
          Left = 555.59091
          Top = 49.13389
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."Bulan"] [<frxDBCetak."Tanggal"> #dDD, YYYY]')
          ParentFont = False
        end
        object Rich7: TfrxRichView
          ShiftMode = smWhenOverlapped
          Left = 7.55906
          Top = 49.13389
          Width = 347.71676
          Height = 204.09462
          ShowHint = False
          StretchMode = smMaxHeight
          GapX = 2
          GapY = 1
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033337B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C204E6172726F773B7D7B5C66315C666E696C5C6663
            6861727365743020417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220
            4D7366746564697420352E34312E31352E313531363B7D5C766965776B696E64
            345C7563315C706172645C66305C6673313820546F5C7061720D0A5C70617264
            5C716A5C62205B6672784442436574616B2E224E616D61437573745375707022
            5D5C62305C7061720D0A5B6672784442436574616B2E22416C616D6174225D5C
            7061720D0A5C706172645C66692D3230305C6C693230305C716A205B66727844
            42436574616B2E224B6F7461225D5C7061720D0A5C706172645C716A5C62205B
            6672784442436574616B2E224E4547415241225D5C7061720D0A5C6230205465
            6C203A205B6672784442436574616B2E2254454C504F4E225D20466178203A20
            5B6672784442436574616B2E22464158225D5C7061720D0A5C66315C66733230
            5C7061720D0A7D0D0A00}
        end
      end
      object Header7: TfrxHeader
        Height = 49.13389
        Top = 453.5436
        Width = 770.646167
        AllowSplit = True
        object Memo211: TfrxMemoView
          Left = 7.55906
          Top = 11.33859
          Width = 294.80334
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Description of Goods')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo212: TfrxMemoView
          Left = 302.3624
          Top = 11.33859
          Width = 196.53556
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Quantity')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo213: TfrxMemoView
          Left = 498.89796
          Top = 11.33859
          Width = 253.22851
          Height = 37.7953
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Shipping Mark')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary7: TfrxReportSummary
        Height = 291.02381
        Top = 608.50433
        Width = 770.646167
        Stretched = True
        object Memo214: TfrxMemoView
          Left = 7.55906
          Top = 60.47248
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Miscellaneous')
          ParentFont = False
        end
        object Memo215: TfrxMemoView
          Left = 151.1812
          Top = 60.47248
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo216: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 7.55906
          Top = 105.82684
          Width = 377.953
          Height = 158.74026
          ShowHint = False
          DataSet = DM.frxDBPerusahaan
          DataSetName = 'frxDBPerusahaan'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBPerusahaan."NAMA"]'
            'Kediri - Indonesia'
            ''
            ''
            ''
            ''
            ''
            '[frxDBPerusahaan."Direksi"]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 7.55906
          Width = 744.56741
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo217: TfrxMemoView
          Left = 166.29932
          Top = 3.77953
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."NetW">, MasterData8,2) #n%2,2n] Kgs')
          ParentFont = False
        end
        object Memo218: TfrxMemoView
          Left = 166.29932
          Top = 22.67718
          Width = 98.26778
          Height = 18.89765
          ShowHint = False
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."GrossW">, MasterData8,2) #n%2,2n] Kgs')
          ParentFont = False
        end
        object Memo219: TfrxMemoView
          Left = 7.55906
          Top = 3.77953
          Width = 132.28355
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Total Net Weight')
          ParentFont = False
        end
        object Memo220: TfrxMemoView
          Left = 7.55906
          Top = 22.67718
          Width = 132.28355
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Total Gross Weight')
          ParentFont = False
        end
        object Memo221: TfrxMemoView
          Left = 151.1812
          Top = 3.77953
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo222: TfrxMemoView
          Left = 151.1812
          Top = 22.67718
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo223: TfrxMemoView
          Left = 170.07885
          Top = 41.57483
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<frxDBCetak."Meas">, MasterData8,2)  #n%2,2n] M'#194#179)
          ParentFont = False
          WordWrap = False
        end
        object Memo224: TfrxMemoView
          Left = 7.55906
          Top = 41.57483
          Width = 136.06308
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            'Mesurement ')
          ParentFont = False
        end
        object Memo225: TfrxMemoView
          Left = 151.1812
          Top = 41.57483
          Width = 7.55906
          Height = 18.89765
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo226: TfrxMemoView
          Left = 170.07885
          Top = 60.47248
          Width = 582.04762
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NoteBeneficiary3"]')
          ParentFont = False
        end
      end
      object MasterData9: TfrxMasterData
        Height = 22.67718
        Top = 525.35467
        Width = 770.646167
        DataSet = frxDBCetak
        DataSetName = 'frxDBCetak'
        RowCount = 0
        Stretched = True
        object Memo227: TfrxMemoView
          Left = 7.55906
          Width = 294.80334
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NamaBrgkom'
          DataSet = frxDBCetak
          DataSetName = 'frxDBCetak'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."NamaBrgkom"]')
          ParentFont = False
        end
        object Memo228: TfrxMemoView
          Left = 302.3624
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxDBCetak."Qty">  #n%2,2n] [frxDBCetak."Satuan"]')
          ParentFont = False
        end
        object Memo229: TfrxMemoView
          Left = 502.67749
          Width = 249.44898
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrMainInvoiceRPJ.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            '[frxDBCetak."ShippingMark"]')
          ParentFont = False
          SuppressRepeated = True
        end
      end
    end
  end
  object frxDBCetak: TfrxDBDataset
    UserName = 'frxDBCetak'
    CloseDataSource = False
    DataSet = QuUpdatedbBeli
    BCDToCurrency = False
    Left = 1160
    Top = 8
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NoBukti=NoBukti'
      'Urut=Urut'
      'Keterangan=Keterangan'
      'KodeVls=KodeVls'
      'Kurs=Kurs'
      'Harga=Harga'
      'NNet=NNet')
    BCDToCurrency = False
    Left = 1160
    Top = 40
  end
  object frxRichObject1: TfrxRichObject
    Left = 1128
    Top = 40
  end
  object QuBeli1: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 60
    Parameters = <>
    SQL.Strings = (
      'declare @NoBukti varchar(30)'
      ''
      'select '#9'@NoBukti='#39'VSM/092009/00001/PNJ'#39
      ''
      
        'Select A.NoBukti, B.Urut, B.Keterangan, B.KodeVls, B.Kurs, B.Har' +
        'ga, B.NNet'
      'From dbInvoicePL A'
      
        '     left outer join dbInvoicePLLampiran B on B.Nobukti=A.Nobukt' +
        'i'
      'where A.NoBukti=@nobukti'
      'Order by B.Urut'
      '')
    Left = 1211
    Top = 16
    object QuBeli1NoBukti: TStringField
      FieldName = 'NoBukti'
      Size = 30
    end
    object QuBeli1Urut: TIntegerField
      FieldName = 'Urut'
    end
    object QuBeli1Keterangan: TStringField
      FieldName = 'Keterangan'
      Size = 8000
    end
    object QuBeli1KodeVls: TStringField
      FieldName = 'KodeVls'
      Size = 15
    end
    object QuBeli1Kurs: TBCDField
      FieldName = 'Kurs'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeli1Harga: TBCDField
      FieldName = 'Harga'
      Precision = 18
      Size = 2
    end
    object QuBeli1NNet: TBCDField
      FieldName = 'NNet'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 571
    Top = 183
    object INVOICE1: TMenuItem
      Caption = 'INVOICE'
      OnClick = INVOICE1Click
    end
    object KWITANSI1: TMenuItem
      Caption = 'KWITANSI'
      OnClick = KWITANSI1Click
    end
    object ANDATERIMA1: TMenuItem
      Caption = 'TANDA TERIMA'
      OnClick = ANDATERIMA1Click
    end
  end
end
