object FrMainTransfer: TFrMainTransfer
  Left = 147
  Top = 144
  Width = 841
  Height = 522
  Caption = 'Transfer Barang'
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
    Width = 833
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 833
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
        Caption = '&Cetak'
        ImageIndex = 13
        OnClick = ToolButton3Click
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
        Left = 0
        Top = 0
        Width = 8
        Caption = 'ToolButton8'
        ImageIndex = 9
        Wrap = True
        Style = tbsSeparator
        Visible = False
      end
      object ToolButton9: TToolButton
        Left = 0
        Top = 47
        Caption = 'K&eluar'
        ImageIndex = 8
        OnClick = ToolButton9Click
      end
      object ToolButton11: TToolButton
        Left = 89
        Top = 47
        Caption = 'Tampil Valid'
        DropdownMenu = PopupMenu2
        ImageIndex = 7
        Style = tbsDropDown
        Visible = False
      end
      object ToolButton4: TToolButton
        Left = 191
        Top = 47
        Caption = 'Otorisasi'
        ImageIndex = 15
        OnClick = ToolButton4Click
      end
      object ToolButton12: TToolButton
        Left = 280
        Top = 47
        Caption = 'Batal Otorisasi'
        ImageIndex = 16
        OnClick = ToolButton12Click
      end
    end
  end
  object dxPageControl1: TdxPageControl
    Left = 0
    Top = 48
    Width = 833
    Height = 440
    ActivePage = dxTSBP
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    HideButtons = True
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
      Caption = 'Sales Contract'
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 833
        Height = 440
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        object tvMasterOut: TcxGridDBBandedTableView
          DataController.DataSource = DsMaster
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.KeyFieldNames = 'KeyNoBukti'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OnFocusedRecordChanged = tvMasterOutFocusedRecordChanged
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          OptionsView.BandHeaders = False
          OptionsView.FixedBandSeparatorWidth = 1
          Styles.StyleSheet = DM.cxGridBandStyleHd
          Styles.Header = DM.cxStyle8
          Bands = <
            item
            end>
          object tvMasterOutNobukti: TcxGridDBBandedColumn
            Caption = 'No. Bukti'
            DataBinding.FieldName = 'Nobukti'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 150
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvMasterOutTanggal: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Tanggal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvMasterOutNopo: TcxGridDBBandedColumn
            Caption = 'No. PO Customer'
            DataBinding.FieldName = 'Nopo'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 135
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tvMasterOutTGlPO: TcxGridDBBandedColumn
            Caption = 'Tanggal PO'
            DataBinding.FieldName = 'TGlPO'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 77
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tvMasterOutKodeCustSupp: TcxGridDBBandedColumn
            DataBinding.FieldName = 'KodeCustSupp'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvMasterOutNamaCustSupp: TcxGridDBBandedColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'NamaCustSupp'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 180
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
        end
        object tvDetailOut: TcxGridDBBandedTableView
          DataController.DataSource = DsDetail
          DataController.DetailKeyFieldNames = 'Nobukti'
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.MasterKeyFieldNames = 'Nobukti'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0.##'
              Kind = skSum
              FieldName = 'Qnt2'
              Column = tvDetailOutQnt2
            end
            item
              Format = ',0.##'
              Kind = skSum
              FieldName = 'Qnt2SPP'
              Column = tvDetailOutQnt2SPP
            end
            item
              Format = ',0.##'
              Kind = skSum
              FieldName = 'Qnt2Sisa'
              Column = tvDetailOutQnt2Sisa
            end
            item
              Format = ',0.##'
              Kind = skSum
              FieldName = 'Qnt'
              Column = tvDetailOutQnt
            end
            item
              Format = ',0.##'
              Kind = skSum
              FieldName = 'QntSPP'
              Column = tvDetailOutQntSPP
            end
            item
              Format = ',0.##'
              Kind = skSum
              FieldName = 'QntSisa'
              Column = tvDetailOutQntSisa
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
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
            end>
          object tvDetailOutkodebrg: TcxGridDBBandedColumn
            Caption = 'Kode Barang'
            DataBinding.FieldName = 'kodebrg'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvDetailOutNamaBrg: TcxGridDBBandedColumn
            Caption = 'Nama Barang'
            DataBinding.FieldName = 'NamaBrg'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 150
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvDetailOutJns_Kertas: TcxGridDBBandedColumn
            Caption = 'Jenis Kertas'
            DataBinding.FieldName = 'Jns_Kertas'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvDetailOutUkr_Kertas: TcxGridDBBandedColumn
            Caption = 'Ukuran Kertas'
            DataBinding.FieldName = 'Ukr_Kertas'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 120
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tvDetailOutGSM: TcxGridDBBandedColumn
            DataBinding.FieldName = 'GSM'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tvDetailOutSat_2: TcxGridDBBandedColumn
            Caption = 'Sat'
            DataBinding.FieldName = 'Sat_2'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvDetailOutQnt2: TcxGridDBBandedColumn
            Caption = 'SC'
            DataBinding.FieldName = 'Qnt2'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvDetailOutQnt2SPP: TcxGridDBBandedColumn
            Caption = 'SPP'
            DataBinding.FieldName = 'Qnt2SPP'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvDetailOutQnt2Sisa: TcxGridDBBandedColumn
            Caption = 'Sisa'
            DataBinding.FieldName = 'Qnt2Sisa'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tvDetailOutSat_1: TcxGridDBBandedColumn
            Caption = 'Sat'
            DataBinding.FieldName = 'Sat_1'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvDetailOutQnt: TcxGridDBBandedColumn
            Caption = 'SC'
            DataBinding.FieldName = 'Qnt'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvDetailOutQntSPP: TcxGridDBBandedColumn
            Caption = 'SPP'
            DataBinding.FieldName = 'QntSPP'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvDetailOutQntSisa: TcxGridDBBandedColumn
            Caption = 'Sisa'
            DataBinding.FieldName = 'QntSisa'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
        end
        object cxGridLevel3: TcxGridLevel
          Caption = 'a'
          GridView = tvMasterOut
          object cxGrid3Level1: TcxGridLevel
            GridView = tvDetailOut
          end
        end
      end
    end
    object dxTSBP: TdxTabSheet
      Caption = 'Surat Perintah Pengiriman'
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 833
        Height = 440
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
              FixedKind = fkLeft
              Hidden = True
            end
            item
              Caption = 'Otorisasi'
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
            DataBinding.FieldName = 'TANGGAL'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvMasterKeterangan: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Keterangan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 250
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvMasterNoPenyerahan: TcxGridDBBandedColumn
            Caption = 'No. Penyerahan'
            DataBinding.FieldName = 'NoPenyerahan'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 215
            Position.BandIndex = 0
            Position.ColIndex = 3
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
            end>
          object tvDetailNOBUKTI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOBUKTI'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object tvDetailURUT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'URUT'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object tvDetailKODEBRG: TcxGridDBBandedColumn
            Caption = 'Kode Barang'
            DataBinding.FieldName = 'KODEBRG'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvDetailNamaBrg: TcxGridDBBandedColumn
            Caption = 'Nama Barang'
            DataBinding.FieldName = 'NamaBrg'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 200
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvDetailJns_Kertas: TcxGridDBBandedColumn
            Caption = 'Jenis Kertas'
            DataBinding.FieldName = 'Jns_Kertas'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvDetailUkr_Kertas: TcxGridDBBandedColumn
            Caption = 'Ukuran Kertas'
            DataBinding.FieldName = 'Ukr_Kertas'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 150
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tvDetailGSM: TcxGridDBBandedColumn
            DataBinding.FieldName = 'GSM'
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object tvDetailNamagdgAsal: TcxGridDBBandedColumn
            Caption = 'Gudang Asal'
            DataBinding.FieldName = 'NamagdgAsal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 200
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tvDetailNamagdgTujuan: TcxGridDBBandedColumn
            Caption = 'Gudang Tujuan'
            DataBinding.FieldName = 'NamagdgTujuan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 200
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tvDetailQNT2: TcxGridDBBandedColumn
            Caption = 'QNT'
            DataBinding.FieldName = 'QNT2'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvDetailSAT_2: TcxGridDBBandedColumn
            Caption = 'Sat'
            DataBinding.FieldName = 'SAT_2'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvDetailQNT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QNT'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvDetailSAT_1: TcxGridDBBandedColumn
            Caption = 'Sat'
            DataBinding.FieldName = 'SAT_1'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvDetailISI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ISI'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object tvDetailGdgAsal: TcxGridDBBandedColumn
            DataBinding.FieldName = 'GdgAsal'
            Visible = False
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object tvDetailGdgTujuan: TcxGridDBBandedColumn
            DataBinding.FieldName = 'GdgTujuan'
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
      
        'Select  Distinct  A.Nobukti, P.Tanggal, P.KodeCustSupp, S.NamaCu' +
        'stSupp,'
      '        P.Nopo, P.TGlPO '
      'From    vwBrowsOutSC_SPP A'
      'Left Outer Join dbSalesContract P on P.NoBukti=A.NoBukti'
      'Left Outer Join vwBrowsCust S on S.KodeCustSupp=P.KodeCustSupp'
      'Left Outer Join dbBarangJadi B on B.KodeBrg=A.KodeBrg'
      'order by A.NoBukti')
    Left = 352
    Top = 232
    object QuMasterNobukti: TStringField
      FieldName = 'Nobukti'
      Size = 30
    end
    object QuMasterTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuMasterKodeCustSupp: TStringField
      FieldName = 'KodeCustSupp'
      Size = 15
    end
    object QuMasterNamaCustSupp: TStringField
      FieldName = 'NamaCustSupp'
      Size = 80
    end
    object QuMasterNopo: TStringField
      FieldName = 'Nopo'
      Size = 50
    end
    object QuMasterTGlPO: TDateTimeField
      FieldName = 'TGlPO'
    end
  end
  object DsMaster: TDataSource
    DataSet = QuMaster
    Left = 384
    Top = 232
  end
  object PopupMenu2: TPopupMenu
    Left = 547
    Top = 207
    object TampilValid: TMenuItem
      Caption = 'Tampil Valid'
      Checked = True
    end
    object TampilBatal: TMenuItem
      Caption = 'Tampil Batal'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 459
    Top = 201
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
    Left = 487
    Top = 200
  end
  object QuMasterBP: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @Tahun int, @Bulan int'
      ''
      'select @Tahun=2011, @Bulan=6'
      ''
      
        'Select A.nobukti, a.NoUrut, a.Tanggal,  A.Note Keterangan, A.NoP' +
        'enyerahan,'
      
        '        A.IsOtorisasi1, A.OtoUser1, A.TglOto1, A.IsOtorisasi2, A' +
        '.OtoUser2, A.TglOto2,'
      
        #9'A.IsOtorisasi3, A.OtoUser3, A.TglOto3, A.IsOtorisasi4, A.OtoUse' +
        'r4, A.TglOto4,'
      #9'A.IsOtorisasi5, A.OtoUser5, A.TglOto5,'
      
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
      'from dbTransfer a'
      'where'#9'year(A.Tanggal)=@Tahun and month(A.Tanggal)=@Bulan'
      'order by A.NoBukti'
      '')
    Left = 24
    Top = 248
    object QuMasterBPnobukti: TStringField
      FieldName = 'nobukti'
      Size = 30
    end
    object QuMasterBPNoUrut: TStringField
      FieldName = 'NoUrut'
      Size = 5
    end
    object QuMasterBPTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuMasterBPKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 200
    end
    object QuMasterBPNoPenyerahan: TStringField
      FieldName = 'NoPenyerahan'
      Size = 100
    end
    object QuMasterBPIsOtorisasi1: TBooleanField
      FieldName = 'IsOtorisasi1'
    end
    object QuMasterBPOtoUser1: TStringField
      FieldName = 'OtoUser1'
      Size = 15
    end
    object QuMasterBPTglOto1: TDateTimeField
      FieldName = 'TglOto1'
    end
    object QuMasterBPIsOtorisasi2: TBooleanField
      FieldName = 'IsOtorisasi2'
    end
    object QuMasterBPOtoUser2: TStringField
      FieldName = 'OtoUser2'
      Size = 15
    end
    object QuMasterBPTglOto2: TDateTimeField
      FieldName = 'TglOto2'
    end
    object QuMasterBPIsOtorisasi3: TBooleanField
      FieldName = 'IsOtorisasi3'
    end
    object QuMasterBPOtoUser3: TStringField
      FieldName = 'OtoUser3'
      Size = 15
    end
    object QuMasterBPTglOto3: TDateTimeField
      FieldName = 'TglOto3'
    end
    object QuMasterBPIsOtorisasi4: TBooleanField
      FieldName = 'IsOtorisasi4'
    end
    object QuMasterBPOtoUser4: TStringField
      FieldName = 'OtoUser4'
      Size = 15
    end
    object QuMasterBPTglOto4: TDateTimeField
      FieldName = 'TglOto4'
    end
    object QuMasterBPIsOtorisasi5: TBooleanField
      FieldName = 'IsOtorisasi5'
    end
    object QuMasterBPOtoUser5: TStringField
      FieldName = 'OtoUser5'
      Size = 15
    end
    object QuMasterBPTglOto5: TDateTimeField
      FieldName = 'TglOto5'
    end
    object QuMasterBPNeedOtorisasi: TBooleanField
      FieldName = 'NeedOtorisasi'
      ReadOnly = True
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
        Size = 22
        Value = '00001/SZ-22/05-VI/2011'
      end>
    SQL.Strings = (
      
        'select '#9'B.NOBUKTI, B.URUT,  B.KODEBRG, C.NAMABRG, '#39#39' Jns_Kertas,' +
        ' '#39#39' Ukr_Kertas,'
      
        '        B.QNT, B.QNT2, B.SAT_1, B.SAT_2, B.ISI, B.GdgAsal, B.Gdg' +
        'Tujuan, D.Nama+'#39' ('#39'+B.gdgAsal+'#39')'#39' NamagdgAsal,'
      '        E.Nama+'#39' ('#39'+B.GdgTujuan+'#39')'#39' NamagdgTujuan, 0.00 GSM'
      'from'#9'dbTransferDet B'
      'left outer join dbBarang C on C.KodeBrg=B.KodeBrg'
      'left outer join dbGudang D on d.Kodegdg=B.GdgAsal'
      'left outer join dbgudang E on E.kodegdg=B.GdgTujuan'
      'where'#9'B.NoBukti=:NoBukti'
      'order by B.Urut'
      ''
      '')
    Left = 96
    Top = 248
    object QuDetailBPNOBUKTI: TStringField
      FieldName = 'NOBUKTI'
      Size = 30
    end
    object QuDetailBPURUT: TIntegerField
      FieldName = 'URUT'
    end
    object QuDetailBPKODEBRG: TStringField
      FieldName = 'KODEBRG'
      Size = 25
    end
    object QuDetailBPNAMABRG: TStringField
      FieldName = 'NAMABRG'
      Size = 200
    end
    object QuDetailBPJns_Kertas: TStringField
      FieldName = 'Jns_Kertas'
      Size = 50
    end
    object QuDetailBPUkr_Kertas: TStringField
      FieldName = 'Ukr_Kertas'
      Size = 50
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
    object QuDetailBPGdgAsal: TStringField
      FieldName = 'GdgAsal'
      Size = 15
    end
    object QuDetailBPGdgTujuan: TStringField
      FieldName = 'GdgTujuan'
      Size = 15
    end
    object QuDetailBPNamagdgAsal: TStringField
      FieldName = 'NamagdgAsal'
      ReadOnly = True
      Size = 58
    end
    object QuDetailBPNamagdgTujuan: TStringField
      FieldName = 'NamagdgTujuan'
      ReadOnly = True
      Size = 58
    end
    object QuDetailBPGSM: TBCDField
      FieldName = 'GSM'
      Precision = 18
      Size = 2
    end
  end
  object DsDetailBP: TDataSource
    DataSet = QuDetailBP
    Left = 128
    Top = 248
  end
  object QuDetail: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    DataSource = DsMaster
    Parameters = <
      item
        Name = 'Nobukti'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = '00001/SZ-LKL/05VI/2011'
      end>
    SQL.Strings = (
      
        'Select  A.NoBukti+right('#39'00000'#39'+cast(A.Urut as varchar(5)),5) Ke' +
        'yNoBukti, A.Nobukti, P.Tanggal, P.KodeCustSupp, S.NamaCustSupp,'
      
        '        A.urut, A.kodebrg, B.NamaBrg, B.Jns_Kertas, B.Ukr_Kertas' +
        ', A.Sat_1, A.Sat_2, A.Isi,'
      '        A.Qnt, A.Qnt2, A.QntSPP, A.Qnt2SPP,'
      '        A.QntSisa, A.Qnt2Sisa,P.NOPO,P.TglPO, B.GSM'
      'From    vwBrowsOutSC_SPP A'
      'Left Outer Join dbSalesContract P on P.NoBukti=A.NoBukti'
      'Left Outer Join vwBrowsCust S on S.KodeCustSupp=P.KodeCustSupp'
      'Left Outer Join dbBarangJadi B on B.KodeBrg=A.KodeBrg'
      'where A.Nobukti=:Nobukti'
      'order by A.NoBukti, A.Urut')
    Left = 368
    Top = 272
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
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object BCDField3: TBCDField
      FieldName = 'Qnt2'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object BCDField4: TBCDField
      FieldName = 'QntSPP'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
      Size = 2
    end
    object BCDField5: TBCDField
      FieldName = 'Qnt2SPP'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
      Size = 2
    end
    object BCDField6: TBCDField
      FieldName = 'QntSisa'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
      Size = 2
    end
    object BCDField7: TBCDField
      FieldName = 'Qnt2Sisa'
      ReadOnly = True
      DisplayFormat = ',0.##'
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
    object StringField11: TStringField
      FieldName = 'NOPO'
      Size = 50
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'TglPO'
    end
    object QuDetailGSM: TBCDField
      FieldName = 'GSM'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
  end
  object DsDetail: TDataSource
    DataSet = QuDetail
    Left = 400
    Top = 272
  end
  object QuUpdatedbbeli: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 60
    Parameters = <>
    SQL.Strings = (
      'Select * From vwPerusahaan')
    Left = 185
    Top = 297
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
    Left = 856
    Top = 40
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
            4D7366746564697420352E34312E31352E313531353B7D5C766965776B696E64
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
          DataSet = FrKasBank.frxDBDataset1
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
          DataSet = FrKasBank.frxDBDataset1
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
            4D7366746564697420352E34312E31352E313531353B7D5C766965776B696E64
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
          DataSet = FrKasBank.frxDBDataset1
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
            4D7366746564697420352E34312E31352E313531353B7D5C766965776B696E64
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
          DataSet = FrKasBank.frxDBDataset1
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
          DataSet = FrKasBank.frxDBDataset1
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
          DataSet = FrKasBank.frxDBDataset1
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
          DataSet = FrKasBank.frxDBDataset1
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
          DataSet = FrKasBank.frxDBDataset1
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
          DataSet = FrKasBank.frxDBDataset1
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
            4D7366746564697420352E34312E31352E313531353B7D5C766965776B696E64
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
          DataSet = FrKasBank.frxDBDataset1
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
          DataSet = FrKasBank.frxDBDataset1
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
          DataSet = FrKasBank.frxDBDataset1
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
          DataSet = FrKasBank.frxDBDataset1
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
          DataSet = FrKasBank.frxDBDataset1
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
          DataSet = FrKasBank.frxDBDataset1
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
            4D7366746564697420352E34312E31352E313531353B7D5C766965776B696E64
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
          DataSet = FrKasBank.frxDBDataset1
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
          DataSet = FrKasBank.frxDBDataset1
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
          DataSet = FrKasBank.frxDBDataset1
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
          DataSet = FrKasBank.frxDBDataset1
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
          DataSet = FrKasBank.frxDBDataset1
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
          DataSet = FrKasBank.frxDBDataset1
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
            4D7366746564697420352E34312E31352E313531353B7D5C766965776B696E64
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
          DataSet = FrKasBank.frxDBDataset1
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
          DataSet = FrKasBank.frxDBDataset1
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
          DataSet = FrKasBank.frxDBDataset1
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
          DataSet = FrKasBank.frxDBDataset1
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
          DataSet = FrKasBank.frxDBDataset1
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
          DataSet = FrKasBank.frxDBDataset1
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
            4D7366746564697420352E34312E31352E313531353B7D5C766965776B696E64
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
          DataSet = FrKasBank.frxDBDataset1
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
          DataSet = FrKasBank.frxDBDataset1
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
          DataSet = FrKasBank.frxDBDataset1
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
          DataSet = FrKasBank.frxDBDataset1
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
          DataSet = FrKasBank.frxDBDataset1
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
          DataSet = FrKasBank.frxDBDataset1
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
  object frxRichObject1: TfrxRichObject
    Left = 856
    Top = 72
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
    Left = 888
    Top = 72
  end
  object frxDBCetak: TfrxDBDataset
    UserName = 'frxDBCetak'
    CloseDataSource = False
    DataSet = QuUpdatedbbeli
    BCDToCurrency = False
    Left = 888
    Top = 40
  end
end
