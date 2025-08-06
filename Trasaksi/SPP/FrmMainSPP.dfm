object FrMainSPP: TFrMainSPP
  Left = 185
  Top = 71
  Width = 1169
  Height = 595
  Caption = 'Surat Perintah Pengiriman (DO)'
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
    Width = 1161
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 1161
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
        Width = 5
        Caption = 'ToolButton8'
        ImageIndex = 9
        Style = tbsSeparator
        Visible = False
      end
      object ToolButton9: TToolButton
        Left = 479
        Top = 0
        Caption = 'K&eluar'
        ImageIndex = 8
        OnClick = ToolButton9Click
      end
      object ToolButton11: TToolButton
        Left = 568
        Top = 0
        Caption = 'Tampil Valid'
        DropdownMenu = PopupMenu2
        ImageIndex = 7
        Style = tbsDropDown
        Visible = False
      end
      object ToolButton13: TToolButton
        Left = 670
        Top = 0
        Caption = 'Cetak'
        ImageIndex = 4
        OnClick = ToolButton13Click
      end
      object ToolButton15: TToolButton
        Left = 759
        Top = 0
        Caption = 'Desain'
        ImageIndex = 10
        OnClick = ToolButton15Click
      end
      object ToolButton4: TToolButton
        Left = 848
        Top = 0
        Caption = 'Otorisasi'
        ImageIndex = 15
        OnClick = ToolButton4Click
      end
      object ToolButton12: TToolButton
        Left = 937
        Top = 0
        Caption = 'Batal Otorisasi'
        ImageIndex = 16
        OnClick = ToolButton12Click
      end
      object ToolButton14: TToolButton
        Left = 1026
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
    Width = 1161
    Height = 513
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
      Caption = 'Sales Order (SO)'
      TabVisible = False
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 1153
        Height = 483
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
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvMasterOutTanggal: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Tanggal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvMasterOutMasaBerlaku: TcxGridDBBandedColumn
            Caption = 'Berlaku S.D'
            DataBinding.FieldName = 'MasaBerlaku'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvMasterOutKodeCustSupp: TcxGridDBBandedColumn
            Caption = 'Kode Customer'
            DataBinding.FieldName = 'KodeCust'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tvMasterOutNamaCustSupp: TcxGridDBBandedColumn
            Caption = 'Nama Customer'
            DataBinding.FieldName = 'NamaCust'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 180
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tvMasterOutNobukti1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Nobukti'
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object tvMasterOutNoPesanan: TcxGridDBBandedColumn
            Caption = 'No Pesanan'
            DataBinding.FieldName = 'NoPesanan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 150
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tvMasterOutTglkirim: TcxGridDBBandedColumn
            Caption = 'Tanggal Kirim'
            DataBinding.FieldName = 'Tglkirim'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 6
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
            end
            item
              Format = ',0.##'
              Kind = skSum
              FieldName = 'Qnt2SPP'
            end
            item
              Format = ',0.##'
              Kind = skSum
              FieldName = 'Qnt2Sisa'
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
          OnCustomDrawCell = tvDetailOutCustomDrawCell
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          Bands = <
            item
              Caption = 'Deskripsi Barang'
              FixedKind = fkLeft
            end
            item
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
            Width = 179
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvDetailOutSatuan: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Satuan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 45
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvDetailOutQnt: TcxGridDBBandedColumn
            Caption = 'SO'
            DataBinding.FieldName = 'Qnt'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvDetailOutQntSPP: TcxGridDBBandedColumn
            Caption = 'SPP'
            DataBinding.FieldName = 'QntSPP'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvDetailOutQntSisa: TcxGridDBBandedColumn
            Caption = 'Sisa'
            DataBinding.FieldName = 'QntSisa'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tvDetailOutQntStock: TcxGridDBBandedColumn
            Caption = 'Stock'
            DataBinding.FieldName = 'QntStock'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 1
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tvDetailOutDBBandedColumn1: TcxGridDBBandedColumn
            Caption = 'CLose'
            DataBinding.FieldName = 'IsCLoseDet'
            Position.Editing = False
            Position.BandIndex = 1
            Position.ColIndex = 5
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
        Width = 1161
        Height = 487
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
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
            Width = 121
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
            Caption = 'No. SO'
            DataBinding.FieldName = 'NoSO'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 122
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
            Width = 151
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tvMasterNoPesan: TcxGridDBBandedColumn
            Caption = 'No. Pesanan'
            DataBinding.FieldName = 'NoPesan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 96
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tvMasterTglKirim: TcxGridDBBandedColumn
            Caption = 'Tanggal Kirim'
            DataBinding.FieldName = 'TglKirim'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object tvMasterCatatan: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Catatan'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 300
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object tvMasterIDUser: TcxGridDBBandedColumn
            Caption = 'User'
            DataBinding.FieldName = 'IDUser'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object tvMasterIsClose: TcxGridDBBandedColumn
            Caption = 'Close ?'
            DataBinding.FieldName = 'IsClose'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object tvMasterisSPB: TcxGridDBBandedColumn
            Caption = 'Ada SPB ?'
            DataBinding.FieldName = 'isSPB'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 66
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
          object tvMasterIsOtorisasi1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IsOtorisasi1'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 68
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
            Width = 69
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
            Width = 72
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
            Width = 68
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
            Width = 67
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
            DataBinding.FieldName = 'IsBatal'
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
            DataBinding.FieldName = 'userBatal'
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
          DataController.KeyFieldNames = 'MyKey'
          DataController.MasterKeyFieldNames = 'NoBukti'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OnFocusedRecordChanged = tvDetailFocusedRecordChanged
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
              FixedKind = fkLeft
            end
            item
              Caption = 'Kuantum'
            end
            item
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
            DataBinding.FieldName = 'NamaBrgKom'
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
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvDetailUkr_Kertas: TcxGridDBBandedColumn
            Caption = 'Ukuran Kertas'
            DataBinding.FieldName = 'Ukr_Kertas'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 150
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tvDetailGSM: TcxGridDBBandedColumn
            DataBinding.FieldName = 'GSM'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tvDetailShippingMark: TcxGridDBBandedColumn
            Caption = 'Shipping Mark'
            DataBinding.FieldName = 'ShippingMark'
            Visible = False
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
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object tvDetailSAT_2: TcxGridDBBandedColumn
            Caption = 'Sat'
            DataBinding.FieldName = 'SAT_2'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object tvDetailQNT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QNT'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvDetailSAT_1: TcxGridDBBandedColumn
            Caption = 'Sat'
            DataBinding.FieldName = 'Satuan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvDetailNetW: TcxGridDBBandedColumn
            Caption = 'Net Weight'
            DataBinding.FieldName = 'NetW'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvDetailGrossW: TcxGridDBBandedColumn
            Caption = 'Gross Weight'
            DataBinding.FieldName = 'GrossW'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
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
          object tvDetailKetDetail: TcxGridDBBandedColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'KetDetail'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 300
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
        end
        object tvMaster1: TcxGridDBBandedTableView
          DataController.DataSource = DsMasterBP1
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OnFocusedRecordChanged = tvMaster1FocusedRecordChanged
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Deleting = False
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
            end
            item
              Caption = 'Otorisasi'
            end>
          object tvMaster1NOBUKTI: TcxGridDBBandedColumn
            Caption = 'No. Bukti'
            DataBinding.FieldName = 'NOBUKTI'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 140
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvMaster1NOURUT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOURUT'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvMaster1NoSC: TcxGridDBBandedColumn
            Caption = 'No. Sales Contract'
            DataBinding.FieldName = 'NoSC'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 140
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tvMaster1KODECUSTSUPP: TcxGridDBBandedColumn
            DataBinding.FieldName = 'KODECUSTSUPP'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object tvMaster1NamaCustSupp: TcxGridDBBandedColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'NamaCustSupp'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 196
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tvMaster1TANGGAL: TcxGridDBBandedColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'TANGGAL'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvMaster1TglKirim: TcxGridDBBandedColumn
            Caption = 'Tanggal Kirim'
            DataBinding.FieldName = 'TglKirim'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object tvMaster1NoPesan: TcxGridDBBandedColumn
            Caption = 'No. Pesanan'
            DataBinding.FieldName = 'NoPesan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 140
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tvMaster1NoLC: TcxGridDBBandedColumn
            Caption = 'No. LC'
            DataBinding.FieldName = 'NoLC'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 140
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object tvMaster1Catatan: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Catatan'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object tvMaster1IDUser: TcxGridDBBandedColumn
            Caption = 'User'
            DataBinding.FieldName = 'IDUser'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object tvMaster1NOSHIP: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOSHIP'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object tvMaster1isSPB: TcxGridDBBandedColumn
            Caption = 'Ada SPB ?'
            DataBinding.FieldName = 'isSPB'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 75
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object tvMaster1IsClose: TcxGridDBBandedColumn
            Caption = 'Close ?'
            DataBinding.FieldName = 'IsClose'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object tvMaster1Tipe: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Tipe'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object tvMaster1MyTipe: TcxGridDBBandedColumn
            Caption = 'SPP'
            DataBinding.FieldName = 'MyTipe'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object tvMaster1IsOtorisasi1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IsOtorisasi1'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 69
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvMaster1OtoUser1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OtoUser1'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvMaster1TglOto1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TglOto1'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvMaster1IsOtorisasi2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IsOtorisasi2'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 67
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tvMaster1OtoUser2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OtoUser2'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 1
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tvMaster1TglOto2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TglOto2'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 1
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tvMaster1IsOtorisasi3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IsOtorisasi3'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 66
            Position.BandIndex = 1
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object tvMaster1OtoUser3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OtoUser3'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 1
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object tvMaster1TglOto3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TglOto3'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 1
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object tvMaster1IsOtorisasi4: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IsOtorisasi4'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 69
            Position.BandIndex = 1
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object tvMaster1OtoUser4: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OtoUser4'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 1
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object tvMaster1TglOto4: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TglOto4'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 1
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object tvMaster1IsOtorisasi5: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IsOtorisasi5'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 67
            Position.BandIndex = 1
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object tvMaster1OtoUser5: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OtoUser5'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 1
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object tvMaster1TglOto5: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TglOto5'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 1
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
        end
        object tvDetail1: TcxGridDBBandedTableView
          DataController.DataSource = DsDetailBP1
          DataController.DetailKeyFieldNames = 'NOBUKTI'
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.KeyFieldNames = 'MyKey'
          DataController.MasterKeyFieldNames = 'NOBUKTI'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OnFocusedRecordChanged = tvDetail1FocusedRecordChanged
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
          object tvDetail1NOBUKTI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOBUKTI'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object tvDetail1URUT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'URUT'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object tvDetail1KODEBRG: TcxGridDBBandedColumn
            Caption = 'Kode Barang'
            DataBinding.FieldName = 'KODEBRG'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvDetail1NAMABRG: TcxGridDBBandedColumn
            Caption = 'Nama Barang'
            DataBinding.FieldName = 'NamaBrgKom'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 200
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvDetail1Jns_Kertas: TcxGridDBBandedColumn
            Caption = 'Jenis Kertas'
            DataBinding.FieldName = 'Jns_Kertas'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvDetail1Ukr_Kertas: TcxGridDBBandedColumn
            Caption = 'Ukuran Kertas'
            DataBinding.FieldName = 'Ukr_Kertas'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 150
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tvDetail1GSM: TcxGridDBBandedColumn
            DataBinding.FieldName = 'GSM'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tvDetail1ShippingMark: TcxGridDBBandedColumn
            Caption = 'Shipping Mark'
            DataBinding.FieldName = 'ShippingMark'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 200
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tvDetail1QNT2: TcxGridDBBandedColumn
            Caption = 'Qnt'
            DataBinding.FieldName = 'QNT2'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvDetail1SAT_2: TcxGridDBBandedColumn
            Caption = 'Sat'
            DataBinding.FieldName = 'SAT_2'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvDetail1QNT: TcxGridDBBandedColumn
            Caption = 'Qnt'
            DataBinding.FieldName = 'QNT'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvDetail1SAT_1: TcxGridDBBandedColumn
            Caption = 'Sat'
            DataBinding.FieldName = 'SAT_1'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvDetail1ISI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ISI'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object tvDetail1NetW: TcxGridDBBandedColumn
            Caption = 'Net Weight'
            DataBinding.FieldName = 'NetW'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvDetail1GrossW: TcxGridDBBandedColumn
            Caption = 'Gross Weight'
            DataBinding.FieldName = 'GrossW'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvDetail1KetDetail: TcxGridDBBandedColumn
            DataBinding.FieldName = 'KetDetail'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object tvDetail1NoSHIP: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NoSHIP'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object tvDetail1UrutSHIP: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UrutSHIP'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
        end
        object tvSPB: TcxGridDBBandedTableView
          DataController.DataSource = DsSPB
          DataController.DetailKeyFieldNames = 'MySPP'
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
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
          Styles.StyleSheet = DM.cxGridBandStyleHd
          Styles.Header = DM.cxStyle8
          Styles.BandHeader = DM.cxStyle8
          Bands = <
            item
              Caption = 'Deskripsi'
            end
            item
              Caption = 'Satuan 2'
            end
            item
              Caption = 'Satuan 1'
            end
            item
            end>
          object tvSPBNoBukti: TcxGridDBBandedColumn
            Caption = 'No. SPB'
            DataBinding.FieldName = 'NoBukti'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 140
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
          object tvSPBQnt2: TcxGridDBBandedColumn
            Caption = 'Qnt'
            DataBinding.FieldName = 'Qnt2'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvSPBSAT_2: TcxGridDBBandedColumn
            Caption = 'Sat'
            DataBinding.FieldName = 'SAT_2'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvSPBQnt: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Qnt'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvSPBSAT_1: TcxGridDBBandedColumn
            Caption = 'Sat'
            DataBinding.FieldName = 'SAT_1'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvSPBMySPP: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MySPP'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object tvSPBMyKey: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MyKey'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object tvSPBNetW: TcxGridDBBandedColumn
            Caption = 'Net Weight'
            DataBinding.FieldName = 'NetW'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvSPBGrossW: TcxGridDBBandedColumn
            Caption = 'Gross Weight'
            DataBinding.FieldName = 'GrossW'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvSPBDBBandedColumn1: TcxGridDBBandedColumn
            Caption = 'Authorisasi'
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
        end
        object tvSPB1: TcxGridDBBandedTableView
          DataController.DataSource = DSSPB1
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
          OptionsView.Indicator = True
          Styles.StyleSheet = DM.cxGridBandStyleHd
          Styles.Header = DM.cxStyle8
          Styles.BandHeader = DM.cxStyle8
          Bands = <
            item
            end
            item
            end
            item
            end
            item
            end>
          object tvSPB1NoBukti: TcxGridDBBandedColumn
            Caption = 'No. SPB'
            DataBinding.FieldName = 'NoBukti'
            Width = 140
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvSPB1Tanggal: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Tanggal'
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvSPB1Qnt2: TcxGridDBBandedColumn
            Caption = 'Qnt'
            DataBinding.FieldName = 'Qnt2'
            Width = 80
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvSPB1SAT_2: TcxGridDBBandedColumn
            Caption = 'Sat'
            DataBinding.FieldName = 'SAT_2'
            Width = 40
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvSPB1Qnt: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Qnt'
            Width = 80
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvSPB1SAT_1: TcxGridDBBandedColumn
            Caption = 'Sat'
            DataBinding.FieldName = 'SAT_1'
            Width = 40
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvSPB1MySPP: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MySPP'
            Visible = False
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object tvSPB1MyKey: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MyKey'
            Visible = False
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object tvSPB1NetW: TcxGridDBBandedColumn
            Caption = 'Net Weight'
            DataBinding.FieldName = 'NetW'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvSPB1GrossW: TcxGridDBBandedColumn
            Caption = 'Gross Weight'
            DataBinding.FieldName = 'GrossW'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object cxGrid1Level1: TcxGridLevel
          Caption = 'Daftar Surat Pengiriman'
          GridView = tvMaster
          object cxGrid1Level2: TcxGridLevel
            GridView = tvDetail
            object cxGrid1Level5: TcxGridLevel
              GridView = tvSPB
            end
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
      'declare @Tahun int, @Bulan int, @Periode Varchar(20)'
      ''
      'select @Tahun=2012, @Bulan=7'
      ''
      
        'Select @Periode=Cast(@tahun as varchar(4))+Case when @bulan<10 t' +
        'hen '#39'0'#39' else '#39#39' end+Cast(@bulan as varchar(2))'
      ''
      
        'Select  Distinct  A.Nobukti, P.Tanggal, P.KodeCust , S.NamaCust,' +
        ' P.NoPesanan, P.Tglkirim, A.MasaBerlaku      '
      'From    vwBrowsOutSO_SPP A'
      'Left Outer Join DBSO P on P.NoBukti=A.NoBukti'
      'Left Outer Join vwBrowsCustomer S on S.KodeCust=P.KodeCust'
      
        'where cast(year(P.Tanggal) as varchar(4))+Case when month(P.tang' +
        'gal)<10 then '#39'0'#39' else '#39#39' end+Cast(month(P.Tanggal) as varchar(2)' +
        ')<=@Periode and'
      'A.islengkap=0'
      'and'
      'Cast(Case when Case when P.IsOtorisasi1=1 then 1 else 0 end+'
      
        '                     Case when P.IsOtorisasi2=1 then 1 else 0 en' +
        'd+'
      
        '                     Case when P.IsOtorisasi3=1 then 1 else 0 en' +
        'd+'
      
        '                     Case when P.IsOtorisasi4=1 then 1 else 0 en' +
        'd+'
      
        '                     Case when P.IsOtorisasi5=1 then 1 else 0 en' +
        'd=P.MaxOL then 0'
      '                else 1'
      '           end As Bit)=0'
      'Order by P.TglKirim, A.Nobukti')
    Left = 352
    Top = 232
    object QuMasterNobukti: TStringField
      FieldName = 'Nobukti'
      Size = 30
    end
    object QuMasterTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuMasterKodeCust: TStringField
      FieldName = 'KodeCust'
      Size = 15
    end
    object QuMasterNamaCust: TStringField
      FieldName = 'NamaCust'
      Size = 100
    end
    object QuMasterNoPesanan: TStringField
      FieldName = 'NoPesanan'
      Size = 150
    end
    object QuMasterTglkirim: TDateTimeField
      FieldName = 'Tglkirim'
    end
    object QuMasterMasaBerlaku: TDateTimeField
      FieldName = 'MasaBerlaku'
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
    Parameters = <
      item
        Name = '0'
        DataType = ftString
        Size = 1
        Value = '4'
      end
      item
        Name = '1'
        DataType = ftString
        Size = 4
        Value = '2013'
      end>
    SQL.Strings = (
      'declare @Tahun int, @Bulan int'
      'Select @Bulan=:0,@Tahun=:1'
      
        'select'#9'A.NOBUKTI, A.NOURUT, A.TANGGAL, A.TglKirim, A.NOSHIP, A.N' +
        'oPesan, A.KodeCustSupp KODECUSTSUPP, B.NAMACUSTSUPP NamaCustSupp' +
        ','
      
        '        null ShippingMark, A.NoLC, A.Catatan, A.IDUser, C.Nobukt' +
        'i NoSO,'
      
        '        Cast(Case when D.NoSPP is not null then 1 else 0 end as ' +
        'bit) isSPB,'
      '        A.IsClose, A.IsFlag Tipe,'
      '        Case when A.isFlag=0 then '#39'SPP Barang Jadi'#39
      '             when A.isFlag=1 then '#39'SPP Bahan Baku dan Lain-lain'#39
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
      '        ,Isnull(A.Isbatal,0) IsBatal,A.userBatal,A.Tglbatal'
      'from dbSPP A'
      '     Left Outer join (Select NoBukti, NoSO'
      '                      from dbSPPDet'
      
        '                      Group by NoBukti, NoSO) E on E.NoBukti=A.N' +
        'oBukti '
      'left Outer join dbSO c on c.Nobukti=e.NoSO'
      
        '--left outer join vwBrowsCustomer B on B.KodeCust=A.KodeCustSupp' +
        ' and B.Sales=c.KODESLS'
      'left outer join DBCUSTSUPP B on B.KODECUSTSUPP=A.KodeCustSupp'
      'left Outer join (Select NoSPP from dbSPBDet x'
      '                 group by NoSPP) D on D.NoSPP=A.NoBukti    '
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
    object QuMasterBPTglKirim: TDateTimeField
      FieldName = 'TglKirim'
    end
    object QuMasterBPNOSHIP: TStringField
      FieldName = 'NOSHIP'
      Size = 30
    end
    object QuMasterBPNoPesan: TStringField
      FieldName = 'NoPesan'
      Size = 30
    end
    object QuMasterBPKODECUSTSUPP: TStringField
      FieldName = 'KODECUSTSUPP'
      Size = 15
    end
    object QuMasterBPNamaCustSupp: TStringField
      FieldName = 'NamaCustSupp'
      Size = 100
    end
    object QuMasterBPShippingMark: TIntegerField
      FieldName = 'ShippingMark'
      ReadOnly = True
    end
    object QuMasterBPNoLC: TStringField
      FieldName = 'NoLC'
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
    object QuMasterBPNoSO: TStringField
      FieldName = 'NoSO'
      Size = 30
    end
    object QuMasterBPisSPB: TBooleanField
      FieldName = 'isSPB'
      ReadOnly = True
    end
    object QuMasterBPIsClose: TBooleanField
      FieldName = 'IsClose'
    end
    object QuMasterBPTipe: TBooleanField
      FieldName = 'Tipe'
    end
    object QuMasterBPMyTipe: TStringField
      FieldName = 'MyTipe'
      ReadOnly = True
      Size = 28
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
    object QuMasterBPIsBatal: TBooleanField
      FieldName = 'IsBatal'
      ReadOnly = True
    end
    object QuMasterBPuserBatal: TStringField
      FieldName = 'userBatal'
      Size = 15
    end
    object QuMasterBPTglbatal: TDateTimeField
      FieldName = 'Tglbatal'
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
        Value = 'SJY/DO/0712/00001'
      end>
    SQL.Strings = (
      'DEclare @nobukti varchar(50)'
      'Select @nobukti=:Nobukti'
      
        'select '#9'B.NOBUKTI, B.URUT, B.NoSO, B.UrutSO, B.KODEBRG, C.NAMABR' +
        'G, '
      
        '        B.QNT, B.QNT2, B.SAT_1, B.SAT_2, B.ISI, B.NetW, B.GrossW' +
        ', B.KetDetail,'
      '        B.Nobukti+Cast(B.urut As Varchar(5)) MyKey,'
      '        B.NamaBrg+Char(13)+'#39'('#39'+C.NamaBrg+'#39')'#39' NamaBrgKom,'
      
        '        B.ShippingMark, Case when B.Nosat=1 then B.Sat_1 when B.' +
        'nosat=2 then B.Sat_2 else '#39#39' end Satuan'
      'from'#9'dbSPPDet B'
      '      left outer join dbBarang C on C.KodeBrg=B.KodeBrg'
      'where'#9'B.NoBukti=@NoBukti'
      'order by B.Urut'
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
    object QuDetailBPNoSO: TStringField
      FieldName = 'NoSO'
      Size = 30
    end
    object QuDetailBPUrutSO: TIntegerField
      FieldName = 'UrutSO'
    end
    object QuDetailBPKODEBRG: TStringField
      FieldName = 'KODEBRG'
      Size = 25
    end
    object QuDetailBPNAMABRG: TStringField
      FieldName = 'NAMABRG'
      Size = 100
    end
    object QuDetailBPQNT: TBCDField
      FieldName = 'QNT'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailBPQNT2: TBCDField
      FieldName = 'QNT2'
      DisplayFormat = ',0.00'
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
      Size = 4000
    end
    object QuDetailBPMyKey: TStringField
      FieldName = 'MyKey'
      ReadOnly = True
      Size = 35
    end
    object QuDetailBPNamaBrgKom: TStringField
      FieldName = 'NamaBrgKom'
      ReadOnly = True
      Size = 303
    end
    object QuDetailBPShippingMark: TStringField
      FieldName = 'ShippingMark'
      Size = 8000
    end
    object QuDetailBPSatuan: TStringField
      FieldName = 'Satuan'
      ReadOnly = True
      Size = 5
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
        Value = 'SJY/SO/0712/00006'
      end
      item
        Name = '0'
        DataType = ftString
        Size = 1
        Value = '7'
      end
      item
        Name = '1'
        DataType = ftString
        Size = 4
        Value = '2012'
      end>
    SQL.Strings = (
      'DEclare @nobukti varchar(50), @bulan int, @tahun int'
      'Select @nobukti=:NoBukti, @bulan=:0, @tahun=:1'
      
        'Select  A.NoBukti+right('#39'00000'#39'+cast(A.Urut as varchar(5)),5) Ke' +
        'yNoBukti, A.Nobukti, P.Tanggal, P.Kodecust KodeCustSupp, S.NamaC' +
        'ust NamaCustSupp,'
      '        A.urut, A.kodebrg, B.NamaBrg, A.Satuan, A.Isi,'
      '        Case when A.NoSat=1 then A.Qnt'
      '             when A.NoSat=2 then A.Qnt2'
      '             else 0'
      '        end Qnt, A.Qnt2,'
      '        Case when A.NoSat=1 then A.QntSPP'
      '             when A.NoSat=2 then A.Qnt2SPP'
      '             else 0'
      '        end QntSPP, A.Qnt2SPP,'
      '        Case when A.NoSat=1 then A.QntSisa'
      '             when A.NoSat=2 then A.Qnt2Sisa'
      '             else 0'
      '        end QntSisa, A.Qnt2Sisa,'
      '        Case when A.NoSat=1 then isnull(E.Qnt1,0)'
      '             when A.NoSat=2 then isnull(E.Qnt2,0)'
      '             else 0'
      '        end QntStock,IsCLoseDet'
      'From    vwBrowsOutSO_SPP A'
      '     Left Outer Join DBSO P on P.NoBukti=A.NoBukti'
      
        '     Left Outer Join vwBrowsCustomer S on S.KodeCust=P.KodeCust ' +
        'and S.Sales=P.KODESLS'
      '     Left Outer Join dbBarang B on B.KodeBrg=A.KodeBrg'
      
        '     Left Outer join (Select Kodebrg, Sum(SaldoQnt) Qnt1, Sum(Sa' +
        'ldo2Qnt) Qnt2'
      '                      from dbstockAv'
      '                      where Bulan=@bulan and Tahun=@Tahun'
      '                      Group by kodebrg) E on E.Kodebrg=A.Kodebrg'
      'where A.Nobukti=@Nobukti')
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
    object QuDetailSatuan: TStringField
      FieldName = 'Satuan'
      Size = 5
    end
    object QuDetailQntStock: TFloatField
      FieldName = 'QntStock'
      ReadOnly = True
    end
    object QuDetailIsCLoseDet: TBooleanField
      FieldName = 'IsCLoseDet'
    end
  end
  object DsDetail: TDataSource
    DataSet = QuDetail
    Left = 400
    Top = 272
  end
  object QuMasterBP1: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @Tahun int, @Bulan int, @Periode Varchar(20)'
      ''
      'select @Tahun=2011, @Bulan=6'
      ''
      
        'Select @Periode=Cast(@tahun as varchar(4))+Case when @bulan<10 t' +
        'hen '#39'0'#39' else '#39#39' end+Cast(@bulan as varchar(2))'
      ''
      
        'select'#9'A.NOBUKTI, A.NOURUT, A.TANGGAL, A.TglKirim, A.NOSHIP, A.N' +
        'oPesan, A.KODECUSTSUPP, B.NamaCustSupp,'
      '        null ShippingMark, A.NoLC, A.Catatan, A.IDUser, C.NoSC,'
      
        '        Cast(Case when D.NoSPP is not null then 1 else 0 end as ' +
        'bit) isSPB,'
      '        A.IsClose, A.IsFlag Tipe,'
      '        Case when A.isFlag=0 then '#39'Rekam Lanjut Barang Jadi'#39
      
        '             when A.isFlag=1 then '#39'Rekam Lanjut Bahan Baku dan L' +
        'ain-lain'#39
      '             else '#39#39
      '        end MyTipe,'
      '        A.IsOtorisasi1, A.OtoUser1, A.TglOto1,'
      '        A.IsOtorisasi2, A.OtoUser2, A.TglOto2,'
      '        A.IsOtorisasi3, A.OtoUser3, A.TglOto3,'
      '        A.IsOtorisasi4, A.OtoUser4, A.TglOto4,'
      '        A.IsOtorisasi5, A.OtoUser5, A.TglOto5'
      'from'#9'dbSPP A'
      'left outer join vwBrowsCust B on B.KodeCustSupp=A.KodeCustSupp'
      'left Outer join dbShipping c on c.Nobukti=A.noship'
      'left Outer join (Select NoSPP from dbSPBDet x'
      '                 group by NoSPP) D on D.NoSPP=A.NoBukti'
      
        'where A.IsClose=0 and cast(year(A.Tanggal) as varchar(4))+Case w' +
        'hen month(A.tanggal)<10 then '#39'0'#39' else '#39#39' end+Cast(month(A.Tangga' +
        'l) as varchar(2))<=@Periode'
      'union'
      
        'select'#9'A.NOBUKTI, A.NOURUT, A.TANGGAL, A.TglKirim, A.NOSHIP, A.N' +
        'oPesan, A.KODECUSTSUPP, B.NamaCustSupp,'
      '        null ShippingMark, A.NoLC, A.Catatan, A.IDUser, C.NoSC,'
      
        '        Cast(Case when D.NoSPP is not null then 1 else 0 end as ' +
        'bit) isSPB,'
      '        A.IsClose, A.IsFlag Tipe,'
      '        Case when A.isFlag=0 then '#39'Rekam Lanjut Barang Jadi'#39
      
        '             when A.isFlag=1 then '#39'Rekam Lanjut Bahan Baku dan L' +
        'ain-lain'#39
      '             else '#39#39
      '        end MyTipe,'
      '        A.IsOtorisasi1, A.OtoUser1, A.TglOto1,'
      '        A.IsOtorisasi2, A.OtoUser2, A.TglOto2,'
      '        A.IsOtorisasi3, A.OtoUser3, A.TglOto3,'
      '        A.IsOtorisasi4, A.OtoUser4, A.TglOto4,'
      '        A.IsOtorisasi5, A.OtoUser5, A.TglOto5'
      'from'#9'dbSPPBHN A'
      'left outer join vwBrowsCust B on B.KodeCustSupp=A.KodeCustSupp'
      'left Outer join dbShippingBHN c on c.Nobukti=A.noship'
      'left Outer join (Select NoSPP from dbSPBBHNDet x'
      '                 group by NoSPP) D on D.NoSPP=A.NoBukti'
      
        'where A.IsClose=0 and cast(year(A.Tanggal) as varchar(4))+Case w' +
        'hen month(A.tanggal)<10 then '#39'0'#39' else '#39#39' end+Cast(month(A.Tangga' +
        'l) as varchar(2))<=@Periode '
      'order by A.NoBukti'
      '')
    Left = 24
    Top = 280
    object StringField12: TStringField
      FieldName = 'NOBUKTI'
      Size = 30
    end
    object StringField13: TStringField
      FieldName = 'NOURUT'
      Size = 7
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'TANGGAL'
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'TglKirim'
    end
    object StringField14: TStringField
      FieldName = 'NoPesan'
      Size = 30
    end
    object StringField15: TStringField
      FieldName = 'KODECUSTSUPP'
    end
    object StringField16: TStringField
      FieldName = 'NamaCustSupp'
      Size = 80
    end
    object StringField18: TStringField
      FieldName = 'NoLC'
      Size = 50
    end
    object StringField19: TStringField
      FieldName = 'Catatan'
      Size = 4000
    end
    object StringField20: TStringField
      FieldName = 'IDUser'
      Size = 30
    end
    object StringField21: TStringField
      FieldName = 'NOSHIP'
      Size = 30
    end
    object StringField22: TStringField
      FieldName = 'NoSC'
      Size = 30
    end
    object QuMasterBP1isSPB: TBooleanField
      FieldName = 'isSPB'
      ReadOnly = True
    end
    object QuMasterBP1IsClose: TBooleanField
      FieldName = 'IsClose'
    end
    object QuMasterBP1ShippingMark: TIntegerField
      FieldName = 'ShippingMark'
      ReadOnly = True
    end
    object QuMasterBP1Tipe: TBooleanField
      FieldName = 'Tipe'
      ReadOnly = True
    end
    object QuMasterBP1MyTipe: TStringField
      FieldName = 'MyTipe'
      ReadOnly = True
      Size = 37
    end
    object QuMasterBP1IsOtorisasi1: TBooleanField
      FieldName = 'IsOtorisasi1'
      ReadOnly = True
    end
    object QuMasterBP1OtoUser1: TStringField
      FieldName = 'OtoUser1'
      ReadOnly = True
      Size = 15
    end
    object QuMasterBP1TglOto1: TDateTimeField
      FieldName = 'TglOto1'
      ReadOnly = True
    end
    object QuMasterBP1IsOtorisasi2: TBooleanField
      FieldName = 'IsOtorisasi2'
      ReadOnly = True
    end
    object QuMasterBP1OtoUser2: TStringField
      FieldName = 'OtoUser2'
      ReadOnly = True
      Size = 15
    end
    object QuMasterBP1TglOto2: TDateTimeField
      FieldName = 'TglOto2'
      ReadOnly = True
    end
    object QuMasterBP1IsOtorisasi3: TBooleanField
      FieldName = 'IsOtorisasi3'
      ReadOnly = True
    end
    object QuMasterBP1OtoUser3: TStringField
      FieldName = 'OtoUser3'
      ReadOnly = True
      Size = 15
    end
    object QuMasterBP1TglOto3: TDateTimeField
      FieldName = 'TglOto3'
      ReadOnly = True
    end
    object QuMasterBP1IsOtorisasi4: TBooleanField
      FieldName = 'IsOtorisasi4'
      ReadOnly = True
    end
    object QuMasterBP1OtoUser4: TStringField
      FieldName = 'OtoUser4'
      ReadOnly = True
      Size = 15
    end
    object QuMasterBP1TglOto4: TDateTimeField
      FieldName = 'TglOto4'
      ReadOnly = True
    end
    object QuMasterBP1IsOtorisasi5: TBooleanField
      FieldName = 'IsOtorisasi5'
      ReadOnly = True
    end
    object QuMasterBP1OtoUser5: TStringField
      FieldName = 'OtoUser5'
      ReadOnly = True
      Size = 15
    end
    object QuMasterBP1TglOto5: TDateTimeField
      FieldName = 'TglOto5'
      ReadOnly = True
    end
  end
  object DsMasterBP1: TDataSource
    DataSet = QuMasterBP1
    Left = 56
    Top = 280
  end
  object QuDetailBP1: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    DataSource = DsMasterBP1
    Parameters = <
      item
        Name = 'NoBukti'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = 'SPP/0111/00003/SZZ'
      end>
    SQL.Strings = (
      
        'select '#9'B.NOBUKTI, B.URUT, B.NoSHIP, B.UrutSHIP, B.KODEBRG, C.NA' +
        'MABRG, C.Jns_Kertas, C.Ukr_Kertas,'
      
        '        B.QNT, B.QNT2, B.SAT_1, B.SAT_2, B.ISI, B.NetW, B.GrossW' +
        ', B.KetDetail,'
      '        B.Nobukti+Cast(B.urut As Varchar(5)) MyKey,'
      '        B.NamaBrg+Char(13)+'#39'('#39'+C.NamaBrg+'#39')'#39' NamaBrgKom,'
      '        C.GSM, B.ShippingMark'
      'from'#9'dbSPPDet B'
      'left outer join dbBarangJadi C on C.KodeBrg=B.KodeBrg'
      'where'#9'B.NoBukti=:NoBukti'
      'order by B.Urut'
      ''
      '')
    Left = 96
    Top = 280
    object StringField23: TStringField
      FieldName = 'NOBUKTI'
      Size = 50
    end
    object IntegerField2: TIntegerField
      FieldName = 'URUT'
    end
    object StringField24: TStringField
      FieldName = 'KODEBRG'
      Size = 25
    end
    object StringField25: TStringField
      FieldName = 'NAMABRG'
      Size = 200
    end
    object BCDField8: TBCDField
      FieldName = 'QNT'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object BCDField9: TBCDField
      FieldName = 'QNT2'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object StringField26: TStringField
      FieldName = 'SAT_1'
      Size = 5
    end
    object StringField27: TStringField
      FieldName = 'SAT_2'
      Size = 5
    end
    object BCDField10: TBCDField
      FieldName = 'ISI'
      Precision = 18
      Size = 2
    end
    object BCDField11: TBCDField
      FieldName = 'NetW'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object BCDField12: TBCDField
      FieldName = 'GrossW'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object StringField28: TStringField
      FieldName = 'KetDetail'
      Size = 1000
    end
    object StringField29: TStringField
      FieldName = 'Jns_Kertas'
      Size = 50
    end
    object StringField30: TStringField
      FieldName = 'Ukr_Kertas'
      Size = 50
    end
    object StringField31: TStringField
      FieldName = 'NoSHIP'
      Size = 30
    end
    object IntegerField3: TIntegerField
      FieldName = 'UrutSHIP'
    end
    object QuDetailBP1GSM: TBCDField
      FieldName = 'GSM'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuDetailBP1NamaBrgKom: TStringField
      FieldName = 'NamaBrgKom'
      ReadOnly = True
      Size = 403
    end
    object QuDetailBP1MyKey: TStringField
      FieldName = 'MyKey'
      ReadOnly = True
      Size = 35
    end
    object QuDetailBP1ShippingMark: TStringField
      FieldName = 'ShippingMark'
      Size = 8000
    end
  end
  object DsDetailBP1: TDataSource
    DataSet = QuDetailBP1
    Left = 128
    Top = 280
  end
  object QuSPB: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    DataSource = DsDetailBP
    Parameters = <
      item
        Name = 'Mykey'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 35
        Value = 'SJY/DO/0712/000011'
      end>
    SQL.Strings = (
      'DEclare @MyKey varchar(50)'
      'Select @MyKey=:MyKey'
      
        'Select A.NoBukti,A.Tanggal, SUM(B.Qnt) Qnt, SUM(B.Qnt2) Qnt2, B.' +
        'SAT_1, B.SAT_2,'
      '           B.NoSPP+Cast(B.UrutSPP as varchar(5)) MySPP,'
      '           B.NoBukti+Cast(B.Urut as varchar(5)) MyKey,'
      '       Sum(B.NetW) NetW, Sum(B.GrossW) GrossW'
      'From dbSPB A'
      '     left Outer join dbSPBDet B on B.NoBukti=A.NoBukti'
      'Where B.NoSPP+Cast(B.UrutSPP as varchar(5))=@Mykey'
      'group by A.NoBukti,A.Tanggal,B.SAT_1, B.SAT_2,'
      '         B.NoSPP+Cast(B.UrutSPP as varchar(5)),'
      '           B.NoBukti+Cast(B.Urut as varchar(5))'
      'Order By A.nobukti')
    Left = 160
    Top = 248
    object QuSPBNoBukti: TStringField
      FieldName = 'NoBukti'
      Size = 30
    end
    object QuSPBTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuSPBQnt: TBCDField
      FieldName = 'Qnt'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuSPBQnt2: TBCDField
      FieldName = 'Qnt2'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuSPBSAT_1: TStringField
      FieldName = 'SAT_1'
      Size = 5
    end
    object QuSPBSAT_2: TStringField
      FieldName = 'SAT_2'
      Size = 5
    end
    object QuSPBMySPP: TStringField
      FieldName = 'MySPP'
      ReadOnly = True
      Size = 35
    end
    object QuSPBMyKey: TStringField
      FieldName = 'MyKey'
      ReadOnly = True
      Size = 35
    end
    object QuSPBNetW: TBCDField
      FieldName = 'NetW'
      ReadOnly = True
      Visible = False
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuSPBGrossW: TBCDField
      FieldName = 'GrossW'
      ReadOnly = True
      Visible = False
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
  end
  object DsSPB: TDataSource
    DataSet = QuSPB
    Left = 192
    Top = 248
  end
  object QuSPB1: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    DataSource = DsDetailBP1
    Parameters = <
      item
        Name = 'Mykey'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 35
        Value = 'SPP/0111/00003/SZZ1'
      end>
    SQL.Strings = (
      
        'Select A.NoBukti,A.Tanggal, SUM(B.Qnt) Qnt, SUM(B.Qnt2) Qnt2, B.' +
        'SAT_1, B.SAT_2,'
      '           B.NoSPP+Cast(B.UrutSPP as varchar(5)) MySPP,'
      '           B.NoBukti+Cast(B.Urut as varchar(5)) MyKey,'
      '       Sum(B.NetW) NetW, Sum(B.GrossW) GrossW'
      'From dbSPB A'
      '     left Outer join dbSPBDet B on B.NoBukti=A.NoBukti'
      'Where B.NoSPP+Cast(B.UrutSPP as varchar(5))=:Mykey'
      'group by A.NoBukti,A.Tanggal,B.SAT_1, B.SAT_2,'
      '         B.NoSPP+Cast(B.UrutSPP as varchar(5)),'
      '           B.NoBukti+Cast(B.Urut as varchar(5))'
      'Order By A.nobukti '
      '')
    Left = 160
    Top = 280
    object QuSPB1NoBukti: TStringField
      FieldName = 'NoBukti'
      Size = 30
    end
    object QuSPB1Tanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuSPB1Qnt: TBCDField
      FieldName = 'Qnt'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
      Size = 2
    end
    object QuSPB1Qnt2: TBCDField
      FieldName = 'Qnt2'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
      Size = 2
    end
    object QuSPB1SAT_1: TStringField
      FieldName = 'SAT_1'
      Size = 5
    end
    object QuSPB1SAT_2: TStringField
      FieldName = 'SAT_2'
      Size = 5
    end
    object QuSPB1MySPP: TStringField
      FieldName = 'MySPP'
      ReadOnly = True
      Size = 35
    end
    object QuSPB1MyKey: TStringField
      FieldName = 'MyKey'
      ReadOnly = True
      Size = 35
    end
    object QuSPB1NetW: TBCDField
      FieldName = 'NetW'
      ReadOnly = True
      DisplayFormat = ',0.#'
      Precision = 32
      Size = 2
    end
    object QuSPB1GrossW: TBCDField
      FieldName = 'GrossW'
      ReadOnly = True
      DisplayFormat = ',0.#'
      Precision = 32
      Size = 2
    end
  end
  object DSSPB1: TDataSource
    DataSet = QuSPB1
    Left = 192
    Top = 280
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10
    DefaultRightMargin = 10
    DefaultTopMargin = 10
    DefaultBottomMargin = 10
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 472
    Top = 336
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
    Left = 466
    Top = 306
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDCetak'
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
          DataSetName = 'frxDBDCetak'
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
          DataSetName = 'frxDBDCetak'
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
          DataSetName = 'frxDBDCetak'
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
          DataSetName = 'frxDBDCetak'
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
          DataSetName = 'frxDBDCetak'
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
          DataSetName = 'frxDBDCetak'
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
          DataSetName = 'frxDBDCetak'
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
          DataSetName = 'frxDBDCetak'
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
        DataSetName = 'frxDBDCetak'
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
          DataSetName = 'frxDBDCetak'
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
          DataSetName = 'frxDBDCetak'
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
          DataSetName = 'frxDBDCetak'
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
          DataSetName = 'frxDBDCetak'
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
          DataSetName = 'frxDBDCetak'
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
          DataSetName = 'frxDBDCetak'
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
          DataSetName = 'frxDBDCetak'
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
          DataSetName = 'frxDBDCetak'
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
          DataSetName = 'frxDBDCetak'
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
          DataSetName = 'frxDBDCetak'
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
    UserName = 'frxDBDCetak'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 436
    Top = 306
  end
  object frxDataPerusahaan: TfrxDBDataset
    UserName = 'frxDataPerusahaan'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 440
    Top = 336
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
    Left = 520
    Top = 302
  end
  object QuReport: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @NoBukti varchar(20)'
      ''
      'select '#9'@NoBukti='#39'VSM/092009/00001/PNJ'#39
      ''
      'select * from vwcetakspb'
      'order By Urut')
    Left = 456
    Top = 112
  end
  object frxDBCetak: TfrxDBDataset
    UserName = 'frxDBCetak'
    CloseDataSource = False
    DataSet = QuReport
    BCDToCurrency = False
    Left = 512
    Top = 128
  end
end
