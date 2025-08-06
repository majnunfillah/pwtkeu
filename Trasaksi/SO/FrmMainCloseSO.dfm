object FrMainClose: TFrMainClose
  Left = -4
  Top = -4
  Width = 1374
  Height = 642
  Caption = 'Sales Order'
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
    Width = 1366
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 1366
      Height = 41
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
        Visible = False
        OnClick = ToolButton1Click
      end
      object ToolButton2: TToolButton
        Left = 89
        Top = 0
        Hint = 'Koreksi Record'
        Caption = '&Koreksi'
        ImageIndex = 1
        Visible = False
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
        Visible = False
        OnClick = ToolButton4Click
      end
      object ToolButton12: TToolButton
        Left = 762
        Top = 0
        Caption = 'Otorisasi Batal'
        ImageIndex = 16
        Visible = False
        OnClick = ToolButton12Click
      end
      object ToolButton13: TToolButton
        Left = 851
        Top = 0
        Caption = 'Cetak'
        ImageIndex = 4
        Visible = False
        OnClick = ToolButton13Click
      end
      object ToolButton14: TToolButton
        Left = 940
        Top = 0
        Caption = 'Batal'
        ImageIndex = 6
        Visible = False
        OnClick = ToolButton14Click
      end
    end
  end
  object dxPageControl1: TdxPageControl
    Left = 0
    Top = 48
    Width = 1366
    Height = 560
    ActivePage = dxTSDafSJ
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
    TabOrder = 1
    TabPosition = dxtpTop
    TabWidth = 0
    object dxTSDafSJ: TdxTabSheet
      Caption = 'SO - Sales Order Belum Selesai'
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1366
        Height = 534
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
              FieldName = 'TotNetRp'
              Column = tvMasterTotNetRp
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
            Width = 150
          end
          object tvMasterTanggal: TcxGridDBColumn
            DataBinding.FieldName = 'Tanggal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
          end
          object tvMasterKodeCust: TcxGridDBColumn
            DataBinding.FieldName = 'KodeCust'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterNamaCust: TcxGridDBColumn
            Caption = 'Nama Pelanggan'
            DataBinding.FieldName = 'NamaCust'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 200
          end
          object tvMasterAlamatKirim: TcxGridDBColumn
            Caption = 'Alamat Kirim'
            DataBinding.FieldName = 'AlamatKirim'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 250
          end
          object tvMasterNamaKota: TcxGridDBColumn
            Caption = 'Nama Kota'
            DataBinding.FieldName = 'NamaKota'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object tvMasterHandling: TcxGridDBColumn
            DataBinding.FieldName = 'Handling'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 110
          end
          object tvMasterTotSubTotal: TcxGridDBColumn
            DataBinding.FieldName = 'TotSubTotal'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 110
          end
          object tvMasterTotDiskon: TcxGridDBColumn
            DataBinding.FieldName = 'TotDiskon'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 110
          end
          object tvMasterTotTotal: TcxGridDBColumn
            DataBinding.FieldName = 'TotTotal'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 110
          end
          object tvMasterTotDPP: TcxGridDBColumn
            DataBinding.FieldName = 'TotDPP'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 110
          end
          object tvMasterTotPPN: TcxGridDBColumn
            DataBinding.FieldName = 'TotPPN'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 110
          end
          object tvMasterTotNet: TcxGridDBColumn
            DataBinding.FieldName = 'TotNet'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 110
          end
          object tvMasterTotSubTotalRp: TcxGridDBColumn
            Caption = 'Sub Total'
            DataBinding.FieldName = 'TotSubTotalRp'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 110
          end
          object tvMasterTotDiskonRp: TcxGridDBColumn
            DataBinding.FieldName = 'TotDiskonRp'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 110
          end
          object tvMasterTotTotalRp: TcxGridDBColumn
            DataBinding.FieldName = 'TotTotalRp'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 110
          end
          object tvMasterTotDPPRp: TcxGridDBColumn
            Caption = 'DPP'
            DataBinding.FieldName = 'TotDPPRp'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 110
          end
          object tvMasterTotPPNRp: TcxGridDBColumn
            Caption = 'PPN'
            DataBinding.FieldName = 'TotPPNRp'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 110
          end
          object tvMasterTotNetRp: TcxGridDBColumn
            Caption = 'Grand Total'
            DataBinding.FieldName = 'TotNetRp'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 110
          end
          object tvMasterNoUrut: TcxGridDBColumn
            DataBinding.FieldName = 'NoUrut'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterNoAlamatKirim: TcxGridDBColumn
            DataBinding.FieldName = 'NoAlamatKirim'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterUserid: TcxGridDBColumn
            Caption = 'Dibuat oleh'
            DataBinding.FieldName = 'Userid'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterTglInput: TcxGridDBColumn
            Caption = 'Tgl Input'
            DataBinding.FieldName = 'TglInput'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterUserid1: TcxGridDBColumn
            DataBinding.FieldName = 'Userid'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterTglInput1: TcxGridDBColumn
            DataBinding.FieldName = 'TglInput'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterIsOtorisasi1: TcxGridDBColumn
            DataBinding.FieldName = 'IsOtorisasi1'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterOtoUser1: TcxGridDBColumn
            DataBinding.FieldName = 'OtoUser1'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterTglOto1: TcxGridDBColumn
            DataBinding.FieldName = 'TglOto1'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterIsOtorisasi2: TcxGridDBColumn
            DataBinding.FieldName = 'IsOtorisasi2'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterOtoUser2: TcxGridDBColumn
            DataBinding.FieldName = 'OtoUser2'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterTglOto2: TcxGridDBColumn
            DataBinding.FieldName = 'TglOto2'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterIsOtorisasi3: TcxGridDBColumn
            DataBinding.FieldName = 'IsOtorisasi3'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterOtoUser3: TcxGridDBColumn
            DataBinding.FieldName = 'OtoUser3'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterTglOto3: TcxGridDBColumn
            DataBinding.FieldName = 'TglOto3'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterIsOtorisasi4: TcxGridDBColumn
            DataBinding.FieldName = 'IsOtorisasi4'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterOtoUser4: TcxGridDBColumn
            DataBinding.FieldName = 'OtoUser4'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterTglOto4: TcxGridDBColumn
            DataBinding.FieldName = 'TglOto4'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterIsOtorisasi5: TcxGridDBColumn
            DataBinding.FieldName = 'IsOtorisasi5'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterOtoUser5: TcxGridDBColumn
            DataBinding.FieldName = 'OtoUser5'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterTglOto5: TcxGridDBColumn
            DataBinding.FieldName = 'TglOto5'
            Visible = False
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
            DataBinding.FieldName = 'userbatal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
          end
          object tvMasterDBColumn3: TcxGridDBColumn
            Caption = 'Tgl Batal'
            DataBinding.FieldName = 'Tglbatal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
          end
          object tvMasterDBColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'status'
          end
        end
        object tvDetail: TcxGridDBTableView
          DataController.DataSource = DsDetail1
          DataController.DetailKeyFieldNames = 'NOBUKTI'
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.KeyFieldNames = 'NoBuktiUrut'
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
          OnCustomDrawCell = tvDetailCustomDrawCell
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
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvDetailNoSPB: TcxGridDBColumn
            DataBinding.FieldName = 'NoSPB'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvDetailUrutSPB: TcxGridDBColumn
            DataBinding.FieldName = 'UrutSPB'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvDetailUrut: TcxGridDBColumn
            DataBinding.FieldName = 'Urut'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvDetailKodeBrg: TcxGridDBColumn
            Caption = 'Kode Barang'
            DataBinding.FieldName = 'KodeBrg'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 120
          end
          object tvDetailNamaBrg: TcxGridDBColumn
            Caption = 'Nama Barang'
            DataBinding.FieldName = 'NamaBrg'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 250
          end
          object tvDetailQnt2: TcxGridDBColumn
            DataBinding.FieldName = 'Qnt2'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object tvDetailSatuanRoll: TcxGridDBColumn
            Caption = 'Sat2'
            DataBinding.FieldName = 'SatuanRoll'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 35
          end
          object tvDetailQnt: TcxGridDBColumn
            DataBinding.FieldName = 'Qnt'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object tvDetailNoSat: TcxGridDBColumn
            DataBinding.FieldName = 'NoSat'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvDetailIsi: TcxGridDBColumn
            DataBinding.FieldName = 'Isi'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvDetailSatuan: TcxGridDBColumn
            Caption = 'Sat'
            DataBinding.FieldName = 'Satuan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 35
          end
          object tvDetailHarga: TcxGridDBColumn
            DataBinding.FieldName = 'Harga'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 90
          end
          object tvDetailDiscP1: TcxGridDBColumn
            DataBinding.FieldName = 'DiscP1'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvDetailDiscRp1: TcxGridDBColumn
            DataBinding.FieldName = 'DiscRp1'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvDetailDiscTot: TcxGridDBColumn
            Caption = 'Diskon'
            DataBinding.FieldName = 'DiscTot'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 90
          end
          object tvDetailTotalUSD: TcxGridDBColumn
            DataBinding.FieldName = 'TotalUSD'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvDetailTotalIDR: TcxGridDBColumn
            Caption = 'Sub Total'
            DataBinding.FieldName = 'TotalIDR'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object tvDetailNDPP: TcxGridDBColumn
            DataBinding.FieldName = 'NDPP'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvDetailNPPN: TcxGridDBColumn
            DataBinding.FieldName = 'NPPN'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvDetailBeban: TcxGridDBColumn
            DataBinding.FieldName = 'Beban'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvDetailTotal: TcxGridDBColumn
            DataBinding.FieldName = 'Total'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = tvMaster
          object cxGrid1Level2: TcxGridLevel
            GridView = tvDetail
          end
        end
      end
      object cxGrid2: TcxGrid
        Left = 104
        Top = 40
        Width = 401
        Height = 257
        TabOrder = 1
        Visible = False
        object cxGridDBTableView2: TcxGridDBTableView
          DataController.DataSource = DSMasExport
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGridDBTableView2NoSo: TcxGridDBColumn
            DataBinding.FieldName = 'NoSo'
            SortOrder = soAscending
          end
          object cxGridDBTableView2TglSO: TcxGridDBColumn
            DataBinding.FieldName = 'TglSO'
          end
          object cxGridDBTableView2TglRencanaKirim: TcxGridDBColumn
            DataBinding.FieldName = 'TglRencanaKirim'
          end
          object cxGridDBTableView2Kodecust: TcxGridDBColumn
            DataBinding.FieldName = 'Kodecust'
          end
          object cxGridDBTableView2kodeShipto: TcxGridDBColumn
            DataBinding.FieldName = 'kodeShipto'
          end
          object cxGridDBTableView2Keterangan: TcxGridDBColumn
            DataBinding.FieldName = 'Keterangan'
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
      object cxGrid4: TcxGrid
        Left = 528
        Top = 40
        Width = 401
        Height = 257
        TabOrder = 2
        Visible = False
        object cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsDetExport
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGridDBTableView1Kodebrg: TcxGridDBColumn
            DataBinding.FieldName = 'Kodebrg'
          end
          object cxGridDBTableView1Qnt: TcxGridDBColumn
            DataBinding.FieldName = 'Qnt'
          end
          object cxGridDBTableView1Satuan: TcxGridDBColumn
            DataBinding.FieldName = 'Satuan'
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object dxTSDafSO: TdxTabSheet
      Caption = 'SO - Sales Order Sudah Selesai '
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 1366
        Height = 534
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        object tvMasterSO: TcxGridDBTableView
          DataController.DataSource = DsMasterSO
          DataController.DetailKeyFieldNames = 'KodeKota'
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.KeyFieldNames = 'NoBukti'
          DataController.MasterKeyFieldNames = 'KodeKota'
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
          OnFocusedRecordChanged = tvMasterSOFocusedRecordChanged
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
          Styles.StyleSheet = FrSetForm.cxGridStyleHd
          object tvMasterSOKodeKota: TcxGridDBColumn
            DataBinding.FieldName = 'KodeKota'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterSONamaKota: TcxGridDBColumn
            DataBinding.FieldName = 'NamaKota'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterSONoBukti: TcxGridDBColumn
            Caption = 'No. Bukti'
            DataBinding.FieldName = 'NoBukti'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 150
          end
          object tvMasterSOTanggal: TcxGridDBColumn
            DataBinding.FieldName = 'Tanggal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
          end
          object tvMasterSOKodeGdg: TcxGridDBColumn
            Caption = 'Gudang'
            DataBinding.FieldName = 'KodeGdg'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
          end
          object tvMasterSOKodeCust: TcxGridDBColumn
            DataBinding.FieldName = 'KodeCust'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterSONamaCust: TcxGridDBColumn
            Caption = 'Nama Pelanggan'
            DataBinding.FieldName = 'NamaCust'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 230
          end
          object tvMasterSOAlamatKirim: TcxGridDBColumn
            Caption = 'Alamat Kirim'
            DataBinding.FieldName = 'AlamatKirim'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 300
          end
          object tvMasterSOCatatan: TcxGridDBColumn
            DataBinding.FieldName = 'Catatan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 300
          end
        end
        object tvDetailSO: TcxGridDBTableView
          DataController.DataSource = DsDetail1SO
          DataController.DetailKeyFieldNames = 'NOBUKTI'
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.KeyFieldNames = 'KeyUrut'
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
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          Styles.StyleSheet = FrSetForm.cxGridStyleDt
          object tvDetailSONoBukti: TcxGridDBColumn
            DataBinding.FieldName = 'NoBukti'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvDetailSOUrut: TcxGridDBColumn
            DataBinding.FieldName = 'Urut'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvDetailSOKeyUrut: TcxGridDBColumn
            DataBinding.FieldName = 'KeyUrut'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvDetailSOKODEBRG: TcxGridDBColumn
            Caption = 'Kode Barang'
            DataBinding.FieldName = 'KODEBRG'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 120
          end
          object tvDetailSONamaBrg: TcxGridDBColumn
            Caption = 'Nama Barang'
            DataBinding.FieldName = 'NamaBrg'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 280
          end
          object tvDetailSOQNT2: TcxGridDBColumn
            Caption = 'Qnt2 SO'
            DataBinding.FieldName = 'QNT2'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object tvDetailSOSatuanRoll: TcxGridDBColumn
            Caption = 'Sat2'
            DataBinding.FieldName = 'SatuanRoll'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
          end
          object tvDetailSOQNT: TcxGridDBColumn
            Caption = 'Qnt SO'
            DataBinding.FieldName = 'QNT'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object tvDetailSOSatuan: TcxGridDBColumn
            Caption = 'Sat'
            DataBinding.FieldName = 'Satuan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
          end
          object tvDetailSONOSAT: TcxGridDBColumn
            DataBinding.FieldName = 'NOSAT'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvDetailSOISI: TcxGridDBColumn
            DataBinding.FieldName = 'ISI'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvDetailSOQnt2SJ: TcxGridDBColumn
            Caption = 'Qnt2 SJ'
            DataBinding.FieldName = 'Qnt2SJ'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object tvDetailSOQntSJ: TcxGridDBColumn
            Caption = 'Qnt SJ'
            DataBinding.FieldName = 'QntSJ'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object tvDetailSOQnt2Sisa: TcxGridDBColumn
            Caption = 'Qnt2 Sisa SO'
            DataBinding.FieldName = 'Qnt2Sisa'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
          end
          object tvDetailSOQntSisa: TcxGridDBColumn
            Caption = 'Qnt Sisa SO'
            DataBinding.FieldName = 'QntSisa'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 75
          end
        end
        object tvKotaSO: TcxGridDBTableView
          DataController.DataSource = DsKotaSO
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0'
              Kind = skCount
              FieldName = 'KodeKota'
              Column = tvKotaSOKodeKota
            end
            item
              Format = ',0'
              Kind = skSum
              FieldName = 'JumlahSO'
              Column = tvKotaSOJumlahSO
            end>
          DataController.Summary.SummaryGroups = <>
          OnFocusedRecordChanged = tvKotaSOFocusedRecordChanged
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
          Styles.StyleSheet = FrSetForm.cxGridStyleHd
          object tvKotaSOKodeKota: TcxGridDBColumn
            Caption = 'Kode Kota'
            DataBinding.FieldName = 'KodeKota'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object tvKotaSONamaKota: TcxGridDBColumn
            Caption = 'Nama Kota'
            DataBinding.FieldName = 'NamaKota'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 250
          end
          object tvKotaSOJumlahSO: TcxGridDBColumn
            Caption = 'Jumlah SO'
            DataBinding.FieldName = 'JumlahSO'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 90
          end
        end
        object cxGridLevel3: TcxGridLevel
          Caption = 'a'
          GridView = tvKotaSO
          object cxGridLevel4: TcxGridLevel
            Caption = 'b'
            GridView = tvMasterSO
            object cxGridLevel5: TcxGridLevel
              Caption = 'c'
              GridView = tvDetailSO
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
      'declare @Tahun int, @Bulan int'
      ''
      'select @Tahun=2013, @Bulan=1'
      ''
      
        'Select '#9'A.NoBukti, A.NoUrut, A.Tanggal, A.KodeCust, C.NamaCustSu' +
        'pp NamaCust,'
      
        #9'A.Handling, A.NoAlamatKirim, J.Alamat AlamatKirim, C.Kota NamaK' +
        'ota,'
      
        '        I.TotSubTotal, I.TotDiskon, I.TotTotal, I.TotDPP, I.TotP' +
        'PN, I.TotNet,'
      
        '        I.TotSubTotalRp, I.TotDiskonRp, I.TotTotalRp, I.TotDPPRp' +
        ', I.TotPPNRp, I.TotNetRp,'
      '        A.Userid, A.TglInput,'
      
        #9'A.IsOtorisasi1, A.OtoUser1, A.TglOto1, A.IsOtorisasi2, A.OtoUse' +
        'r2, A.TglOto2, '
      
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
      
        '        ,Isnull(A.Isbatal,0)IsBatal,A.userbatal,A.Tglbatal,Isnul' +
        'l(A.TipePPN,0) TipePPN ,(iscetakkitir) status'
      'From dbSO A'
      'Left Outer Join dbCustSupp C on c.KodeCustsupp=a.KodeCust'
      'Left Outer Join vwRpDetSO I on I.NoBukti=A.NoBukti'
      
        'Left Outer Join dbAlamatCust J on J.KodeCustsupp=A.KodeCust and ' +
        'J.Nomor=A.NoAlamatKirim'
      ''
      'where year(A.Tanggal)=@Tahun and month(A.Tanggal)=@Bulan'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'order by A.NoBukti'
      ''
      ''
      '')
    Left = 24
    Top = 184
    object QuMasterNoBukti: TStringField
      FieldName = 'NoBukti'
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
      Size = 40
    end
    object QuMasterHandling: TBCDField
      FieldName = 'Handling'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuMasterTotSubTotal: TBCDField
      FieldName = 'TotSubTotal'
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 5
    end
    object QuMasterTotDiskon: TFloatField
      FieldName = 'TotDiskon'
      DisplayFormat = ',0.00'
    end
    object QuMasterTotTotal: TFloatField
      FieldName = 'TotTotal'
      DisplayFormat = ',0.00'
    end
    object QuMasterTotDPP: TFloatField
      FieldName = 'TotDPP'
      DisplayFormat = ',0.00'
    end
    object QuMasterTotPPN: TFloatField
      FieldName = 'TotPPN'
      DisplayFormat = ',0.00'
    end
    object QuMasterTotNet: TFloatField
      FieldName = 'TotNet'
      DisplayFormat = ',0.00'
    end
    object QuMasterTotSubTotalRp: TBCDField
      FieldName = 'TotSubTotalRp'
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuMasterTotDiskonRp: TFloatField
      FieldName = 'TotDiskonRp'
      DisplayFormat = ',0.00'
    end
    object QuMasterTotTotalRp: TFloatField
      FieldName = 'TotTotalRp'
      DisplayFormat = ',0.00'
    end
    object QuMasterTotDPPRp: TFloatField
      FieldName = 'TotDPPRp'
      DisplayFormat = ',0.00'
    end
    object QuMasterTotPPNRp: TFloatField
      FieldName = 'TotPPNRp'
      DisplayFormat = ',0.00'
    end
    object QuMasterTotNetRp: TFloatField
      FieldName = 'TotNetRp'
      DisplayFormat = ',0.00'
    end
    object QuMasterNoUrut: TStringField
      FieldName = 'NoUrut'
      Size = 10
    end
    object QuMasterNoAlamatKirim: TIntegerField
      FieldName = 'NoAlamatKirim'
    end
    object QuMasterAlamatKirim: TStringField
      FieldName = 'AlamatKirim'
      Size = 200
    end
    object QuMasterNamaKota: TStringField
      FieldName = 'NamaKota'
      Size = 30
    end
    object QuMasterUserid: TStringField
      FieldName = 'Userid'
      Size = 15
    end
    object QuMasterTglInput: TDateTimeField
      FieldName = 'TglInput'
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
    object QuMasteruserbatal: TStringField
      FieldName = 'userbatal'
      Size = 15
    end
    object QuMasterTglbatal: TDateTimeField
      FieldName = 'Tglbatal'
    end
    object QuMasterTipePPN: TWordField
      FieldName = 'TipePPN'
    end
    object QuMasterstatus: TIntegerField
      FieldName = 'status'
      ReadOnly = True
    end
  end
  object QuDetail: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select '#9'GroupNoBukti, NoBukti, Urut, KodeBrg, NamaBrg, Satuan, Q' +
        'nt, Harga,'
      
        #9'SubTotal TotalUSD, round(SubTotal*Kurs,2) TotalIDR, BYAngkut Be' +
        'ban,'
      #9'round(SubTotal*Kurs,2) + BYAngkut Total'
      'from vwTransBeli'
      ''
      'where NoBukti='#39#39)
    Left = 24
    Top = 216
    object QuDetailKodeBrg: TStringField
      DisplayLabel = 'Kode Brg'
      DisplayWidth = 12
      FieldName = 'KodeBrg'
      Size = 25
    end
    object QuDetailNamaBrg: TStringField
      DisplayLabel = 'Nama Barang'
      DisplayWidth = 22
      FieldName = 'NamaBrg'
      Size = 40
    end
    object QuDetailSatuan: TStringField
      DisplayLabel = 'Sat'
      DisplayWidth = 4
      FieldName = 'Satuan'
      Size = 5
    end
    object QuDetailQnt: TBCDField
      DisplayWidth = 10
      FieldName = 'Qnt'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailHarga: TBCDField
      DisplayWidth = 10
      FieldName = 'Harga'
      DisplayFormat = ',0.0000'
      Precision = 18
    end
    object QuDetailTotalUSD: TBCDField
      DisplayLabel = 'Sub Total USD'
      DisplayWidth = 11
      FieldName = 'TotalUSD'
      ReadOnly = True
      DisplayFormat = ',0.0000'
      Precision = 32
      Size = 5
    end
    object QuDetailTotalIDR: TBCDField
      DisplayLabel = 'Sub Total IDR'
      DisplayWidth = 15
      FieldName = 'TotalIDR'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuDetailBeban: TBCDField
      DisplayWidth = 12
      FieldName = 'Beban'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailTotal: TBCDField
      DisplayWidth = 15
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuDetailGroupNoBukti: TStringField
      DisplayWidth = 92
      FieldName = 'GroupNoBukti'
      ReadOnly = True
      Visible = False
      Size = 92
    end
    object QuDetailNoBukti: TStringField
      DisplayWidth = 20
      FieldName = 'NoBukti'
      Visible = False
    end
    object QuDetailUrut: TIntegerField
      DisplayWidth = 10
      FieldName = 'Urut'
      Visible = False
    end
  end
  object DsDetail: TDataSource
    DataSet = QuDetail
    Left = 56
    Top = 216
  end
  object DsMaster: TDataSource
    DataSet = QuMaster
    Left = 56
    Top = 184
  end
  object QuDetail1: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    DataSource = DsMaster
    Parameters = <
      item
        Name = 'NoBukti'
        DataType = ftString
        Size = 1
        Value = 'n'
      end>
    SQL.Strings = (
      'declare @Tahun int, @Bulan int'
      ''
      'select @Tahun=2009, @Bulan=10'
      ''
      'Select '#9'A.NoBukti, A.NoSPB, B.UrutSPB,'
      
        #9'A.NoBukti+right('#39'0000000000'#39'+cast(B.Urut as varchar(10)),10) No' +
        'BuktiUrut,'
      
        '        B.Urut, B.KodeBrg, H.NamaBrg, B.Qnt, B.NoSat, B.Isi, H.S' +
        'at1 Satuan,'
      '        B.Qnt2, H.Sat2 SatuanRoll, B.Harga,'
      '        B.DiscP1, B.DiscRp1, B.DiscTot,'
      
        '        B.SubTotal TotalUSD, B.SubTotalRp TotalIDR, B.NDPPRp NDP' +
        'P,'
      
        '        B.NPPNRp NPPN, B.BYAngkut Beban, B.SubTotalRp + B.BYAngk' +
        'ut Total'
      'From dbSO A'
      'Left Outer join dbSODet B on B.NoBukti=a.NoBukti'
      
        'Left Outer Join vwSatuanBrg H on H.KodeBrg=B.KodeBrg --and H.NoS' +
        'at=B.NoSat'
      'where  A.NoBukti=:NoBukti'
      'order by A.NoBukti, B.Urut'
      '')
    Left = 96
    Top = 184
    object QuDetail1NoBukti: TStringField
      FieldName = 'NoBukti'
    end
    object QuDetail1NoSPB: TStringField
      FieldName = 'NoSPB'
    end
    object QuDetail1UrutSPB: TIntegerField
      FieldName = 'UrutSPB'
    end
    object QuDetail1NoBuktiUrut: TStringField
      FieldName = 'NoBuktiUrut'
      ReadOnly = True
      Size = 30
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
    object QuDetail1Qnt2: TBCDField
      FieldName = 'Qnt2'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetail1SatuanRoll: TStringField
      FieldName = 'SatuanRoll'
      Size = 4
    end
    object QuDetail1Harga: TBCDField
      FieldName = 'Harga'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QuDetail1DiscP1: TBCDField
      FieldName = 'DiscP1'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetail1DiscRp1: TBCDField
      FieldName = 'DiscRp1'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QuDetail1DiscTot: TBCDField
      FieldName = 'DiscTot'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetail1TotalUSD: TBCDField
      FieldName = 'TotalUSD'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 5
    end
    object QuDetail1TotalIDR: TBCDField
      FieldName = 'TotalIDR'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuDetail1NDPP: TFloatField
      FieldName = 'NDPP'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object QuDetail1NPPN: TFloatField
      FieldName = 'NPPN'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object QuDetail1Beban: TBCDField
      FieldName = 'Beban'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetail1Total: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
  end
  object DsDetail1: TDataSource
    DataSet = QuDetail1
    Left = 128
    Top = 184
  end
  object QuNavigator: TADOQuery
    CacheSize = 1000
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'Bulan'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Tahun'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'isBatal'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'select Nobukti '
      'from dbBeli'
      
        'where month(tanggal)=:Bulan and year(tanggal)=:Tahun and isbatal' +
        '=:isBatal'
      'order by nobukti')
    Left = 170
    Top = 83
    object StringField1: TStringField
      DisplayLabel = 'No. Bukti'
      FieldName = 'nobukti'
    end
  end
  object QuView: TADOQuery
    CacheSize = 1000
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      
        'Select '#39'+'#39' As '#39' + '#39',a.Nobukti+'#39' Tanggal :'#39'+Convert(Varchar(12),a' +
        '.Tanggal,105)+'#39' Pemasok :'#39'+c.NamaSupp GroupNoBukti,a.nobukti,a.T' +
        'anggal,a.kodesupp,a.FakturSupp,a.Keterangan,a.KodeVls,'
      '       a.Kurs,a.PPn,a.TipeBayar,a.Hari,a.Disc,a.IsCetak,'
      '       b.Urut,b.Kodebrg,b.Nosat,b.Isi,b.Qnt,b.Harga,'
      '       b.DiscP1,b.DiscP2,b.discP3,b.DiscP4,'
      '       b.DiscRP1,b.DiscRP2,b.discRP3,b.DiscRP4,'
      
        '       b.DiscTOT,b.HrgNetto,b.NDiskon,b.Subtotal,b.Ndpp,b.NPpn,b' +
        '.NNet,'
      '       b.NoPO,b.UrutPO,'
      
        '       c.NamaSupp,c.Alamat1+Char(13)+c.Alamat2+Char(13)+c.kota A' +
        'lamat,'
      
        '       d.NamaVls,e.Namabrg,b.Satuan,a.TglJatuhTempo,b.kodegdg,b.' +
        'Kodelokasi,'
      '       F.Nama NamaGdg,g.Nama NamaLokasi,a.IsBatal'
      'From dbBeli a'
      '     Left Outer join dbBelidet b on b.Nobukti=a.Nobukti'
      '     Left Outer Join dbSupplier c on c.kodesupp=a.kodesupp'
      '     Left Outer join dbValas d on d.Kodevls=a.kodevls'
      '     Left Outer join dbbarang e on e.Kodebrg=b.Kodebrg'
      '     Left Outer Join dbGudang f on f.Kodegdg=b.Kodegdg'
      '     Left Outer Join dbLokasi g on g.Kodelokasi=b.Kodelokasi')
    Left = 202
    Top = 37
    object QuViewnobukti: TStringField
      FieldName = 'nobukti'
    end
    object QuViewTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuViewkodesupp: TStringField
      FieldName = 'kodesupp'
      Size = 15
    end
    object QuViewFakturSupp: TStringField
      FieldName = 'FakturSupp'
      Size = 50
    end
    object QuViewKeterangan: TMemoField
      FieldName = 'Keterangan'
      BlobType = ftMemo
    end
    object QuViewKodeVls: TStringField
      FieldName = 'KodeVls'
      Size = 15
    end
    object QuViewKurs: TBCDField
      FieldName = 'Kurs'
      Precision = 18
      Size = 2
    end
    object QuViewPPn: TWordField
      FieldName = 'PPn'
    end
    object QuViewTipeBayar: TWordField
      FieldName = 'TipeBayar'
    end
    object QuViewHari: TIntegerField
      FieldName = 'Hari'
    end
    object QuViewDisc: TBCDField
      FieldName = 'Disc'
      Precision = 6
      Size = 2
    end
    object QuViewIsCetak: TBooleanField
      FieldName = 'IsCetak'
    end
    object QuViewUrut: TSmallintField
      FieldName = 'Urut'
    end
    object QuViewKodebrg: TStringField
      FieldName = 'Kodebrg'
      Size = 25
    end
    object QuViewNosat: TWordField
      FieldName = 'Nosat'
    end
    object QuViewIsi: TBCDField
      FieldName = 'Isi'
      Precision = 18
      Size = 2
    end
    object QuViewQnt: TBCDField
      FieldName = 'Qnt'
      Precision = 18
      Size = 2
    end
    object QuViewHarga: TBCDField
      FieldName = 'Harga'
      Precision = 18
      Size = 2
    end
    object QuViewDiscP1: TBCDField
      FieldName = 'DiscP1'
      Precision = 18
      Size = 2
    end
    object QuViewDiscP2: TBCDField
      FieldName = 'DiscP2'
      Precision = 18
      Size = 2
    end
    object QuViewdiscP3: TBCDField
      FieldName = 'discP3'
      Precision = 18
      Size = 2
    end
    object QuViewDiscP4: TBCDField
      FieldName = 'DiscP4'
      Precision = 18
      Size = 2
    end
    object QuViewDiscRP1: TBCDField
      FieldName = 'DiscRP1'
      Precision = 18
      Size = 2
    end
    object QuViewDiscRP2: TBCDField
      FieldName = 'DiscRP2'
      Precision = 18
      Size = 2
    end
    object QuViewdiscRP3: TBCDField
      FieldName = 'discRP3'
      Precision = 18
      Size = 2
    end
    object QuViewDiscRP4: TBCDField
      FieldName = 'DiscRP4'
      Precision = 18
      Size = 2
    end
    object QuViewDiscTOT: TBCDField
      FieldName = 'DiscTOT'
      Precision = 18
      Size = 2
    end
    object QuViewHrgNetto: TBCDField
      FieldName = 'HrgNetto'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object QuViewNDiskon: TBCDField
      FieldName = 'NDiskon'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object QuViewSubtotal: TBCDField
      FieldName = 'Subtotal'
      ReadOnly = True
      Precision = 32
    end
    object QuViewNdpp: TBCDField
      FieldName = 'Ndpp'
      ReadOnly = True
      Precision = 32
    end
    object QuViewNPpn: TBCDField
      FieldName = 'NPpn'
      ReadOnly = True
      Precision = 32
      Size = 5
    end
    object QuViewNNet: TBCDField
      FieldName = 'NNet'
      ReadOnly = True
      Precision = 32
    end
    object QuViewNoPO: TStringField
      FieldName = 'NoPO'
    end
    object QuViewUrutPO: TIntegerField
      FieldName = 'UrutPO'
    end
    object QuViewNamaSupp: TStringField
      FieldName = 'NamaSupp'
      Size = 40
    end
    object QuViewAlamat: TStringField
      FieldName = 'Alamat'
      ReadOnly = True
      Size = 232
    end
    object QuViewNamaVls: TStringField
      FieldName = 'NamaVls'
      Size = 40
    end
    object QuViewNamabrg: TStringField
      FieldName = 'Namabrg'
      Size = 40
    end
    object QuViewSatuan: TStringField
      FieldName = 'Satuan'
      Size = 5
    end
    object QuViewTglJatuhTempo: TDateTimeField
      FieldName = 'TglJatuhTempo'
    end
    object QuViewkodegdg: TStringField
      FieldName = 'kodegdg'
      Size = 15
    end
    object QuViewKodelokasi: TStringField
      FieldName = 'Kodelokasi'
      Size = 15
    end
    object QuViewNamaGdg: TStringField
      FieldName = 'NamaGdg'
      Size = 40
    end
    object QuViewNamaLokasi: TStringField
      FieldName = 'NamaLokasi'
      Size = 40
    end
    object QuViewIsBatal: TBooleanField
      FieldName = 'IsBatal'
    end
    object QuViewDSDesigner: TStringField
      FieldName = ' + '
      ReadOnly = True
      Size = 1
    end
    object QuViewGroupNoBukti: TStringField
      FieldName = 'GroupNoBukti'
      ReadOnly = True
      Size = 92
    end
  end
  object DsView: TDataSource
    DataSet = QuView
    Left = 255
    Top = 45
  end
  object PopupMenu2: TPopupMenu
    Left = 459
    Top = 71
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
  object PopupMenu1: TPopupMenu
    Left = 475
    Top = 105
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
    DefaultExt = '*.xls'
    FileName = 'ExpGrid'
    Filter = 'Excel 97-2003|*.xls|All Files|*.*'
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
  object QuKotaSO: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select KodeKota, NamaKota, count(*) JumlahSO from vwSOBelumSurat' +
        'Jln'
      'group by KodeKota, NamaKota')
    Left = 24
    Top = 264
    object QuKotaSOKodeKota: TStringField
      FieldName = 'KodeKota'
      Size = 15
    end
    object QuKotaSONamaKota: TStringField
      FieldName = 'NamaKota'
      Size = 30
    end
    object QuKotaSOJumlahSO: TIntegerField
      FieldName = 'JumlahSO'
      ReadOnly = True
      DisplayFormat = ',0'
    end
  end
  object DsKotaSO: TDataSource
    DataSet = QuKotaSO
    Left = 56
    Top = 264
  end
  object QuCustSO: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select  KodeKota, NamaKota, NoBukti, Tanggal, KodeCust, NamaCust' +
        ', AlamatKirim, Catatan, KodeGdg'
      'from vwSOBelumSuratJlnBonus'
      'order by KodeKota, NoBukti'
      '')
    Left = 24
    Top = 296
    object StringField2: TStringField
      FieldName = 'KodeKota'
      Size = 15
    end
    object StringField3: TStringField
      FieldName = 'NamaKota'
      Size = 30
    end
    object StringField4: TStringField
      FieldName = 'NoBukti'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'Tanggal'
    end
    object StringField5: TStringField
      FieldName = 'KodeCust'
      Size = 15
    end
    object StringField6: TStringField
      FieldName = 'NamaCust'
      Size = 40
    end
    object StringField7: TStringField
      FieldName = 'AlamatKirim'
      Size = 2000
    end
    object StringField8: TStringField
      FieldName = 'Catatan'
      Size = 2000
    end
  end
  object DsCustSO: TDataSource
    DataSet = QuCustSO
    Left = 56
    Top = 296
  end
  object QuMasterSO: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    DataSource = DsKotaSO
    Parameters = <
      item
        Name = 'kodekota'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = ''
      end>
    SQL.Strings = (
      
        'select  KodeKota, NamaKota, NoBukti, Tanggal, KodeCust , NamaCus' +
        'tsupp Namacust, AlamatKirim, Catatan, KodeGdg,Isppn'
      'from vwSOBelumSuratJln'
      'Where KodeKota=:kodekota and IsLengkap=0'
      'order by KodeKota, NoBukti'
      '')
    Left = 24
    Top = 328
    object QuMasterSOKodeKota: TStringField
      FieldName = 'KodeKota'
      Size = 15
    end
    object QuMasterSONamaKota: TStringField
      FieldName = 'NamaKota'
      Size = 30
    end
    object QuMasterSONoBukti: TStringField
      FieldName = 'NoBukti'
    end
    object QuMasterSOTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuMasterSOKodeCust: TStringField
      FieldName = 'KodeCust'
      Size = 15
    end
    object QuMasterSONamaCust: TStringField
      FieldName = 'NamaCust'
      Size = 40
    end
    object QuMasterSOAlamatKirim: TStringField
      FieldName = 'AlamatKirim'
      Size = 2000
    end
    object QuMasterSOCatatan: TStringField
      FieldName = 'Catatan'
      Size = 2000
    end
    object QuMasterSOKodeGdg: TStringField
      FieldName = 'KodeGdg'
      Size = 15
    end
    object QuMasterSOIsppn: TBooleanField
      FieldName = 'Isppn'
    end
  end
  object DsMasterSO: TDataSource
    DataSet = QuMasterSO
    Left = 56
    Top = 328
  end
  object QuDetail1SO: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    DataSource = DsMasterSO
    Parameters = <
      item
        Name = 'Nobukti'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = 'SJY/SO/0712/00001'
      end>
    SQL.Strings = (
      
        'select NoBukti, Urut, NoBukti+right('#39'000000'#39'+cast(Urut as varcha' +
        'r(6)),6) KeyUrut,'
      
        '           KODEBRG, NamaBrg, QNT, QNT2, NOSAT, Satuan, ISI, QntS' +
        'J, Qnt2SJ, SatuanRoll,'
      '           QNT-QntSJ QntSisa, QNT2-QNT2SJ Qnt2Sisa'
      '    from vwSOBelumSuratJlnDet'
      '    where ((QNT>QntSJ) or (QNT2>Qnt2SJ))  and Nobukti=:Nobukti'
      '    order by KodeKota, NoBukti, Urut')
    Left = 96
    Top = 264
    object QuDetail1SONoBukti: TStringField
      FieldName = 'NoBukti'
    end
    object QuDetail1SOUrut: TIntegerField
      FieldName = 'Urut'
    end
    object QuDetail1SOKeyUrut: TStringField
      FieldName = 'KeyUrut'
      ReadOnly = True
      Size = 26
    end
    object QuDetail1SOKODEBRG: TStringField
      FieldName = 'KODEBRG'
      Size = 25
    end
    object QuDetail1SONamaBrg: TStringField
      FieldName = 'NamaBrg'
      Size = 100
    end
    object QuDetail1SOQNT: TBCDField
      FieldName = 'QNT'
      DisplayFormat = ',0'
      Precision = 18
      Size = 2
    end
    object QuDetail1SOQNT2: TBCDField
      FieldName = 'QNT2'
      DisplayFormat = ',0'
      Precision = 18
      Size = 2
    end
    object QuDetail1SONOSAT: TWordField
      FieldName = 'NOSAT'
    end
    object QuDetail1SOSatuan: TStringField
      FieldName = 'Satuan'
      Size = 5
    end
    object QuDetail1SOISI: TBCDField
      FieldName = 'ISI'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetail1SOQntSJ: TBCDField
      FieldName = 'QntSJ'
      ReadOnly = True
      DisplayFormat = ',0'
      Precision = 18
      Size = 2
    end
    object QuDetail1SOQnt2SJ: TBCDField
      FieldName = 'Qnt2SJ'
      ReadOnly = True
      DisplayFormat = ',0'
      Precision = 18
      Size = 2
    end
    object QuDetail1SOSatuanRoll: TStringField
      FieldName = 'SatuanRoll'
      Size = 5
    end
    object QuDetail1SOQntSisa: TBCDField
      FieldName = 'QntSisa'
      ReadOnly = True
      DisplayFormat = ',0'
      Precision = 19
      Size = 2
    end
    object QuDetail1SOQnt2Sisa: TBCDField
      FieldName = 'Qnt2Sisa'
      ReadOnly = True
      DisplayFormat = ',0'
      Precision = 19
      Size = 2
    end
  end
  object DsDetail1SO: TDataSource
    DataSet = QuDetail1SO
    Left = 128
    Top = 264
  end
  object QuDetExport: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <
      item
        Name = '0'
        DataType = ftDateTime
        Size = 1
        Value = 40826d
      end
      item
        Name = '1'
        DataType = ftDateTime
        Size = 4
        Value = 40858d
      end>
    SQL.Strings = (
      'Select Kodebrg,Qnt,Satuan'
      'from dbSodet'
      'where nobukti in (select nobukti'
      '                  from dbso'
      '                  where Month(Tanggal)=:0 and year(tanggal)=:1)'
      'Order by Nobukti, Urut')
    Left = 408
    Top = 160
    object QuDetExportKodebrg: TStringField
      FieldName = 'Kodebrg'
      Size = 25
    end
    object QuDetExportQnt: TBCDField
      FieldName = 'Qnt'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuDetExportSatuan: TStringField
      FieldName = 'Satuan'
      Size = 5
    end
  end
  object dsDetExport: TDataSource
    DataSet = QuDetExport
    Left = 437
    Top = 160
  end
  object QuMasExport: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <
      item
        Name = '0'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 7
      end
      item
        Name = '1'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2011
      end>
    SQL.Strings = (
      'select nobukti NoSo, Tanggal TglSO, null TglRencanaKirim, '
      '          Kodecust, '#39#39' kodeShipto, Keterangan+Catatan Keterangan'
      'from dbso'
      'where Month(Tanggal)=:0 and year(tanggal)=:1'
      'Order by Nobukti')
    Left = 408
    Top = 200
    object QuMasExportNoSo: TStringField
      FieldName = 'NoSo'
    end
    object QuMasExportTglSO: TDateTimeField
      FieldName = 'TglSO'
    end
    object QuMasExportTglRencanaKirim: TIntegerField
      FieldName = 'TglRencanaKirim'
      ReadOnly = True
    end
    object QuMasExportKodecust: TStringField
      FieldName = 'Kodecust'
      Size = 15
    end
    object QuMasExportkodeShipto: TStringField
      FieldName = 'kodeShipto'
      ReadOnly = True
      Size = 1
    end
    object QuMasExportKeterangan: TStringField
      FieldName = 'Keterangan'
      ReadOnly = True
      Size = 2200
    end
  end
  object DSMasExport: TDataSource
    DataSet = QuMasExport
    Left = 437
    Top = 200
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
    Left = 706
    Top = 162
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
        DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
          DataSetName = 'frxDBDataset1'
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
    Left = 712
    Top = 192
  end
  object frxDataPerusahaan: TfrxDBDataset
    UserName = 'frxDataPerusahaan'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 680
    Top = 192
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 676
    Top = 162
  end
end
