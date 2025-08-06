object FrMainSPBRjual: TFrMainSPBRjual
  Left = 48
  Top = 95
  Width = 1256
  Height = 522
  Caption = 'Penerimaan Retur Penjualan'
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
    Width = 1248
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 1248
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
    Width = 1248
    Height = 440
    ActivePage = dxTSBP
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
      Caption = 'Retur Penjualan'
      TabVisible = False
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 1248
        Height = 414
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
              Caption = 'Satuan 2'
            end
            item
              Caption = 'Satuan 1'
            end>
          object tvMasterOutKeyNoBukti: TcxGridDBBandedColumn
            DataBinding.FieldName = 'KeyNoBukti'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
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
          object tvMasterOutTglKirim: TcxGridDBBandedColumn
            Caption = 'Tanggal Kirim'
            DataBinding.FieldName = 'TglKirim'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 3
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
            Width = 180
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
            Width = 100
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
          object tvMasterOutJns_Kertas: TcxGridDBBandedColumn
            Caption = 'Jenis Kertas'
            DataBinding.FieldName = 'Jns_Kertas'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
            Position.BandIndex = 1
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tvMasterOutUkr_Kertas: TcxGridDBBandedColumn
            Caption = 'Ukuran Kertas'
            DataBinding.FieldName = 'Ukr_Kertas'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 150
            Position.BandIndex = 1
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object tvMasterOutSat_2: TcxGridDBBandedColumn
            Caption = 'Sat'
            DataBinding.FieldName = 'Sat_2'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvMasterOutQnt2SPP: TcxGridDBBandedColumn
            Caption = 'SPP'
            DataBinding.FieldName = 'Qnt2'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvMasterOutQnt2: TcxGridDBBandedColumn
            Caption = 'SPB'
            DataBinding.FieldName = 'Qnt2SPP'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tvMasterOutQnt2Sisa: TcxGridDBBandedColumn
            Caption = 'Sisa'
            DataBinding.FieldName = 'Qnt2Sisa'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
            Position.BandIndex = 2
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tvMasterOutIsi: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Isi'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvMasterOutSat_1: TcxGridDBBandedColumn
            Caption = 'Sat'
            DataBinding.FieldName = 'Sat_1'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvMasterOutQntSPP: TcxGridDBBandedColumn
            Caption = 'SPP'
            DataBinding.FieldName = 'Qnt'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvMasterOutQnt: TcxGridDBBandedColumn
            Caption = 'SPB'
            DataBinding.FieldName = 'QntSPP'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
            Position.BandIndex = 3
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvMasterOutQntSisa: TcxGridDBBandedColumn
            Caption = 'Sisa'
            DataBinding.FieldName = 'QntSisa'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
            Position.BandIndex = 3
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
        end
        object cxGridLevel3: TcxGridLevel
          Caption = 'a'
          GridView = tvMasterOut
        end
      end
    end
    object dxTSBP: TdxTabSheet
      Caption = 'Penerimaan Barang Retur'
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1248
        Height = 414
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
              Caption = 'Pemabatalan'
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
            Caption = 'No. Perintah Terima Retur'
            DataBinding.FieldName = 'NORPJ'
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
            Width = 153
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tvMasterNoPesan: TcxGridDBBandedColumn
            Caption = 'No. Pesanan'
            DataBinding.FieldName = 'NoPesan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 140
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tvMasterCatatan: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Catatan'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 300
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object tvMasterIDUser: TcxGridDBBandedColumn
            Caption = 'User'
            DataBinding.FieldName = 'IDUser'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object tvMasterTipe: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Tipe'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 0
            Position.ColIndex = 8
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
            Position.Editing = False
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvMasterDBBandedColumn2: TcxGridDBBandedColumn
            Caption = 'User Batal'
            DataBinding.FieldName = 'Userbatal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.Editing = False
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvMasterDBBandedColumn3: TcxGridDBBandedColumn
            Caption = 'Tgl Batal'
            DataBinding.FieldName = 'TglBatal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.Editing = False
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
          OptionsView.GroupByBox = False
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
      'select @Tahun=2012, @Bulan=12, @Flagmenu=0'
      ''
      
        'Select @Periode=Cast(@tahun as varchar(4))+Case when @bulan<10 t' +
        'hen '#39'0'#39' else '#39#39' end+Cast(@bulan as varchar(2))'
      ''
      
        'Select  A.NoBukti+right('#39'00000'#39'+cast(A.Urut as varchar(5)),5) Ke' +
        'yNoBukti, A.Nobukti, P.Tanggal, P.KodeCustSupp, S.NamaCustSupp,'
      
        '        A.urut, A.kodebrg, B.NamaBrg, '#39#39' Jns_Kertas, '#39#39' Ukr_Kert' +
        'as, A.Sat_1, A.Sat_2, A.Isi,'
      '        A.Qnt, A.Qnt2, A.QntSPB QntSPP, A.Qnt2SPB Qnt2SPP,'
      '        A.QntSisa, A.Qnt2Sisa'
      'From    vwBrowsOutRJual A'
      'Left Outer Join dbRInvoicePL P on P.NoBukti=A.NoBukti'
      'Left Outer Join vwBrowsCust S on S.KodeCustSupp=P.KodeCustSupp'
      'Left Outer Join dbBarang B on B.KodeBrg=A.KodeBrg'
      
        'where cast(year(P.Tanggal) as varchar(4))+Case when month(P.tang' +
        'gal)<10 then '#39'0'#39' else '#39#39' end+Cast(month(P.Tanggal) as varchar(2)' +
        ')<=@Periode'
      'order by A.NoBukti, A.Urut')
    Left = 352
    Top = 232
    object QuMasterKeyNoBukti: TStringField
      FieldName = 'KeyNoBukti'
      ReadOnly = True
      Size = 35
    end
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
      Size = 100
    end
    object QuMasterurut: TIntegerField
      FieldName = 'urut'
    end
    object QuMasterkodebrg: TStringField
      FieldName = 'kodebrg'
      Size = 25
    end
    object QuMasterNamaBrg: TStringField
      FieldName = 'NamaBrg'
      Size = 100
    end
    object QuMasterJns_Kertas: TStringField
      FieldName = 'Jns_Kertas'
      ReadOnly = True
      Size = 1
    end
    object QuMasterUkr_Kertas: TStringField
      FieldName = 'Ukr_Kertas'
      ReadOnly = True
      Size = 1
    end
    object QuMasterSat_1: TStringField
      FieldName = 'Sat_1'
      Size = 5
    end
    object QuMasterSat_2: TStringField
      FieldName = 'Sat_2'
      Size = 5
    end
    object QuMasterIsi: TBCDField
      FieldName = 'Isi'
      Precision = 18
      Size = 2
    end
    object QuMasterQnt: TBCDField
      FieldName = 'Qnt'
      Precision = 18
      Size = 2
    end
    object QuMasterQnt2: TBCDField
      FieldName = 'Qnt2'
      Precision = 18
      Size = 2
    end
    object QuMasterQntSPP: TBCDField
      FieldName = 'QntSPP'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object QuMasterQnt2SPP: TBCDField
      FieldName = 'Qnt2SPP'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object QuMasterQntSisa: TBCDField
      FieldName = 'QntSisa'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object QuMasterQnt2Sisa: TBCDField
      FieldName = 'Qnt2Sisa'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
  end
  object DsMaster: TDataSource
    DataSet = QuMaster
    Left = 384
    Top = 232
  end
  object PopupMenu2: TPopupMenu
    Left = 571
    Top = 223
    object TampilValid: TMenuItem
      Caption = 'Tampil Valid'
      Checked = True
    end
    object TampilBatal: TMenuItem
      Caption = 'Tampil Batal'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 483
    Top = 217
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
    Left = 511
    Top = 216
  end
  object QuMasterBP: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @Tahun int, @Bulan int, @Flagmenu tinyint'
      ''
      'select @Tahun=2013, @Bulan=4, @Flagmenu=0'
      ''
      
        'select'#9'A.NOBUKTI, A.NOURUT, A.TANGGAL, A.NORPJ, A.KODECUSTSUPP, ' +
        'B.NamaCustSupp,'
      
        '        A.NoPolKend, A.Container, A.NoContainer, A.NoSeal, A.Cat' +
        'atan, A.IDUser, A.IsFlag Tipe,'
      '        Case when A.isFlag=0 then '#39'SPB Barang Jadi'#39
      '             when A.isFlag=1 then '#39'SPB Bahan Baku dan Lain-lain'#39
      '             else '#39#39
      '        end MyTipe,'
      '        A.IsOtorisasi1, A.OtoUser1, A.TglOto1,'
      '        A.IsOtorisasi2, A.OtoUser2, A.TglOto2,'
      '        A.IsOtorisasi3, A.OtoUser3, A.TglOto3,'
      '        A.IsOtorisasi4, A.OtoUser4, A.TglOto4,'
      '        A.IsOtorisasi5, A.OtoUser5, A.TglOto5,'
      '        Isnull(A.IsBatal,0) Isbatal,A.Userbatal,A.TglBatal'
      'from'#9'dbSPBRjual A'
      'left outer join vwBrowsCust B on B.KodeCustSupp=A.KodeCustSupp'
      'where'#9'year(A.Tanggal)=@Tahun and month(A.Tanggal)=@Bulan '
      'order by A.NoBukti'
      '')
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
    object QuMasterBPNORPJ: TStringField
      FieldName = 'NORPJ'
      Size = 30
    end
    object QuMasterBPIsbatal: TBooleanField
      FieldName = 'Isbatal'
      ReadOnly = True
    end
    object QuMasterBPUserbatal: TStringField
      FieldName = 'Userbatal'
      Size = 15
    end
    object QuMasterBPTglBatal: TDateTimeField
      FieldName = 'TglBatal'
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
      
        'select '#9'B.NOBUKTI, B.URUT, B.NoINV NoSC, B.UrutINV UrutSC, B.KOD' +
        'EBRG, C.NAMABRG, '#39#39' Jns_Kertas, '#39#39' Ukr_Kertas,'
      
        '        B.QNT, B.QNT2, B.SAT_1, B.SAT_2, B.ISI, B.NetW, B.GrossW' +
        ', '#39#39' KetDetail'
      'from'#9'dbSPBRJualDet B'
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
end
