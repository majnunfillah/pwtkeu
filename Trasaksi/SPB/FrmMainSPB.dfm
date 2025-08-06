object FrMainSPB: TFrMainSPB
  Left = 179
  Top = 67
  Width = 1011
  Height = 635
  Caption = 'Surat Jalan'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1003
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 1003
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
        Caption = '&Close'
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
        Caption = 'Otorisasi'
        ImageIndex = 15
        OnClick = ToolButton4Click
      end
      object ToolButton12: TToolButton
        Left = 762
        Top = 0
        Caption = 'Batal Otorisasi'
        ImageIndex = 16
        OnClick = ToolButton12Click
      end
      object ToolButton13: TToolButton
        Left = 851
        Top = 0
        Caption = 'Batal'
        ImageIndex = 6
        OnClick = ToolButton13Click
      end
    end
  end
  object dxPageControl1: TdxPageControl
    Left = 0
    Top = 48
    Width = 1003
    Height = 553
    ActivePage = dxTOSOP
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
    object dxTOSOP: TdxTabSheet
      Caption = 'Surat Perintah Pengiriman'
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 1003
        Height = 527
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        RootLevelOptions.DetailTabsPosition = dtpTop
        object tvMasterOut: TcxGridDBBandedTableView
          DataController.DataSource = DsDet1
          DataController.DetailKeyFieldNames = 'Nobukti'
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.KeyFieldNames = 'Nobukti'
          DataController.MasterKeyFieldNames = 'Nobukti'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
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
              FixedKind = fkLeft
            end
            item
            end
            item
              Caption = 'Kuantum'
            end>
          object tvMasterOutNobukti: TcxGridDBBandedColumn
            Caption = 'No. Bukti'
            DataBinding.FieldName = 'Nobukti'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 121
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvMasterOutTanggal: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Tanggal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 77
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvMasterOutTglKirim: TcxGridDBBandedColumn
            Caption = 'Tanggal Kirim'
            DataBinding.FieldName = 'TglKirim'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 77
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvMasterOutKodeCustSupp: TcxGridDBBandedColumn
            DataBinding.FieldName = 'KodeCustSupp'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvMasterOutNamaCustSupp: TcxGridDBBandedColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'NamaCustSupp'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 151
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvMasterOuturut: TcxGridDBBandedColumn
            DataBinding.FieldName = 'urut'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvMasterOutkodebrg: TcxGridDBBandedColumn
            Caption = 'Kode Barang'
            DataBinding.FieldName = 'kodebrg'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 84
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tvMasterOutNamaBrg: TcxGridDBBandedColumn
            Caption = 'Nama Barang'
            DataBinding.FieldName = 'NamaBrg'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 200
            Position.BandIndex = 1
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tvMasterOutIsi: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Isi'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object tvMasterOutSat_1: TcxGridDBBandedColumn
            Caption = 'Sat'
            DataBinding.FieldName = 'Satuan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvMasterOutQntSPP: TcxGridDBBandedColumn
            Caption = 'SPP'
            DataBinding.FieldName = 'Qnt'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvMasterOutQnt: TcxGridDBBandedColumn
            Caption = 'SPB'
            DataBinding.FieldName = 'QntSPB'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvMasterOutQntSisa: TcxGridDBBandedColumn
            Caption = 'Sisa'
            DataBinding.FieldName = 'QntSisa'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tvMasterOutQntStock: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QntStock'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 2
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
        end
        object tvMasterOut1: TcxGridDBBandedTableView
          DataController.DataSource = DSMaster2
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
          Styles.StyleSheet = DM.cxGridBandStyleHd
          Styles.Header = DM.cxStyle8
          Styles.BandHeader = DM.cxStyle8
          Bands = <
            item
              FixedKind = fkLeft
            end
            item
            end
            item
              Caption = 'Kuantum'
            end>
          object tvMasterOut1Nobukti: TcxGridDBBandedColumn
            Caption = 'No. Bukti'
            DataBinding.FieldName = 'Nobukti'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 121
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvMasterOut1Tanggal: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Tanggal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 77
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvMasterOut1TglKirim: TcxGridDBBandedColumn
            Caption = 'Tanggal Kirim'
            DataBinding.FieldName = 'TglKirim'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 77
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvMasterOut1NamaCustSupp: TcxGridDBBandedColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'NamaCustSupp'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 151
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvMasterOut1kodebrg: TcxGridDBBandedColumn
            Caption = 'Kode Barang'
            DataBinding.FieldName = 'kodebrg'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 84
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvMasterOut1NamaBrg: TcxGridDBBandedColumn
            Caption = 'Nama Barang'
            DataBinding.FieldName = 'NamaBrg'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 200
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvMasterOut1Sat_1: TcxGridDBBandedColumn
            Caption = 'Sat'
            DataBinding.FieldName = 'Sat_1'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvMasterOut1QntSPP: TcxGridDBBandedColumn
            Caption = 'SPP'
            DataBinding.FieldName = 'Qnt'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvMasterOut1QntSPB: TcxGridDBBandedColumn
            Caption = 'SPB'
            DataBinding.FieldName = 'QntSPB'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvMasterOut1QntSisa: TcxGridDBBandedColumn
            Caption = 'Sisa'
            DataBinding.FieldName = 'QntSisa'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tvMasterOut1QntStock: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QntStock'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
            Position.BandIndex = 2
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
        end
        object cxGrid3DBOSPP: TcxGridDBBandedTableView
          DataController.DataSource = DsMaster
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OnFocusedRecordChanged = cxGrid3DBOSPPFocusedRecordChanged
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          Styles.Background = DM.cxStyle2
          Styles.StyleSheet = DM.cxGridBandStyleHd
          Styles.Content = DM.cxStyle3
          Styles.ContentEven = DM.cxStyle4
          Styles.ContentOdd = DM.cxStyle5
          Styles.Inactive = DM.cxStyle7
          Styles.Selection = DM.cxStyle8
          Styles.Footer = DM.cxStyle6
          Styles.Header = DM.cxStyle8
          Styles.BandBackground = DM.cxStyle2
          Styles.BandHeader = DM.cxStyle8
          Bands = <
            item
            end>
          object cxGrid3DBOSPPNobukti: TcxGridDBBandedColumn
            Caption = 'Nomor Bukti'
            DataBinding.FieldName = 'Nobukti'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 161
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid3DBOSPPTanggal: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Tanggal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid3DBOSPPKodeCUstSupp: TcxGridDBBandedColumn
            DataBinding.FieldName = 'KodeCustSupp'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid3DBOSNamaCustSupp: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NAMACUSTSUPP'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 415
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid3DBOSPPDBBandedColumn1: TcxGridDBBandedColumn
            Caption = 'No SO'
            DataBinding.FieldName = 'Noso'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 159
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object cxGridLevel3_0: TcxGridLevel
          Caption = 'Out Standing Perintah Kirim Belum Cetak Kitir'
          GridView = cxGrid3DBOSPP
          object cxGrid3Level1: TcxGridLevel
            GridView = tvMasterOut
          end
        end
        object cxGridLevel3_1: TcxGridLevel
          Caption = 'Out Standing Perintah Kirim Sudah Cetak Kitir'
          GridView = tvMasterOut1
        end
      end
    end
    object dxTSBP: TdxTabSheet
      Caption = 'Surat Jalan'
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1003
        Height = 527
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        object tvMaster: TcxGridDBBandedTableView
          DataController.DataSource = DsMasterBP
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
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
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          OptionsView.FixedBandSeparatorWidth = 1
          Styles.StyleSheet = DM.cxGridBandStyleHd
          Styles.Header = DM.cxStyle8
          Styles.BandHeader = DM.cxStyle8
          Bands = <
            item
              Hidden = True
            end
            item
              Caption = 'Otorisasi'
            end
            item
              Caption = 'Pembatalan'
            end>
          object tvMasterNOBUKTI: TcxGridDBBandedColumn
            Caption = 'No. Bukti'
            DataBinding.FieldName = 'NOBUKTI'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 140
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvMasterTANGGAL: TcxGridDBBandedColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'TANGGAL'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvMasterNOSC: TcxGridDBBandedColumn
            Caption = 'No. SPP'
            DataBinding.FieldName = 'NOSPP'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 140
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvMasterKODECUSTSUPP: TcxGridDBBandedColumn
            Caption = 'Kode Supplier'
            DataBinding.FieldName = 'KODECUSTSUPP'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tvMasterNamaCustSupp: TcxGridDBBandedColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'NamaCustSupp'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 250
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tvMasterDBBandedColumn4: TcxGridDBBandedColumn
            Caption = 'No Jurnal'
            DataBinding.FieldName = 'nojurnal'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object tvMasterNoPesan: TcxGridDBBandedColumn
            Caption = 'No. Pesanan'
            DataBinding.FieldName = 'NoPesan'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 140
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tvMasterTglKirim: TcxGridDBBandedColumn
            Caption = 'Hari/ Tanggal'
            DataBinding.FieldName = 'TglKirim'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 120
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object tvMasterNoLC: TcxGridDBBandedColumn
            Caption = 'No. LC'
            DataBinding.FieldName = 'NoLC'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 140
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object tvMasterShippingMark: TcxGridDBBandedColumn
            Caption = 'Shipping Mark'
            DataBinding.FieldName = 'ShippingMark'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 200
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object tvMasterCatatan: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Catatan'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 300
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object tvMasterIDUser: TcxGridDBBandedColumn
            Caption = 'User'
            DataBinding.FieldName = 'IDUser'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object tvMasterTipe: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Tipe'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object tvMasterMyTipe: TcxGridDBBandedColumn
            Caption = 'SPB'
            DataBinding.FieldName = 'MyTipe'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object tvMasterIsOtorisasi1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IsOtorisasi1'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvMasterOtoUser1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OtoUser1'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvMasterTglOto1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TglOto1'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvMasterIsOtorisasi2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IsOtorisasi2'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tvMasterOtoUser2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OtoUser2'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 1
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tvMasterTglOto2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TglOto2'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 1
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tvMasterIsOtorisasi3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IsOtorisasi3'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 1
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object tvMasterOtoUser3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OtoUser3'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 1
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object tvMasterTglOto3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TglOto3'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 1
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object tvMasterIsOtorisasi4: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IsOtorisasi4'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 1
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object tvMasterOtoUser4: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OtoUser4'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 1
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object tvMasterTglOto4: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TglOto4'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 1
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object tvMasterIsOtorisasi5: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IsOtorisasi5'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 1
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object tvMasterOtoUser5: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OtoUser5'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 1
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object tvMasterTglOto5: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TglOto5'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 1
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object tvMasterDBBandedColumn1: TcxGridDBBandedColumn
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
          object tvMasterDBBandedColumn2: TcxGridDBBandedColumn
            Caption = 'User Batal'
            DataBinding.FieldName = 'Userbatal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvMasterDBBandedColumn3: TcxGridDBBandedColumn
            Caption = 'Tgl Batal'
            DataBinding.FieldName = 'Tglbatal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
        end
        object tvDetail: TcxGridDBBandedTableView
          DataController.DataSource = DsDetailBP
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
              Visible = False
            end>
          object tvDetailNOBUKTI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOBUKTI'
            Visible = False
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object tvDetailURUT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'URUT'
            Visible = False
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object tvDetailKODEBRG: TcxGridDBBandedColumn
            Caption = 'Kode Barang'
            DataBinding.FieldName = 'KODEBRG'
            HeaderAlignmentVert = vaCenter
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvDetailNamaBrg: TcxGridDBBandedColumn
            Caption = 'Nama Barang'
            DataBinding.FieldName = 'NamaBrg'
            HeaderAlignmentVert = vaCenter
            Width = 200
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvDetailJns_Kertas: TcxGridDBBandedColumn
            Caption = 'Jenis Kertas'
            DataBinding.FieldName = 'Jns_Kertas'
            Visible = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvDetailUkr_Kertas: TcxGridDBBandedColumn
            Caption = 'Ukuran Kertas'
            DataBinding.FieldName = 'Ukr_Kertas'
            Visible = False
            Width = 150
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tvDetailQNT2: TcxGridDBBandedColumn
            Caption = 'QNT'
            DataBinding.FieldName = 'QNT2'
            HeaderAlignmentHorz = taRightJustify
            HeaderAlignmentVert = vaCenter
            Width = 70
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvDetailSAT_2: TcxGridDBBandedColumn
            Caption = 'Sat'
            DataBinding.FieldName = 'SAT_2'
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvDetailQNT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QNT'
            HeaderAlignmentHorz = taRightJustify
            HeaderAlignmentVert = vaCenter
            Width = 70
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvDetailSAT_1: TcxGridDBBandedColumn
            Caption = 'Sat'
            DataBinding.FieldName = 'SAT_1'
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvDetailISI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ISI'
            Visible = False
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object tvDetailKetDetail: TcxGridDBBandedColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'KetDetail'
            Visible = False
            Width = 300
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object tvDetailNetW: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NetW'
            Visible = False
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object tvDetailGrossW: TcxGridDBBandedColumn
            DataBinding.FieldName = 'GrossW'
            Visible = False
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
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
  object QuMaster: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'declare @Tahun int, @Bulan int, @FlagMenu int, @Periode Varchar(' +
        '20)'
      ''
      'select @Tahun=2012, @Bulan=7, @Flagmenu=0'
      ''
      
        'Select @Periode=Cast(@tahun as varchar(4))+Case when @bulan<10 t' +
        'hen '#39'0'#39' else '#39#39' end+Cast(@bulan as varchar(2))'
      ''
      'Select  '
      
        'distinct(A.Nobukti) Nobukti, S.NAMACUSTSUPP,P.Tanggal,P.KodeCust' +
        'Supp ,Noso'
      'From    vwBrowsOutSPP A'
      'Left Outer Join dbSPP P on P.NoBukti=A.NoBukti'
      'Left Outer Join DBCUSTSUPP S on S.KODECUSTSUPP=P.KodeCustSupp '
      'where A.isclose=0 and A.IsCetakKitir=0 and p.isotorisasi1=1 and'
      
        '      cast(year(P.Tanggal) as varchar(4))+Case when month(P.tang' +
        'gal)<10 then '#39'0'#39' else '#39#39' end+Cast(month(P.Tanggal) as varchar(2)' +
        ')<=@Periode'
      ''
      '')
    Left = 352
    Top = 232
    object QuMasterNobukti: TStringField
      FieldName = 'Nobukti'
      Size = 30
    end
    object QuMasterNAMACUSTSUPP: TStringField
      FieldName = 'NAMACUSTSUPP'
      Size = 100
    end
    object QuMasterTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuMasterKodeCustSupp: TStringField
      FieldName = 'KodeCustSupp'
      Size = 15
    end
    object QuMasterNoso: TStringField
      FieldName = 'Noso'
      Size = 30
    end
  end
  object DsMaster: TDataSource
    DataSet = QuMaster
    Left = 384
    Top = 232
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
    Left = 339
    Top = 97
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
    Left = 367
    Top = 96
  end
  object QuMasterBP: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @Tahun int, @Bulan int'
      ''
      'select @Tahun=2012, @Bulan=7'
      ''
      
        'select  distinct A.NOBUKTI, A.NOURUT, A.TANGGAL, A.NOSPP, A.KODE' +
        'CUSTSUPP, M1.NamaCustSupp,'
      
        '        A.NoPolKend, A.Container, A.NoContainer, A.NoSeal, A.Cat' +
        'atan, A.IDUser, A.IsFlag Tipe,'
      '        --E.Nobukti Noso,'
      '        D.NoBukti NoSPP, '
      '        Case when A.isFlag=0 then '#39'SPB Barang Jadi'#39
      '             when A.isFlag=1 then '#39'SPB Bahan Baku dan Lain-lain'#39
      '             else '#39#39
      '        end MyTipe,'
      '        A.IsOtorisasi1, A.OtoUser1, A.TglOto1,'
      '        A.IsOtorisasi2, A.OtoUser2, A.TglOto2,'
      '        A.IsOtorisasi3, A.OtoUser3, A.TglOto3,'
      '        A.IsOtorisasi4, A.OtoUser4, A.TglOto4,'
      '        A.IsOtorisasi5, A.OtoUser5, A.TglOto5,'
      
        '        Cast(Case when Case when A.IsOtorisasi1=1 then 1 else 0 ' +
        'end+'
      
        '                       Case when A.IsOtorisasi2=1 then 1 else 0 ' +
        'end+'
      
        '                       Case when A.IsOtorisasi3=1 then 1 else 0 ' +
        'end+'
      
        '                       Case when A.IsOtorisasi4=1 then 1 else 0 ' +
        'end+'
      
        '                       Case when A.IsOtorisasi5=1 then 1 else 0 ' +
        'end=A.MaxOL then 0'
      '                  else 1'
      '             end As Bit) NeedOtorisasi'
      
        '        ,Isnull(A.Isbatal,0) Isbatal,A.Userbatal,A.Tglbatal,a.no' +
        'jurnal'
      'from'#9'dbSPB A'
      'Left Outer join (Select nobukti, nospp'
      '                 from dbSPBDet'
      
        '                 Group by nobukti, nospp) C on C.NoBukti=A.NoBuk' +
        'ti'
      'Left Outer join (Select nobukti, NoSO'
      '                 from dbSPPDet'
      '                 Group by nobukti, NoSO) D on D.NoBukti=C.NoSPP'
      'Left Outer join DBSO E on E.NOBUKTI=D.NoSO'
      
        'left outer join vwBrowsCustomer B on B.KodeCust=A.KodeCustSupp a' +
        'nd B.Sales=E.KODESLS'
      'Left OUter Join DbCustSupp M1 On A.kodeCustSupp=m1.KodeCustSupp'
      'where'#9'year(A.Tanggal)=@Tahun and month(A.Tanggal)=@Bulan'
      'order by A.NoBukti')
    Left = 24
    Top = 248
    object QuMasterBPNOBUKTI: TStringField
      FieldName = 'NOBUKTI'
      Size = 30
    end
    object QuMasterBPNOURUT: TStringField
      FieldName = 'NOURUT'
      Size = 7
    end
    object QuMasterBPTANGGAL: TDateTimeField
      FieldName = 'TANGGAL'
    end
    object QuMasterBPNOSPP: TStringField
      FieldName = 'NOSPP'
      Size = 30
    end
    object QuMasterBPKODECUSTSUPP: TStringField
      FieldName = 'KODECUSTSUPP'
    end
    object QuMasterBPNamaCustSupp: TStringField
      FieldName = 'NamaCustSupp'
      Size = 80
    end
    object QuMasterBPNoPolKend: TStringField
      FieldName = 'NoPolKend'
      Size = 50
    end
    object QuMasterBPContainer: TStringField
      FieldName = 'Container'
      Size = 50
    end
    object QuMasterBPNoContainer: TStringField
      FieldName = 'NoContainer'
      Size = 50
    end
    object QuMasterBPNoSeal: TStringField
      FieldName = 'NoSeal'
      Size = 50
    end
    object QuMasterBPCatatan: TStringField
      FieldName = 'Catatan'
      Size = 4000
    end
    object QuMasterBPIDUser: TStringField
      FieldName = 'IDUser'
      Size = 30
    end
    object QuMasterBPTipe: TBooleanField
      FieldName = 'Tipe'
      ReadOnly = True
    end
    object QuMasterBPMyTipe: TStringField
      FieldName = 'MyTipe'
      ReadOnly = True
      Size = 28
    end
    object QuMasterBPIsOtorisasi1: TBooleanField
      FieldName = 'IsOtorisasi1'
      ReadOnly = True
    end
    object QuMasterBPOtoUser1: TStringField
      FieldName = 'OtoUser1'
      ReadOnly = True
      Size = 15
    end
    object QuMasterBPTglOto1: TDateTimeField
      FieldName = 'TglOto1'
      ReadOnly = True
    end
    object QuMasterBPIsOtorisasi2: TBooleanField
      FieldName = 'IsOtorisasi2'
      ReadOnly = True
    end
    object QuMasterBPOtoUser2: TStringField
      FieldName = 'OtoUser2'
      ReadOnly = True
      Size = 15
    end
    object QuMasterBPTglOto2: TDateTimeField
      FieldName = 'TglOto2'
      ReadOnly = True
    end
    object QuMasterBPIsOtorisasi3: TBooleanField
      FieldName = 'IsOtorisasi3'
      ReadOnly = True
    end
    object QuMasterBPOtoUser3: TStringField
      FieldName = 'OtoUser3'
      ReadOnly = True
      Size = 15
    end
    object QuMasterBPTglOto3: TDateTimeField
      FieldName = 'TglOto3'
      ReadOnly = True
    end
    object QuMasterBPIsOtorisasi4: TBooleanField
      FieldName = 'IsOtorisasi4'
      ReadOnly = True
    end
    object QuMasterBPOtoUser4: TStringField
      FieldName = 'OtoUser4'
      ReadOnly = True
      Size = 15
    end
    object QuMasterBPTglOto4: TDateTimeField
      FieldName = 'TglOto4'
      ReadOnly = True
    end
    object QuMasterBPIsOtorisasi5: TBooleanField
      FieldName = 'IsOtorisasi5'
      ReadOnly = True
    end
    object QuMasterBPOtoUser5: TStringField
      FieldName = 'OtoUser5'
      ReadOnly = True
      Size = 15
    end
    object QuMasterBPTglOto5: TDateTimeField
      FieldName = 'TglOto5'
      ReadOnly = True
    end
    object QuMasterBPNeedOtorisasi: TBooleanField
      FieldName = 'NeedOtorisasi'
      ReadOnly = True
    end
    object QuMasterBPIsbatal: TBooleanField
      FieldName = 'Isbatal'
      ReadOnly = True
    end
    object QuMasterBPUserbatal: TStringField
      FieldName = 'Userbatal'
      Size = 15
    end
    object QuMasterBPTglbatal: TDateTimeField
      FieldName = 'Tglbatal'
    end
    object QuMasterBPnojurnal: TStringField
      FieldName = 'nojurnal'
      Size = 30
    end
  end
  object DsMasterBP: TDataSource
    DataSet = QuMasterBP
    Left = 56
    Top = 248
  end
  object QuDetailBP: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    DataSource = DsMasterBP
    Parameters = <
      item
        Name = 'NoBukti'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = 'SPB/0212/00001/SZZ'
      end>
    SQL.Strings = (
      'Declare @nobukti varchar(50)'
      'set @nobukti=:Nobukti'
      
        'select '#9'B.NOBUKTI, B.URUT, B.NoSPP NoSC, B.UrutSPP UrutSC, B.KOD' +
        'EBRG, C.NAMABRG, '#39#39' Jns_Kertas, '#39#39'Ukr_Kertas,'
      
        '        B.QNT, B.QNT2, B.SAT_1, B.SAT_2, B.ISI, B.NetW, B.GrossW' +
        ', '#39#39' KetDetail'
      'from'#9'dbSPBDet B'
      'left outer join dbBarang C on C.KodeBrg=B.KodeBrg'
      'where'#9'B.NoBukti=@NoBukti'
      'order by B.Urut'
      ''
      '')
    Left = 96
    Top = 248
    object QuDetailBPNOBUKTI: TStringField
      FieldName = 'NOBUKTI'
      Size = 50
    end
    object QuDetailBPURUT: TIntegerField
      FieldName = 'URUT'
    end
    object QuDetailBPNoSC: TStringField
      FieldName = 'NoSC'
      Size = 30
    end
    object QuDetailBPUrutSC: TIntegerField
      FieldName = 'UrutSC'
    end
    object QuDetailBPKODEBRG: TStringField
      FieldName = 'KODEBRG'
      Size = 25
    end
    object QuDetailBPNAMABRG: TStringField
      FieldName = 'NAMABRG'
      Size = 200
    end
    object QuDetailBPQNT: TBCDField
      FieldName = 'QNT'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuDetailBPQNT2: TBCDField
      FieldName = 'QNT2'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuDetailBPSAT_1: TStringField
      FieldName = 'SAT_1'
      Size = 5
    end
    object QuDetailBPSAT_2: TStringField
      FieldName = 'SAT_2'
      Size = 5
    end
    object QuDetailBPISI: TBCDField
      FieldName = 'ISI'
      Precision = 18
      Size = 2
    end
    object QuDetailBPNetW: TBCDField
      FieldName = 'NetW'
      Precision = 18
      Size = 2
    end
    object QuDetailBPGrossW: TBCDField
      FieldName = 'GrossW'
      Precision = 18
      Size = 2
    end
    object QuDetailBPKetDetail: TStringField
      FieldName = 'KetDetail'
      Size = 1000
    end
    object QuDetailBPJns_Kertas: TStringField
      FieldName = 'Jns_Kertas'
      Size = 50
    end
    object QuDetailBPUkr_Kertas: TStringField
      FieldName = 'Ukr_Kertas'
      Size = 50
    end
  end
  object DsDetailBP: TDataSource
    DataSet = QuDetailBP
    Left = 128
    Top = 248
  end
  object QuMaster2: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'declare @Tahun int, @Bulan int, @FlagMenu int, @Periode Varchar(' +
        '20)'
      ''
      'select @Tahun=2012, @Bulan=7, @Flagmenu=0'
      ''
      
        'Select @Periode=Cast(@tahun as varchar(4))+Case when @bulan<10 t' +
        'hen '#39'0'#39' else '#39#39' end+Cast(@bulan as varchar(2))'
      ''
      
        'Select  A.NoBukti+right('#39'00000'#39'+cast(A.Urut as varchar(5)),5) Ke' +
        'yNoBukti, A.Nobukti, P.Tanggal, P.KodeCustSupp, S.Namacust NamaC' +
        'ustSupp,'
      
        '        A.urut, A.kodebrg, B.NamaBrg, '#39#39' Jns_Kertas, '#39#39' Ukr_Kert' +
        'as, A.Sat_1, A.Sat_2, A.Isi,'
      '        Case when A.NoSat=1 then A.Qnt'
      '             when A.NoSat=2 then A.Qnt2'
      '             else 0'
      '        end Qnt, A.Qnt2,'
      '        Case when A.NoSat=1 then A.QntSPB'
      '             when A.NoSat=2 then A.Qnt2SPB'
      '             else 0'
      '        end QntSPB, A.Qnt2SPB,'
      '        Case when A.NoSat=1 then A.QntSisa'
      '             when A.NoSat=2 then A.Qnt2Sisa'
      '             else 0'
      '        end QntSisa, A.Qnt2Sisa,'
      '        Case when A.NoSat=1 then isnull(E.Qnt1,0)'
      '             when A.NoSat=2 then isnull(E.Qnt2,0)'
      '             else 0'
      '        end QntStock,'
      '        Case when A.NOSAT=1 then A.SAT_1'
      '             when A.NOSAT=2 then A.SAT_2'
      '             else '#39#39
      '        end Satuan, P.Tglkirim'
      'From    vwBrowsOutSPP A'
      'Left Outer Join dbSPP P on P.NoBukti=A.NoBukti'
      'left Outer join DBSO SO on SO.NOBUKTI=A.noso'
      
        'Left Outer Join vwBrowsCustomer S on S.KodeCust=P.KodeCustSupp a' +
        'nd s.Sales=SO.KODESLS'
      'Left Outer Join dbBarang B on B.KodeBrg=A.KodeBrg'
      
        'Left Outer join (Select Kodebrg, Sum(SaldoQnt) Qnt1, Sum(Saldo2Q' +
        'nt) Qnt2'
      '                      from dbstockbrg'
      '                      where Bulan=@bulan and Tahun=@Tahun'
      '                      Group by kodebrg) E on E.Kodebrg=A.Kodebrg'
      'where A.isclose=0 and A.IsCetakKitir=1 and '
      
        '      cast(year(P.Tanggal) as varchar(4))+Case when month(P.tang' +
        'gal)<10 then '#39'0'#39' else '#39#39' end+Cast(month(P.Tanggal) as varchar(2)' +
        ')<=@Periode')
    Left = 272
    Top = 392
    object QuMaster2KeyNoBukti: TStringField
      FieldName = 'KeyNoBukti'
      ReadOnly = True
      Size = 35
    end
    object QuMaster2Nobukti: TStringField
      FieldName = 'Nobukti'
      Size = 30
    end
    object QuMaster2Tanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuMaster2KodeCustSupp: TStringField
      FieldName = 'KodeCustSupp'
      Size = 15
    end
    object QuMaster2NamaCustSupp: TStringField
      FieldName = 'NamaCustSupp'
      Size = 100
    end
    object QuMaster2urut: TIntegerField
      FieldName = 'urut'
    end
    object QuMaster2kodebrg: TStringField
      FieldName = 'kodebrg'
      Size = 25
    end
    object QuMaster2NamaBrg: TStringField
      FieldName = 'NamaBrg'
      Size = 100
    end
    object QuMaster2Jns_Kertas: TStringField
      FieldName = 'Jns_Kertas'
      ReadOnly = True
      Size = 1
    end
    object QuMaster2Ukr_Kertas: TStringField
      FieldName = 'Ukr_Kertas'
      ReadOnly = True
      Size = 1
    end
    object QuMaster2Sat_1: TStringField
      FieldName = 'Sat_1'
      Size = 5
    end
    object QuMaster2Sat_2: TStringField
      FieldName = 'Sat_2'
      Size = 5
    end
    object QuMaster2Isi: TBCDField
      FieldName = 'Isi'
      Precision = 18
      Size = 2
    end
    object QuMaster2Qnt: TBCDField
      FieldName = 'Qnt'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuMaster2Qnt2: TBCDField
      FieldName = 'Qnt2'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuMaster2QntSPB: TBCDField
      FieldName = 'QntSPB'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuMaster2Qnt2SPB: TBCDField
      FieldName = 'Qnt2SPB'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuMaster2QntSisa: TBCDField
      FieldName = 'QntSisa'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuMaster2Qnt2Sisa: TBCDField
      FieldName = 'Qnt2Sisa'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuMaster2QntStock: TBCDField
      FieldName = 'QntStock'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuMaster2Satuan: TStringField
      FieldName = 'Satuan'
      ReadOnly = True
      Size = 5
    end
    object QuMaster2Tglkirim: TDateTimeField
      FieldName = 'Tglkirim'
    end
  end
  object DSMaster2: TDataSource
    DataSet = QuMaster2
    Left = 304
    Top = 392
  end
  object Qudet1: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    DataSource = DsMaster
    Parameters = <
      item
        Name = 'Nobukti'
        DataType = ftString
        Size = 2
        Value = #39#39
      end>
    SQL.Strings = (
      
        'declare @Tahun int, @Bulan int, @FlagMenu int, @Periode Varchar(' +
        '20)'
      ''
      'select @Tahun=2012, @Bulan=7, @Flagmenu=0'
      ''
      
        'Select  A.NoBukti+right('#39'00000'#39'+cast(A.Urut as varchar(5)),5) Ke' +
        'yNoBukti, A.Nobukti, P.Tanggal, P.KodeCustSupp, S.Namacust NamaC' +
        'ustSupp,'
      
        '        A.urut, A.kodebrg, B.NamaBrg, '#39#39' Jns_Kertas, '#39#39' Ukr_Kert' +
        'as, A.Sat_1, A.Sat_2, A.Isi,'
      '        Case when A.NoSat=1 then A.Qnt'
      '             when A.NoSat=2 then A.Qnt2'
      '             else 0'
      '        end Qnt, A.Qnt2,'
      '        Case when A.NoSat=1 then A.QntSPB'
      '             when A.NoSat=2 then A.Qnt2SPB'
      '             else 0'
      '        end QntSPB, A.Qnt2SPB,'
      '        Case when A.NoSat=1 then A.QntSisa'
      '             when A.NoSat=2 then A.Qnt2Sisa'
      '             else 0'
      '        end QntSisa, A.Qnt2Sisa,'
      '        Case when A.NoSat=1 then isnull(E.Qnt1,0)'
      '             when A.NoSat=2 then isnull(E.Qnt2,0)'
      '             else 0'
      '        end QntStock,'
      '        Case when A.NOSAT=1 then A.SAT_1'
      '             when A.NOSAT=2 then A.SAT_2'
      '             else '#39#39
      '        end Satuan, P.Tglkirim'
      'From    vwBrowsOutSPP A'
      'Left Outer Join dbSPP P on P.NoBukti=A.NoBukti'
      'left Outer join DBSO SO on SO.NOBUKTI=A.noso'
      
        'Left Outer Join vwBrowsCustomer S on S.KodeCust=P.KodeCustSupp a' +
        'nd s.Sales=SO.KODESLS'
      'Left Outer Join dbBarang B on B.KodeBrg=A.KodeBrg'
      
        'Left Outer join (Select Kodebrg, Sum(SaldoQnt) Qnt1, Sum(Saldo2Q' +
        'nt) Qnt2'
      '                      from dbstockbrg'
      '                      where Bulan=@bulan and Tahun=@Tahun'
      '                      Group by kodebrg) E on E.Kodebrg=A.Kodebrg'
      'where P.Nobukti=:Nobukti')
    Left = 352
    Top = 264
    object StringField1: TStringField
      FieldName = 'KeyNoBukti'
      ReadOnly = True
      Size = 35
    end
    object StringField2: TStringField
      FieldName = 'Nobukti'
      Size = 30
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'Tanggal'
    end
    object StringField3: TStringField
      FieldName = 'KodeCustSupp'
      Size = 15
    end
    object StringField4: TStringField
      FieldName = 'NamaCustSupp'
      Size = 80
    end
    object IntegerField1: TIntegerField
      FieldName = 'urut'
    end
    object StringField5: TStringField
      FieldName = 'kodebrg'
      Size = 25
    end
    object StringField6: TStringField
      FieldName = 'NamaBrg'
      Size = 200
    end
    object StringField7: TStringField
      FieldName = 'Sat_1'
      Size = 5
    end
    object StringField8: TStringField
      FieldName = 'Sat_2'
      Size = 5
    end
    object BCDField1: TBCDField
      FieldName = 'Isi'
      Precision = 18
      Size = 2
    end
    object BCDField2: TBCDField
      FieldName = 'Qnt'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object BCDField3: TBCDField
      FieldName = 'Qnt2'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object BCDField4: TBCDField
      FieldName = 'QntSPB'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object BCDField5: TBCDField
      FieldName = 'Qnt2SPB'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object BCDField6: TBCDField
      FieldName = 'QntSisa'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object BCDField7: TBCDField
      FieldName = 'Qnt2Sisa'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object StringField9: TStringField
      FieldName = 'Jns_Kertas'
      Size = 50
    end
    object StringField10: TStringField
      FieldName = 'Ukr_Kertas'
      Size = 50
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'TglKirim'
    end
    object StringField11: TStringField
      FieldName = 'Satuan'
      ReadOnly = True
      Size = 5
    end
    object BCDField8: TBCDField
      DisplayLabel = 'Stock'
      FieldName = 'QntStock'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
  end
  object DsDet1: TDataSource
    DataSet = Qudet1
    Left = 384
    Top = 264
  end
end
